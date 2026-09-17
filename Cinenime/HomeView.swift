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
                        .frame(width: 100, height: 50)
                        .foregroundStyle(.btnText)
                        .bold()
                        .background(){
                            RoundedRectangle(cornerRadius: 20 , style: .continuous)
                                .stroke(.btnBorder, lineWidth: 5)
                            
                        }
                }
                
                Button {
                    
                } label: {
                    Text(Constants.downloadString)
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
