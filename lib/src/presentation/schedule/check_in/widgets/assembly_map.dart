import 'package:biker/src/presentation/schedule/check_in/bloc/check_in_bloc.dart';
import 'package:extensions/context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geo_locator_api/geo_locator_api.dart';

class AssemblyMap extends StatelessWidget {
  const AssemblyMap({
    super.key,
    required this.assemblyLocation,
    required this.points,
    required this.assemblyRadiusMeter,
    required this.userLocation,
    required this.mapController,
    required this.onMapReady,
  });

  final MapController mapController;
  final LatLng assemblyLocation;
  final List<LatLng> points;
  final double assemblyRadiusMeter;
  final LatLng? userLocation;
  final void Function() onMapReady;

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      mapController: mapController,
      options: MapOptions(
        center: assemblyLocation.toLatLng(),
        maxZoom: 18.0,
        onMapReady: onMapReady,
      ),
      children: [
        TileLayer(
          urlTemplate: "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
        ),
        if (points.isNotEmpty)
          PolylineLayer(
            polylines: [
              Polyline(
                points: points.map((e) => e.toLatLng()).toList(),
                color: context.theme.primaryColor,
                isDotted: true,
                strokeWidth: 5.0,
              ),
            ],
          ),
        CircleLayer(
          circles: [
            CircleMarker(
              point: assemblyLocation.toLatLng(),
              radius: assemblyRadiusMeter,
              useRadiusInMeter: true,
              color: context.theme.primaryColor.withOpacity(0.5),
              borderColor: context.theme.primaryColor,
              borderStrokeWidth: 1.2,
            ),
            CircleMarker(
              point: assemblyLocation.toLatLng(),
              radius: assemblyRadiusMeter,
              useRadiusInMeter: false,
              color: context.theme.primaryColor.withOpacity(0.4),
              borderColor: context.theme.primaryColor,
              borderStrokeWidth: 0,
            ),
            if (userLocation != null)
              CircleMarker(
                point: userLocation!.toLatLng(),
                radius: 7,
                useRadiusInMeter: false,
                color: Colors.blue,
                borderColor: Colors.blue.withOpacity(0.4),
                borderStrokeWidth: 50,
              ),
          ],
        ),
        MarkerLayer(
          markers: [
            if (userLocation != null)
              Marker(
                width: 40,
                height: 40,
                point: userLocation!.toLatLng(),
                builder: (ctx) {
                  return Container(
                    margin: const EdgeInsets.all(5.0),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/images/biker_icon.png",
                        ),
                      ),
                    ),
                  );
                },
              ),
          ],
        ),
      ],
    );
  }
}
