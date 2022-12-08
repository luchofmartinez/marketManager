import 'package:flutter/material.dart';
import 'package:market_manager/modules/shoppingModule/bloc/cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class _ShoppingListButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  final Color color;
  final String tag;

  const _ShoppingListButton(
      {super.key,
      required this.tag,
      required this.onPressed,
      required this.icon,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        heroTag: tag,
        elevation: 20.0,
        splashColor: Colors.indigo,
        backgroundColor: color,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
        child: Icon(icon, size: 30),
        onPressed: onPressed);
  }
}

class AddShoppingListButton extends StatelessWidget {
  const AddShoppingListButton({super.key});

  @override
  Widget build(BuildContext context) {
    return _ShoppingListButton(
        tag: "Add Shopping List",
        onPressed: () => _addShoppingList(context),
        icon: Icons.add,
        color: Colors.green);
  }

  void _addShoppingList(BuildContext context) {
    BlocProvider.of<ShoppingCubit>(context).addShoppingList();
  }
}

class CancelSelectionButton extends StatelessWidget {
  const CancelSelectionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return _ShoppingListButton(
      tag: "Cancel Selection",
      color: Colors.black12,
      icon: Icons.clear,
      onPressed: () => {},
    );
  }
}

class DeleteShoppingListButton extends StatelessWidget {
  const DeleteShoppingListButton({super.key});

  @override
  Widget build(BuildContext context) {
    return _ShoppingListButton(
        tag: "Delete a Shopping List",
        onPressed: () => {},
        icon: Icons.delete_forever,
        color: Colors.redAccent);
  }
}

class EditShoppingListButton extends StatelessWidget {
  const EditShoppingListButton({super.key});

  @override
  Widget build(BuildContext context) {
    return _ShoppingListButton(
        tag: "Edit a Shopping List",
        onPressed: () => {},
        icon: Icons.edit,
        color: Colors.lightBlue);
  }
}

class ShoppingListActionButton extends StatelessWidget {
  final List<Widget> buttons;

  const ShoppingListActionButton._({super.key, required this.buttons});

  factory ShoppingListActionButton.Select() {
    var buttons = [
      DeleteShoppingListButton(),
      const SizedBox(height: 15),
      CancelSelectionButton(),
      const SizedBox(height: 15),
      EditShoppingListButton(),
    ];
    return ShoppingListActionButton._(buttons: buttons);
  }

  factory ShoppingListActionButton.noSelect() {
    var buttons = [AddShoppingListButton()];
    return ShoppingListActionButton._(buttons: buttons);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: buttons,
      ),
    );
  }
}
