//
//  ContentView.swift
//  Cinenime
//
//  Created by Ery Prasetyo on 17/09/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            Tab("Home",systemImage:"house")
            {
                Text("Page Home")
            }
            Tab("Up Comming",systemImage:"play.circle")
            {
                Text("Page Up Comming")
            }
            Tab("Search",systemImage:"magnifyingglass")
            {
                Text("Page Search")
            }
            Tab("Download",systemImage:"arrow.down.to.line")
            {
                Text("Page Download")
            }
        }
    }
}

#Preview {
    ContentView()
}
