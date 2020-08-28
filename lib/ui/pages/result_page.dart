import 'package:flutter/cupertino.dart';
import 'package:taller_flutter_ccd2020/controllers/loading_controller.dart';
import 'package:taller_flutter_ccd2020/ui/widgets/loading_widget.dart';

class ResultPage extends StatelessWidget {
  LoadingController _controller = LoadingController.instance;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(
            middle: Text('Resultado'),
            leading: GestureDetector(
              onTap: () {
                print('se presiono el boton');
              },
              child: Icon(CupertinoIcons.back),
            ),
          ),
          child: Column(
            children: <Widget>[
              SizedBox(height: 68),
              Expanded(child: _Body()),
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
  @override
  __BodyState createState() => __BodyState();
}

class __BodyState extends State<_Body> {
  String resultUrl;

  Widget imageContainer(String url) {
    return Container(
      height: 300.0,
      width: 300.0,
      decoration: BoxDecoration(
          color: CupertinoColors.white,
          borderRadius: BorderRadius.circular(16.0),
          image: DecorationImage(fit: BoxFit.cover, image: NetworkImage(url))),
    );
  }

  Widget imageResultContainer() {
    return Column(
      children: <Widget>[
        imageContainer(
            "https://sumedico.blob.core.windows.net/images/2020/03/17/cuidadosgatobebe_2-focus-min0.07-0.45-983-557.jpg"),
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
    resultUrl = "";
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
              imageContainer(
                  "https://www.purina-latam.com/sites/g/files/auxxlc391/files/styles/facebook_share/public/Que_debes_saber_antes_de_adoptar_un_gatito.jpg?itok=btO4gas0"),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: CupertinoButton(
                  onPressed: ()async {
                    LoadingController.instance.loading();
                    LoadingController.instance.changeText('Procesando imagen');
                    await Future.delayed(Duration(seconds: 2),(){});
                    setState(() {
                      resultUrl = "imagen con resultado";
                    });
                    LoadingController.instance.close();
                  },
                  child: Text('Aplicar Filtro'),
                ),
              ),
              resultUrl == "" ? Container() : imageResultContainer()
            ],
          ),
        ));
  }
}
