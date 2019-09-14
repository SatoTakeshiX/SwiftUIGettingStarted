//
//  ContentView.swift
//  tvOSSwiftUI
//
//  Created by satoutakeshi on 2019/09/14.
//  Copyright © 2019 satoutakeshi. All rights reserved.
//

import SwiftUI

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
        ToggleView()
    }
}
