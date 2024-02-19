class Car {
  String band = "BMW";
  int _lunCount = 4; // 私有属性，只能class封再单独文件中才有效果

  void drive() {
    _drive2();
    print("car band is ${this.band}");
  }

  void _drive2() {
    print("private method car band is ${this.band}");
  }
}
