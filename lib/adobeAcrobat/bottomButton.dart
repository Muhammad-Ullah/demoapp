import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final Color color;
  BottomButton({this.label, this.icon, this.color});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
      child: InkWell(
        onTap: () {},
        child: Column(
          children: [
            Icon(
              icon,
              color: color,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              label ?? '',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
