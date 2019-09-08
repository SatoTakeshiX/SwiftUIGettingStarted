//
//  ContentView.swift
//  05_State_and_Data_Flow
//
//  Created by satoutakeshi on 2019/09/08.
//  Copyright © 2019 satoutakeshi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var settings: UserSettings
    var body: some View {
        NavigationView {
            Form {
                NavigationLink(destination: ToggleView()) {
                    Text("ToggleView")
                }
                
                 NavigationLink(destination: LikeView(viewModel: LikeViewModel())) {
                    Text("LikeView")
                }
                
                NavigationLink(destination: SettingView()) {
                     Text("Setting Theme Color")
                }
            }
            .navigationBarTitle("State and Data Flow", displayMode: .inline)
            .foregroundColor(Color(settings.color))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
