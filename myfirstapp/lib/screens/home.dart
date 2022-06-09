//mis pantallas de la app
import 'package:flutter/material.dart';
import 'package:myfirstapp/widgets/controlsplayer.dart';
import 'package:myfirstapp/widgets/status_song.dart';

class HomeScreen extends StatefulWidget {
    const HomeScreen({Key? key}) : super(key: key);

    @override
       State<HomeScreen> createState() => _HomeScreenState();

}
/*
 * pista: te falta correr un comando de flutter
 */
/*
  Widget build(BuildContext context) {
    return Column(
        children: <Widget> [
            IconButton( onPressed: () => {}, icon: const Icon(icons  ))
        ]
      
    );
  }
*/

class _HomeScreenState extends State<HomeScreen> {
  bool isPlaying = false;
  String description = 'Press to play';
  IconData icon = Icons.play_arrow;

  //funciones
  //funcion para que cuando presione, sea play
  void play(){
    isPlaying = true;
    description = 'Press to pause';
    icon = Icons.pause; 
    setState(() {});
  }

  void pause(){
    isPlaying = false;
    description = 'Press to restart';
    icon = Icons.play_arrow;
    setState(() /*cambio de estado*/ {});
  }

  void playnextSong(){ 
    description = 'Next song';
    setState(() /*cambio de estado*/ {});
  }

  void playPreviusSong(){ 
    description = 'Previous song';
    setState(() /*cambio de estado*/ {});
  }
  

  @override
  //para obtener informacion del widger principal
  Widget build(BuildContext context){
    //scaffold me sirve como lienzo para dibujar
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      //la parte central es el body
      body: StatusSong( 
        descriptionSong: description,
        iconStatus: icon,
        isPlaying: isPlaying,
        play: play,
        pause: pause
      ),
      bottomNavigationBar: ControlsPlayer( 
        nextSong: playnextSong,
        previousSong: playPreviusSong
      ), 
    );
  }
  

}