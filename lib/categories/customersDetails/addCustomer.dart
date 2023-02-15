import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class addCustomerPage extends StatefulWidget {
  const addCustomerPage({Key? key}) : super(key: key);

  @override
  State<addCustomerPage> createState() => _addCustomerPageState();
}

class _addCustomerPageState extends State<addCustomerPage> {
  final _keyvalue = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add Customers",
          style: GoogleFonts.archivoNarrow(
              letterSpacing: 4, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _keyvalue,
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextFormField(
                  validator: (v) {
                    if (v?.isEmpty == true) {
                      return "Name is required";
                    } else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                      hintText: 'Enter Your name',
                      contentPadding: const EdgeInsets.all(15),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            BorderSide(width: 1, color: Color(0xFF37b096)),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  validator: (v) {
                    if (v?.isEmpty == true) {
                      return "Phone is required";
                    } else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                      hintText: 'Phone',
                      contentPadding: const EdgeInsets.all(15),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            BorderSide(width: 1, color: Color(0xFF37b096)),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  validator: (v) {
                    if (v?.isEmpty == true) {
                      return "Email is required";
                    } else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                      hintText: 'Email',
                      contentPadding: const EdgeInsets.all(15),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            BorderSide(width: 1, color: Color(0xFF37b096)),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  validator: (v) {
                    if (v?.isEmpty == true) {
                      return "Address is required";
                    } else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                      hintText: 'Address',
                      contentPadding: const EdgeInsets.all(15),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            BorderSide(width: 1, color: Color(0xFF37b096)),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  validator: (v) {
                    if (v?.isEmpty == true) {
                      return "Emirates is required";
                    } else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                      hintText: 'Emirates',
                      contentPadding: const EdgeInsets.all(15),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            BorderSide(width: 1, color: Color(0xFF37b096)),
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
                  width: MediaQuery.of(context).size.width / 2,
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
                    onPressed: () {
                      if (_keyvalue.currentState!.validate()) {}
                    },
                    icon: const Icon(Icons.save),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
