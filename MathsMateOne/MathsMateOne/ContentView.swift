import SwiftUI
struct Tabs: Identifiable {
    var id = UUID()
    var label: String
    var img: String
    var tag: Int?
}

struct TxtLabels: ViewModifier {
    @State var TxtColors: [Color] = [.red, .blue, .black]
    func body(content: Content) -> some View {
        content
          //  .font(.system(size: 18, weight: .bold))
            .frame(width: 200, height:24, alignment: .leading)
    }
}

struct ImgLabels: ViewModifier {
    @State var ImgColors: [Color] = [.red, .blue,  .black]
    func body(content: Content) -> some View {
        content
            .font(.system(size: 18, weight: .bold))
            .foregroundColor(ImgColors.randomElement())
            .padding(.top, 6)
            .frame(width: 60, height: 24, alignment: .center)
    }
}
struct ContentView: View {
    @State var mathsTopic: String = ""
    let tabList = [
        Tabs(label: "1: Operators", img: "tortoise",tag: 1),
    Tabs(label: "2: Order of Evaluation", img: "button.horizontal",tag: 2),
    Tabs(label: "3: Transform", img: "figure.wave.circle",tag: 3),
    Tabs(label: "4: Simplify & Substitute", img: "figure.run.circle",tag: 4),
    Tabs(label: "5: Powers Intro", img: "mic.square",tag: 5),
    Tabs(label: "6: Powers Multiply", img: "checkmark.seal.fill",tag: 6),
    Tabs(label: "7: Powers Divide", img: "person.fill.questionmark",tag: 7),
    Tabs(label: "8: Fractions Intro", img: "checkmark.seal.fill",tag:  8),
    Tabs(label: "9: Fractions Add", img: "flag.checkered.circle",tag: 9),
    Tabs(label: "10: Fractions Subtract", img: "flag.checkered.circle",tag: 10),
    Tabs(label: "11: Fractions Multiply", img: "flag.checkered.circle",tag: 11),
    Tabs(label: "12: Fractions Divide", img: "flag.checkered.circle",tag: 12),
    Tabs(label: "13: Brackets", img: "tortoise",tag: 13),
    Tabs(label: "14: Nested Brackets", img: "button.horizontal",tag: 14),
    Tabs(label: "15: Multiplication", img: "figure.wave.circle",tag: 15),
    Tabs(label: "16: Division", img: "checkmark.seal.fill",tag:  16)
    

   

    ]
    
    @Environment(\.dismiss) var dismiss
    
    
    var body: some View {
        NavigationView {
            List(tabList) { tab in
                NavigationLink(destination: destinationView(tab.tag ?? 0)) {
                    HStack {
                        Image(systemName: tab.img)
                            .modifier(ImgLabels())
                            
                        Text(tab.label)
                            .modifier(TxtLabels())
                    }  /// HStack
                } /// NavLink
                .navigationTitle("Algebra Primer")
                .navigationViewStyle(StackNavigationViewStyle())
                .navigationBarBackButtonHidden(true)
                .navigationBarTitleDisplayMode(.inline)   /// Reduce the size of the Text that appears at the top
            //    .font(.system(size: 24, weight: .bold))
            } /// List
        }  /// NavView
       
        
        
    }/// Body
        
    func destinationView(_ tag: Int) -> some View {
        switch tag {
        case 1: return AnyView(Tab1View(mathsTopic:"Operators"))
        case 2: return AnyView(Tab2View(mathsTopic:"Order of Evaluation"))
        case 3: return AnyView(Tab3View(mathsTopic:"Transform"))
        case 4: return AnyView(Tab4View(mathsTopic:"Simplify and Substitute"))
        case 5: return AnyView(Tab5View(mathsTopic:"Powers Intro"))
        case 6: return AnyView(Tab6View(mathsTopic:"Powers Multiplying"))
        case 7: return AnyView(Tab7View(mathsTopic:"Powers Dividing"))
        case 8: return AnyView(Tab8View(mathsTopic:"Fractions Intro"))
        case 9: return AnyView(Tab9View(mathsTopic:"Fractions Add"))
        case 10: return AnyView(Tab10View(mathsTopic:"Fractions Subtract"))
        case 11: return AnyView(Tab11View(mathsTopic:"Fractions Multiply"))
        case 12: return AnyView(Tab12View(mathsTopic:"Fractions Divide"))
        case 13: return AnyView(Tab13View(mathsTopic:"Brackets"))
        case 14: return AnyView(Tab14View(mathsTopic:"Nested Brackets"))
        case 15: return AnyView(Tab15View(mathsTopic:"Multiplication"))
        case 16: return AnyView(Tab16View(mathsTopic:"Division"))
        default: return AnyView(EmptyView())
        }  //// Switch

}
  
} /// struct

#Preview {
    ContentView()
}


