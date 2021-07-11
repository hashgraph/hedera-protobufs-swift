// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: ContractGetInfo.proto
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

/// Get information about a smart contract instance. This includes the account that it uses, the file containing its bytecode, and the time when it will expire. 
public struct Proto_ContractGetInfoQuery {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// standard info sent from client to node, including the signed payment, and what kind of response is requested (cost, state proof, both, or neither).
  public var header: Proto_QueryHeader {
    get {return _header ?? Proto_QueryHeader()}
    set {_header = newValue}
  }
  /// Returns true if `header` has been explicitly set.
  public var hasHeader: Bool {return self._header != nil}
  /// Clears the value of `header`. Subsequent reads from it will return its default value.
  public mutating func clearHeader() {self._header = nil}

  /// the contract for which information is requested
  public var contractID: Proto_ContractID {
    get {return _contractID ?? Proto_ContractID()}
    set {_contractID = newValue}
  }
  /// Returns true if `contractID` has been explicitly set.
  public var hasContractID: Bool {return self._contractID != nil}
  /// Clears the value of `contractID`. Subsequent reads from it will return its default value.
  public mutating func clearContractID() {self._contractID = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _header: Proto_QueryHeader? = nil
  fileprivate var _contractID: Proto_ContractID? = nil
}

/// Response when the client sends the node ContractGetInfoQuery 
public struct Proto_ContractGetInfoResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  ///standard response from node to client, including the requested fields: cost, or state proof, or both, or neither
  public var header: Proto_ResponseHeader {
    get {return _header ?? Proto_ResponseHeader()}
    set {_header = newValue}
  }
  /// Returns true if `header` has been explicitly set.
  public var hasHeader: Bool {return self._header != nil}
  /// Clears the value of `header`. Subsequent reads from it will return its default value.
  public mutating func clearHeader() {self._header = nil}

