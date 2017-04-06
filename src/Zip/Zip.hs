module Zip.Zip where

import Java
import Java.Array
import Java.IO
import Java.Primitive

-- Start java.util.zip.ZipEntry

data {-# CLASS "java.util.zip.ZipEntry" #-}
  ZipEntry = ZipEntry (Object# ZipEntry)
  deriving Class

foreign import java unsafe getComment :: (b <: ZipEntry) => Java b String

foreign import java unsafe getCompressedSize :: (b <: ZipEntry) => Java b Int64

foreign import java unsafe getCrc :: (b <: ZipEntry) => Java b Int64

foreign import java unsafe getExtra :: (b <: ZipEntry) => Java b JByteArray

foreign import java unsafe getMethod :: (b <: ZipEntry) => Java b Int

foreign import java unsafe getName :: (b <: ZipEntry) => Java b String

foreign import java unsafe getSize :: (b <: ZipEntry) => Java b Int

foreign import java unsafe getTime :: (b <: ZipEntry) => Java b Int64

foreign import java unsafe isDirectory :: (b <: ZipEntry) => Java b Bool

foreign import java unsafe setComment :: (b <: ZipEntry) => String -> Java b ()

foreign import java unsafe setCompressedSize :: (b <: ZipEntry) => Int64 -> Java b ()

foreign import java unsafe setCrc :: (b <: ZipEntry) => Int64 -> Java b ()

foreign import java unsafe setExtra :: (b <: ZipEntry) => JByteArray -> Java b ()

foreign import java unsafe setMethod :: (b <: ZipEntry) => Int -> Java b ()

foreign import java unsafe setName :: (b <: ZipEntry) => String -> Java b ()

foreign import java unsafe setSize :: (b <: ZipEntry) => Int -> Java b ()

foreign import java unsafe setTime :: (b <: ZipEntry) => Int64 -> Java b ()

-- Start java.util.zip.ZipEntry
