//
//  GeneratePage.swift
//  LightBulb
//
//  Created by scholar on 8/15/23.
//

import SwiftUI

struct GeneratePage: View {
    
    //@State var filteredRecipes: [Recipes]
    
    @State private var idea = "Idea:"
    
    @State private var image = "Image"
    
    @State private var textrecipe = ""
        
    @Binding var mealType: String
    @Binding var haslactose: Bool
    @Binding var hasVegan: Bool
    @Binding var isvegetarian: Bool
    @Binding var ishalal: Bool
    @Binding var isKosher: Bool
    @Binding var isglutenFree: Bool
    @Binding var hasseafood: Bool
    @Binding var hasshellfish: Bool
    @Binding var hastreenuts: Bool
    @Binding var haspeanuts: Bool
    @Binding var haswheat: Bool
    @Binding var haseggs: Bool
    @Binding var hassoy: Bool
    @Binding var Breakfast: Bool
    @Binding var Lunch: Bool
    @Binding var Dinner: Bool
    @Binding var Dessert: Bool
    
    let sample : [Recipes] = [
        Recipes(name: "Smoothie", mealtype: "Breakfast", lactoseFree: true, vegan: false, vegetarian: true, halal: true, kosher: true, glutenFree: true, seafood: false, shellfish: false, treenuts: false, peanuts: false, eggs: true, wheat: false, soy: false),
        Recipes(name: "Herbed Spanish Omelet", mealtype: "Breakfast", lactoseFree: true, vegan: false, vegetarian: true, halal: true, kosher: true, glutenFree: true, seafood: false, shellfish: false, treenuts: false, peanuts: false, eggs: true, wheat: false, soy: false),
       Recipes(name: "Lemon Poppyseed Muffin", mealtype: "Breakfast", lactoseFree: true, vegan: true, vegetarian: true, halal: true, kosher: true, glutenFree: false, seafood: false, shellfish: false, treenuts: true, peanuts: false, eggs: true, wheat: true, soy: false),
       Recipes(name: "Peanut Butter Overnight Oats", mealtype: "Breakfast", lactoseFree: true, vegan: false, vegetarian: true, halal: true, kosher: true, glutenFree: false, seafood: false, shellfish: false, treenuts: false, peanuts: true, eggs: false, wheat: false, soy: false),
        Recipes(name: "No Bake Peanut Butter Cup", mealtype: "Breakfast", lactoseFree: true, vegan: true, vegetarian: true, halal: true, kosher: true, glutenFree: true, seafood: false, shellfish: false, treenuts: true, peanuts: true, eggs: false, wheat: false, soy: false),
        Recipes(name: "Burrito Bowl", mealtype: "Lunch/Dinner", lactoseFree: true, vegan: true, vegetarian: true, halal: true, kosher: true, glutenFree: true, seafood: false, shellfish: false, treenuts: false, peanuts: false, eggs: false, wheat: false, soy: false),
        Recipes(name: "Chicken Tacos", mealtype: "Lunch/Dinner", lactoseFree: true, vegan: false, vegetarian: false, halal: true, kosher: true, glutenFree: true, seafood: false, shellfish: false, treenuts: false, peanuts: false, eggs: false, wheat: false, soy: false),
        Recipes(name: "Chicken/Cauliflower Pasta", mealtype: "Lunch/Dinner", lactoseFree: true, vegan: true, vegetarian: true, halal: true, kosher: true, glutenFree: false, seafood: false, shellfish: false, treenuts: false, peanuts: false, eggs: false, wheat: true, soy: false),
        Recipes(name: "Vegetable Stir Fry", mealtype: "Lunch/Dinner", lactoseFree: true, vegan: true, vegetarian: true, halal: true, kosher: false, glutenFree: false, seafood: false, shellfish: false, treenuts: false, peanuts: false, eggs: false, wheat: false, soy: false),
        Recipes(name: "Stovetop Frittata", mealtype: "Lunch/Dinner", lactoseFree: true, vegan: false, vegetarian: true, halal: true, kosher: true, glutenFree: false, seafood: false, shellfish: false, treenuts: false, peanuts: false, eggs: true, wheat: true, soy: false),
        Recipes(name: "Nutty Cheesy Tortellini", mealtype: "Lunch/Dinner", lactoseFree: false, vegan: false, vegetarian: true, halal: true, kosher: false, glutenFree: false, seafood: false, shellfish: false, treenuts: true, peanuts: false, eggs: true, wheat: true, soy: false),
       Recipes(name: "Mushroom Salmon Cooked Rice", mealtype: "Lunch/Dinner", lactoseFree: true, vegan: false, vegetarian: false, halal: true, kosher: false, glutenFree: false, seafood: true, shellfish: false, treenuts: false, peanuts: false, eggs: false, wheat: true, soy: false),

        Recipes(name: "Chicken Cutlets and Zucchini Noodles", mealtype: "Lunch/Dinner", lactoseFree: false, vegan: false, vegetarian: false, halal: false, kosher: false, glutenFree: true, seafood: false, shellfish: false, treenuts: false, peanuts: false, eggs: false, wheat: false, soy: false),
        Recipes(name: "Sweet Potato Curry", mealtype: "Lunch/Dinner", lactoseFree: true, vegan: true, vegetarian: true, halal: true, kosher: false, glutenFree: true, seafood: false, shellfish: false, treenuts: false, peanuts: false, eggs: false, wheat: false, soy: false),
        Recipes(name: "Vegan Cupcake", mealtype: "Dessert", lactoseFree: true, vegan: true, vegetarian: true, halal: true, kosher: true, glutenFree: true, seafood: false, shellfish: false, treenuts: false, peanuts: false, eggs: false, wheat: false, soy: false)
        
    ]
    let recipe = [ "Strawberry Chia Smoothie", "Herbed Spanish Omelet",  "Lemon Poppyseed Muffin", "Peanut Butter Overnight Oats","No Bake Peanut Butter Cup","Burrito Bowl",  "Chicken/Cauliflower Pasta","Vegetable Stir Fry","Stovetop Frittata",  "Nutty Cheesy Tortellini", "Mushroom Salmon Cooked Rice","One-Pan Chicken", "Chicken Cutlets and Zucchini Noodles",
        "Sweet Potato Curry","Vegan Cupcake"]
    
   
    
//    func pickrecipe () -> String {
//        var random = Int.random(in: recipe)
//        var recipe = recipe[random]
//        return recipe
//    }
//
//    var randomRecipe = pickrecipe
    
