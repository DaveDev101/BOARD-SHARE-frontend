# boardshare

AAC BOARD share web client app

## Getting Started


# Packages

### go_router
% flutter pub add go_router
'pubspec.yaml':
    flutter_web_plugins:
      sdk: flutter

### flutter_riverpod
% flutter pub add flutter_riverpod
% flutter pub add riverpod_annotation
% flutter pub add dev:riverpod_generator
% flutter pub add dev:build_runner
% flutter pub add dev:custom_lint
% flutter pub add dev:riverpod_lint
% flutter pub add hooks_riverpod
'analysis_options.yaml':
    analyzer:
      plugins:
        - custom_lint
% flutter pub add flutter_hooks

### freezed
% flutter pub add freezed_annotation

[//]: # (% flutter pub add dev:build_runner)
% flutter pub add dev:freezed
% flutter pub add json_annotation
% flutter pub add dev:json_serializable
==> % dart run build_runner build

### flutter_portal
% flutter pub add flutter_portal

### flutter_svg
% flutter pub add flutter_svg