  /// the information about this contract instance (a state proof can be generated for this)
  public var contractInfo: Proto_ContractGetInfoResponse.ContractInfo {
    get {return _contractInfo ?? Proto_ContractGetInfoResponse.ContractInfo()}
    set {_contractInfo = newValue}
  }
  /// Returns true if `contractInfo` has been explicitly set.
  public var hasContractInfo: Bool {return self._contractInfo != nil}
  /// Clears the value of `contractInfo`. Subsequent reads from it will return its default value.
  public mutating func clearContractInfo() {self._contractInfo = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public struct ContractInfo {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// ID of the contract instance, in the format used in transactions
    public var contractID: Proto_ContractID {
      get {return _storage._contractID ?? Proto_ContractID()}
      set {_uniqueStorage()._contractID = newValue}
    }
    /// Returns true if `contractID` has been explicitly set.
    public var hasContractID: Bool {return _storage._contractID != nil}
    /// Clears the value of `contractID`. Subsequent reads from it will return its default value.
    public mutating func clearContractID() {_uniqueStorage()._contractID = nil}

    /// ID of the cryptocurrency account owned by the contract instance, in the format used in transactions
    public var accountID: Proto_AccountID {
      get {return _storage._accountID ?? Proto_AccountID()}
      set {_uniqueStorage()._accountID = newValue}
    }
    /// Returns true if `accountID` has been explicitly set.
    public var hasAccountID: Bool {return _storage._accountID != nil}
    /// Clears the value of `accountID`. Subsequent reads from it will return its default value.
    public mutating func clearAccountID() {_uniqueStorage()._accountID = nil}

    /// ID of both the contract instance and the cryptocurrency account owned by the contract instance, in the format used by Solidity
    public var contractAccountID: String {
      get {return _storage._contractAccountID}
      set {_uniqueStorage()._contractAccountID = newValue}
    }

    /// the state of the instance and its fields can be modified arbitrarily if this key signs a transaction to modify it. If this is null, then such modifications are not possible, and there is no administrator that can override the normal operation of this smart contract instance. Note that if it is created with no admin keys, then there is no administrator to authorize changing the admin keys, so there can never be any admin keys for that instance. */
    public var adminKey: Proto_Key {
      get {return _storage._adminKey ?? Proto_Key()}
      set {_uniqueStorage()._adminKey = newValue}
    }
    /// Returns true if `adminKey` has been explicitly set.
    public var hasAdminKey: Bool {return _storage._adminKey != nil}
    /// Clears the value of `adminKey`. Subsequent reads from it will return its default value.
    public mutating func clearAdminKey() {_uniqueStorage()._adminKey = nil}

    /// the current time at which this contract instance (and its account) is set to expire
    public var expirationTime: Proto_Timestamp {
      get {return _storage._expirationTime ?? Proto_Timestamp()}
      set {_uniqueStorage()._expirationTime = newValue}
    }
    /// Returns true if `expirationTime` has been explicitly set.
    public var hasExpirationTime: Bool {return _storage._expirationTime != nil}
    /// Clears the value of `expirationTime`. Subsequent reads from it will return its default value.
    public mutating func clearExpirationTime() {_uniqueStorage()._expirationTime = nil}

    /// the expiration time will extend every this many seconds. If there are insufficient funds, then it extends as long as possible. If the account is empty when it expires, then it is deleted.
    public var autoRenewPeriod: Proto_Duration {
      get {return _storage._autoRenewPeriod ?? Proto_Duration()}
      set {_uniqueStorage()._autoRenewPeriod = newValue}
    }
    /// Returns true if `autoRenewPeriod` has been explicitly set.
    public var hasAutoRenewPeriod: Bool {return _storage._autoRenewPeriod != nil}
    /// Clears the value of `autoRenewPeriod`. Subsequent reads from it will return its default value.
    public mutating func clearAutoRenewPeriod() {_uniqueStorage()._autoRenewPeriod = nil}

    /// number of bytes of storage being used by this instance (which affects the cost to extend the expiration time)
    public var storage: Int64 {
      get {return _storage._storage}
      set {_uniqueStorage()._storage = newValue}
    }

    /// the memo associated with the contract (max 100 bytes)
    public var memo: String {
      get {return _storage._memo}
      set {_uniqueStorage()._memo = newValue}
    }

    /// The current balance, in tinybars
    public var balance: UInt64 {
      get {return _storage._balance}
      set {_uniqueStorage()._balance = newValue}
    }

    /// Whether the contract has been deleted
    public var deleted: Bool {
      get {return _storage._deleted}
      set {_uniqueStorage()._deleted = newValue}
    }

    /// The tokens associated to the contract
    public var tokenRelationships: [Proto_TokenRelationship] {
      get {return _storage._tokenRelationships}
      set {_uniqueStorage()._tokenRelationships = newValue}
    }

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}

    fileprivate var _storage = _StorageClass.defaultInstance
  }

  public init() {}

