//
//  FrogDetail.swift
//  02_Frog_Picture_Book
//
//  Created by satoutakeshi on 2019/09/01.
//  Copyright © 2019 satoutakeshi. All rights reserved.
//

import SwiftUI

struct FrogDetail: View {
    var frog: Frog
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                Image(frog.imageName)
                .resizable()
                .frame(height: 300)
                
                if frog.hasPoison {
                    Image(systemName: "burn")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .background(Color.white)
                        .padding(.all)
                }
            }
            
            Form {
                Section(header: Text("生息地")) {
                    Text(frog.place)
                }
                
                Section(header: Text("特徴")) {
                    Text(frog.description)
                }
            }
        }
        .navigationBarTitle(Text(frog.name), displayMode: .inline)
    }
}

struct FrogDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            FrogDetail(frog: sampleFrogs[3])
        }
    }
}
