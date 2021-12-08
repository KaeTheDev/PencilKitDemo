//
//  CanvasView.swift
//  PencilKitDemo
//
//  Created by Shakira Reid-Thomas on 12/8/21.
//

import SwiftUI
import PencilKit

struct CanvasView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct CanvasViewStruct {
    @Binding var canvasView: PKCanvasView
    @State var toolPicker = PKToolPicker()
    
}


extension CanvasViewStruct: UIViewRepresentable {
    func makeUIView(context: Context) -> PKCanvasView {
        
        canvasView.tool = PKInkingTool(.pen, color: .red, width: 10)
        #if targetEnvironment(simulator)
        canvasView.drawingPolicy = .anyInput
        showToolPicker()
        #endif
        return canvasView
    }
    func updateUIView(_ uiView: PKCanvasView, context: Context) {
        // Not using
    }
}

private extension CanvasViewStruct{
    func showToolPicker(){
        toolPicker.setVisible(true, forFirstResponder: canvasView)
        toolPicker.addObserver(canvasView)
        canvasView.becomeFirstResponder()
    }
    
}
    

