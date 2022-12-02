# Install script for directory: /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/man

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/Library/Developer/CommandLineTools/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/man/man1/fax2ps.1;/usr/local/share/man/man1/fax2tiff.1;/usr/local/share/man/man1/pal2rgb.1;/usr/local/share/man/man1/ppm2tiff.1;/usr/local/share/man/man1/raw2tiff.1;/usr/local/share/man/man1/tiff2bw.1;/usr/local/share/man/man1/tiff2pdf.1;/usr/local/share/man/man1/tiff2ps.1;/usr/local/share/man/man1/tiff2rgba.1;/usr/local/share/man/man1/tiffcmp.1;/usr/local/share/man/man1/tiffcp.1;/usr/local/share/man/man1/tiffcrop.1;/usr/local/share/man/man1/tiffdither.1;/usr/local/share/man/man1/tiffdump.1;/usr/local/share/man/man1/tiffgt.1;/usr/local/share/man/man1/tiffinfo.1;/usr/local/share/man/man1/tiffmedian.1;/usr/local/share/man/man1/tiffset.1;/usr/local/share/man/man1/tiffsplit.1")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/usr/local/share/man/man1" TYPE FILE FILES
    "/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/man/fax2ps.1"
    "/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/man/fax2tiff.1"
    "/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/man/pal2rgb.1"
    "/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/man/ppm2tiff.1"
    "/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/man/raw2tiff.1"
    "/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/man/tiff2bw.1"
    "/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/man/tiff2pdf.1"
    "/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/man/tiff2ps.1"
    "/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/man/tiff2rgba.1"
    "/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/man/tiffcmp.1"
    "/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/man/tiffcp.1"
    "/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/man/tiffcrop.1"
    "/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/man/tiffdither.1"
    "/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/man/tiffdump.1"
    "/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/man/tiffgt.1"
    "/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/man/tiffinfo.1"
    "/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/man/tiffmedian.1"
    "/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/man/tiffset.1"
    "/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/man/tiffsplit.1"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/man/man3/libtiff.3tiff;/usr/local/share/man/man3/TIFFbuffer.3tiff;/usr/local/share/man/man3/TIFFClose.3tiff;/usr/local/share/man/man3/TIFFcodec.3tiff;/usr/local/share/man/man3/TIFFcolor.3tiff;/usr/local/share/man/man3/TIFFDataWidth.3tiff;/usr/local/share/man/man3/TIFFError.3tiff;/usr/local/share/man/man3/TIFFFieldDataType.3tiff;/usr/local/share/man/man3/TIFFFieldName.3tiff;/usr/local/share/man/man3/TIFFFieldPassCount.3tiff;/usr/local/share/man/man3/TIFFFieldReadCount.3tiff;/usr/local/share/man/man3/TIFFFieldTag.3tiff;/usr/local/share/man/man3/TIFFFieldWriteCount.3tiff;/usr/local/share/man/man3/TIFFFlush.3tiff;/usr/local/share/man/man3/TIFFGetField.3tiff;/usr/local/share/man/man3/TIFFmemory.3tiff;/usr/local/share/man/man3/TIFFOpen.3tiff;/usr/local/share/man/man3/TIFFPrintDirectory.3tiff;/usr/local/share/man/man3/TIFFquery.3tiff;/usr/local/share/man/man3/TIFFReadDirectory.3tiff;/usr/local/share/man/man3/TIFFReadEncodedStrip.3tiff;/usr/local/share/man/man3/TIFFReadEncodedTile.3tiff;/usr/local/share/man/man3/TIFFReadRawStrip.3tiff;/usr/local/share/man/man3/TIFFReadRawTile.3tiff;/usr/local/share/man/man3/TIFFReadRGBAImage.3tiff;/usr/local/share/man/man3/TIFFReadRGBAStrip.3tiff;/usr/local/share/man/man3/TIFFReadRGBATile.3tiff;/usr/local/share/man/man3/TIFFReadScanline.3tiff;/usr/local/share/man/man3/TIFFReadTile.3tiff;/usr/local/share/man/man3/TIFFRGBAImage.3tiff;/usr/local/share/man/man3/TIFFSetDirectory.3tiff;/usr/local/share/man/man3/TIFFSetField.3tiff;/usr/local/share/man/man3/TIFFsize.3tiff;/usr/local/share/man/man3/TIFFstrip.3tiff;/usr/local/share/man/man3/TIFFswab.3tiff;/usr/local/share/man/man3/TIFFtile.3tiff;/usr/local/share/man/man3/TIFFWarning.3tiff;/usr/local/share/man/man3/TIFFWriteDirectory.3tiff;/usr/local/share/man/man3/TIFFWriteEncodedStrip.3tiff;/usr/local/share/man/man3/TIFFWriteEncodedTile.3tiff;/usr/local/share/man/man3/TIFFWriteRawStrip.3tiff;/usr/local/share/man/man3/TIFFWriteRawTile.3tiff;/usr/local/share/man/man3/TIFFWriteScanline.3tiff;/usr/local/share/man/man3/TIFFWriteTile.3tiff")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/usr/local/share/man/man3" TYPE FILE FILES
    "/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/man/libtiff.3tiff"
    "/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/man/TIFFbuffer.3tiff"
    "/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/man/TIFFClose.3tiff"
    "/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/man/TIFFcodec.3tiff"
    "/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/man/TIFFcolor.3tiff"
    "/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/man/TIFFDataWidth.3tiff"
    "/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/man/TIFFError.3tiff"
    "/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/man/TIFFFieldDataType.3tiff"
    "/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/man/TIFFFieldName.3tiff"
    "/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/man/TIFFFieldPassCount.3tiff"
    "/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/man/TIFFFieldReadCount.3tiff"
    "/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/man/TIFFFieldTag.3tiff"
    "/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/man/TIFFFieldWriteCount.3tiff"
    "/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/man/TIFFFlush.3tiff"
    "/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/man/TIFFGetField.3tiff"
    "/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/man/TIFFmemory.3tiff"
    "/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/man/TIFFOpen.3tiff"
    "/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/man/TIFFPrintDirectory.3tiff"
    "/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/man/TIFFquery.3tiff"
    "/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/man/TIFFReadDirectory.3tiff"
    "/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/man/TIFFReadEncodedStrip.3tiff"
    "/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/man/TIFFReadEncodedTile.3tiff"
    "/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/man/TIFFReadRawStrip.3tiff"
    "/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/man/TIFFReadRawTile.3tiff"
    "/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/man/TIFFReadRGBAImage.3tiff"
    "/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/man/TIFFReadRGBAStrip.3tiff"
    "/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/man/TIFFReadRGBATile.3tiff"
    "/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/man/TIFFReadScanline.3tiff"
    "/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/man/TIFFReadTile.3tiff"
    "/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/man/TIFFRGBAImage.3tiff"
    "/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/man/TIFFSetDirectory.3tiff"
    "/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/man/TIFFSetField.3tiff"
    "/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/man/TIFFsize.3tiff"
    "/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/man/TIFFstrip.3tiff"
    "/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/man/TIFFswab.3tiff"
    "/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/man/TIFFtile.3tiff"
    "/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/man/TIFFWarning.3tiff"
    "/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/man/TIFFWriteDirectory.3tiff"
    "/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/man/TIFFWriteEncodedStrip.3tiff"
    "/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/man/TIFFWriteEncodedTile.3tiff"
    "/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/man/TIFFWriteRawStrip.3tiff"
    "/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/man/TIFFWriteRawTile.3tiff"
    "/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/man/TIFFWriteScanline.3tiff"
    "/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/man/TIFFWriteTile.3tiff"
    )
endif()

