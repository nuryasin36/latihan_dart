import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:syncfusion_flutter_barcodes/barcodes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Code 39 Barcode Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BarcodeScreen(),
    );
  }
}

class BarcodeScreen extends StatefulWidget {
  @override
  _BarcodeScreenState createState() => _BarcodeScreenState();
}

class _BarcodeScreenState extends State<BarcodeScreen> {
  String barcode = '';
  late TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double barcodeWidth = (screenWidth * 3) / 4;
    double barcodeHeight = barcodeWidth / 3;
    return Scaffold(
      appBar: AppBar(
        title: Text('Code 39 Barcode Example'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              SizedBox(height: 100),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blue,
                    width: 2.0,
                  ),
                ),
                width: barcodeWidth,
                height: barcodeHeight,
                child: Stack(
                  children: [
                    SfBarcodeGenerator(
                      value: _textController.text,
                      symbology: Code39Extended(),
                      textSpacing: 10,
                      showValue: true,
                      textStyle: TextStyle(fontSize: 20),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'Alterra Academy',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          backgroundColor: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 100),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blue,
                    width: 2.0,
                  ),
                ),
                width: barcodeWidth,
                height: barcodeHeight,
                child: Stack(
                  children: [
                    SfBarcodeGenerator(
                      value: _textController.text,
                      symbology: Code39Extended(),
                      textSpacing: 10,
                      showValue: true,
                      textStyle: TextStyle(fontSize: 20),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'Flutter Asik',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          backgroundColor: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 100),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blue,
                    width: 2.0,
                  ),
                ),
                width: barcodeWidth,
                height: barcodeHeight,
                child: Stack(
                  children: [
                    SfBarcodeGenerator(
                      value: _textController.text,
                      symbology: Code39Extended(),
                      textSpacing: 10,
                      showValue: true,
                      textStyle: TextStyle(fontSize: 20),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'Nur Yasin Janaharto',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          backgroundColor: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
