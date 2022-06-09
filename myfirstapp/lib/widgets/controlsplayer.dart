  import 'package:flutter/material.dart';

class ControlsPlayer extends StatelessWidget {
  final Function nextSong, previousSong;
  
    const ControlsPlayer({Key? key, required this.nextSong, required this.previousSong, }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget> [
            IconButton( 
                onPressed: () => previousSong(), 
                icon: const Icon(Icons.arrow_back),
                iconSize: 20,
              ),
            IconButton( onPressed: () => {}, 
                icon: const Icon(Icons.menu),
                iconSize: 20,
              ),
            IconButton( onPressed: () => nextSong(), 
               icon: const Icon(Icons.arrow_forward),
               iconSize: 20,
               ),
        ]
      
    );
  }
}