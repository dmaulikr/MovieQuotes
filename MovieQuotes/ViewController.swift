//
//  ViewController.swift
//  MovieQuotes
//
//  Created by Samuel Dias Fernandes de Oliveira on 01/08/16.
//  Copyright © 2016 samueldfo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgQuote: UIImageView!
    @IBOutlet weak var lblRanking: UILabel!
    @IBOutlet weak var lblQuote: UILabel!
    @IBOutlet weak var lblMovie: UILabel!
    
    @IBAction func btnPrevious(sender: AnyObject) {
        previousQuote()
    }
    
    @IBAction func btnNext(sender: AnyObject) {
        nextQuote()
    }
    
    var quotes: [Quote]! // vetor de quotes
    var currentQuote: Int! // Int que indica qual a questão atual
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let quote1 = Quote(quote: "\"Frankly, my dear, I don't give a damn.\"", movieFilename: "01.Gone With the Wind, 1939")
        let quote2 = Quote(quote: "\"Here's looking at you, kid.\"", movieFilename: "02.Casablanca, 1942")
        let quote3 = Quote(quote: "\"You're gonna need a bigger boat.\"", movieFilename: "03.Jaws, 1975")
        let quote4 = Quote(quote: "\"May the Force be with you.\"", movieFilename: "04.Star Wars, 1977")
        let quote5 = Quote(quote: "\"Toto, I've a feeling we're not in Kansas anymore.\"", movieFilename: "05.The Wizard of Oz, 1939")
        let quote6 = Quote(quote: "\"I'm going to make him an offer he can't refuse.\"", movieFilename: "06.The Godfather, 1972")
        let quote7 = Quote(quote: "\"Of all the gin joints in all the towns in all the world, she walks into mine.\"", movieFilename: "07.Casablanca, 1942")
        let quote8 = Quote(quote: "\"You talkin' to me?\"", movieFilename: "08.Taxi Driver, 1976")
        let quote9 = Quote(quote: "\"There's no place like home.\"", movieFilename: "09.The Wizard of Oz, 1939")
        let quote10 = Quote(quote: "\"The first rule of Fight Club is: You do not talk about Fight Club.\"", movieFilename: "10.Fight Club, 1999")
        let quote11 = Quote(quote: "\"I am your father.\"", movieFilename: "11.Star Wars Episode V, 1980")
        let quote12 = Quote(quote: "\"Hello. My name is Inigo Montoya. You killed my father. Prepare to die.\"", movieFilename: "12.The Princess Bride, 1987")
        let quote13 = Quote(quote: "\"Why so serious?\"", movieFilename: "13.The Dark Knight, 2008")
        let quote14 = Quote(quote: "\"I'll have what she's having.\"", movieFilename: "14.When Harry Met Sally, 1989")
        let quote15 = Quote(quote: "\"This is the beginning of a beautiful friendship.\"", movieFilename: "15.Casablanca, 1942")
        let quote16 = Quote(quote: "\"We'll always have Paris.\"", movieFilename: "16.Casablanca, 1942")
        let quote17 = Quote(quote: "\"Bond. James Bond.\"", movieFilename: "17.Dr. No, 1962")
        let quote18 = Quote(quote: "\"I see dead people.\"", movieFilename: "18.The Sixth Sense, 1999")
        let quote19 = Quote(quote: "\"I'll be back.\"", movieFilename: "19.The Terminator, 1984")
        let quote20 = Quote(quote: "\"You can't handle the truth!\"", movieFilename: "20.A Few Good Men, 1992")
        let quote21 = Quote(quote: "\"E.T. phone home.\"", movieFilename: "21.E.T. the Extra-Terrestrial, 1982")
        let quote22 = Quote(quote: "\"Yippie-ki-yay, motherf—er!\"", movieFilename: "22.Die Hard, 1988")
        let quote23 = Quote(quote: "\"To infinity and beyond!\"", movieFilename: "23.Toy Story, 1995")
        let quote24 = Quote(quote: "\"Houston, we have a problem.\"", movieFilename: "24.Apollo 13, 1995")
        let quote25 = Quote(quote: "\"You had me at hello.\"", movieFilename: "25.Jerry Maguire, 1996")
        let quote26 = Quote(quote: "\"There's no crying in baseball!\"", movieFilename: "26.A League of Their Own, 1992")
        let quote27 = Quote(quote: "\"Here's Johnny!\"", movieFilename: "27.The Shining, 1980")
        let quote28 = Quote(quote: "\"I am serious. And don't call me Shirley.\"", movieFilename: "28.Airplane, 1980")
        let quote29 = Quote(quote: "\"Mrs. Robinson, you're trying to seduce me, aren't you?\"", movieFilename: "29.The Graduate, 1967")
        let quote30 = Quote(quote: "\"Carpe diem. Seize the day, boys.\"", movieFilename: "30.Dead Poets Society, 1989")
        let quote31 = Quote(quote: "\"Leave the gun. Take the cannoli.\"", movieFilename: "31.The Godfather, 1972")
        let quote32 = Quote(quote: "\"Show me the money!\"", movieFilename: "32.Jerry Maguire, 1996")
        let quote33 = Quote(quote: "\"Say hello to my little friend!\"", movieFilename: "33.Scarface, 1983")
        let quote34 = Quote(quote: "\"You've got to ask yourself one question: 'Do I feel lucky?\' Well, do ya punk?\"", movieFilename: "34.Dirty Harry, 1971")
        let quote35 = Quote(quote: "\"I love the smell of napalm in the morning.\"", movieFilename: "35.Apocalypse Now, 1979")
        let quote36 = Quote(quote: "\"Fasten your seatbelts. It's going to be a bumpy night.\"", movieFilename: "36.All About Eve, 1950")
        let quote37 = Quote(quote: "\"Roads? Where we're going we don't need roads.\"", movieFilename: "37.Back to the Future, 1985")
        let quote38 = Quote(quote: "\"You don't understand! I could've had class. I could've been a contender. I could've been somebody, instead of a bum, which is what I am.\"", movieFilename: "38.On the Waterfront, 1954")
        let quote39 = Quote(quote: "\"I'm as mad as hell, and I'm not going to take this anymore!\"", movieFilename: "39.Network, 1976")
        let quote40 = Quote(quote: "\"The greatest trick the devil ever pulled was convincing the world he didn't exist.\"", movieFilename: "40.The Usual Suspects, 1995")
        let quote41 = Quote(quote: "\"Keep your friends close, but your enemies closer.\"", movieFilename: "41.The Godfather, Part II, 1974")
        let quote42 = Quote(quote: "\"Every time a bell rings, an angel gets his wings.\"", movieFilename: "42.It's a Wonderful Life, 1946")
        let quote43 = Quote(quote: "\"I am big! It's the pictures that got small.\"", movieFilename: "43.Sunset Boulevard, 1950")
        let quote44 = Quote(quote: "\"What we've got here is a failure to communicate.\"", movieFilename: "44.Cool Hand Luke, 1967")
        let quote45 = Quote(quote: "\"Shaken, not stirred.\"", movieFilename: "45.Goldfinger, 1964")
        let quote46 = Quote(quote: "\"I'm the king of the world!\"", movieFilename: "46.Titanic, 1997")
        let quote47 = Quote(quote: "\"Mama says, 'Stupid is as stupid does.' \"", movieFilename: "47.Forrest Gump, 1994")
        let quote48 = Quote(quote: "\"Just keep swimming.\"", movieFilename: "48.Finding Nemo, 2003")
        let quote49 = Quote(quote: "\"If you build it, he will come.\"", movieFilename: "49.Field of Dreams, 1989")
        let quote50 = Quote(quote: "\"I'm not bad. I'm just drawn that way.\"", movieFilename: "50.Who Framed Roger Rabbit, 1988")
        
        quotes = [quote1,quote2,quote3,quote4,quote5,quote6,quote7,quote8,quote9,quote10,quote11,quote12,quote13,quote14,quote15,quote16,quote17,quote18,quote19,quote20,quote21,quote22,quote23,quote24,quote25,quote26,quote27,quote28,quote29,quote30,quote31,quote32,quote33,quote34,quote35,quote36,quote37,quote38,quote39,quote40,quote41,quote42,quote43,quote44,quote45,quote46,quote47,quote48,quote49,quote50]
        
        currentQuote = 0
        
        showQuote(currentQuote)
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.swiped(_:)))
        swipeRight.direction = .Right
        self.view.addGestureRecognizer(swipeRight)
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.swiped(_:)))
        swipeLeft.direction = .Left
        self.view.addGestureRecognizer(swipeLeft)
        
        
    }
    
    func swiped(gesture: UIGestureRecognizer)
    {
        if let swipeGesture = gesture as? UISwipeGestureRecognizer
        {
            switch swipeGesture.direction
            {
                
            case UISwipeGestureRecognizerDirection.Right:
                previousQuote()
                
            case UISwipeGestureRecognizerDirection.Left:
                nextQuote()
                
            default:
                break
            }
        }
    }
    
    
    func showQuote(currentQuote: Int){
        
        //atualiza o lb da quote, imagem e o lbl do ranking e nome do filme
        lblRanking.text = quotes[currentQuote].strRank
        imgQuote.image = quotes[currentQuote].imgQuote
        lblQuote.text = quotes[currentQuote].strQuote
        lblMovie.text = quotes[currentQuote].strMovie

    }
    
    
    func previousQuote(){
        
        print(currentQuote)
        
            currentQuote = currentQuote - 1 // incrementa em -1 o valor da variável de questão atual
            
            if(currentQuote < 0){
                //se a quote atual é menor que 0 mostra a ultima quote novamente
                currentQuote = quotes.count-1
                showQuote(currentQuote)
            }else{
                showQuote(currentQuote)
        }
    }

    func nextQuote(){
        
        print(currentQuote)
        
        currentQuote = currentQuote + 1 // incrementa em +1 o valor da variável de questão atual
        
        if(currentQuote > quotes.count-1){
            //se a quote atual é maior que o número total de quotes , mostra a primeira novamente
            currentQuote = 0
            showQuote(currentQuote)
        }else{
            showQuote(currentQuote)
        }
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}

