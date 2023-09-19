import 'package:biz_hub/Blog_Search_Container.dart';
import 'package:biz_hub/Upload_Blog.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Blog_Search extends StatefulWidget {
  const Blog_Search({super.key});

  @override
  State<Blog_Search> createState() => _Blog_SearchState();
}

class _Blog_SearchState extends State<Blog_Search> {
  TextEditingController inputController = TextEditingController();

  List<Map<String, Object>> finalList = [];
  var storage = [
    {
      "blogTitle": "Innovative World, with Astonishing Dreams.",
      "writtenBy": "SuperSet",
      "date": "19/09",
      "authorImage":
          "https://pbs.twimg.com/card_img/1701624273314488320/jZLtd5v4?format=jpg&name=large",
      "blogImage":
          "https://pbs.twimg.com/media/DPUyTuOWkAEztAb?format=jpg&name=large",
      "readBy": " 3 min read",
      "domain": "Family",
      "blogPara": [
        "Barack Obama served as the 44th President of the United States. His story is the American story — values from the heartland, a middle-class upbringing in a ",
        "Sahu also led the initiative for the first door-to-door survey of people living with disabilities in the district, a first in India.",
        "When Barack Obama was elected president in 2008, he became the first African American to hold the office. Obama faced major challenges during his two-term tenure in office. His primary policy achievements included health care reform, economic stimulus, banking reform and consumer protections, and a repeal of the “Don’t Ask, Don’t Tell” policy preventing lesbian and gay Americans from serving openly in the military.",
        "Obama’s father, Barack Sr., a Kenyan economist, met his mother, Stanley Ann Dunham, when both were students in Hawaii, where Barack was born on August 4, 1961. They later divorced, and Barack’s mother married a man from Indonesia, where he spent his early childhood. Before fifth grade, he returned to Honolulu to live with his maternal grandparents and attend a private prep school on scholarship. In his memoir Dreams from My Father (1995), Obama describes the complexities of discovering his identity in adolescence.",
      ]
    },
    {
      "blogTitle": "This IAS officer from Varanasi is reuniting lost children with their families",
      "writtenBy": "Simran Sharma",
      "date": "19/09",
      "authorImage":
          "https://images.yourstory.com/cs/users/d4ffdb60-a785-11ed-a203-6d5930e44559/google/profile_image_1688301857760.png?fm=png&auto=format&mask=ellipse&ar=1:1&mode=crop&crop=faces&w=112&h=112",
      "blogImage":
          "https://images.yourstory.com/cs/5/d4ffdb60a78511eda2036d5930e44559/Rustagisaysthatthelackofproperstaffstrengthputsimmensepressureonthewholesystem-1694601035086.jpg?fm=auto&ar=2:1&mode=crop&crop=faces",
      "readBy": " 7 min read",
      "domain": "Social Work",
      "blogPara": [
        "Mission Muskaan, which was started in July 2022, has so far rescued and reunited 730 lost children with their families.",
        "Nayab (name changed) was 10 years old when he was found near the platform of Basti Railway Station in Basti district of Uttar Pradesh by a local NGO. Hailing from the Shamili district of Uttar Pradesh, the boy had accidentally lost his way home. The NGO then took the child to one of the child welfare homes in Varanasi. He couldn’t remember his parents’ names or home address because he had trouble speaking and reading.",
        "Finally, the child was reunited with his family. Like him, 730 lost children in Varanasi have been reunited with their families since last July. This has been possible with Mission Muskaan, which was started in July 2022 and supervised by IAS officer Himanshu Nagpal.",
        "“Mission Muskaan’s objective is to reunite lost children found in Varanasi’s ghats, railway stations, and temples with their families across India. It is my personal commitment to assist these children and bring smiles to both their faces and the faces of their families,” he tells SocialStory.",
      ]
    },
  ];

  void handleAddBlog(title, blog) {
    setState(() {
      finalList.add({
        "blogTitle": title,
        "writtenBy": "GamersTag",
        "date": "20/09",
        "authorImage":
            "https://media.istockphoto.com/id/1307457391/photo/happy-black-student-raising-arm-to-answer-question-while-attending-class-with-her-university.jpg?s=612x612&w=0&k=20&c=iZaZFyC-WqlqSQc4elqUNPTxLvWPe8P5Tb_YdZnrI9Q=",
        "blogImage":
            "https://www.unicef.org/sites/default/files/styles/hero_tablet/public/Hero%20-%20Transforming%20Education%20%2811%29.jpg?itok=5d6Ltxyr",
        "readBy": " 5 min read",
        "domain": "Education",
        "blogPara": [blog]
      });
    });
  }

  @override
  void initState() {
    super.initState();

    setState(() {
      finalList = storage;
    });
  }

  @override
  Widget build(BuildContext context) {
    // void _searchBlogs(String searchText) {

    //   if (searchText.isNotEmpty) {
    //     // Filter the storage list based on the search input
    //     finalList.add(storage.where((blog) {
    //       final blogTitle = blog['blogTitle'].toString().toLowerCase();
    //       return blogTitle.contains(searchText.toLowerCase());
    //     }) as Map<String, Object> );
    //   }
    //   setState(() {});
    // }

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
      body: Container(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.symmetric(vertical: 20)),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: TextFormField(
                  controller: inputController,
                  // onChanged: (text) {
                  //   _searchBlogs(text);
                  // },
                  decoration: InputDecoration(
                    hintText: "Search Blog",
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    hintStyle: GoogleFonts.cinzel(
                        textStyle: TextStyle(color: Colors.black87)),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 3, color: Colors.black), //<-- SEE HERE
                    ),
                  ),
                )),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  for (var i = 0; i < finalList.length; i++)
                    Blog_Search_Container(snap: finalList[i] as Map<String, dynamic>),
                ],
              ),
            ))
          ],
        ),
      ),
      floatingActionButton: Container(
        width: 55,
        height: 55,
        // padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(60)),
        child: InkWell(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => UploadBlog(handleAddBlog: handleAddBlog),
              )),
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
