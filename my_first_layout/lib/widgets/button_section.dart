
import 'package:flutter/material.dart';


class ButtonSection extends StatefulWidget {
  const ButtonSection({super.key});

  @override
  State<ButtonSection> createState() => _ButtonSectionState();
}

class _ButtonSectionState extends State<ButtonSection> {

  void _showScaffold(String message) {
     final snackBar = SnackBar(
      content: Text(message),
      action: SnackBarAction(
        label: 'Cerrar',
        onPressed: () {
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
        },
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
  
  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;
    return (Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL', 'Llamando...'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE', 'Buscando una ruta...'),
        _buildButtonColumn(color, Icons.share, 'SHARE','Compartiendo a...'),
      ],
    ));
  }

  Column _buildButtonColumn(Color color, IconData icon, String label, String message) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MaterialButton(
          onPressed: () => {
            _showScaffold(message)
          },
          child: Column(
            children: <Widget>[
              Icon(icon, color: color),
              Container(
                margin: const EdgeInsets.only(top: 8),
                child: Text(
                  label,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: color,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
