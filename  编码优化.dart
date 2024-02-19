void main(List<String> args) {
  const PI = 3.1415926; // 编译时常量，运行无法改变
  final PI_1;
  PI_1 = 3.141; // 运行时常量，可先声明再赋值，只能赋值一次。

  final datetiime = DateTime.now();

  var o1 = Object();
  var o2 = Object();
  print(identical(o1, o2)); // 判断2个关键词是否共用内存空间。
  print(identical(o1, o1)); // 判断2个关键词是否共用内存空间。

  // 实例化常量构造函数 const如果创建相同的对象，保持相同内存空间
  var o11 = const Object();
  var o22 = const Object();
  print(identical(o11, o22)); // true;

  const c1 = [2];
  const c2 = [2];
  print(identical(c1, c2)); // true;

  const c11 = [2];
  const c22 = [3];
  print(identical(c11, c22)); // false;
}

// 常量构造函数：
/*
1. 常量构造函数需要以const来修饰
2. const构造函数必须用于所有成员变量都是final的类
3. 多个地方创建如果传入的值相同，则只保留一个对象，如果传入的值不同则创建多个
4. flutter中const修饰不仅仅节省组件创建时的开销，可以在flutter重新构建组件时，不会重建const组件
*/

class Container {
  final int width;
  final int height;

  const Container(this.width, this.height);
}

class Container2 {
  late int width;
  late int height;

  Container({required int width, required int height}) {
    this.width = width;
    this.height = height;
  }
}
