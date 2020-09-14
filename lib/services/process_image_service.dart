import 'dart:typed_data';
import 'package:opencv/core/imgproc.dart';
import 'package:image/image.dart' as I;

Future<Uint8List> processImage(Uint8List image) async {
  Uint8List result;

  // procesos con open cv
  //capa con gaussian blur
  final blur = await ImgProc.gaussianBlur(image, [45, 45], 0);
  //result = blur;

  //threshold
  final threshold = await ImgProc.adaptiveThreshold(blur, 255,
      ImgProc.adaptiveThreshGaussianC, ImgProc.threshBinaryInv, 55, 4);

  //erode
  final erode = await ImgProc.erode(threshold, [1, 1]);

  //color
  final color = await ImgProc.cvtColor(erode, ImgProc.colorBGR2BGRA);
  result = color;

  //----------------------------------------------------------------------

  I.Image transparent;
  I.Image imageAux = I.decodeImage(erode);
  I.Image original = I.decodeImage(image);

  Uint8List listTransparent = Uint8List.fromList(<int>[
    0x89,
    0x50,
    0x4E,
    0x47,
    0x0D,
    0x0A,
    0x1A,
    0x0A,
    0x00,
    0x00,
    0x00,
    0x0D,
    0x49,
    0x48,
    0x44,
    0x52,
    0x00,
    0x00,
    0x00,
    0x01,
    0x00,
    0x00,
    0x00,
    0x01,
    0x08,
    0x06,
    0x00,
    0x00,
    0x00,
    0x1F,
    0x15,
    0xC4,
    0x89,
    0x00,
    0x00,
    0x00,
    0x0A,
    0x49,
    0x44,
    0x41,
    0x54,
    0x78,
    0x9C,
    0x63,
    0x00,
    0x01,
    0x00,
    0x00,
    0x05,
    0x00,
    0x01,
    0x0D,
    0x0A,
    0x2D,
    0xB4,
    0x00,
    0x00,
    0x00,
    0x00,
    0x49,
    0x45,
    0x4E,
    0x44,
    0xAE,
  ]);

  transparent = I.decodeImage(listTransparent);
  transparent =
      I.copyResize(transparent, width: original.width, height: original.height);

  for (int i = 0; i < imageAux.width; i++) {
    for (int j = 0; j < imageAux.height; j++) {
      if (I.getRed(imageAux.getPixel(i, j)) != 0) {
        final r = I.getRed(original.getPixel(i, j));
        final g = I.getGreen(original.getPixel(i, j));
        final b = I.getBlue(original.getPixel(i, j));

        transparent.setPixelRgba(i, j, r, g, b);
      }
    }
  }

  result = Uint8List.fromList(I.encodePng(transparent));

  return result;
}
