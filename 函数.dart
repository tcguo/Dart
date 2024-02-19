void main(List<String> args) {
  add(12, 12);
  print(printPersonInfo2("guo"));
  print(printPersonInfo2("guo", 12));
  print(printPersonInfoMing("guo", age: 12, sex: "女"));

  // 匿名函数，函数作为对象可以作为参数，返回值
  var fn1 = () {
    print("我是匿名方法");
  };
  fn2(fn1);
  fn3("fn3", fn1);

  // 箭头函数
  /*
  箭头函数是一种简写形式，只能包含一行表达式的函数，它带有箭头但没有花括号。
  箭头函数更有助于代码的可读性，与Kotlin或Java中的lambda表达式->的写法相似。
  */
  var list = [1, 3, 3, 4, 5];
  var mapres = list.map((e) => e * e);
  print("map result is $mapres");
  // 多行处理，里面不能是箭头函数，只是普通的函数。
  var mapres2 = list.map((e) {
    if (e > 3) {
      return e * 2;
    }
    return e;
  });
  print("mapres2 result is $mapres2");

  // 自执行方法
  (() {
    print("我是自执行方法");
  })();

  // 自执行方法带参数
  ((int a) {
    print("我是自执行方法, a = $a");
  })(2);
}

// 函数定义
void add(int a, int b) {
  print(a + b);

  // 方法里面可以再定义方法
  int getNum() {
    var sum = addInt(1, 3, 3);
    print("sum is $sum");
    return a + b + 1;
  }

  var res = getNum();
  print("res is $res");
}

// 函数名不能重复，参数不一样也不行
int addInt(int a, int b, int c) {
  return a + b + c;
}

String printPersonInfo(String name, int age) {
  return "姓名:" + name + "年龄：" + age.toString();
}

// 可选参数 和 默认参数
String printPersonInfo2(String name, [int age = 10, String sex = ""]) {
  return "姓名:" + name + "年龄：" + age.toString();
}

// 命名参数
String printPersonInfoMing(String name, {int age = 2, String sex = "男"}) {
  return "姓名:" + name + "年龄：" + age.toString() + "性别：" + sex;
}

// 匿名方法
void fn2(callback) {
  callback();
}

void fn3(String fnname, dynamic callback) {
  print(fnname);
  callback();
}

// 方法的递归
var sum = 0;
fn4(int n) {
  sum += n;
  if (n == 0) {
    return;
  }
  fn4(n - 1);
}
