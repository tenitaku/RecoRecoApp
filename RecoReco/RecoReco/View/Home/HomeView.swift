//
//  HomeView.swift
//  RecoReco
//
//  Created by 福島匠 on 2022/04/13.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView{
            List{
                ForEach(0..<10){_ in
                    NavigationLink {
                        CommunityView()
                    } label: {
                        CommunityCellView()
                            .padding(.vertical, 8)
                    }
                }
            }
            .padding(.top, -20)
            .navigationTitle(Text("RecoReco"))
            .navigationBarTitleDisplayMode(.inline)
            .refreshable {
                
            }
        }
        .accentColor(.primary)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
