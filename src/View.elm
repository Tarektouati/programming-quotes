module View exposing (view)

import Html exposing (Html, div, span, text)
import Html.Attributes exposing (class)
import List exposing (head, length)
import Maybe exposing (withDefault)
import Messages exposing (Msg(..))
import String as S exposing (length)
import Types exposing (Model)
import UI.Card exposing (card)
import UI.Loader exposing (loader)


view : Model -> Html Msg
view { tweets, default } =
    let
        tweet =
            tweets |> head |> withDefault default
    in
    div []
        [ span [ class "twitter-username" ]
            [ text "@CodeWisdom" ]
        , if S.length (.text tweet) > 0 then
            div [] [ card (.text tweet) ChangeTweet ]

          else
            div [ class "loader" ] [ loader ]
        ]
