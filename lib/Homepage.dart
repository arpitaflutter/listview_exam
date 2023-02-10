import 'package:flutter/material.dart';
import 'package:listview_exam/modeldata.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  @override


  Widget build(BuildContext context) {

    Modeldata d1 = ModalRoute.of(context)!.settings.arguments as Modeldata;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Appbar",style: TextStyle(color: Colors.white)),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100,width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey.shade800,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text("GRID",style: TextStyle(fontSize: 15,color: Colors.white),),
                      SizedBox(width: 15,),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Name",style: TextStyle(color: Colors.white,fontSize: 15),),
                            SizedBox(height: 20,),
                            Text("std",style: TextStyle(color: Colors.white,fontSize: 15),),
                          ],
                        ),
                      ),
                      Spacer(),
                      InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, 'update');
                          },
                          child: Icon(Icons.update,color: Colors.white,)
                      ),
                      SizedBox(width: 15,),
                      Icon(Icons.delete,color: Colors.red,),
                      SizedBox(width: 15,),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100,width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey.shade800,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text("1",style: TextStyle(fontSize: 15,color: Colors.white),),
                      SizedBox(width: 20,),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("${d1.NAME}",style: TextStyle(color: Colors.white,fontSize: 15),),
                            SizedBox(height: 20,),
                            Text("12",style: TextStyle(color: Colors.white,fontSize: 15),),
                          ],
                        ),
                      ),
                      Spacer(),
                      InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, 'update');
                          },
                          child: Icon(Icons.update,color: Colors.white,)
                      ),
                      SizedBox(width: 15,),
                      Icon(Icons.delete,color: Colors.red,),
                      SizedBox(width: 15,),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100,width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey.shade800,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text("3",style: TextStyle(fontSize: 15,color: Colors.white),),
                      SizedBox(width: 20,),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Mehul",style: TextStyle(color: Colors.white,fontSize: 15),),
                            SizedBox(height: 20,),
                            Text("13",style: TextStyle(color: Colors.white,fontSize: 15),),
                          ],
                        ),
                      ),
                      Spacer(),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, 'update');
                        },
                          child: Icon(Icons.update,color: Colors.white,)
                      ),
                      SizedBox(width: 15,),
                      Icon(Icons.delete,color: Colors.red,),
                      SizedBox(width: 15,),
                    ],
                  ),
                ),
              ),
            ),
            Spacer(),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: FloatingActionButton(onPressed: () {
                  Navigator.pushNamed(context, 'add_data');
                },
                  child: Icon(Icons.add),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
