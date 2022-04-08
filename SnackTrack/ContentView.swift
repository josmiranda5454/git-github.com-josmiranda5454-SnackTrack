//
//  ContentView.swift
//  SnackTrack
//
//  Created by Jose Miranda on 4/6/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        Button {
                        } label: {
                            Image(systemName: "plus")
                                .padding()
                                .background(.black.opacity(0.5))
                                .foregroundColor(.white)
                                .font(.title)
                                .clipShape(Circle())
                                .padding(.trailing)
                        }
                    }
                }
            }
            .navigationTitle("SnackTrack")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
