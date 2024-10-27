import 'package:todo/model/todohaya.dart';
import 'package:todo/view/widgets/todo_item_widget.dart';
import 'package:flutter/material.dart';

import '../../model/dummy_data.dart';
class ListOfToDosWidget extends StatefulWidget {
  const ListOfToDosWidget({super.key});

  @override
  State<ListOfToDosWidget> createState() => _ListOfToDosWidgetState();
}

class _ListOfToDosWidgetState extends State<ListOfToDosWidget> {
  double width = 0;

  @override
  Widget build(BuildContext context) {
     width = MediaQuery.of(context).size.width;
    return Center(
      child: SizedBox(
        width: width - 100,
        child: SingleChildScrollView(
          child: Column(
            children: [
              ...toDoList.map((todohaya) => TodoItemWidget(
                toDohaya: todohaya,
                onChange: () {
                  setState(() {});
                },
              )),
            ],
          ),
        ),),
    );
  }
}
