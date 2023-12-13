import 'package:flutix/pages/home_movies.dart';
import 'package:flutter/material.dart';

class WalletPage extends StatefulWidget {
  @override
  _WalletPageState createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 10, right: 320),
            child: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 30),
            child: Center(
              child: Text(
                'My Wallet',
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 24,
                ),
              ),
            ),
          ),
          Column(
              children: [
                Container(
                  width: 300,
                  height: 200,
                  color: Color.fromRGBO(80, 62, 157, 1),
                  child: Padding(
                    padding: EdgeInsets.only(left: 20, top: 100),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'IDR 360.125.200',
                          style: TextStyle(
                            fontFamily: 'Oswald',
                            fontSize: 22,
                            color: Color.fromRGBO(252, 213, 97, 1),
                          ),
                        ),
                        Text(
                          'Available balance',
                          style: TextStyle(
                            fontFamily: 'Oswald',
                            fontSize: 16,
                            color: Color.fromRGBO(252, 213, 97, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 40),
                Padding(
                  padding: EdgeInsets.only(right: 110),
                  child: Text(
                    'Recent Transactions',
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 50),
                      child: Container(
                        width: 90,
                        height: 130,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage('assets/movie1.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'The Nun II',
                            style: TextStyle(
                              fontFamily: 'Oswald',
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'Saturday, 9 Sept, 12:00',
                            style: TextStyle(
                              fontFamily: 'Oswald',
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'City Centrum XXI',
                            style: TextStyle(
                              fontFamily: 'Oswald',
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 50),
                      child: Container(
                        width: 90,
                        height: 130,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage('assets/movie2.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Evil Dead Rise',
                            style: TextStyle(
                              fontFamily: 'Oswald',
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'Saturday, 9 Sept, 14:50',
                            style: TextStyle(
                              fontFamily: 'Oswald',
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'Big Mall Premiere',
                            style: TextStyle(
                              fontFamily: 'Oswald',
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 60),
                      child: Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage('assets/top-up.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Top Up',
                            style: TextStyle(
                              fontFamily: 'Oswald',
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'Saturday, 9 Sept, 23:10',
                            style: TextStyle(
                              fontFamily: 'Oswald',
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'IDR 200.000',
                            style: TextStyle(
                              fontFamily: 'Oswald',
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 60),
                      child: Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage('assets/top-up.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Top Up',
                            style: TextStyle(
                              fontFamily: 'Oswald',
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'Saturday, 9 Sept, 22:00',
                            style: TextStyle(
                              fontFamily: 'Oswald',
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'IDR 700.000',
                            style: TextStyle(
                              fontFamily: 'Oswald',
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 40, bottom: 30),
                  child: Container(
                    width: 190,
                    child: ElevatedButton(
                      child: Text(
                        'Top Up Wallet',
                        style: TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 18,
                          color: Color.fromRGBO(252, 213, 97, 1),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TopUpPage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        backgroundColor: Color.fromRGBO(80, 62, 157, 1),
                        foregroundColor: Color.fromRGBO(172, 154, 250, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}

class TopUpPage extends StatefulWidget {
  @override
  State<TopUpPage> createState() => _TopUpPageState();
}

class _TopUpPageState extends State<TopUpPage> {
  List<Color> containerColors =
      List.generate(10, (index) => Color.fromRGBO(80, 62, 157, 1));

  void changeColor(int index) {
    setState(() {
      for (int i = 0; i < containerColors.length; i++) {
        if (i == index) {
          containerColors[i] =
              (containerColors[i] == Color.fromRGBO(80, 62, 157, 1))
                  ? Color.fromRGBO(172, 155, 248, 1)
                  : Color.fromRGBO(80, 62, 157, 1);
        } else {
          containerColors[i] = Color.fromRGBO(80, 62, 157, 1);
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 10, right: 320),
            child: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 30),
            child: Center(
              child: Text(
                'Top Up',
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 24,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.only(left: 40),
            child: Text(
              'Amount',
              style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: Colors.grey,
                  width: 1.0,
                ),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'IDR',
                  contentPadding: EdgeInsets.symmetric(horizontal: 16),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          SizedBox(height: 50),
          Padding(
            padding: EdgeInsets.only(left: 40),
            child: Text(
              'Choose by template',
              style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 22,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        changeColor(0);
                      },
                      child: Container(
                        width: 140,
                        height: 90,
                        color: containerColors[0],
                        child: Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'IDR',
                                style: TextStyle(
                                  fontFamily: 'Oswald',
                                  fontSize: 22,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                '50.000',
                                style: TextStyle(
                                  fontFamily: 'Oswald',
                                  fontSize: 22,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 30),
                    GestureDetector(
                      onTap: () {
                        changeColor(1);
                      },
                      child: Container(
                        width: 140,
                        height: 90,
                        color: containerColors[1],
                        child: Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'IDR',
                                style: TextStyle(
                                  fontFamily: 'Oswald',
                                  fontSize: 22,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                '100.000',
                                style: TextStyle(
                                  fontFamily: 'Oswald',
                                  fontSize: 22,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        changeColor(2);
                      },
                      child: Container(
                        width: 140,
                        height: 90,
                        color: containerColors[2],
                        child: Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'IDR',
                                style: TextStyle(
                                  fontFamily: 'Oswald',
                                  fontSize: 22,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                '150.000',
                                style: TextStyle(
                                  fontFamily: 'Oswald',
                                  fontSize: 22,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 30),
                    GestureDetector(
                      onTap: () {
                        changeColor(3);
                      },
                      child: Container(
                        width: 140,
                        height: 90,
                        color: containerColors[3],
                        child: Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'IDR',
                                style: TextStyle(
                                  fontFamily: 'Oswald',
                                  fontSize: 22,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                '200.000',
                                style: TextStyle(
                                  fontFamily: 'Oswald',
                                  fontSize: 22,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        changeColor(4);
                      },
                      child: Container(
                        width: 140,
                        height: 90,
                        color: containerColors[4],
                        child: Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'IDR',
                                style: TextStyle(
                                  fontFamily: 'Oswald',
                                  fontSize: 22,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                '250.000',
                                style: TextStyle(
                                  fontFamily: 'Oswald',
                                  fontSize: 22,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 30),
                    GestureDetector(
                      onTap: () {
                        changeColor(5);
                      },
                      child: Container(
                        width: 140,
                        height: 90,
                        color: containerColors[5],
                        child: Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'IDR',
                                style: TextStyle(
                                  fontFamily: 'Oswald',
                                  fontSize: 22,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                '300.000',
                                style: TextStyle(
                                  fontFamily: 'Oswald',
                                  fontSize: 22,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        changeColor(6);
                      },
                      child: Container(
                        width: 140,
                        height: 90,
                        color: containerColors[6],
                        child: Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'IDR',
                                style: TextStyle(
                                  fontFamily: 'Oswald',
                                  fontSize: 22,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                '350.000',
                                style: TextStyle(
                                  fontFamily: 'Oswald',
                                  fontSize: 22,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 30),
                    GestureDetector(
                      onTap: () {
                        changeColor(7);
                      },
                      child: Container(
                        width: 140,
                        height: 90,
                        color: containerColors[7],
                        child: Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'IDR',
                                style: TextStyle(
                                  fontFamily: 'Oswald',
                                  fontSize: 22,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                '400.000',
                                style: TextStyle(
                                  fontFamily: 'Oswald',
                                  fontSize: 22,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        changeColor(8);
                      },
                      child: Container(
                        width: 140,
                        height: 90,
                        color: containerColors[8],
                        child: Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'IDR',
                                style: TextStyle(
                                  fontFamily: 'Oswald',
                                  fontSize: 22,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                '450.000',
                                style: TextStyle(
                                  fontFamily: 'Oswald',
                                  fontSize: 22,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 30),
                    GestureDetector(
                      onTap: () {
                        changeColor(9);
                      },
                      child: Container(
                        width: 140,
                        height: 90,
                        color: containerColors[9],
                        child: Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'IDR',
                                style: TextStyle(
                                  fontFamily: 'Oswald',
                                  fontSize: 22,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                '500.000',
                                style: TextStyle(
                                  fontFamily: 'Oswald',
                                  fontSize: 22,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 40, bottom: 30),
                  child: Container(
                    width: 190,
                    child: ElevatedButton(
                      child: Text(
                        'Top Up Now',
                        style: TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 18,
                          color: Color.fromRGBO(252, 213, 97, 1),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SuccessPage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        backgroundColor: Color.fromRGBO(80, 62, 157, 1),
                        foregroundColor: Color.fromRGBO(172, 154, 250, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SuccessPage extends StatefulWidget {
  @override
  State<SuccessPage> createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/wallet.png',
              width: 150,
              height: 150,
            ),
            SizedBox(height: 30),
            Text(
              'Wallet is Ready!',
              style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 27,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'You have succesfully',
              style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 18,
                color: Colors.black,
              ),
            ),
            Text(
              'feed your wallet',
              style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 18,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 40, bottom: 5),
              child: Container(
                width: 190,
                child: ElevatedButton(
                  child: Text(
                    'My Wallet',
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => WalletPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    backgroundColor: Color.fromRGBO(80, 62, 157, 1),
                    foregroundColor: Color.fromRGBO(172, 154, 250, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9),
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
              child: Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  'Back to Home',
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 16,
                    color: Color.fromRGBO(80, 62, 157, 1),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}