import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class ScanScreen extends StatefulWidget {
  const ScanScreen({super.key});

  @override
  State<ScanScreen> createState() => _ScanScreenState();
}

class _ScanScreenState extends State<ScanScreen> {
  var qrStr = "Lest's Scan It";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scanning QR Code"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              qrStr,
              style: const TextStyle(
                color: Colors.blue,
              ),
            ),
            ElevatedButton(onPressed: scanQr, child: const Text("Scanner")),
            SizedBox(
              width: MediaQuery.of(context).size.width,

            )
          ],
        ),
      ),
    );
  }

  Future<void> scanQr() async {
    try {
      FlutterBarcodeScanner.scanBarcode("#2A99CF", "Cancel", true, ScanMode.QR)
          .then((value) {
            setState(() {
              qrStr = value;
            });
      });
    } catch (e) {
      setState(() {
        qrStr = "Unable to read this";
      });
    }
  }
}
