import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app_mobx/controllers/todo.controller.dart';
import 'package:todo_app_mobx/stores/app.store.dart';
import 'package:todo_app_mobx/views/create-todo.view.dart';
import 'package:todo_app_mobx/widget/navbar.widget.dart';
import 'package:todo_app_mobx/widget/todo-list.widget.dart';
import 'package:todo_app_mobx/widget/user-card.widget.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final store = Provider.of<AppStore>(context);
    final controller = new TodoController(store);

    if (store.currentState == "none") {
      controller.changeSelection("today");
    }
    return Scaffold(
      body: Column(
        children: [
          UserCard(),
          Navbar(),
          Expanded(
            child: TodoList(),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CreateTodoView(),
            ),
          );
        },
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }
}
