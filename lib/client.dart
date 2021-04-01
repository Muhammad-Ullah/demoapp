import "package:flutter/material.dart";

class Client extends StatefulWidget {
  @override
  _ClientState createState() => _ClientState();
}

class _ClientState extends State<Client> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Center(
          child: Text('My Client'),
        ),
        actions: [
          Center(
            child:
            Stack(
              children: [
                Icon(Icons.notifications_outlined),
                Positioned(
                    top: 1.0,
                    right: 1.0,
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
        backgroundColor: Colors.black12,
      ),
      body:  ClipPath(
        child: Container(
          child: Text("Khan"),
          width: 100,
          height: 200,
          color: Colors.blue,
        ),
        clipper: CustomClipPath(),
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
      curYPos = curYPos == size.height ? size.height - 70 : size.height;
      path.lineTo(curXPos, curYPos);
    }
    path.lineTo(size.width, 0);

    return path;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}