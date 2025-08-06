// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'portal_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(PortalController)
const portalControllerProvider = PortalControllerProvider._();

final class PortalControllerProvider
    extends
        $NotifierProvider<
          PortalController,
          (bool, bool, bool, bool, bool, bool)
        > {
  const PortalControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'portalControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$portalControllerHash();

  @$internal
  @override
  PortalController create() => PortalController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue((bool, bool, bool, bool, bool, bool) value) {
    return $ProviderOverride(
      origin: this,
      providerOverride:
          $SyncValueProvider<(bool, bool, bool, bool, bool, bool)>(value),
    );
  }
}

String _$portalControllerHash() => r'40834dd1913331ef20bab2353479f2c54e9dc677';

abstract class _$PortalController
    extends $Notifier<(bool, bool, bool, bool, bool, bool)> {
  (bool, bool, bool, bool, bool, bool) build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<
              (bool, bool, bool, bool, bool, bool),
              (bool, bool, bool, bool, bool, bool)
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                (bool, bool, bool, bool, bool, bool),
                (bool, bool, bool, bool, bool, bool)
              >,
              (bool, bool, bool, bool, bool, bool),
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
