// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_boards_ctl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(favoriteBoardsCtl)
const favoriteBoardsCtlProvider = FavoriteBoardsCtlFamily._();

final class FavoriteBoardsCtlProvider
    extends
        $FunctionalProvider<
          AsyncValue<(String, int, List<AACPost>)>,
          (String, int, List<AACPost>),
          FutureOr<(String, int, List<AACPost>)>
        >
    with
        $FutureModifier<(String, int, List<AACPost>)>,
        $FutureProvider<(String, int, List<AACPost>)> {
  const FavoriteBoardsCtlProvider._({
    required FavoriteBoardsCtlFamily super.from,
    required (
      String, {
      int page,
      List<String>? taxonomyTerms,
      List<(String, String)>? orders,
    })
    super.argument,
  }) : super(
         retry: null,
         name: r'favoriteBoardsCtlProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$favoriteBoardsCtlHash();

  @override
  String toString() {
    return r'favoriteBoardsCtlProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<(String, int, List<AACPost>)> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<(String, int, List<AACPost>)> create(Ref ref) {
    final argument =
        this.argument
            as (
              String, {
              int page,
              List<String>? taxonomyTerms,
              List<(String, String)>? orders,
            });
    return favoriteBoardsCtl(
      ref,
      argument.$1,
      page: argument.page,
      taxonomyTerms: argument.taxonomyTerms,
      orders: argument.orders,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is FavoriteBoardsCtlProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$favoriteBoardsCtlHash() => r'2ccdf90647a691d939ae1b99d397d4dbf2c5fc17';

final class FavoriteBoardsCtlFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<(String, int, List<AACPost>)>,
          (
            String, {
            int page,
            List<String>? taxonomyTerms,
            List<(String, String)>? orders,
          })
        > {
  const FavoriteBoardsCtlFamily._()
    : super(
        retry: null,
        name: r'favoriteBoardsCtlProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  FavoriteBoardsCtlProvider call(
    String searchTerm, {
    required int page,
    List<String>? taxonomyTerms,
    List<(String, String)>? orders,
  }) => FavoriteBoardsCtlProvider._(
    argument: (
      searchTerm,
      page: page,
      taxonomyTerms: taxonomyTerms,
      orders: orders,
    ),
    from: this,
  );

  @override
  String toString() => r'favoriteBoardsCtlProvider';
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
