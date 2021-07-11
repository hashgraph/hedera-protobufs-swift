// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: ConsensusDeleteTopic.proto
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

/// See [ConsensusService.deleteTopic()](#proto.ConsensusService)
public struct Proto_ConsensusDeleteTopicTransactionBody {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Topic identifier.
  public var topicID: Proto_TopicID {
    get {return _topicID ?? Proto_TopicID()}
    set {_topicID = newValue}
  }
  /// Returns true if `topicID` has been explicitly set.
  public var hasTopicID: Bool {return self._topicID != nil}
  /// Clears the value of `topicID`. Subsequent reads from it will return its default value.
  public mutating func clearTopicID() {self._topicID = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _topicID: Proto_TopicID? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "proto"

extension Proto_ConsensusDeleteTopicTransactionBody: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ConsensusDeleteTopicTransactionBody"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "topicID"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._topicID) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._topicID {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Proto_ConsensusDeleteTopicTransactionBody, rhs: Proto_ConsensusDeleteTopicTransactionBody) -> Bool {
    if lhs._topicID != rhs._topicID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
