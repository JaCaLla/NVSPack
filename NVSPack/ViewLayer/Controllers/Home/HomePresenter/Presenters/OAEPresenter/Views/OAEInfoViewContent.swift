//
//  OAEInfoViewContent.swift
//  NVSPack
//
//  Created by Adrian on 17/12/2018.
//  Copyright © 2018 jca. All rights reserved.
//

import UIKit

class OAEInfoViewContent: UIViewController {
    
    @IBOutlet weak var lblTotalCapacity: UILabel!
    @IBOutlet weak var lblGeneration: UILabel!
    
    // MARK: - Public attributes
    var totalCapacity: Int? {
        didSet {
            self.setLabelValues()
        }
    }
    
    var generation: Float? {
        didSet {
            self.setLabelValues()
        }
    }
    
    private func setLabelValues() {
        guard let totalCapacityInfo = self.totalCapacity else {
            return
        }
        
        lblGeneration.text = R.string.localized.generation_info() + ": " + String.init(totalCapacityInfo) + " t/h"
        
        guard let generationInfo = self.generation else {
            return
        }
        
        lblTotalCapacity.text = R.string.localized.capacity_info() + ": " + String.init(generationInfo) + " m3/h"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lblTotalCapacity.textColor = ColorsNVSPack.OAEAccumulated.titleFontColor
        lblGeneration.textColor = ColorsNVSPack.OAEAccumulated.titleFontColor
        
        setLabelValues()
        
        // Do any additional setup after loading the view.
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
