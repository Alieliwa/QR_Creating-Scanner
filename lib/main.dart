import 'package:flutter/material.dart';
import 'package:qrscanner/screens/create_qr.dart';
import 'package:qrscanner/screens/scan_qr.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Scanner App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Scanner App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (ctx) => const CreateScreen()));
            },
                child: const Text("Creating QR Code")),
            ElevatedButton(onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (ctx) => const ScanScreen()));
            },
                child: const Text("Scan QR Code")),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
