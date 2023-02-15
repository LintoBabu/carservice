import 'package:carservice/invoice/invoiceCategory/completedInvoice.dart';
import 'package:carservice/invoice/invoiceCategory/pendingInvoice.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class invoicePage extends StatefulWidget {
  const invoicePage({Key? key}) : super(key: key);

  @override
  State<invoicePage> createState() => _invoicePageState();
}

class _invoicePageState extends State<invoicePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Invoice",
            style: GoogleFonts.archivoNarrow(
                letterSpacing: 4, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
          bottom: const TabBar(
            indicatorColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 5,
            tabs: [
              Tab(
                text: "Completed",
              ),
              Tab(
                text: "Pending",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [completedInvoice(), pendingInvoice()],
        ),
      ),
    );
  }
}
