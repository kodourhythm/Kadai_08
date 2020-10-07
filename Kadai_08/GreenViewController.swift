//
//  GreenViewController.swift
//  Kadai_08
//
//  Created by kodou on 2020/10/06.
//

import UIKit

class GreenViewController: UIViewController {

    @IBOutlet private weak var label: UILabel!
    @IBOutlet private weak var slider: UISlider!
    
    private var appDelegate:AppDelegate {
        UIApplication.shared.delegate as! AppDelegate
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        self.slider.value = Float(appDelegate.sliderValue)
        updateLabel()
    }

    @IBAction func changeSlider(_ sender: Any) {
        updateLabel()
        appDelegate.sliderValue = Double(self.slider.value)
    }
    
    private func  updateLabel() {
        label.text = String(appDelegate.sliderValue)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
