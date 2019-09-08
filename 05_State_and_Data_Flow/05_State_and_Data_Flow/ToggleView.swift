//
//  ToggleView.swift
//  05_State_and_Data_Flow
//
//  Created by satoutakeshi on 2019/09/08.
//  Copyright © 2019 satoutakeshi. All rights reserved.
//

import SwiftUI

struct ToggleView: View {
    @State private var isOn: Bool = false
    var body: some View {
        VStack {
            Toggle(isOn: $isOn, label: {
                Text("スイッチ")
            })
            Text("\(isOn ? "オン" : "オフ")になってます")
        }
        .padding()
    }
}

struct StateView_Previews: PreviewProvider {
    static var previews: some View {
        ToggleView()
    }
}
