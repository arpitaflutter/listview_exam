import 'package:flutter/material.dart';
import 'package:listview_exam/modeldata.dart';
import 'package:listview_exam/var.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController txtName = TextEditingController();
  TextEditingController txtGrid = TextEditingController();
  TextEditingController txtStd = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: Align(
          alignment: Alignment.bottomRight,
          child: FloatingActionButton(
            onPressed: () {
              Navigator.pushNamed(context, 'data').then((_) {
                setState(() {});
              });
            },
            child: Icon(Icons.add),
          ),
        ),
        appBar: AppBar(
          title: Text("Student details"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
              child: Container(
                //height: 50,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return viewtile(l1[index],index);
                  },
                  itemCount: l1.length,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget viewtile(Modeldata l2,int a1) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Text("${l2.GRID}",
                  style: TextStyle(color: Colors.black, fontSize: 15)),
              SizedBox(
                width: 20,
              ),
              Text("${l2.NAME}", style: TextStyle(color: Colors.black)),
              SizedBox(
                width: 20,
              ),
              Text("${l2.STD}", style: TextStyle(color: Colors.black)),
              SizedBox(
                width: 20,
              ),
              Expanded(child: SizedBox()),
              IconButton(
                onPressed: () {
                  theme(a1);
                },
                icon: Icon(Icons.edit),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    l1.removeAt(a1);
                  });
                },
                child: Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
              ),
            ],
          )),
    );
  }

  Future theme(int index) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("add data"),
        content: Container(
          height: 300,
          width: 400,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: txtGrid,
                  decoration: InputDecoration(
                    hintText: "GRID: ",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: txtName,
                  decoration: InputDecoration(
                    hintText: "NAME: ",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: txtStd,
                  decoration: InputDecoration(
                    hintText: "STD: ",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Modeldata m2 =Modeldata(
                    GRID: txtGrid.text,
                    NAME: txtName.text,
                    STD: txtStd.text
                  );

                  setState(() {
                    l1[index]= m2;
                  });

                  Navigator.pop(context);
                },
                child: Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(
                    child: Text("Update",
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
