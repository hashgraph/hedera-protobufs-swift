import GRPC
import NIO
import HederaProtoServices

let connection = ClientConnection(configuration: ClientConnection.Configuration.default(
    // https://docs.hedera.com/guides/testnet/testnet-nodes#testnet-nodes
    target: .hostAndPort("0.testnet.hedera.com", 50211),
    eventLoopGroup: MultiThreadedEventLoopGroup(numberOfThreads: 1)
))

let cryptoClient = Proto_CryptoServiceClient(channel: connection)

// https://github.com/hashgraph/hedera-protobufs/blob/main/services/CryptoGetAccountBalance.proto#L35
var targetAccountId = Proto_AccountID()
targetAccountId.accountNum = 1001

var accountBalanceQuery = Proto_CryptoGetAccountBalanceQuery()
accountBalanceQuery.balanceSource = .accountID(targetAccountId)

var query = Proto_Query()
query.query = .cryptogetAccountBalance(accountBalanceQuery)

// https://github.com/hashgraph/hedera-protobufs/blob/main/services/CryptoService.proto#L52
let response: Proto_Response = try! cryptoClient.cryptoGetBalance(query).response.wait()

guard case let .cryptogetAccountBalance(accountBalanceResponse) = response.response else {
    fatalError("unexpected response from cryptoGetBalance")
}

print("balance = \(accountBalanceResponse.balance) tℏ")
