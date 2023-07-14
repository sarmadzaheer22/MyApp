//
//  Questions.swift
//  MyApp
//
//  Created by Sarmad Zaheer on 06/07/2023.
//

import Foundation


class Questions {
    
    let questions: [MultipleChoiceQuestion] = [
        MultipleChoiceQuestion(
            question: "What is the capital of France?",
            options: ["London", "Paris", "Berlin", "Madrid", "Rome"],
            correctAnswer: 1
        ),
        MultipleChoiceQuestion(
            question: "Which planet is known as the 'Red Planet'?",
            options: ["Venus", "Mars", "Jupiter", "Neptune", "Mercury"],
            correctAnswer: 1
        ),
        MultipleChoiceQuestion(
            question: "What is the chemical symbol for the element Oxygen?",
            options: ["H", "O", "C", "Ag", "He"],
            correctAnswer: 1
        ),
        MultipleChoiceQuestion(
            question: "Who painted the Mona Lisa?",
            options: ["Pablo Picasso", "Vincent van Gogh", "Leonardo da Vinci", "Salvador Dalí", "Claude Monet"],
            correctAnswer: 2
        ),
        MultipleChoiceQuestion(
            question: "Which country won the FIFA World Cup in 2018?",
            options: ["Brazil", "Germany", "France", "Spain", "Argentina"],
            correctAnswer: 2
        ),
        MultipleChoiceQuestion(
            question: "What is the tallest mountain in the world?",
            options: ["Mount Kilimanjaro", "Mount Everest", "Mount Fuji", "Mount McKinley", "Mount K2"],
            correctAnswer: 1
        ),
        MultipleChoiceQuestion(
            question: "Who wrote the novel 'To Kill a Mockingbird'?",
            options: ["J.R.R. Tolkien", "George Orwell", "Harper Lee", "F. Scott Fitzgerald", "Jane Austen"],
            correctAnswer: 2
        ),
        MultipleChoiceQuestion(
            question: "What is the largest ocean in the world?",
            options: ["Pacific Ocean", "Indian Ocean", "Atlantic Ocean", "Arctic Ocean", "Southern Ocean"],
            correctAnswer: 0
        ),
        MultipleChoiceQuestion(
            question: "Which city hosted the 2016 Summer Olympics?",
            options: ["London", "Rio de Janeiro", "Tokyo", "Beijing", "Sydney"],
            correctAnswer: 1
        ),
        MultipleChoiceQuestion(
            question: "Who is the author of the Harry Potter book series?",
            options: ["Stephen King", "J.K. Rowling", "George R.R. Martin", "Dan Brown", "Suzanne Collins"],
            correctAnswer: 1
        )
    ]
}


struct MultipleChoiceQuestion {
    let question: String
    let options: [String]
    let correctAnswer: Int
}
