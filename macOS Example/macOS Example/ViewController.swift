//
//  ViewController.swift
//  macOS Example
//
//  Created by Mike Manzo on 1/27/20.
//  Copyright © 2020 Mike Manzo. All rights reserved.
//

import Cocoa
import FDBarGuage

class ViewController: NSViewController {
    @IBOutlet weak var defaultBarGuage: FDBarGauge!
    @IBOutlet weak var valueLabel: NSTextField!
    @IBOutlet weak var leftBarGuage: FDBarGauge!
    @IBOutlet weak var slider: NSSlider!
    
    var barGauges = [FDBarGauge]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        preferredContentSize = NSSize(width: 480, height: 343)
        setupBarGauges()
//        setupValueLabel()
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    @IBAction func sliderValueHasChanged(_ sender: NSSlider) {
        valueLabel.stringValue = String(format: "%0.1f", sender.floatValue)
        adjustBarGaugeValues(Double(sender.floatValue))
    }
    
    func setupBarGauges() {
        setupDefaultBarGauge()
        appendBarGauges()
        setupLeftBarGauge()
/*
        setupReversedBarGauge()
        setupColorBarGauge()
        setupRangeBarGauge()
        setupPeakBarGauge()
        setupLCDBarGauge()
*/
        adjustBarGaugeValues(Double(slider.floatValue))
    }
    
    func adjustBarGaugeValues(_ value: Double) {
        for gauge in barGauges {
            gauge.value = value
        }
    }

    func setupLeftBarGauge() {
        leftBarGuage.maxLimit = 100
        leftBarGuage.minLimit = 0
    }

    func setupDefaultBarGauge() {
        defaultBarGuage.maxLimit = 100
        defaultBarGuage.minLimit = 0
    }
    
    func appendBarGauges() {
        barGauges.append(defaultBarGuage)
        barGauges.append(leftBarGuage)
/*
        barGauges.append(reversedBarGauge)
        barGauges.append(colorBarGauge)
        barGauges.append(rangeBarGauge)
        barGauges.append(peakBarGauge)
        barGauges.append(lcdBarGauge)
*/
    }
}

