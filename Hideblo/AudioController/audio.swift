//
//  audio.swift
//  Hideblo
//
//  Created by ADMIN UNACH on 03/04/25.
//

import AVFoundation

class MusicPlayer {
    static let shared = MusicPlayer()
    var audioPlayer: AVAudioPlayer?

    func playBackgroundMusic() {
        if let path = Bundle.main.path(forResource: "musica", ofType: "mp3") {
            let url = URL(fileURLWithPath: path)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.numberOfLoops = -1 // Para que se repita indefinidamente
                audioPlayer?.volume = 0.5 // Ajusta el volumen según lo desees
                audioPlayer?.prepareToPlay()
                audioPlayer?.play()
            } catch {
                print("Error al reproducir la música de fondo: \(error.localizedDescription)")
            }
        } else {
            print("No se encontró el archivo de música.")
        }
    }

    func stopMusic() {
        audioPlayer?.stop()
    }

    func pauseMusic() {
        audioPlayer?.pause()
    }

    func resumeMusic() {
        audioPlayer?.play()
    }
}

