import 'package:flutix/pages/select_date.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Movie_details extends StatefulWidget {
  const Movie_details(
      {Key? key,
      required this.imageLink,
      required this.titleLink,
      required this.initialRatingLink,
      required this.teaserLink})
      : super(key: key);
  final String imageLink;
  final String titleLink;
  final double initialRatingLink;
  final String teaserLink;

  @override
  State<Movie_details> createState() => _Movie_detailsState();
}

class _Movie_detailsState extends State<Movie_details> {
  @override
  Widget build(BuildContext context) {
    String Rating = '${widget.initialRatingLink}';
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(widget.teaserLink),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 15, top: 10, right: 30),
                  width: 100.0,
                  height: 150.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: NetworkImage(widget
                          .imageLink), // Ganti dengan path file gambar Anda
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 5),
                        child: Text(
                          widget.titleLink,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 5),
                        child: const Text(
                          "Horor, Mystery",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.black,
                            ),
                            const Icon(
                              Icons.star,
                              color: Colors.black,
                            ),
                            const Icon(
                              Icons.star,
                              color: Colors.black,
                            ),
                            const Icon(
                              Icons.star,
                              color: Colors.black,
                            ),
                            const Icon(
                              Icons.star,
                              color: Colors.grey,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              "$Rating / 10",
                              style: const TextStyle(
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
              height: 37,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    width: 140,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        image: NetworkImage(widget
                            .imageLink), // Ganti dengan path file gambar Anda
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    width: 140,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        image: NetworkImage(widget
                            .imageLink), // Ganti dengan path file gambar Anda
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    width: 140,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        image: NetworkImage(widget
                            .imageLink), // Ganti dengan path file gambar Anda
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.only(left: 33, right: 33),
                  child: const Text(
                    "Sinopsis",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.only(
                      top: 6, left: 33, right: 33, bottom: 6),
                  child: const Text(
                    "pembuatan keripik singkong melibatkan keseluruhan siklus pemilihan singkong, pembersihan, hingga pengolahan. Dengan demikian, diharapkan siswa-siswi tidak hanya memahami pentingnya menjaga kerja sama dan gotong royong tetapi juga dapat mengaplikasikan kearifan lokal dalam aktivitas sehari-hari",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 12,
                      height: 1.5,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: const Text(
                    "Film yang Serupa",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
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
            const SizedBox(
              height: 40,
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.3,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF503E9D),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SelectDatePage()));
                  },
                  child: Text(
                    "Booking Ticket",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
            SizedBox(height: 20,)
          ],
        ),
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
        margin: const EdgeInsets.symmetric(horizontal: 8),
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
}
