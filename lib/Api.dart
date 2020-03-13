import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:youtube/config/ApiConfig.dart';
import 'package:youtube/models/Video.dart';

class Api {
  Future<List<Video>> pesquisar(String pesquisa) async {
    http.Response response = await http.get(ApiConfig.URL_BASE +
        "search"
            "/?part=snippet"
            "&type=video"
            "&maxResult=20"
            "&order=date"
            "&key=" +
        ApiConfig.CHAVE_API_YOUTUBE +
        "&q=$pesquisa");
    if (response.statusCode == 200) {
      Map<String, dynamic> dadosJson = json.decode(response.body);
      List<Video> videos = dadosJson["items"].map<Video>((map) {
        return Video.fromJson(map);
      }).toList();
      return videos;
    } else {
      return null;
    }
  }
}
