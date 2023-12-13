import 'package:flutter/material.dart';

class MySelectSeat extends StatefulWidget {
  final Color? backgroundColor;
  final Color? borderColor;

  const MySelectSeat({
    required this.backgroundColor,
    required this.borderColor,
  });

  @override
  State<MySelectSeat> createState() => _MySelectSeatState();
}

class _MySelectSeatState extends State<MySelectSeat> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Implement your onTap logic here
      },
      child: Container(
        margin: EdgeInsets.only(left: 5, right: 5),
        width: MediaQuery.of(context).size.width / 13,
        height: 35,
        decoration: BoxDecoration(
          color: widget.backgroundColor,
          borderRadius: BorderRadius.circular(3),
          border: Border.all(
            color: widget.borderColor!,
            width: 1,
          ),
        ),
      ),
    );
  }
}
