import 'package:auto_size_text/auto_size_text.dart';
import 'package:demoapp/colorTheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'adobeAcrobat/bottomButton.dart';
import 'adobeAcrobat/recentFiles/recentFiles.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }



  TabBarView _getTabBarView(tabs) {
    return TabBarView(
      children: tabs,
      controller: _tabController,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.black.withOpacity(0.6),
        width: double.maxFinite,
        height: 80.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BottomButton(
              icon: Icons.call,
              color: Colors.green,
              label: 'Call',
            ),
            BottomButton(
              icon: Icons.report,
              color: Colors.orangeAccent,
              label: 'Report',
            ),
            BottomButton(
              icon: Icons.delete,
              color: Colors.redAccent,
              label: 'Delete',
            ),
          ],
        ),
      ),
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(15),
          ),
        ),
        title: Center(
          child: Text(
            'My Clients',
            textAlign: TextAlign.center,
          ),
        ),
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
        elevation: 0.0,
        actions: [
          Container(
            padding: EdgeInsets.fromLTRB(10, 15, 10, 10),
            child:
            Stack(
              children: [
                Icon(Icons.notifications,size: 30,),
                Positioned(
                    top: 2.0,
                    right: 15.0,
                    child: new Stack(
                      children: <Widget>[
                        new Icon(
                          Icons.brightness_1,
                          size: 12.0,
                          color: Colors.green,
                        ),
                      ],
                    )
                ),
              ],),
          ),
        ],
      ),
      body: ListView(
        primary: false,
        children: [
          SafeArea(
            child: _body(),
          ),
        ],
      ),
    );
  }

  Widget _body() {
    return Padding(
      padding: EdgeInsets.only(top: 0.0, left: 5.0, right: 5.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Implement Box
          Container(
            height: 140,
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 0.0),
            child: Row(
              children: [
                ClipPath(
                  child: Container(
                    width: 140,
                    height: 140,
                    color: OurTheme().lBlue,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '511',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30.0,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Icon(Icons.favorite,color: Colors.white,),
                          ],
                        ),
                        Text(
                          'Favourites',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  clipper: CustomClipPath(),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 180,
                        height: 60,
                        child: AutoSizeText(
                          'Each user added by you receives 10x discount codes of 15% each',
                          maxLines: 4,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: OurTheme().ourBlue,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      // Button Area
                      Flexible(
                        child: Container(
                          height: 40,
                          width: 140,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: OurTheme().accentBlue,
                          ),
                          child: InkWell(
                            onTap: () {},
                            child: Center(
                              child: Text(
                                'Add Favourite',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: FlatButton(
                  onPressed: () => {},
                  color: Colors.black38,
                  padding: EdgeInsets.all(10.0),
                  child: Row( // Replace with a Row for horizontal icon + text
                    children: <Widget>[
                      Icon(Icons.account_box,color: Colors.white,),
                      Text(
                        '  Phone',
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
             Expanded(child:  FlatButton(
               onPressed: () => {},
               color: Colors.black54,
               padding: EdgeInsets.all(10.0),
               child: Row( // Replace with a Row for horizontal icon + text
                 children: <Widget>[
                   Icon(Icons.favorite,color: Colors.white,),
                   Text(
                     '  Favourites',
                     style: TextStyle(
                       fontSize: 15,
                       color: Colors.white,
                     ),
                   ),
                 ],
               ),
             ),),
              Expanded(child:  FlatButton(
                onPressed: () => {},
                color: Colors.black87,
                padding: EdgeInsets.all(10.0),
                child: Row( // Replace with a Row for horizontal icon + text
                  children: <Widget>[
                    Icon(Icons.restore_page,color: Colors.white,),
                    Text(
                      '  Promotions',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),),
            ],
          ),
          //  MediaQuery.of(context).size.height *  0.55699481865284974093264248704663
          Container(
            height:
            // double.maxFinite,
            MediaQuery.of(context).size.height - 100,
            child: _getTabBarView(
              <Widget>[
                RecentFiles(),
                Icon(Icons.settings),
                Icon(Icons.settings),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
class CustomClipPath extends CustomClipper<Path> {
  var radius=10.0;
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    var curXPos = 0.0;
    var curYPos = size.height;
    var increment = size.width/2 ;
    while (curXPos < size.width) {
      curXPos += increment;
      curYPos = curYPos == size.height ? size.height - 30 : size.height;
      path.lineTo(curXPos, curYPos);
    }
    path.lineTo(size.width, 0);

    return path;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}