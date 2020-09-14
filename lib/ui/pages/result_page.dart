import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:taller_flutter_ccd2020/controllers/loading_controller.dart';
import 'package:taller_flutter_ccd2020/services/process_image_service.dart';
import 'package:taller_flutter_ccd2020/services/web_services.dart';
import 'package:taller_flutter_ccd2020/ui/widgets/loading_widget.dart';

class ResultPage extends StatelessWidget {
  LoadingController _controller = LoadingController.instance;

  File image;

  ResultPage({this.image});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(
            middle: Text('Resultado'),
            leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(CupertinoIcons.back),
            ),
          ),
          child: Column(
            children: <Widget>[
              SizedBox(height: 68),
              Expanded(child: _Body(image: image)),
            ],
          ),
        ),
        ValueListenableBuilder(
          valueListenable: _controller.isLoading,
          builder: (context, value, child) {
            return value ? LoadingWidget() : Container();
          },
        ),
      ],
    );
  }
}

class _Body extends StatefulWidget {
  File image;

  _Body({this.image});

  @override
  __BodyState createState() => __BodyState();
}

class __BodyState extends State<_Body> {
  Uint8List result;

  Widget imageContainer(Uint8List image) {
    return Container(
      height: 300.0,
      width: 300.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          image: DecorationImage(fit: BoxFit.cover, image: MemoryImage(image))),
    );
  }

  Widget imageResultContainer() {
    return Column(
      children: <Widget>[
        imageContainer(result),
        SizedBox(height: 16.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CupertinoButton(
              color: CupertinoTheme.of(context).primaryColor,
              child: Text(
                'Descargar',
                style: TextStyle(color: CupertinoColors.white),
              ),
              onPressed: () {},
            ),
            CupertinoButton(
              child: Text('Compartir'),
              onPressed: () {},
            )
          ],
        )
      ],
    );
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              imageContainer(widget.image.readAsBytesSync()),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: CupertinoButton(
                  onPressed: () async {
                    LoadingController.instance.loading();
                    LoadingController.instance.changeText('Procesando imagen');
                    await Future.delayed(Duration(seconds: 2), () {});
                    setState(() {});
                    LoadingController.instance.close();
                  },
                  child: GestureDetector(
                    onTap: () async {
                      LoadingController.instance.loading();
                      /*Uint8List decode = await widget.image.readAsBytes();
                      final imgb64 = base64Encode(decode);
                      String resultService = await convertPhoto(imgb64);
                      decode = base64Decode(resultService);*/

                      Uint8List decode =
                          await processImage(await widget.image.readAsBytes());

                      LoadingController.instance.close();
                      setState(() {
                        result = decode;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Aplicar Filtro'),
                    ),
                  ),
                ),
              ),
              result == null ? Container() : imageResultContainer()
            ],
          ),
        ));
  }
}
