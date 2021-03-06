//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: SmartContractService.proto
//

//
// Copyright 2018, gRPC Authors All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
import GRPC
import NIO
import SwiftProtobuf


///
///Transactions and queries for the file service.
///
/// Usage: instantiate `Proto_SmartContractServiceClient`, then call methods of this protocol to make API calls.
public protocol Proto_SmartContractServiceClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Proto_SmartContractServiceClientInterceptorFactoryProtocol? { get }

  func createContract(
    _ request: Proto_Transaction,
    callOptions: CallOptions?
  ) -> UnaryCall<Proto_Transaction, Proto_TransactionResponse>

  func updateContract(
    _ request: Proto_Transaction,
    callOptions: CallOptions?
  ) -> UnaryCall<Proto_Transaction, Proto_TransactionResponse>

  func contractCallMethod(
    _ request: Proto_Transaction,
    callOptions: CallOptions?
  ) -> UnaryCall<Proto_Transaction, Proto_TransactionResponse>

  func getContractInfo(
    _ request: Proto_Query,
    callOptions: CallOptions?
  ) -> UnaryCall<Proto_Query, Proto_Response>

  func contractCallLocalMethod(
    _ request: Proto_Query,
    callOptions: CallOptions?
  ) -> UnaryCall<Proto_Query, Proto_Response>

  func contractGetBytecode(
    _ request: Proto_Query,
    callOptions: CallOptions?
  ) -> UnaryCall<Proto_Query, Proto_Response>

  func getBySolidityID(
    _ request: Proto_Query,
    callOptions: CallOptions?
  ) -> UnaryCall<Proto_Query, Proto_Response>

  func getTxRecordByContractID(
    _ request: Proto_Query,
    callOptions: CallOptions?
  ) -> UnaryCall<Proto_Query, Proto_Response>

  func deleteContract(
    _ request: Proto_Transaction,
    callOptions: CallOptions?
  ) -> UnaryCall<Proto_Transaction, Proto_TransactionResponse>

  func systemDelete(
    _ request: Proto_Transaction,
    callOptions: CallOptions?
  ) -> UnaryCall<Proto_Transaction, Proto_TransactionResponse>

  func systemUndelete(
    _ request: Proto_Transaction,
    callOptions: CallOptions?
  ) -> UnaryCall<Proto_Transaction, Proto_TransactionResponse>
}

extension Proto_SmartContractServiceClientProtocol {
  public var serviceName: String {
    return "proto.SmartContractService"
  }

  /// Creates a contract
  ///
  /// - Parameters:
  ///   - request: Request to send to createContract.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func createContract(
    _ request: Proto_Transaction,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Proto_Transaction, Proto_TransactionResponse> {
    return self.makeUnaryCall(
      path: "/proto.SmartContractService/createContract",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makecreateContractInterceptors() ?? []
    )
  }

  /// Updates a contract with the content
  ///
  /// - Parameters:
  ///   - request: Request to send to updateContract.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func updateContract(
    _ request: Proto_Transaction,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Proto_Transaction, Proto_TransactionResponse> {
    return self.makeUnaryCall(
      path: "/proto.SmartContractService/updateContract",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeupdateContractInterceptors() ?? []
    )
  }

  /// Calls a contract
  ///
  /// - Parameters:
  ///   - request: Request to send to contractCallMethod.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func contractCallMethod(
    _ request: Proto_Transaction,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Proto_Transaction, Proto_TransactionResponse> {
    return self.makeUnaryCall(
      path: "/proto.SmartContractService/contractCallMethod",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makecontractCallMethodInterceptors() ?? []
    )
  }

  /// Retrieves the contract information
  ///
  /// - Parameters:
  ///   - request: Request to send to getContractInfo.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getContractInfo(
    _ request: Proto_Query,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Proto_Query, Proto_Response> {
    return self.makeUnaryCall(
      path: "/proto.SmartContractService/getContractInfo",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makegetContractInfoInterceptors() ?? []
    )
  }

  /// Calls a smart contract to be run on a single node
  ///
  /// - Parameters:
  ///   - request: Request to send to contractCallLocalMethod.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func contractCallLocalMethod(
    _ request: Proto_Query,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Proto_Query, Proto_Response> {
    return self.makeUnaryCall(
      path: "/proto.SmartContractService/contractCallLocalMethod",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makecontractCallLocalMethodInterceptors() ?? []
    )
  }

