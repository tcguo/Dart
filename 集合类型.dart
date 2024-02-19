void main(List<String> args) {
  // List
  var l1 = ["苹果", "香蕉", "榴莲"]; //可变数组
  List<String> l2 = l1;

  // list属性：-----
  // length, isEmpty， isNotEmpty
  // l1.reversed 反转
  var l3 = l1.reversed.toList();

  if (l1.isEmpty) {
    print("l1 is empty");
  } else if (l2.isNotEmpty) {
    print("l2 isNotEmpty");
  }

  // list 方法
  // 添加，移除
  l1.add("橘子"); // 添加1个
  l1.addAll(["1", "2"]); // 添加n个
  l1.fillRange(1, 3, "aaa"); //修改数据
  // 插入
  l1.insert(0, "水果");
  l1.insertAll(1, ["aaa", "bbb"]);

  // 删除
  l1.remove(""); // 移除
  l1.removeAt(1);
  l1.removeLast();
  // l1.removeWhere((element) => element.length > 4);

  // to string 转换成字符串
  var lString = l1.join('-');
  // string to list
  var strlist = "香蕉-苹果-西瓜";
  var l4 = strlist.split('-');

  // Set ------------
  var ss = new Set();
  ss.add("苹果"); // 不能添加重复数据
  ss.add("西瓜");
  ss.add("香蕉");
  ss.addAll(l1); // 直接去重保存进去
  var ls = ss.toList(); // 转成list

  // Map ---------
  // 有点类似js中的对象
  var person = {"name": "xixi", "age": 12};
  // 常用属性: keys, values, isEmpty, isNotEmpty
  print(person.keys.toList());
  print(person.values.toList());
  if (person.isEmpty) {}
  if (person.isNotEmpty) {}

  // 方法：addAll, remove, containsKey, containsValue
  person.addAll({
    "work": ["程序猿"],
    "home": "henan",
    "height": 180
  });
  person.remove("home");
  person.containsKey("work");
  person.containsValue("henan");

  // 三个通用的方法: forEach, map, where, any, every;
  // forEach里面传个方法，没有名称的方法
  l1.forEach((element) {
    print(element);
  });

  List<int> numbers = [1, 3, 4, 5, 6];
  var newNumbs0 = numbers.map((e) => e * 3); // 箭头函数
  print(newNumbs0.toList());
  var newNumbs = numbers.map((e) {
    return e * e;
  });
  print(newNumbs.toList());

  // where
  var geater3Ls = numbers.where((element) => element > 3);
  print(geater3Ls.toList());

  // any: 只要有一个满足条件的就返回true
  bool isExists = numbers.any((element) => element < 0);
  // every: 所有元素都满足条件才返回true
  bool isExists2 = numbers.every((element) => element > 0);

  // set 循环
  var set1 = new Set();
  set1.addAll(["111", "333", "233"]);
  set1.forEach((element) {
    print(element);
  });
  // map 循环
  person.forEach((key, value) {
    print("$key --- $value");
  });
}
