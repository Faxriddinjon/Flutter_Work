import 'package:flutter/material.dart';
import 'package:web_app_flutter/main.dart';


class SideBar extends StatefulWidget {
  SideBar({Key? key,this.expande}) : super(key: key);

  int? expande;

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {

  int _sizeWidth=0;
  @override
  Widget build(BuildContext context) {
    if(widget.expande==1){
      setState((){
        _sizeWidth=200;
      });
      MyHomePage(expanded1: _sizeWidth);
    }
    else if(widget.expande==0){
      setState((){
        _sizeWidth=60;
      });
      MyHomePage(expanded1: _sizeWidth);
    }
    return widget.expande==1?
    Container(
      width: 200,
      height: double.infinity,
      decoration: BoxDecoration(
          color: Colors.blue
      ),
      child: Column(
        children: [
          const SizedBox(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.home,color: Colors.white,),
              Text('Faxriddin')
            ],
          ),
          const SizedBox(height: 40,),
          Icon(Icons.add,color: Colors.white,),
          const SizedBox(height: 40,),
          Icon(Icons.access_alarm,color: Colors.white,),
          const SizedBox(height: 40,),
          Icon(Icons.add_alert,color: Colors.white,),
          const SizedBox(height: 40,),
          Icon(Icons.add_circle,color: Colors.white,),
        ],
      ),
    ):
    Container(
      width: 60,
      height: double.infinity,
      decoration: BoxDecoration(
         color: Colors.blue
      ),
      child: Column(
        children: [
          const SizedBox(height: 40,),
          Icon(Icons.home,color: Colors.white,),
          const SizedBox(height: 40,),
          Icon(Icons.add,color: Colors.white,),
          const SizedBox(height: 40,),
          Icon(Icons.access_alarm,color: Colors.white,),
          const SizedBox(height: 40,),
          Icon(Icons.add_alert,color: Colors.white,),
          const SizedBox(height: 40,),
          Icon(Icons.add_circle,color: Colors.white,),
        ],
      ),
    );
  }
}
