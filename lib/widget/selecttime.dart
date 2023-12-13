import 'package:flutter/material.dart';

class MySelectTime extends StatefulWidget {
  final Color? backgroundColor;
  final Color? borderColor;
  final Color? textColor;
  final String ? time;
  final Function () ? onTap;
  final bool ? isClicked;
  const MySelectTime(
    {
      super.key,
      required this.backgroundColor,
      required this.borderColor,
      required this.textColor,
      required this.onTap,
      required this.time,
      this.isClicked = false,
    }
  );

  @override
  State<MySelectTime> createState() => _MySelectTimeState();
}

class _MySelectTimeState extends State<MySelectTime> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        margin: EdgeInsets.only(right: 15),
        width: MediaQuery.of(context).size.width / 8,
        height: 23,
        decoration: BoxDecoration(
          color: widget.backgroundColor,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
              color: widget.borderColor!, width: 1),
        ),
        child:  Text(
        '${widget.time}',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 14, color: widget.textColor),
        ),
      ),
    );
  }
}
