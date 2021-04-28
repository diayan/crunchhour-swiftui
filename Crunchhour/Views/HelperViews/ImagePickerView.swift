//
//  ImagePickerView.swift
//  Crunchhour
//
//  Created by diayan siat on 28/04/2021.
//

import Foundation
import UIKit
import SwiftUI


struct ImagePickerView: UIViewControllerRepresentable {
    
    @Binding var selectedImage: UIImage?
    @Environment(\.presentationMode) var isPresented
    var sourceType: UIImagePickerController.SourceType
        
    func makeUIViewController(context: Context) -> UIImagePickerController {
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = self.sourceType
        imagePicker.delegate = context.coordinator // confirming the delegate
        return imagePicker
    }

    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {

    }

    // Connecting the ImageDataCoordinator class with this struct
    func makeCoordinator() -> ImageDataCoordinator {
        return ImageDataCoordinator(picker: self)
    }
}
