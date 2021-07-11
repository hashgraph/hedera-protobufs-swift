// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: CryptoDelete.proto
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

/// Mark an account as deleted, moving all its current hbars to another account. It will remain in the ledger, marked as deleted, until it expires. Transfers into it a deleted account fail. But a deleted account can still have its expiration extended in the normal way. 
public struct Proto_CryptoDeleteTransactionBody {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The account ID which will receive all remaining hbars
  public var transferAccountID: Proto_AccountID {
    get {return _transferAccountID ?? Proto_AccountID()}
    set {_transferAccountID = newValue}
  }
  /// Returns true if `transferAccountID` has been explicitly set.
  public var hasTransferAccountID: Bool {return self._transferAccountID != nil}
  /// Clears the value of `transferAccountID`. Subsequent reads from it will return its default value.
  public mutating func clearTransferAccountID() {self._transferAccountID = nil}

  /// The account ID which should be deleted
  public var deleteAccountID: Proto_AccountID {
    get {return _deleteAccountID ?? Proto_AccountID()}
    set {_deleteAccountID = newValue}
  }
  /// Returns true if `deleteAccountID` has been explicitly set.
  public var hasDeleteAccountID: Bool {return self._deleteAccountID != nil}
  /// Clears the value of `deleteAccountID`. Subsequent reads from it will return its default value.
  public mutating func clearDeleteAccountID() {self._deleteAccountID = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _transferAccountID: Proto_AccountID? = nil
  fileprivate var _deleteAccountID: Proto_AccountID? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "proto"

extension Proto_CryptoDeleteTransactionBody: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CryptoDeleteTransactionBody"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "transferAccountID"),
    2: .same(proto: "deleteAccountID"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._transferAccountID) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._deleteAccountID) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._transferAccountID {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if let v = self._deleteAccountID {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Proto_CryptoDeleteTransactionBody, rhs: Proto_CryptoDeleteTransactionBody) -> Bool {
    if lhs._transferAccountID != rhs._transferAccountID {return false}
    if lhs._deleteAccountID != rhs._deleteAccountID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}