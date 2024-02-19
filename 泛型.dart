// 泛型方法
T getData<T>(T params) {
  return params;
}

// 泛型类
class MyList<T> {
  List list = new List<T>.empty(growable: true);

  void add(T val) {
    this.list.add(val);
  }

  List getList() {
    return list;
  }
}

// 泛型接口
abstract class Cache<T> {
  T? getByKey(String key);
  void setValueByKey(String key, T value);
}

class MemeoryCache<T> implements Cache<T> {
  T? val = null;
  @override
  T? getByKey(String key) {
    return val;
  }

  @override
  void setValueByKey(String key, T value) {
    this.val = value;
    print("内存缓存的key=${key}, val = $value 存入文件");
  }
}

class FileCache<T> implements Cache<T> {
  T? val = null;
  @override
  T? getByKey(String key) {
    return this.val;
  }

  @override
  void setValueByKey(String key, T value) {
    this.val = value;
    print("文件缓存的key=${key}, val = $value 存入文件");
  }
}

void main(List<String> args) {
  var res1 = getData(1);
  var res2 = getData<String>("abc");
  print(res1);
  print(res2);

  MyList list = new MyList();
  list.add(1);
  list.add("abc");
  print(list.getList());

  // 初始化约定泛型类型，只能增加string类型的数据
  MyList list1 = new MyList<String>();
  list1.add("abc");
  print(list1.getList());

  var fileCache = new FileCache<String>();
  fileCache.setValueByKey("11", "aaa");
  var fileCache2 = new FileCache<int>();
  fileCache2.setValueByKey("11", 123);
  print(fileCache2.getByKey("11"));
}
