import 'package:flutix/pages/home_movies.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  Set<String> selectedGenres = Set<String>();
  String? selectedLanguage;
  Color getArrowColor() {
    if (selectedGenres.isNotEmpty && selectedLanguage != null) {
      return Color(0xFF503E9D);
    } else {
      return Color(0xffD9D9D9);
    }
  }

  @override
  Widget build(BuildContext context) {
    Color arrowColor = getArrowColor();
    return Scaffold(
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(24),
            child: IconButton(
              icon: const Icon(Icons.arrow_back_rounded),
              alignment: Alignment.topLeft,
              iconSize: 40,
              onPressed: () {},
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 24, bottom: 10),
            child: Text(
              "Select Your",
              style: TextStyle(
                fontSize: 24,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 24),
            child: Text(
              "Genre",
              style: TextStyle(
                fontSize: 24,
              ),
            ),
          ),
          GridView.count(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            children: [
              buildGenreContainer("Horror",
                  "https://images.unsplash.com/photo-1562666938-671e1509e2ad?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"), // Spacing
              buildGenreContainer("Music",
                  "https://images.unsplash.com/photo-1476136236990-838240be4859?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"), // Spacing
              buildGenreContainer("Action",
                  "https://images.unsplash.com/photo-1509347528160-9a9e33742cdb?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"), // Spacing
              buildGenreContainer("Drama",
                  "https://images.unsplash.com/photo-1559781436-058d03a49b1e?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"), // Spacing
              buildGenreContainer("War",
                  "https://images.unsplash.com/photo-1563804951831-49844db19644?q=80&w=1395&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"), // Spacing
              buildGenreContainer("Crime",
                  "https://images.unsplash.com/photo-1573511860313-d333c8022170?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 24, bottom: 10),
            child: Text(
              "Which Movie Language",
              style: TextStyle(
                fontSize: 24,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 24),
            child: Text(
              "You Prefer?",
              style: TextStyle(
                fontSize: 24,
              ),
            ),
          ),
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: [
              buildLanguageContainer("Bahasa",
                  "https://images.unsplash.com/photo-1628825216807-441808e135b5?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
              buildLanguageContainer("English",
                  "https://images.unsplash.com/photo-1648312374666-adcc42d6097c?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
              buildLanguageContainer("Japanese",
                  "https://images.unsplash.com/photo-1676286155316-b6098c4fd35a?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
              buildLanguageContainer("Korean",
                  "https://images.unsplash.com/photo-1616647169746-1e62e471cae6?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 24, bottom: 48, left: 24, right: 24),
            child: Row(
              children: [
                Text(
                  "Continue to Sign Up",
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
                IconButton(
                  padding: EdgeInsets.only(left: 140),
                  onPressed: () {
                    if (selectedGenres.isNotEmpty && selectedLanguage != null) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HomePage()),
                      );
                    } else {
                      showDialog<String>(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text(
                              'Alert',
                              style: TextStyle(
                                color: Color(0xff503E9D),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            content:
                                Text('Please select a genre and a language'),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context, 'OK'),
                                child: Text(
                                  'OK',
                                  style: TextStyle(
                                    color: Color(0xff503E9D),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    }
                    ;
                  },
                  icon: Icon(Icons.arrow_circle_right_rounded),
                  iconSize: 50,
                  color: arrowColor,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  void toggleGenreSelection(String genre) {
    setState(() {
      if (selectedGenres.contains(genre)) {
        selectedGenres.remove(genre); // If already selected, remove it
      } else {
        selectedGenres.add(genre); // If not selected, add it
      }
    });
  }

  Widget buildGenreContainer(String genre, String imageURL) {
    bool isSelectedGenre = selectedGenres.contains(genre);
    return GestureDetector(
      onTap: () {
        toggleGenreSelection(genre);
      },
      child: Padding(
        padding: EdgeInsets.all(24),
        child: Container(
          alignment: Alignment.center,
          child: Text(
            genre,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            image: DecorationImage(
              image: NetworkImage(imageURL),
              fit: BoxFit.cover, // Adjust as needed
            ),
            border: Border.all(
              color: isSelectedGenre ? Color(0xFF503E9D) : Colors.transparent,
              width: 5,
            ),
          ),
        ),
      ),
    );
  }

  void selectLanguage(String language) {
    setState(() {
      selectedLanguage = language;
    });
  }

  Widget buildLanguageContainer(String language, String imgURL) {
    bool isSelectedLanguage = selectedLanguage == language;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectLanguage(language);
        });
      },
      child: Padding(
        padding: EdgeInsets.all(24),
        child: Container(
          alignment: Alignment.center,
          child: Text(
            language,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            image: DecorationImage(
              image: NetworkImage(imgURL),
              fit: BoxFit.cover, // Adjust as needed
            ),
            border: Border.all(
              color:
                  isSelectedLanguage ? Color(0xFF503E9D) : Colors.transparent,
              width: 5,
            ),
          ),
        ),
      ),
    );
  }
}