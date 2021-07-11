//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: CryptoService.proto
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
///Transactions and queries for the Crypto Service
///
/// Usage: instantiate `Proto_CryptoServiceClient`, then call methods of this protocol to make API calls.
public protocol Proto_CryptoServiceClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Proto_CryptoServiceClientInterceptorFactoryProtocol? { get }

  func createAccount(
    _ request: Proto_Transaction,
    callOptions: CallOptions?
  ) -> UnaryCall<Proto_Transaction, Proto_TransactionResponse>

  func updateAccount(
    _ request: Proto_Transaction,
    callOptions: CallOptions?
  ) -> UnaryCall<Proto_Transaction, Proto_TransactionResponse>

  func cryptoTransfer(
    _ request: Proto_Transaction,
    callOptions: CallOptions?
  ) -> UnaryCall<Proto_Transaction, Proto_TransactionResponse>

  func cryptoDelete(
    _ request: Proto_Transaction,
    callOptions: CallOptions?
  ) -> UnaryCall<Proto_Transaction, Proto_TransactionResponse>

  func addLiveHash(
    _ request: Proto_Transaction,
    callOptions: CallOptions?
  ) -> UnaryCall<Proto_Transaction, Proto_TransactionResponse>

  func deleteLiveHash(
    _ request: Proto_Transaction,
    callOptions: CallOptions?
  ) -> UnaryCall<Proto_Transaction, Proto_TransactionResponse>

  func getLiveHash(
    _ request: Proto_Query,
    callOptions: CallOptions?
  ) -> UnaryCall<Proto_Query, Proto_Response>

  func getAccountRecords(
    _ request: Proto_Query,
    callOptions: CallOptions?
  ) -> UnaryCall<Proto_Query, Proto_Response>

  func cryptoGetBalance(
    _ request: Proto_Query,
    callOptions: CallOptions?
  ) -> UnaryCall<Proto_Query, Proto_Response>

  func getAccountInfo(
    _ request: Proto_Query,
    callOptions: CallOptions?
  ) -> UnaryCall<Proto_Query, Proto_Response>

  func getTransactionReceipts(
    _ request: Proto_Query,
    callOptions: CallOptions?
  ) -> UnaryCall<Proto_Query, Proto_Response>

  func getFastTransactionRecord(
    _ request: Proto_Query,
    callOptions: CallOptions?
  ) -> UnaryCall<Proto_Query, Proto_Response>

  func getTxRecordByTxID(
    _ request: Proto_Query,
    callOptions: CallOptions?
  ) -> UnaryCall<Proto_Query, Proto_Response>

  func getStakersByAccountID(
    _ request: Proto_Query,
    callOptions: CallOptions?
  ) -> UnaryCall<Proto_Query, Proto_Response>
}

extension Proto_CryptoServiceClientProtocol {
  public var serviceName: String {
    return "proto.CryptoService"
  }

  /// Creates a new account by submitting the transaction
  ///
  /// - Parameters:
  ///   - request: Request to send to createAccount.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func createAccount(
    _ request: Proto_Transaction,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Proto_Transaction, Proto_TransactionResponse> {
    return self.makeUnaryCall(
      path: "/proto.CryptoService/createAccount",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makecreateAccountInterceptors() ?? []
    )
  }

  /// Updates an account by submitting the transaction
  ///
  /// - Parameters:
  ///   - request: Request to send to updateAccount.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func updateAccount(
    _ request: Proto_Transaction,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Proto_Transaction, Proto_TransactionResponse> {
    return self.makeUnaryCall(
      path: "/proto.CryptoService/updateAccount",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeupdateAccountInterceptors() ?? []
    )
  }

  /// Initiates a transfer by submitting the transaction
  ///
  /// - Parameters:
  ///   - request: Request to send to cryptoTransfer.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func cryptoTransfer(
    _ request: Proto_Transaction,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Proto_Transaction, Proto_TransactionResponse> {
    return self.makeUnaryCall(
      path: "/proto.CryptoService/cryptoTransfer",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makecryptoTransferInterceptors() ?? []
    )
  }

  /// Deletes and account by submitting the transaction
  ///
  /// - Parameters:
  ///   - request: Request to send to cryptoDelete.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func cryptoDelete(
    _ request: Proto_Transaction,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Proto_Transaction, Proto_TransactionResponse> {
    return self.makeUnaryCall(
      path: "/proto.CryptoService/cryptoDelete",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makecryptoDeleteInterceptors() ?? []
    )
  }

