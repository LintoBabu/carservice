import 'package:carousel_slider/carousel_slider.dart';
import 'package:carservice/categories/customersDetails/customers.dart';
import 'package:carservice/categories/pendingService/pendingService.dart';
import 'package:carservice/categories/services.dart';
import 'package:carservice/invoice/invoicePage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    final List<String> imgList = [
      'https://img.freepik.com/premium-vector/concept-car-service-mechanic-with-wrench-car-tools-gears-vector-illustration_357257-1143.jpg?size=626&ext=jpg',
      'https://img.freepik.com/free-vector/auto-mechanic-repairing-vehicle-engine-isolated-flat-vector-illustration-cartoon-man-fixing-checking-car-with-open-hood-garage_74855-8227.jpg?size=626&ext=jpg',
      'https://img.freepik.com/premium-vector/car-mechanics-working-auto-repair-service_82574-12464.jpg?size=626&ext=jpg',
      'https://img.freepik.com/premium-vector/auto-mechanic-service-center-staff-changing-tire-balancing-car-assembling-garage-workers_341509-3417.jpg?size=626&ext=jpg'
    ];
    final List<Widget> imageSliders = imgList
        .map((item) => Container(
              child: Container(
                margin: EdgeInsets.all(5.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    child: Stack(
                      children: <Widget>[
                        Image.network(item, fit: BoxFit.cover, width: 1000.0),
                      ],
                    )),
              ),
            ))
        .toList();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications,
                  color: Colors.black,
                ))
          ],
          leading: Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                child: CarouselSlider(
              options: CarouselOptions(
                aspectRatio: 1.7,
                viewportFraction: 0.95,
                enlargeCenterPage: true,
                enlargeStrategy: CenterPageEnlargeStrategy.height,
                autoPlay: true,
              ),
              items: imageSliders,
            )),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Container(
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(10),
            //       color: Colors.blueGrey,
            //     ),
            //     child: Padding(
            //       padding: const EdgeInsets.all(8.0),
            //       child: Row(
            //         children: [
            //           Text(
            //             "Categories",
            //             style: GoogleFonts.arya(
            //                 fontSize: 20,
            //                 fontWeight: FontWeight.bold,
            //                 letterSpacing: 2,
            //                 color: Colors.white),
            //           ),
            //           Spacer(),
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => servicePage()));
                  },
                  child: Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width / 3,
                    child: Card(
                      elevation: 7,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Service",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.notoSans(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Image.asset(
                            "assets/images/vehicle.png",
                            color: Colors.black,
                            height: 60,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => customerPage()));
                  },
                  child: Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width / 3,
                    child: Card(
                      elevation: 7,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Customers",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.notoSans(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Image.asset(
                            "assets/images/customer-support.png",
                            color: Colors.black,
                            height: 60,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => invoicePage()));
                  },
                  child: Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width / 3,
                    child: Card(
                      elevation: 7,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Invoice",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.notoSans(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Image.asset(
                            "assets/images/invoice.png",
                            height: 60,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => pendingServicePage()));
                  },
                  child: Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width / 3,
                    child: Card(
                      elevation: 7,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Pending Service",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.notoSans(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Image.asset(
                            "assets/images/clock.png",
                            height: 60,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
