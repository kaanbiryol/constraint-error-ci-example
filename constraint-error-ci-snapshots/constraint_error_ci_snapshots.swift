//
//  constraint_error_ci_snapshots.swift
//  constraint-error-ci-snapshots
//
//  Created by Kaan Biryol on 03.02.23.
//

import XCTest
import SnapshotTesting

@testable import constraint_error_ci_example

final class constraint_error_ci_snapshots: XCTestCase {

    func testExample() {
        let view = BrokenView()
        view.text = "BrokenView"
        assertSnapshots(matching: view, as: [.image])
    }
    
}
