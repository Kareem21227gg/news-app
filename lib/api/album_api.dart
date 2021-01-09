import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter003/model/album.dart';
import 'package:flutter003/utilities/api_utilities.dart';

class AlbumApi{
    Future<List<Album>> getAllAlbum() async {
    var response = await http.get(allAlbumsApi);
    List<Album> albums= List<Album>();
    Album album = Album.a();
    if(response.statusCode == 200){
      var jsonData = jsonDecode(response.body);
     for (int i =0;i<10;i++){
        var item= jsonData[i];
        album = Album(id: item['id'],title: item['title'] , userId: item['userId']);
        albums.add(album);
        
      }
    }
    return albums;
  }
}