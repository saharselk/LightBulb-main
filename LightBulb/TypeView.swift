//
//  TypeView.swift
//  LightBulb
//
//  Created by scholar on 8/15/23.
//

import SwiftUI

struct TypeView: View {
    
    @State var mealType = ""
    @State var Breakfast = false
    @State var Lunch = false
    @State var Dinner = false
    @State var Dessert = false
    
    var body: some View {
        
        
        NavigationStack {
            ZStack{
                Color("Background").ignoresSafeArea(.all)
                VStack {
                    
                    Text("Meal Types")
                        .font(.custom("BaiJamjuree-Bold", size:40))
                        .foregroundColor(Color("Background"))
                        .padding(.all)
                        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color("re")/*@END_MENU_TOKEN@*/)
                        .cornerRadius(15)
                        
                    
                    
                    Spacer()
                        .frame(height: 100.0)
                    
                    
                    VStack {
                        NavigationLink(destination: GeneratePage(mealType: $mealType,haslactose: .constant(true), hasVegan: .constant(true),  isvegetarian: .constant(true), ishalal: .constant(true), isKosher: .constant(true), isglutenFree: .constant(true), hasseafood: .constant(true), hasshellfish: .constant(true), hastreenuts: .constant(true), haspeanuts: .constant(true), haswheat: .constant(true), haseggs: .constant(true), hassoy: .constant(true),Breakfast: .constant(true), Lunch: .constant(true), Dinner: .constant(true), Dessert: .constant(true))) {
                            Text("Breakfast")
                                .font(.custom("BaiJamjuree-Bold", size:26))
                                .foregroundColor(Color("Background"))
                                .padding(.all)
                                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color("turquo")/*@END_MENU_TOKEN@*/)
                                .cornerRadius(/*@START_MENU_TOKEN@*/50.0/*@END_MENU_TOKEN@*/)
                                .shadow(radius: /*@START_MENU_TOKEN@*/20/*@END_MENU_TOKEN@*/)
                        }
                        .simultaneousGesture(TapGesture().onEnded{ mealType = "Breakfast"})
                        
                        Spacer()
                        
                        NavigationLink(destination: GeneratePage(mealType: $mealType,haslactose: .constant(true), hasVegan: .constant(true),  isvegetarian: .constant(true), ishalal: .constant(true), isKosher: .constant(true), isglutenFree: .constant(true), hasseafood: .constant(true), hasshellfish: .constant(true), hastreenuts: .constant(true), haspeanuts: .constant(true), haswheat: .constant(true), haseggs: .constant(true), hassoy: .constant(true),Breakfast: .constant(true), Lunch: .constant(true), Dinner: .constant(true), Dessert: .constant(true))) {
                            Text("Lunch/Dinner")
                                .font(.custom("BaiJamjuree-Bold", size:26))
                                .foregroundColor(Color("Background"))
                                .padding(.all)
                                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color("turquo")/*@END_MENU_TOKEN@*/)
                                .cornerRadius(/*@START_MENU_TOKEN@*/50.0/*@END_MENU_TOKEN@*/)
                                .shadow(radius: /*@START_MENU_TOKEN@*/20/*@END_MENU_TOKEN@*/)
                        }
                        .simultaneousGesture(TapGesture().onEnded{ mealType = "Lunch/Dinner"})
                        
                        
                        
                        Spacer()
                        
                        NavigationLink(destination: GeneratePage(mealType: $mealType,haslactose: .constant(true), hasVegan: .constant(true),  isvegetarian: .constant(true), ishalal: .constant(true), isKosher: .constant(true), isglutenFree: .constant(true), hasseafood: .constant(true), hasshellfish: .constant(true), hastreenuts: .constant(true), haspeanuts: .constant(true), haswheat: .constant(true), haseggs: .constant(true), hassoy: .constant(true),Breakfast: .constant(true), Lunch: .constant(true), Dinner: .constant(true), Dessert: .constant(true))) {
                            
                            Text("Dessert")
                                .font(.custom("BaiJamjuree-Bold", size:26))
                                .foregroundColor(Color("Background"))
                                .padding(.all)
                                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color("turquo")/*@END_MENU_TOKEN@*/)
                                .cornerRadius(/*@START_MENU_TOKEN@*/50.0/*@END_MENU_TOKEN@*/)
                                .shadow(radius: /*@START_MENU_TOKEN@*/20/*@END_MENU_TOKEN@*/)
                            
                        }
                        
                        
                        .simultaneousGesture(TapGesture().onEnded{ mealType = "Dessert"})
                        
                        
                        
                        Spacer()
                        
                        NavigationLink(destination: GeneratePage(mealType: $mealType,haslactose: .constant(true), hasVegan: .constant(true),  isvegetarian: .constant(true), ishalal: .constant(true), isKosher: .constant(true), isglutenFree: .constant(true), hasseafood: .constant(true), hasshellfish: .constant(true), hastreenuts: .constant(true), haspeanuts: .constant(true), haswheat: .constant(true), haseggs: .constant(true), hassoy: .constant(true),Breakfast: .constant(true), Lunch: .constant(true), Dinner: .constant(true), Dessert: .constant(true))) {
                            
                            Text("Sides")
                                .font(.custom("BaiJamjuree-Bold", size:26))
                                .foregroundColor(Color("Background"))
                                .padding(.all)
                                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color("turquo")/*@END_MENU_TOKEN@*/)
                                .cornerRadius(/*@START_MENU_TOKEN@*/50.0/*@END_MENU_TOKEN@*/)
                                .shadow(radius: /*@START_MENU_TOKEN@*/20/*@END_MENU_TOKEN@*/)
                        }
                        
                        .simultaneousGesture(TapGesture().onEnded{ mealType = "Sides"})
                    }
                }
                .padding()
                .toolbar {
                    ToolbarItemGroup(placement:.status) {
                        NavigationLink(destination: ContentView()) {
                            Text("Home")
                                .font(.custom("BaiJamjuree-Bold", size:20))
                                .foregroundColor(Color("Background"))
                                .frame(width: 75.0, height: 33.0)
                                .background(.orange)
                                .cornerRadius(15.0)
                                .shadow(radius: 3)
                                
                        }
                    }
                }
                
                Spacer()
                    .frame(height: 50.0)
                
                
                
                
                
                
                
            }
        }.navigationBarBackButtonHidden(true)
    }
}
    
            
            struct TypeView_Previews: PreviewProvider {
                static var previews: some View {
                    TypeView()
                }
            }
        
