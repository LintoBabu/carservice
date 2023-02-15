import 'package:carservice/invoice/invoiceCategory/invoiceDetails/pendingDetails.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class pendingInvoice extends StatefulWidget {
  const pendingInvoice({Key? key}) : super(key: key);

  @override
  State<pendingInvoice> createState() => _pendingInvoiceState();
}

class _pendingInvoiceState extends State<pendingInvoice> {
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
                        builder: (context) => pendingInvoiceData()));
              },
              child: Card(
                elevation: 7,
                child: Container(
                  height: 83,
                  child: ListTile(
                      title: Text(
                        "Linto",
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
                            "10/02/2023",
                            style: TextStyle(fontSize: 15),
                          )
                        ],
                      ),
                      trailing: Icon(Icons.car_repair_outlined)),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
