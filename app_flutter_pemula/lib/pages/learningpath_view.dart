import 'package:app_flutter_pemula/models/content_model.dart';
import 'package:app_flutter_pemula/pages/learningclass_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:velocity_x/velocity_x.dart';

class LearningpathView extends StatefulWidget {
  const LearningpathView({Key? key}) : super(key: key);

  @override
  State<LearningpathView> createState() => _LearningpathViewState();
}

class _LearningpathViewState extends State<LearningpathView> {
  final List<ContentModel> _listItems = learningPathCategories;
  bool _isListview = false;
  final List<ContentModel> _learningClassItems = <ContentModel>[];

  void navToClass(String title) {
    final items = _learningClassItems.where((e) => e.category == title).toList();
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => LearningclassView(
          title: '$title Developer',
          listItems: items,
        ),
      ),
    );
  }

  @override
  void initState() {
    _learningClassItems.addAll(learningClassItems);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learning Path'),
        actions: [
          IconButton(
            padding: const EdgeInsets.all(1),
            onPressed: () {
              setState(() {
                _isListview = !_isListview;
              });
            },
            icon: Icon(
              _isListview ? FontAwesomeIcons.tableList : FontAwesomeIcons.tableCellsLarge,
              size: 30,
            ),
          ),
        ],
      ),
      body: _isListview ? _buildListView(context) : _buildGrid(context),
    );
  }

  Widget _buildListView(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      itemBuilder: (_, index) {
        final item = _listItems[index];
        return CardListView(item: item, onTap: () => navToClass(item.title));
      },
      itemCount: _listItems.length,
    );
  }

  Widget _buildGrid(BuildContext context) {
    return Container(
      color: Colors.white,
      child: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        childAspectRatio: 3 / 2,
        children: _listItems.map((e) => CardGrid(item: e, onTap: () => navToClass(e.title))).toList(),
      ),
    );
  }
}

class CardGrid extends StatelessWidget {
  final ContentModel item;
  final VoidCallback? onTap;
  const CardGrid({Key? key, required this.item, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        // ignore: sort_child_properties_last
        child: Ink.image(
          image: AssetImage(
            item.imageUrl,
          ),
          fit: BoxFit.fill,
          child: InkWell(
            borderRadius: BorderRadius.circular(10),
            onTap: onTap,
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 3,
        margin: const EdgeInsets.all(5),
      ),
    );
  }
}

class CardListView extends StatelessWidget {
  final ContentModel item;
  final VoidCallback? onTap;
  const CardListView({Key? key, required this.item, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: onTap,
        leading: SizedBox(
          height: 60,
          width: 60,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image(
              image: AssetImage(
                item.imageUrl,
              ),
              fit: BoxFit.fill,
            ),
          ),
        ),
        title: item.title.text.semiBold.make(),
        subtitle: item.subTitle.text.sm.make(),
        isThreeLine: true,
      ),
    );
  }
}
