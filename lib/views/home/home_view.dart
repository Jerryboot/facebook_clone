
import 'package:fbclone/views/feed/feedview.dart';
import 'package:fbclone/views/friends/component/friendreq.dart';
import 'package:fbclone/views/friends/friendsview.dart';
import 'package:fbclone/views/notifications/notiview.dart';
import 'package:fbclone/views/pages/component/pages.dart';
import 'package:fbclone/views/pages/pageview.dart';
import 'package:fbclone/views/profile/profileview.dart';
import 'package:fbclone/views/video/videoview.dart';
import 'package:flutter/material.dart';

import '../../constants/imagelist.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
    final _kTabs =<Tab>[
      Tab( icon: Icon(Icons.home,color: Colors.blue)),
      Tab( icon: Icon(Icons.people,color: Colors.blue)),
      Tab( icon: Icon(Icons.video_collection,color: Colors.blue)),
      Tab( icon: Icon(Icons.flag,color: Colors.blue)),
      Tab( icon: Icon(Icons.notifications,color: Colors.blue)),
      Tab( icon: Icon(Icons.circle_rounded,color: Colors.blue)),
    ];
    
      
  @override 
  Widget build(BuildContext context) {
    // TODO: implement 
    
    return DefaultTabController(
    length:_kTabs.length,
      child: Scaffold( 
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text("facebook", style: TextStyle(color: Color.fromARGB(255, 7, 114, 201)),),
          actions: <Widget>[
          CircleAvatar(
            radius:13.0 ,
            backgroundColor: Color.fromARGB(255, 235, 233, 233),
            child: IconButton(
              padding: EdgeInsets.all(0),
              alignment: Alignment.center,
              iconSize: 20.0,
              color: Colors.black,
              onPressed:(){}, 
            icon: const Icon(Icons.search_outlined)),
          ),
          SizedBox(
            width: 10,
          ),
          CircleAvatar(
            radius:13.0 ,
            backgroundColor: Color.fromARGB(255, 241, 234, 234),
              child: IconButton(
                padding: EdgeInsets.all(0),
                iconSize: 15.0,
                
                color: Colors.blue,
                onPressed: (){}, 
              icon: const Icon(Icons.messenger_rounded
          ),
              ),
            ),
          SizedBox(
            width: 10,
          ),
          ],
          bottom: TabBar(
            tabs: _kTabs,
          )
        ),
       body:  
       TabBarView(
         children: [
           FeedView(),
           Friendsview(),
            Videoview(),
            Pageview(),
            Notiview(),
            Profileview(),
            ]
       )));
  }
  }

