//
//  CreditView.swift
//  Honeymoon
//
//  Created by Shabbir Saifee on 7/25/20.
//  Copyright © 2020 Shabbir Saifee. All rights reserved.
//

import SwiftUI

struct CreditView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                HeaderComponent()
                
                Spacer()
                
                Text("App Info")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundColor(.pink)
                
                AppInfoView()
                
                Text("Credits")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundColor(.pink)
                
            
                CreditsView()
                
                Spacer(minLength: 10)
                
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }) {
                    Text("Dismiss".uppercased())
                        .font(.headline)
                        .padding()
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .background(
                            Capsule().fill(Color.pink)
                        )
                        .foregroundColor(.white)
                }
                
            }
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding(.top, 15)
            .padding(.bottom, 25)
            .padding(.horizontal, 25)
        }
    }
}

struct CreditView_Previews: PreviewProvider {
    static var previews: some View {
        CreditView()
    }
}

struct AppInfoView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            RowAppInfoView(item1: "Application", item2: "Honeymoon")
            RowAppInfoView(item1: "Compatibility", item2: "iPhone and iPad")
            RowAppInfoView(item1: "Developer", item2: "Shabbir Saifee")
            RowAppInfoView(item1: "Designer", item2: "Shabbir Saifee")
            RowAppInfoView(item1: "Website", item2: "swiftuimasterclass.com")
            RowAppInfoView(item1: "Version", item2: "1.0.0")
        }
    }
}

struct RowAppInfoView: View {
    //MARK: - proerties
    var item1: String
    var item2: String
    
    var body: some View {
        VStack {
            HStack {
                Text(item1)
                    .foregroundColor(.secondary)
                Spacer()
                Text(item2)
            }
            Divider()
        }
    }
}

struct CreditsView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Text("Photos")
                    .foregroundColor(.secondary)
                Spacer()
                Text("Unsplash")
            }
            Divider()
            Text("Photgraphers")
                .foregroundColor(.secondary)
            Text("Shifaaz Shamoon (Maldives), Grillot Edouard (France), Evan Wise (Greece), Christoph Schulz (United Arab Emirates), Andrew Coelho (USA), Damiano Baschiera (Italy), Daniel Olah (Hungary), Andrzej Rusinowski (Poland), Lucas Miguel (Slovenia), Florencia Potter (Spain), Ian Simmonds (USA), Ian Keefe (Canada), Denys Nevozhai (Thailand), David Köhler (Italy), Andre Benz (USA), Alexandre Chambon (South Korea), Roberto Nickson (Mexico), Ajit Paul Abraham (UK), Jeremy Bishop (USA), Davi Costa (Brazil), Liam Pozz (Australia)")
                .multilineTextAlignment(.leading)
                .font(.footnote)
        }
    }
}
