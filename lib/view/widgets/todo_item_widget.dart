import 'package:flutter/material.dart';
import 'package:todo/model/todohaya.dart';

import '../../model/dummy_data.dart';

class TodoItemWidget extends StatefulWidget {
  final ToDohaya toDohaya;
  final Function onChange;
  const TodoItemWidget(
      {super.key, required this.toDohaya, required this.onChange});

  @override
  State<TodoItemWidget> createState() => _TodoItemWidgetState();
}

class _TodoItemWidgetState extends State<TodoItemWidget> {
  bool done = false;
  @override
  void initState() {
    done = widget.toDohaya.done;
    super.initState();
  }

  double width = 0;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return Center(child:Container(
      width: width  > 600 ? width * 0.5 : width * 0.8,
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade100.withOpacity(0.5),
              spreadRadius: 4,
              blurRadius: 4,
              offset: const Offset(0, 3),
            ),
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.toDohaya.title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      decoration: done
                          ? TextDecoration.lineThrough
                          : TextDecoration.none,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    widget.toDohaya.description,
                    style: TextStyle(
                      decoration: done
                          ? TextDecoration.lineThrough
                          : TextDecoration.none,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                      activeColor: Colors.blue.shade800,
                      value: done,
                      side: BorderSide(color: done ? Colors.blue : Colors.grey),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      onChanged: (value) {
                        setState(() {
                          done = !done;
                          widget.toDohaya.done = done;
                        });
                      }),
                ],
              )
            ],
          ),
          Divider(
            color: Colors.grey.shade200,
          ),
          Row(
            children: [
              Text(
                widget.toDohaya.dueDate.day == DateTime.now().day
                    ? 'Today ${widget.toDohaya.dueDate.hour}:${widget.toDohaya.dueDate.minute}'
                    : widget.toDohaya.dueDate.toString().substring(0, 16),
                style: TextStyle(
                  decoration:
                      done ? TextDecoration.lineThrough : TextDecoration.none,
                ),
              ),
              const Spacer(),
              IconButton(
                color: Colors.red.shade900,
                onPressed: () {
                  setState(() {
                    toDoList.remove(widget.toDohaya);
                  });
                  widget.onChange();
                },
                icon: const Icon(Icons.delete_outline_outlined),
              ),
            ],
          ),
        ],
      ),),
    );
  }
}
