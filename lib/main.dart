import 'package:flutter/material.dart';

void main()=>runApp( MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      home: MainApp(),
    );
  }
}

class MainApp extends StatefulWidget {
  const MainApp({Key?key}): super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  String resultMessage = '';
  double result = 0;
  String valueToConvert = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Converter'),
      ),

      body: Container(
        width: MediaQuery
            .of(context)
            .size
            .width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text('VALUE'),
              TextField(
                onChanged: (value) {
                  valueToConvert = value;
                  print(valueToConvert);
                },
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      result = double.parse(valueToConvert) * 1.6;
                      resultMessage = result.toString();
                    });
                  },
                  child: Text('convert')),
              Text('the converted to km value is: $resultMessage')
            ],
          ),
        ),
      ),
    );
  }
}