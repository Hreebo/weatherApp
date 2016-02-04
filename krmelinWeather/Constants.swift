
//
//  Constats.swift
//  krmelinWeather
//
//  Created by Lukas Hrebik on 04.02.16.
//  Copyright © 2016 Lukas Hrebik. All rights reserved.
// http://api.openweathermap.org/data/2.5/weather?id=3072661&units=metric&APPID=d87c359cb4b1b8802b9e81004d740943

import Foundation

let URL_BASE = "http://api.openweathermap.org/data/2.5/weather?"
let URL_CITY = "id=3072661&units=metric"
let URL_KEY = "&APPID=d87c359cb4b1b8802b9e81004d740943"

typealias DownloadComplete = () -> ()
