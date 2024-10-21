import 'package:flutter/material.dart';
import 'booking_screen.dart';

  class HomeScreen extends StatelessWidget {

    List movies = [
      "Ant Man 3",
      "Aquaman 2",
      "GOTG Vol 3",
      "Shazam 2",
    ];
    List movies2 = [
      "GOTG Vol 3",
      "Shazam 2",
      "Aquaman 2",
      "Ant Man 3",
    ];
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.sort,
            size: 32,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            "Dp Cineplex",
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    size: 28,
                  ),
                  SizedBox(width: 5,),
                  Icon(
                    Icons.filter_alt_off_outlined,
                    size: 28,
                  ),
                ],
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Playing Now",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  InkWell(
                    onTap: (){},
                    child: Text(
                      "View all",
                      style: TextStyle(
                          color: Colors.amber,
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ],
              ),
              ),
              SizedBox(
                height: 390,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index){
                return Padding(
                    padding: EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    BookingScreen(movie: movies[index]),
                              ));
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            "images/${movies[index]}.jpg",
                            height: 280,
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Padding(
                          padding: EdgeInsets.only(left: 8),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text(
                             movies[index],
                             style: TextStyle(
                               fontSize: 18,
                               color: Colors.white,
                               fontWeight: FontWeight.w600,
                             ),
                           ),
                           SizedBox(height: 4,),
                           Row(
                             children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                               Text(
                                 "4.5",
                                 style: TextStyle(
                                   color: Colors.amber,
                                   fontSize: 16,
                                 ),
                               ),
                             ],
                           ),
                           SizedBox(height: 8,),
                           Row(
                             children: [
                               Icon(
                                 Icons.access_time_rounded,
                                 color: Colors.white60,
                                 size: 20,
                               ),
                               SizedBox(width: 10,),
                               Text(
                                 "2h 30min",
                                 style: TextStyle(
                                     color: Colors.white60
                                 ),
                               )
                             ],
                           )
                         ],
                       ),
                      )
                    ],
                  ),
                );
               },
              ),
              ),
              SizedBox(height: 15,),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Color(0xff2f3236),
                      ),
                      child: Text(
                        "COMMING SOON",
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){},
                      child: Text(
                        "View All",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffF7D300),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5,),
              SizedBox(
                height: 300,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index){
                    return Padding(
                      padding: EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: (){
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                "images/${movies2[index]}.jpg",
                                fit: BoxFit.cover,
                                height: 200,
                                width: 180,
                              ),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  movies[index],
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
