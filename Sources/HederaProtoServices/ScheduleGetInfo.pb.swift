// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: ScheduleGetInfo.proto
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

///
///Gets information about a schedule in the network's action queue.
///
///Responds with <tt>INVALID_SCHEDULE_ID</tt> if the requested schedule doesn't exist.
public struct Proto_ScheduleGetInfoQuery {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// standard info sent from client to node including the signed payment, and what kind of response is requested (cost, state proof, both, or neither).
  public var header: Proto_QueryHeader {
    get {return _header ?? Proto_QueryHeader()}
    set {_header = newValue}
  }
  /// Returns true if `header` has been explicitly set.
  public var hasHeader: Bool {return self._header != nil}
  /// Clears the value of `header`. Subsequent reads from it will return its default value.
  public mutating func clearHeader() {self._header = nil}

  /// The id of the schedule to interrogate
  public var scheduleID: Proto_ScheduleID {
    get {return _scheduleID ?? Proto_ScheduleID()}
    set {_scheduleID = newValue}
  }
  /// Returns true if `scheduleID` has been explicitly set.
  public var hasScheduleID: Bool {return self._scheduleID != nil}
  /// Clears the value of `scheduleID`. Subsequent reads from it will return its default value.
  public mutating func clearScheduleID() {self._scheduleID = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _header: Proto_QueryHeader? = nil
  fileprivate var _scheduleID: Proto_ScheduleID? = nil
}

///
///Information summarizing schedule state 
public struct Proto_ScheduleInfo {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The id of the schedule
  public var scheduleID: Proto_ScheduleID {
    get {return _storage._scheduleID ?? Proto_ScheduleID()}
    set {_uniqueStorage()._scheduleID = newValue}
  }
  /// Returns true if `scheduleID` has been explicitly set.
  public var hasScheduleID: Bool {return _storage._scheduleID != nil}
  /// Clears the value of `scheduleID`. Subsequent reads from it will return its default value.
  public mutating func clearScheduleID() {_uniqueStorage()._scheduleID = nil}

  public var data: OneOf_Data? {
    get {return _storage._data}
    set {_uniqueStorage()._data = newValue}
  }

  /// If the schedule has been deleted, the consensus time when this occurred
  public var deletionTime: Proto_Timestamp {
    get {
      if case .deletionTime(let v)? = _storage._data {return v}
      return Proto_Timestamp()
    }
    set {_uniqueStorage()._data = .deletionTime(newValue)}
  }

  /// If the schedule has been executed, the consensus time when this occurred
  public var executionTime: Proto_Timestamp {
    get {
      if case .executionTime(let v)? = _storage._data {return v}
      return Proto_Timestamp()
    }
    set {_uniqueStorage()._data = .executionTime(newValue)}
  }

  /// The time at which the schedule will expire
  public var expirationTime: Proto_Timestamp {
    get {return _storage._expirationTime ?? Proto_Timestamp()}
    set {_uniqueStorage()._expirationTime = newValue}
  }
  /// Returns true if `expirationTime` has been explicitly set.
  public var hasExpirationTime: Bool {return _storage._expirationTime != nil}
  /// Clears the value of `expirationTime`. Subsequent reads from it will return its default value.
  public mutating func clearExpirationTime() {_uniqueStorage()._expirationTime = nil}

  /// The scheduled transaction
  public var scheduledTransactionBody: Proto_SchedulableTransactionBody {
    get {return _storage._scheduledTransactionBody ?? Proto_SchedulableTransactionBody()}
    set {_uniqueStorage()._scheduledTransactionBody = newValue}
  }
  /// Returns true if `scheduledTransactionBody` has been explicitly set.
  public var hasScheduledTransactionBody: Bool {return _storage._scheduledTransactionBody != nil}
  /// Clears the value of `scheduledTransactionBody`. Subsequent reads from it will return its default value.
  public mutating func clearScheduledTransactionBody() {_uniqueStorage()._scheduledTransactionBody = nil}

  /// The publicly visible memo of the schedule
  public var memo: String {
    get {return _storage._memo}
    set {_uniqueStorage()._memo = newValue}
  }

  /// The key used to delete the schedule from state
  public var adminKey: Proto_Key {
    get {return _storage._adminKey ?? Proto_Key()}
    set {_uniqueStorage()._adminKey = newValue}
  }
  /// Returns true if `adminKey` has been explicitly set.
  public var hasAdminKey: Bool {return _storage._adminKey != nil}
  /// Clears the value of `adminKey`. Subsequent reads from it will return its default value.
  public mutating func clearAdminKey() {_uniqueStorage()._adminKey = nil}

