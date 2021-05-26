import 'package:flutter/material.dart';
import 'package:flutterexample/model/HomeItem.dart';
import 'package:flutterexample/model/Result.dart';
import 'package:flutterexample/repo/HomeRepo.dart';

class HomeViewModel extends ChangeNotifier {
  final HomeRepo repo;
  Result<List<HomeItem>> _result = Result.loading();

  Result<List<HomeItem>> get result => _result;

  HomeViewModel({required this.repo});

  void loadHomeItems() {
    _result = Result.loading();
    notifyListeners();

    repo.loadHomeItems().then((items) {
      _result = Result.success(items);
      notifyListeners();
    }).catchError((err) {
      _result = Result.failure(err);
      notifyListeners();
    });
  }
}
