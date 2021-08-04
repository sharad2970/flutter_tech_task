import 'package:device_info/device_info.dart';

class DeviceInfoHelper {
  final DeviceInfoPlugin _deviceInfoPlugin;

  DeviceInfoHelper(this._deviceInfoPlugin);

  Future<AndroidDeviceInfo> getAndroidDeviceInfo() {
    return _deviceInfoPlugin.androidInfo;
  }

  Future<IosDeviceInfo> getIosDeviceDetails() {
    return _deviceInfoPlugin.iosInfo;
  }
}