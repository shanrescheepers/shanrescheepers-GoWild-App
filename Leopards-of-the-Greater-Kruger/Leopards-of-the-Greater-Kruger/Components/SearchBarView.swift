//
//  SearchBarView.swift
//  Leopards-of-the-Greater-Kruger
//
//  Created by Mac on 2022/10/12.
//

import SwiftUI

struct SearchBarView: View {

    @State var searchText = ""
    var body: some View {
        HStack{
            Image(systemName: "magnifyingglass")
                .foregroundColor(
                    searchText.isEmpty ? Color(.white) : Color(.white)
                )
            TextField("Search Leopard or Location...", text: $searchText)
//                .foregroundColor(Color(.white))
                .foregroundColor(.white)
                .overlay(
                    Image(systemName: "xmark.circle.fill")
                        .padding()
                        .offset(x: 10)
                        .foregroundColor(Color(.white))
                        .opacity(searchText.isEmpty ? 0.0 : 1.0)
                    
                        .onTapGesture {
                            searchText = ""
                        }
                    ,alignment: .trailing
                )
        }
        .font(.headline)
        .padding()
        .background(RoundedRectangle(cornerRadius: 25)
            .shadow(
                color:(Color("SecondaryButtonColor")), radius:10, x:0.0, y:0.0)
        ).opacity(0.5)
            .padding()
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView()
    }
}