  /// (NOT CURRENTLY SUPPORTED) Adds a livehash
  ///
  /// - Parameters:
  ///   - request: Request to send to addLiveHash.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func addLiveHash(
    _ request: Proto_Transaction,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Proto_Transaction, Proto_TransactionResponse> {
    return self.makeUnaryCall(
      path: "/proto.CryptoService/addLiveHash",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeaddLiveHashInterceptors() ?? []
    )
  }

  /// (NOT CURRENTLY SUPPORTED) Deletes a livehash
  ///
  /// - Parameters:
  ///   - request: Request to send to deleteLiveHash.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func deleteLiveHash(
    _ request: Proto_Transaction,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Proto_Transaction, Proto_TransactionResponse> {
    return self.makeUnaryCall(
      path: "/proto.CryptoService/deleteLiveHash",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makedeleteLiveHashInterceptors() ?? []
    )
  }

  /// (NOT CURRENTLY SUPPORTED) Retrieves a livehash for an account
  ///
  /// - Parameters:
  ///   - request: Request to send to getLiveHash.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getLiveHash(
    _ request: Proto_Query,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Proto_Query, Proto_Response> {
    return self.makeUnaryCall(
      path: "/proto.CryptoService/getLiveHash",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makegetLiveHashInterceptors() ?? []
    )
  }

  /// Returns all transactions in the last 180s of consensus time for which the given account was the effective payer <b>and</b> network property <tt>ledger.keepRecordsInState</tt> was <tt>true</tt>.
  ///
  /// - Parameters:
  ///   - request: Request to send to getAccountRecords.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getAccountRecords(
    _ request: Proto_Query,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Proto_Query, Proto_Response> {
    return self.makeUnaryCall(
      path: "/proto.CryptoService/getAccountRecords",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makegetAccountRecordsInterceptors() ?? []
    )
  }

  /// Retrieves the balance of an account
  ///
  /// - Parameters:
  ///   - request: Request to send to cryptoGetBalance.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func cryptoGetBalance(
    _ request: Proto_Query,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Proto_Query, Proto_Response> {
    return self.makeUnaryCall(
      path: "/proto.CryptoService/cryptoGetBalance",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makecryptoGetBalanceInterceptors() ?? []
    )
  }

  /// Retrieves the metadata of an account
  ///
  /// - Parameters:
  ///   - request: Request to send to getAccountInfo.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getAccountInfo(
    _ request: Proto_Query,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Proto_Query, Proto_Response> {
    return self.makeUnaryCall(
      path: "/proto.CryptoService/getAccountInfo",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makegetAccountInfoInterceptors() ?? []
    )
  }

  /// Retrieves the latest receipt for a transaction that is either awaiting consensus, or reached consensus in the last 180 seconds
  ///
  /// - Parameters:
  ///   - request: Request to send to getTransactionReceipts.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getTransactionReceipts(
    _ request: Proto_Query,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Proto_Query, Proto_Response> {
    return self.makeUnaryCall(
      path: "/proto.CryptoService/getTransactionReceipts",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makegetTransactionReceiptsInterceptors() ?? []
    )
  }

  /// (NOT CURRENTLY SUPPORTED) Returns the records of transactions recently funded by an account
  ///
  /// - Parameters:
  ///   - request: Request to send to getFastTransactionRecord.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getFastTransactionRecord(
    _ request: Proto_Query,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Proto_Query, Proto_Response> {
    return self.makeUnaryCall(
      path: "/proto.CryptoService/getFastTransactionRecord",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makegetFastTransactionRecordInterceptors() ?? []
    )
  }

  /// Retrieves the record of a transaction that is either awaiting consensus, or reached consensus in the last 180 seconds
  ///
  /// - Parameters:
  ///   - request: Request to send to getTxRecordByTxID.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getTxRecordByTxID(
    _ request: Proto_Query,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Proto_Query, Proto_Response> {
    return self.makeUnaryCall(
      path: "/proto.CryptoService/getTxRecordByTxID",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makegetTxRecordByTxIDInterceptors() ?? []
    )
  }

  /// (NOT CURRENTLY SUPPORTED) Retrieves the stakers for a node by account id
  ///
  /// - Parameters:
  ///   - request: Request to send to getStakersByAccountID.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getStakersByAccountID(
    _ request: Proto_Query,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Proto_Query, Proto_Response> {
    return self.makeUnaryCall(
      path: "/proto.CryptoService/getStakersByAccountID",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makegetStakersByAccountIDInterceptors() ?? []
    )
  }
}

