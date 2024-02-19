import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

class CreateScreen extends StatefulWidget {
  const CreateScreen({super.key});


  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {

  var qrStr = "Add data";

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Creating QR Code"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          BarcodeWidget(
            data: qrStr,
            barcode: Barcode.qrCode(),
            color: Colors.black87,
            width: 250,
            height: 250,
          ),
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width *0.8,
            child: TextField(
              onChanged: (val){
                setState(() {
                  qrStr = val;
                });
              },
              decoration: InputDecoration(
                  hintText: "Enter your data here",
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 2,
                      )
                  )

              ),
            ),
          ),
          SizedBox(width: MediaQuery.of(context).size.width,)
        ],
      ),
    );
  }

}
