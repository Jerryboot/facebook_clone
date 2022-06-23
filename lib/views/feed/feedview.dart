import 'package:fbclone/constants/citylist.dart';
import 'package:fbclone/constants/imagelist.dart';
import 'package:fbclone/widgets/feed_card.dart';
import 'package:fbclone/views/feed/components/story_card.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class FeedView extends StatefulWidget {
  const FeedView({ Key? key }) : super(key: key);

  @override
  _FeedViewState createState() => _FeedViewState();
}

class _FeedViewState extends State<FeedView> {
  @override
  Widget build(BuildContext context) {
    return  ListView(
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:[
              SizedBox(height:20),
                  
                  
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          // alignment: Alignment.topLeft,
                          width: 50,
                          height: 25,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.green,
      ),
    ),
                    
                     SizedBox(
                       width: MediaQuery.of(context).size.width-90,
                       height: 35,
                       child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
                        labelText: "What's on your mind?",
                        ),

                       ),
                     ),
                     SizedBox(
                       width: 10,
                     ),
                     Icon(Icons.photo_album_sharp,
                     color: Colors.green,
                     ),
                     ],
                      
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    Container(
                      height: 10,
                      color: Color.fromARGB(255, 211, 208, 208),
                    ),
                  
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ...List.generate(10, (index) =>  Align(
                    alignment: Alignment.topLeft,
                    child: StoryCard(number: index,),

                  )
              
)
                        ],
                      ) ,
                    ),
                    SizedBox(
                      height:10
                    ),

                    ...List.generate(8, (index) => 
                    FeedCard(
                      maxlines: 999999999,
                      city: cityList.elementAt(index),
                      image: imageList.elementAt(index),
                      date: DateFormat("MMMM, dd").format(DateTime.now().add(Duration(days: index)),
                    )))
                    
                              ] 
      );
      
  }
}