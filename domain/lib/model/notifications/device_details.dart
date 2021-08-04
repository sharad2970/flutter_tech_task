import 'package:device_info/device_info.dart';
import 'package:domain/constants/enum/os_type.dart';

class DeviceDetails {
  final String deviceId;
  final String deviceName;
  final String deviceModel;
  final String osVersion;
  final OsType osType;

  DeviceDetails(
      {this.deviceId: "",
      this.deviceName: "",
      this.deviceModel: "",
      this.osVersion: "",
      this.osType: OsType.ANDROID});
}

extension DeviceDetailsExt on AndroidDeviceInfo {
  DeviceDetails mapToDeviceDetails({OsType osType: OsType.ANDROID}) =>
      DeviceDetails(
        deviceModel: this.model ?? '',
        deviceName: this.product ?? '',
        deviceId: this.androidId ?? '',
        osType: osType,
        osVersion: this.version.release ?? '',
      );
}

extension DeviceDetailsDomainExtention on IosDeviceInfo {
  DeviceDetails mapToDeviceDetails({OsType osType: OsType.IOS}) =>
      DeviceDetails(
        deviceModel: this.model ?? '',
        deviceName: this.name ?? '',
        deviceId: this.identifierForVendor ?? '',
        osType: OsType.IOS,
        osVersion: this.systemVersion ?? '',
      );
}
