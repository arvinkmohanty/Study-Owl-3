//
//  VisualViewController.swift
//  Study Owl
//
//  Created by Brian Browdy on 7/10/17.
//  Copyright © 2017 Alexandra Stavrakos. All rights reserved.
//

import UIKit
import SafariServices

class VisualViewController: UIViewController {

    var myClass = OwlClass()
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onMathTapped(_ sender: Any) {
        myClass.name = "math"
        let dvc = self.storyboard?.instantiateViewController(withIdentifier: "VisualTableViewController") as! VisualTableViewController
        dvc.myClass = self.myClass
        self.present(dvc, animated: true, completion: nil)
    }
    
    
    @IBAction func onEnglishTapped(_ sender: Any) {
        myClass.name = "english"
        let dvc = self.storyboard?.instantiateViewController(withIdentifier: "VisualTableViewController") as! VisualTableViewController
        dvc.myClass = self.myClass
        self.present(dvc, animated: true, completion: nil)
    }
    
    @IBAction func onScienceTapped(_ sender: Any) {
        myClass.name = "science"
        let dvc = self.storyboard?.instantiateViewController(withIdentifier: "VisualTableViewController") as! VisualTableViewController
        dvc.myClass = self.myClass
        self.present(dvc, animated: true, completion: nil)
    }
    
    @IBAction func onSocialStudiesTapped(_ sender: Any) {
        myClass.name = "socialStudies"
        let dvc = self.storyboard?.instantiateViewController(withIdentifier: "VisualTableViewController") as! VisualTableViewController
        dvc.myClass = self.myClass
        self.present(dvc, animated: true, completion: nil)
    }
    
}
