module Main exposing (..)

import Html exposing (Html, program, div, text)
import Html.Attributes exposing (class)


main : Program Never Model Msg
main =
    program
        { init = initModel ! []
        , update = update
        , view = view
        , subscriptions = subscriptions
        }



-- MODEL


type alias Model =
    String


initModel : Model
initModel =
    "Hello world"



-- UPDATE


type Msg
    = NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            model ! []



-- VIEW


view : Model -> Html Msg
view model =
    div [ class "App" ] [ text model ]



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none
