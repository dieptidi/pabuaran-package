part of '../pabuaran.dart';

class ButtonUngu extends StatelessWidget {
  final Function onPressed;
  final String text;

  ButtonUngu({@required this.onPressed, @required this.text});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: this.onPressed,
      child: Text(
        this.text,
        style: TextStyle(color: Colors.white),
      ),
      color: Colors.red,
    );
  }
}
