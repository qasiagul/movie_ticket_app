import 'package:flutter/material.dart';

class BookingScreen extends StatelessWidget {
  String movie;
  BookingScreen({required this.movie});
  List formats = [
    "2D",
    "3D",
    "4DX",
    "IMAX",
  ];
  List days = [
    "S",
    "M",
    "T",
    "W",
    "T",
    "F",
    "S",

  ];
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(0xff212429),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.2,
              decoration: BoxDecoration(
                  color: Colors.black,
                  image: DecorationImage(
                      image: AssetImage("images/${movie}.jpg"),
                      fit: BoxFit.cover,
                      opacity: 0.6)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, top: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 28,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.share_outlined,
                              color: Colors.white,
                              size: 25,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.favorite_outline,
                              color: Colors.white,
                              size: 25,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      movie,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Format:",
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xffF7D300),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 25,
                          child: ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: 4,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  child: Container(
                                    margin: EdgeInsets.symmetric(horizontal: 8),
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    decoration: BoxDecoration(
                                      color: index == 1
                                          ? Color(0xffF7D300)
                                          : Color(0xff212429),
                                      borderRadius: BorderRadius.circular(5),
                                      border: index != 1
                                          ? Border.all(color: Colors.white60)
                                          : null,
                                    ),
                                    child: Center(
                                      child: Text(
                                        formats[index],
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white70),
                                      ),
                                    ),
                                  ),
                                );
                              }),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Select Date",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white70,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 70,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          return InkWell(
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 5),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 8),
                              decoration: BoxDecoration(
                                color: index == 1 ? Color(0xffF7D300) : null,
                                borderRadius: BorderRadius.circular(5),
                                // border: index != 1
                                //     ? Border.all(color: Colors.white60)
                                //     : null,
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    days[index],
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white70),
                                  ),
                                  Text(
                                    "${index + 8}",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white70),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Color(0xffF7D300),
                      ),
                      Text(
                        "City Complex Cinema",
                        style: TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                      Spacer(),
                      Text(
                        "Hall A",
                        style: TextStyle(
                          color: Colors.white70,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                  Text(
                    "Select Time",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white70,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  SizedBox(
                    height: 30,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          return InkWell(
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 8,),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10,),
                              decoration: BoxDecoration(
                                color: index == 1 ? Color(0xffF7D300) : Colors.white24,
                                borderRadius: BorderRadius.circular(5),
                                border: index != 1
                                    ? Border.all(color: Colors.white30)
                                    : null,
                              ),
                              child: Center(
                                child: Text(
                                  "${index + 8} : 30 AM",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white70),
                                ),
                              ),
                            ),
                          );
                        }),),
                  SizedBox(height: 15,),

                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Color(0xffF7D300),
                      ),
                      Text(
                        "City Complex Cinema",
                        style: TextStyle(
                            color: Colors.white70,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                      Spacer(),
                      Text(
                        "Hall A",
                        style: TextStyle(
                          color: Colors.white70,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                  Text(
                    "Select Time",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white70,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  SizedBox(
                    height: 30,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          return InkWell(
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                horizontal: 8,),
                              padding: EdgeInsets.symmetric(
                                horizontal: 10,),
                              decoration: BoxDecoration(
                                color: index == 1 ? Color(0xffF7D300) : Colors.white24,
                                borderRadius: BorderRadius.circular(5),
                                border: index != 1
                                    ? Border.all(color: Colors.white30)
                                    : null,
                              ),
                              child: Center(
                                child: Text(
                                  "${index + 11} : 30 AM",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white70),
                                ),
                              ),
                            ),
                          );
                        }),),
                  SizedBox(height: 20,),
                  Material(
                    color:Color(0xfff7d300).withOpacity(0.9),
                    borderRadius:BorderRadius.circular(10),
                    child: InkWell(
                      onTap: (){},
                      child: Container(
                        height: 55,
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                          child: Text(
                            "Book Ticket",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
