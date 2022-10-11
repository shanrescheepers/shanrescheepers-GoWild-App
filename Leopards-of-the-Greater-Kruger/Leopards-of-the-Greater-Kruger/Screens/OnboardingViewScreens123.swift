//
//  OnboardingViewScreens123.swift
//  Leopards-of-the-Greater-Kruger
//
//  Created by Mac on 2022/10/11.
//

import SwiftUI

struct OnboardingViewScreens123: View {
    var body: some View {
        VStack{
            Image("logopng").resizable().frame(width:32, height: 32).padding(.horizontal, 9.0)
            TabView{
                Card1View()
                Card2View()
                Card3View()
            }.tabViewStyle(.page)
            Spacer()
           
            VStack{
                Image("compass").fixedSize()
            }
        }
    }
}

struct OnboardingViewScreens123_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingViewScreens123()
    }
}
