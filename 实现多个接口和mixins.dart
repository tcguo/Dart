abstract class AbstracA {
  String? name;
  void printA();
}

abstract class AbstractB {
  void printB();
}

class ImplementC implements AbstracA, AbstractB {
  @override
  String? name;

  @override
  void printA() {
    // TODO: implement printA
  }

  @override
  void printB() {
    // TODO: implement printB
  }
}

/*
mixins

1. dart中没法实现多继承，可以实现多接口，但是可以用misins来实现类似于多继承的功能
2.  作为一个 Mixin类，
    2.1 只能继承Object，不能继承其他类，除非你想让该类与普通的类一样可以被正常地使用，否则请使用关键字 mixin 替代 class
    2.2 不能声明构造函数的类。
3. 一个类可以mixins多个mixsin类
    3.1 声明mixin的顺序，代表类似继承的优先级，越后面越高级，后面的属性方法会覆盖前面的属性
    3.2 可以用关键字on来指定哪些类可以使用该类Mixin类，使用on关键字可以指定mixin的父类
4. mixsin绝不是继承，也不是接口，而是全新的特性。
*/

mixin AA {
  String aa = "aa";
  void printAA() {
    print("printAA called");
  }
}

mixin BB {
  String bb = "bb";
  void printBB() {
    print("printBB called");
  }
}

class CC with AA, BB {
  // CC with AA 和BB ，能在B里访问A和C里面的方法printA()和print()方法以及变量a和c；
}

// 可以用关键字on来指定哪些类可以使用该类Mixin类，使用on关键字可以指定mixin的父类
mixin A on C {}

class C {}

class D {}

class B extends C with A {}
// class B extends D with A{}//编译器报错 ‘A'无法mixed on 'D'

void main(List<String> args) {
  var c = ImplementC();
  c.printA();
  c.printB();

  var cc = new CC();
  cc.printAA();
  cc.printBB();
  print(cc is AA); // true
  print(cc is BB); // true
}
