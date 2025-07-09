import 'package:flutter/material.dart';

class Atividade2 extends StatelessWidget {
  const Atividade2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('MEU APP')),
      backgroundColor: Colors.blue[100],
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          color: Colors.black,
          child: Align(
            alignment: AlignmentDirectional.center,
            child: Container(
              width: 150,
              height: 150,
              color: Colors.red,
              child: Align(
                alignment: AlignmentDirectional.center,
                child: Container(
                  width: 75,
                  height: 75,
                  color: Colors.blue,
                  child: Align(
                    alignment: AlignmentDirectional.center,
                    child: Container(
                      width: 37,
                      height: 37,
                      color: Colors.yellow,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}