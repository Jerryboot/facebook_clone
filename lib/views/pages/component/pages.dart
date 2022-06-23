
import 'package:flutter/material.dart';

class Pages extends StatelessWidget {
  const Pages({ Key? key, required this.page, required this.image, required this.number}) : super(key: key);
final String page;
final String image;
final int number;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
           Container(
             height: 40,
             width: 40,
             clipBehavior: Clip.hardEdge,
             decoration: BoxDecoration( 
             shape: BoxShape.circle
             ),
           
            child:  Image.asset("assets/$image",
                  fit: BoxFit.cover,),
          ),
          SizedBox(width: 5,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width-150,
                child: Text( "$page",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
          Row(
           // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(radius: 3,),
              Text(" $number new")
              
            ],
          )

            ],
          ),
          Spacer(),
          Icon(Icons.more_horiz),
        ],
        
      ),
    );
                   
  }
}