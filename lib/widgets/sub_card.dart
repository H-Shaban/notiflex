import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notiflex/models/post.dart';
import 'package:notiflex/services/data_set.dart';

class SubCard extends StatelessWidget {
  var posts = new DataSet();
  @override
  Widget build(BuildContext context) {
    return getCardtWidgets(posts);

    /*ListView.builder(
      itemCount: posts.length,
      itemBuilder: (_, index){
        return posts.length==0? Text('Data Not Found !'): getCardtWidgets(posts[index]);
      }
    );*/
  }

  Widget getCardtWidgets(DataSet dataSet) {
    var posts = dataSet.posts.where((p) => p.category == 1).toList();
    return new Column(
        children: posts
            .map((post) => new Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      InkWell(
                        child: Row(
                          children: <Widget>[
                            Image.network(
                              post.img,
                              width: 100.0,
                            ),
                            Flexible(
                              child: Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Text(
                                  post.title,
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  softWrap: true,
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
                            'aljazeera ${post.id.toString()}',
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
                ))
            .toList());
    /*Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          InkWell(
            child: Row(
              children: <Widget>[
                Image.network(post.getImg.toString()
                  /*'https://www.aljazeera.com/mritems/imagecache/mbdxxlarge/mritems/Images/2019/10/25/20f8cfd125534d4fb1dad8df619c1e81_18.jpg'*/,
                  width: 20.0/*MediaQuery.of(context).size.width*0.33*/,),
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text(
                      post.title
                      /*'US to deploy more troops to eastern Syria to secure oilfields'*/,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                      softWrap: true,
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
    );*/
  }
}