public protocol Proto_CryptoServiceClientInterceptorFactoryProtocol {

  /// - Returns: Interceptors to use when invoking 'createAccount'.
  func makecreateAccountInterceptors() -> [ClientInterceptor<Proto_Transaction, Proto_TransactionResponse>]

  /// - Returns: Interceptors to use when invoking 'updateAccount'.
  func makeupdateAccountInterceptors() -> [ClientInterceptor<Proto_Transaction, Proto_TransactionResponse>]

  /// - Returns: Interceptors to use when invoking 'cryptoTransfer'.
  func makecryptoTransferInterceptors() -> [ClientInterceptor<Proto_Transaction, Proto_TransactionResponse>]

  /// - Returns: Interceptors to use when invoking 'cryptoDelete'.
  func makecryptoDeleteInterceptors() -> [ClientInterceptor<Proto_Transaction, Proto_TransactionResponse>]

  /// - Returns: Interceptors to use when invoking 'addLiveHash'.
  func makeaddLiveHashInterceptors() -> [ClientInterceptor<Proto_Transaction, Proto_TransactionResponse>]

  /// - Returns: Interceptors to use when invoking 'deleteLiveHash'.
  func makedeleteLiveHashInterceptors() -> [ClientInterceptor<Proto_Transaction, Proto_TransactionResponse>]

  /// - Returns: Interceptors to use when invoking 'getLiveHash'.
  func makegetLiveHashInterceptors() -> [ClientInterceptor<Proto_Query, Proto_Response>]

  /// - Returns: Interceptors to use when invoking 'getAccountRecords'.
  func makegetAccountRecordsInterceptors() -> [ClientInterceptor<Proto_Query, Proto_Response>]

  /// - Returns: Interceptors to use when invoking 'cryptoGetBalance'.
  func makecryptoGetBalanceInterceptors() -> [ClientInterceptor<Proto_Query, Proto_Response>]

  /// - Returns: Interceptors to use when invoking 'getAccountInfo'.
  func makegetAccountInfoInterceptors() -> [ClientInterceptor<Proto_Query, Proto_Response>]

  /// - Returns: Interceptors to use when invoking 'getTransactionReceipts'.
  func makegetTransactionReceiptsInterceptors() -> [ClientInterceptor<Proto_Query, Proto_Response>]

  /// - Returns: Interceptors to use when invoking 'getFastTransactionRecord'.
  func makegetFastTransactionRecordInterceptors() -> [ClientInterceptor<Proto_Query, Proto_Response>]

  /// - Returns: Interceptors to use when invoking 'getTxRecordByTxID'.
  func makegetTxRecordByTxIDInterceptors() -> [ClientInterceptor<Proto_Query, Proto_Response>]

  /// - Returns: Interceptors to use when invoking 'getStakersByAccountID'.
  func makegetStakersByAccountIDInterceptors() -> [ClientInterceptor<Proto_Query, Proto_Response>]
}

public final class Proto_CryptoServiceClient: Proto_CryptoServiceClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Proto_CryptoServiceClientInterceptorFactoryProtocol?

  /// Creates a client for the proto.CryptoService service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Proto_CryptoServiceClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

///
///Transactions and queries for the Crypto Service
///
/// To build a server, implement a class that conforms to this protocol.
public protocol Proto_CryptoServiceProvider: CallHandlerProvider {
  var interceptors: Proto_CryptoServiceServerInterceptorFactoryProtocol? { get }

  /// Creates a new account by submitting the transaction
  func createAccount(request: Proto_Transaction, context: StatusOnlyCallContext) -> EventLoopFuture<Proto_TransactionResponse>

  /// Updates an account by submitting the transaction
  func updateAccount(request: Proto_Transaction, context: StatusOnlyCallContext) -> EventLoopFuture<Proto_TransactionResponse>

  /// Initiates a transfer by submitting the transaction
  func cryptoTransfer(request: Proto_Transaction, context: StatusOnlyCallContext) -> EventLoopFuture<Proto_TransactionResponse>

  /// Deletes and account by submitting the transaction
  func cryptoDelete(request: Proto_Transaction, context: StatusOnlyCallContext) -> EventLoopFuture<Proto_TransactionResponse>

  /// (NOT CURRENTLY SUPPORTED) Adds a livehash
  func addLiveHash(request: Proto_Transaction, context: StatusOnlyCallContext) -> EventLoopFuture<Proto_TransactionResponse>

  /// (NOT CURRENTLY SUPPORTED) Deletes a livehash
  func deleteLiveHash(request: Proto_Transaction, context: StatusOnlyCallContext) -> EventLoopFuture<Proto_TransactionResponse>

