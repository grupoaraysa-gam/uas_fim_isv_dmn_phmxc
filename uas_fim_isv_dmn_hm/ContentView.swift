// UAS_FIM_ISV_DMN_HM: ARNOLDO AYALA SAGRERO

import SwiftUI

struct ContentView: View {
    // Variables de estado para almacenar la entrada y el mensaje
    @State private var nombreUsuario: String = ""
    @State private var mensajeSaludo: String = "¡Hola! Ingresa tu nombre."
    
    var body: some View {
        VStack(spacing: 25) {
            Text("Práctica 1: Hola Mundo")
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
            
            // 1. Campo de entrada de texto
            TextField("Escribe tu nombre aquí...", text: $nombreUsuario)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)
            
            // 2. Botón de acción
            Button(action: {
                if nombreUsuario.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
                    mensajeSaludo = "Por favor, escribe un nombre válido."
                } else {
                    mensajeSaludo = "¡Hola, \(nombreUsuario)! Bienvenido a iOS."
                }
            }) {
                Text("Saludar")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .padding(.horizontal)
            
            // 3. Etiqueta de texto dinámico
            Text(mensajeSaludo)
                .font(.title3)
                .fontWeight(.medium)
                .foregroundColor(.indigo)
                .multilineTextAlignment(.center)
                .padding()
            
            Spacer()
        }
        .padding(.top, 40)
    }
}

#Preview {
    ContentView()
}
