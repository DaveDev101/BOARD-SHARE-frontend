// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signin_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(SigninController)
const signinControllerProvider = SigninControllerProvider._();

final class SigninControllerProvider
    extends $AsyncNotifierProvider<SigninController, (String, SigninResult)> {
  const SigninControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'signinControllerProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$signinControllerHash();

  @$internal
  @override
  SigninController create() => SigninController();
}

String _$signinControllerHash() => r'c922f8ebbc7878632f64f11d2c055f49576c2f78';

abstract class _$SigninController
    extends $AsyncNotifier<(String, SigninResult)> {
  FutureOr<(String, SigninResult)> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<AsyncValue<(String, SigninResult)>, (String, SigninResult)>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<(String, SigninResult)>,
                (String, SigninResult)
              >,
              AsyncValue<(String, SigninResult)>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
