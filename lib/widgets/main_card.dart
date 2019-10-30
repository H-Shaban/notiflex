import 'package:flutter/material.dart';

class MainCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          InkWell(
            child: Column(
              children: <Widget>[
                Image.network(
                  'https://www.aljazeera.com/mritems/imagecache/mbdxxlarge/mritems/Images/2019/10/25/20f8cfd125534d4fb1dad8df619c1e81_18.jpg',
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'US to deploy more troops to eastern Syria to secure oilfields',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            onTap: () {},
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 30.0,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.share,
                  color: Colors.grey,
                  size: 30.0,
                ),
                onPressed: () {},
              ),
              Text(
                'aljazeera',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18.0,
                ),
              ),
              Icon(
                Icons.open_in_new,
                color: Colors.black,
                size: 30.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
