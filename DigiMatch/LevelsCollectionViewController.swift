//
//  LevelsCollectionViewController.swift
//  DigiMatch
//
//  Created by Tim Tan on 11/3/18.
//  Copyright © 2018 Tim Tan. All rights reserved.
//

import UIKit

class LevelsCollectionViewController: UICollectionViewController {
    
    var levels: [String] = []
    
    private let reuseIdentifier = "LevelCell"
    private let contentSpacing: CGFloat = 12.0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.collectionView!.delegate = self
        self.levels = ["1", "2", "3", "4", "5", "6"]
    }

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return levels.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! LevelsCollectionViewCell
        cell.layer.cornerRadius = 10.0
        cell.backgroundColor = .orange
        cell.label.text = levels[indexPath.row]
        cell.label.sizeToFit()
        
        return cell
    }
    
//    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        self.performSegue(withIdentifier: "ToLevel", sender: indexPath)
//    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let detailVC = segue.destination as? LevelViewController,
            let cell = sender as? UICollectionViewCell,
            let indexPath = collectionView.indexPath(for: cell) {
                let level = levels[indexPath.row]
                detailVC.level = level
        }
    }
}

extension LevelsCollectionViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let sectionInset = self.collectionView(collectionView, layout: collectionViewLayout, insetForSectionAt: 0)
        let availableBounds = collectionView.bounds.inset(by: sectionInset).inset(by: collectionView.safeAreaInsets)
        
        let cellWidth = (availableBounds.width - self.contentSpacing) / 2.0
        let cellHeight = cellWidth
        
        return CGSize(width: cellWidth, height: cellHeight)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return self.contentSpacing
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return self.contentSpacing
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: contentSpacing, left: contentSpacing, bottom: contentSpacing, right: contentSpacing)
    }
}
