// ignore_for_file: file_names, prefer_const_literals_to_create_immutables, prefer_const_constructors
// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// ignore_for_file: public_member_api_docs

import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
// import 'package:video_player/video_player.dart';



class SliverAppBarWithTabBar extends StatefulWidget {
  const SliverAppBarWithTabBar({ Key? key }) : super(key: key);

  @override
  _SliverAppBarWithTabBarState createState() => _SliverAppBarWithTabBarState();
}

class _SliverAppBarWithTabBarState extends State<SliverAppBarWithTabBar> {
  @override
  Widget build(BuildContext context) {
    var child;
    return SafeArea(
      child: Scaffold(
        body: DefaultTabController(
          length: 4,
          child: NestedScrollView(
            headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  elevation: 0,
                  backgroundColor: Color(0xff2D383A),
                  pinned: false,
                  // expandedHeight: 100,
                  //  flexibleSpace: FlexibleSpaceBar(
                    title: Text("WhatsApp"),
                  // ),
                  actions: [
                    Row(
                      children: [
                         IconButton(onPressed: (){},
                icon: Icon(Icons.search_outlined,)
                ,),
                IconButton(onPressed: (){},
                icon: Icon(Icons.more_vert_outlined)
                ,),
                      ],
                    )
                  ],
                 
                ),
                SliverPersistentHeader(
                  delegate: MySliverPersistentHeaderDelegate(
                    // ignore: prefer_const_constructors
                    TabBar(
                      labelColor: Color(0xff25B371),
                      unselectedLabelColor: Colors.white,
                      indicatorWeight: 4,
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.bold),
                      tabs: [
                        Tab(
                          iconMargin: EdgeInsets.fromLTRB(1, 1, 100,1),
                          icon: IconButton(onPressed: (){Camera();}, icon: Icon(Icons.camera_alt_rounded)),
                        ),
                      Tab(
                        child:Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text("CHATS"),
                            SizedBox(width: 7),
                            CircleAvatar(
                     backgroundColor:Color(0xff25B371),
                     radius: 10,
                     child: Text("23",
                     style: TextStyle(
                        color: Colors.black,
                       fontSize: 10,
                     ),),
                   )
                          ],
                        )),
                       
                      Tab(text: ("STATUS"),),
                      Tab(text: ("CALLS"),),
                      ],
                      indicatorColor: Color(0xff25B371),
                      ),
                  ),
                  pinned: true,
                  )
              ];
            },
            // ignore: prefer_const_constructors
            body: TabBarView(
              children: [ 
                Camera(),
                Chats(),
                Status(),
                Calls(),

              ],
              ),
          ),
        ),
      ),
      
    );
  }
}
class MySliverPersistentHeaderDelegate extends SliverPersistentHeaderDelegate {
  MySliverPersistentHeaderDelegate (this._tabBar);
  final TabBar _tabBar;
  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Color(0xff2D383A),
      child: _tabBar,
    ) ;
  }
  @override
  bool shouldRebuild(MySliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
class Chats extends StatelessWidget {
  //  Chats({ Key? key }) : super(key: key);


  @override
  Widget build(BuildContext context) {
  final time = TimeOfDay.now().format(context);

    return Scaffold(
      backgroundColor: Color(0xff111E21),
      body: ListView.builder(itemBuilder: (context, index) => InkWell(
        onTap: (){},
        child: ListTile(
                   leading: CircleAvatar(
                     backgroundImage: AssetImage("images/img3.JPG"),
                   ),
                   title: Text("Sir Rafik CodeCoast",
                   style: TextStyle(
                     color: Colors.white,
                     fontWeight: FontWeight.bold,
                   )),
                   subtitle: Text("😍😁😂💖✌❤💋"),
                   trailing: Column(
                     children: [
                       Text(time.toString(),
                       style: TextStyle(
                           fontSize: 10,
                         color: Color(0xff25B371)),),
                       CircleAvatar(
                         backgroundColor:Color(0xff25B371),
                         radius: 10,
                         child: Text("${Random().nextInt(100)}",
                         style: TextStyle(
                            color: Colors.black,
                           fontSize: 10,
                         ),),
                       )
                      ],
                      ),
                 ),
      ),
                itemCount: 30,
      ),
      floatingActionButton: FloatingActionButton(
            backgroundColor: Color(0xff25B371),
            onPressed: (){},
          child: Icon(Icons.chat,
          color:Colors.white),)
         );
  }
}
class Status extends StatelessWidget {
  const Status({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff111E21),
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("images/img3.JPG"),
            ),
            title: Text("My status",
            style: TextStyle(color: Colors.white)),
            subtitle: Text("Today, 4:53 PM",
            style: TextStyle(color: Colors.grey)),
            trailing: IconButton(onPressed: (){},
            icon: Icon(Icons.more_horiz,
            color: Colors.grey)
            )
          ),
           SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text("Recent updates",
            style: TextStyle(color: Colors.grey)),
          ),
          SizedBox(height: 20),
          PostStatus(),
           SizedBox(height: 20),
          PostStatus(),
           SizedBox(height: 20),
          PostStatus(),
           SizedBox(height: 20),
          PostStatus(),
           SizedBox(height: 20),
          PostStatus(),
           SizedBox(height: 20),
          PostStatus(),
           SizedBox(height: 20),
          PostStatus(),
           SizedBox(height: 20),
          PostStatus(),
           SizedBox(height: 20),
          PostStatus(),
           SizedBox(height: 20),
          PostStatus(),
           SizedBox(height: 20),
          PostStatus(),
           SizedBox(height: 20),
          PostStatus(),
           SizedBox(height: 20),
          PostStatus(),
           SizedBox(height: 20),
          PostStatus(),
           SizedBox(height: 20),
          PostStatus(),
           SizedBox(height: 20),
          PostStatus(),
           SizedBox(height: 20),
          PostStatus(),
           SizedBox(height: 20),
          PostStatus(),
           SizedBox(height: 20),
          PostStatus(),
           SizedBox(height: 20),
          PostStatus(),
        ]
      ),
      
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(onPressed: (){},
                 mini: true,
                backgroundColor: Color(0xff2D383A), 
              child: Icon(Icons.edit,
              color: Colors.white),
                ),
       
          SizedBox(height:10),
          FloatingActionButton(
            backgroundColor: Color(0xff25B371),
            onPressed: (){},
          child: Icon(Icons.camera_alt_rounded,
          color:Colors.white),)
        ]
      )
    );
  }
}

