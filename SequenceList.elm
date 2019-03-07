module Main exposing (Person, findPerson, foo, names, people)

import Html exposing (text)
import List exposing (foldl, map)
import String exposing (join)


foo =
    [ "one", "two", "three" ]


type alias Person =
    { name : String
    , age : Int
    }


people =
    [ { name = "Suwi", age = 21 }
    , { name = "Puja", age = 29 }
    ]


names : List Person -> List String
names peeps =
    map (\peep -> peep.name) peeps


findPerson : String -> List Person -> Maybe Person
findPerson name peeps =
    foldl
        (\peep memo ->
            case memo of
                Just _ ->
                    memo

                Nothing ->
                    if peep.name == name then
                        Just peep

                    else
                        Nothing
        )
        Nothing
        peeps



--main = text <| join " " <| names people


main =
    text <| Debug.toString <| findPerson "Suwi" people
