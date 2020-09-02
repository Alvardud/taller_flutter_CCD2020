import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:taller_flutter_ccd2020/controllers/custom_bottom_sheet_controller.dart';
import 'package:taller_flutter_ccd2020/controllers/loading_controller.dart';
import 'package:taller_flutter_ccd2020/ui/widgets/custom_bottom_sheet.dart';
import 'package:taller_flutter_ccd2020/ui/widgets/loading_widget.dart';
import 'package:taller_flutter_ccd2020/ui/widgets/marker_canvas.dart';

class CameraPage extends StatefulWidget {
  final List<CameraDescription> cameras;

  CameraPage({this.cameras});

  @override
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage>
    with SingleTickerProviderStateMixin {
  CameraController _cameraController;
  LoadingController _controller = LoadingController.instance;
  CustomBottomSheetController _customBottomSheetController;

  @override
  void initState() {
    super.initState();
    _cameraController =
        CameraController(widget.cameras[0], ResolutionPreset.high);
    _cameraController.initialize().then((value) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
    _customBottomSheetController = CustomBottomSheetController(vsync: this)
      ..addListener(() {
        setState(() {});
      });
  }

  Widget CameraMarkers() {
    return Padding(
      padding: EdgeInsets.all(32),
      child: CustomPaint(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: Text(
                    'Capture la fotografía dentro del\ncuadro de enmarque',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ),
            ],
          ),
        ),
        size: Size.infinite,
        painter: MarkerCanvas(),
      ),
    );
  }

  Widget ButtonCamera() {
    return Center(
      child: GestureDetector(
        onTap: () {
          _customBottomSheetController.open();
        },
        child: Container(
          height: 60.0,
          width: 60.0,
          decoration: BoxDecoration(
              color: CupertinoColors.black,
              borderRadius: BorderRadius.circular(30)),
          child: Center(
            child: Icon(
              CupertinoIcons.circle_filled,
              color: CupertinoColors.systemRed,
              size: 40,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: <Widget>[
          CameraPreview(_cameraController),
          CupertinoPageScaffold(
            backgroundColor: Color(0x00000000),
            navigationBar: CupertinoNavigationBar(
              trailing: GestureDetector(
                onTap: () {},
                child: Text(
                  'Galeria',
                  style:
                      TextStyle(color: CupertinoTheme.of(context).primaryColor),
                ),
              ),
              middle: Text('Captura una fotografía'),
            ),
            child: SafeArea(
                child: Column(
              children: <Widget>[
                Flexible(flex: 3, child: CameraMarkers()),
                Flexible(flex: 1, child: ButtonCamera())
              ],
            )),
          ),
          ValueListenableBuilder(
            valueListenable: _controller.isLoading,
            builder: (context, value, child) {
              return value ? LoadingWidget() : Container();
            },
          ),
          Transform.translate(
            offset: Offset(
                0.0,
                MediaQuery.of(context).size.height -
                    (400 * _customBottomSheetController.value)),
            child: CustomBottomSheet(
              close: () {
                _customBottomSheetController.close();
              },
            ),
          )
        ],
      ),
    );
  }
}

//Container
//SizedBox