class PostStatus extends StatelessWidget {
  const PostStatus({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: [
          Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(90),
              child: Image.network("https://images.unsplash.com/photo-1645389692136-4b344532362f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzMzN8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
              fit: BoxFit.cover),
            ),
            width: 50,
            height: 50,
            decoration: DottedDecoration(
              borderRadius: BorderRadius.circular(90),
              shape: Shape.circle,
              color: Color(0xff25B371),
              dash: [20,5],
              strokeWidth: 4,
            
            ),
            ),
            SizedBox(width: 20),
            Column(
              children: [
                Text("Mz Blanche Davis",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
                ),
                SizedBox(height: 10),
                Text("4 minutes ago",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
      ),
                )
              ],
            )
        ]
      ),
    );
  }
}
class Camera extends StatefulWidget {
  const Camera({ Key? key }) : super(key: key);

  @override
  _CameraState createState() => _CameraState();
}


class _CameraState extends State<Camera> {
getImage()async{
  ImagePicker imagePicker =  ImagePicker();
 var pickedFile = await imagePicker.pickImage(source: ImageSource.camera);

}
  @override
  void initState() {
    getImage();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}
class Calls extends StatefulWidget {
  const Calls({ Key? key }) : super(key: key);

  @override
  _CallsState createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
           body: ListView.builder(itemBuilder: (context, index) =>  ListTile(
        tileColor: Color(0xff111E21),
          leading: CircleAvatar(
            backgroundImage: AssetImage("images/img3.JPG")
          ),
          title: Text("Mz Amor",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          ),
          subtitle: Row(
            children: [
              Icon(index.isEven? Icons.call_received : Icons.call_made,
              color: index.isEven ? Color(0xff25B371) : Colors.red,
              ),
              Text("(2) ${Random().nextInt(59)} minutes ago",
              style: TextStyle(
                color: Colors.grey,
              ),
              ),
            ],
             ),
             trailing: Icon(index.isEven ? Icons.videocam_rounded : Icons.phone,
             color: Color(0xff25B371)),
         ),
    
   
         itemCount: 30,),
         
  
          floatingActionButton: FloatingActionButton(onPressed: (){},
        backgroundColor: Color(0xff25B371),
          child: Icon(Icons.add_call,
          color: Colors.white
        )
      ),
      );
    
  }
   
  }