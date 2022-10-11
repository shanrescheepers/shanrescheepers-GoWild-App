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
            
            TabView{
                Card1View()
                Card2View()
                Card3View()
            }.tabViewStyle(.page)
            Spacer()
           
            
        }
    }
}

struct OnboardingViewScreens123_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingViewScreens123()
    }
}
