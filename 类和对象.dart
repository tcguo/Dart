import 'lib/car.dart';

void main(List<String> args) {
  var me = new Person("张三", 20);
  me.getInfo();
  me.setInfo(2);
  me.getInfo();

  var she = new Person.custom();
  she.getInfo();
  var she1 = new Person.custom2("meimei", 15);
  she1.getInfo();

  var rect1 = new Rect();
  print(rect1.area);

  // 对象运算符
  /*
  1. ? 条件运算符。和swift中的可选值一样
  2. as 类型转换
  3. is 类型判断
  4. .. 级联操作, 记住！
  */
  if (she is Person) {
    print("she is Person type");
  }
  if (she is Object) {
    print("she is Object type");
  }
  (she as Person).getInfo();

  var he = new Person("李四", 20);
  he.getInfo();

  he.name = "李四四";
  he.age = 21;
  he.getInfo();

  // 上面的三行重新赋值可以用： 级联符号..
  he
    ..name = "李四五"
    ..age = 22
    ..getInfo();

  var stud = new Student("小明", 12, "第一中学");
  stud.work();
}

// 继承
/*
1. extends关键字
2. 可以继承属性和方法，但是不会继承构造方法
3. 子类可以重写父类的 getter和setter方法
*/
class Student extends Person {
  String school = "";
  Student(String name, int age, String school) : super(name, age) {
    print("Student 构造方法");
    this.school = school;
  }

  //重写父类的方法
  @override
  void work() {
    super.work();
    print("Student work called");
  }
}

class Person {
  // 实例属性
  String name = "默认姓名";
  int age = 0;
  // 私有属性，只能class封再单独文件中才有效果
  String _address = "默认地址";
  // 静态属性
  static String company = "NBA";

  // 默认构造函数
  // Person() {
  //   // 默认构造
  //   print("这是构造函数的内容");
  // }

  // 默认构造函数 只能写一个
  Person(String name, int age) {
    this.name = name;
    this.age = age;
  }

  // 命名构造函数
  Person.custom() {
    print("我是命名构造函数");
  }
  Person.custom2(String name, int age) {
    print("我是命名构造函数");
    this.name = name;
    this.age = age;
  }

  // 实例方法
  void getInfo() {
    print("姓名：${this.name}, 年龄:${this.age}");
  }

  void setInfo(int age) {
    this.age += age;
  }

  // 私有方法
  void _getInfo2() {
    print("${this.name}");
    print("${this.age}");
  }

  // 静态方法
  static void printInfo() {
    print(company);
  }

  void work() {
    print("person work called");
  }
}

class Rect {
  int width;
  int height;

  // 初始化列表，在初始化之前做一些赋值
  Rect()
      : height = 10,
        width = 10 {}

  // 计算属性
  get area {
    return this.width * this.height;
  }

  set areaHeight(value) {
    this.height = value;
  }
}

class Person1 {
  late String name;
  late int age;

  Person1(String nam, int age) {
    this.name = nam;
    this.age = age;
  }
}
