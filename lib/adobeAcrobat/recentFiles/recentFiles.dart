import 'package:demoapp/adobeAcrobat/recentFiles/pdfListView.dart';
import 'package:demoapp/utils/pdfStrings.dart';
import 'package:flutter/material.dart';


class RecentFiles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PDFListView(dataList: PdfStrings.pdfData);
  }
}
