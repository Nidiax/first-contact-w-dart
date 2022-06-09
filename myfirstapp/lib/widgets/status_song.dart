import 'package:flutter/material.dart';

//widget
class StatusSong extends StatelessWidget {
    //declarar variables
    final bool isPlaying;
    final String descriptionSong;
    final IconData iconStatus;
    //habla las funciones de la clase (como el using en c#)
    final Function play, pause;

//constructor -- se llamará igual que widget
//lo importante es que el constructor reciba los parametros que necesita
  const StatusSong({Key? key,
     required this.descriptionSong,
     required this.iconStatus,
     required this.isPlaying,
     required this.play,
     required this.pause,
  }) : super(key: key); 
  
//construye el widget / metodo
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
                IconButton(
                    //funcion de flecha, como el if
                        //si isPlaying es true, entonces play será false
                    onPressed: () => isPlaying ? pause() : play(),
                    icon: Icon(iconStatus),
                    iconSize: 200,
                ),
                //ponle un estilo a la funcion descriptionSong
                Text(descriptionSong, style: TextStyle(fontSize: 20, color: Colors.redAccent))
            ]
        )
    );
  }
}