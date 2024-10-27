import 'package:todo/model/todohaya.dart';

ToDohaya toDohaya = ToDohaya(
    id: 1,
    title: 'Flutter Course',
    description: 'Learn Software Design Patterns',
    done: false,
    dueDate: DateTime.now().add(const Duration(days: 5)));

ToDohaya toDohaya2 = ToDohaya(
    id: 2,
    title: 'Dart Course',
    description: 'Learn BloC',
    done: false,
    dueDate: DateTime.now().add(const Duration(days: 2)));

ToDohaya toDohaya3 = ToDohaya(
    id: 3,
    title: 'Firebase Course',
    description: 'Learn Firebase',
    done: false,
    dueDate: DateTime.now());

ToDohaya toDohaya4 = ToDohaya(
    id: 4,
    title: 'Flutter Course',
    description: 'Learn Flutter',
    done: false,
    dueDate: DateTime.now().subtract(const Duration(days: 5)));

ToDohaya toDohaya5 = ToDohaya(
    id: 5,
    title: 'Flutter Course',
    description: 'Learn Dart',
    done: false,
    dueDate: DateTime.now().subtract(const Duration(days: 11)));


List<ToDohaya> toDoList = [toDohaya, toDohaya2, toDohaya3, toDohaya4, toDohaya5];