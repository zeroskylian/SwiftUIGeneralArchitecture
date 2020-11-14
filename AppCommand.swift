//
//  AppCommand.swift
//  SwiftUITest
//
//  Created by Xinbo Lian on 2020/11/14.
//

import Foundation

protocol AppCommand {
    func execute(in store: Store)
}


