import 'dart:async';

import 'package:flutter003/model/user.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:flutter003/utilities/api_utilities.dart';

class UserApi {
    static  Future<List<User>> getAllUsers() async {
    var response = await http.get(allUserApi);
    var responseImage = await http.get(imagesGirl);
     List< User> users=List<User>();
     User user=User.u();
     
    if (response.statusCode == 200 && responseImage.statusCode == 200) {
      var jsonData = jsonDecode(response.body);
      
      for (int i = 0; i < 10; i++) {
        
        var json = jsonDecode(responseImage.body);
        
        var item = jsonData[i];
        
        user =  User(item['id'], item['name'], item['email'], json['file'] );
        users.add(user);
        print(user.name);
         responseImage = await http.get(imagesGirl);
      }
    }
    return users;
  }
}
