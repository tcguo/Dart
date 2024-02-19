import 'dart:convert' as convert;
import 'dart:math';
import 'dart:io';
import 'package:http/http.dart' as http; // as 重命名，可以解决库中类名重复
import 'lib/helper.dart' as myhelper; // 自定义库
import 'lib/helper.dart' show nba_base64; //只引入部分功能
import 'lib/helper.dart' show Helper; //只引入部分功能
import 'lib/helper.dart' hide nba_Md5; //隐藏部分功能

double add(int a, int b) {
  return sqrt(a) + sqrt(b);
}

int my_Max(int a, int b) {
  return max(a, b);
}

/*
asycn: 把方法变成异步
await: 等待异步方法完成， 只有async的方法才能用await关键词
*/
request() async {
  var httpClient = new HttpClient();
  // https://geoapi.qweather.com/v2/city/top?number=5&range=cn&key=56f5b22121d143f9b7de12cd044f7192
  var uri = new Uri.http("news-at.zhihu.com", "/api/3/stories/latest");
  // 1. 发起请求，等待请求
  var request = await httpClient.getUrl(uri);
  // 2. 关闭请求，等待相应
  var response = await request.close();

  // 3. 解码相应的内容
  return await response.transform(convert.utf8.decoder).join();
}

// 使用三方库发送请求
void thirdRequest() async {
  // https://geoapi.qweather.com/v2/city/top?number=5&range=cn&key=56f5b22121d143f9b7de12cd044f7192
  var url = Uri.https('geoapi.qweather.com', '/v2/city/top', {
    'number': "5",
    "range": "cn",
    "key": "56f5b22121d143f9b7de12cd044f7192"
  });

  // Await the http get response, then decode the json-formatted response.
  var response = await http.get(url);
  if (response.statusCode == 200) {
    var jsonResponse =
        convert.jsonDecode(response.body) as Map<String, dynamic>;
    var itemCount = jsonResponse['topCityList'];
    print('Number of books about http: $itemCount.');
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
}

void main(List<String> args) async {
  var result = await request();
  // print(result);

  thirdRequest();

  var helper1 = new myhelper.Helper();
  helper1.md5("md5");
  var base64Res = nba_base64("tobase");
}
