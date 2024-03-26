import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DataSearch extends StatelessWidget {
  const DataSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: CupertinoSearchTextField(
          autofocus: true,
        ),
        backgroundColor: Colors.white,
        border: Border(bottom: BorderSide(color: Colors.transparent)),
        leading: CupertinoButton(
          padding: EdgeInsets.all(0),
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Icon(
            CupertinoIcons.back,
            color: Colors.grey,
          ),
        ),
      ),
      child: Center(
        child: Text(''),
      ),
    );
  }
}
