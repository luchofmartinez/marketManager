// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

import 'package:market_manager/models/user.dart';

class ProfileModule extends StatelessWidget {
  const ProfileModule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: ProfileBodyWidget(
        onClicked: () {},
      ),
    );
  }
}

class ProfileBodyWidget extends StatelessWidget {
  final VoidCallback onClicked;

  const ProfileBodyWidget({Key? key, required this.onClicked})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
      children: [
        profilePhoto(),
        const SizedBox(height: 25),
        const buildUsername(),
        const SizedBox(height: 10),
        const buildUserEmailText(),
        const SizedBox(height: 25),
        const buildUserInfo()
      ],
    );
  }

  Widget buildCircle(
          {required Widget child, required double all, required Color color}) =>
      ClipOval(
        child: Container(
          color: color,
          padding: EdgeInsets.all(all),
          child: child,
        ),
      );

  Widget profilePhoto() => Center(
        child: Stack(children: [
          ClipOval(
              child: Material(
            color: Colors.transparent,
            child: Ink.image(
              image: const NetworkImage(
                  "https://media-exp1.licdn.com/dms/image/C4D03AQHg8tuLQoxojA/profile-displayphoto-shrink_400_400/0/1631023143114?e=1675296000&v=beta&t=vYdMvcEi8u1I1iyyOvLY6EK0CKny2gd_xjitN6zeVog"),
              fit: BoxFit.cover,
              width: 128,
              height: 128,
              child: InkWell(onTap: onClicked),
            ),
          )),
          Positioned(
              bottom: 0,
              right: 1,
              child: buildCircle(
                color: Colors.white,
                all: 4,
                child: buildCircle(
                    all: 8,
                    color: Colors.blue,
                    child:
                        const Icon(Icons.edit, color: Colors.white, size: 20)),
              ))
        ]),
      );
}

class buildUserInfo extends StatelessWidget {
  const buildUserInfo({super.key}); 

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: TextEditingController(text: "3515123456"),
      decoration: const InputDecoration(
          labelText: "Teléfono",
          enabled: false,
          icon: Icon(Icons.phone),
          prefixIconColor: Colors.blueAccent,
          filled: true),
      maxLength: 10,
    );
  }
}

class buildUserEmailText extends StatelessWidget {
  const buildUserEmailText({super.key}); 

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text("luchofmartinez@gmail.com",
            style: TextStyle(color: Colors.grey, fontSize: 12)));
  }
}

class buildUsername extends StatelessWidget {
  const buildUsername({super.key}); 

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text(
      "Luciano Martinez",
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
    ));
  }
}
