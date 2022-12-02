# Install script for directory: /Users/evakato/CLionProjects/cs334_beginner/deps/libtiff-master/tools

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
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/bmp2tiff")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/usr/local/bin" TYPE EXECUTABLE FILES "/Users/evakato/CLionProjects/cs334_beginner/cmake-build-debug/deps/libtiff-master/tools/bmp2tiff")
  if(EXISTS "$ENV{DESTDIR}/usr/local/bin/bmp2tiff" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/bin/bmp2tiff")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/evakato/CLionProjects/cs334_beginner/cmake-build-debug/deps/libtiff-master/libtiff"
      "$ENV{DESTDIR}/usr/local/bin/bmp2tiff")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -u -r "$ENV{DESTDIR}/usr/local/bin/bmp2tiff")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/fax2ps")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/usr/local/bin" TYPE EXECUTABLE FILES "/Users/evakato/CLionProjects/cs334_beginner/cmake-build-debug/deps/libtiff-master/tools/fax2ps")
  if(EXISTS "$ENV{DESTDIR}/usr/local/bin/fax2ps" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/bin/fax2ps")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/evakato/CLionProjects/cs334_beginner/cmake-build-debug/deps/libtiff-master/libtiff"
      "$ENV{DESTDIR}/usr/local/bin/fax2ps")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -u -r "$ENV{DESTDIR}/usr/local/bin/fax2ps")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/fax2tiff")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/usr/local/bin" TYPE EXECUTABLE FILES "/Users/evakato/CLionProjects/cs334_beginner/cmake-build-debug/deps/libtiff-master/tools/fax2tiff")
  if(EXISTS "$ENV{DESTDIR}/usr/local/bin/fax2tiff" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/bin/fax2tiff")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/evakato/CLionProjects/cs334_beginner/cmake-build-debug/deps/libtiff-master/libtiff"
      "$ENV{DESTDIR}/usr/local/bin/fax2tiff")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -u -r "$ENV{DESTDIR}/usr/local/bin/fax2tiff")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/gif2tiff")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/usr/local/bin" TYPE EXECUTABLE FILES "/Users/evakato/CLionProjects/cs334_beginner/cmake-build-debug/deps/libtiff-master/tools/gif2tiff")
  if(EXISTS "$ENV{DESTDIR}/usr/local/bin/gif2tiff" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/bin/gif2tiff")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/evakato/CLionProjects/cs334_beginner/cmake-build-debug/deps/libtiff-master/libtiff"
      "$ENV{DESTDIR}/usr/local/bin/gif2tiff")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -u -r "$ENV{DESTDIR}/usr/local/bin/gif2tiff")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/pal2rgb")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/usr/local/bin" TYPE EXECUTABLE FILES "/Users/evakato/CLionProjects/cs334_beginner/cmake-build-debug/deps/libtiff-master/tools/pal2rgb")
  if(EXISTS "$ENV{DESTDIR}/usr/local/bin/pal2rgb" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/bin/pal2rgb")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/evakato/CLionProjects/cs334_beginner/cmake-build-debug/deps/libtiff-master/libtiff"
      "$ENV{DESTDIR}/usr/local/bin/pal2rgb")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -u -r "$ENV{DESTDIR}/usr/local/bin/pal2rgb")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/ppm2tiff")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/usr/local/bin" TYPE EXECUTABLE FILES "/Users/evakato/CLionProjects/cs334_beginner/cmake-build-debug/deps/libtiff-master/tools/ppm2tiff")
  if(EXISTS "$ENV{DESTDIR}/usr/local/bin/ppm2tiff" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/bin/ppm2tiff")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/evakato/CLionProjects/cs334_beginner/cmake-build-debug/deps/libtiff-master/libtiff"
      "$ENV{DESTDIR}/usr/local/bin/ppm2tiff")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -u -r "$ENV{DESTDIR}/usr/local/bin/ppm2tiff")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/ras2tiff")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/usr/local/bin" TYPE EXECUTABLE FILES "/Users/evakato/CLionProjects/cs334_beginner/cmake-build-debug/deps/libtiff-master/tools/ras2tiff")
  if(EXISTS "$ENV{DESTDIR}/usr/local/bin/ras2tiff" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/bin/ras2tiff")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/evakato/CLionProjects/cs334_beginner/cmake-build-debug/deps/libtiff-master/libtiff"
      "$ENV{DESTDIR}/usr/local/bin/ras2tiff")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -u -r "$ENV{DESTDIR}/usr/local/bin/ras2tiff")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/raw2tiff")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/usr/local/bin" TYPE EXECUTABLE FILES "/Users/evakato/CLionProjects/cs334_beginner/cmake-build-debug/deps/libtiff-master/tools/raw2tiff")
  if(EXISTS "$ENV{DESTDIR}/usr/local/bin/raw2tiff" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/bin/raw2tiff")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/evakato/CLionProjects/cs334_beginner/cmake-build-debug/deps/libtiff-master/libtiff"
      "$ENV{DESTDIR}/usr/local/bin/raw2tiff")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -u -r "$ENV{DESTDIR}/usr/local/bin/raw2tiff")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/rgb2ycbcr")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/usr/local/bin" TYPE EXECUTABLE FILES "/Users/evakato/CLionProjects/cs334_beginner/cmake-build-debug/deps/libtiff-master/tools/rgb2ycbcr")
  if(EXISTS "$ENV{DESTDIR}/usr/local/bin/rgb2ycbcr" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/bin/rgb2ycbcr")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/evakato/CLionProjects/cs334_beginner/cmake-build-debug/deps/libtiff-master/libtiff"
      "$ENV{DESTDIR}/usr/local/bin/rgb2ycbcr")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -u -r "$ENV{DESTDIR}/usr/local/bin/rgb2ycbcr")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/thumbnail")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/usr/local/bin" TYPE EXECUTABLE FILES "/Users/evakato/CLionProjects/cs334_beginner/cmake-build-debug/deps/libtiff-master/tools/thumbnail")
  if(EXISTS "$ENV{DESTDIR}/usr/local/bin/thumbnail" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/bin/thumbnail")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/evakato/CLionProjects/cs334_beginner/cmake-build-debug/deps/libtiff-master/libtiff"
      "$ENV{DESTDIR}/usr/local/bin/thumbnail")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -u -r "$ENV{DESTDIR}/usr/local/bin/thumbnail")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/tiff2bw")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/usr/local/bin" TYPE EXECUTABLE FILES "/Users/evakato/CLionProjects/cs334_beginner/cmake-build-debug/deps/libtiff-master/tools/tiff2bw")
  if(EXISTS "$ENV{DESTDIR}/usr/local/bin/tiff2bw" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/bin/tiff2bw")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/evakato/CLionProjects/cs334_beginner/cmake-build-debug/deps/libtiff-master/libtiff"
      "$ENV{DESTDIR}/usr/local/bin/tiff2bw")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -u -r "$ENV{DESTDIR}/usr/local/bin/tiff2bw")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/tiff2pdf")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/usr/local/bin" TYPE EXECUTABLE FILES "/Users/evakato/CLionProjects/cs334_beginner/cmake-build-debug/deps/libtiff-master/tools/tiff2pdf")
  if(EXISTS "$ENV{DESTDIR}/usr/local/bin/tiff2pdf" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/bin/tiff2pdf")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/evakato/CLionProjects/cs334_beginner/cmake-build-debug/deps/libtiff-master/libtiff"
      "$ENV{DESTDIR}/usr/local/bin/tiff2pdf")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -u -r "$ENV{DESTDIR}/usr/local/bin/tiff2pdf")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/tiff2ps")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/usr/local/bin" TYPE EXECUTABLE FILES "/Users/evakato/CLionProjects/cs334_beginner/cmake-build-debug/deps/libtiff-master/tools/tiff2ps")
  if(EXISTS "$ENV{DESTDIR}/usr/local/bin/tiff2ps" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/bin/tiff2ps")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/evakato/CLionProjects/cs334_beginner/cmake-build-debug/deps/libtiff-master/libtiff"
      "$ENV{DESTDIR}/usr/local/bin/tiff2ps")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -u -r "$ENV{DESTDIR}/usr/local/bin/tiff2ps")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/tiff2rgba")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/usr/local/bin" TYPE EXECUTABLE FILES "/Users/evakato/CLionProjects/cs334_beginner/cmake-build-debug/deps/libtiff-master/tools/tiff2rgba")
  if(EXISTS "$ENV{DESTDIR}/usr/local/bin/tiff2rgba" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/bin/tiff2rgba")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/evakato/CLionProjects/cs334_beginner/cmake-build-debug/deps/libtiff-master/libtiff"
      "$ENV{DESTDIR}/usr/local/bin/tiff2rgba")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -u -r "$ENV{DESTDIR}/usr/local/bin/tiff2rgba")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/tiffcmp")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/usr/local/bin" TYPE EXECUTABLE FILES "/Users/evakato/CLionProjects/cs334_beginner/cmake-build-debug/deps/libtiff-master/tools/tiffcmp")
  if(EXISTS "$ENV{DESTDIR}/usr/local/bin/tiffcmp" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/bin/tiffcmp")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/evakato/CLionProjects/cs334_beginner/cmake-build-debug/deps/libtiff-master/libtiff"
      "$ENV{DESTDIR}/usr/local/bin/tiffcmp")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -u -r "$ENV{DESTDIR}/usr/local/bin/tiffcmp")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/tiffcp")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/usr/local/bin" TYPE EXECUTABLE FILES "/Users/evakato/CLionProjects/cs334_beginner/cmake-build-debug/deps/libtiff-master/tools/tiffcp")
  if(EXISTS "$ENV{DESTDIR}/usr/local/bin/tiffcp" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/bin/tiffcp")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/evakato/CLionProjects/cs334_beginner/cmake-build-debug/deps/libtiff-master/libtiff"
      "$ENV{DESTDIR}/usr/local/bin/tiffcp")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -u -r "$ENV{DESTDIR}/usr/local/bin/tiffcp")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/tiffcrop")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/usr/local/bin" TYPE EXECUTABLE FILES "/Users/evakato/CLionProjects/cs334_beginner/cmake-build-debug/deps/libtiff-master/tools/tiffcrop")
  if(EXISTS "$ENV{DESTDIR}/usr/local/bin/tiffcrop" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/bin/tiffcrop")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/evakato/CLionProjects/cs334_beginner/cmake-build-debug/deps/libtiff-master/libtiff"
      "$ENV{DESTDIR}/usr/local/bin/tiffcrop")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -u -r "$ENV{DESTDIR}/usr/local/bin/tiffcrop")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/tiffdither")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/usr/local/bin" TYPE EXECUTABLE FILES "/Users/evakato/CLionProjects/cs334_beginner/cmake-build-debug/deps/libtiff-master/tools/tiffdither")
  if(EXISTS "$ENV{DESTDIR}/usr/local/bin/tiffdither" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/bin/tiffdither")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/evakato/CLionProjects/cs334_beginner/cmake-build-debug/deps/libtiff-master/libtiff"
      "$ENV{DESTDIR}/usr/local/bin/tiffdither")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -u -r "$ENV{DESTDIR}/usr/local/bin/tiffdither")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/tiffdump")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/usr/local/bin" TYPE EXECUTABLE FILES "/Users/evakato/CLionProjects/cs334_beginner/cmake-build-debug/deps/libtiff-master/tools/tiffdump")
  if(EXISTS "$ENV{DESTDIR}/usr/local/bin/tiffdump" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/bin/tiffdump")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/evakato/CLionProjects/cs334_beginner/cmake-build-debug/deps/libtiff-master/libtiff"
      "$ENV{DESTDIR}/usr/local/bin/tiffdump")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -u -r "$ENV{DESTDIR}/usr/local/bin/tiffdump")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/tiffinfo")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/usr/local/bin" TYPE EXECUTABLE FILES "/Users/evakato/CLionProjects/cs334_beginner/cmake-build-debug/deps/libtiff-master/tools/tiffinfo")
  if(EXISTS "$ENV{DESTDIR}/usr/local/bin/tiffinfo" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/bin/tiffinfo")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/evakato/CLionProjects/cs334_beginner/cmake-build-debug/deps/libtiff-master/libtiff"
      "$ENV{DESTDIR}/usr/local/bin/tiffinfo")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -u -r "$ENV{DESTDIR}/usr/local/bin/tiffinfo")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/tiffmedian")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/usr/local/bin" TYPE EXECUTABLE FILES "/Users/evakato/CLionProjects/cs334_beginner/cmake-build-debug/deps/libtiff-master/tools/tiffmedian")
  if(EXISTS "$ENV{DESTDIR}/usr/local/bin/tiffmedian" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/bin/tiffmedian")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/evakato/CLionProjects/cs334_beginner/cmake-build-debug/deps/libtiff-master/libtiff"
      "$ENV{DESTDIR}/usr/local/bin/tiffmedian")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -u -r "$ENV{DESTDIR}/usr/local/bin/tiffmedian")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/tiffset")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/usr/local/bin" TYPE EXECUTABLE FILES "/Users/evakato/CLionProjects/cs334_beginner/cmake-build-debug/deps/libtiff-master/tools/tiffset")
  if(EXISTS "$ENV{DESTDIR}/usr/local/bin/tiffset" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/bin/tiffset")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/evakato/CLionProjects/cs334_beginner/cmake-build-debug/deps/libtiff-master/libtiff"
      "$ENV{DESTDIR}/usr/local/bin/tiffset")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -u -r "$ENV{DESTDIR}/usr/local/bin/tiffset")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/tiffsplit")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/usr/local/bin" TYPE EXECUTABLE FILES "/Users/evakato/CLionProjects/cs334_beginner/cmake-build-debug/deps/libtiff-master/tools/tiffsplit")
  if(EXISTS "$ENV{DESTDIR}/usr/local/bin/tiffsplit" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/bin/tiffsplit")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/evakato/CLionProjects/cs334_beginner/cmake-build-debug/deps/libtiff-master/libtiff"
      "$ENV{DESTDIR}/usr/local/bin/tiffsplit")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -u -r "$ENV{DESTDIR}/usr/local/bin/tiffsplit")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/tiffgt")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/usr/local/bin" TYPE EXECUTABLE FILES "/Users/evakato/CLionProjects/cs334_beginner/cmake-build-debug/deps/libtiff-master/tools/tiffgt")
  if(EXISTS "$ENV{DESTDIR}/usr/local/bin/tiffgt" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/bin/tiffgt")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/evakato/CLionProjects/cs334_beginner/cmake-build-debug/deps/libtiff-master/libtiff"
      "$ENV{DESTDIR}/usr/local/bin/tiffgt")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -u -r "$ENV{DESTDIR}/usr/local/bin/tiffgt")
    endif()
  endif()
endif()

