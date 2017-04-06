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

type instance Inherits DeflaterInputStream = '[FilterInputStream]

-- End java.util.zip.DeflaterInputStream

-- Start java.util.zip.DeflaterOutputStream

data {-# CLASS "java.util.zip.DeflaterOutputStream" #-}
  DeflaterOutputStream = DeflaterOutputStream (Object# DeflaterOutputStream)
  deriving Class

type instance Inherits DeflaterOutputStream = '[FilterOutpuStream, Closeable, Flushable]

foreign import java unsafe "deflate" deflateDOS :: Java DeflaterOutputStream ()

-- End java.util.zip.DeflaterOutputStream
