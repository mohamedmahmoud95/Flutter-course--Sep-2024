import 'package:flutter/material.dart';
import 'package:todo/model/todohaya.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'list_of_todos_widget.dart';

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
    done = widget.toDohaya.completed!;
    super.initState();
  }

  double width = 0;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return Center(
      child: Container(
        width: width > 600 ? width * 0.5 : width * 0.8,
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
                Expanded(
                  child: SizedBox(
                    width: width * 0.7,
                    child: Text(
                      widget.toDohaya.title ?? "not found",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        decoration: done
                            ? TextDecoration.lineThrough
                            : TextDecoration.none,
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Checkbox(
                        checkColor: Colors.white,
                        activeColor: Colors.blue.shade800,
                        value: done,
                        side:
                            BorderSide(color: done ? Colors.blue : Colors.grey),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        onChanged: (value) {
                          setState(() {
                            done = !done;
                            widget.toDohaya.completed = done;
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
                  'Today ${DateTime.now().hour}:${DateTime.now().minute}',
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
        ),
      ),
    );
  }
}
