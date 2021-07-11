// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: CryptoDeleteLiveHash.proto
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

/// At consensus, deletes a livehash associated to the given account. The transaction must be signed by either the key of the owning account, or at least one of the keys associated to the livehash. 
public struct Proto_CryptoDeleteLiveHashTransactionBody {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The account owning the livehash
  public var accountOfLiveHash: Proto_AccountID {
    get {return _accountOfLiveHash ?? Proto_AccountID()}
    set {_accountOfLiveHash = newValue}
  }
  /// Returns true if `accountOfLiveHash` has been explicitly set.
  public var hasAccountOfLiveHash: Bool {return self._accountOfLiveHash != nil}
  /// Clears the value of `accountOfLiveHash`. Subsequent reads from it will return its default value.
  public mutating func clearAccountOfLiveHash() {self._accountOfLiveHash = nil}

  /// The SHA-384 livehash to delete from the account
  public var liveHashToDelete: Data = Data()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _accountOfLiveHash: Proto_AccountID? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "proto"

extension Proto_CryptoDeleteLiveHashTransactionBody: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CryptoDeleteLiveHashTransactionBody"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "accountOfLiveHash"),
    2: .same(proto: "liveHashToDelete"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._accountOfLiveHash) }()
      case 2: try { try decoder.decodeSingularBytesField(value: &self.liveHashToDelete) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._accountOfLiveHash {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if !self.liveHashToDelete.isEmpty {
      try visitor.visitSingularBytesField(value: self.liveHashToDelete, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Proto_CryptoDeleteLiveHashTransactionBody, rhs: Proto_CryptoDeleteLiveHashTransactionBody) -> Bool {
    if lhs._accountOfLiveHash != rhs._accountOfLiveHash {return false}
    if lhs.liveHashToDelete != rhs.liveHashToDelete {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}