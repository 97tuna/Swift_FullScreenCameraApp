//
//  ViewController.swift
//  FullScreenCamera
//
//  Created by SIGNATURE on 17/07/2021.
//  Copyright © 2021 com.joonwon. All rights reserved.
//

import UIKit
import AVFoundation
import Photos

class CameraViewController: UIViewController {
    // TODO: 초기 설정 1
    // MARK: CaptureSession
    // MARK: AVCaptureDeviceInput
    // MARK: AVCapturePhotoOutput
    // MARK: DispatchQueue
    // MARK: AVCaptureDevice -> 카메라 찾아주는 것.
    
    let captureSession = AVCaptureSession()
    var videoDeviceInput: AVCaptureDeviceInput! // 혼자 객체가아닌 나중에 디바이스 넣어줄 것이라 var로 설정. 카메라 토글 시키기 위해서
    let photoOutput = AVCapturePhotoOutput()
    
    let sessionQueue = DispatchQueue(label: "sesstion Queue")
    let videoDeviceDiscoverySession = AVCaptureDevice.DiscoverySession(deviceTypes: [.builtInDualCamera, .builtInWideAngleCamera, .builtInTrueDepthCamera], mediaType: .video, position: .unspecified) // 앞에꺼인지, 뒤에꺼인지 아직 안정해서

    @IBOutlet weak var photoLibraryButton: UIButton!
    @IBOutlet weak var previewView: PreviewView!
    @IBOutlet weak var captureButton: UIButton!
    @IBOutlet weak var blurBGView: UIVisualEffectView!
    @IBOutlet weak var switchButton: UIButton!
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // TODO: 초기 설정 2
        previewView.session = captureSession // 이렇게 연결 시키기
        sessionQueue.async {
            self.setupSession()
            self.startSession()
        }
        setupUI()
    }
    
    func setupUI() {
        photoLibraryButton.layer.cornerRadius = 10
        photoLibraryButton.layer.masksToBounds = true // 짤린건 마스킹 하겠다.
        photoLibraryButton.layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        photoLibraryButton.layer.borderWidth = 1
        
        captureButton.layer.cornerRadius = captureButton.bounds.height / 2
        captureButton.layer.masksToBounds = true
        
        blurBGView.layer.cornerRadius = captureButton.bounds.height / 2
        blurBGView.layer.masksToBounds = true
        
    }
    
    
    @IBAction func switchCamera(sender: Any) {
        // TODO: 카메라는 1개 이상이어야함
        
        
        // TODO: 반대 카메라 찾아서 재설정
        
    }
    
    func updateSwitchCameraIcon(position: AVCaptureDevice.Position) {
        // TODO: Update ICON
        
        
    }
    
    @IBAction func capturePhoto(_ sender: UIButton) {
        // TODO: photoOutput의 capturePhoto 메소드


    }
    
    
    func savePhotoLibrary(image: UIImage) {
        // TODO: capture한 이미지 포토라이브러리에 저장
    }
}


extension CameraViewController {
    // MARK: - Setup session and preview
    func setupSession() {
        // TODO: captureSession 구성하기
        // - presetSetting 하기
        // - beginConfiguration
        // - Add Video Input
        // - Add Photo Output
        // - commitConfiguration
        

        
        
    }
    
    
    
    func startSession() {
        // TODO: session Start

    }
    
    func stopSession() {
        // TODO: session Stop
        
    }
}

extension CameraViewController: AVCapturePhotoCaptureDelegate {
    func photoOutput(_ output: AVCapturePhotoOutput, didFinishProcessingPhoto photo: AVCapturePhoto, error: Error?) {
        // TODO: capturePhoto delegate method 구현
        
        
    }
}
