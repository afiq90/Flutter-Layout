import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String label;

  // constructor
  CustomButton(this.label);

  @override
  Widget build(BuildContext context) {
    // return RaisedButton(
    //   onPressed: () {},
    //   child: Text(label),
    // );
    return FloatingActionButton(
      child: Text(label),
      onPressed: () {},
      // backgroundColor: Colors.yellowAccent,
      tooltip: 'This is custom button',
      foregroundColor: Colors.blue,
      mini: false,   
      heroTag: 1,
    );
  }
}
