import 'package:flutter/material.dart';

import 'modeldata.dart';

class data extends StatefulWidget {
  const data({Key? key}) : super(key: key);

  @override
  State<data> createState() => _dataState();
}

class _dataState extends State<data> {

  TextEditingController grid = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController std = TextEditingController();

  List g1 = [];
  List n1 = [];
  List s1 = [];

  @override
  
  Widget build(BuildContext context) {

    Modeldata d1 = ModalRoute.of(context)!.settings.arguments as Modeldata;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("ADD DATA SCREEN"),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 100,width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey.shade500,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: TextFormField(
                    controller: grid,
                    decoration: InputDecoration(
                      hintText: "GRID: ${g1.add}",
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 100,width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey.shade500,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: TextFormField(
                    controller: name,
                    decoration: InputDecoration(
                      hintText: "Name: ${n1.add}",
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 100,width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey.shade500,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: TextFormField(
                    controller: std,
                    decoration: InputDecoration(
                      hintText: "STD: ${s1.add}",
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                  Navigator.pop(context);
              },
              child: Container(
                height: 50,width: 100,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: Text("Submit",style: TextStyle(color: Colors.white,fontSize: 20))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
