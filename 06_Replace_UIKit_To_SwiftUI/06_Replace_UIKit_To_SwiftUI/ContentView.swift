//
//  ContentView.swift
//  06_Replace_UIKit_To_SwiftUI
//
//  Created by satoutakeshi on 2019/09/08.
//  Copyright © 2019 satoutakeshi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var inputText: String = ""
    var body: some View {
        VStack {
            TextField("URL検索", text: $inputText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .textContentType(.URL)
                .padding()
            WebView(urlString: inputText)
        }
    }
}

struct HomeView: View {
    @State private var showModal = false
    var body: some View {
        Button(action: {
            self.showModal = true
        }, label: {
            Text("https://google.com")
        })
        .sheet(isPresented: $showModal, onDismiss: {
            print(self.showModal)
        }, content: {
        SafariView(url: URL(string: "https://google.com")!)
    })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            HomeView()
        }
    }
}
