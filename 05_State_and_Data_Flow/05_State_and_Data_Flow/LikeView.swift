//
//  ObservedObjectView.swift
//  05_State_and_Data_Flow
//
//  Created by satoutakeshi on 2019/09/08.
//  Copyright © 2019 satoutakeshi. All rights reserved.
//

import SwiftUI
import Combine

struct LikeView: View {
    @ObservedObject var viewModel: LikeViewModel
    var body: some View {
        
        VStack {
            Image("Red-Eyed-Tree-Frog")
                .resizable()
                .frame(width: 300, height: 300, alignment: .center)
            Text("いいね回数:\(viewModel.likeNumber)")
            Button("いいねする") {
                self.viewModel.like()
            }
            .frame(width: 200, height: 50, alignment: .center)
            .background(Color.green)
            .cornerRadius(10)
        }
    }
    
}

final class LikeViewModel: ObservableObject {
    
    @Published var likeNumber: UInt = 0
    
    func like() {
        likeNumber += 1
    }
    
}

struct ObservedObjectView_Previews: PreviewProvider {
    static var previews: some View {
        LikeView(viewModel: LikeViewModel())
    }
}
