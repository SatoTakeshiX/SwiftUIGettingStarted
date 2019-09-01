//
//  AttributedText.swift
//  01_Whats_SwiftUI
//
//  Created by satoutakeshi on 2019/08/31.
//  Copyright © 2019 satoutakeshi. All rights reserved.
//

import SwiftUI

struct AttributedText: View {
    var body: some View {
        Text("SwiftUI")
            .foregroundColor(.blue)
            .font(.body)
            .underline()
            .background(Color.yellow)
    }
}

struct AttributedText_Previews: PreviewProvider {
    static var previews: some View {
        AttributedText()
    }
}
