import 'package:flutter/material.dart';
import 'package:web_app_flutter/side_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key,this.expanded1});

  int? expanded1;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _expanded=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: <Widget> [
          Expanded(
            flex: 1,
            child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: double.infinity,
                        width: 60,
                        padding: new EdgeInsets.all(10),
                          child: Image.network(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSM6zOZm_7SFm78o3D9wGcnwzrznb3CUor2nw&usqp=CAU',
                          ),
                      ),
                      SizedBox(width: _expanded==1?160:10),
                      InkWell(
                          child: Icon(Icons.menu,color: Colors.white),
                          onTap: (){
                            if(widget.expanded1==200){
                              setState(() {
                                  _expanded = 0;
                              });
                            }
                            else if(widget.expanded1==60){
                              setState(() {
                                  _expanded = 1;
                              });
                          }
                          },
                      )
                    ],
                  ),
                ),

          ),
          Expanded(
            flex: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [
               SideBar(expande: _expanded),
              Text('Faxriddinjon'),
             ],
            ),
          ),
        ],
      ),
    );
  }
}
