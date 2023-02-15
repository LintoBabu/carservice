import 'package:carservice/categories/services.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class customerDetails extends StatefulWidget {
  const customerDetails({Key? key}) : super(key: key);

  @override
  State<customerDetails> createState() => _customerDetailsState();
}

class _customerDetailsState extends State<customerDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Customers Details",
          style: GoogleFonts.archivoNarrow(
              letterSpacing: 4, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => servicePage()));
              },
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(17)),
                  child: ExpansionTile(
                    trailing: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.white,
                    ),
                    collapsedTextColor: Colors.white,
                    title: Text(
                      "Swift",
                      style: TextStyle(fontSize: 19, color: Colors.white),
                    ),
                    subtitle: Text(
                      "Maruti Suzuki",
                      style: TextStyle(color: Colors.white),
                    ),
                    leading: Icon(
                      Icons.emoji_transportation,
                      color: Colors.white,
                    ),
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.more_horiz,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "Swift ZXI CNG",
                                    style: GoogleFonts.aleo(
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.color_lens,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text("Metallic Magma Grey",
                                      style: GoogleFonts.aleo(
                                          fontSize: 19,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white)),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.confirmation_number_rounded,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text("KL-01-7896",
                                      style: GoogleFonts.aleo(
                                          fontSize: 19,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white)),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => servicePage()));
              },
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(17)),
                  child: ExpansionTile(
                    trailing: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.white,
                    ),
                    collapsedTextColor: Colors.white,
                    title: Text(
                      "Ford Aspire",
                      style: TextStyle(fontSize: 19, color: Colors.white),
                    ),
                    subtitle: Text(
                      "Ford",
                      style: TextStyle(color: Colors.white),
                    ),
                    leading: Icon(
                      Icons.emoji_transportation,
                      color: Colors.white,
                    ),
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.more_horiz,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "Ford Fiesta Hatchback",
                                    style: GoogleFonts.aleo(
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.color_lens,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(" Moondust Silver",
                                      style: GoogleFonts.aleo(
                                          fontSize: 19,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white)),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.confirmation_number_rounded,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text("KL-05-8080",
                                      style: GoogleFonts.aleo(
                                          fontSize: 19,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white)),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
