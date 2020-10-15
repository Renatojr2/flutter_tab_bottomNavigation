import 'package:flutter/widgets.dart';

class SamplePageWidget extends StatelessWidget {
  final IconData _icon;
  final String _text;

  SamplePageWidget(this._icon, this._text);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            _icon,
            size: 100,
          ),
          SizedBox(
            height: 8,
          ),
          Text(_text),
        ],
      ),
    );
  }
}
