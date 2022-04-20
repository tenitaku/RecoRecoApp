//
//  CommunityView.swift
//  RecoReco
//
//  Created by 福島匠 on 2022/04/13.
//

import SwiftUI

struct CommunityView: View {
    
    @State var showMemberView = false
    @State var showKeyView = false
    @State var showUploadView = false
    
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            List{
                ForEach(0..<5) { _ in
                    PostCellView()
                        .padding(.vertical, 5)
                }
            }
            Button {
                showUploadView.toggle()
            } label: {
                ZStack{
                    Image(systemName: "circle.fill")
                        .foregroundColor(.white)
                        .font(.system(size: 58))
                        .padding(.bottom)
                        .padding(.trailing)
                        
                    Image(systemName: "plus.circle.fill")
                        .foregroundColor(.purple)
                        .font(.system(size: 60))
                        .padding(.bottom)
                        .padding(.trailing)
                }
            }
            .sheet(isPresented: $showUploadView) {
                
            }
        }
        .padding(.top, -20)
        .navigationTitle(Text("ハイキューの民"))
        .navigationBarItems(trailing:Button(action: {
            showMemberView.toggle()
        }, label: {
            Image(systemName: "person.3.sequence").foregroundColor(.purple)
        }).sheet(isPresented: $showMemberView, content: {
            
        }) )
        .navigationBarItems(leading:Button(action: {
            showKeyView.toggle()
        }, label: {
            Image(systemName: "globe").foregroundColor(.purple)
        }).sheet(isPresented: $showKeyView, content: {
            
        }) )
        .refreshable {
            
        }
    }
}

struct CommunityView_Previews: PreviewProvider {
    static var previews: some View {
        CommunityView()
    }
}
