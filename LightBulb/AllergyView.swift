//
//  AllergyView.swift
//  LightBulb
//
//  Created by scholar on 8/16/23.
//

import SwiftUI

struct AllergyView: View {
    
    @State var filteredRecipes : [Recipes] = []
    @State private var recipe = ""
    
    @State var haslactose = false
    @State var hasVegan = false
    @State var isvegetarian = false
    @State var ishalal = false
    @State var isKosher = false
    @State var isglutenFree = false
    @State var hasseafood = false
    @State var hasshellfish = false
    @State var hastreenuts = false
    @State var haspeanuts = false
    @State var haswheat = false
    @State var haseggs = false
    @State var hassoy = false
    
    
    var body: some View {
        NavigationStack {
            ZStack{
                Color("Background").ignoresSafeArea(.all)

            VStack {
                
                Group{
                    Text("Dietary Restrictions /Allergies")
                        .font(.custom("BaiJamjuree-Bold", size:30))
                        .foregroundColor(Color("Background"))
                        .multilineTextAlignment(.center)
                        .padding(.trailing)
                        .frame(width: 350.0, height: 70.0)
                        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color("turquo")/*@END_MENU_TOKEN@*/)
                        .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                    
                    
                }
                    Spacer()
                    Group {
                        Toggle(isOn: $haslactose) {
                            Text("Lactose Free")
                                .font(.custom("BaiJamjuree-Bold", size:26))
                                .foregroundColor(Color.white)
                                .padding(/*@START_MENU_TOKEN@*/.horizontal/*@END_MENU_TOKEN@*/)
                                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.orange/*@END_MENU_TOKEN@*/)
                                .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                        }
                        
                        
                        
                        Toggle(isOn: $hasVegan) {
                            Text("Vegan")
                                .font(.custom("BaiJamjuree-Bold", size:26))
                                .foregroundColor(Color.white)
                                .padding(/*@START_MENU_TOKEN@*/.horizontal/*@END_MENU_TOKEN@*/)
                                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.orange/*@END_MENU_TOKEN@*/)
                                .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                            
                            
                        }
                        
                    }
                
//                .padding()
                .padding(.leading)
                
                Group {
                                Toggle(isOn: $isvegetarian) {
                                    Text("Vegetarian")
                                        .font(.custom("BaiJamjuree-Bold", size:26))
                                        .foregroundColor(Color.white)
                                        .padding(/*@START_MENU_TOKEN@*/.horizontal/*@END_MENU_TOKEN@*/)
                                        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.orange/*@END_MENU_TOKEN@*/)
                                        .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                
                                }
                
                               
                
                                Toggle(isOn: $ishalal) {
                                    Text("Halal")
                                        .font(.custom("BaiJamjuree-Bold", size:26))
                                        .foregroundColor(Color.white)
                                        .padding(/*@START_MENU_TOKEN@*/.horizontal/*@END_MENU_TOKEN@*/)
                                        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.orange/*@END_MENU_TOKEN@*/)
                                        .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                
                                }
                               
