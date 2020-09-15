import 'dart:io';
import 'dart:typed_data';
import 'package:downloads_path_provider/downloads_path_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share/share.dart';

class CustomBottomSheet extends StatelessWidget {
  final Function close;
  final Uint8List image;

  CustomBottomSheet({this.close, this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 400.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
        color: Color(0xff2C2C2E),
      ),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Resultado'),
                GestureDetector(
                  onTap: close,
                  child: Text(
                    'Salir',
                    style: TextStyle(
                        color: CupertinoTheme.of(context).primaryColor),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Center(
              child: image != null
                  ? Container(
                      height: 250.0,
                      width: 250.0,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: MemoryImage(image), fit: BoxFit.cover)),
                    )
                  : Container(),
            ),
          ),
          CupertinoTabBar(
            onTap: (int value)async {
              DateTime now = DateTime.now();
              if(value==0){
                //final directory = await DownloadsPathProvider.downloadsDirectory;
                final directory = await getExternalStorageDirectory();
                print(directory.path);
                File file = File("${directory.path}/${now.toString()}-firma.png");
                await file.writeAsBytes(image);
                showCupertinoDialog(context: context, builder: (context){
                  return CupertinoAlertDialog(
                    title: Text('Descarga Completa'),
                    content: Text('Se descargo la imagen de forma satisfactoria'),
                    actions: <Widget>[
                      CupertinoDialogAction(
                        child: Text('Aceptar'),
                        onPressed: (){
                          Navigator.pop(context);
                        },
                      )
                    ],
                  );
                });
              }else{
                final directory = await getExternalStorageDirectory();
                File file = File("${directory.path}/${now.toString()}-firma.png");
                await file.writeAsBytes(image);
                Share.shareFiles(["${directory.path}/${now.toString()}-firma.png"]);
              }
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.folder_solid),
                  title: Text('Descargar')),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.share), title: Text('Compartir'))
            ],
          )
        ],
      ),
    );
  }
}
