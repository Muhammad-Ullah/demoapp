import 'package:auto_size_text/auto_size_text.dart';
import 'package:demoapp/models/pdf.dart';
import 'package:flutter/material.dart';

import '../../colorTheme.dart';


class CustomTile extends StatelessWidget {
  final PDF pdf;
  CustomTile(this.pdf);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 25,
              blurRadius: 7,
              offset: Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        margin: EdgeInsets.symmetric(vertical: 5.0),
        child: Stack(
          children: [
            ListTile(
              leading: CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('assets/images/me.jpg',),
              ),
              title: AutoSizeText(
                '👋 Jennifer Greene',
                style: TextStyle(
                    fontSize: 22.0,
                    color: OurTheme().ourBlue,
                    fontWeight: FontWeight.w600),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      'Last Trip was 1 Week ago',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AutoSizeText(
                          '\$ 60,00 - 7 Days',
                          style: TextStyle(
                              fontSize: 18,
                              color: OurTheme().ourBlue,
                              fontWeight: FontWeight.w500),
                        ),
                        AutoSizeText(
                          '\$ 156,00 - 14 Days',
                          style: TextStyle(
                              fontSize: 18,
                              color: OurTheme().ourBlue,
                              fontWeight: FontWeight.w500),
                        ),
                        AutoSizeText(
                          '\$ 352,00 - 30 Days',
                          style: TextStyle(
                              fontSize: 18,
                              color: OurTheme().ourBlue,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 30,
              width: 40,
              color: OurTheme().ourBlue.withOpacity(0.7),
              child: Icon(
                Icons.menu,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
