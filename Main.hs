{-# LANGUAGE ForeignFunctionInterface #-}

module Main where

import Foreign
import Foreign.C.Types

foreign import ccall "fun.h add"
    c_add :: CInt -> CInt -> CInt

add :: Int -> Int -> Int
add x y = fromIntegral $ c_add (fromIntegral x) (fromIntegral y)

main :: IO ()
main = do
    putStrLn $ show (add 1 2)