  /// (NOT CURRENTLY SUPPORTED) Retrieves a livehash for an account
  func getLiveHash(request: Proto_Query, context: StatusOnlyCallContext) -> EventLoopFuture<Proto_Response>

  /// Returns all transactions in the last 180s of consensus time for which the given account was the effective payer <b>and</b> network property <tt>ledger.keepRecordsInState</tt> was <tt>true</tt>.
  func getAccountRecords(request: Proto_Query, context: StatusOnlyCallContext) -> EventLoopFuture<Proto_Response>

  /// Retrieves the balance of an account
  func cryptoGetBalance(request: Proto_Query, context: StatusOnlyCallContext) -> EventLoopFuture<Proto_Response>

  /// Retrieves the metadata of an account
  func getAccountInfo(request: Proto_Query, context: StatusOnlyCallContext) -> EventLoopFuture<Proto_Response>

  /// Retrieves the latest receipt for a transaction that is either awaiting consensus, or reached consensus in the last 180 seconds
  func getTransactionReceipts(request: Proto_Query, context: StatusOnlyCallContext) -> EventLoopFuture<Proto_Response>

  /// (NOT CURRENTLY SUPPORTED) Returns the records of transactions recently funded by an account
  func getFastTransactionRecord(request: Proto_Query, context: StatusOnlyCallContext) -> EventLoopFuture<Proto_Response>

  /// Retrieves the record of a transaction that is either awaiting consensus, or reached consensus in the last 180 seconds
  func getTxRecordByTxID(request: Proto_Query, context: StatusOnlyCallContext) -> EventLoopFuture<Proto_Response>

  /// (NOT CURRENTLY SUPPORTED) Retrieves the stakers for a node by account id
  func getStakersByAccountID(request: Proto_Query, context: StatusOnlyCallContext) -> EventLoopFuture<Proto_Response>
}

extension Proto_CryptoServiceProvider {
  public var serviceName: Substring { return "proto.CryptoService" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handle(
    method name: Substring,
    context: CallHandlerContext
  ) -> GRPCServerHandlerProtocol? {
    switch name {
    case "createAccount":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Proto_Transaction>(),
        responseSerializer: ProtobufSerializer<Proto_TransactionResponse>(),
        interceptors: self.interceptors?.makecreateAccountInterceptors() ?? [],
        userFunction: self.createAccount(request:context:)
      )

    case "updateAccount":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Proto_Transaction>(),
        responseSerializer: ProtobufSerializer<Proto_TransactionResponse>(),
        interceptors: self.interceptors?.makeupdateAccountInterceptors() ?? [],
        userFunction: self.updateAccount(request:context:)
      )

    case "cryptoTransfer":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Proto_Transaction>(),
        responseSerializer: ProtobufSerializer<Proto_TransactionResponse>(),
        interceptors: self.interceptors?.makecryptoTransferInterceptors() ?? [],
        userFunction: self.cryptoTransfer(request:context:)
      )

