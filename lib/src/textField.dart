part of '../pabuaran.dart';

class CustomTextField extends StatelessWidget {
  final List<TextEditingController> controllers;
  final int count;
  final List<TextInputType> inputType;
  final List<IconData> icon;
  final List<String> hint;
  final List<String> label;
  final List<String> suffix;

  CustomTextField(
      {@required this.controllers,
      @required this.count,
      @required this.inputType,
      @required this.hint,
      @required this.icon,
      @required this.label,
      @required this.suffix});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.0),
      child: new Column(children: _listOfTextField()),
    );
  }

  List<Widget> _listOfTextField() {
    return [
      for (var i = 0; i < this.count; i++)
        _buildTextField(this.hint[i], this.label[i], this.suffix[i],
            this.inputType[i], this.controllers[i], this.icon[i])
    ];
  }

  Widget _buildTextField(String hint, String label, String suffix,
      TextInputType input, TextEditingController controller, IconData icon) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: new TextField(
        controller: controller,
        keyboardType: input,
        decoration: new InputDecoration(
            border: new OutlineInputBorder(
                borderSide: new BorderSide(color: Colors.teal)),
            hintText: hint,
            // helperText: 'Keep it short, this is just a demo.',
            labelText: label,
            prefixIcon: new Icon(
              icon,
              color: Colors.green,
            ),
            prefixText: ' ',
            suffixText: suffix,
            suffixStyle: const TextStyle(color: Colors.green)),
      ),
    );
  }
}
