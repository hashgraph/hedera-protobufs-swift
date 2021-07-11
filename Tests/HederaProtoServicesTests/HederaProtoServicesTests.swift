import XCTest
@testable import HederaProtoServices

final class HederaProtoServicesTests: XCTestCase {
    // minor test that proves we can import AccountID from the module
    func testAccountIDExists() {
        var id = Proto_AccountID()
        id.shardNum = 0
        id.realmNum = 0
        id.accountNum = 1001

        XCTAssert(id.accountNum == 1001)
    }
}
