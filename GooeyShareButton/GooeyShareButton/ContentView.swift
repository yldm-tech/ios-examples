//
//  ContentView.swift
//  GooeyShareButton
//
//  Created by Balaji on 16/05/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader {
            let size = $0.size
            
            Home(size: size)
        }
        .preferredColorScheme(.light)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
