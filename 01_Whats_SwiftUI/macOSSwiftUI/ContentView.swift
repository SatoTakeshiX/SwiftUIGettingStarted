//
//  ContentView.swift
//  macOSSwiftUI
//
//  Created by satoutakeshi on 2019/09/14.
//  Copyright © 2019 satoutakeshi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello World")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct ToggleView: View {
    @State var isOn: Bool = false
    var body: some View {
        Toggle(isOn: $isOn) {
            Text("Toggle View")
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ToggleView()
        }
    }
}
