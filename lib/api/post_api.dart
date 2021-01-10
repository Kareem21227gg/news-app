import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter003/model/post.dart';
import 'package:flutter003/utilities/api_utilities.dart';
import 'dart:async';

class PostApi{
   static Future<List<Post>> getAllPosts() async {
    var response = await  http.get(allPostsApi);
    var responseImage = await http.get(imagesBrazel);
    List<Post>  posts = List<Post>();
    Post post = Post.p();
    if(response.statusCode==200 && responseImage.statusCode ==200){
       
      var jsonData = jsonDecode(response.body);
     
      for (int i =0;i<6;i++){
        
        var item= jsonData[i];
         var json=  jsonDecode(responseImage.body);
        post=Post(body: item['body'],
        id: item['id'],
        title: item['title'],
        userId: item['userId'],
        imageUrl: json['file'],
        owner: json['owner']);
        print(item['userId']);
        posts.add(post);
        responseImage = await http.get(imagesBrazel);
        
      } 
    }
    return posts;
    
  }
}