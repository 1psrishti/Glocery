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
            //TODO: lord help me
            TitleBar(
              title: "my lists",
              alertBox:  AlertDialog(
                title: const Text("CREATE NEW LIST"),
                titleTextStyle: TextStyle(
                  fontSize: 20,
                  color: textColor,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                ),
                content: const Text("You have raised a Alert Dialog Box"),
                actions: <Widget>[
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      color: Colors.green,
                      padding: const EdgeInsets.all(14),
                      child: const Text("okay"),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 45),
            Expanded(
              child: GridView.builder(
                  itemCount: 15,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
