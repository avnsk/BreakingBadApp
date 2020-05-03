import 'package:breakingbadwiki/model/character.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:google_fonts/google_fonts.dart';


class CharacterDetailsPage extends StatelessWidget {
  Character character;
  CharacterDetailsPage({this.character});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(character.name, style: TextStyle(color: Colors.white)),
          backgroundColor: Color(0xFF2E7D32),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Container(
            color: Color(0xFF2E7D32),
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomLeft,
                            colors: [Color(0xFFC8E6C9), Color(0xFF2E7D32)])),
                    child: Center(
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        minRadius: 50,
                        maxRadius: 160,
                        backgroundImage: CachedNetworkImageProvider(
                          character.imgUrl,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(75.0),
                            topRight: Radius.circular(75.0)),
                      ),
                      child: SingleChildScrollView(

                        child: ConstrainedBox(
                          constraints: BoxConstraints(minHeight: MediaQuery.of(context).size.height/2),
                          child: Column(
                            children: <Widget>[
                              SizedBox(
                                height: 30,
                              ),
                              Container(
                                  width: MediaQuery.of(context).size.width - 80,
                                  child: Text(
                                    "Name",
                                    textAlign: TextAlign.left,
                                    textDirection: TextDirection.ltr,
                                    style: GoogleFonts.adamina(textStyle: TextStyle(color: Colors.green[400], letterSpacing: 2.0)),
                                  )),
                              SizedBox(
                                height: 7.0,
                              ),
                              Container(
                                  width: MediaQuery.of(context).size.width - 80,
                                  child: Text(
                                    character.name,
                                    textAlign: TextAlign.left,
                                    textDirection: TextDirection.ltr,
                                    style: GoogleFonts.adamina(textStyle: TextStyle(color: Colors.black, letterSpacing: 2.0, fontWeight: FontWeight.bold)),
                                  )),
                              SizedBox(
                                height: 10.0,
                              ),
                              Container(
                                  width: MediaQuery.of(context).size.width - 80,
                                  child: Text(
                                    "Birthday",
                                    textAlign: TextAlign.left,
                                    textDirection: TextDirection.ltr,
                                    style: GoogleFonts.adamina(textStyle: TextStyle(color: Colors.green[400], letterSpacing: 2.0)),
                                  )),
                              SizedBox(
                                height: 7.0,
                              ),
                              Container(
                                  width: MediaQuery.of(context).size.width - 80,
                                  child: Text(
                                    character.birthday,
                                    textAlign: TextAlign.left,
                                    textDirection: TextDirection.ltr,
                                    style: GoogleFonts.adamina(textStyle: TextStyle(color: Colors.black, letterSpacing: 2.0, fontWeight: FontWeight.bold)),
                                  )),
                              SizedBox(
                                height: 10.0,
                              ),
                              Container(
                                  width: MediaQuery.of(context).size.width - 80,
                                  child: Text(
                                    "Occupation",
                                    textAlign: TextAlign.left,
                                    textDirection: TextDirection.ltr,
                                    style: GoogleFonts.adamina(textStyle: TextStyle(color: Colors.green[400], letterSpacing: 2.0)),
                                  )),
                              SizedBox(
                                height: 7.0,
                              ),
                              Container(
                                  width: MediaQuery.of(context).size.width - 80,
                                  child: Text(
                                    character.occupation,
                                    textAlign: TextAlign.left,
                                    textDirection: TextDirection.ltr,
                                    style: GoogleFonts.adamina(textStyle: TextStyle(color: Colors.black, letterSpacing: 2.0, fontWeight: FontWeight.bold)),
                                  )),
                              SizedBox(
                                height: 10.0,
                              ),
                              Container(
                                  width: MediaQuery.of(context).size.width - 80,
                                  child: Text(
                                    "Status",
                                    textAlign: TextAlign.left,
                                    textDirection: TextDirection.ltr,
                                    style: GoogleFonts.adamina(textStyle: TextStyle(color: Colors.green[400], letterSpacing: 2.0)),
                                  )),
                              SizedBox(
                                height: 7.0,
                              ),
                              Container(
                                  width: MediaQuery.of(context).size.width - 80,
                                  child: Text(
                                    character.status,
                                    textAlign: TextAlign.left,
                                    textDirection: TextDirection.ltr,
                                    style: GoogleFonts.adamina(textStyle: TextStyle(color: Colors.black, letterSpacing: 2.0, fontWeight: FontWeight.bold)),
                                  )),
                              SizedBox(
                                height: 10.0,
                              ),
                              Container(
                                  width: MediaQuery.of(context).size.width - 80,
                                  child: Text(
                                    "Potrayed By",
                                    textAlign: TextAlign.left,
                                    textDirection: TextDirection.ltr,
                                    style: GoogleFonts.adamina(textStyle: TextStyle(color: Colors.green[400], letterSpacing: 2.0)),
                                  )),
                              SizedBox(
                                height: 7.0,
                              ),
                              Container(
                                  width: MediaQuery.of(context).size.width - 80,
                                  child: Text(
                                    character.potrayedBy,
                                    textAlign: TextAlign.left,
                                    textDirection: TextDirection.ltr,
                                    style: GoogleFonts.adamina(textStyle: TextStyle(color: Colors.black, letterSpacing: 2.0, fontWeight: FontWeight.bold)),
                                  )),
                              SizedBox(
                                height: 10.0,
                              ),

                            ],
                          ),
                        ),
                      ),
                    ))
              ],
            ),
          ),
        ));
  }
}
