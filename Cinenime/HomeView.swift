//
//  HomeView.swift
//  Cinenime
//
//  Created by Ery Prasetyo on 17/09/26.
//

import SwiftUI

struct HomeView: View {
    var heroTestImageTitle = Constants.ImageMovieURLString

    var body: some View {
        VStack
        {
            AsyncImage(url: URL(string : heroTestImageTitle)){image in
                image
                    .resizable()
                    .scaledToFit()
            }
            placeholder:{
                ProgressView()
            }
            
            HStack {
                Button {
                    
                } label: {
                    Text(Constants.playString)
                        .ghostBtn()
                }
                
                Button {
                    
                } label: {
                    Text(Constants.downloadString)
                        .ghostBtn()
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
