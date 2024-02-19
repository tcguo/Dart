void main(List<String> args) {
  // num、double、int、String、List、Set、bool、map、Object、dynamic、Rune (用于在字符串中表示 Unicode 字符)、Symbol（声明的运算符或者标识符）。
  // 你可以明确指定某个变量的类型，如int bool String，也可以用var或 dynamic来声明一个变量，Dart会自动推断其数据类型。

  /*
  1. Dart中有类型校验
  2. 变量名区分大小写
  3. 变量名不能是数字开头
  4. 注意：没有赋初值的变量都会有默认为null，
  5. 一切皆为对象，无论是变量、数字、函数等都是对象，所有的对像都继自Object，这点类似于 Java 语言。
  */

  var number = 42; // 定义并初始化一个变量。

  int count = 1; //整数
  double money = 10.3; //浮点数

  // booleans
  var real = true;
  bool isOK = true;

  // strings
  var s1 = 'hello';
  String s2 = "world";
  String name = "guo";

  // 三个单引号，或双音好，可以定义多行字符串
  String desc = '''1.fsdfas
  2.fsdfas
  3.fsdfas''';
  print(desc);

  // 字符串的拼接： 1.加号 + ; 2. 插值
  var fullName = name + "tian";
  var fullName2 = "$name $s1 $s2";
  print("fullName= $fullName");
  print("fullName2= $fullName2");

  // lists： 数组和集合
  var arr = [1, 2, 3, 4, 5];
  List<String> arr2 = ['hello', 'world', "123", "456"]; //指定类型String的数组
  List<int> nums = [12, 3, 3]; //指定类型int的数组
  List<dynamic> arr3 = [1, true, 'haha', 1.0]; //自动推断数据类型

  var l1 = [0, "张三", 12.3, false];
  // 获取长度
  var length = l1.length;
  print("l1.length = $length");
  // list取值, 通过下标0，1，2，...
  print(l1[0]);
  print(l1[1]);
  print(l1[2]);

  // list增加数据
  var l2 = []; // 定义一个空list
  l2.add(1);
  l2.add("namm");
  l2.remove(1);
  print("l2 = $l2");

  //创建一个固定长度的list
  var l30 = List<int>.filled(3, 100); //指定类型
  var l3 = List.filled(3, 100);
  // l3.add(4); //增加不可以， 不可变的list
  l3[1] = 99; //修改内容可以
  print("l3= $l3");
  var l33 = List.filled(3, 1, growable: true); // 可变list
  print("l33= $l33");

  // maps -------------
  // maps第一种定义方式
  var map = new Map();
  map['name'] = 'zhangsan';
  map['age'] = 10;
  print(map['name']);

  // maps第二种定义方式
  var person = {
    "name": "大强",
    "age": 18,
    "work": ["程序猿", "自媒体"]
  };
  var girl = {"name": "小花", "age": 18, "work": []};

  // dynamic关键字
  // dynamic声明的变量，表示动态任意类型，编译时不检查类型。如：
  dynamic d1 = '111';
  d1 = 222;
  d1 = 333.0;
  print("d1: $d1");
  // dynamic修饰的变量，在编译时不做检查
  // d1.test(); // 这行还代码，在编译时是不会检查错误信息的，运行时会报错

  //用Object
  //Object声明的变量，表示任意动态类型，编译时检查类型。如：
  Object o1 = "sss";
  o1 = 222;
  // o1.test(); // 编译时会做检查，报错

  // symbols
  print(#s == new Symbol("s")); // true

  // const 和 final
  /*
    const，编译时常量，一开始就得赋值
    final, 允许时常量，开始可以不赋值（惰性初始化），只能赋值一次，一旦赋值不能改变
  */
  const PI = 3.14;
  final double usedPi = PI + 0.02;

  final time = new DateTime.now();
  print(time);

  /*****************类型转化***************/
  // 类型判断 is
  var amount = 999;
  if (amount is int) {
    print("amount type is int");
  } else {
    print("amount type isnot int");
  }
}
