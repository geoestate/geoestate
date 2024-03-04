/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/banks_endpoint.dart' as _i2;
import '../endpoints/datasets_endpoint.dart' as _i3;
import '../endpoints/example_endpoint.dart' as _i4;
import '../endpoints/markers_endpoint.dart' as _i5;
import 'package:geoestate_server/src/generated/bank.dart' as _i6;
import 'package:geoestate_server/src/generated/dataset.dart' as _i7;
import 'package:geoestate_server/src/generated/marker.dart' as _i8;
import 'package:serverpod_auth_server/module.dart' as _i9;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'banks': _i2.BanksEndpoint()
        ..initialize(
          server,
          'banks',
          null,
        ),
      'datasets': _i3.DatasetsEndpoint()
        ..initialize(
          server,
          'datasets',
          null,
        ),
      'example': _i4.ExampleEndpoint()
        ..initialize(
          server,
          'example',
          null,
        ),
      'markers': _i5.MarkersEndpoint()
        ..initialize(
          server,
          'markers',
          null,
        ),
    };
    connectors['banks'] = _i1.EndpointConnector(
      name: 'banks',
      endpoint: endpoints['banks']!,
      methodConnectors: {
        'getAllBanks': _i1.MethodConnector(
          name: 'getAllBanks',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['banks'] as _i2.BanksEndpoint).getAllBanks(session),
        ),
        'createBank': _i1.MethodConnector(
          name: 'createBank',
          params: {
            'bank': _i1.ParameterDescription(
              name: 'bank',
              type: _i1.getType<_i6.Bank>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['banks'] as _i2.BanksEndpoint).createBank(
            session,
            params['bank'],
          ),
        ),
        'deleteBank': _i1.MethodConnector(
          name: 'deleteBank',
          params: {
            'bank': _i1.ParameterDescription(
              name: 'bank',
              type: _i1.getType<_i6.Bank>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['banks'] as _i2.BanksEndpoint).deleteBank(
            session,
            params['bank'],
          ),
        ),
      },
    );
    connectors['datasets'] = _i1.EndpointConnector(
      name: 'datasets',
      endpoint: endpoints['datasets']!,
      methodConnectors: {
        'getAllDatasets': _i1.MethodConnector(
          name: 'getAllDatasets',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['datasets'] as _i3.DatasetsEndpoint)
                  .getAllDatasets(session),
        ),
        'createDataset': _i1.MethodConnector(
          name: 'createDataset',
          params: {
            'dataset': _i1.ParameterDescription(
              name: 'dataset',
              type: _i1.getType<_i7.Dataset>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['datasets'] as _i3.DatasetsEndpoint).createDataset(
            session,
            params['dataset'],
          ),
        ),
        'updateDataset': _i1.MethodConnector(
          name: 'updateDataset',
          params: {
            'dataset': _i1.ParameterDescription(
              name: 'dataset',
              type: _i1.getType<_i7.Dataset>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['datasets'] as _i3.DatasetsEndpoint).updateDataset(
            session,
            params['dataset'],
          ),
        ),
        'deleteDataset': _i1.MethodConnector(
          name: 'deleteDataset',
          params: {
            'dataset': _i1.ParameterDescription(
              name: 'dataset',
              type: _i1.getType<_i7.Dataset>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['datasets'] as _i3.DatasetsEndpoint).deleteDataset(
            session,
            params['dataset'],
          ),
        ),
      },
    );
    connectors['example'] = _i1.EndpointConnector(
      name: 'example',
      endpoint: endpoints['example']!,
      methodConnectors: {
        'hello': _i1.MethodConnector(
          name: 'hello',
          params: {
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['example'] as _i4.ExampleEndpoint).hello(
            session,
            params['name'],
          ),
        )
      },
    );
    connectors['markers'] = _i1.EndpointConnector(
      name: 'markers',
      endpoint: endpoints['markers']!,
      methodConnectors: {
        'getAllMarkers': _i1.MethodConnector(
          name: 'getAllMarkers',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['markers'] as _i5.MarkersEndpoint)
                  .getAllMarkers(session),
        ),
        'createMarker': _i1.MethodConnector(
          name: 'createMarker',
          params: {
            'marker': _i1.ParameterDescription(
              name: 'marker',
              type: _i1.getType<_i8.Marker>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['markers'] as _i5.MarkersEndpoint).createMarker(
            session,
            params['marker'],
          ),
        ),
        'deleteMarker': _i1.MethodConnector(
          name: 'deleteMarker',
          params: {
            'marker': _i1.ParameterDescription(
              name: 'marker',
              type: _i1.getType<_i8.Marker>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['markers'] as _i5.MarkersEndpoint).deleteMarker(
            session,
            params['marker'],
          ),
        ),
      },
    );
    modules['serverpod_auth'] = _i9.Endpoints()..initializeEndpoints(server);
  }
}
