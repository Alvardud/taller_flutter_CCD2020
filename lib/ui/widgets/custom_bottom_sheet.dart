import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomBottomSheet extends StatelessWidget {
  final Function close;
  CustomBottomSheet({this.close});
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
              child: Container(
                height: 250.0,
                width: 250.0,
                decoration: BoxDecoration(
                    color: CupertinoColors.white,
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://sumedico.blob.core.windows.net/images/2020/03/17/cuidadosgatobebe_2-focus-min0.07-0.45-983-557.jpg"),
                        fit: BoxFit.cover)),
              ),
            ),
          ),
          CupertinoTabBar(
            onTap: (int value) {
              //logica descarga y compartir
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
