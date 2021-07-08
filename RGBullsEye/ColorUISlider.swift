//
//  ColorUISlider.swift
//  RGBullsEye
//
//  Created by Hussein Dimessi on 8/7/2021.
//

import SwiftUI
import UIKit

struct ColorUISlider: UIViewRepresentable {
    
    class Coordinator: NSObject {
      
      var value: Binding<Double>
      
      init(value: Binding<Double>) {
        self.value = value
      }
      
      @objc func valueChanged(_ sender: UISlider) {
        self.value.wrappedValue = Double(sender.value)
      }
    }
    
    var color: UIColor
    @Binding var value: Double
    
    func makeUIView(context: Context) -> UISlider {
        let slider = UISlider(frame: .zero)
        slider.thumbTintColor = color
        slider.value = Float(value)
        slider.addTarget(context.coordinator,
                         action: #selector(Coordinator.valueChanged(_:)),
                         for: .valueChanged)
        return slider
    }
    
    func makeCoordinator() -> ColorUISlider.Coordinator {
        Coordinator(value: $value)
    }
    
    func updateUIView(_ view: UISlider, context: Context) {
        view.value = Float(self.value)
    }
    
}

struct ColorUISlider_Previews: PreviewProvider {
    static var previews: some View {
        ColorUISlider(color: .red, value: .constant((0.5)))
    }
}
