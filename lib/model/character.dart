import 'package:flutter/cupertino.dart';

class Character {
  String name;
  String imgUrl;
  String occupation;
  String birthday;
  String status;
  String potrayedBy;
  String nickname;

  Character({@required this.name, @required this.imgUrl, @required this.occupation, this.birthday, this.status, this.potrayedBy, this.nickname});
}