// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace, use_key_in_widget_constructors, must_be_immutable
import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({Key? key}) : super(key: key);
  // var v = SizedBox(
  //   height: 20.0,
  // );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        titleSpacing: 20.0,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20.0,
              //backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/72213733?s=400&u=8db217aa4e0d2860a911531e7505314dc3fc5efe&v=4'),
            ),
            SizedBox(
              width: 15.0,
            ),
            Text(
              'Chats',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              radius: 20.0,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.camera_alt,
                color: Colors.white,
                size: 16,
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              radius: 20.0,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.edit,
                color: Colors.white,
                size: 16,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                  color: Colors.grey[300],
                ),
                padding: EdgeInsets.all(5.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Text(
                      "Search",
                      style: TextStyle(),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 100.0,
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return buildStoreIcon();
                  },
                  //shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 10,
                    );
                  },
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => buildChateIcon(), 
                separatorBuilder: (context, index) => SizedBox(height : 20.0,),
                itemCount: 10,
              )
            ],
          ),
        ),
      ),
    );
  }

  // 1. build Icon
  Widget buildChateIcon() {
    return Row(
      children: [
        Stack(alignment: AlignmentDirectional.bottomEnd, children: [
          CircleAvatar(
            radius: 25,
          ),
          Padding(
            padding: EdgeInsets.only(
              bottom: 3.0,
              left: 3.0,
            ),
            child: CircleAvatar(
              radius: 7,
              backgroundColor: Color.fromARGB(255, 38, 237, 45),
            ),
          ),
        ]),
        SizedBox(
          width: 10.0,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Ahmed Nser El_Din",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "السلام عليكم ازيك ي احمد",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.0,
                    ),
                    width: 7.0,
                    height: 7.0,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                  ),
                  Text(
                    " 01:35",
                    style: TextStyle(),
                  ),
                  Text(
                    " am",
                    style: TextStyle(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildStoreIcon() {
    return Container(
      width: 60,
      child: Column(children: [
        Stack(alignment: AlignmentDirectional.bottomEnd, children: [
          CircleAvatar(
            radius: 30,
          ),
          Padding(
            padding: EdgeInsets.only(
              bottom: 3.0,
              left: 3.0,
            ),
            child: CircleAvatar(
              radius: 7,
              backgroundColor: Color.fromARGB(255, 38, 237, 45),
            ),
          ),
        ]),
        Text(
          'Ahmed Nser El_Din Amer',
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ]),
    );
  }
  //
}
