import 'package:flutter/material.dart';

class InstagramPost extends StatelessWidget {
  const InstagramPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 450,
          width: 400,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              NetworkImage('https://picsum.photos/50'),
                          radius: 20.0,
                        ),
                        SizedBox(width: 8.0),
                        Text(
                          'Gowsalya_Natraj',
                          //username,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Icon(Icons.more_vert),
                  ],
                ),
              ),
              Container(
                height: 300.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1524511498335-b0ed6b8e9a69?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=913&q=80'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                        SizedBox(width: 30.0),
                        Icon(Icons.comment),
                        SizedBox(width: 30.0),
                        Icon(Icons.send_rounded),
                      ],
                    ),
                    Icon(Icons.bookmark_border),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 100),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Gowsalya_natraj',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 4.0),
                    Text('Life is so beautiful as much as you think / #life'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
