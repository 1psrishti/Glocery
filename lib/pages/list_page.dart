import 'package:flutter/material.dart';
import 'package:glocery/widgets/list_card.dart';
import 'package:glocery/widgets/title_bar.dart';
import 'package:glocery/constants.dart';

class ListPage extends StatefulWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        minimum: const EdgeInsets.only(top: 50, left: 12, right: 12),
        child: Column(
          children: [
            TitleBar(title: "my lists"),
            const SizedBox(height: 45),
            Expanded(
              child: GridView.builder(
                  itemCount: 15,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    //TODO: Add Hive database
                    //TODO: Fix card UI
                    return ListCard(
                      imageName: "eggs",
                      cardName: "breakfast",
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
