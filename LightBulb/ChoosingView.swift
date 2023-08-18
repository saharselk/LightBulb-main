//
//  ChoosingView.swift
//  LightBulb
//
//  Created by scholar on 8/15/23.
//

import SwiftUI

struct ChoosingView: View {
    var body: some View {
        
        NavigationStack {
            ZStack{
                Color("Background").ignoresSafeArea(.all)
                VStack {
                    
                    Text("How would you like to choose your idea?")
                        .font(.custom("BaiJamjuree-Bold", size:26))
                    
                        .foregroundColor(Color("Background"))
                        .multilineTextAlignment(.center)
                        .padding()
                        
                        .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                        .background(Color("re"))
                        .cornerRadius(/*@START_MENU_TOKEN@*/12.0/*@END_MENU_TOKEN@*/)
                    
                    Spacer()
                        .frame(height: 200.0)
                    
                    NavigationLink(destination: TypeView()) {
                        Text("Meal Type")
                            
                            .font(.custom("BaiJamjuree-Bold", size:25))
                        
                        
                            .fontWeight(.heavy)
                            .foregroundColor(Color("Background"))
                            .padding(.all)
                        
                        
                            
                            .toolbar {
                                
                                
            
                                
                                ToolbarItemGroup(placement:.status) {
                                    
                                    NavigationLink(destination: ContentView()) {
                                        Text("Home")
                                            .font(.custom("BaiJamjuree-Bold", size:20))
                                           
                                            
                                        
                                            
                                           
                                       // Image(systemName: "house.fill")
                                    }
                                    .foregroundColor(Color("Background"))
                                    .background(Color.orange)
                                    .cornerRadius(/*@START_MENU_TOKEN@*/15.0/*@END_MENU_TOKEN@*/)
                                    .shadow(radius: 5)
                                    
                                    
                                    
                                }
                            }
                            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color("turquo")/*@END_MENU_TOKEN@*/)
                            .cornerRadius(/*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
                            .shadow(radius: /*@START_MENU_TOKEN@*/15/*@END_MENU_TOKEN@*/)
                            
                    }
                }
            }
        }.navigationBarBackButtonHidden(true)
        
    }
}

struct ChoosingView_Previews: PreviewProvider {
    static var previews: some View {
        ChoosingView()
    }
}
