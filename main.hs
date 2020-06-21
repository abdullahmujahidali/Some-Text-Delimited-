import Data.Char
import Prelude hiding (map)

map :: (a -> b) -> [a] -> [b]
map _ [] = []
map func (x : abc) = func x : map func abc

-- capitalize the word
capWords :: String -> String
capWords(head:tail) = toUpper head : map toLower tail
capWords [] = []

-- Split the words and call capWords for every word
capitalized :: String -> String
capitalized (sentence) = unwords $ map capWords $ words sentence
capitalized [] = []

-- Main
main = do
print "Enter some text:"
recipient <- getLine
print $ capitalized recipient