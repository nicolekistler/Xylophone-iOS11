import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {

    var audioPlayer: AVAudioPlayer!


    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        playSound(sender)
    }

    func playSound(_ sender: UIButton) {
        let soundUrl = Bundle.main.url(forResource: "note\(sender.tag)", withExtension: "wav")

        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundUrl!)
        }
        catch {
            print(error)
        }

        audioPlayer.play()
    }



}

