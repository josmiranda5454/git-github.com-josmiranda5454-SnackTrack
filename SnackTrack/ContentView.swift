//
//  ContentView.swift
//  SnackTrack
//
//  Created by Jose Miranda on 4/6/22.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: []) var items: FetchedResults<Item>
    
    @State private var showingAddItem = false
    var body: some View {
        NavigationView {
            ZStack {
                List {
                    ForEach(items) { item in
                        Text(item.wrappedName)
                    }
                }
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        Button {
                            showingAddItem = true
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
            .sheet(isPresented: $showingAddItem) {
                AddItemView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
