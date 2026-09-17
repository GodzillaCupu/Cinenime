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
            Tab(Constants.homeString,systemImage:Constants.homeIconString)
            {
                HomeView()
            }
            Tab(Constants.upcomingString,systemImage:Constants.upcomingIconString)
            {
                Text("Page Up Comming")
            }
            Tab(Constants.searchString,systemImage:Constants.searchIconString)
            {
                Text("Page Search")
            }
            Tab(Constants.downloadString,systemImage:Constants.downloadIconString)
            {
                Text("Page Download")
            }
        }
    }
}

#Preview {
    ContentView()
}