    var filteredRecipes: [Recipes] {
        sample.filter { food in (!haslactose || food.lactoseFree ) &&
            (!hasVegan || food.vegan) &&
            (!isvegetarian || food.vegetarian) &&
            (!ishalal || food.halal) &&
            (!isKosher || food.kosher) &&
            (!isglutenFree || food.glutenFree) &&
            (hasseafood || food.seafood) &&
            (hasshellfish || food.shellfish) &&
            (hastreenuts || food.treenuts) &&
            (haspeanuts || food.peanuts) &&
            (haswheat || food.wheat) &&
            (haseggs || food.eggs) &&
            (hassoy || food.soy)
            
        }
    }
    
    var body: some View {
        
        NavigationStack {
            ZStack{
                Color("Background").ignoresSafeArea(.all)
            VStack {
                
                Spacer()
                
                Text(mealType)
                    .font(.title)
                
                
//               // Spacer()
//                    .frame(height: 50.0)
                
                NavigationLink(destination: AllergyView(filteredRecipes: filteredRecipes)) {
                    Text("Dietary Restrictions/Allergies")
                        .font(.custom("BaiJamjuree-Bold", size:20))
                        .foregroundColor(Color("ye"))
                        .multilineTextAlignment(.leading)
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        .frame(width: 340.0, height: 45.0)
                        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color("turquo")/*@END_MENU_TOKEN@*/)
                        .cornerRadius(/*@START_MENU_TOKEN@*/15.0/*@END_MENU_TOKEN@*/)
                        .shadow(radius: /*@START_MENU_TOKEN@*/15/*@END_MENU_TOKEN@*/)
                        
                }
                
                Spacer()
                    .frame(height: 50.0)
            
                
                Spacer()
                    .frame(height: 150.0)
                
//                Text(image)
//                Text(textrecipe)
//
                
                Text(textrecipe)
                    .font(.custom("BaiJamjuree-Bold", size:33))
                    .padding(.bottom)
                Spacer()
                    .padding()
                    .frame(height: 250.0)
                
                Button("Generate") {
                    
                    func pickRecipe() -> String {
                        
                        if filteredRecipes.count > 0 {
                            let random = Int.random(in: 0..<filteredRecipes.count)
                            let Recipe = filteredRecipes[random]
                            return Recipe.name
                        } else {
                            let random = Int.random(in: 0..<sample.count)
                            let Recipe = sample[random]
                            return Recipe.name
                        }
                        
                        
                    }
                    textrecipe = pickRecipe()
                    
                    
                    
                    
                  
                }
                .padding(.all)
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color("re")/*@END_MENU_TOKEN@*/)
                .cornerRadius(/*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
                .controlSize(/*@START_MENU_TOKEN@*/.regular/*@END_MENU_TOKEN@*/)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .foregroundColor(/*@START_MENU_TOKEN@*/Color("Background")/*@END_MENU_TOKEN@*/)
                .fontWeight(/*@START_MENU_TOKEN@*/.medium/*@END_MENU_TOKEN@*/)
                .shadow(radius: /*@START_MENU_TOKEN@*/20/*@END_MENU_TOKEN@*/)
                
                //.background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color("navy")/*@END_MENU_TOKEN@*/)
                
                
                
                
                
                
                
                //change image var and idea var
                
                
                
                Spacer()
                
                
                
                
            }
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
        }
       
        }.navigationBarBackButtonHidden(true)
    
    }
    
}

    class Recipes : Identifiable {
    var name: String
    var mealtype: String
    var lactoseFree: Bool
    var vegan: Bool
    var vegetarian: Bool
    var halal: Bool
    var kosher: Bool
    var glutenFree: Bool
    var seafood: Bool
    var shellfish: Bool
    var treenuts: Bool
    var peanuts: Bool
    var wheat: Bool
    var eggs: Bool
    var soy: Bool
    
    init(name: String, mealtype: String, lactoseFree: Bool, vegan: Bool, vegetarian: Bool, halal: Bool, kosher: Bool, glutenFree: Bool, seafood: Bool, shellfish: Bool, treenuts: Bool, peanuts: Bool, eggs: Bool, wheat: Bool, soy: Bool) {
        self.name = name
        self.mealtype = mealtype
        self.lactoseFree = lactoseFree
        self.vegan = vegan
        self.vegetarian = vegetarian
        self.halal = halal
        self.kosher = kosher
        self.glutenFree = glutenFree
        self.seafood = seafood
        self.shellfish = shellfish
        self.treenuts = treenuts
        self.peanuts = peanuts
        self.eggs = eggs
        self.wheat = wheat
        self.soy = soy
        
    }

    
 
}

struct GeneratePage_Previews: PreviewProvider {
    static var previews: some View {
        GeneratePage(mealType: .constant(""),
                     haslactose: .constant(true),
                     hasVegan: .constant(true), isvegetarian: .constant(true),  ishalal: .constant(true), isKosher: .constant(true), isglutenFree: .constant(true), hasseafood: .constant(true), hasshellfish: .constant(true), hastreenuts: .constant(true), haspeanuts: .constant(true), haswheat: .constant(true), haseggs: .constant(true), hassoy: .constant(true), Breakfast: .constant(true), Lunch: .constant(true), Dinner: .constant(true), Dessert: .constant(true))
        
    }
}
