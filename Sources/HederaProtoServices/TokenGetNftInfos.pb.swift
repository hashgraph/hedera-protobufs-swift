// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: TokenGetNftInfos.proto
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

/// Applicable only to tokens of type NON_FUNGIBLE_UNIQUE. Gets info on NFTs N through M on the list of NFTs associated with a given NON_FUNGIBLE_UNIQUE Token.
/// Example: If there are 10 NFTs issued, having start=0 and end=5 will query for the first 5 NFTs. Querying +all 10 NFTs will require start=0 and end=10
public struct Proto_TokenGetNftInfosQuery {
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

  /// The ID of the token for which information is requested
  public var tokenID: Proto_TokenID {
    get {return _tokenID ?? Proto_TokenID()}
    set {_tokenID = newValue}
  }
  /// Returns true if `tokenID` has been explicitly set.
  public var hasTokenID: Bool {return self._tokenID != nil}
  /// Clears the value of `tokenID`. Subsequent reads from it will return its default value.
  public mutating func clearTokenID() {self._tokenID = nil}

  /// Specifies the start index (inclusive) of the range of NFTs to query for. Value must be in the range [0; ownedNFTs-1]
  public var start: Int64 = 0

  /// Specifies the end index (exclusive) of the range of NFTs to query for. Value must be in the range (start; ownedNFTs]
  public var end: Int64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _header: Proto_QueryHeader? = nil
  fileprivate var _tokenID: Proto_TokenID? = nil
}

public struct Proto_TokenGetNftInfosResponse {
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

  /// The Token with type NON_FUNGIBLE that this record is for
  public var tokenID: Proto_TokenID {
    get {return _tokenID ?? Proto_TokenID()}
    set {_tokenID = newValue}
  }
  /// Returns true if `tokenID` has been explicitly set.
  public var hasTokenID: Bool {return self._tokenID != nil}
  /// Clears the value of `tokenID`. Subsequent reads from it will return its default value.
  public mutating func clearTokenID() {self._tokenID = nil}

  /// List of NFTs associated to the specified token
  public var nfts: [Proto_TokenNftInfo] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _header: Proto_ResponseHeader? = nil
  fileprivate var _tokenID: Proto_TokenID? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "proto"

extension Proto_TokenGetNftInfosQuery: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".TokenGetNftInfosQuery"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "header"),
    2: .same(proto: "tokenID"),
    3: .same(proto: "start"),
    4: .same(proto: "end"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._header) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._tokenID) }()
      case 3: try { try decoder.decodeSingularInt64Field(value: &self.start) }()
      case 4: try { try decoder.decodeSingularInt64Field(value: &self.end) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._header {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if let v = self._tokenID {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if self.start != 0 {
      try visitor.visitSingularInt64Field(value: self.start, fieldNumber: 3)
    }
    if self.end != 0 {
      try visitor.visitSingularInt64Field(value: self.end, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Proto_TokenGetNftInfosQuery, rhs: Proto_TokenGetNftInfosQuery) -> Bool {
    if lhs._header != rhs._header {return false}
    if lhs._tokenID != rhs._tokenID {return false}
    if lhs.start != rhs.start {return false}
    if lhs.end != rhs.end {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Proto_TokenGetNftInfosResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".TokenGetNftInfosResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "header"),
    2: .same(proto: "tokenID"),
    3: .same(proto: "nfts"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._header) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._tokenID) }()
      case 3: try { try decoder.decodeRepeatedMessageField(value: &self.nfts) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._header {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if let v = self._tokenID {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if !self.nfts.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.nfts, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Proto_TokenGetNftInfosResponse, rhs: Proto_TokenGetNftInfosResponse) -> Bool {
    if lhs._header != rhs._header {return false}
    if lhs._tokenID != rhs._tokenID {return false}
    if lhs.nfts != rhs.nfts {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}