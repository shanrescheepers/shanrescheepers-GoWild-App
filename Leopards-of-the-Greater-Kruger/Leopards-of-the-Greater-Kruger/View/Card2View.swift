//
//  Card2View.swift
//  Leopards-of-the-Greater-Kruger
//
//  Created by Mac on 2022/10/11.
//

import SwiftUI

struct Card2View: View {
    var body: some View {
        VStack{
        Spacer()
            VStack(alignment: .center){
                ZStack{
                    Image("map").resizable().aspectRatio(contentMode:.fit).padding(.bottom, 40.0).frame(width: 400.0, height: 390.0)
                }.padding(.horizontal, 5.0)//zstack
                Button(action:{
                    print("Map Pressed")
                }){
                    Text("HABITAT MAP : Use our location map and featured pin locations to find these african animals.").frame(width: 300, height: 100, alignment: .center).fixedSize(horizontal: false, vertical: true).font(.headline)
                }
                .background(Color("SecondaryButtonColor"))
                .foregroundColor(Color("SecondaryTextColor"))
                .clipShape(RoundedRectangle(cornerRadius: 15))
            }
            //vstack
            Spacer()
        }
    }
}

struct Card2View_Previews: PreviewProvider {
    static var previews: some View {
        Card2View()
    }
}
