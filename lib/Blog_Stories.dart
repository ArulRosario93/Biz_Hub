import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BlogStories extends StatelessWidget {
  const BlogStories({super.key, required this.snap});

  final snap;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0.5,
        centerTitle: true,
        title: Text("Biz Stories",
            style: GoogleFonts.cinzel(
                textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold))),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
              ),
              Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    snap["blogTitle"],
                    textAlign: TextAlign.center,
                    style: GoogleFonts.cinzel(
                        textStyle: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.black)),
                  )),
              Padding(padding: EdgeInsets.symmetric(vertical: 7)),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25, vertical: 7),
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(80),
                              image: DecorationImage(
                                  image: NetworkImage(
                                    snap["authorImage"],
                                  ),
                                  fit: BoxFit.cover)),
                        ),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 3)),
                        Text(
                          snap["writtenBy"],
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(color: Colors.black87)),
                        )
                      ],
                    ),
                    Text(
                      snap["readBy"],
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(color: Colors.black54)),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                height: 200,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    snap["blogImage"],
                  ),
                )),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: Column(
                  children: [
                    for (var i = 0; i < snap["blogPara"].length; i++)
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Text(
                          snap["blogPara"][i],
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(color: Colors.black87)),
                        ),
                      )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
