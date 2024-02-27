//
//  ViewController.swift
//  LottiePractice
//
//  Created by 澤木柊斗 on 2024/02/27.
//

import UIKit
import Lottie

class ViewController: UIViewController {

let  screenSize: CGSize = CGSize(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
final class ViewController: UIViewController {
    private let collectionView: UICollectionView = {
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()

        layout.scrollDirection = .vertical
        layout.minimumInteritemSpacing = 0
        layout.minimumLineSpacing = 0
        let collectionView: UICollectionView = UICollectionView(frame: CGRect(x: 0, y: 0, width: screenSize.width, height: screenSize.height), collectionViewLayout: layout)
        collectionView.backgroundColor = .white

        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "Cell")
        return collectionView
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        showAnimetion()

        // Do any additional setup after loading the view.
    }

    private func showAnimetion() {
        let animetionView = LottieAnimationView(name: "animetion")
        animetionView.frame = view.bounds
        animetionView.contentMode = .scaleAspectFit
        view.addSubview(animetionView)
        animetionView.play()
        print("追加できたぞ")
    }
}


