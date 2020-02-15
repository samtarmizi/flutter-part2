import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyFormPage(),
    );
  }
}

class MyFormPage extends StatefulWidget {
  @override
  _MyFormPageState createState() => _MyFormPageState();
}

class _MyFormPageState extends State<MyFormPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Form"),
      ),
      body: Container(
          child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Text(
                "Form app",
                style: GoogleFonts.karla(fontSize: 32, color: Colors.green),
              ),
              Image.network(
                  "https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510__340.jpg"),
              TextField(
                  decoration: InputDecoration(labelText: 'Enter your name')),
              TextField(
                  decoration: InputDecoration(labelText: 'Enter your email')),
              TextField(
                decoration: InputDecoration(labelText: 'Enter phone number'),
              ),
              FlatButton(
                child: Text("Open NEw Page"),
                onPressed: () {},
              ),
            ],
          ),
        ),
      )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.mail),
        onPressed: () => showSnackBar(context),
      ),
    );
  }

  showSnackBar(context) {
    final snackBar = SnackBar(content: Text("This is a snackbar"));
    Scaffold.of(context).showSnackBar(snackBar);
  }
}
