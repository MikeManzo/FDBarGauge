//
//  FDBarGaugeTests.swift
//  FDBarGaugeTests
//
//  Created by Full Decent on 5/2/16.
//  Copyright © 2016 William Entriken. All rights reserved.
//

import XCTest
@testable import FDBarGuage

class FDBarGaugeTests: XCTestCase {
    
    var barGauge: FDBarGauge! = nil
    
    override func setUp() {
        super.setUp()
        barGauge = FDBarGauge()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testPeak() {
        barGauge.holdPeak = true
        barGauge.value = 10
        XCTAssertEqual(barGauge.value, barGauge.peakValue)
    }
    
    func testProperties() {
        barGauge.holdPeak = true
        XCTAssert(barGauge.holdPeak)
        barGauge.litEffect = true
        XCTAssert(barGauge.litEffect)
        barGauge.reverseDirection = true
        XCTAssert(barGauge.reverseDirection)
        barGauge.value = 1.0
        XCTAssert(barGauge.value == 1.0)
        barGauge.peakValue = 1.0
        XCTAssert(barGauge.peakValue == 1.0)
        barGauge.maxLimit = 1.0
        XCTAssert(barGauge.maxLimit == 1.0)
        barGauge.minLimit = 0.0
        XCTAssert(barGauge.minLimit == 0.0)
        barGauge.warnThreshold = 1.0
        XCTAssert(barGauge.warnThreshold == 1.0)
        barGauge.dangerThreshold = 1.0
        XCTAssert(barGauge.dangerThreshold == 1.0)
        barGauge.numBars = 10
        XCTAssert(barGauge.numBars == 10)
        barGauge.outerBorderColor = QJColor.black
        XCTAssert(barGauge.outerBorderColor == QJColor.black)
        barGauge.innerBorderColor = QJColor.black
        XCTAssert(barGauge.innerBorderColor == QJColor.black)
        barGauge.normalColor = QJColor.black
        XCTAssert(barGauge.normalColor == QJColor.black)
        barGauge.warningColor = QJColor.black
        XCTAssert(barGauge.warningColor == QJColor.black)
        barGauge.dangerColor = QJColor.black
        XCTAssert(barGauge.dangerColor == QJColor.black)
    }
}
