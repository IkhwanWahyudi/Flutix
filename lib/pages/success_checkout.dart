import 'package:flutix/pages/home_movies.dart';
import 'package:flutix/pages/my_tickets.dart';
import 'package:flutter/material.dart';

class SuccesCheckout_Page extends StatelessWidget {
  const SuccesCheckout_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 48, bottom: 24),
            child: const Icon(
              Icons.check_circle_rounded,
              color: Colors.green,
              size: 200,
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(bottom: 24),
            child: Text(
              'Happy Watching!',
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              'You have successfully',
              style: TextStyle(
                fontSize: 19,
                color: Colors.black45,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(bottom: 48),
            child: Text(
              'bought the ticket',
              style: TextStyle(
                fontSize: 19,
                color: Colors.black45,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 55,
              left: 55,
            ),
            child: Container(
              width: 190,
              child: ElevatedButton(
                child: Text(
                  'My Tickets',
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyTickets()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 18, vertical: 24),
                  backgroundColor: const Color.fromRGBO(80, 62, 157, 1),
                  foregroundColor: const Color.fromRGBO(172, 154, 250, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(9),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
            },
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(
                top: 48,
              ),
              child: Text(
                'Back to Home',
                style: TextStyle(
                  fontSize: 19,
                  color: Colors.black45,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
