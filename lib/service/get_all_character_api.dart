import 'package:http/http.dart';
import 'dart:convert';
import 'package:breakingbadwiki/model/character.dart';

class GetAllCharacterApi {
  Future<List<Character>> getListOfCharacters() async {
    Response response =
        await get("https://www.breakingbadapi.com/api/characters");
    List<Character> data = [];
    List<dynamic> res = jsonDecode(response.body);
    for (Map val in res) {
      data.add(Character(
          name: val["name"].toString(),
          imgUrl: val["img"].toString(),
          occupation: val["occupation"][0],
          birthday: val["birthday"].toString(),
          status: val["status"],
          potrayedBy: val["portrayed"],
          nickname: val["portrayed"]));
    }
    return data;
  }
}
