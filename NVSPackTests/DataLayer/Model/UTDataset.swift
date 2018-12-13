//
//  UTDataset.swift
//  NVSPackTests
//
//  Created by 08APO0516 on 13/12/2018.
//  Copyright © 2018 jca. All rights reserved.
//

import XCTest
@testable import NVSPack
class UTDataset: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_max() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.

        XCTAssertEqual(Dataset(series: [Serie(tag: "a", index: 0.0, value: 10),
                                        Serie(tag: "b",index: 1.0, value: 30),
                                        Serie(tag: "c",index: 2.0, value: 5)]).maxValue()!, 30)
        XCTAssertNil(Dataset(series: []).maxValue())
    }

    func test_tag() {
        let dataset = Dataset(series: [Serie(tag: "a", index: 0.0, value: 10),
                                       Serie(tag: "b",index: 1.0, value: 30),
                                       Serie(tag: "c",index: 2.0, value: 5)])

        XCTAssertEqual(dataset.tag(index: 1.0)!, "b")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