  /// Retrieves the byte code of a contract
  ///
  /// - Parameters:
  ///   - request: Request to send to ContractGetBytecode.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func contractGetBytecode(
    _ request: Proto_Query,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Proto_Query, Proto_Response> {
    return self.makeUnaryCall(
      path: "/proto.SmartContractService/ContractGetBytecode",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeContractGetBytecodeInterceptors() ?? []
    )
  }

  /// Retrieves a contract by its Solidity address
  ///
  /// - Parameters:
  ///   - request: Request to send to getBySolidityID.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getBySolidityID(
    _ request: Proto_Query,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Proto_Query, Proto_Response> {
    return self.makeUnaryCall(
      path: "/proto.SmartContractService/getBySolidityID",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makegetBySolidityIDInterceptors() ?? []
    )
  }

  /// Always returns an empty record list, as contract accounts are never effective payers for transactions
  ///
  /// - Parameters:
  ///   - request: Request to send to getTxRecordByContractID.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getTxRecordByContractID(
    _ request: Proto_Query,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Proto_Query, Proto_Response> {
    return self.makeUnaryCall(
      path: "/proto.SmartContractService/getTxRecordByContractID",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makegetTxRecordByContractIDInterceptors() ?? []
    )
  }

  /// Deletes a contract instance and transfers any remaining hbars to a specified receiver
  ///
  /// - Parameters:
  ///   - request: Request to send to deleteContract.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func deleteContract(
    _ request: Proto_Transaction,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Proto_Transaction, Proto_TransactionResponse> {
    return self.makeUnaryCall(
      path: "/proto.SmartContractService/deleteContract",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makedeleteContractInterceptors() ?? []
    )
  }

  /// Deletes a contract if the submitting account has network admin privileges
  ///
  /// - Parameters:
  ///   - request: Request to send to systemDelete.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func systemDelete(
    _ request: Proto_Transaction,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Proto_Transaction, Proto_TransactionResponse> {
    return self.makeUnaryCall(
      path: "/proto.SmartContractService/systemDelete",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makesystemDeleteInterceptors() ?? []
    )
  }

  /// Undeletes a contract if the submitting account has network admin privileges
  ///
  /// - Parameters:
  ///   - request: Request to send to systemUndelete.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func systemUndelete(
    _ request: Proto_Transaction,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Proto_Transaction, Proto_TransactionResponse> {
    return self.makeUnaryCall(
      path: "/proto.SmartContractService/systemUndelete",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makesystemUndeleteInterceptors() ?? []
    )
  }
}

public protocol Proto_SmartContractServiceClientInterceptorFactoryProtocol {

  /// - Returns: Interceptors to use when invoking 'createContract'.
  func makecreateContractInterceptors() -> [ClientInterceptor<Proto_Transaction, Proto_TransactionResponse>]

  /// - Returns: Interceptors to use when invoking 'updateContract'.
  func makeupdateContractInterceptors() -> [ClientInterceptor<Proto_Transaction, Proto_TransactionResponse>]

  /// - Returns: Interceptors to use when invoking 'contractCallMethod'.
  func makecontractCallMethodInterceptors() -> [ClientInterceptor<Proto_Transaction, Proto_TransactionResponse>]

  /// - Returns: Interceptors to use when invoking 'getContractInfo'.
  func makegetContractInfoInterceptors() -> [ClientInterceptor<Proto_Query, Proto_Response>]

  /// - Returns: Interceptors to use when invoking 'contractCallLocalMethod'.
  func makecontractCallLocalMethodInterceptors() -> [ClientInterceptor<Proto_Query, Proto_Response>]

  /// - Returns: Interceptors to use when invoking 'contractGetBytecode'.
  func makeContractGetBytecodeInterceptors() -> [ClientInterceptor<Proto_Query, Proto_Response>]

  /// - Returns: Interceptors to use when invoking 'getBySolidityID'.
  func makegetBySolidityIDInterceptors() -> [ClientInterceptor<Proto_Query, Proto_Response>]

  /// - Returns: Interceptors to use when invoking 'getTxRecordByContractID'.
  func makegetTxRecordByContractIDInterceptors() -> [ClientInterceptor<Proto_Query, Proto_Response>]

