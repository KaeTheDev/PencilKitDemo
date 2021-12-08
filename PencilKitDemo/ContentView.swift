//
//  ContentView.swift
//  PencilKitDemo
//
//  Created by Shakira Reid-Thomas on 12/8/21.
//

import SwiftUI
import PencilKit

struct ContentView: View {
    @State private var canvasView = PKCanvasView()
    
    
    var body: some View {
        ZStack{
            Color(.gray)
                .ignoresSafeArea(.all)
            CanvasViewStruct(canvasView: $canvasView)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
