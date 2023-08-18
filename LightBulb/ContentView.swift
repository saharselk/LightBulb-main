//
//  ContentView.swift
//  LightBulb
//
//  Created by scholar on 8/15/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        
        NavigationStack {
            ZStack {
                Color("Background").ignoresSafeArea(.all)
                VStack {
                    Text("Idea Generator")
                    
                    
                        .font(.custom("BaiJamjuree-Bold", size:46))
    
        
                        .foregroundColor(Color("Background"))
                        .foregroundColor(Color("ye"))
                        .padding()
                        .background(Color("re"))
                        .cornerRadius(/*@START_MENU_TOKEN@*/5.0/*@END_MENU_TOKEN@*/)
                    
                    Spacer()
                        .frame(width: 50, height: 100.0)
                        
                    NavigationLink(destination: ChoosingView()) {
                        
                        
                        
                        Text("Food >")
                            .font(.custom("BaiJamjuree-Bold", size:40))
    
                            .foregroundColor(Color("Background"))
                            .multilineTextAlignment(.center)
                            .frame(width: 200.0, height: 55.0)
                            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color("turquo")/*@END_MENU_TOKEN@*/)
                            .cornerRadius(/*@START_MENU_TOKEN@*/13.0/*@END_MENU_TOKEN@*/)
                            .padding(/*@START_MENU_TOKEN@*/.all, 73.0/*@END_MENU_TOKEN@*/)
                            .shadow(radius: /*@START_MENU_TOKEN@*/20/*@END_MENU_TOKEN@*/)
                        
                        Spacer()
                            
                            .frame(height: 400.0)
                    }
                    
                }
            }
            

            
        }.navigationBarBackButtonHidden(true)
        
    }
    
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
