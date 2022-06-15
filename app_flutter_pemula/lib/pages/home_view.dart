import 'package:app_flutter_pemula/data/constants/assets.gen.dart';
import 'package:app_flutter_pemula/models/content_model.dart';
import 'package:app_flutter_pemula/pages/learningpath_view.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeView extends StatelessWidget {
  final String title;
  const HomeView({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: Text(title),
        leadingWidth: 40,
        titleSpacing: 5,
        leading: CircleAvatar(
          child: Assets.icon.image(),
        ),
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    var size = MediaQuery.of(context).size; 
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
            children: [
              Container(
                height: size.height * .3,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color(0xFF0C9BAB),
                      Color(0xFF11C5C6),
                    ],
                  ),
                  image: DecorationImage(
                    image: Assets.images.dHome.image().image,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              'Bangun Karirmu Sebagai Developer Propersional'.text.size(20).color(Colors.white).make().py8().px8(),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    width: size.width * .35,
                    child: ElevatedButton(
                      // style: const ButtonStyle(),
                      style: ElevatedButton.styleFrom(tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const LearningpathView()),
                        );
                      },
                      child: const Text('Mulai Belajar'),
                    ),
                  ),
                ),
              ),
            ],
          ),

          10.heightBox,
          'Telah dipercaya oleh'.text.semiBold.make().px(10),
          10.heightBox,
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 6 / 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: itemsTrustedBy.length,
                itemBuilder: (BuildContext ctx, index) {
                  return Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(2),
                      image: DecorationImage(
                        image: itemsTrustedBy[index].image().image,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  );
                }),
          ),
          10.heightBox,
          'Program terbaru kami'.text.semiBold.make().px(10),
          5.heightBox,
          Container(
            // color: Colors.white,
            child: 'Bekerja sama dengan partner, kami menyelenggarakan beberapa program untuk mendukung developer Indonesia.'.text.sm.make().px(10),
          ),
          SizedBox(
            height: size.height * .15,
            width: size.width * .95,
            child: ListView.builder(
              physics: const ClampingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: itemsProgramBy.length,
              itemBuilder: (BuildContext context, int index) {
                final item = itemsProgramBy[index];
                return Card(
                  color: Colors.white,
                  child: Container(
                    width: size.width * .9,
                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Image.asset(
                          item.imageUrl,
                          width: 100,
                          height: 140,
                        ),
                        10.widthBox,
                        Expanded(
                          child: Container(
                            color: Colors.white,
                            child: Column(
                              // direction: Axis.vertical,
                              // spacing: 1.5,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                item.note.text.xs.make(),
                                1.5.heightBox,
                                item.title.text.sm.semiBold.make(),
                                1.5.heightBox,
                                item.description.text.overflow(TextOverflow.clip).xs.make().expand(),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          100.heightBox,
        ],
      ),
    );
  }
}
