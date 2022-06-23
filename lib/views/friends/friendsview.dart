import 'package:fbclone/views/friends/component/friendreq.dart';
import 'package:fbclone/widgets/colon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Friendsview extends StatelessWidget {
  const Friendsview({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text("Friends",
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
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: [
                Row(
                  children: [
                    Colon(text: "suggestions"),
                    Colon(text: "Your Friends"),
                    
                  ],
                  
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(thickness: 2.0,),
                Text("Friend requests 87",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,

                ),
                ),
                
                 Column(
                        children: [
                          ...List.generate(10, (index) =>  Align(
                    alignment: Alignment.topLeft,
                    child: Friendrequest(),

                  )
              
)
                        ],
                      ) ,
               // Friendrequest(),
              ],
            
            ),
          ),
        )
      ],
      
    );
  }
}