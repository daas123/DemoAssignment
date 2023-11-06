//
//  ConstantData.swift
//  DemoAssignment
//
//  Created by Neosoft on 06/11/23.
//

import Foundation

struct Category {
    var Category : String
    var Data : [CategoryDetails]
}
struct CategoryDetails{
    var title : String
    var image : String
}
var riverCategoryDetails = [
                               CategoryDetails(title: "River1", image: "River1"),
                               CategoryDetails(title: "River2", image: "River2"),
                               CategoryDetails(title: "River3", image: "River3"),
                               CategoryDetails(title: "River4", image: "River2"),
                               CategoryDetails(title: "River5", image: "River3")
                           ]

var lakeCategoryDetails = [
                                CategoryDetails(title: "lake1", image: "lake1"),
                                CategoryDetails(title: "lake2", image: "lake2"),
                                CategoryDetails(title: "lake3", image: "lake3")
                          ]

var mountainsCategoryDetails = [
                                    CategoryDetails(title: "mountain1", image: "mountain1"),
                                    CategoryDetails(title: "mountain2", image: "mountain2"),
                                    CategoryDetails(title: "mountain3", image: "mountain3")
                               ]


var categoryData = [Category(Category: "River", Data: riverCategoryDetails),
                    Category(Category: "Lake", Data: lakeCategoryDetails),
                    Category(Category: "Mountains", Data: mountainsCategoryDetails)
]


struct listDetails {
    var name : String
    var isfav : Bool
    var des : String
}

var ListData = [
    listDetails(name: "River1", isfav: true, des: "hi this is river1" ),
    listDetails(name: "River2", isfav: false, des: "hi this is river2"),
    listDetails(name: "River3", isfav: true, des: "hi this is river3" ),
    
    listDetails(name: "mountain1", isfav: true, des: "hi this is Mountain1" ),
    listDetails(name: "mountain2", isfav: false, des: "hi this is Mountain2"),
    listDetails(name: "mountain3", isfav: true, des: "hi this is Mountain3" )
]

