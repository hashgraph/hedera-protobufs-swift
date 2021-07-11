// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: TransactionGetFastRecord.proto
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

/// Get the tx record of a transaction, given its transaction ID. Once a transaction reaches consensus, then information about whether it succeeded or failed will be available until the end of the receipt period.  Before and after the receipt period, and for a transaction that was never submitted, the receipt is unknown.  This query is free (the payment field is left empty). 
public struct Proto_TransactionGetFastRecordQuery {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Standard info sent from client to node, including the signed payment, and what kind of response is requested (cost, state proof, both, or neither).
  public var header: Proto_QueryHeader {
    get {return _header ?? Proto_QueryHeader()}
    set {_header = newValue}
  }
  /// Returns true if `header` has been explicitly set.
  public var hasHeader: Bool {return self._header != nil}
  /// Clears the value of `header`. Subsequent reads from it will return its default value.
  public mutating func clearHeader() {self._header = nil}

  /// The ID of the transaction for which the record is requested.
  public var transactionID: Proto_TransactionID {
    get {return _transactionID ?? Proto_TransactionID()}
    set {_transactionID = newValue}
  }
  /// Returns true if `transactionID` has been explicitly set.
  public var hasTransactionID: Bool {return self._transactionID != nil}
  /// Clears the value of `transactionID`. Subsequent reads from it will return its default value.
  public mutating func clearTransactionID() {self._transactionID = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _header: Proto_QueryHeader? = nil
  fileprivate var _transactionID: Proto_TransactionID? = nil
}

/// Response when the client sends the node TransactionGetFastRecordQuery. If it created a new entity (account, file, or smart contract instance) then one of the three ID fields will be filled in with the ID of the new entity. Sometimes a single transaction will create more than one new entity, such as when a new contract instance is created, and this also creates the new account that it owned by that instance. 
public struct Proto_TransactionGetFastRecordResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  ///Standard response from node to client, including the requested fields: cost, or state proof, or both, or neither
  public var header: Proto_ResponseHeader {
    get {return _header ?? Proto_ResponseHeader()}
    set {_header = newValue}
  }
  /// Returns true if `header` has been explicitly set.
  public var hasHeader: Bool {return self._header != nil}
  /// Clears the value of `header`. Subsequent reads from it will return its default value.
  public mutating func clearHeader() {self._header = nil}

  /// The requested transaction records
  public var transactionRecord: Proto_TransactionRecord {
    get {return _transactionRecord ?? Proto_TransactionRecord()}
    set {_transactionRecord = newValue}
  }
  /// Returns true if `transactionRecord` has been explicitly set.
  public var hasTransactionRecord: Bool {return self._transactionRecord != nil}
  /// Clears the value of `transactionRecord`. Subsequent reads from it will return its default value.
  public mutating func clearTransactionRecord() {self._transactionRecord = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _header: Proto_ResponseHeader? = nil
  fileprivate var _transactionRecord: Proto_TransactionRecord? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "proto"

extension Proto_TransactionGetFastRecordQuery: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".TransactionGetFastRecordQuery"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "header"),
    2: .same(proto: "transactionID"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._header) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._transactionID) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._header {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if let v = self._transactionID {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Proto_TransactionGetFastRecordQuery, rhs: Proto_TransactionGetFastRecordQuery) -> Bool {
    if lhs._header != rhs._header {return false}
    if lhs._transactionID != rhs._transactionID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Proto_TransactionGetFastRecordResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".TransactionGetFastRecordResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "header"),
    2: .same(proto: "transactionRecord"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._header) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._transactionRecord) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._header {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if let v = self._transactionRecord {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Proto_TransactionGetFastRecordResponse, rhs: Proto_TransactionGetFastRecordResponse) -> Bool {
    if lhs._header != rhs._header {return false}
    if lhs._transactionRecord != rhs._transactionRecord {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