  /// - Returns: Interceptors to use when invoking 'deleteContract'.
  func makedeleteContractInterceptors() -> [ClientInterceptor<Proto_Transaction, Proto_TransactionResponse>]

  /// - Returns: Interceptors to use when invoking 'systemDelete'.
  func makesystemDeleteInterceptors() -> [ClientInterceptor<Proto_Transaction, Proto_TransactionResponse>]

  /// - Returns: Interceptors to use when invoking 'systemUndelete'.
  func makesystemUndeleteInterceptors() -> [ClientInterceptor<Proto_Transaction, Proto_TransactionResponse>]
}

public final class Proto_SmartContractServiceClient: Proto_SmartContractServiceClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Proto_SmartContractServiceClientInterceptorFactoryProtocol?

  /// Creates a client for the proto.SmartContractService service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Proto_SmartContractServiceClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

///
///Transactions and queries for the file service.
///
/// To build a server, implement a class that conforms to this protocol.
public protocol Proto_SmartContractServiceProvider: CallHandlerProvider {
  var interceptors: Proto_SmartContractServiceServerInterceptorFactoryProtocol? { get }

  /// Creates a contract
  func createContract(request: Proto_Transaction, context: StatusOnlyCallContext) -> EventLoopFuture<Proto_TransactionResponse>

  /// Updates a contract with the content
  func updateContract(request: Proto_Transaction, context: StatusOnlyCallContext) -> EventLoopFuture<Proto_TransactionResponse>

  /// Calls a contract
  func contractCallMethod(request: Proto_Transaction, context: StatusOnlyCallContext) -> EventLoopFuture<Proto_TransactionResponse>

  /// Retrieves the contract information
  func getContractInfo(request: Proto_Query, context: StatusOnlyCallContext) -> EventLoopFuture<Proto_Response>

  /// Calls a smart contract to be run on a single node
  func contractCallLocalMethod(request: Proto_Query, context: StatusOnlyCallContext) -> EventLoopFuture<Proto_Response>

  /// Retrieves the byte code of a contract
  func contractGetBytecode(request: Proto_Query, context: StatusOnlyCallContext) -> EventLoopFuture<Proto_Response>

  /// Retrieves a contract by its Solidity address
  func getBySolidityID(request: Proto_Query, context: StatusOnlyCallContext) -> EventLoopFuture<Proto_Response>

  /// Always returns an empty record list, as contract accounts are never effective payers for transactions
  func getTxRecordByContractID(request: Proto_Query, context: StatusOnlyCallContext) -> EventLoopFuture<Proto_Response>

  /// Deletes a contract instance and transfers any remaining hbars to a specified receiver
  func deleteContract(request: Proto_Transaction, context: StatusOnlyCallContext) -> EventLoopFuture<Proto_TransactionResponse>

  /// Deletes a contract if the submitting account has network admin privileges
  func systemDelete(request: Proto_Transaction, context: StatusOnlyCallContext) -> EventLoopFuture<Proto_TransactionResponse>

  /// Undeletes a contract if the submitting account has network admin privileges
  func systemUndelete(request: Proto_Transaction, context: StatusOnlyCallContext) -> EventLoopFuture<Proto_TransactionResponse>
}

extension Proto_SmartContractServiceProvider {
  public var serviceName: Substring { return "proto.SmartContractService" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handle(
    method name: Substring,
    context: CallHandlerContext
  ) -> GRPCServerHandlerProtocol? {
    switch name {
    case "createContract":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Proto_Transaction>(),
        responseSerializer: ProtobufSerializer<Proto_TransactionResponse>(),
        interceptors: self.interceptors?.makecreateContractInterceptors() ?? [],
        userFunction: self.createContract(request:context:)
      )

    case "updateContract":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Proto_Transaction>(),
        responseSerializer: ProtobufSerializer<Proto_TransactionResponse>(),
        interceptors: self.interceptors?.makeupdateContractInterceptors() ?? [],
        userFunction: self.updateContract(request:context:)
      )

    case "contractCallMethod":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Proto_Transaction>(),
        responseSerializer: ProtobufSerializer<Proto_TransactionResponse>(),
        interceptors: self.interceptors?.makecontractCallMethodInterceptors() ?? [],
        userFunction: self.contractCallMethod(request:context:)
      )

