import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResponsiveScreen extends StatelessWidget {
  const ResponsiveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(title: Text('Responsive Screen ') ,),
      body:
      MediaQuery(
        // If there is no context available you can wrap [MediaQuery] with [Builder]
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
        child:   Column(children: [
        Container(
        color: Colors.orangeAccent,
        width: MediaQuery.of(context).size.width/4,
        height: MediaQuery.of(context).size.height/4,
        child: Text('My App ',style: TextStyle(fontSize:  35.sp))),


        Container(
            color: Colors.yellowAccent,
          width: MediaQuery.of(context).size.width/4,
          height: MediaQuery.of(context).size.height/4,
            child: Text('My App ',style: TextStyle(fontSize:  35.sp),),)


        ],),
      )



    );
  }
}
