import 'package:biz_hub/Blog_Stories.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Blog_Search_Container extends StatelessWidget {
  const Blog_Search_Container({super.key, required this.snap});

  final snap;

  @override
  Widget build(BuildContext context) {

    var stringGot = "";
    stringGot = snap["blogTitle"];

    if (stringGot.length > 42) {
      stringGot = stringGot.substring(0, 42) + "...";
    }


    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: InkWell(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => BlogStories(snap: snap),
            ),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              snap["authorImage"]),
                        )),
                  ),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 4)),
                  Text(
                    snap["writtenBy"] + " ~",
                    style: GoogleFonts.poppins(
                        textStyle:
                            TextStyle(color: Colors.black87, fontSize: 14)),
                  ),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 2)),
                  Text(snap["date"],
                      style: GoogleFonts.poppins(
                          textStyle:
                              TextStyle(color: Colors.black54, fontSize: 14)))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    child: Container(
                        child: Text(
                      stringGot,
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
                    )),
                    flex: 1,
                  ),
                  Container(
                    width: 120,
                    height: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                snap["blogImage"]))),
                  )
                ],
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 6)),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(255, 255, 255, 255),
                        boxShadow: [
                          BoxShadow(
                              color: const Color.fromARGB(255, 225, 225, 225),
                              blurRadius: 10,
                              spreadRadius: 1),
                        ]),
                    child: Text(
                      snap["domain"],
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(color: Colors.black)),
                    ),
                  ),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 6)),
                  Text(
                    snap["readBy"],
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(color: Colors.black54)),
                  )
                ],
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 5)),
              Divider(
                color: Color.fromARGB(179, 238, 238, 238),
                thickness: 1,
              )
            ],
          ),
        ));
  }
}
