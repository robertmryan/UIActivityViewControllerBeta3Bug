//
//  SecondViewController.swift
//  MyApp
//
//  Created by Robert Ryan on 7/5/19.
//  Copyright © 2019 Robert Ryan. All rights reserved.
//

import UIKit
import Photos

class SecondViewController: UIViewController {

    private let sampleImage: UIImage = {
        let rect = CGRect(origin: .zero, size: CGSize(width: 100, height: 100))
        return UIGraphicsImageRenderer(bounds: rect).image { _ in
            UIColor.red.setFill()
            UIBezierPath(rect: rect).fill()
        }
    }()

    @IBAction func didTapButton(_ sender: Any) {
        let image = sampleImage

        PHPhotoLibrary.requestAuthorization { status in
            DispatchQueue.main.async {
                let shareItems = [image] as [Any]

                let activityController = UIActivityViewController(activityItems: shareItems, applicationActivities: nil)

                if status == .denied {
                    activityController.excludedActivityTypes = [.saveToCameraRoll]
                }

                self.present(activityController, animated: true)
            }
        }
    }
}