  fileprivate var _header: Proto_ResponseHeader? = nil
  fileprivate var _contractInfo: Proto_ContractGetInfoResponse.ContractInfo? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "proto"

extension Proto_ContractGetInfoQuery: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ContractGetInfoQuery"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "header"),
    2: .same(proto: "contractID"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._header) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._contractID) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._header {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if let v = self._contractID {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Proto_ContractGetInfoQuery, rhs: Proto_ContractGetInfoQuery) -> Bool {
    if lhs._header != rhs._header {return false}
    if lhs._contractID != rhs._contractID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Proto_ContractGetInfoResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ContractGetInfoResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "header"),
    2: .same(proto: "contractInfo"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._header) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._contractInfo) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._header {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if let v = self._contractInfo {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Proto_ContractGetInfoResponse, rhs: Proto_ContractGetInfoResponse) -> Bool {
    if lhs._header != rhs._header {return false}
    if lhs._contractInfo != rhs._contractInfo {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Proto_ContractGetInfoResponse.ContractInfo: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Proto_ContractGetInfoResponse.protoMessageName + ".ContractInfo"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "contractID"),
    2: .same(proto: "accountID"),
    3: .same(proto: "contractAccountID"),
    4: .same(proto: "adminKey"),
    5: .same(proto: "expirationTime"),
    6: .same(proto: "autoRenewPeriod"),
    7: .same(proto: "storage"),
    8: .same(proto: "memo"),
    9: .same(proto: "balance"),
    10: .same(proto: "deleted"),
    11: .same(proto: "tokenRelationships"),
  ]

  fileprivate class _StorageClass {
    var _contractID: Proto_ContractID? = nil
    var _accountID: Proto_AccountID? = nil
    var _contractAccountID: String = String()
    var _adminKey: Proto_Key? = nil
    var _expirationTime: Proto_Timestamp? = nil
    var _autoRenewPeriod: Proto_Duration? = nil
    var _storage: Int64 = 0
    var _memo: String = String()
    var _balance: UInt64 = 0
    var _deleted: Bool = false
    var _tokenRelationships: [Proto_TokenRelationship] = []

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _contractID = source._contractID
      _accountID = source._accountID
      _contractAccountID = source._contractAccountID
      _adminKey = source._adminKey
      _expirationTime = source._expirationTime
      _autoRenewPeriod = source._autoRenewPeriod
      _storage = source._storage
      _memo = source._memo
      _balance = source._balance
      _deleted = source._deleted
      _tokenRelationships = source._tokenRelationships
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        // The use of inline closures is to circumvent an issue where the compiler
        // allocates stack space for every case branch when no optimizations are
        // enabled. https://github.com/apple/swift-protobuf/issues/1034
        switch fieldNumber {
        case 1: try { try decoder.decodeSingularMessageField(value: &_storage._contractID) }()
        case 2: try { try decoder.decodeSingularMessageField(value: &_storage._accountID) }()
        case 3: try { try decoder.decodeSingularStringField(value: &_storage._contractAccountID) }()
        case 4: try { try decoder.decodeSingularMessageField(value: &_storage._adminKey) }()
        case 5: try { try decoder.decodeSingularMessageField(value: &_storage._expirationTime) }()
        case 6: try { try decoder.decodeSingularMessageField(value: &_storage._autoRenewPeriod) }()
        case 7: try { try decoder.decodeSingularInt64Field(value: &_storage._storage) }()
        case 8: try { try decoder.decodeSingularStringField(value: &_storage._memo) }()
        case 9: try { try decoder.decodeSingularUInt64Field(value: &_storage._balance) }()
        case 10: try { try decoder.decodeSingularBoolField(value: &_storage._deleted) }()
        case 11: try { try decoder.decodeRepeatedMessageField(value: &_storage._tokenRelationships) }()
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._contractID {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if let v = _storage._accountID {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
      if !_storage._contractAccountID.isEmpty {
        try visitor.visitSingularStringField(value: _storage._contractAccountID, fieldNumber: 3)
      }
      if let v = _storage._adminKey {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
      }
      if let v = _storage._expirationTime {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
      }
      if let v = _storage._autoRenewPeriod {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
      }
      if _storage._storage != 0 {
        try visitor.visitSingularInt64Field(value: _storage._storage, fieldNumber: 7)
      }
      if !_storage._memo.isEmpty {
        try visitor.visitSingularStringField(value: _storage._memo, fieldNumber: 8)
      }
      if _storage._balance != 0 {
        try visitor.visitSingularUInt64Field(value: _storage._balance, fieldNumber: 9)
      }
      if _storage._deleted != false {
        try visitor.visitSingularBoolField(value: _storage._deleted, fieldNumber: 10)
      }
      if !_storage._tokenRelationships.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._tokenRelationships, fieldNumber: 11)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Proto_ContractGetInfoResponse.ContractInfo, rhs: Proto_ContractGetInfoResponse.ContractInfo) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._contractID != rhs_storage._contractID {return false}
        if _storage._accountID != rhs_storage._accountID {return false}
        if _storage._contractAccountID != rhs_storage._contractAccountID {return false}
        if _storage._adminKey != rhs_storage._adminKey {return false}
        if _storage._expirationTime != rhs_storage._expirationTime {return false}
        if _storage._autoRenewPeriod != rhs_storage._autoRenewPeriod {return false}
        if _storage._storage != rhs_storage._storage {return false}
        if _storage._memo != rhs_storage._memo {return false}
        if _storage._balance != rhs_storage._balance {return false}
        if _storage._deleted != rhs_storage._deleted {return false}
        if _storage._tokenRelationships != rhs_storage._tokenRelationships {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
