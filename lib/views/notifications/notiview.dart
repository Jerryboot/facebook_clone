import 'package:fbclone/constants/imagelist.dart';
import 'package:fbclone/constants/notelist.dart';
import 'package:fbclone/views/notifications/component/notifeed.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Notiview extends StatelessWidget {
  const Notiview({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text("Notifications",
              style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
              Spacer(),
               CircleAvatar(
            radius:15.0 ,
            backgroundColor: Color.fromARGB(255, 235, 233, 233),
            child: IconButton(
              padding: EdgeInsets.all(0),
              alignment: Alignment.center,
              iconSize: 24.5,
              color: Colors.black,
              onPressed:(){}, 
            icon: const Icon(Icons.search_outlined)),
          ),
            ],
          ),
    
        ),
        SizedBox(
          height: 20,
        ),
        ...List.generate(4, (index) => 
        notiFeed(note: noteList.elementAt(index), 
                  image: imageList.elementAt(index),)
        ,)
      
       ]
        );
  }
}