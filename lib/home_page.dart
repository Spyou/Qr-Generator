import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:qr_generater_app/about_dialog.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String data = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 29, 29, 29),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 29, 29, 29),
        title: const Text(
          'Qr Code Generator',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            Center(
              child: QrImageView(
                data: data,
                backgroundColor: Colors.white,
                size: 230.0,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              width: 300,
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    data = value;
                  });
                },
                textAlign: TextAlign.start,
                style: const TextStyle(
                  color: Colors.black,
                ),
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  hintText: "Enter The Data",
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            RawMaterialButton(
              onPressed: () {
                data;
              },
              fillColor: Color.fromARGB(255, 255, 176, 66),
              shape: const StadiumBorder(),
              padding: const EdgeInsets.symmetric(
                horizontal: 36.0,
                vertical: 16.0,
              ),
              child: const Text(
                'Generate',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 130,
            ),
            RawMaterialButton(
              onPressed: () {
                Navigator.of(context).push(PageTransition(
                    type: PageTransitionType.fade,
                    duration: const Duration(milliseconds: 500),
                    child: const AboutPage()));
              },
              fillColor: Color.fromARGB(255, 53, 53, 53),
              shape: const StadiumBorder(),
              padding: const EdgeInsets.symmetric(
                horizontal: 36.0,
                vertical: 16.0,
              ),
              child: const Text(
                'About',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
