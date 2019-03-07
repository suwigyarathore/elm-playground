module Main exposing (..)

import Html exposing (text)

type alias Dog = {
                   name: String,
                   age: Int    
                 }

dogRecord = { 
        name = "Spock",
        age = 3
      }

renderDog : Dog -> String
renderDog dog = dog.name ++ ", " ++ String.fromInt dog.age    

--main = text <| String.fromInt <| .age dogRecord
main = text <| renderDog dogRecord