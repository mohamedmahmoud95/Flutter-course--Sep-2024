import 'dart:convert';

import 'package:http/http.dart';
import 'package:todo/model/todohaya.dart';
import 'package:todo/view/widgets/todo_item_widget.dart';
import 'package:flutter/material.dart';

import '../../model/fetching_todos_service.dart';
import '../../model/dummy_data.dart';


Set<ToDohaya> toDoList = {};


class ListOfToDosWidget extends StatefulWidget {
  const ListOfToDosWidget({super.key});

  @override
  State<ListOfToDosWidget> createState() => _ListOfToDosWidgetState();
}

class _ListOfToDosWidgetState extends State<ListOfToDosWidget> {
  double width = 0;

  bool fetched = false;
  @override
  void initState() {
    super.initState();
    try {
      fetchToDos().then((value) => toDoList.addAll(value));
      fetched = true;
    }
    catch(e){
      print(e);
    }

  }


  @override
  Widget build(BuildContext context) {
    fetchToDos().then((value) => toDoList.addAll(value));

    width = MediaQuery.of(context).size.width;
    return Center(
      child: SizedBox(
        width: width - 100,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 70,),
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
