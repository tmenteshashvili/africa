//
//  AnimalListItemView.swift
//  Africa
//
//  Created by Tako Menteshashvili on 02.08.22.
//

import SwiftUI

struct AnimalListItemView: View {
    
    let animal: Animal
    @State var showAnimalName: Bool = false
    
    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            
            Image(animal.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(
                    RoundedRectangle(cornerRadius: 12)
                )
            
            VStack(alignment: .leading, spacing: 8) {
                if showAnimalName {
                    Text(animal.name)
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundColor(.accentColor)

                }
              
                
                Text(animal.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing, 8)
            }
            
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now()+1) {
                withAnimation {
                    showAnimalName = true
                }
            }
                
               
            
        }
    }
}

struct AnimalListItemView_Previews: PreviewProvider {
    static let animals: [Animal] =
    Bundle.main.decode("animals.json")
    
    static var previews: some View {
        AnimalListItemView(animal: animals[1])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
