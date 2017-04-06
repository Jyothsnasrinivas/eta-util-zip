module Zip.Inflater where

import Java
import Java.Array
import Java.IO
import Zip.Zip
import Zip.Deflater

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

type instance Inherits InflaterOutputStream = '[FilterOutputStream, Closeable, Flushable]

foreign import java unsafe finish :: (b <: InflaterOutputStream) => Java b ()

-- End java.util.zip.InflaterOutputStream

-- Start java.util.zip.GZIPInputStream

data {-# CLASS "java.util.zip.GZIPInputStream" #-}
  GZIPInputStream = GZIPInputStream (Object# GZIPInputStream)
  deriving Class

type instance Inherits GZIPInputStream = '[InflaterInputStream, Closeable]

-- End java.util.zip.GZIPInputStream

-- Start java.util.zip.GZIPOutputStream

data {-# CLASS "java.util.zip.GZIPOutputStream" #-}
  GZIPOutputStream = GZIPOutputStream (Object# GZIPOutputStream)
  deriving Class

type instance Inherits GZIPOutputStream = '[InflaterOutputStream, Closeable, Flushable]

-- End java.util.zip.GZIPOutputStream

-- Start java.util.zip.ZipInputStream

data {-# CLASS "java.util.zip.ZipInputStream" #-}
  ZipInputStream = ZipInputStream (Object# ZipInputStream)
  deriving Class

type instance Inherits ZipInputStream = '[InflaterInputStream, Closeable]

foreign import java unsafe closeEntry :: (b <: ZipInputStream) => Java b ()

foreign import java unsafe
  createZipEntry :: (b <: ZipInputStream) => String -> Java b ZipEntry

foreign import java unsafe getNextEntry :: (b <: ZipInputStream) => Java b ZipEntry

-- End java.util.zip.ZipInputStream

-- Start java.util.zip.ZipOutputStream

data {-# CLASS "java.util.zip.ZipOutputStream" #-}
  ZipOutputStream = ZipOutputStream (Object# ZipOutputStream)
  deriving Class

type instance Inherits ZipOutputStream = '[DeflaterOutputStream, Closeable, Flushable]

foreign import java unsafe "closeEntry" closeEntryDOS :: (b <: ZipOutputStream) => Java b ()

foreign import java unsafe "finish" finishDOS :: (b <: ZipOutputStream) => Java b ()

foreign import java unsafe putNextEntry :: (b <: ZipOutputStream) => ZipEntry -> Java b ()

foreign import java unsafe setComment :: (b <: ZipOutputStream) => String -> Java b ()

foreign import java unsafe setLevel :: (b <: ZipOutputStream) => Int -> Java b ()

foreign import java unsafe setMethod :: (b <: ZipOutputStream) => Int -> Java b ()

-- End java.util.zip.GZIPOutputStream
