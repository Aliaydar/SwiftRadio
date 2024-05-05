//
//  InfoDetailViewController.swift
//  SwiftRadio
//
//  Created by Aliaydar Berkimbekov on 15.04.2024.
//

import UIKit

class InfoDetailViewController: UIViewController {
    
    @IBOutlet weak var stationImageView: UIImageView!
    @IBOutlet weak var stationNameLabel: UILabel!
    @IBOutlet weak var stationDescLabel: UILabel!
    @IBOutlet weak var stationLongDescTextView: UITextView!
    @IBOutlet weak var okayButton: UIButton!
    
    var currentStation: RadioStation!

    // MARK: - ViewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupStationText()
        setupStationLogo()
    }
    
    // MARK: - UI Helpers
    
    func setupStationText() {
        
        // Display Station Name & Short Desc
        stationNameLabel.text = currentStation.name
        stationDescLabel.text = currentStation.desc
        
        // Display Station Long Desc
        if currentStation.longDesc == "" {
            loadDefaultText()
        } else {
            stationLongDescTextView.text = currentStation.longDesc
        }
    }
    
    func loadDefaultText() {
        // Add your own default ext
        stationLongDescTextView.text = "Сiз Swift Radio-ны тындап отырсыз."
    }
    
    func setupStationLogo() {
        
        // Display Station Image/Logo
        currentStation.getImage { [weak self] image in
            self?.stationImageView.image = image
        }
        
        // Apply shadow to Station Image
        stationImageView.applyShadow()
    }
    
    // MARK: - IBActions
    
    @IBAction func okayButtonPressed(_ sender: UIButton) {
        _ = navigationController?.popViewController(animated: true)
    }
    
}
