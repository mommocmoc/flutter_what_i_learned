import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 31, 31, 31),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    maxRadius: 25,
                    backgroundImage:
                        NetworkImage("https://via.placeholder.com/50"),
                  ),
                  Icon(
                    Icons.add,
                    size: 30,
                    color: Colors.white,
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "MONDAY 16",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 50,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Text(
                          "today".toUpperCase(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ),
                        Text(
                          "•",
                          style: TextStyle(
                            color: Colors.red[600],
                            fontSize: 30,
                          ),
                        ),
                        CalendarDateWidget(text: "17"),
                        CalendarDateWidget(text: "18"),
                        CalendarDateWidget(text: "19"),
                        CalendarDateWidget(text: "20"),
                        CalendarDateWidget(text: "21"),
                        CalendarDateWidget(text: "22"),
                        CalendarDateWidget(text: "23"),
                        CalendarDateWidget(text: "24"),
                        CalendarDateWidget(text: "25"),
                        CalendarDateWidget(text: "26"),
                        CalendarDateWidget(text: "27"),
                        CalendarDateWidget(text: "28"),
                        CalendarDateWidget(text: "29"),
                        CalendarDateWidget(text: "30"),
                        CalendarDateWidget(text: "31"),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.yellow[400],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 10,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            //Time
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "11",
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text("30"),
                                Container(
                                  width: 0.3,
                                  height: 20,
                                  color: Colors.black,
                                ),
                                Text(
                                  "12",
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text("20"),
                              ],
                            ),
                            //Meeting Title
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                    left: 20,
                                  ),
                                  width: 300,
                                  child: Text(
                                    "design meeting".toUpperCase(),
                                    maxLines: 2,
                                    style: TextStyle(
                                      fontSize: 50,
                                      overflow: TextOverflow.fade,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                    left: 20,
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                          right: 30,
                                        ),
                                        child: Text(
                                          "alex".toUpperCase(),
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // width: 70,
                                        margin: EdgeInsets.only(
                                          right: 30,
                                        ),
                                        child: Text(
                                          "helena".toUpperCase(),
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 70,
                                        margin: EdgeInsets.only(
                                          right: 30,
                                        ),
                                        child: Text(
                                          "nana".toUpperCase(),
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}

class CalendarDateWidget extends StatelessWidget {
  final text;
  const CalendarDateWidget({
    super.key,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white60,
          fontSize: 30,
        ),
      ),
    );
  }
}
