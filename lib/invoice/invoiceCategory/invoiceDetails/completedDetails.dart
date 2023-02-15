import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class completeInvoiceData extends StatefulWidget {
  const completeInvoiceData({Key? key}) : super(key: key);

  @override
  State<completeInvoiceData> createState() => _completeInvoiceDataState();
}

class _completeInvoiceDataState extends State<completeInvoiceData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Completed Details",
          style: GoogleFonts.archivoNarrow(
              letterSpacing: 4, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.person_outline),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Rahul Vs",
                            style: GoogleFonts.andadaPro(
                                fontSize: 19,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 2),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.sticky_note_2_sharp),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "INV-2112010",
                            style: GoogleFonts.andadaPro(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.date_range_sharp),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "14/01/2023",
                            style: GoogleFonts.andadaPro(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.black,
                      ),
                      Row(
                        children: [
                          Icon(Icons.price_change_sharp),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Status",
                            style: GoogleFonts.andadaPro(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          Text("Completed",
                              style: GoogleFonts.andadaPro(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
