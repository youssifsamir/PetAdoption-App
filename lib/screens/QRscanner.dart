//packages
import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class QRscanner extends StatelessWidget {
  static final routeName = './qrScanner.dart';
  MobileScannerController cameraController = MobileScannerController();

  bool _screenOpened = false;

  @override
  Widget build(BuildContext context) {
    void _foundQR(Barcode qrCode, MobileScannerArguments? args) {
      if (!_screenOpened) {
        final String code = qrCode.rawValue ?? "---";
        debugPrint('QRcode Found! $code');
        _screenOpened = true;
        Navigator.of(context).pop();
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('QR SCANNER'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: MobileScanner(
        allowDuplicates: false,
        controller: cameraController,
        onDetect: _foundQR,
      ),
    );
  }
}
