// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'temp_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TempRecord> _$tempRecordSerializer = new _$TempRecordSerializer();

class _$TempRecordSerializer implements StructuredSerializer<TempRecord> {
  @override
  final Iterable<Type> types = const [TempRecord, _$TempRecord];
  @override
  final String wireName = 'TempRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, TempRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.token;
    if (value != null) {
      result
        ..add('token')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.timestamp;
    if (value != null) {
      result
        ..add('timestamp')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  TempRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TempRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'token':
          result.token = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'timestamp':
          result.timestamp = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$TempRecord extends TempRecord {
  @override
  final String? token;
  @override
  final DateTime? timestamp;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$TempRecord([void Function(TempRecordBuilder)? updates]) =>
      (new TempRecordBuilder()..update(updates))._build();

  _$TempRecord._({this.token, this.timestamp, this.ffRef}) : super._();

  @override
  TempRecord rebuild(void Function(TempRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TempRecordBuilder toBuilder() => new TempRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TempRecord &&
        token == other.token &&
        timestamp == other.timestamp &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, token.hashCode), timestamp.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TempRecord')
          ..add('token', token)
          ..add('timestamp', timestamp)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class TempRecordBuilder implements Builder<TempRecord, TempRecordBuilder> {
  _$TempRecord? _$v;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  DateTime? _timestamp;
  DateTime? get timestamp => _$this._timestamp;
  set timestamp(DateTime? timestamp) => _$this._timestamp = timestamp;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  TempRecordBuilder() {
    TempRecord._initializeBuilder(this);
  }

  TempRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _token = $v.token;
      _timestamp = $v.timestamp;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TempRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TempRecord;
  }

  @override
  void update(void Function(TempRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TempRecord build() => _build();

  _$TempRecord _build() {
    final _$result = _$v ??
        new _$TempRecord._(token: token, timestamp: timestamp, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
