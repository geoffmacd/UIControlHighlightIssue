
import UIKit

class TestingButton: UIButton {
    
    override var isHighlighted: Bool {
        didSet {
            print("isHighlighted changed \(isHighlighted)")
        }
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Plus-sized device UIControl issue"
        view.backgroundColor = .white
        
        let button = TestingButton(type: .system)
        button.setTitle("Push ViewController", for: .normal)
        
        // when highlighting this button (or any UIControl)
        // the isHighlighted state does not work set
        // only when touching down on first 40 pts from left side of screen
        // (taps still send target action however
        button.addTarget(self, action: #selector(tapped), for: .touchUpInside)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button)
        NSLayoutConstraint.activate([
            button.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }
    
    @objc func tapped() {
        print("tapped")
        navigationController?.pushViewController(ViewController(), animated: true)
    }
}

