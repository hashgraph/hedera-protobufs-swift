// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: Freeze.proto
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

/// Set the freezing period in which the platform will stop creating events and accepting transactions. This is used before safely shut down the platform for maintenance. 
public struct Proto_FreezeTransactionBody {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The start hour (in UTC time), a value between 0 and 23
  public var startHour: Int32 = 0

  /// The start minute (in UTC time), a value between 0 and 59
  public var startMin: Int32 = 0

  /// The end hour (in UTC time), a value between 0 and 23
  public var endHour: Int32 = 0

  /// The end minute (in UTC time), a value between 0 and 59
  public var endMin: Int32 = 0

  /// The ID of the file needs to be updated during a freeze transaction
  public var updateFile: Proto_FileID {
    get {return _updateFile ?? Proto_FileID()}
    set {_updateFile = newValue}
  }
  /// Returns true if `updateFile` has been explicitly set.
  public var hasUpdateFile: Bool {return self._updateFile != nil}
  /// Clears the value of `updateFile`. Subsequent reads from it will return its default value.
  public mutating func clearUpdateFile() {self._updateFile = nil}

  /// The hash value of the file, used to verify file content before performing freeze and update
  public var fileHash: Data = Data()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _updateFile: Proto_FileID? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "proto"

extension Proto_FreezeTransactionBody: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".FreezeTransactionBody"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "startHour"),
    2: .same(proto: "startMin"),
    3: .same(proto: "endHour"),
    4: .same(proto: "endMin"),
    5: .same(proto: "updateFile"),
    6: .same(proto: "fileHash"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt32Field(value: &self.startHour) }()
      case 2: try { try decoder.decodeSingularInt32Field(value: &self.startMin) }()
      case 3: try { try decoder.decodeSingularInt32Field(value: &self.endHour) }()
      case 4: try { try decoder.decodeSingularInt32Field(value: &self.endMin) }()
      case 5: try { try decoder.decodeSingularMessageField(value: &self._updateFile) }()
      case 6: try { try decoder.decodeSingularBytesField(value: &self.fileHash) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.startHour != 0 {
      try visitor.visitSingularInt32Field(value: self.startHour, fieldNumber: 1)
    }
    if self.startMin != 0 {
      try visitor.visitSingularInt32Field(value: self.startMin, fieldNumber: 2)
    }
    if self.endHour != 0 {
      try visitor.visitSingularInt32Field(value: self.endHour, fieldNumber: 3)
    }
    if self.endMin != 0 {
      try visitor.visitSingularInt32Field(value: self.endMin, fieldNumber: 4)
    }
    if let v = self._updateFile {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
    }
    if !self.fileHash.isEmpty {
      try visitor.visitSingularBytesField(value: self.fileHash, fieldNumber: 6)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Proto_FreezeTransactionBody, rhs: Proto_FreezeTransactionBody) -> Bool {
    if lhs.startHour != rhs.startHour {return false}
    if lhs.startMin != rhs.startMin {return false}
    if lhs.endHour != rhs.endHour {return false}
    if lhs.endMin != rhs.endMin {return false}
    if lhs._updateFile != rhs._updateFile {return false}
    if lhs.fileHash != rhs.fileHash {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}