import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)

main = 
    Html.begginerProgram{ model = 0, view = view, update = update}

type Msg = Increment | Decrement

update msg model =
    case msg of 
        Increment ->
            model + 1
        
        Decrement ->
            model - 1

view model =
    div []
    [ button [ onClick Decrement] [ text "-" ]
    , div [] [text (toString model)]
    , dutton [ onClick Increment] [ text "+"]
    ]