//
//  QuotesModel.swift
//  MovieQuotes
//
//  Created by Samuel Dias Fernandes de Oliveira on 01/08/16.
//  Copyright © 2016 samueldfo. All rights reserved.
//

import Foundation
import UIKit

class Quote{
    
    var strQuote: String! // String para armazenar texto da quote
    var strMovie: String! // String para armazenar o nome do filme
    var imgQuote: UIImage! // UIImage para armazenar a imagem ilustrativa da quote
    var strRank: String! // String para armazenar o ranking do quote
    var range: Range<String.Index> //Range para extrair o ranking do nome do arquivo
    
    
    //função que inicia o objeto da classe Quote
    init(quote: String, movieFilename: String){
        self.strQuote = quote
        self.imgQuote = UIImage(named: movieFilename)
        self.strRank = String(movieFilename.characters.prefix(2))
        self.range = Range(movieFilename.startIndex.advancedBy(3)..<movieFilename.endIndex)
        self.strMovie = movieFilename[range]
        
        
    }
    
}
