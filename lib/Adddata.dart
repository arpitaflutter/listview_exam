import 'package:flutter/material.dart';
import 'package:listview_exam/modeldata.dart';
import 'package:listview_exam/var.dart';

class Adddata extends StatefulWidget {
  const Adddata({Key? key}) : super(key: key);

  @override
  State<Adddata> createState() => _AdddataState();
}

class _AdddataState extends State<Adddata> {

  TextEditingController txtName = TextEditingController();
  TextEditingController txtGrid = TextEditingController();
  TextEditingController txtStd = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Add data"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: txtGrid,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                      hintText : "Grid: "
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: txtName,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText : "Name: "
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: txtStd,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText : "Std: "
                  ),
                ),
              ),
              SizedBox(height: 20,),
              InkWell(
                onTap: () {
                  Modeldata m1 = Modeldata(STD: txtStd.text,NAME: txtName.text,GRID: txtGrid.text);
                  setState(() {
                    l1.add(m1);
                  });

                  Navigator.pop(context);

                },
                child: Container(
                  height: 50,width: 100,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius:  BorderRadius.circular(10)
                  ),
                  child: Center(child: Text("Add",style: TextStyle(color: Colors.white,fontSize: 20))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
