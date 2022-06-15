import 'package:app_flutter_pemula/models/content_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:velocity_x/velocity_x.dart';



class LearningclassView extends StatelessWidget {
  final String title;
  final List<ContentModel> listItems;
  const LearningclassView({Key? key, this.title = '', required this.listItems}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(
        itemCount: listItems.length,
        itemBuilder: (BuildContext context, int index) {
          final item = listItems[index];
          return Container(
            color: Colors.white,
            margin: const EdgeInsets.only(bottom: 5),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(
                      FontAwesomeIcons.signal,
                      size: 12,
                    ),
                    5.widthBox,
                    'Langkah ${item.id}'.text.sm.make(),
                  ],
                ),
                5.heightBox,
                item.title.text.bold.make(),
                15.heightBox,
                Row(
                  children: [
                    _buildTitleIcon(
                      FontAwesomeIcons.solidClock,
                      item.duration,
                      color: const Color(0xFF44dcd0),
                    ),
                    10.widthBox,
                    _buildTitleIcon(
                      FontAwesomeIcons.solidStar,
                      item.rating,
                      color: Colors.orange,
                    ),
                    10.widthBox,
                    _buildTitleIcon(
                      FontAwesomeIcons.cubes,
                      item.level,
                      color: Colors.blue,
                    ),
                  ],
                ),
                12.heightBox,
                Row(
                  children: [
                    _buildTitleIcon(
                      FontAwesomeIcons.book,
                      item.modul,
                      color: Colors.grey,
                      fontColor: Colors.grey,
                    ),
                    10.widthBox,
                    _buildTitleIcon(
                      FontAwesomeIcons.userGraduate,
                      item.student,
                      color: Colors.grey,
                      fontColor: Colors.grey,
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildTitleIcon(IconData iconData, String text, {Color? color, Color? fontColor}) {
    return Row(
      children: [
        Icon(
          iconData,
          size: 14,
          color: color,
        ),
        8.widthBox,
        text.text.sm.semiBold.color(fontColor).make(),
      ],
    );
  }
}
