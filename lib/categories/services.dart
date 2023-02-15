import 'package:carservice/categories/addCategories.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class servicePage extends StatefulWidget {
  const servicePage({Key? key}) : super(key: key);

  @override
  State<servicePage> createState() => _servicePageState();
}

class _servicePageState extends State<servicePage> {
  final brands = ['Maruti Suzuki', 'Hyundai', 'Ford', 'BMW'];

  final cars = ['Swift', 'i20', 'Ford Endeavour', 'BMW iX'];

  String? value;
  String? carValue;

  DropdownMenuItem<String> BuildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      );

  DropdownMenuItem<String> carItems(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Services",
          style: GoogleFonts.archivoNarrow(
              letterSpacing: 4, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => addCategories()));
              },
              icon: Icon(Icons.add))
        ],
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Icon(Icons.branding_watermark),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Choose your car Brand",
                    style: GoogleFonts.aBeeZee(fontSize: 14),
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.only(left: 10),
              height: 45,
              decoration: BoxDecoration(
                color: const Color(0xFFD4E7FE),
                borderRadius: BorderRadius.circular(4),
              ),
              child: DropdownButton(
                underline: SizedBox.shrink(),
                value: value,
                hint: const Text("Choose Brand"),
                dropdownColor: const Color(0xFFD4E7FE),
                icon: const Icon(Icons.arrow_drop_down_outlined),
                iconSize: 25,
                isExpanded: true,
                items: brands.map(BuildMenuItem).toList(),
                onChanged: (value) => setState(() => this.value = value),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Icon(Icons.drive_file_rename_outline),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Choose your car Name",
                    style: GoogleFonts.aBeeZee(fontSize: 14),
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.only(left: 10),
              height: 45,
              decoration: BoxDecoration(
                color: const Color(0xFFD4E7FE),
                borderRadius: BorderRadius.circular(4),
              ),
              child: DropdownButton(
                underline: SizedBox.shrink(),
                value: carValue,
                hint: const Text("Choose Car"),
                dropdownColor: const Color(0xFFD4E7FE),
                icon: const Icon(Icons.arrow_drop_down_outlined),
                iconSize: 25,
                isExpanded: true,
                items: cars.map(carItems).toList(),
                onChanged: (value) => setState(() => this.carValue = value),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(60))),
              width: MediaQuery.of(context).size.width / 1.2,
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