  /// The Ed25519 keys the network deems to have signed the scheduled transaction
  public var signers: Proto_KeyList {
    get {return _storage._signers ?? Proto_KeyList()}
    set {_uniqueStorage()._signers = newValue}
  }
  /// Returns true if `signers` has been explicitly set.
  public var hasSigners: Bool {return _storage._signers != nil}
  /// Clears the value of `signers`. Subsequent reads from it will return its default value.
  public mutating func clearSigners() {_uniqueStorage()._signers = nil}

  /// The id of the account that created the schedule
  public var creatorAccountID: Proto_AccountID {
    get {return _storage._creatorAccountID ?? Proto_AccountID()}
    set {_uniqueStorage()._creatorAccountID = newValue}
  }
  /// Returns true if `creatorAccountID` has been explicitly set.
  public var hasCreatorAccountID: Bool {return _storage._creatorAccountID != nil}
  /// Clears the value of `creatorAccountID`. Subsequent reads from it will return its default value.
  public mutating func clearCreatorAccountID() {_uniqueStorage()._creatorAccountID = nil}

  /// The id of the account responsible for the service fee of the scheduled transaction
  public var payerAccountID: Proto_AccountID {
    get {return _storage._payerAccountID ?? Proto_AccountID()}
    set {_uniqueStorage()._payerAccountID = newValue}
  }
  /// Returns true if `payerAccountID` has been explicitly set.
  public var hasPayerAccountID: Bool {return _storage._payerAccountID != nil}
  /// Clears the value of `payerAccountID`. Subsequent reads from it will return its default value.
  public mutating func clearPayerAccountID() {_uniqueStorage()._payerAccountID = nil}

