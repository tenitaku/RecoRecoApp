//
//  SettingsView.swift
//  RecoReco
//
//  Created by 福島匠 on 2022/04/13.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.colorScheme) var colorScheme
    //@ObservedObject var viewModel: ProfileViewModel
    @State var showEditBio = false
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            
            //MARK: FROFILE EDIT
            GroupBox {
                
                Button {
                    showEditBio.toggle()
                } label: {
                    SettingsRowView(leftIcon: "text.quote", text: "ユーザー名", color: .purple)
                }
                .sheet(isPresented: $showEditBio) {
                    //EditBioView(user: $viewModel.user)
                }
                
                Button {
                    //AuthViewModel.shared.signout()
                } label: {
                    SettingsRowView(leftIcon: "figure.walk", text: "ログアウト", color: .purple)
                }
                //                    .alert(isPresented: $showSignOutError) {
                //                        return Alert(title: Text("Error signing out"))
                //                    }
                
            } label: {
                SettingsLabelView(labelText: "Takumi", labelImage: "person.circle")
            }
            .padding()
            
            //MARK: APP EDIT
            GroupBox {
                Button {
                    openCustomURL(urlString: "https://appcreator2323.wixsite.com/foodhunt")
                } label: {
                    SettingsRowView(leftIcon: "folder.fill", text: "ウェブサイト", color: .yellow)
                }
                
                Button {
                    openCustomURL(urlString: "https://appcreator2323.wixsite.com/foodhunt/privacypolicy")
                } label: {
                    SettingsRowView(leftIcon: "folder.fill", text: "プライバシー・ポリシー", color: .yellow)
                }
                
                Button {
                    openCustomURL(urlString: "https://appcreator2323.wixsite.com/foodhunt/termsofservice")
                } label: {
                    SettingsRowView(leftIcon: "folder.fill", text: "利用規約", color: .yellow)
                }
                
            } label: {
                SettingsLabelView(labelText: "RecoRecoについて", labelImage: "apps.iphone")
            }.padding()
        }
        
    }
    
    //MARK: FUNCTIONS
    func openCustomURL(urlString: String) {
        guard let url = URL(string: urlString) else { return }
        
        if UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        }
    }
}
