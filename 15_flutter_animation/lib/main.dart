import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Animation',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _imageSize = 300.0;

  void _toggleSize() {
    setState(() {
      _imageSize = _imageSize == 300.0 ? 400.0 : 300.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Animation'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            _toggleSize();
          },
          child: Stack(
            children: [
              AnimatedContainer(
                duration: Duration(milliseconds: 500),
                width: _imageSize,
                height: _imageSize,
                child: Image.network(
                  'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
