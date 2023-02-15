import 'package:carservice/categories/customersDetails/addCustomer.dart';
import 'package:carservice/categories/customersDetails/customerDetails.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class customerPage extends StatefulWidget {
  const customerPage({Key? key}) : super(key: key);

  @override
  State<customerPage> createState() => _customerPageState();
}

class _customerPageState extends State<customerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Customers",
          style: GoogleFonts.archivoNarrow(
              letterSpacing: 4, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => addCustomerPage()));
              },
              icon: Icon(Icons.add))
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(20)),
              child: ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => customerDetails()));
                },
                leading: Icon(Icons.person_outline),
                title: Text(
                  "Rahul R",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "9966228844",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                iconColor: Colors.white,
              ),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Container(
          //     decoration: BoxDecoration(
          //         color: Colors.blueGrey,
          //         borderRadius: BorderRadius.circular(20)),
          //     child: ListTile(
          //       leading: Icon(Icons.person_outline),
          //       title: Text(
          //         "Linto",
          //         style: TextStyle(
          //             color: Colors.white, fontWeight: FontWeight.bold),
          //       ),
          //       subtitle: Text(
          //         "9966228844",
          //         style: TextStyle(
          //             color: Colors.white, fontWeight: FontWeight.bold),
          //       ),
          //       iconColor: Colors.white,
          //     ),
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Container(
          //     decoration: BoxDecoration(
          //         color: Colors.blueGrey,
          //         borderRadius: BorderRadius.circular(20)),
          //     child: ListTile(
          //       leading: Icon(Icons.person_outline),
          //       title: Text(
          //         "Amal",
          //         style: TextStyle(
          //             color: Colors.white, fontWeight: FontWeight.bold),
          //       ),
          //       subtitle: Text(
          //         "9966228844",
          //         style: TextStyle(
          //             color: Colors.white, fontWeight: FontWeight.bold),
          //       ),
          //       iconColor: Colors.white,
          //     ),
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Card(
          //       elevation: 4,
          //       color: Colors.white,
          //       child: ExpansionTile(
          //         collapsedTextColor: Colors.black,
          //         title: Text(
          //           "Rahul R",
          //           style: GoogleFonts.aleo(fontSize: 19),
          //         ),
          //         children: [
          //           Container(
          //             child: Padding(
          //               padding: const EdgeInsets.all(8.0),
          //               child: Column(
          //                 crossAxisAlignment: CrossAxisAlignment.start,
          //                 children: [
          //                   Row(
          //                     children: [
          //                       Icon(Icons.phone),
          //                       SizedBox(
          //                         width: 20,
          //                       ),
          //                       Text(
          //                         "77884477",
          //                         style: GoogleFonts.aleo(
          //                             fontSize: 19,
          //                             fontWeight: FontWeight.bold),
          //                       ),
          //                     ],
          //                   ),
          //                   SizedBox(
          //                     height: 15,
          //                   ),
          //                   Row(
          //                     children: [
          //                       Icon(Icons.email),
          //                       SizedBox(
          //                         width: 20,
          //                       ),
          //                       Text("rahul@gmail.com",
          //                           style: GoogleFonts.aleo(
          //                               fontSize: 19,
          //                               fontWeight: FontWeight.bold)),
          //                     ],
          //                   ),
          //                 ],
          //               ),
          //             ),
          //           ),
          //         ],
          //       )),
          // ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Card(
          //       elevation: 4,
          //       color: Colors.white,
          //       child: ExpansionTile(
          //         collapsedTextColor: Colors.black,
          //         title: Text(
          //           "Rumaise",
          //           style: GoogleFonts.aleo(fontSize: 19),
          //         ),
          //         children: [
          //           Container(
          //             child: Padding(
          //               padding: const EdgeInsets.all(8.0),
          //               child: Column(
          //                 crossAxisAlignment: CrossAxisAlignment.start,
          //                 children: [
          //                   Row(
          //                     children: [
          //                       Icon(Icons.phone),
          //                       SizedBox(
          //                         width: 20,
          //                       ),
          //                       Text(
          //                         "77884477",
          //                         style: GoogleFonts.aleo(
          //                             fontSize: 19,
          //                             fontWeight: FontWeight.bold),
          //                       ),
          //                     ],
          //                   ),
          //                   SizedBox(
          //                     height: 15,
          //                   ),
          //                   Row(
          //                     children: [
          //                       Icon(Icons.email),
          //                       SizedBox(
          //                         width: 20,
          //                       ),
          //                       Text("rumasie@gmail.com",
          //                           style: GoogleFonts.aleo(
          //                               fontSize: 19,
          //                               fontWeight: FontWeight.bold)),
          //                     ],
          //                   ),
          //                 ],
          //               ),
          //             ),
          //           ),
          //         ],
          //       )),
          // ),
        ],
      ),
    );
  }
}