  /// The transaction id that will be used in the record of the scheduled transaction (if it executes)
  public var scheduledTransactionID: Proto_TransactionID {
    get {return _storage._scheduledTransactionID ?? Proto_TransactionID()}
    set {_uniqueStorage()._scheduledTransactionID = newValue}
  }
  /// Returns true if `scheduledTransactionID` has been explicitly set.
  public var hasScheduledTransactionID: Bool {return _storage._scheduledTransactionID != nil}
  /// Clears the value of `scheduledTransactionID`. Subsequent reads from it will return its default value.
  public mutating func clearScheduledTransactionID() {_uniqueStorage()._scheduledTransactionID = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_Data: Equatable {
    /// If the schedule has been deleted, the consensus time when this occurred
    case deletionTime(Proto_Timestamp)
    /// If the schedule has been executed, the consensus time when this occurred
    case executionTime(Proto_Timestamp)

  #if !swift(>=4.1)
    public static func ==(lhs: Proto_ScheduleInfo.OneOf_Data, rhs: Proto_ScheduleInfo.OneOf_Data) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.deletionTime, .deletionTime): return {
        guard case .deletionTime(let l) = lhs, case .deletionTime(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.executionTime, .executionTime): return {
        guard case .executionTime(let l) = lhs, case .executionTime(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

///
///Response wrapper for the <tt>ScheduleInfo</tt>
public struct Proto_ScheduleGetInfoResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Standard response from node to client, including the requested fields: cost, or state proof, or both, or neither
  public var header: Proto_ResponseHeader {
    get {return _header ?? Proto_ResponseHeader()}
    set {_header = newValue}
  }
  /// Returns true if `header` has been explicitly set.
  public var hasHeader: Bool {return self._header != nil}
  /// Clears the value of `header`. Subsequent reads from it will return its default value.
  public mutating func clearHeader() {self._header = nil}

  /// The information requested about this schedule instance
  public var scheduleInfo: Proto_ScheduleInfo {
    get {return _scheduleInfo ?? Proto_ScheduleInfo()}
    set {_scheduleInfo = newValue}
  }
  /// Returns true if `scheduleInfo` has been explicitly set.
  public var hasScheduleInfo: Bool {return self._scheduleInfo != nil}
  /// Clears the value of `scheduleInfo`. Subsequent reads from it will return its default value.
  public mutating func clearScheduleInfo() {self._scheduleInfo = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _header: Proto_ResponseHeader? = nil
  fileprivate var _scheduleInfo: Proto_ScheduleInfo? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "proto"

extension Proto_ScheduleGetInfoQuery: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ScheduleGetInfoQuery"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "header"),
    2: .same(proto: "scheduleID"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._header) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._scheduleID) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._header {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if let v = self._scheduleID {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Proto_ScheduleGetInfoQuery, rhs: Proto_ScheduleGetInfoQuery) -> Bool {
    if lhs._header != rhs._header {return false}
    if lhs._scheduleID != rhs._scheduleID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Proto_ScheduleInfo: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ScheduleInfo"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "scheduleID"),
    2: .standard(proto: "deletion_time"),
    3: .standard(proto: "execution_time"),
    4: .same(proto: "expirationTime"),
    5: .same(proto: "scheduledTransactionBody"),
    6: .same(proto: "memo"),
    7: .same(proto: "adminKey"),
    8: .same(proto: "signers"),
    9: .same(proto: "creatorAccountID"),
    10: .same(proto: "payerAccountID"),
    11: .same(proto: "scheduledTransactionID"),
  ]

  fileprivate class _StorageClass {
    var _scheduleID: Proto_ScheduleID? = nil
    var _data: Proto_ScheduleInfo.OneOf_Data?
    var _expirationTime: Proto_Timestamp? = nil
    var _scheduledTransactionBody: Proto_SchedulableTransactionBody? = nil
    var _memo: String = String()
    var _adminKey: Proto_Key? = nil
    var _signers: Proto_KeyList? = nil
    var _creatorAccountID: Proto_AccountID? = nil
    var _payerAccountID: Proto_AccountID? = nil
    var _scheduledTransactionID: Proto_TransactionID? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _scheduleID = source._scheduleID
      _data = source._data
      _expirationTime = source._expirationTime
      _scheduledTransactionBody = source._scheduledTransactionBody
      _memo = source._memo
      _adminKey = source._adminKey
      _signers = source._signers
      _creatorAccountID = source._creatorAccountID
      _payerAccountID = source._payerAccountID
      _scheduledTransactionID = source._scheduledTransactionID
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
        case 1: try { try decoder.decodeSingularMessageField(value: &_storage._scheduleID) }()
        case 2: try {
          var v: Proto_Timestamp?
          var hadOneofValue = false
          if let current = _storage._data {
            hadOneofValue = true
            if case .deletionTime(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {
            if hadOneofValue {try decoder.handleConflictingOneOf()}
            _storage._data = .deletionTime(v)
          }
        }()
        case 3: try {
          var v: Proto_Timestamp?
          var hadOneofValue = false
          if let current = _storage._data {
            hadOneofValue = true
            if case .executionTime(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {
            if hadOneofValue {try decoder.handleConflictingOneOf()}
            _storage._data = .executionTime(v)
          }
        }()
        case 4: try { try decoder.decodeSingularMessageField(value: &_storage._expirationTime) }()
        case 5: try { try decoder.decodeSingularMessageField(value: &_storage._scheduledTransactionBody) }()
        case 6: try { try decoder.decodeSingularStringField(value: &_storage._memo) }()
        case 7: try { try decoder.decodeSingularMessageField(value: &_storage._adminKey) }()
        case 8: try { try decoder.decodeSingularMessageField(value: &_storage._signers) }()
        case 9: try { try decoder.decodeSingularMessageField(value: &_storage._creatorAccountID) }()
        case 10: try { try decoder.decodeSingularMessageField(value: &_storage._payerAccountID) }()
        case 11: try { try decoder.decodeSingularMessageField(value: &_storage._scheduledTransactionID) }()
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._scheduleID {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch _storage._data {
      case .deletionTime?: try {
        guard case .deletionTime(let v)? = _storage._data else { preconditionFailure() }
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }()
      case .executionTime?: try {
        guard case .executionTime(let v)? = _storage._data else { preconditionFailure() }
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      }()
      case nil: break
      }
      if let v = _storage._expirationTime {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
      }
      if let v = _storage._scheduledTransactionBody {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
      }
      if !_storage._memo.isEmpty {
        try visitor.visitSingularStringField(value: _storage._memo, fieldNumber: 6)
      }
      if let v = _storage._adminKey {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 7)
      }
      if let v = _storage._signers {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 8)
      }
      if let v = _storage._creatorAccountID {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 9)
      }
      if let v = _storage._payerAccountID {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 10)
      }
      if let v = _storage._scheduledTransactionID {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 11)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Proto_ScheduleInfo, rhs: Proto_ScheduleInfo) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._scheduleID != rhs_storage._scheduleID {return false}
        if _storage._data != rhs_storage._data {return false}
        if _storage._expirationTime != rhs_storage._expirationTime {return false}
        if _storage._scheduledTransactionBody != rhs_storage._scheduledTransactionBody {return false}
        if _storage._memo != rhs_storage._memo {return false}
        if _storage._adminKey != rhs_storage._adminKey {return false}
        if _storage._signers != rhs_storage._signers {return false}
        if _storage._creatorAccountID != rhs_storage._creatorAccountID {return false}
        if _storage._payerAccountID != rhs_storage._payerAccountID {return false}
        if _storage._scheduledTransactionID != rhs_storage._scheduledTransactionID {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Proto_ScheduleGetInfoResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ScheduleGetInfoResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "header"),
    2: .same(proto: "scheduleInfo"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._header) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._scheduleInfo) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._header {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if let v = self._scheduleInfo {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Proto_ScheduleGetInfoResponse, rhs: Proto_ScheduleGetInfoResponse) -> Bool {
    if lhs._header != rhs._header {return false}
    if lhs._scheduleInfo != rhs._scheduleInfo {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
