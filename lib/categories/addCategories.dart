import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class addCategories extends StatefulWidget {
  const addCategories({Key? key}) : super(key: key);

  @override
  State<addCategories> createState() => _addCategoriesState();
}

class _addCategoriesState extends State<addCategories> {
  final _keyValue = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add Services",
          style: GoogleFonts.archivoNarrow(
              letterSpacing: 4, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _keyValue,
          child: Column(
            children: [
              TextFormField(
                validator: (v) {
                  if (v?.isEmpty == true) {
                    return "Brand is required";
                  } else {
                    return null;
                  }
                },
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                    hintText: 'Add your car Brand',
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
                    return "Car Name is required";
                  } else {
                    return null;
                  }
                },
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                    hintText: 'Car Name',
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
                    return "Number Plate is required";
                  } else {
                    return null;
                  }
                },
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                    hintText: 'Number Plate',
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
                height: 20,
              ),
              TextFormField(
                validator: (v) {
                  if (v?.isEmpty == true) {
                    return "Car Color is required";
                  } else {
                    return null;
                  }
                },
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                    hintText: 'Color',
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
                height: 20,
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
                    if (_keyValue.currentState!.validate()) {}
                  },
                  icon: const Icon(Icons.save),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
