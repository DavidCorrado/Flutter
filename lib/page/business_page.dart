import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BusinessPage extends StatefulWidget {
  BusinessPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _BusinessPageState();
  }
}

class _BusinessPageState extends State<BusinessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.business),
          brightness: Brightness.dark),
      body: Text(AppLocalizations.of(context)!.business),
    );
  }
}
