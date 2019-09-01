//
//  ContentView.swift
//  02_Frog_Picture_Book
//
//  Created by satoutakeshi on 2019/09/01.
//  Copyright © 2019 satoutakeshi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var frogs: [Frog]
    var body: some View {
        
        NavigationView {
            List(frogs) { frog in
                NavigationLink(destination: FrogDetail(frog: frog)) {
                    FrogItem(frog: frog)
                }
            }
            .navigationBarTitle("カエル図鑑")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(frogs: sampleFrogs)
    }
}
