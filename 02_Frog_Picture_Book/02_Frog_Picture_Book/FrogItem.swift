//
//  FrogItem.swift
//  02_Frog_Picture_Book
//
//  Created by satoutakeshi on 2019/09/01.
//  Copyright © 2019 satoutakeshi. All rights reserved.
//

import SwiftUI

struct FrogItem: View {
    var frog: Frog
    var body: some View {
        HStack {
            Image(frog.imageName)
                .resizable()
                .frame(width: 50, height: 50)
                .cornerRadius(10)

            Text(frog.name)
                .font(.title)
            if frog.hasPoison {
                Image(systemName: "burn")
            }
            Spacer()
        }
    }
}

struct FrogItem_Previews: PreviewProvider {
    static var previews: some View {
        FrogItem(frog: sampleFrogs[3])
           // .previewLayout(.sizeThatFits)
    }
}
