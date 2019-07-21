module Lib
    ( stringToHashBytes
    ) where

import Crypto.Hash
import Data.ByteString.Char8 (pack)
import Data.ByteString (unpack)
import Data.ByteArray (convert)
import Data.Word (Word8)

stringToHashBytes :: String -> [Word8]
stringToHashBytes = unpack . convert . hashWith SHA512 . pack
