module Zip.Types

import Java
import Java.Array
import Java.IO

-- Start java.util.zip.CheckSum

data {-# CLASS "java.util.zip.CheckSum" #-}
  CheckSum = CheckSum (Object# CheckSum)
  deriving Class

foreign import java unsafe "@interface" getValue :: (b <: CheckSum) => Java b Int64

foreign import java unsafe "@interface" reset :: (b <: CheckSum) => Java b ()

foreign import java unsafe "@interface"
  update :: (b <: CheckSum) => JByteArray -> Int -> Int -> Java b ()

foreign import java unsafe "@interface update"
  update2 :: (b <: CheckSum) => Int -> Java b ()

-- End java.util.zip.CheckSum

-- Start java.util.zip.Adler32

data {-# CLASS "java.util.zip.Adler32" #-}
  Adler32 = Adler32 (Object# Adler32)
  deriving Class

type instance Inherits Adler32 = '[CheckSum]

foreign import java unsafe "update"
  updateAdler32 :: JByteArray -> Java Adler32 ()

-- End java.util.zip.Adler32

-- Start java.util.zip.CheckedInputStream

data {-# CLASS "java.util.zip.CheckedInputStream" #-}
  CheckedInputStream = CheckedInputStream (Object# CheckedInputStream)
  deriving Class

type instance Inherits CheckedInputStream = '[FilterInputStream, Closeable]

foreign import java unsafe getChecksum :: Java CheckedInputStream CheckSum

-- End java.util.zip.CheckedInputStream

-- Start java.util.zip.CheckedOutputStream

data {-# CLASS "java.util.zip.CheckedOutputStream" #-}
  CheckedOutputStream = CheckedOutputStream (Object# CheckedOutputStream)
  deriving Class

type instance Inherits CheckedOutputStream = '[FilterOutpuStream, Closeable, Flushable]

foreign import java unsafe getChecksum :: Java CheckedOutputStream CheckSum

-- End java.util.zip.CheckedOutputStream

-- Start java.util.zip.CRC32

data {-# CLASS "java.util.zip.CRC32" #-}
  CRC32 = CRC32 (Object# CRC32)
  deriving Class

type instance Inherits CRC32 = '[CheckSum]

foreign import java unsafe "update"
  updateCRC32 :: JByteArray -> Java CRC32 ()

-- End java.util.zip.CRC32
