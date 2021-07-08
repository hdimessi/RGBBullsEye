//
//  LegacyViewController.swift
//  RGBullsEye
//
//  Created by Hussein Dimessi on 8/7/2021.
//

import UIKit
import SwiftUI

class LegacyViewController: UIViewController {
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let mainLabel = UILabel(frame: .zero)
        mainLabel.text = "UIKit View Controller"
        mainLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(mainLabel)
        mainLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        mainLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
}

struct LegacyViewControllerRepresentation: UIViewControllerRepresentable {
    
    func makeUIViewController(
        context: UIViewControllerRepresentableContext
        <LegacyViewControllerRepresentation>) -> LegacyViewController {
        LegacyViewController()
    }
    
    func updateUIViewController(_ uiViewController: LegacyViewController,
                                context: UIViewControllerRepresentableContext
                                <LegacyViewControllerRepresentation>) {
        
    }
    
}

#if DEBUG
struct LegacyViewControllerPreviews: PreviewProvider {
  static var previews: some View {
    LegacyViewControllerRepresentation()
  }
}
#endif
