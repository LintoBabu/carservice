import 'package:carservice/invoice/invoiceCategory/invoiceDetails/completedDetails.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class completedInvoice extends StatefulWidget {
  const completedInvoice({Key? key}) : super(key: key);

  @override
  State<completedInvoice> createState() => _completedInvoiceState();
}

class _completedInvoiceState extends State<completedInvoice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => completeInvoiceData(),
                  ),
                );
              },
              child: Card(
                elevation: 7,
                child: Container(
                  height: 83,
                  child: ListTile(
                      title: Text(
                        "Rahul Vs",
                        style: GoogleFonts.anekGujarati(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Invoice : INV-2112010",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "14/02/2023",
                            style: TextStyle(fontSize: 15),
                          )
                        ],
                      ),
                      trailing: Icon(Icons.car_crash)),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
