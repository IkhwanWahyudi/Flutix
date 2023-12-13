import 'package:flutter/material.dart';

class MySelectDate extends StatefulWidget {
  final Function()? onTap;
  final String? date;
  final String? time; // untuk today, tommorow
  final Color? backgroundColor;
  final Color? textColor;
  final bool ? isSelected;
  const MySelectDate({
    super.key,
    required this.date,
    required this.onTap,
    required this.time,
    required this.backgroundColor,
    required this.textColor,
    this.isSelected,
  });

  @override
  State<MySelectDate> createState() => _MySelectDateState();
}

class _MySelectDateState extends State<MySelectDate> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
          margin: EdgeInsets.only(right: 15),
          width: 110,
          height: 50,
          decoration: BoxDecoration(
            color: widget.backgroundColor,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black, width: 1),
          ),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment.center,
                width: 110,
                height: 25,
                child: Column(
                  children: [
                    Text(
                      "${widget.date}",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: widget.textColor, fontSize: 14),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                width: 110,
                height: 23,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Text(
                      "${widget.time}",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: widget.textColor, fontSize: 12),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
