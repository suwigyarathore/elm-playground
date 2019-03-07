module Main exposing (main)

import Html exposing (..)
import Html.Attributes exposing (..)


numbers : List Int
numbers =
    [ 1, 2, 3, 4, 5 ]


printThing : thing -> Html msg
printThing thing =
    ul [] [ text <| Debug.toString thing ]


fruits : List { name : String }
fruits =
    [ { name = "Orange" }, { name = "Banana" } ]


main =
    ul [] (List.map printThing numbers)
