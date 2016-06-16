//
//  ViewController.swift
//  Tapper
//
//  Created by Ryan on 6/14/16.
//  Copyright © 2016 rfowlerdev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Variables
    var maxTaps: Int = 0
    var currentTaps: Int = 0
    
    //Outlets
    @IBOutlet weak var imgLogo: UIImageView!
    @IBOutlet weak var txtTap: UITextField!
    @IBOutlet weak var btnPlay: UIButton!

    @IBOutlet weak var btnCoin: UIButton!
    @IBOutlet weak var lblTaps: UILabel!
    
    @IBAction func on_btnCoinTapped(sender: UIButton) {
        currentTaps += 1
        updatelblTaps()
        
        if isGameOver() {
            restartGame()
        }
    }
    
    @IBAction func on_btnPlayPressed(sender: UIButton!) {
        
        if txtTap.text != nil && txtTap.text != "" {
            imgLogo.hidden = true
            btnPlay.hidden = true
            txtTap.hidden = true
            
            btnCoin.hidden = false
            lblTaps.hidden = false
            
            maxTaps = Int(txtTap.text!)!
            currentTaps = 0
            
            updatelblTaps()
            
        }
    }
    
    func restartGame() {
        maxTaps = 0
        txtTap.text = ""
        
        imgLogo.hidden = false
        btnPlay.hidden = false
        txtTap.hidden = false
        
        btnCoin.hidden = true
        lblTaps.hidden = true
    }
    
    func isGameOver() -> Bool {
        if currentTaps >= maxTaps {
            return true
        } else {
            return false
        }
    }
    
    func updatelblTaps() {
        lblTaps.text = "\(currentTaps) Taps"
    }
}

