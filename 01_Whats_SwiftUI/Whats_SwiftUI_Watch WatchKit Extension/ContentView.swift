//
//  ContentView.swift
//  Whats_SwiftUI_Watch WatchKit Extension
//
//  Created by satoutakeshi on 2019/08/31.
//  Copyright © 2019 satoutakeshi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var isON: Bool = false
    @State var offset: Double = 0.0
    var body: some View {
        VStack {
            Toggle(isOn: $isON) {
                Text("Switch")
            }
            if isON {
                Text("tap to OFF")
            } else {
                Text("tap to ON")
            }
            
        }
        .digitalCrownRotation(
            $offset,
            from: 0.0,
            through: 200
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
