import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class VerticalIconButton extends StatelessWidget {
  const VerticalIconButton({Key key, this.icon, this.title, this.onTap})
      : super(key: key);

  final IconData icon;
  final String title;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.white,
          ),
          const SizedBox(
            height: 2.0,
          ),
          Text(
            title,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
