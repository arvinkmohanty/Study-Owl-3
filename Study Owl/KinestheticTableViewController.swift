//
//  KinestheticTableViewController.swift
//  Study Owl
//
//  Created by Alexandra Stavrakos on 7/11/17.
//  Copyright © 2017 Alexandra Stavrakos. All rights reserved.
// lol test

import UIKit

class KinestheticTableViewController: UITableViewController {
    
    var myClass = OwlClass()
    
    let math = ["http://www.coolmath.com/prealgebra", "http://sciencing.com/math-activities-kinesthetic-learners-12179525.html", "http://www.shodor.org/interactivate/activities/AdjustableSpinner/", "http://www.shodor.org/interactivate/activities/Angles/", "http://www.shodor.org/interactivate/activities/AreaExplorer/", "http://www.shodor.org/interactivate/activities/ArithmeticFour/"]
    let mathTitles = ["Pre-algebra games", "Article on math activities", "Interactive spinner (probability practice)", "Interactive Angle practice", "Interactive Area practice", "Arithmetic practice",]
    
    let science = ["https://sciencebob.com/category/experiments/", "http://www.ssww.com/item/common-core-collaborative-cards-exponent-equations-grades-LR3109/?aid=GOG&cid=3294&oc=W3355&utm_campaign=pla&utm_medium=cpc&utm_source=google&utm_content=LR3109&gclid=CjwKEAjwqIfLBRCk6vH_rJq7yD0SJACG18fr54xs6VmnZBefageFb9bCUVwjkSeHocVXhyhcWa9GKxoC5tfw_wcB"]
    let scienceTitles = ["Experiments you can try at home (with explanations)",]
    
    let english = ["http://www.scholastic.com/parents/books-and-reading/book-lists-and-recommendations/ages-11-13", ]
    let englishTitles = ["Free reading book recommendations"]
    
    let socialStudies = ["https://quizlet.com/130932105/introduction-to-world-geography-and-culture-flash-cards/",
                         
                         "https://quizlet.com/207975762/out-of-africa-flash-cards/",
                         
                         "https://quizlet.com/199088584/western-europe-encounters-eastern-mediterranean-flash-cards/",
                         
                         "https://quizlet.com/165656856/the-development-spread-of-feudalism-in-medieval-western-europe-flash-cards/",
                         "https://quizlet.com/213354339/rise-of-asia-flash-cards/", "https://quizlet.com/211864003/unit-8-interdependence-and-globalization-flash-cards/"]
    
    let socialStudiesTitles = ["World Geography and Culture", "Out of Africa", "Western Europe & Eastern Meditteranean", "Spread of Feudalism", "Rise of Asia", "Interdependence & Globalization"]
    
    var url = ""
    
    var subject = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.clearsSelectionOnViewWillAppear = false
    }
    
    public override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if myClass.name == "math"
        {
            return mathTitles.count
        }
        else if myClass.name == "english"
        {
            return englishTitles.count
        }
        else if myClass.name == "science"
        {
            return scienceTitles.count
        }
        else if myClass.name == "socialStudies"
        {
            return socialStudiesTitles.count
        }
        else
        {
            return 1
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if myClass.name == "math"
        {
            for _ in math
            {
                url = math[indexPath.row]
            }
            
            UIApplication.shared.openURL(URL(string : url)!)
        }
        else if myClass.name == "english"
        {
            for _ in english
            {
                url = english[indexPath.row]
            }
            UIApplication.shared.openURL(URL(string : url)!)
        }
        else if myClass.name == "science"
        {
            for _ in science
            {
                url = science[indexPath.row]
            }
            UIApplication.shared.openURL(URL(string: url)!)
        }
        else
        {
            for _ in socialStudies
            {
                url = socialStudies[indexPath.row]
            }
            UIApplication.shared.openURL(URL(string: url)!)
        }
    }
    
    public override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        if myClass.name == "math"
        {
            cell.textLabel?.text = mathTitles[indexPath.row]
            return cell
        }
        else if myClass.name == "english"
        {
            cell.textLabel?.text = englishTitles[indexPath.row]
        }
        else if myClass.name == "science"
        {
            cell.textLabel?.text = scienceTitles[indexPath.row]
        }
        else if myClass.name == "socialStudies"
        {
            cell.textLabel?.text = socialStudiesTitles[indexPath.row]
        }
        return cell
    }
    
    func returnToPreviousVC()
    {
        if let nav = self.navigationController {
            nav.popViewController(animated: true)
        } else {
            self.dismiss(animated: true, completion: nil)
        }
    }
    
    @IBAction func onXTapped(_ sender: Any) {
       returnToPreviousVC()
    }
}
