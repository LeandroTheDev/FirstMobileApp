import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {

  final int pontuation;
  final void Function() restart;
  const Resultado(this.pontuation,this.restart, {Key? key}) : super(key: key);

  String get resultText {
    if(pontuation < 8){
      return "Parabens";
    }else if(pontuation < 12){
      return "Maravilhoso";
    }else if(pontuation < 16){
      return "Sensacional";
    }else{
      return "Incrivel";
    }
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text(
            resultText,
            style: const TextStyle(fontSize: 28),
            
          ),
        ),
        TextButton(
          onPressed: restart,
          child: const Text("Reiniciar",
          style: TextStyle(
              fontSize: 18,
              color: Colors.blue,
          ),
        ),
      )],
    );
  }
}
