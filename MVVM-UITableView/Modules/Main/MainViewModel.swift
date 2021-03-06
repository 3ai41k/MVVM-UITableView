//
//  MainViewModel.swift
//  MVVM-UITableView
//
//  Created by Nikita Lizogubov on 02.12.2020.
//

import Foundation

class MainViewModel: AdaptedSectionViewModelType {
    
    // MARK: - Public properties
    
    var sections: [AdaptedSectionViewModelProtocol]
    
    // MARK: - Init
    
    init() {
        self.sections = []
        
        self.setupMainSection()
    }
    
    // MARK: - Private methods
    
    private func setupMainSection() {
        let section = AdaptedSectionViewModel(cells: [
            TextCellViewModel(text: "Hello!"),
            TextCellViewModel(text: "It's UITableView with using MVVM"),
            ImageCellViewModel(imageName: "habr"),
            ButtonCellViewModel(buttonTitle: "Comments") {
                print(#function)
            },
        ])
        sections.append(section)
    }
    
}
