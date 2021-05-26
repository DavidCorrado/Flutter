import 'package:flutterexample/model/HomeItem.dart';

class HomeRepo {
  Future<List<HomeItem>> loadHomeItems() async {
    return Future<List<HomeItem>>.value(
        [HomeItem("title", "description", "imageUrl")]);
  }
}
