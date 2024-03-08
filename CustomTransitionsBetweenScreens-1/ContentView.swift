//
//  ContentView.swift
//  CustomTransitionsBetweenScreens-1
//
//  Created by Denis Coder on 3/8/24.
//

import SwiftUI



struct ContentView: View {
    
    @State var show = false
    @Namespace var namespace
    
    var body: some View {
        ZStack {
            if (!show){
                VStack{
                    Text("SwiftUI")
                        .matchedGeometryEffect(id:"title", in: namespace)
                        .font(.title)
                        .frame(maxWidth: .infinity, maxHeight:30, alignment: .leading)
                    Text("20 sections - 3 hours".uppercased())
                        .font(.footnote.weight(.semibold))
                        .matchedGeometryEffect(id: "subtitle", in: namespace)
                    Text("Build  an iOS app for iOS 15 with layouts, animations and ...")
                        .font(.footnote)
                        .matchedGeometryEffect(id: "text", in: namespace)
                }
                .padding(20)
                .foregroundColor(.white)
                .background(Color.red.matchedGeometryEffect(id: "background", in: namespace))
                .padding(20)
            }else{
                VStack{
                    Spacer()
                    Text("Build  an iOS app for iOS 15 with layouts, animations and ...")
                        .font(.footnote)
                        .matchedGeometryEffect(id: "text", in: namespace)
                    Text("20 sections - 3 hours".uppercased())
                        .font(.footnote.weight(.semibold))
                        .matchedGeometryEffect(id: "subtitle", in: namespace)
                    Text("SwiftUI")
                        .matchedGeometryEffect(id:"title", in: namespace)
                        .font(.title)
                        .frame(maxWidth: .infinity, maxHeight:30, alignment: .leading)
                }
                .padding()
                .foregroundColor(.black)
                .background(Color.blue.matchedGeometryEffect(id: "background", in: namespace))
                .padding()
            }
        }.onTapGesture {
            withAnimation(Animation.spring(response:0.6, dampingFraction: 0.8)){
                show.toggle();
                print("toggling")
            }
        }
    }
}

#Preview {
    ContentView()
}
