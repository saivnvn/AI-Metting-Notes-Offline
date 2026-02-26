import SwiftUI

struct AppInfoView: View {
    
    var body: some View {
        ScrollView {
            VStack(spacing: 28) {
                
                // MARK: - Logo + Title
                
                VStack(spacing: 12) {
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    
                    Text("AI Meeting Notes Offline")
                        .font(.title.bold())
                        .multilineTextAlignment(.center)
                    
                    Text("Record • Transcribe • Summarize — 100% Offline")
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                        .multilineTextAlignment(.center)
                }
                .padding(.top, 30)
                
                
                // MARK: - Overview
                
                VStack(alignment: .leading, spacing: 12) {
                    Label("Real-time speech-to-text", systemImage: "waveform")
                    Label("Smart AI summaries", systemImage: "brain.head.profile")
                    Label("Action item detection", systemImage: "checkmark.circle")
                    Label("Fully offline & private", systemImage: "lock.fill")
                }
                .font(.headline)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                .background(.ultraThinMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                
                
                // MARK: - Preview Images
                
                VStack(alignment: .leading, spacing: 12) {
                    
                    Text("App Preview")
                        .font(.headline)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 16) {
                            
                            PreviewImage(name: "anh1")
                            PreviewImage(name: "anh2")
                            PreviewImage(name: "anh3")
                        }
                    }
                }
                
                
                // MARK: - Requirements
                
                VStack(alignment: .leading, spacing: 8) {
                    
                    Text("Requirements")
                        .font(.headline)
                    
                    Text("Advanced AI features require iPhone 15 Pro or newer.")
                    Text("Basic AI mode works on all supported devices.")
                        .foregroundStyle(.secondary)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                
                // MARK: - CTA
                
                Link(destination: URL(string: "https://apps.apple.com/app/ai-metting-notes-offline/id6759663657")!) {
                    Text("Download on the App Store")
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(.blue)
                        .foregroundStyle(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 16))
                }
                .padding(.top, 10)
                
            }
            .padding()
        }
    }
}

struct PreviewImage: View {
    
    let name: String
    
    var body: some View {
        Image(name)
            .resizable()
            .scaledToFit()
            .frame(width: 220)
            .clipShape(RoundedRectangle(cornerRadius: 18))
            .shadow(radius: 6)
    }
}

#Preview {
    AppInfoView()
}
