module Zip.Inflater where

import Java
import Java.Array
import Java.IO

-- Start java.util.zip.Inflater

data {-# CLASS "java.util.zip.Inflater" #-}
  Inflater = Inflater (Object# Inflater)
  deriving Class

foreign import java unsafe end :: Java Inflater ()

foreign import java unsafe finalize :: Java Inflater ()

foreign import java unsafe finished :: Java Inflater Bool

foreign import java unsafe getAdler :: Java Inflater Int

foreign import java unsafe getBytesRead :: Java Inflater Int64

foreign import java unsafe getBytesWritten :: Java Inflater Int64

foreign import java unsafe getRemaining :: Java Inflater Int

foreign import java unsafe getTotalIn :: Java Inflater Int

foreign import java unsafe getTotalOut :: Java Inflater Int

foreign import java unsafe inflate :: JByteArray -> Java Inflater Int

foreign import java unsafe "inflate"
  inflate2 :: JByteArray -> Int -> Int -> Java Inflater Int

foreign import java unsafe needsDictionary :: Java Inflater Bool

foreign import java unsafe needsInput :: Java Inflater Bool

foreign import java unsafe setDictionary :: JByteArray -> Java Inflater ()

foreign import java unsafe "setDictionary"
  setDictionary2 :: JByteArray -> Int -> Int -> Java Inflater ()

foreign import java unsafe setInput :: JByteArray -> Java Inflater ()

foreign import java unsafe "setInput"
  setInput2 :: JByteArray -> Int -> Int -> Java Inflater ()

-- End java.util.zip.Inflater

-- Start java.util.zip.InflaterInputStream

data {-# CLASS "java.util.zip.InflaterInputStream" #-}
  InflaterInputStream = InflaterInputStream (Object# InflaterInputStream)
  deriving Class

type instance Inherits InflaterInputStream = '[FilterInputStream, Closeable]

foreign import java unsafe fill :: (b <: InflaterInputStream) => Java b ()

-- End java.util.zip.InflaterInputStream

-- Start java.util.zip.InflaterOutputStream

data {-# CLASS "java.util.zip.InflaterOutputStream" #-}
  InflaterOutputStream = InflaterOutputStream (Object# InflaterOutputStream)
  deriving Class

type instance Inherits InflaterOutputStream = '[FilterOutpuStream, Closeable, Flushable]

foreign import java unsafe finish :: (b <: InflaterOutputStream) => Java b ()

-- End java.util.zip.InflaterInputStream
