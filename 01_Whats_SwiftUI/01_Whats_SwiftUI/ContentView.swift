//
//  ContentView.swift
//  01_Whats_SwiftUI
//
//  Created by satoutakeshi on 2019/08/31.
//  Copyright © 2019 satoutakeshi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List(0 ..< 5) { item in
            Cell()
        }
    }
}

struct Cell: View {
    var body: some View {
        HStack {
            Image(systemName: "star.fill")
            Text("SwiftUI")
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/)
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Cell()
    }
}
