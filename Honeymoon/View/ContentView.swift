//
//  ContentView.swift
//  Honeymoon
//
//  Created by Shabbir Saifee on 7/24/20.
//  Copyright © 2020 Shabbir Saifee. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    //MARK: - Properties
    @State private var showAlert: Bool = false
    
    //MARK: - Body
    var body: some View {
        VStack {
            HeaderView()
            Spacer()
            CardView(honeymoon: honeymoonData[2])
                .padding()
            Spacer()
            FooterView(showBookingAlert: $showAlert)
        }
        .alert(isPresented: $showAlert) {
            Alert(title: Text("Success"),
                  message: Text("Wishing a lovely and most precious of the times together for the amazing couple"),
                  dismissButton: .default(Text("Happy Honeymoon")))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
