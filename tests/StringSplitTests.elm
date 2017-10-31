module StringSplitTests exposing (..)

import Expect
import Test exposing (..)
import String.Split exposing (..)


chunksOfLeftTest : Test
chunksOfLeftTest =
    test "chuncksOfLeft splits string into a list of smaller strings of length 3 from the left" <|
        \_ ->
            "abcdefgh"
                |> chunksOfLeft 3
                |> Expect.equal [ "abc", "def", "gh" ]


chunksOfRightTest : Test
chunksOfRightTest =
    test "chuncksOfRight splits string into a list of smaller strings of length 3 from the right" <|
        \_ ->
            "abcdefgh"
                |> chunksOfRight 3
                |> Expect.equal [ "ab", "cde", "fgh" ]
