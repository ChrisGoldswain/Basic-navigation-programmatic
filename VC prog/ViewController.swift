//
//  ViewController.swift
//  VC prog
//
//  Created by Christopher Goldswain on 08.12.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var presentButton: UIButton!
    @IBOutlet var pushButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
    }
    
    private func configureView() {
        view.backgroundColor = .systemBackground
    }
    
    @IBAction func didTapPresent() {
        let rootVC = SecondViewController()
        let navVC = UINavigationController(rootViewController: rootVC)
        navVC.modalPresentationStyle = .fullScreen
        present(navVC, animated: true)
    }
    @IBAction func didTapPush() {
        let vc = ThirdViewController()
        navigationController?.pushViewController(vc, animated: true)
    }

}
 
