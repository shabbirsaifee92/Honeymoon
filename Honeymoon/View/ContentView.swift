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
    
    //MARK: - Body
    var body: some View {
        VStack {
            HeaderView()
            Spacer()
            CardView(honeymoon: honeymoonData[2])
                .padding()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
