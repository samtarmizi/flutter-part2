import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {

  final String name;
  final String email;
  final String phone;

  const DetailPage({Key key, this.name, this.email, this.phone}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Page")
      ),
      body: Container(child: Text("This is second page"),),
    );
  }
}