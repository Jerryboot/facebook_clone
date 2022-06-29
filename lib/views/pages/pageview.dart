import 'package:fbclone/constants/pageslist.dart';
import 'package:fbclone/views/pages/component/pages.dart';
import 'package:flutter/material.dart';

import '../../constants/imagelist.dart';
import '../../widgets/colon.dart';

class Pageview extends StatelessWidget {
  const Pageview({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text("Pages",
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
          child: ListView(
            children: [
              SingleChildScrollView(
                scrollDirection:Axis.horizontal,
                child: Row(
                  children: [
                    Colon(text: "Create",
                          icon: Icons.add,  
                            ),
                    Colon(text: "Discover",
                          icon: Icons.explore),
                    Colon(text: "Invites",
                          icon: Icons.person_add),
                    Colon(text: "Liked Pages",
                          icon: Icons.thumb_up),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
      ...List.generate(7, (index) => Pages(page: pagesList.elementAt(index),
                                            image: imageList.elementAt(index),
                                            number: index,
                                            ) ,
                                            
      )
            ],

            
          )
        ),
        
     
       ] );

  }
}