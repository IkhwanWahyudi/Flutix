import 'package:flutix/pages/checkout_page.dart';
import 'package:flutix/widget/selectseat.dart';
import 'package:flutter/material.dart';

class SelectSeatPage extends StatefulWidget {
  @override
  State<SelectSeatPage> createState() => _SelectSeatPageState();
}

class _SelectSeatPageState extends State<SelectSeatPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(),
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 25, right: 25),
              child: Column(
                children: [
                  Container(
                    child: Row(children: [
                      Container(
                        margin: EdgeInsets.only(top: 30, right: 10),
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(3)),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 47, right: 20),
                        width: 65,
                        height: 35,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(3)),
                        child: const Text(
                          "Booked",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30, right: 10),
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(3),
                            border: Border.all(color: Colors.black, width: 1)),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 47, right: 35),
                        width: 65,
                        height: 35,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(3)),
                        child: const Text(
                          "Available",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30, right: 10),
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 29, 35, 97),
                            borderRadius: BorderRadius.circular(3)),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 47, right: 15),
                        width: 65,
                        height: 35,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(3)),
                        child: const Text(
                          "Selected",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ]),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.all(27),
                        height: 470,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 226, 224, 224),
                            borderRadius: BorderRadius.circular(3)),
                        child: Column(
                          children: [
                            SizedBox(height: 40),
                            Row(
                              children: [
                                MySelectSeat(
                                  backgroundColor: Colors.white,
                                  borderColor: Colors.black,
                                ),
                                MySelectSeat(
                                  backgroundColor: Colors.white,
                                  borderColor: Colors.black,
                                ),
                                SizedBox(width: 70),
                                MySelectSeat(
                                  backgroundColor: Colors.white,
                                  borderColor: Colors.black,
                                ),
                                MySelectSeat(
                                  backgroundColor: Colors.white,
                                  borderColor: Colors.black,
                                ),
                                MySelectSeat(
                                  backgroundColor: Colors.grey,
                                  borderColor: Colors.grey,
                                ),
                                MySelectSeat(
                                  backgroundColor: Colors.grey,
                                  borderColor: Colors.grey,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                MySelectSeat(
                                  backgroundColor: Colors.white,
                                  borderColor: Colors.black,
                                ),
                                MySelectSeat(
                                  backgroundColor: Colors.white,
                                  borderColor: Colors.black,
                                ),
                                SizedBox(width: 70),
                                MySelectSeat(
                                  backgroundColor: Colors.white,
                                  borderColor: Colors.black,
                                ),
                                MySelectSeat(
                                  backgroundColor: Colors.white,
                                  borderColor: Colors.black,
                                ),
                                MySelectSeat(
                                  backgroundColor: Colors.white,
                                  borderColor: Colors.black,
                                ),
                                MySelectSeat(
                                  backgroundColor: Colors.white,
                                  borderColor: Colors.black,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                MySelectSeat(
                                  backgroundColor: Colors.white,
                                  borderColor: Colors.black,
                                ),
                                MySelectSeat(
                                  backgroundColor: Colors.white,
                                  borderColor: Colors.black,
                                ),
                                SizedBox(width: 70),
                                MySelectSeat(
                                  backgroundColor: Colors.grey,
                                  borderColor: Colors.grey,
                                ),
                                MySelectSeat(
                                  backgroundColor: Colors.white,
                                  borderColor: Colors.black,
                                ),
                                MySelectSeat(
                                  backgroundColor: Colors.white,
                                  borderColor: Colors.black,
                                ),
                                MySelectSeat(
                                  backgroundColor: Colors.white,
                                  borderColor: Colors.black,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                MySelectSeat(
                                  backgroundColor: Colors.grey,
                                  borderColor: Colors.grey,
                                ),
                                MySelectSeat(
                                  backgroundColor: Colors.grey,
                                  borderColor: Colors.grey,
                                ),
                                SizedBox(width: 70),
                                MySelectSeat(
                                  backgroundColor: Colors.white,
                                  borderColor: Colors.black,
                                ),
                                MySelectSeat(
                                  backgroundColor: Colors.white,
                                  borderColor: Colors.black,
                                ),
                                MySelectSeat(
                                  backgroundColor: Colors.white,
                                  borderColor: Colors.black,
                                ),
                                MySelectSeat(
                                  backgroundColor: Colors.white,
                                  borderColor: Colors.black,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                MySelectSeat(
                                  backgroundColor: Colors.white,
                                  borderColor: Colors.black,
                                ),
                                MySelectSeat(
                                  backgroundColor: Colors.white,
                                  borderColor: Colors.black,
                                ),
                                SizedBox(width: 70),
                                MySelectSeat(
                                  backgroundColor: Colors.white,
                                  borderColor: Colors.black,
                                ),
                                MySelectSeat(
                                  backgroundColor: Colors.white,
                                  borderColor: Colors.black,
                                ),
                                MySelectSeat(
                                  backgroundColor: Color.fromARGB(255, 29, 35, 97),
                                  borderColor: Color.fromARGB(255, 29, 35, 97),
                                ),
                                MySelectSeat(
                                  backgroundColor: Color.fromARGB(255, 29, 35, 97),
                                  borderColor: Color.fromARGB(255, 29, 35, 97),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 80,
                            ),
                            Container(
                                height: 40,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 206, 200, 200),
                                    borderRadius: BorderRadius.circular(3))),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 50),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CheckoutPage()),
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
                    child: const Text('BOOKING YOUR TICKET >>>'),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
