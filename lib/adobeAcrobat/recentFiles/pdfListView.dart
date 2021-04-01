import 'package:demoapp/models/pdf.dart';
import 'package:flutter/material.dart';

import 'customTile.dart';


class PDFListView extends StatelessWidget {
  final List<PDF> dataList;
  PDFListView({this.dataList});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        // primary: false,
        itemCount: dataList.length,
        itemBuilder: (context, index) {
          return CustomTile(dataList[index]);
        });
  }
}
