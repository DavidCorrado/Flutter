import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutterexample/model/HomeItem.dart';
import 'package:flutterexample/model/Result.dart';
import 'package:flutterexample/page/home/home_view_model.dart';
import 'package:flutterexample/repo/HomeRepo.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => HomeViewModel(repo: HomeRepo())..loadHomeItems(),
        child: Scaffold(
            appBar: AppBar(
                title: Text(AppLocalizations.of(context)!.home),
                brightness: Brightness.dark),
            body: Consumer<HomeViewModel>(
              builder: (context, homeViewModel, child) {
                var result = homeViewModel.result;
                if (result is ResultSuccess<List<HomeItem>>) {
                  return ListView.builder(
                      padding: const EdgeInsets.all(8),
                      itemCount: result.data.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          height: 50,
                          child: Center(
                              child: Text('Entry ${result.data[index].title}')),
                        );
                      });
                } else if (result is ResultError) {
                  return Text("Error");
                } else {
                  return Text("Loading");
                }
              },
            )));
  }
}
