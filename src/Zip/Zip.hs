module Zip.Zip where

import Java
import Java.Array
import Java.Collections
import Java.Exception
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

-- End java.util.zip.ZipEntry

-- Start java.util.zip.ZipFile

data {-# CLASS "java.util.zip.ZipFile" #-}
  ZipFile = ZipFile (Object# ZipFile)
  deriving Class

foreign import java unsafe entries :: (b <: ZipFile, a <: ZipEntry) => Java b (Enumeration a)

foreign import java unsafe finalize :: (b <: ZipFile) => Java b ()

foreign import java unsafe "getComment" getCommentZF :: (b <: ZipFile) => Java b String

foreign import java unsafe getEntry :: (b <: ZipFile) => String -> Java b ZipEntry

foreign import java unsafe getInputStream :: (b <: ZipFile) => ZipEntry -> Java b InputStream

foreign import java unsafe "getName" getNameZF :: (b <: ZipFile) => Java b String

foreign import java unsafe size :: (b <: ZipFile) => Java b Int

-- End java.util.zip.ZipFile

-- Start java.util.zip.ZipError

data {-# CLASS "java.util.zip.ZipError" #-}
  ZipError = ZipError (Object# ZipError)
  deriving Class

type instance Inherits ZipError = '[InternalError]

-- End java.util.zip.ZipError
