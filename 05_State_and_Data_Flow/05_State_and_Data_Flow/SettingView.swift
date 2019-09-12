//
//  SettingView.swift
//  05_State_and_Data_Flow
//
//  Created by satoutakeshi on 2019/09/08.
//  Copyright © 2019 satoutakeshi. All rights reserved.
//

import SwiftUI

struct SettingView: View {
    @EnvironmentObject var settings: UserSettings
    var body: some View {
         
        HStack{
            Button(action: {
                self.settings.color = .red
                
            }) {
                Text("Red")
                    .foregroundColor(.white)
                    .font(.largeTitle)
            }
            .padding()
            .background(Color.red)
            
            Button(action: {
                self.settings.color = .blue
            }) {
                Text("Blue")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                
            }
            .padding()
            .background(Color.blue)
            
            
            Button(action: {
                self.settings.color = .green
            }) {
                Text("Green")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                
            }
            .padding()
            .background(Color.green)
        }
        
    }
}

class UserSettings: ObservableObject {
    @Published var color: UIColor = .black
}

struct EnvironmentObject_Previews: PreviewProvider {
    static var previews: some View {
        SettingView().environmentObject(UserSettings())
    }
}
