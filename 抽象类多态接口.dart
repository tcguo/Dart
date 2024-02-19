/*
1. 抽象类使用 abstract, 主要用于定义标准
2. 抽象类定义的方法必须全部实现
3. 抽象类无法直接被实例化，只有继承的子类可以
 */

/*
接口：
1. 没有interface关键字，建议：通过抽象类定义接口
2. 同样适用 implements 关键字来实现接口
3. 接口就是约定，规范
*/
abstract class Animal {
  void eat(); //抽象方法
  void run(); //抽象方法

  void printInfo() {
    print("我是抽象类的printInfo");
  }
}

class Dog extends Animal {
  @override
  void eat() {
    // TODO: implement eat
    print("dog is eating 骨头");
  }

  @override
  void run() {
    // TODO: implement run
    print("dog is running");
  }

  void wangwangjiao() {
    print("dog wangwang jiao");
  }
}

abstract class DBAble {
  String? connection; // 数据库连接地址
  late String port; // 延迟初始化，否则就必须在构造函数中传入
  void add();
  void save();
  void delete();
}

class MySQL implements DBAble {
  @override
  void add() {
    // TODO: implement add
  }

  @override
  void delete() {
    // TODO: implement delete
  }

  @override
  void save() {
    // TODO: implement save
  }

  @override
  String? connection;

  @override
  String port = "8080";
}

class MSSQL implements DBAble {
  @override
  void add() {
    // TODO: implement add
  }

  @override
  void delete() {
    // TODO: implement delete
  }

  @override
  void save() {
    // TODO: implement save
  }

  @override
  String? connection;

  @override
  String port = "9090";
}

void main(List<String> args) {
  var dog = new Dog();
  dog.printInfo();
  dog.run();
  dog.printInfo();
  dog.wangwangjiao();

  Animal ani = new Dog();
  // ani.wangwangjiao() // 把dog的引用赋值给ani，ani没有wangwangjiao
}
