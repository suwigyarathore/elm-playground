module Main exposing (main, renderShips, shipsRecord)

import Html exposing (..)
import Html.Attributes exposing (..)


shipsRecord =
    [ { name = "X-wing", cost = 149999 }
    , { name = "Millenium Falcon", cost = 12345566 }
    , { name = "Death Star", cost = 10000000000 }
    ]


renderShip ship =
    li []
        [ text ship.name
        , text ","
        , b []
            [ text <| String.fromInt ship.cost ]
        ]


renderShips ships =
    div
        [ style "font-family" "-apple-system"
        , style "padding" "1em"
        ]
        [ h1 [] [ text "Ships" ]
        , ul [] (List.map renderShip ships)
        ]


main =
    renderShips shipsRecord
