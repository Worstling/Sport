//
//  ViewController.swift
//  Sport
//
//  Created by User on 18.10.2022.
//

import UIKit

class MainViewController: UIViewController {

    private let userPhotoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = #colorLiteral(red: 0.8044032454, green: 0.8044223189, blue: 0.8044120669, alpha: 1)
        imageView.layer.borderColor = UIColor.white.cgColor
        imageView.layer.borderWidth = 5
        imageView.layer.cornerRadius = 50 //скругляет углы
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let userNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Your Name"
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.5
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var addWorkoutButton: UIButton = {    //1.создали объект
        let button = UIButton(type: .system)
        button.backgroundColor = #colorLiteral(red: 0.9963216186, green: 0.8627745509, blue: 0.4291383028, alpha: 1)
        button.layer.cornerRadius = 10
        button.setTitle("Add workout", for: .normal)
        button.setImage(UIImage(named: "plus"), for: .normal)
        button.tintColor = #colorLiteral(red: 0.1807115376, green: 0.3627874255, blue: 0.332313329, alpha: 1)
        button.imageEdgeInsets = .init(top: 0,
                                       left: 20,
                                       bottom: 15,
                                       right: 0)
        button.titleEdgeInsets = .init(top: 50,
                                       left: -40,
                                       bottom: 0,
                                       right: 0)
        button.addTarget(self, action: #selector(addWorkoutButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let calendarView =  CalendarView()
    private let weatherView = WeatherView()
    
    override func viewDidLoad() { //отрабатывает при загрузке экрана
        super.viewDidLoad()
        
        setupViews()
        setConstrains()
    }
    
    private func setupViews(){        //2.добавили объект
        view.backgroundColor = #colorLiteral(red: 0.9532949328, green: 0.94272995, blue: 0.9085446, alpha: 1)
        
        view.addSubview(calendarView)
        view.addSubview(userPhotoImageView)
        view.addSubview(userNameLabel)
        view.addSubview(addWorkoutButton)
        view.addSubview(weatherView)
    }
    
    @objc private func addWorkoutButtonTapped() {
        print("addWorkoutButtonTapped")
    }
}

extension MainViewController {   //3.разместили
   
    private func setConstrains(){
        NSLayoutConstraint.activate([
            userPhotoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
            userPhotoImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            userPhotoImageView.heightAnchor.constraint(equalToConstant: 100),
            userPhotoImageView.widthAnchor.constraint(equalToConstant: 100),
            
            calendarView.topAnchor.constraint(equalTo: userPhotoImageView.centerYAnchor), //топ
            calendarView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10), //левая
            calendarView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10), //правая
            calendarView.heightAnchor.constraint(equalToConstant: 70),  //высота
            
            userNameLabel.bottomAnchor.constraint(equalTo: calendarView.topAnchor, constant: -10), //бот
            userNameLabel.leadingAnchor.constraint(equalTo: userPhotoImageView.trailingAnchor, constant: 5),
            userNameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            
            addWorkoutButton.topAnchor.constraint(equalTo: calendarView.bottomAnchor, constant: 5),
            addWorkoutButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            addWorkoutButton.widthAnchor.constraint(equalToConstant: 80), //ширина
            addWorkoutButton.heightAnchor.constraint(equalToConstant: 80),
            
            weatherView.topAnchor.constraint(equalTo: calendarView.bottomAnchor, constant: 5),
            weatherView.leadingAnchor.constraint(equalTo: addWorkoutButton.trailingAnchor, constant: 10),
            weatherView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            weatherView.heightAnchor.constraint(equalToConstant: 80)
        ])
    }
}
