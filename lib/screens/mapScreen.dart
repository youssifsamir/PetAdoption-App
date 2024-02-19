//packages
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreen();
}

class _MapScreen extends State<MapScreen> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _zeytinCity = CameraPosition(
    target: LatLng(
      41.03005742820331,
      28.902752940710336,
    ),
    zoom: 12,
  );

  static const Marker _zeytinMarker = Marker(
    markerId: MarkerId('_zeytin'),
    infoWindow: InfoWindow(title: 'Zeytinburnu Belediyesi Hayvan Barınaği'),
    icon: BitmapDescriptor.defaultMarker,
    position: LatLng(
      40.990145,
      28.896266,
    ),
  );
  static const Marker _cavatpasaMarker = Marker(
    markerId: MarkerId('cavatpasa'),
    infoWindow: InfoWindow(title: 'Cevatpaşa hayvan barınağı'),
    icon: BitmapDescriptor.defaultMarker,
    position: LatLng(
      41.06881563673815,
      28.881535348425807,
    ),
  );
  static const Marker _bagcilarMarker = Marker(
    markerId: MarkerId('_bagcilar'),
    infoWindow:
        InfoWindow(title: 'Bağcılar Hayvan Barınağı ve Müşahade Merkezi'),
    icon: BitmapDescriptor.defaultMarker,
    position: LatLng(
      41.06420224332019,
      28.81535431468895,
    ),
  );
  static const Marker _yedikuleMarker = Marker(
    markerId: MarkerId('_yedikul'),
    infoWindow: InfoWindow(title: 'Yedikule Animal Shelter'),
    icon: BitmapDescriptor.defaultMarker,
    position: LatLng(
      40.99061214734131,
      28.921585568660692,
    ),
  );
  static const Marker _bakirkoyMarker = Marker(
    markerId: MarkerId('_bakrikoy'),
    infoWindow: InfoWindow(title: 'Bakırköy Belediyesi Hayvan Barınağı'),
    icon: BitmapDescriptor.defaultMarker,
    position: LatLng(
      40.981258170219576,
      28.872787699897202,
    ),
  );

  static const CameraPosition _zeytin = CameraPosition(
    bearing: 192.8334901395799,
    target: LatLng(
      40.990145,
      28.896266,
    ),
    tilt: 59.440717697143555,
    zoom: 19.151926040649414,
  );
  static const CameraPosition _cavatpasa = CameraPosition(
    bearing: 192.8334901395799,
    target: LatLng(
      41.06881563673815,
      28.881535348425807,
    ),
    tilt: 59.440717697143555,
    zoom: 19.151926040649414,
  );
  static const CameraPosition _bagcilar = CameraPosition(
    bearing: 192.8334901395799,
    target: LatLng(
      41.06420224332019,
      28.81535431468895,
    ),
    tilt: 59.440717697143555,
    zoom: 19.151926040649414,
  );
  static const CameraPosition _yedikule = CameraPosition(
    bearing: 192.8334901395799,
    target: LatLng(
      40.99061214734131,
      28.921585568660692,
    ),
    tilt: 59.440717697143555,
    zoom: 19.151926040649414,
  );
  static const CameraPosition _bakirkoy = CameraPosition(
    bearing: 192.8334901395799,
    target: LatLng(
      40.981258170219576,
      28.872787699897202,
    ),
    tilt: 59.440717697143555,
    zoom: 19.151926040649414,
  );

  var icon = Icons.arrow_drop_up;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          GoogleMap(
            myLocationButtonEnabled: false,
            mapType: MapType.normal,
            markers: {
              _zeytinMarker,
              _bagcilarMarker,
              _bakirkoyMarker,
              _cavatpasaMarker,
              _yedikuleMarker,
            },
            initialCameraPosition: _zeytinCity,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Container(
                height: 50,
                color: Colors.black87,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const <Widget>[
                    SizedBox(width: 10),
                    Icon(
                      Icons.location_on,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Tap to help',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(width: 40),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: PopupMenuButton(
              offset: const Offset(0, -355),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: Colors.black87,
              icon: const Icon(
                Icons.arrow_drop_up,
                size: 32,
                color: Colors.white,
              ),
              itemBuilder: (_) => [
                PopupMenuItem(
                  onTap: () => _gotoZeytin(),
                  height: 55,
                  child: Center(
                    child: Text('Behlül needs a warm home',
                        style: Theme.of(context).textTheme.headlineSmall),
                  ),
                ),
                PopupMenuItem(
                  onTap: () => _gotoCava(),
                  height: 55,
                  child: Center(
                    child: Text('Max is not feeling well',
                        style: Theme.of(context).textTheme.headlineSmall),
                  ),
                ),
                PopupMenuItem(
                  onTap: () => _gotoYedi(),
                  height: 55,
                  child: Center(
                    child: Text("Bellaa's food supply is running low",
                        style: Theme.of(context).textTheme.headlineSmall),
                  ),
                ),
                PopupMenuItem(
                  onTap: () => _gotobagi(),
                  height: 55,
                  child: Center(
                    child: Text('Memao needs some medicens',
                        style: Theme.of(context).textTheme.headlineSmall),
                  ),
                ),
                PopupMenuItem(
                  onTap: () => _gotobaka(),
                  height: 55,
                  child: Center(
                    child: Text('Billy needs blankets',
                        style: Theme.of(context).textTheme.headlineSmall),
                  ),
                ),
                PopupMenuItem(
                  onTap: () => _gotoYedi(),
                  height: 55,
                  child: Center(
                    child: Text('Osman needs a dog wheelchair',
                        style: Theme.of(context).textTheme.headlineSmall),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Future<void> _gotoZeytin() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_zeytin));
  }

  Future<void> _gotoCava() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_cavatpasa));
  }

  Future<void> _gotobaka() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_bakirkoy));
  }

  Future<void> _gotobagi() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_bagcilar));
  }

  Future<void> _gotoYedi() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_yedikule));
  }
}
