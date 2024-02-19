void main(List<String> args) {
  // 算术运算符： + - * / %
  // 关系运算符： ==  !=   >= <=  > <
  // 逻辑运算符： !取反  && ||
  // 赋值运算符： =  ??= //判断前面变量是否为null， 为null把值赋过去
  var b = 10;
  b ??= 20;
  // 复合运算符：+= -= *= /= %= ~/=

  // 条件运算符： if() {} else {}
  var aa = 123;
  var bb = 123;
  if (aa == bb) {
    print("aa is euqal bb");
  } else {
    print("aa isnot euqal bb");
  }

  // 条件运算符： 三元运算符 ? :
  bool flag = false;
  var result = flag ? "ok" : "no";
  print(result);

  // 条件运算符： switch case
  var sex = "man";
  switch (sex) {
    case "man":
      print("是男人");
      break;
    case "woman":
      print("是女人");
      break;
    default:
      print("是人妖");
      break;
  }

  // 条件运算符： ??  为空赋值
  var a1;
  var b1 = a1 ?? 1;

  // 类型转换 ---------

  // 1. number and string
  var numStr = "123";
  var numStr1 = "123.2";
  var mynum = int.parse(numStr);
  var num1 = double.parse(numStr1);

  var b2 = 123;
  var b1Str = b1.toString();

  String name = "";
  if (name == null || name.isEmpty) {
    print("name is null or isEmpty");
  } else {
    print("name isnot null or isEmpty");
  }

  // NaN
  var nan = 0 / 0;
  print(nan);

  // for
  for (var i = 0; i < 10; i++) {
    if (i % 2 == 0) {
      print("for i is 偶数 $i");
    } else {
      print("for i is 奇数 $i");
    }
  }

  var sum = 0;
  for (var i = 0; i <= 100; i++) {
    sum += i;
  }
  print("sum is $sum");

  var list = [1, "guo", false, 10.1];
  for (var item in list) {
    print("for in is $item");
  }
  for (var i = 0; i < list.length; i++) {
    print(list[i]);
  }

  // do while
  var i = 1;
  do {
    // 先执行一次do， 再执行while判断;
    i++;
  } while (i < 2);
  print("i is $i");

  // while
  while (i < 10) {
    i++;
  }
  print("i is $i");

  // break;
  // continue;
}
