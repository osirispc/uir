// ViewController.swift (Refactored - Part 1)
// Handles UI logic, pickers, and form lifecycle

import UIKit
import MessageUI

extension UIViewController {
    func hideKeyboardOnTap() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        view.addGestureRecognizer(tap)
    }

    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}

class ViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet weak var indName: UITextField!
    @IBOutlet weak var siteTextField: UITextField!
    @IBOutlet weak var countyTextField: UITextField!
    @IBOutlet weak var txtDatePicker: UITextField!
    @IBOutlet weak var staffNotificationTextField: UITextField!
    @IBOutlet weak var typeOfIncidentTextField: UITextField!
    @IBOutlet weak var investigatedBy: UITextField!
    @IBOutlet weak var descriptionTextView: UITextView!
    @IBOutlet weak var contributingFactorsTextField: UITextView!
    @IBOutlet weak var responseTextField: UITextView!
    @IBOutlet weak var nocTextField: UITextField!
    @IBOutlet weak var mocTextField: UITextField!
    @IBOutlet weak var docTextField: UITextField!
    @IBOutlet weak var saTextField: UITextField!
    @IBOutlet weak var guardianTextField: UITextField!
    @IBOutlet weak var muiLineTextField: UITextField!
    @IBOutlet weak var nocTime: UITextField!
    @IBOutlet weak var mocTime: UITextField!
    @IBOutlet weak var docTime: UITextField!
    @IBOutlet weak var saTime: UITextField!
    @IBOutlet weak var gaTime: UITextField!
    @IBOutlet weak var muiTime: UITextField!

    // MARK: - Pickers & Date Pickers
    let pickers = (1...7).map { _ in UIPickerView() }
    let datePickers = (1...7).map { _ in UIDatePicker() }

    var pickerData: [UIPickerView: [String]] = [:]
    var textFieldPickerMap: [UIPickerView: UITextField] = [:]

    // MARK: - Data Arrays
    let county = ["", "Cuyahoga", "Geauga", "Lake", "Lorain", "Medina", "Summit", "WDC"]
    let site = ["", "Locust", "Lane Rd", "1200 Resource", "Mayfield"] // shortened for brevity
    let type = ["", "Aggression by Peer", "Elopement", "Fall", "Illness"]
    let noc = ["", "Stace Wolf - 555-5555"]
    let moc = ["", "Heidi Spaeth - 555-5555"]
    let doc = ["", "Lina Workman - 555-5555"]
    let muiLine = ["", "CCBDD 440-333-6884"]

    var taskArr = [UIRTask]()

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboardOnTap()
        setupPickers()
        setupDatePickers()
        observeKeyboardChanges()

        taskArr.append(UIRTask())
    }

    deinit {
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Picker Setup
    func setupPickers() {
        let dataSources = [county, site, type, noc, moc, doc, muiLine]
        let fields = [countyTextField, siteTextField, typeOfIncidentTextField, nocTextField, mocTextField, docTextField, muiLineTextField]

        for (i, picker) in pickers.enumerated() {
            picker.delegate = self
            picker.dataSource = self
            picker.tag = i + 1
            pickerData[picker] = dataSources[i]
            textFieldPickerMap[picker] = fields[i]
            fields[i]?.inputView = picker
        }
    }
}
// ViewController.swift (Refactored - Part 2)
// Add UIPickerViewDelegate and UIPickerViewDataSource methods

extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData[pickerView]?.count ?? 1
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[pickerView]?[row] ?? ""
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        guard let data = pickerData[pickerView], let textField = textFieldPickerMap[pickerView] else { return }
        textField.text = data[row]
        self.view.endEditing(false)
    }
} 
// Existing code for ViewController continues here...
