//
//  ContentView.swift
//  Shared
//
//  Created by Liu Ziyi on 4/5/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var cartManager = CartManager()
    
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(productList, id: \.id) { product in
                        ProductCard(product: product)
                            .environmentObject(cartManager)
                    }
                }
                .padding()
            }
            .navigationTitle(Text("Sweater Shop"))
            .toolbar {
                NavigationLink {
                    CartView()
                } label: {
                    CartButton(numberOfProducts: cartManager.products.count)
                        .environmentObject(cartManager)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
