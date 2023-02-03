//
//  BrokenView.swift
//  constraint-error-ci-example
//
//  Created by Kaan Biryol on 03.02.23.
//

import Foundation
import UIKit
import SwiftUI

final class BrokenView: UIView {
    
    public var text: String? {
        didSet {
            label.text = text
        }
    }
    
    private lazy var label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        return label
    }()
    
    init() {
        super.init(frame: .zero)
        backgroundColor = .gray
        
        addSubview(label)
        
        NSLayoutConstraint.activate([
            label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            label.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            label.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            label.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20),
            // Set a breaking constraint intentionally
            label.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -40),
        ])
        
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
}


struct BrokenViewRepresented: UIViewRepresentable {
    typealias UIViewType = BrokenView
  
    func makeUIView(context: Context) -> BrokenView {
        let view = BrokenView()
        view.text = "BrokenView"
        return view
    }
    
    func updateUIView(_ uiView: BrokenView, context: Context) {
        
    }
}
