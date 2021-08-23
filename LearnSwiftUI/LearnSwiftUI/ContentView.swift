//
//  ContentView.swift
//  LearnSwiftUI
//
//  Created by mac on 21/8/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showingActionSheet: Bool = false
    @State var isLoggout: Bool = false
    
    var body: some View {
        Button(isLoggout ? "Loggout" : "Loggin") {
            self.showingActionSheet = true
        }.actionSheet(isPresented: $showingActionSheet) {
            ActionSheet(title: Text("Warning"), message: Text("Are you sure?"), buttons: [.default(Text("Yes")) {
                // Aksi ketika pengguna menekan tombol ye
                self.showingActionSheet = false
                self.isLoggout = !self.isLoggout
            },
            .default(Text("No")) {
                // Aksi ketika menekan tombol No
                self.showingActionSheet = false
            },
            .cancel()
            ])
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice(PreviewDevice(rawValue: "iPhone X"))
                        .previewDisplayName("iPhone X VersiKu")
    }
}
