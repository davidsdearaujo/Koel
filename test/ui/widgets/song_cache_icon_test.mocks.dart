// Mocks generated by Mockito 5.0.12 from annotations
// in app/test/ui/widgets/song_cache_icon_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i6;
import 'dart:ui' as _i8;

import 'package:app/models/song.dart' as _i5;
import 'package:app/providers/download_provider.dart' as _i4;
import 'package:file/file.dart' as _i3;
import 'package:flutter_cache_manager/flutter_cache_manager.dart' as _i7;
import 'package:mockito/mockito.dart' as _i1;
import 'package:rxdart/rxdart.dart' as _i2;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis

class _FakeValueStream<T> extends _i1.Fake implements _i2.ValueStream<T> {}

class _FakeFile extends _i1.Fake implements _i3.File {}

class _FakeDateTime extends _i1.Fake implements DateTime {}

/// A class which mocks [CacheProvider].
///
/// See the documentation for Mockito's code generation for more information.
class MockCacheProvider extends _i1.Mock implements _i4.DownloadProvider {
  MockCacheProvider() {
    _i1.throwOnMissingStub(this);
  }

  @override
  List<_i5.Song> get downloads =>
      (super.noSuchMethod(Invocation.getter(#songs), returnValue: <_i5.Song>[])
          as List<_i5.Song>);

  @override
  set downloads(List<_i5.Song>? _songs) =>
      super.noSuchMethod(Invocation.setter(#songs, _songs),
          returnValueForMissingStub: null);

  @override
  _i2.ValueStream<bool> get downloadsClearedStream =>
      (super.noSuchMethod(Invocation.getter(#cacheClearedStream),
          returnValue: _FakeValueStream<bool>()) as _i2.ValueStream<bool>);

  @override
  _i2.ValueStream<_i5.Song> get downloadRemovedStream => (super.noSuchMethod(
      Invocation.getter(#singleCacheRemovedStream),
      returnValue: _FakeValueStream<_i5.Song>()) as _i2.ValueStream<_i5.Song>);

  @override
  _i2.ValueStream<_i4.Download> get playableDownloadedStream =>
      (super.noSuchMethod(Invocation.getter(#songCachedStream),
              returnValue: _FakeValueStream<_i4.Download>())
          as _i2.ValueStream<_i4.Download>);

  @override
  bool get hasListeners =>
      (super.noSuchMethod(Invocation.getter(#hasListeners), returnValue: false)
          as bool);

  @override
  _i6.Future<void> download({_i5.Song? playable}) =>
      (super.noSuchMethod(Invocation.method(#cache, [], {#song: playable}),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i6.Future<void>);

  @override
  _i6.Future<_i7.FileInfo?> getForPlayable({_i5.Song? song}) =>
      (super.noSuchMethod(Invocation.method(#get, [], {#song: song}),
              returnValue: Future<_i7.FileInfo?>.value())
          as _i6.Future<_i7.FileInfo?>);

  @override
  _i6.Future<bool> has({_i5.Song? playable}) =>
      (super.noSuchMethod(Invocation.method(#has, [], {#song: playable}),
          returnValue: Future<bool>.value(false)) as _i6.Future<bool>);

  @override
  _i6.Future<void> removeForPlayable({_i5.Song? song}) =>
      (super.noSuchMethod(Invocation.method(#remove, [], {#song: song}),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i6.Future<void>);

  @override
  _i6.Future<void> clear() => (super.noSuchMethod(Invocation.method(#clear, []),
      returnValue: Future<void>.value(),
      returnValueForMissingStub: Future<void>.value()) as _i6.Future<void>);

  @override
  void addListener(_i8.VoidCallback? listener) =>
      super.noSuchMethod(Invocation.method(#addListener, [listener]),
          returnValueForMissingStub: null);

  @override
  void removeListener(_i8.VoidCallback? listener) =>
      super.noSuchMethod(Invocation.method(#removeListener, [listener]),
          returnValueForMissingStub: null);

  @override
  void dispose() => super.noSuchMethod(Invocation.method(#dispose, []),
      returnValueForMissingStub: null);

  @override
  void notifyListeners() =>
      super.noSuchMethod(Invocation.method(#notifyListeners, []),
          returnValueForMissingStub: null);
}

/// A class which mocks [FileInfo].
///
/// See the documentation for Mockito's code generation for more information.
class MockFileInfo extends _i1.Mock implements _i7.FileInfo {
  MockFileInfo() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.File get file =>
      (super.noSuchMethod(Invocation.getter(#file), returnValue: _FakeFile())
          as _i3.File);

  @override
  _i7.FileSource get source => (super.noSuchMethod(Invocation.getter(#source),
      returnValue: _i7.FileSource.NA) as _i7.FileSource);

  @override
  DateTime get validTill => (super.noSuchMethod(Invocation.getter(#validTill),
      returnValue: _FakeDateTime()) as DateTime);

  @override
  String get originalUrl =>
      (super.noSuchMethod(Invocation.getter(#originalUrl), returnValue: '')
          as String);
}
