/// 闭包
typedef NBAGraphicsNestedPageCallback = void Function();
typedef ClosePeroidWidgetCallback = void Function(String context);

void main(List<String> args) {
  Function()? intervalCompleted;
  void Function()? onDone;
  void Function(dynamic error)? onError;

  testFunction(() {
    return 10;
  });

  onError = (error) {};
}

void testFunction(int Function() dd) {
  var res = dd();
  print(res);
}
