import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_netflix_responsive_ui/models/models.dart';

class Previews extends StatelessWidget {
  final String title;
  final List<Content> contentLists;

  const Previews({Key key, this.title, this.contentLists}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Container(
        height: 165.0,
        child: ListView.builder(
            itemCount: contentLists.length,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
            itemBuilder: (BuildContext context, int index) {
              final Content content = contentLists[index];
              return GestureDetector(
                onTap: () => print(content.name),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                        margin: const EdgeInsets.symmetric(horizontal: 16),
                        height: 130,
                        width: 130,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(content.imageUrl),
                              fit: BoxFit.cover,
                            ),
                            shape: BoxShape.circle,
                            border:
                                Border.all(color: content.color, width: 4.0)))
                  ],
                ),
              );
            }),
      )
    ]);
  }
}
