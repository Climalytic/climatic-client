import 'package:client/models/Attribute.dart';
import 'package:flutter/material.dart';

class SliderCard extends StatefulWidget {
  final Attribute attr;

  SliderCard({
    Key key,
    @required this.attr,
  }) : super(key: key);

  @override
  _SliderCardState createState() => _SliderCardState();
}

class _SliderCardState extends State<SliderCard> {
  double _current;

  _SliderCardState() {
    this._current = widget.attr.rangeDefault;
  }

  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(8, 10, 8, 5),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Text(_current.round().toString() + " " + widget.attr.rangeUnit,
              style: Theme.of(context).textTheme.bodyText2),
          Slider(
            value: _current,
            min: widget.attr.rangeStart,
            max: widget.attr.rangeEnd,
            label: _current.round().toString() + " " + widget.attr.rangeUnit,
            onChanged: (newValue) {
              setState(() {
                _current = newValue;
              });
            },
          )
        ],
      ),
    );
  }
}
