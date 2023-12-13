import 'package:flutix/models/Date.dart';
import 'package:flutix/pages/select_seat.dart';
import 'package:flutix/widget/selectdate.dart';
import 'package:flutix/widget/selecttime.dart';
import 'package:flutter/material.dart';

class SelectDatePage extends StatefulWidget {
  @override
  State<SelectDatePage> createState() => _SelectDatePageState();
}

class _SelectDatePageState extends State<SelectDatePage> {
  final bool _istapped = false;
  int posisi = 0;

  final List<Date> dateList = [
    Date(date: '9 Sep', day: 'MON'),
    Date(date: '10 Sep', day: 'TUE'),
    Date(date: '11 Sep', day: 'WED'),
    Date(date: '12 Sep', day: 'THU'),
    Date(date: '13 Sep', day: 'FRI'),
  ];

  @override
  Widget build(BuildContext context) {
    dateList[posisi].istapped = true;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: const Text(
            'Evil Dead Rise',
            style: TextStyle(
                color: Colors.yellow,
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
          toolbarHeight: 48.0,
          centerTitle: true,
          backgroundColor: Color(0xFF503E9D)),
      body: ListView(
        children: [
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(left: 25, right: 25),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(top: 50, bottom: 10),
                        child: const Text(
                          "CHOOSE DATE",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.black,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ListView.builder(
                            itemCount: dateList.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext context, int index) {
                              return MySelectDate(
                                date: dateList[index].date,
                                onTap: () {
                                  setState(() {
                                    if (dateList[index].istapped == false) {
                                      dateList[index].istapped = !_istapped;
                                      if (dateList[posisi].istapped == true) {
                                        dateList[posisi].istapped = false;
                                      }
                                      posisi = index;
                                    }
                                  });
                                },
                                time: dateList[index].day,
                                backgroundColor:
                                    dateList[index].istapped == true
                                        ? Color.fromARGB(255, 29, 35, 97)
                                        : Colors.white,
                                textColor: dateList[index].istapped == true
                                    ? Colors.white
                                    : Colors.black,
                              );
                            }),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(top: 40, bottom: 10),
                        child: const Text(
                          "WHERE TO WATCH ?",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.black,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 110,
                        margin: EdgeInsets.only(left: 5, right: 5),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "BIGMALL PREMIER",
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.black),
                                ),
                                SizedBox(width: 190),
                                Text(
                                  "Rp80.000",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  MySelectTime(
                                    onTap: () {},
                                    time: "12.45",
                                    backgroundColor: Colors.white,
                                    borderColor: Colors.grey,
                                    textColor: Colors.black,
                                  ),
                                  MySelectTime(
                                    onTap: () {},
                                    time: "14.50",
                                    backgroundColor: Colors.white,
                                    borderColor: Colors.grey,
                                    textColor: Colors.black,
                                  ),
                                  MySelectTime(
                                    onTap: () {},
                                    time: "16.55",
                                    backgroundColor: Colors.white,
                                    borderColor: Colors.grey,
                                    textColor: Colors.black,
                                  ),
                                  MySelectTime(
                                    onTap: () {},
                                    time: "19.00",
                                    backgroundColor: Colors.white,
                                    borderColor: Colors.grey,
                                    textColor: Colors.black,
                                  ),
                                  MySelectTime(
                                    onTap: () {},
                                    time: "21.00",
                                    backgroundColor: Colors.white,
                                    borderColor: Colors.grey,
                                    textColor: Colors.black,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  MySelectTime(
                                    onTap: () {},
                                    time: "12.45",
                                    backgroundColor: Colors.white,
                                    borderColor: Colors.grey,
                                    textColor: Colors.black,
                                  ),
                                  MySelectTime(
                                    onTap: () {},
                                    time: "14.50",
                                    backgroundColor: Colors.white,
                                    borderColor: Colors.grey,
                                    textColor: Colors.black,
                                  ),
                                  MySelectTime(
                                    onTap: () {},
                                    time: "16.55",
                                    backgroundColor: Colors.white,
                                    borderColor: Colors.grey,
                                    textColor: Colors.black,
                                  ),
                                  MySelectTime(
                                    onTap: () {},
                                    time: "19.00",
                                    backgroundColor: Colors.white,
                                    borderColor: Colors.grey,
                                    textColor: Colors.black,
                                  ),
                                  MySelectTime(
                                    onTap: () {},
                                    time: "21.00",
                                    backgroundColor: Colors.white,
                                    borderColor: Colors.grey,
                                    textColor: Colors.black,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 110,
                        margin: EdgeInsets.only(left: 5, right: 5),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "CITY CENTRUM",
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.black),
                                ),
                                SizedBox(width: 215),
                                Text(
                                  "Rp50.000",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  MySelectTime(
                                    onTap: () {},
                                    time: "12.00",
                                    backgroundColor: Color.fromARGB(255, 29, 35, 97),
                                    borderColor: Color.fromARGB(255, 29, 35, 97),
                                    textColor: Colors.white,
                                  ),
                                  MySelectTime(
                                    onTap: () {},
                                    time: "14.50",
                                    backgroundColor: Colors.white,
                                    borderColor: Colors.grey,
                                    textColor: Colors.black,
                                  ),
                                  MySelectTime(
                                    onTap: () {},
                                    time: "16.55",
                                    backgroundColor: Colors.white,
                                    borderColor: Colors.grey,
                                    textColor: Colors.black,
                                  ),
                                  MySelectTime(
                                    onTap: () {},
                                    time: "19.00",
                                    backgroundColor: Colors.white,
                                    borderColor: Colors.grey,
                                    textColor: Colors.black,
                                  ),
                                  MySelectTime(
                                    onTap: () {},
                                    time: "21.00",
                                    backgroundColor: Colors.white,
                                    borderColor: Colors.grey,
                                    textColor: Colors.black,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  MySelectTime(
                                    onTap: () {},
                                    time: "12.45",
                                    backgroundColor: Colors.white,
                                    borderColor: Colors.grey,
                                    textColor: Colors.black,
                                  ),
                                  MySelectTime(
                                    onTap: () {},
                                    time: "14.50",
                                    backgroundColor: Colors.white,
                                    borderColor: Colors.grey,
                                    textColor: Colors.black,
                                  ),
                                  MySelectTime(
                                    onTap: () {},
                                    time: "16.55",
                                    backgroundColor: Colors.white,
                                    borderColor: Colors.grey,
                                    textColor: Colors.black,
                                  ),
                                  MySelectTime(
                                    onTap: () {},
                                    time: "19.00",
                                    backgroundColor: Colors.white,
                                    borderColor: Colors.grey,
                                    textColor: Colors.black,
                                  ),
                                  MySelectTime(
                                    onTap: () {},
                                    time: "21.00",
                                    backgroundColor: Colors.white,
                                    borderColor: Colors.grey,
                                    textColor: Colors.black,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 110,
                        margin: EdgeInsets.only(left: 5, right: 5),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "PLAZA MULIA",
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.black),
                                ),
                                SizedBox(width: 225),
                                Text(
                                  "Rp50.000",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  MySelectTime(
                                    onTap: () {},
                                    time: "12.45",
                                    backgroundColor: Colors.white,
                                    borderColor: Colors.grey,
                                    textColor: Colors.black,
                                  ),
                                  MySelectTime(
                                    onTap: () {},
                                    time: "14.50",
                                    backgroundColor: Colors.white,
                                    borderColor: Colors.grey,
                                    textColor: Colors.black,
                                  ),
                                  MySelectTime(
                                    onTap: () {},
                                    time: "16.55",
                                    backgroundColor: Colors.white,
                                    borderColor: Colors.grey,
                                    textColor: Colors.black,
                                  ),
                                  MySelectTime(
                                    onTap: () {},
                                    time: "19.00",
                                    backgroundColor: Colors.white,
                                    borderColor: Colors.grey,
                                    textColor: Colors.black,
                                  ),
                                  MySelectTime(
                                    onTap: () {},
                                    time: "21.00",
                                    backgroundColor: Colors.white,
                                    borderColor: Colors.grey,
                                    textColor: Colors.black,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SelectSeatPage()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 61, 66, 118),
                            onPrimary: Colors.yellow,
                            minimumSize: Size(400, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  10), // Mengatur sudut tombol
                            ),
                            textStyle: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                        child: const Text('SELECT YOUR SEAT >>>'),
                      ),
                      const SizedBox(height: 20),
                    ],
                  )))
        ],
      ),
    );
  }
}
