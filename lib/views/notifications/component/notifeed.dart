import 'package:flutter/material.dart';


class notiFeed extends StatelessWidget {
  const notiFeed({ Key? key, required this.note, required this.image, }) : super(key: key);
final String note;
final String image;
  @override
  Widget build(BuildContext context) {
    return 
    Padding(
      
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container( height: 40,
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
                width: MediaQuery.of(context).size.width-100,
                child: Text( "$note",
                style: TextStyle(fontSize: 15, ),
                ),
              ),
        ],
    ),
    Spacer(),
    Icon(Icons.more_horiz)
        ]
      )
      
        );
        
    
  }
}