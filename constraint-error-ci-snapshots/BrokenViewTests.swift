//
//  BrokenViewTests.swift
//  constraint-error-ci-snapshots
//
//  Created by Kaan Biryol on 03.02.23.
//

import XCTest
import SnapshotTesting

@testable import constraint_error_ci_example

final class BrokenViewTests: XCTestCase {

    func testBrokenView0() {
        let brokenView = BrokenView()
        brokenView.text = "BrokenView0"
        assertSnapshots(matching: brokenView, as: [.image])
    }
    
    func testBrokenView1() {
        let brokenView = BrokenView()
        brokenView.text = "BrokenView1"
        assertSnapshots(matching: brokenView, as: [.image])
    }
    
    func testPassingTest() {
        let brokenView = UILabel()
        brokenView.text = "BrokenView2"
        assertSnapshots(matching: brokenView, as: [.image])
    }
    
}
