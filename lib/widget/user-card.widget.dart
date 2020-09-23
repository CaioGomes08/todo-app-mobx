import 'package:flutter/material.dart';
import 'package:todo_app_mobx/components/avatar.widget.dart';
import 'package:todo_app_mobx/controllers/login.controller.dart';
import 'package:todo_app_mobx/user.dart';
import 'package:todo_app_mobx/views/login.view.dart';

class UserCard extends StatelessWidget {
  final controller = new LoginController();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 40,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: new ExactAssetImage('assets/images/notification.png'),
          fit: BoxFit.cover,
          alignment: Alignment.bottomCenter,
        ),
      ),
      width: double.infinity,
      alignment: Alignment.center,
      child: Column(
        children: [
          TDAvatar(
            path: user.picture,
            width: 80,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            user.name,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          Container(
            height: 20,
            child: FlatButton(
              child: Text(
                'Sair',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                controller.logout().then((value) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginView(),
                    ),
                  );
                });
              },
            ),
          ),
          SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
