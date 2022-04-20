//
//  PostCellView.swift
//  RecoReco
//
//  Created by 福島匠 on 2022/04/13.
//

import SwiftUI

struct PostCellView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 5){
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
            Text("烏野vs稲荷崎まじおもしろかった〜")
                .font(.system(size: 16, weight: .regular))
                .foregroundColor(.primary)
            
            HStack{
                Text("www.hello.com")
                    .font(.system(size: 14, weight: .regular))
                    .foregroundColor(.primary)
                Spacer()
            }
            
            HStack{
                Image(systemName: "heart")
                Spacer()
                Image(systemName: "bubble.right")
                Spacer()
                Image(systemName: "flag")
            }
        }
    }
}

struct PostCellView_Previews: PreviewProvider {
    static var previews: some View {
        PostCellView()
    }
}
