import 'package:breakingbadwiki/model/character.dart';
import 'package:breakingbadwiki/pages/character_detail_page.dart';
import 'package:breakingbadwiki/service/get_all_character_api.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Future<List<Character>> charactersList;
  @override
  void initState() {
    super.initState();
    GetAllCharacterApi obj = GetAllCharacterApi();
    charactersList = obj.getListOfCharacters();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black54,
          title: Text("Characters"),
        ),
        backgroundColor: Colors.grey,
        body: FutureBuilder(
          future: charactersList,
          builder:
              (BuildContext context, AsyncSnapshot<List<Character>> snapshot) {
            if (snapshot.hasData) {
              if (snapshot.data != null) {
                Widget result = ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (BuildContext ctxt, int index) {
                      return GestureDetector(
                        child:
                            buildCharacterWidget(snapshot.data[index], context),
                        onTap: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CharacterDetailsPage(
                                      character: snapshot.data[index])))
                        },
                      );
                    });
                return result;
              }
            } else {
              return Center(child: CircularProgressIndicator());
            }
            return null;
          },
        ));
  }

  Widget buildCharacterWidget(Character data, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          padding: EdgeInsets.all(5.0),
          height: 150,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Color(0xFFC8E6C9), Color(0xFF2E7D32)])),
          child: Card(
              elevation: 0,
              color: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: Colors.transparent,
                    minRadius: 40,
                    maxRadius: 60,
                    backgroundImage: CachedNetworkImageProvider(
                      data.imgUrl,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          data.name,
                          style: TextStyle(
                            fontSize: 14.0,
                            letterSpacing: 1.0,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Center(
                            child: Text(
                          data.occupation,
                          style: TextStyle(
                            fontSize: 14.0,
                            letterSpacing: 1.0,
                            color: Colors.white,
                          ),
                        )),
                      ],
                    ),
                  )
                ],
              ))),
    );
  }
}
