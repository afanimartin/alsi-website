import 'package:flutter/material.dart';
import 'package:ALSI/models/content.dart';

class ContentList extends StatelessWidget {
  const ContentList(
      {required this.title,
      required this.contentList,
      this.isOriginals = false,
      Key? key})
      : super(key: key);

  final String title;
  final List<Content> contentList;
  final bool isOriginals;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 2),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              title,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: isOriginals ? 500 : 220,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: contentList.length,
                itemBuilder: (BuildContext context, int index) {
                  final content = contentList[index];

                  return GestureDetector(
                    onTap: () => print(content.name),
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      height: isOriginals ? 400 : 200,
                      width: isOriginals ? 200 : 130,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(content.imageUrl), fit: BoxFit.cover)),
                    ),
                  );
                }),
          )
        ]),
      );
}
