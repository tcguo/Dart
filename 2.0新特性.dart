void main(List<String> args) {
  String? add;
  if (add == null) {}

  int a = 10;
  // a = null; // 无法将空类型赋值给，非空类型；

  String? name = "张三";
  name = null;
  // print(name.length); // !类型断言：如果name不等于null,打印name的长度，如果等于null则抛出异常

  late String name1; // 延迟初始化，否则就必须在构造函数中传入
  name1 = "1";
  print(name1);

  // required关键词

  var zhangsan = Person("zhangsan", 20);
  zhangsan.printMsg("hello zhangsan", toPerson: "me");

  zhangsan.printMsg2("hell her", "her", 2024);
}

class Person {
  late String name;
  late int age;
  Person(String name, int age) {
    this.name = name;
    this.age = age;
  }

  // 命名参数，required约定必选传
  void printMsg(String msg, {required String toPerson, int date = 0}) {}

  void printMsg2(String msg, [String toPerson = "", int date = 0]) {
    print("toPerson = $toPerson, msg = $msg, date = $date");
  }
}

String concatStr(String a, String? b) {
  var b1 = b ?? "";
  return a + b1;
}

// ! 类型判断：
String concatStr1(String a, String? b) {
  if (b == null) {
    return a + b!; //
  }
  return a + b;
}
