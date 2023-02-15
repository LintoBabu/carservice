import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class pendingServicePage extends StatefulWidget {
  const pendingServicePage({Key? key}) : super(key: key);

  @override
  State<pendingServicePage> createState() => _pendingServicePageState();
}

class _pendingServicePageState extends State<pendingServicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pending Service",
          style: GoogleFonts.archivoNarrow(
              letterSpacing: 4, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              validator: (v) {
                if (v?.isEmpty == true) {
                  return "Field is required";
                } else {
                  return null;
                }
              },
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                  hintText: 'Enter Technician name',
                  contentPadding: const EdgeInsets.all(15),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(width: 1, color: Color(0xFF37b096)),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(60))),
              width: MediaQuery.of(context).size.width / 3,
              height: 45,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton.icon(
                label: Text(
                  'SAVE',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blueGrey, // foreground
                ),
                onPressed: () {},
                icon: const Icon(Icons.save),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