    case "cryptoDelete":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Proto_Transaction>(),
        responseSerializer: ProtobufSerializer<Proto_TransactionResponse>(),
        interceptors: self.interceptors?.makecryptoDeleteInterceptors() ?? [],
        userFunction: self.cryptoDelete(request:context:)
      )

    case "addLiveHash":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Proto_Transaction>(),
        responseSerializer: ProtobufSerializer<Proto_TransactionResponse>(),
        interceptors: self.interceptors?.makeaddLiveHashInterceptors() ?? [],
        userFunction: self.addLiveHash(request:context:)
      )

    case "deleteLiveHash":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Proto_Transaction>(),
        responseSerializer: ProtobufSerializer<Proto_TransactionResponse>(),
        interceptors: self.interceptors?.makedeleteLiveHashInterceptors() ?? [],
        userFunction: self.deleteLiveHash(request:context:)
      )

    case "getLiveHash":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Proto_Query>(),
        responseSerializer: ProtobufSerializer<Proto_Response>(),
        interceptors: self.interceptors?.makegetLiveHashInterceptors() ?? [],
        userFunction: self.getLiveHash(request:context:)
      )

    case "getAccountRecords":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Proto_Query>(),
        responseSerializer: ProtobufSerializer<Proto_Response>(),
        interceptors: self.interceptors?.makegetAccountRecordsInterceptors() ?? [],
        userFunction: self.getAccountRecords(request:context:)
      )

    case "cryptoGetBalance":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Proto_Query>(),
        responseSerializer: ProtobufSerializer<Proto_Response>(),
        interceptors: self.interceptors?.makecryptoGetBalanceInterceptors() ?? [],
        userFunction: self.cryptoGetBalance(request:context:)
      )

    case "getAccountInfo":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Proto_Query>(),
        responseSerializer: ProtobufSerializer<Proto_Response>(),
        interceptors: self.interceptors?.makegetAccountInfoInterceptors() ?? [],
        userFunction: self.getAccountInfo(request:context:)
      )

    case "getTransactionReceipts":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Proto_Query>(),
        responseSerializer: ProtobufSerializer<Proto_Response>(),
        interceptors: self.interceptors?.makegetTransactionReceiptsInterceptors() ?? [],
        userFunction: self.getTransactionReceipts(request:context:)
      )

    case "getFastTransactionRecord":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Proto_Query>(),
        responseSerializer: ProtobufSerializer<Proto_Response>(),
        interceptors: self.interceptors?.makegetFastTransactionRecordInterceptors() ?? [],
        userFunction: self.getFastTransactionRecord(request:context:)
      )

    case "getTxRecordByTxID":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Proto_Query>(),
        responseSerializer: ProtobufSerializer<Proto_Response>(),
        interceptors: self.interceptors?.makegetTxRecordByTxIDInterceptors() ?? [],
        userFunction: self.getTxRecordByTxID(request:context:)
      )

    case "getStakersByAccountID":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Proto_Query>(),
        responseSerializer: ProtobufSerializer<Proto_Response>(),
        interceptors: self.interceptors?.makegetStakersByAccountIDInterceptors() ?? [],
        userFunction: self.getStakersByAccountID(request:context:)
      )

    default:
      return nil
    }
  }
}

public protocol Proto_CryptoServiceServerInterceptorFactoryProtocol {

  /// - Returns: Interceptors to use when handling 'createAccount'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makecreateAccountInterceptors() -> [ServerInterceptor<Proto_Transaction, Proto_TransactionResponse>]

  /// - Returns: Interceptors to use when handling 'updateAccount'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeupdateAccountInterceptors() -> [ServerInterceptor<Proto_Transaction, Proto_TransactionResponse>]

  /// - Returns: Interceptors to use when handling 'cryptoTransfer'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makecryptoTransferInterceptors() -> [ServerInterceptor<Proto_Transaction, Proto_TransactionResponse>]

  /// - Returns: Interceptors to use when handling 'cryptoDelete'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makecryptoDeleteInterceptors() -> [ServerInterceptor<Proto_Transaction, Proto_TransactionResponse>]

  /// - Returns: Interceptors to use when handling 'addLiveHash'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeaddLiveHashInterceptors() -> [ServerInterceptor<Proto_Transaction, Proto_TransactionResponse>]

  /// - Returns: Interceptors to use when handling 'deleteLiveHash'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makedeleteLiveHashInterceptors() -> [ServerInterceptor<Proto_Transaction, Proto_TransactionResponse>]

  /// - Returns: Interceptors to use when handling 'getLiveHash'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makegetLiveHashInterceptors() -> [ServerInterceptor<Proto_Query, Proto_Response>]

  /// - Returns: Interceptors to use when handling 'getAccountRecords'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makegetAccountRecordsInterceptors() -> [ServerInterceptor<Proto_Query, Proto_Response>]

  /// - Returns: Interceptors to use when handling 'cryptoGetBalance'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makecryptoGetBalanceInterceptors() -> [ServerInterceptor<Proto_Query, Proto_Response>]

  /// - Returns: Interceptors to use when handling 'getAccountInfo'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makegetAccountInfoInterceptors() -> [ServerInterceptor<Proto_Query, Proto_Response>]

  /// - Returns: Interceptors to use when handling 'getTransactionReceipts'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makegetTransactionReceiptsInterceptors() -> [ServerInterceptor<Proto_Query, Proto_Response>]

  /// - Returns: Interceptors to use when handling 'getFastTransactionRecord'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makegetFastTransactionRecordInterceptors() -> [ServerInterceptor<Proto_Query, Proto_Response>]

  /// - Returns: Interceptors to use when handling 'getTxRecordByTxID'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makegetTxRecordByTxIDInterceptors() -> [ServerInterceptor<Proto_Query, Proto_Response>]

  /// - Returns: Interceptors to use when handling 'getStakersByAccountID'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makegetStakersByAccountIDInterceptors() -> [ServerInterceptor<Proto_Query, Proto_Response>]
}