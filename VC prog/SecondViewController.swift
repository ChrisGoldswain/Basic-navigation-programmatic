//
//  SecondViewController.swift
//  VC prog
//
//  Created by Christopher Goldswain on 29.03.23.
//

import UIKit

class SecondViewController: UIViewController {
    
    private var btnDsms: UIBarButtonItem?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
    }
    
    private func configureView() {
        configureBackground()
        configureNavBar()
    }
    
    private func configureBackground(){
        view.backgroundColor = .systemPurple
    }
    
    private func configureNavBar() {
        let textAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white]
        navigationController?.navigationBar.largeTitleTextAttributes = textAttributes
        navigationController?.navigationBar.prefersLargeTitles = true
        title = "Present"
        
        btnDsms = UIBarButtonItem(title: "Dismiss",
                                  style: .plain,
                                  target: self,
                                  action: #selector(dismissSelf))
        btnDsms?.tintColor = .white
        navigationItem.rightBarButtonItem = btnDsms
    }
    
    @objc private func dismissSelf() {
        dismiss(animated: true, completion: nil)
    }
    
}
 
