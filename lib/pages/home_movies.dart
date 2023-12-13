import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutix/pages/detail_movies.dart';
import 'package:flutix/pages/my_tickets.dart';
import 'package:flutix/pages/setting_profile.dart';
import 'package:flutix/pages/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HomeMovies extends StatelessWidget {
  const HomeMovies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff503E9D),
        title: const Text(
          'FLUTIX',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: const Color(0xFFFCD561),
          ),
        ),
        elevation: 0,
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: IconButton(
              onPressed: () {
                FirebaseAuth.instance.signOut();
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const SplashPage(),
                  ),
                );
              },
              tooltip: 'Logout',
              icon: Icon(
                Icons.logout,
                size: 30,
                color: const Color(0xFFFCD561),
              ),
            ),
          ),
        ],
        automaticallyImplyLeading: false,
        toolbarHeight: 48.0,
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(24),
        children: [
          const Align(
            alignment: Alignment.topLeft,
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 40,
              backgroundImage: AssetImage('assets/Logo.jpg'),
            ),
          ),
          const SizedBox(height: 24),
          const Text(
            'Now Playing',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _buildMovieCard(
                  'https://m.media-amazon.com/images/M/MV5BMmZiN2VmMjktZDE5OC00ZWRmLWFlMmEtYWViMTY4NjM3ZmNkXkEyXkFqcGdeQXVyMTI2MTc2ODM3._V1_FMjpg_UX1000_.jpg',
                  'Evil Dead Rise',
                  'https://t-2.tstatic.net/kaltim/foto/bank/images/evil-dead-rise.jpg',
                  6.5,
                  context,
                ),
                _buildMovieCard(
                  'https://image.tmdb.org/t/p/w500/iuFNMS8U5cb6xfzi51Dbkovj7vM.jpg',
                  'Barbie',
                  'https://i.ytimg.com/vi/6_vQ2frgXSM/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLBV3YnprngZZqllNYlllZYqfjdPrQ',
                  7.0,
                  context,
                ),
                _buildMovieCard(
                  'https://m.media-amazon.com/images/M/MV5BNDg1ZWE5MmYtZGU5YS00MzU2LThjMjktYThiNmVmMmZjMDkxXkEyXkFqcGdeQXVyMTU3ODE5NzYy._V1_.jpg',
                  'Oppenheimer',
                  'https://i0.wp.com/nerdbot.com/wp-content/uploads/2022/07/oppenheimer.jpeg?fit=1280%2C720&ssl=1',
                  8.5,
                  context,
                ),
                _buildMovieCard(
                  'https://m.media-amazon.com/images/M/MV5BMWE3ZDkyYzgtNzdjNi00YmUxLTgyMzYtYjVmZGRjODc2NjMwXkEyXkFqcGdeQXVyNzY4NDQzNTg@._V1_FMjpg_UX1000_.jpg',
                  'Hitmen',
                  'https://pbs.twimg.com/media/FutF6RgaAAAKLPr.jpg:large',
                  6.9,
                  context,
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          const Text(
            'Movie Category',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 12),
          GridView.count(
            crossAxisCount: 4,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: [
              _buildMovieCategory(
                  Icons.directions_run_rounded, 'Action', context),
              _buildMovieCategory(
                  Icons.sports_kabaddi_rounded, 'Battle', context),
              _buildMovieCategory(
                  Icons.auto_awesome_rounded, 'Sci-fi', context),
              _buildMovieCategory(Icons.child_care_rounded, 'Kids', context),
            ],
          ),
          SizedBox(height: 24),
          Text(
            'Coming Soon',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 12),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _buildComingSoonCard(
                  'https://m.media-amazon.com/images/M/MV5BMTI3MzliMmItZjQ3NC00MTJhLTk1YmYtMzU2NmYxMDAyNDQxXkEyXkFqcGdeQXVyMTEzMTI1Mjk3._V1_FMjpg_UX1000_.jpg',
                  'Petualangan Sherina 2',
                  6.5,
                  context,
                ),
                _buildComingSoonCard(
                  'https://m.media-amazon.com/images/M/MV5BNmE5MmM2ZGEtNTVlNC00M2Q3LTliMjMtMzg5YjUyMjliZWIzXkEyXkFqcGdeQXVyMTAxNzQ1NzI@._V1_FMjpg_UX1000_.jpg',
                  'The Nun 2',
                  7.0,
                  context,
                ),
                _buildComingSoonCard(
                  'https://m.media-amazon.com/images/M/MV5BNzJiZGRkMDgtZWFlOS00MWRhLThhNTEtMjljZTJjYTljYTBjXkEyXkFqcGdeQXVyMTEyMjM2NDc2._V1_FMjpg_UX1000_.jpg',
                  'Wonka',
                  8.5,
                  context,
                ),
                _buildComingSoonCard(
                  'https://m.media-amazon.com/images/M/MV5BZGJkMDUwZWQtYTMzMS00NTg5LWE1ZTYtOTVhMDI4NGI1YjMyXkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_.jpg',
                  'The Killer',
                  6.9,
                  context,
                ),
              ],
            ),
          ),
          SizedBox(height: 24),
          Container(
            height:
                150, // Reducing height to create a more horizontal/landscape banner
            alignment: Alignment.center,
            child: Text(
              "HOLIDAY PROMO!",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              image: DecorationImage(
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1489599849927-2ee91cede3ba?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMovieCard(String imageUrl, String title, String teaserUrl,
      double initialRating, BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Movie_details(
              imageLink: imageUrl,
              titleLink: title,
              teaserLink: teaserUrl,
              initialRatingLink: initialRating,
            ),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            Container(
              width: screenWidth * 0.4, // 40% of the screen width
              height: screenWidth * 0.56, // 56% of the screen width
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                image: DecorationImage(
                  image: NetworkImage(imageUrl),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(height: screenWidth * 0.04), // 4% of the screen width
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: screenWidth * 0.04, // 7% of the screen width
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: screenWidth * 0.04), // 4% of the screen width
            RatingBar.builder(
              initialRating: initialRating,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemSize: screenWidth * 0.04, // 4% of the screen width
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              ignoreGestures: true,
              onRatingUpdate: (double value) {},
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMovieCategory(
      IconData iconData, String text, BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth * 0.2, // 20% of the screen width
      height: screenWidth * 0.25, // 25% of the screen width
      margin: EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: screenWidth * 0.12, // 12% of the screen width
            height: screenWidth * 0.12, // 12% of the screen width
            decoration: BoxDecoration(
              color: Color(0xffFCD561),
              borderRadius: BorderRadius.circular(
                  screenWidth * 0.03), // 3% of the screen width
              border: Border.all(
                color: Color(0xffD9D9D9),
                width: screenWidth *
                    0.008, // 0.8% of the screen width (adjust this value)
              ),
            ),
            child: Icon(
              iconData,
              color: Color(0xff503E9D),
              size: screenWidth * 0.08, // 8% of the screen width
            ),
          ),
          SizedBox(height: screenWidth * 0.03), // 3% of the screen width
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: screenWidth * 0.04, // 4% of the screen width
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildComingSoonCard(String imageUrl, String title,
      double initialRating, BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          Container(
            width: screenWidth * 0.4, // 40% of the screen width
            height: screenWidth * 0.56, // 56% of the screen width
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              image: DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(height: screenWidth * 0.04), // 4% of the screen width
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: screenWidth * 0.04, // 7% of the screen width
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;

  static final List<Widget> _pages = [
    const HomeMovies(),
    const MyTickets(),
    const SettingProfile(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xff503E9D),
        unselectedItemColor: const Color(0xFFFFFFFF),
        selectedItemColor: const Color(0xFFFCD561),
        currentIndex: _index,
        onTap: _onItemTap,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.movie_rounded),
            label: "Movies",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.confirmation_number_rounded),
            label: "My Tickets",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_rounded),
            label: "Profile",
          ),
        ],
      ),
      body: Center(
        child: _pages.elementAt(_index),
      ),
    );
  }
}
