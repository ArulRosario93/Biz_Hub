import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UploadBlog extends StatefulWidget {
  const UploadBlog({super.key, required this.handleAddBlog});

  final handleAddBlog;

  @override
  State<UploadBlog> createState() => _UploadBlogState();
}

class _UploadBlogState extends State<UploadBlog> {
  TextEditingController titleController = TextEditingController();
  TextEditingController BlogController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    void handleClick() {
      widget.handleAddBlog(titleController.value.text, BlogController.value.text);
      Navigator.pop(context);
    }

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
                      fontSize: 25,
                      fontWeight: FontWeight.bold))),
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Column(children: [
              Padding(padding: EdgeInsets.symmetric(vertical: 20)),
              Container(
                padding: EdgeInsets.symmetric(vertical: 30),
                alignment: Alignment.center,
                child: Text(
                  "Upload Your Biz Storie",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.cinzel(textStyle: TextStyle(fontSize: 20)),
                ),
              ),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: TextFormField(
                    controller: titleController,
                    decoration: InputDecoration(
                      hintText: "Blog Title",
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      hintStyle: GoogleFonts.cinzel(
                          textStyle: TextStyle(color: Colors.black87)),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 3, color: Colors.black), //<-- SEE HERE
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 2, color: Colors.black), //<-- SEE HERE
                      ),
                    ),
                  )),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  textAlignVertical: TextAlignVertical.center,
                  smartQuotesType: SmartQuotesType.enabled,
                  smartDashesType: SmartDashesType.enabled,
                  textCapitalization: TextCapitalization.sentences,
                  controller: BlogController,
                  keyboardType: TextInputType.multiline,
                  maxLines: 5,
                  minLines: 3,
                  maxLength: 700,
                  decoration: InputDecoration(
                    fillColor: Color.fromARGB(35, 255, 255, 255),
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 2, color: Colors.black), //<-- SEE HERE
                    ),
                    hintText: "Start Writing Your Storie",
                    hintStyle: GoogleFonts.cinzel(
                        textStyle: TextStyle(color: Colors.black87)),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 2, color: Colors.black), //<-- SEE HERE
                    ),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 25)),
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.black,
                  ),
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 25),
                  child: InkWell(
                    onTap: () => handleClick(),
                    child: Text(
                      "Publish",
                      style:
                          GoogleFonts.cinzel(color: Colors.white, fontSize: 19),
                    ),
                  ))
            ]),
          ),
        ));
  }
}
