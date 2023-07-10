import SwiftUI

struct CreateProfileView: View {
    @State private var name: String = ""
    @State private var pronouns: String = ""
    @State private var location: String = ""
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 8) {
                Text("Create your profile")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    .padding(.bottom, 8.0)
                    .foregroundColor(Color.primary)
                
                Text("Help others on Bent get to know you.\nYou can edit these fields at any time later.")
                    .font(.subheadline)
                    .foregroundColor(Color.gray)
                    .multilineTextAlignment(.leading)
                    .padding(.bottom)
                
                VStack(alignment: .leading, spacing: 8) {
                    Text("Name")
                        .font(.headline)
                        .foregroundColor(Color.primary)
                    
                    TextField("Name", text: $name)
                        .foregroundColor(Color.primary)
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(8)
                }
                .padding(.bottom)
                
                VStack(alignment: .leading, spacing: 8) {
                    Text("Pronouns")
                        .font(.headline)
                        .foregroundColor(Color.primary)
                    
                    TextField("Pronouns", text: $pronouns)
                        .foregroundColor(Color.primary)
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(8)
                }
                .padding(.bottom)
                
                VStack(alignment: .leading, spacing: 8) {
                    Text("Location")
                        .font(.headline)
                        .foregroundColor(Color.primary) // Use primary color for text
                    
                    TextField("Location", text: $location)
                        .foregroundColor(Color.primary) // Use primary color for text
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(8)
                    
                    Text("Location is used to help you see if other members from the same group are nearby. Bent does not show your exact location.")
                        .font(.caption)
                        .foregroundColor(Color.gray)
                        .multilineTextAlignment(.leading)
                }
                
                Spacer()
                
                NavigationLink(destination: NextView()) {
                    Text("Next")
                        .foregroundColor(.white)
                        .font(.headline)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(8)
                }
                
            }
            .padding()
            .navigationBarTitle("Bent", displayMode: .inline)
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: BackButton())
        }
        .colorScheme(.dark)
    }
}

struct BackButton: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }) {
            Image(systemName: "chevron.left")
                .foregroundColor(.white)
        }
    }
}

struct NextView: View {
    var body: some View {
        Text("Next View")
            .font(.title)
            .navigationBarTitle("Next View")
    }
}

struct CreateProfileView_Previews: PreviewProvider {
    static var previews: some View {
        CreateProfileView()
            .preferredColorScheme(.dark)
    }
}