    case "getContractInfo":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Proto_Query>(),
        responseSerializer: ProtobufSerializer<Proto_Response>(),
        interceptors: self.interceptors?.makegetContractInfoInterceptors() ?? [],
        userFunction: self.getContractInfo(request:context:)
      )

    case "contractCallLocalMethod":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Proto_Query>(),
        responseSerializer: ProtobufSerializer<Proto_Response>(),
        interceptors: self.interceptors?.makecontractCallLocalMethodInterceptors() ?? [],
        userFunction: self.contractCallLocalMethod(request:context:)
      )

    case "ContractGetBytecode":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Proto_Query>(),
        responseSerializer: ProtobufSerializer<Proto_Response>(),
        interceptors: self.interceptors?.makeContractGetBytecodeInterceptors() ?? [],
        userFunction: self.contractGetBytecode(request:context:)
      )

    case "getBySolidityID":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Proto_Query>(),
        responseSerializer: ProtobufSerializer<Proto_Response>(),
        interceptors: self.interceptors?.makegetBySolidityIDInterceptors() ?? [],
        userFunction: self.getBySolidityID(request:context:)
      )

    case "getTxRecordByContractID":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Proto_Query>(),
        responseSerializer: ProtobufSerializer<Proto_Response>(),
        interceptors: self.interceptors?.makegetTxRecordByContractIDInterceptors() ?? [],
        userFunction: self.getTxRecordByContractID(request:context:)
      )

    case "deleteContract":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Proto_Transaction>(),
        responseSerializer: ProtobufSerializer<Proto_TransactionResponse>(),
        interceptors: self.interceptors?.makedeleteContractInterceptors() ?? [],
        userFunction: self.deleteContract(request:context:)
      )

    case "systemDelete":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Proto_Transaction>(),
        responseSerializer: ProtobufSerializer<Proto_TransactionResponse>(),
        interceptors: self.interceptors?.makesystemDeleteInterceptors() ?? [],
        userFunction: self.systemDelete(request:context:)
      )

    case "systemUndelete":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Proto_Transaction>(),
        responseSerializer: ProtobufSerializer<Proto_TransactionResponse>(),
        interceptors: self.interceptors?.makesystemUndeleteInterceptors() ?? [],
        userFunction: self.systemUndelete(request:context:)
      )

    default:
      return nil
    }
  }
}

public protocol Proto_SmartContractServiceServerInterceptorFactoryProtocol {

  /// - Returns: Interceptors to use when handling 'createContract'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makecreateContractInterceptors() -> [ServerInterceptor<Proto_Transaction, Proto_TransactionResponse>]

  /// - Returns: Interceptors to use when handling 'updateContract'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeupdateContractInterceptors() -> [ServerInterceptor<Proto_Transaction, Proto_TransactionResponse>]

  /// - Returns: Interceptors to use when handling 'contractCallMethod'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makecontractCallMethodInterceptors() -> [ServerInterceptor<Proto_Transaction, Proto_TransactionResponse>]

  /// - Returns: Interceptors to use when handling 'getContractInfo'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makegetContractInfoInterceptors() -> [ServerInterceptor<Proto_Query, Proto_Response>]

  /// - Returns: Interceptors to use when handling 'contractCallLocalMethod'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makecontractCallLocalMethodInterceptors() -> [ServerInterceptor<Proto_Query, Proto_Response>]

  /// - Returns: Interceptors to use when handling 'contractGetBytecode'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeContractGetBytecodeInterceptors() -> [ServerInterceptor<Proto_Query, Proto_Response>]

  /// - Returns: Interceptors to use when handling 'getBySolidityID'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makegetBySolidityIDInterceptors() -> [ServerInterceptor<Proto_Query, Proto_Response>]

  /// - Returns: Interceptors to use when handling 'getTxRecordByContractID'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makegetTxRecordByContractIDInterceptors() -> [ServerInterceptor<Proto_Query, Proto_Response>]

  /// - Returns: Interceptors to use when handling 'deleteContract'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makedeleteContractInterceptors() -> [ServerInterceptor<Proto_Transaction, Proto_TransactionResponse>]

  /// - Returns: Interceptors to use when handling 'systemDelete'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makesystemDeleteInterceptors() -> [ServerInterceptor<Proto_Transaction, Proto_TransactionResponse>]

  /// - Returns: Interceptors to use when handling 'systemUndelete'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makesystemUndeleteInterceptors() -> [ServerInterceptor<Proto_Transaction, Proto_TransactionResponse>]
}
