
import 'package:fbclone/widgets/colon.dart';
import 'package:flutter/cupertino.dart';
import 'package:fbclone/constants/imagelist.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../constants/citylist.dart';
import '../../widgets/feed_card.dart';

class Videoview extends StatelessWidget {
  const Videoview({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
       Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text("Watch",
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
            icon: const Icon(Icons.person)),
              ),
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
         Expanded(
          child: ListView(
            children: [
              Row(
                children: [
                 Colon(text: "For You"),
                 Colon(text: "Live"),
                 Colon(text: "Gaming"),
                 Colon(text: "Following"),
                 
                ],
                
              ),
              SizedBox(
                height: 10,
              ),
             
               ...List.generate(8, (index) => 
              FeedCard(
                maxlines: 1,
                    city: cityList.elementAt(index),
                    image: imageList.elementAt(index),
                    date: DateFormat("MMMM, dd").format(DateTime.now().add(Duration(days: index)),
                  )))
             ] )
      
    
            )
      
    
        
      ]);
  }
}