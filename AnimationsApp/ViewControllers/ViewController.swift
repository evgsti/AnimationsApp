//
//  ViewController.swift
//  AnimationsApp
//
//  Created by Евгений on 31.08.2024.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet weak var animationView: SpringView!
    @IBOutlet weak var animationLabel: UILabel!
    
    // MARK: - Private Properties
    private var dataStore = AnimationSettings.randomAnimation
    
    // MARK: - View Life Cycles
    override func viewDidLoad() {
        super.viewDidLoad()
        animationLabel.text = dataStore.animationInfo()
    }
    
    // MARK: - IB Actions
    @IBAction func nextAnimationTapped(_ sender: UIButton) {
        animationLabel.text = dataStore.animationInfo()
        
        animationView.animation = dataStore.preset
        animationView.curve = dataStore.curve
        animationView.duration = dataStore.duration
        animationView.force = dataStore.force
        animationView.delay = dataStore.delay
        animationView.animate()
        
        dataStore = AnimationSettings.randomAnimation
        
        sender.setTitle("Run \(dataStore.preset)", for: .normal)
    }
}
