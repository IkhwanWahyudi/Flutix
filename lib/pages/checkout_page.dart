import 'package:flutix/pages/e_wallet.dart';
import 'package:flutix/pages/success_checkout.dart';
import 'package:flutter/material.dart';

class CheckoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Detail Your Ticket',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: Colors.black,
            ),
          ),
          toolbarHeight: 48.0,
          centerTitle: true,
          backgroundColor: Colors.white),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 2, bottom: 3),
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(top: 15, bottom: 10),
                  width: MediaQuery.of(context).size.width,
                  height: 27,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 249, 218, 218),
                      borderRadius: BorderRadius.circular(3)),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.warning_amber,
                        color: Color.fromARGB(255, 230, 102, 93),
                      ),
                      SizedBox(width: 8.0), // Spasi antara ikon dan teks
                      Text(
                        "PLEASE CHECK YOUR TICKET BELOW BEFORE CHECKOUT",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 11,
                          color: Color.fromARGB(255, 230, 102, 93),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin:
                          const EdgeInsets.only(left: 15, top: 10, right: 30),
                      width: 100.0,
                      height: 150.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: const DecorationImage(
                          image: NetworkImage(
                              'https://m.media-amazon.com/images/M/MV5BMmZiN2VmMjktZDE5OC00ZWRmLWFlMmEtYWViMTY4NjM3ZmNkXkEyXkFqcGdeQXVyMTI2MTc2ODM3._V1_FMjpg_UX1000_.jpg'), // Ganti dengan path file gambar Anda
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 6),
                            child: const Text(
                              "Evil Dead Rise",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(bottom: 6),
                            child: const Text(
                              "Horor, Mystery",
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(bottom: 10),
                            child: const Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.black,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.black,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.black,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.black,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.grey,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "9.1 / 10",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 23,
                ),
                const Divider(
                  color: Colors.black,
                ),
                Detail_Ticket("ID Order", "22678459821"),
                Detail_Ticket("Cinema", "City Centrum XX"),
                Detail_Ticket("Date & Time", "Sat 9, 12:00"),
                Detail_Ticket("2 Tickets", "E3, E4"),
                Detail_Ticket("Seat", "Rp50.000x2"),
                Detail_Ticket("Fee", "Rp2.000x2"),
                Detail_Ticket("Total", "Rp104.000"),
                const Divider(
                  color: Colors.black,
                ),
                Detail_Ticket("Saldo E-Wallet", "Rp500.000"),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 55),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WalletPage()),
                );
              },
              child: const Text(
                "Top-up E-Wallet",
                style: TextStyle(
                  fontFamily: 'Raleway',
                  color: Colors.red,
                  fontSize: 13,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Expanded(
              child: Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SuccesCheckout_Page()),
                );
              },
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 61, 66, 118),
                  onPrimary: Colors.yellow,
                  minimumSize: Size(400, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(10), // Mengatur sudut tombol
                  ),
                  textStyle: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold)),
              child: const Text('CHECKOUT'),
            ),
          )),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }

  Container Detail_Ticket(String content, String value) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 31),
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text(content), Text(value)],
      ),
    );
  }
}