                                Toggle(isOn: $isKosher) {
                                    Text("Kosher")
                                        .font(.custom("BaiJamjuree-Bold", size:26))
                                        .foregroundColor(Color.white)
                                        .padding(/*@START_MENU_TOKEN@*/.horizontal/*@END_MENU_TOKEN@*/)
                                        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.orange/*@END_MENU_TOKEN@*/)
                                        .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                    }
                                }
                
                .padding(.leading)
                
                Group {
                                
                                Toggle(isOn: $isglutenFree) {
                                    Text("Gluten Free")
                                        .font(.custom("BaiJamjuree-Bold", size:26))
                                        .foregroundColor(Color.white)
                                        .padding(/*@START_MENU_TOKEN@*/.horizontal/*@END_MENU_TOKEN@*/)
                                        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.orange/*@END_MENU_TOKEN@*/)
                                        .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                
                                }
                            
                                Toggle(isOn: $hasseafood) {
                                    Text("No Seafood")
                                        .font(.custom("BaiJamjuree-Bold", size:26))
                                        .foregroundColor(Color.white)
                                        .padding(/*@START_MENU_TOKEN@*/.horizontal/*@END_MENU_TOKEN@*/)
                                        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.orange/*@END_MENU_TOKEN@*/)
                                        .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                                }
                    }
                
                  .padding(.leading)
                
                
                Group {
                    Toggle(isOn: $hastreenuts) {
                        Text("No Tree Nuts")
                            .font(.custom("BaiJamjuree-Bold", size:26))
                            .foregroundColor(Color.white)
                            .padding(/*@START_MENU_TOKEN@*/.horizontal/*@END_MENU_TOKEN@*/)
                            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.orange/*@END_MENU_TOKEN@*/)
                            .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                        
                    }
                    
                    //  .padding(.leading)
                    
                    Toggle(isOn: $haspeanuts) {
                        Text("No Peanuts")
                            .font(.custom("BaiJamjuree-Bold", size:26))
                            .foregroundColor(Color.white)
                            .padding(/*@START_MENU_TOKEN@*/.horizontal/*@END_MENU_TOKEN@*/)
                            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.orange/*@END_MENU_TOKEN@*/)
                            .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                        
                    }
                    
                    //  .padding(.leading)
                    
                    Toggle(isOn: $haswheat) {
                        Text("No Wheat")
                            .font(.custom("BaiJamjuree-Bold", size:26))
                            .foregroundColor(Color.white)
                            .padding(/*@START_MENU_TOKEN@*/.horizontal/*@END_MENU_TOKEN@*/)
                            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.orange/*@END_MENU_TOKEN@*/)
                            .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                        
                    }
                    
                    //  .padding(.leading)
                    
                }
                
                .padding(.leading)
                
                
                Group {
                    Toggle(isOn: $haseggs) {
                        Text("No Eggs")
                            .font(.custom("BaiJamjuree-Bold", size:26))
                            .foregroundColor(Color.white)
                            .padding(/*@START_MENU_TOKEN@*/.horizontal/*@END_MENU_TOKEN@*/)
                            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.orange/*@END_MENU_TOKEN@*/)
                            .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                        
                    }
                    // .padding(.leading)
                    
                    Toggle(isOn: $hassoy) {
                        Text("No Soy")
                            .font(.custom("BaiJamjuree-Bold", size:26))
                            .foregroundColor(Color.white)
                            .padding(/*@START_MENU_TOKEN@*/.horizontal/*@END_MENU_TOKEN@*/)
                            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.orange/*@END_MENU_TOKEN@*/)
                            .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                        
                    }
                   
                    
                    }
                .padding(.leading)
                
//                NavigationLink(destination: GeneratePage(mealType: .constant(""), haslactose: $haslactose, hasVegan: $hasVegan, isvegetarian: $isvegetarian, ishalal: $ishalal, isKosher: $isKosher, isglutenFree: $isglutenFree, hasseafood: $hasseafood, hasshellfish: $hasshellfish, hastreenuts: $hastreenuts, haspeanuts: $haspeanuts, haswheat: $haswheat, haseggs: $haseggs, hassoy: $hassoy, Breakfast: .constant(true), Lunch: .constant(true), Dinner: .constant(true), Dessert: .constant(true))) {
//                   Text("Submit")
                
                NavigationLink(destination: GeneratePage(mealType: .constant(""), haslactose: $haslactose, hasVegan: $hasVegan, isvegetarian: $isvegetarian, ishalal: $ishalal, isKosher: $isKosher, isglutenFree: $isglutenFree, hasseafood: $hasseafood, hasshellfish: $hasshellfish, hastreenuts: $hastreenuts, haspeanuts: $haspeanuts, haswheat: $haswheat, haseggs: $haseggs, hassoy: $hassoy, Breakfast: .constant(false), Lunch: .constant(false), Dinner: .constant(false), Dessert: .constant(false))) {
                    Text("Submit")
                        .font(.custom("BaiJamjuree-Bold", size:26))
                        .foregroundColor(Color("Background"))
                        .padding(.horizontal)
                        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color("re")/*@END_MENU_TOKEN@*/)
                        .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                }
                   
                    
               }
                
                .padding()
                
            }
        }.navigationBarBackButtonHidden(true)
        // ns
    }
    
}
struct AllergyView_Previews: PreviewProvider {
    static var previews: some View {
        AllergyView(filteredRecipes: [])
    }
}
