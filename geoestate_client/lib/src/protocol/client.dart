/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dart:async' as _i2;
import 'package:geoestate_client/src/protocol/bank.dart' as _i3;
import 'package:geoestate_client/src/protocol/dataset.dart' as _i4;
import 'package:geoestate_client/src/protocol/marker.dart' as _i5;
import 'package:serverpod_auth_client/module.dart' as _i6;
import 'protocol.dart' as _i7;

/// {@category Endpoint}
class EndpointBanks extends _i1.EndpointRef {
  EndpointBanks(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'banks';

  _i2.Future<List<_i3.Bank>> getAllBanks() =>
      caller.callServerEndpoint<List<_i3.Bank>>(
        'banks',
        'getAllBanks',
        {},
      );

  _i2.Future<void> createBank(_i3.Bank bank) => caller.callServerEndpoint<void>(
        'banks',
        'createBank',
        {'bank': bank},
      );

  _i2.Future<void> deleteBank(_i3.Bank bank) => caller.callServerEndpoint<void>(
        'banks',
        'deleteBank',
        {'bank': bank},
      );
}

/// {@category Endpoint}
class EndpointDatasets extends _i1.EndpointRef {
  EndpointDatasets(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'datasets';

  _i2.Future<List<_i4.Dataset>> getAllDatasets() =>
      caller.callServerEndpoint<List<_i4.Dataset>>(
        'datasets',
        'getAllDatasets',
        {},
      );

  _i2.Future<void> createDataset(_i4.Dataset dataset) =>
      caller.callServerEndpoint<void>(
        'datasets',
        'createDataset',
        {'dataset': dataset},
      );

  _i2.Future<void> updateDataset(_i4.Dataset dataset) =>
      caller.callServerEndpoint<void>(
        'datasets',
        'updateDataset',
        {'dataset': dataset},
      );

  _i2.Future<void> deleteDataset(_i4.Dataset dataset) =>
      caller.callServerEndpoint<void>(
        'datasets',
        'deleteDataset',
        {'dataset': dataset},
      );
}

/// {@category Endpoint}
class EndpointExample extends _i1.EndpointRef {
  EndpointExample(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'example';

  _i2.Future<String> hello(String name) => caller.callServerEndpoint<String>(
        'example',
        'hello',
        {'name': name},
      );
}

/// {@category Endpoint}
class EndpointMarkers extends _i1.EndpointRef {
  EndpointMarkers(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'markers';

  _i2.Future<List<_i5.Marker>> getAllMarkers() =>
      caller.callServerEndpoint<List<_i5.Marker>>(
        'markers',
        'getAllMarkers',
        {},
      );

  _i2.Future<void> createMarker(_i5.Marker marker) =>
      caller.callServerEndpoint<void>(
        'markers',
        'createMarker',
        {'marker': marker},
      );

  _i2.Future<void> deleteMarker(_i5.Marker marker) =>
      caller.callServerEndpoint<void>(
        'markers',
        'deleteMarker',
        {'marker': marker},
      );
}

class _Modules {
  _Modules(Client client) {
    auth = _i6.Caller(client);
  }

  late final _i6.Caller auth;
}

class Client extends _i1.ServerpodClient {
  Client(
    String host, {
    dynamic securityContext,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
    Duration? streamingConnectionTimeout,
    Duration? connectionTimeout,
  }) : super(
          host,
          _i7.Protocol(),
          securityContext: securityContext,
          authenticationKeyManager: authenticationKeyManager,
          streamingConnectionTimeout: streamingConnectionTimeout,
          connectionTimeout: connectionTimeout,
        ) {
    banks = EndpointBanks(this);
    datasets = EndpointDatasets(this);
    example = EndpointExample(this);
    markers = EndpointMarkers(this);
    modules = _Modules(this);
  }

  late final EndpointBanks banks;

  late final EndpointDatasets datasets;

  late final EndpointExample example;

  late final EndpointMarkers markers;

  late final _Modules modules;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'banks': banks,
        'datasets': datasets,
        'example': example,
        'markers': markers,
      };

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup =>
      {'auth': modules.auth};
}
