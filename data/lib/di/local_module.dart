import 'package:data/db/floor/database_properties.dart';
import 'package:data/db/floor/floor_db_service.dart';
import 'package:data/source/contact/contact_data_source.dart';
import 'package:data/source/contact/local/contact_local_ds_impl.dart';
import 'package:data/source/user/local/user_local_ds_impl.dart';
import 'package:data/source/user/user_data_sources.dart';
import 'package:device_info/device_info.dart';
import 'package:domain/model/notifications/device_info_helper.dart';
import 'package:riverpod/riverpod.dart';

final floorAppDatabase = Provider<FloorDbService>(
  (ref) => FloorDbService(
    DatabaseProperties.DB_NAME,
  ),
);

var userLocalDSProvider = Provider<UserLocalDS>(
  (ref) => UserLocalDSImpl(
    ref.read(floorAppDatabase),
  ),
);

var contactLocalDSProvider =
    Provider<ContactLocalDS>((ref) => ContactLocalDSImpl());

var deviceInfoPluginProvider = Provider<DeviceInfoPlugin>(
  (ref) => DeviceInfoPlugin(),
);

var deviceInfoHelperProvider = Provider<DeviceInfoHelper>(
  (ref) => DeviceInfoHelper(ref.read(deviceInfoPluginProvider)),
);
