// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: FileCreate.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

/// Create a new file, containing the given contents.
///After the file is created, the FileID for it can be found in the receipt, or record, or retrieved with a GetByKey query.
///
///The file contains the specified contents (possibly empty). The file will automatically disappear at the expirationTime, unless its expiration is extended by another transaction before that time. If the file is deleted, then its contents will become empty and it will be marked as deleted until it expires, and then it will cease to exist.
///
///The keys field is a list of keys. All keys within the top-level key list must sign (M-M) to create or modify a file. However, to delete the file, only one key (1-M) is required to sign from the top-level key list.  Each of those "keys" may itself be threshold key containing other keys (including other threshold keys). In other words, the behavior is an AND for create/modify, OR for delete. This is useful for acting as a revocation server. If it is desired to have the behavior be AND for all 3 operations (or OR for all 3), then the list should have only a single Key, which is a threshold key, with N=1 for OR, N=M for AND.
///
///If a file is created without ANY keys in the keys field, the file is immutable and ONLY the expirationTime of the file can be changed with a FileUpdate transaction. The file contents or its keys cannot be changed.
///
///An entity (account, file, or smart contract instance) must be created in a particular realm. If the realmID is left null, then a new realm will be created with the given admin key. If a new realm has a null adminKey, then anyone can create/modify/delete entities in that realm. But if an admin key is given, then any transaction to create/modify/delete an entity in that realm must be signed by that key, though anyone can still call functions on smart contract instances that exist in that realm. A realm ceases to exist when everything within it has expired and no longer exists.
///
///The current API ignores shardID, realmID, and newRealmAdminKey, and creates everything in shard 0 and realm 0, with a null key. Future versions of the API will support multiple realms and multiple shards.
public struct Proto_FileCreateTransactionBody {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The time at which this file should expire (unless FileUpdateTransaction is used before then to extend its life)
  public var expirationTime: Proto_Timestamp {
    get {return _expirationTime ?? Proto_Timestamp()}
    set {_expirationTime = newValue}
  }
  /// Returns true if `expirationTime` has been explicitly set.
  public var hasExpirationTime: Bool {return self._expirationTime != nil}
  /// Clears the value of `expirationTime`. Subsequent reads from it will return its default value.
  public mutating func clearExpirationTime() {self._expirationTime = nil}

  /// All keys at the top level of a key list must sign to create or modify the file. Any one of the keys at the top level key list can sign to delete the file.
  public var keys: Proto_KeyList {
    get {return _keys ?? Proto_KeyList()}
    set {_keys = newValue}
  }
  /// Returns true if `keys` has been explicitly set.
  public var hasKeys: Bool {return self._keys != nil}
  /// Clears the value of `keys`. Subsequent reads from it will return its default value.
  public mutating func clearKeys() {self._keys = nil}

  /// The bytes that are the contents of the file
  public var contents: Data = Data()

  /// Shard in which this file is created
  public var shardID: Proto_ShardID {
    get {return _shardID ?? Proto_ShardID()}
    set {_shardID = newValue}
  }
  /// Returns true if `shardID` has been explicitly set.
  public var hasShardID: Bool {return self._shardID != nil}
  /// Clears the value of `shardID`. Subsequent reads from it will return its default value.
  public mutating func clearShardID() {self._shardID = nil}

  /// The Realm in which to the file is created (leave this null to create a new realm)
  public var realmID: Proto_RealmID {
    get {return _realmID ?? Proto_RealmID()}
    set {_realmID = newValue}
  }
  /// Returns true if `realmID` has been explicitly set.
  public var hasRealmID: Bool {return self._realmID != nil}
  /// Clears the value of `realmID`. Subsequent reads from it will return its default value.
  public mutating func clearRealmID() {self._realmID = nil}

  /// If realmID is null, then this the admin key for the new realm that will be created
  public var newRealmAdminKey: Proto_Key {
    get {return _newRealmAdminKey ?? Proto_Key()}
    set {_newRealmAdminKey = newValue}
  }
  /// Returns true if `newRealmAdminKey` has been explicitly set.
  public var hasNewRealmAdminKey: Bool {return self._newRealmAdminKey != nil}
  /// Clears the value of `newRealmAdminKey`. Subsequent reads from it will return its default value.
  public mutating func clearNewRealmAdminKey() {self._newRealmAdminKey = nil}

  /// The memo associated with the file (UTF-8 encoding max 100 bytes)
  public var memo: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _expirationTime: Proto_Timestamp? = nil
  fileprivate var _keys: Proto_KeyList? = nil
  fileprivate var _shardID: Proto_ShardID? = nil
  fileprivate var _realmID: Proto_RealmID? = nil
  fileprivate var _newRealmAdminKey: Proto_Key? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "proto"

extension Proto_FileCreateTransactionBody: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".FileCreateTransactionBody"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    2: .same(proto: "expirationTime"),
    3: .same(proto: "keys"),
    4: .same(proto: "contents"),
    5: .same(proto: "shardID"),
    6: .same(proto: "realmID"),
    7: .same(proto: "newRealmAdminKey"),
    8: .same(proto: "memo"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 2: try { try decoder.decodeSingularMessageField(value: &self._expirationTime) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._keys) }()
      case 4: try { try decoder.decodeSingularBytesField(value: &self.contents) }()
      case 5: try { try decoder.decodeSingularMessageField(value: &self._shardID) }()
      case 6: try { try decoder.decodeSingularMessageField(value: &self._realmID) }()
      case 7: try { try decoder.decodeSingularMessageField(value: &self._newRealmAdminKey) }()
      case 8: try { try decoder.decodeSingularStringField(value: &self.memo) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._expirationTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if let v = self._keys {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    if !self.contents.isEmpty {
      try visitor.visitSingularBytesField(value: self.contents, fieldNumber: 4)
    }
    if let v = self._shardID {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
    }
    if let v = self._realmID {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
    }
    if let v = self._newRealmAdminKey {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 7)
    }
    if !self.memo.isEmpty {
      try visitor.visitSingularStringField(value: self.memo, fieldNumber: 8)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Proto_FileCreateTransactionBody, rhs: Proto_FileCreateTransactionBody) -> Bool {
    if lhs._expirationTime != rhs._expirationTime {return false}
    if lhs._keys != rhs._keys {return false}
    if lhs.contents != rhs.contents {return false}
    if lhs._shardID != rhs._shardID {return false}
    if lhs._realmID != rhs._realmID {return false}
    if lhs._newRealmAdminKey != rhs._newRealmAdminKey {return false}
    if lhs.memo != rhs.memo {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
