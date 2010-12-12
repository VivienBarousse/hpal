{- main = interact (unwords . palindromes . words) -}
main = interact (nl . unwords . palindromes . words) 

palindromes :: [String] -> [String]
palindromes xs = filter palindrome xs

palindrome :: String -> Bool
palindrome "" = True
palindrome (_:[]) = True
palindrome str = head(str) == last(str) && palindrome(tail(init(str)))

nl :: String -> String
nl str = str ++ "\n"
