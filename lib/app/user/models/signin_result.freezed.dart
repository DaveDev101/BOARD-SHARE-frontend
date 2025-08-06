// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signin_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SigninResult {

 Tokens get tokens; UserOrg get user;
/// Create a copy of SigninResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SigninResultCopyWith<SigninResult> get copyWith => _$SigninResultCopyWithImpl<SigninResult>(this as SigninResult, _$identity);

  /// Serializes this SigninResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SigninResult&&(identical(other.tokens, tokens) || other.tokens == tokens)&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tokens,user);

@override
String toString() {
  return 'SigninResult(tokens: $tokens, user: $user)';
}


}

/// @nodoc
abstract mixin class $SigninResultCopyWith<$Res>  {
  factory $SigninResultCopyWith(SigninResult value, $Res Function(SigninResult) _then) = _$SigninResultCopyWithImpl;
@useResult
$Res call({
 Tokens tokens, UserOrg user
});


$TokensCopyWith<$Res> get tokens;$UserOrgCopyWith<$Res> get user;

}
/// @nodoc
class _$SigninResultCopyWithImpl<$Res>
    implements $SigninResultCopyWith<$Res> {
  _$SigninResultCopyWithImpl(this._self, this._then);

  final SigninResult _self;
  final $Res Function(SigninResult) _then;

/// Create a copy of SigninResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tokens = null,Object? user = null,}) {
  return _then(_self.copyWith(
tokens: null == tokens ? _self.tokens : tokens // ignore: cast_nullable_to_non_nullable
as Tokens,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserOrg,
  ));
}
/// Create a copy of SigninResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TokensCopyWith<$Res> get tokens {
  
  return $TokensCopyWith<$Res>(_self.tokens, (value) {
    return _then(_self.copyWith(tokens: value));
  });
}/// Create a copy of SigninResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserOrgCopyWith<$Res> get user {
  
  return $UserOrgCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [SigninResult].
extension SigninResultPatterns on SigninResult {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SigninResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SigninResult() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SigninResult value)  $default,){
final _that = this;
switch (_that) {
case _SigninResult():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SigninResult value)?  $default,){
final _that = this;
switch (_that) {
case _SigninResult() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Tokens tokens,  UserOrg user)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SigninResult() when $default != null:
return $default(_that.tokens,_that.user);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Tokens tokens,  UserOrg user)  $default,) {final _that = this;
switch (_that) {
case _SigninResult():
return $default(_that.tokens,_that.user);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Tokens tokens,  UserOrg user)?  $default,) {final _that = this;
switch (_that) {
case _SigninResult() when $default != null:
return $default(_that.tokens,_that.user);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SigninResult implements SigninResult {
  const _SigninResult({required this.tokens, required this.user});
  factory _SigninResult.fromJson(Map<String, dynamic> json) => _$SigninResultFromJson(json);

@override final  Tokens tokens;
@override final  UserOrg user;

/// Create a copy of SigninResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SigninResultCopyWith<_SigninResult> get copyWith => __$SigninResultCopyWithImpl<_SigninResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SigninResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SigninResult&&(identical(other.tokens, tokens) || other.tokens == tokens)&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tokens,user);

@override
String toString() {
  return 'SigninResult(tokens: $tokens, user: $user)';
}


}

/// @nodoc
abstract mixin class _$SigninResultCopyWith<$Res> implements $SigninResultCopyWith<$Res> {
  factory _$SigninResultCopyWith(_SigninResult value, $Res Function(_SigninResult) _then) = __$SigninResultCopyWithImpl;
@override @useResult
$Res call({
 Tokens tokens, UserOrg user
});


@override $TokensCopyWith<$Res> get tokens;@override $UserOrgCopyWith<$Res> get user;

}
/// @nodoc
class __$SigninResultCopyWithImpl<$Res>
    implements _$SigninResultCopyWith<$Res> {
  __$SigninResultCopyWithImpl(this._self, this._then);

  final _SigninResult _self;
  final $Res Function(_SigninResult) _then;

/// Create a copy of SigninResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tokens = null,Object? user = null,}) {
  return _then(_SigninResult(
tokens: null == tokens ? _self.tokens : tokens // ignore: cast_nullable_to_non_nullable
as Tokens,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserOrg,
  ));
}

/// Create a copy of SigninResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TokensCopyWith<$Res> get tokens {
  
  return $TokensCopyWith<$Res>(_self.tokens, (value) {
    return _then(_self.copyWith(tokens: value));
  });
}/// Create a copy of SigninResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserOrgCopyWith<$Res> get user {
  
  return $UserOrgCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

// dart format on
