//
//  CommunityCellView.swift
//  RecoReco
//
//  Created by 福島匠 on 2022/04/13.
//

import SwiftUI

struct CommunityCellView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 5){
            HStack{
                Image(systemName: "globe")
                    .foregroundColor(.purple)
                    .font(.system(size: 20))
                Text("Netflixおすすめ紹介")
                    .font(.system(size: 16, weight: .bold))
                    .foregroundColor(.primary)
            }
            HStack{
                Image(systemName: "person.circle")
                    .font(.system(size: 20))
                    .foregroundColor(.purple)
                Text("Takumi")
                    .font(.system(size: 16, weight: .bold))
                Spacer()
                Text("3分前")
                    .font(.system(size: 15))
                    .foregroundColor(.gray)
            }
            Text("進撃マジでおもろかった、、、")
                .font(.system(size: 16, weight: .regular))
                .foregroundColor(.primary)
        }
    }
}

struct CommunityCellView_Previews: PreviewProvider {
    static var previews: some View {
        CommunityCellView()
    }
}
