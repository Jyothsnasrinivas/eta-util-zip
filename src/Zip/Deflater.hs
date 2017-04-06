module Zip.Deflater where

import Java
import Java.Array
import Java.IO

-- Start java.util.zip.Deflater

data {-# CLASS "java.util.zip.Deflater" #-}
  Deflater = Deflater (Object# Deflater)
  deriving Class

foreign import java unsafe deflate :: JByteArray -> Java Deflater Int

foreign import java unsafe "deflate"
  deflate2 :: JByteArray -> Int -> Int -> Java Deflater Int

foreign import java unsafe "deflate"
  deflate3 :: JByteArray -> Int -> Int -> Int -> Java Deflater Int

foreign import java unsafe end :: Java Deflater ()

foreign import java unsafe finalize :: Java Deflater ()

foreign import java unsafe finish :: Java Deflater ()

foreign import java unsafe finished :: Java Deflater Bool

foreign import java unsafe getAdler :: Java Deflater Int

foreign import java unsafe getBytesRead :: Java Deflater Int64

foreign import java unsafe getBytesWritten :: Java Deflater Int64

foreign import java unsafe getTotalIn :: Java Deflater Int

foreign import java unsafe getTotalOut :: Java Deflater Int

foreign import java unsafe needsInput :: Java Deflater Bool

foreign import java unsafe "reset" resetDeflater :: Java Deflater ()

foreign import java unsafe setDictionary :: JByteArray -> Java Deflater ()

foreign import java unsafe "setDictionary"
  setDictionary2 :: JByteArray -> Int -> Int -> Java Deflater ()

foreign import java unsafe setInput :: JByteArray -> Java Deflater ()

foreign import java unsafe "setInput"
  setInput2 :: JByteArray -> Int -> Int -> Java Deflater ()

foreign import java unsafe setLevel :: Int -> Java Deflater ()

foreign import java unsafe setStrategy :: Int -> Java Deflater ()

-- End java.util.zip.Deflater

-- Start java.util.zip.DeflaterInputStream

data {-# CLASS "java.util.zip.DeflaterInputStream" #-}
  DeflaterInputStream = DeflaterInputStream (Object# DeflaterInputStream)
  deriving Class

type instance Inherits DeflaterInputStream = '[FilterInputStream, Closeable ]

-- End java.util.zip.DeflaterInputStream

-- Start java.util.zip.DeflaterOutputStream

data {-# CLASS "java.util.zip.DeflaterOutputStream" #-}
  DeflaterOutputStream = DeflaterOutputStream (Object# DeflaterOutputStream)
  deriving Class

type instance Inherits DeflaterOutputStream = '[FilterOutputStream, Closeable, Flushable]

foreign import java unsafe "deflate" deflateDOS :: Java DeflaterOutputStream ()

-- End java.util.zip.DeflaterOutputStream
