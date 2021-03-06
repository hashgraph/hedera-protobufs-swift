// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: TokenGetNftInfo.proto
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

/// Represents an NFT on the Ledger 
public struct Proto_NftID {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The (non-fungible) token of which this NFT is an instance
  public var tokenID: Proto_TokenID {
    get {return _tokenID ?? Proto_TokenID()}
    set {_tokenID = newValue}
  }
  /// Returns true if `tokenID` has been explicitly set.
  public var hasTokenID: Bool {return self._tokenID != nil}
  /// Clears the value of `tokenID`. Subsequent reads from it will return its default value.
  public mutating func clearTokenID() {self._tokenID = nil}

  /// The unique identifier of this instance
  public var serialNumber: Int64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _tokenID: Proto_TokenID? = nil
}

/// Applicable only to tokens of type NON_FUNGIBLE_UNIQUE. Gets info on a NFT for a given TokenID (of type NON_FUNGIBLE_UNIQUE) and serial number 
public struct Proto_TokenGetNftInfoQuery {
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

  /// The ID of the NFT
  public var nftID: Proto_NftID {
    get {return _nftID ?? Proto_NftID()}
    set {_nftID = newValue}
  }
  /// Returns true if `nftID` has been explicitly set.
  public var hasNftID: Bool {return self._nftID != nil}
  /// Clears the value of `nftID`. Subsequent reads from it will return its default value.
  public mutating func clearNftID() {self._nftID = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _header: Proto_QueryHeader? = nil
  fileprivate var _nftID: Proto_NftID? = nil
}

public struct Proto_TokenNftInfo {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The ID of the NFT
  public var nftID: Proto_NftID {
    get {return _nftID ?? Proto_NftID()}
    set {_nftID = newValue}
  }
  /// Returns true if `nftID` has been explicitly set.
  public var hasNftID: Bool {return self._nftID != nil}
  /// Clears the value of `nftID`. Subsequent reads from it will return its default value.
  public mutating func clearNftID() {self._nftID = nil}

  /// The current owner of the NFT
  public var accountID: Proto_AccountID {
    get {return _accountID ?? Proto_AccountID()}
    set {_accountID = newValue}
  }
  /// Returns true if `accountID` has been explicitly set.
  public var hasAccountID: Bool {return self._accountID != nil}
  /// Clears the value of `accountID`. Subsequent reads from it will return its default value.
  public mutating func clearAccountID() {self._accountID = nil}

  /// The effective consensus timestamp at which the NFT was minted
  public var creationTime: Proto_Timestamp {
    get {return _creationTime ?? Proto_Timestamp()}
    set {_creationTime = newValue}
  }
  /// Returns true if `creationTime` has been explicitly set.
  public var hasCreationTime: Bool {return self._creationTime != nil}
  /// Clears the value of `creationTime`. Subsequent reads from it will return its default value.
  public mutating func clearCreationTime() {self._creationTime = nil}

  /// Represents the unique metadata of the NFT
  public var metadata: Data = Data()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _nftID: Proto_NftID? = nil
  fileprivate var _accountID: Proto_AccountID? = nil
  fileprivate var _creationTime: Proto_Timestamp? = nil
}

public struct Proto_TokenGetNftInfoResponse {
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

  /// The information about this NFT
  public var nft: Proto_TokenNftInfo {
    get {return _nft ?? Proto_TokenNftInfo()}
    set {_nft = newValue}
  }
  /// Returns true if `nft` has been explicitly set.
  public var hasNft: Bool {return self._nft != nil}
  /// Clears the value of `nft`. Subsequent reads from it will return its default value.
  public mutating func clearNft() {self._nft = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _header: Proto_ResponseHeader? = nil
  fileprivate var _nft: Proto_TokenNftInfo? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "proto"

extension Proto_NftID: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".NftID"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "tokenID"),
    2: .same(proto: "serialNumber"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._tokenID) }()
      case 2: try { try decoder.decodeSingularInt64Field(value: &self.serialNumber) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._tokenID {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if self.serialNumber != 0 {
      try visitor.visitSingularInt64Field(value: self.serialNumber, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Proto_NftID, rhs: Proto_NftID) -> Bool {
    if lhs._tokenID != rhs._tokenID {return false}
    if lhs.serialNumber != rhs.serialNumber {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Proto_TokenGetNftInfoQuery: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".TokenGetNftInfoQuery"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "header"),
    2: .same(proto: "nftID"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._header) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._nftID) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._header {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if let v = self._nftID {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Proto_TokenGetNftInfoQuery, rhs: Proto_TokenGetNftInfoQuery) -> Bool {
    if lhs._header != rhs._header {return false}
    if lhs._nftID != rhs._nftID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Proto_TokenNftInfo: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".TokenNftInfo"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "nftID"),
    2: .same(proto: "accountID"),
    3: .same(proto: "creationTime"),
    4: .same(proto: "metadata"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._nftID) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._accountID) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._creationTime) }()
      case 4: try { try decoder.decodeSingularBytesField(value: &self.metadata) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._nftID {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if let v = self._accountID {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if let v = self._creationTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    if !self.metadata.isEmpty {
      try visitor.visitSingularBytesField(value: self.metadata, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Proto_TokenNftInfo, rhs: Proto_TokenNftInfo) -> Bool {
    if lhs._nftID != rhs._nftID {return false}
    if lhs._accountID != rhs._accountID {return false}
    if lhs._creationTime != rhs._creationTime {return false}
    if lhs.metadata != rhs.metadata {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Proto_TokenGetNftInfoResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".TokenGetNftInfoResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "header"),
    2: .same(proto: "nft"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._header) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._nft) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._header {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if let v = self._nft {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Proto_TokenGetNftInfoResponse, rhs: Proto_TokenGetNftInfoResponse) -> Bool {
    if lhs._header != rhs._header {return false}
    if lhs._nft != rhs._nft {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
