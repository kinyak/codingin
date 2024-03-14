import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

final List<String> imgList = [
  "assets/images/story-1.jpg",
  "assets/images/story-2.jpg",
  "assets/images/story-3.jpg",
  "assets/images/story-4.jpg",
];

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _homeState();
}

class _homeState extends State<Home> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              height: 70,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey[200],
                      ),
                      width: 45,
                      height: 45,
                      child: Stack(
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            child: Image.asset("assets/images/avatar-1.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              width: 10,
                              height: 10,
                              decoration: BoxDecoration(
                                color: Color(0xFF4ED442),
                                border: Border.all(width: 1, color: Colors.white),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hallo, Samuel",
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset("assets/icons/award.png"),
                            Text("+1600 ",
                            style: TextStyle(
                              color: Color(0xFFFCD034),
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            Text("Points",
                              style: TextStyle(
                                  color: Color(0xFFFCD034)
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 20,
                    height: 20,
                    child: Stack(
                      children: [
                        Container(
                            width: 100,
                            height: 100,
                            child: Image.asset(
                              "assets/icons/notification.png",
                              fit: BoxFit.contain,
                            )
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              color: Color(0xFFEC5F5F),
                              border: Border.all(width: 2, color: Colors.white),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 5),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    StoryCard(image: "assets/images/story-1.jpg",),
                    StoryCard(image: "assets/images/story-2.jpg",),
                    StoryCard(image: "assets/images/story-3.jpg",),
                    StoryCard(image: "assets/images/story-4.jpg",),
                    StoryCard(image: "assets/images/story-5.jpg",),
                    StoryCard(image: "assets/images/story-6.jpg",),
                    StoryCard(image: "assets/images/story-7.jpg",),
                    StoryCard(image: "assets/images/story-8.jpg",),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 10,),
                Text("Upcoming ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins'
                  ),),
                Text("course of this week")
              ],
            ),
            SizedBox(height: 10,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 5,),
                  CategoryItem(
                    title: "All",
                    status: true,),
                  CategoryItem(
                    title: "UI/UX",
                    status: false,),
                  CategoryItem(
                    title: "Illustration",
                    status: false,),
                  CategoryItem(
                    title: "3D Animation",
                    status: false,),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 350,
              child: Column(
                  children: [
                Expanded(
                  child: CarouselSlider(
                    items: imageSliders,
                    carouselController: _controller,
                    options: CarouselOptions(
                        viewportFraction: 0.8,
                        autoPlay: false,
                        enlargeCenterPage: true,
                        aspectRatio: 1.0,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _current = index;
                          });
                        }),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: imgList.asMap().entries.map((entry) {
                    return GestureDetector(
                      onTap: () => _controller.animateToPage(entry.key),
                      child: Container(
                        width: 12.0,
                        height: 5.0,
                        margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            shape: BoxShape.rectangle,
                            color: _current == entry.key ? Color(0xFFEC5F5F) : Color(0xFFEEEEEE)
                            // Color(0xFFEC5F5F)
                        )  //     .withOpacity(_current == entry.key ? 0.9 : 0.2)),
                      ),
                    );
                  }).toList(),
                ),
              ]),
            ),
            Container(
              child: GNav(
                  rippleColor: Color(0xFFEC5F5F), // tab button ripple color when pressed
                  hoverColor: Color(0xFFEEEEEE), // tab button hover color
                  haptic: true, // haptic feedback
                  tabBorderRadius: 20,
                  tabActiveBorder: Border.all(color: Color(0xFFEC5F5F), width: 1), // tab button border
                  tabBorder: Border.all(color: Colors.grey, width: 1), // tab button border
                  // tabShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)], // tab button shadow
                  // curve: Curves.easeOutExpo, // tab animation curves
                  duration: Duration(milliseconds: 100), // tab animation duration
                  gap: 8, // the tab button gap between icon and text
                  color: Colors.grey[800], // unselected icon color
                  activeColor: Color(0xFFEC5F5F), // selected icon and text color
                  iconSize: 24, // tab button icon size
                  tabBackgroundColor: Color(0xFFEC5F5F).withOpacity(0.1), // selected tab background color
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5), // navigation bar padding
                  tabs: [
                    GButton(
                      icon: LineIcons.home,
                      text: 'Home',
                    ),
                    GButton(
                      icon: LineIcons.compass,
                      text: 'Discover',
                    ),
                    GButton(
                      icon: LineIcons.envelope,
                      text: 'Message',
                    ),
                    GButton(
                      icon: LineIcons.user,
                      text: 'Profile',
                    )
                  ]
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  CategoryItem({
    super.key,
    required this.title,
    required this.status,
  });

  final String title;
  final bool status;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: Text(title,
      style: TextStyle(
        fontSize: 15,
        color: status == true ?Colors.white : Colors.grey[500]
      ),
      ),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: status == true ?Color(0xFFEC5F5F) : Colors.grey[100],
        borderRadius: BorderRadius.circular(5)
      ),
    );
  }
}

class StoryCard extends StatelessWidget {
  String image;

  StoryCard({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: 70,
      width: 70,
      decoration: BoxDecoration(
        color: Color(0xFFEC5F5F),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.all(5),
            height: 70,
            width: 70,
            decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    image,
                  )
                ),
                border: Border.all(
                  width: 3,
                    color: Colors.white,
                    style: BorderStyle.solid),
                color: Colors.blue,
                borderRadius: BorderRadius.circular(15)
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 25,
              width: 25,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/icons/video.png"
                  )
                ),
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFF4DC9D1),
                border: Border.all(
                  color: Colors.white,
                  width: 3
                )
              ),
            ),
          )
        ],
      )
    );
  }
}



final List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: Container(
      margin: EdgeInsets.all(5.0),
      child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          child: Stack(
            children: <Widget>[
              Image.asset(item, fit: BoxFit.cover, height: 300, width: 300,),
              Positioned(
                top: 15,
                left: 15,
                child: Container(
                  height: 20,
                  decoration: BoxDecoration(
                  color: Colors.yellow[800],
                  borderRadius: BorderRadius.circular(10)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Text(
                      "Free e-book",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0.0,
                left: 0.0,
                right: 0.0,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(200, 0, 0, 0),
                        Color.fromARGB(0, 0, 0, 0)
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20.0),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Text("Step design sprint for beginner",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 16
                          ),
                          ),
                          SizedBox(height: 3,),
                          Row(
                            children: [
                              Image.asset("assets/icons/stopwatch.png"),
                              Text("5h 21m",
                              style: TextStyle(
                                color: Color(0xFF8C8C8C),
                                fontSize: 12
                              ),)
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 3,),
                      Row(
                        children: [
                          Container(
                            height: 20,
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Text(
                                "6 lessons",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                            color: Color(0xFF4DC9D1),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            height: 20,
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Text(
                                "UI/UX",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: Color(0xFF0082CD),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            height: 20,
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Text(
                                "Free",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: Color(0xFF8D5EF2),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 3,),
                      Row(
                        children: [
                          Container(
                            child: Image.asset("assets/images/avatar-1.png"),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text(
                                    "Laurel Seilha",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),),
                                Text(
                                    "Product Designer",
                                  style: TextStyle(
                                    fontSize: 10,
                                  color: Colors.white,)
                                )
                              ],
                            ),
                          )
                        ]
                      ),
                    ],
                  )
                ),
              ),
            ],
          )),
    ),
))
    .toList();
