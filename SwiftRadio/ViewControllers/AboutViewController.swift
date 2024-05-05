//
//  AboutViewController.swift
//  SwiftRadio
//
//  Created by Aliaydar Berkimbekov on 15.04.2024.
//

import UIKit
import MessageUI

protocol AboutViewControllerDelegate: AnyObject {
    func didTapEmailButton(_ aboutViewController: AboutViewController)
    func didTapWebsiteButton(_ aboutViewController: AboutViewController)
}

class AboutViewController: UIViewController {
    
    weak var delegate: AboutViewControllerDelegate?
    
    // MARK: - ViewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
   
    // MARK: - IBActions
    
    @IBAction func emailButtonDidTouch(_ sender: UIButton) {
        delegate?.didTapEmailButton(self)
    }
    
    @IBAction func websiteButtonDidTouch(_ sender: UIButton) {
        delegate?.didTapWebsiteButton(self)
    }

  }

// MARK: - MFMailComposeViewController Delegate

extension AboutViewController: MFMailComposeViewControllerDelegate {
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true, completion: nil)
    }
}
