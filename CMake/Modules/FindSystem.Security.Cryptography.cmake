#
# Copyright (c) .NET Foundation and Contributors
# See LICENSE file in the project root for full license information.
#

# native code directory
set(BASE_PATH_FOR_THIS_MODULE ${BASE_PATH_FOR_CLASS_LIBRARIES_MODULES}/System.Security.Cryptography)


# set include directories
list(APPEND System.Security.Cryptography_INCLUDE_DIRS ${PROJECT_SOURCE_DIR}/src/CLR/Core)
list(APPEND System.Security.Cryptography_INCLUDE_DIRS ${PROJECT_SOURCE_DIR}/src/CLR/Include)
list(APPEND System.Security.Cryptography_INCLUDE_DIRS ${PROJECT_SOURCE_DIR}/src/HAL/Include)
list(APPEND System.Security.Cryptography_INCLUDE_DIRS ${PROJECT_SOURCE_DIR}/src/PAL/Include)
list(APPEND System.Security.Cryptography_INCLUDE_DIRS ${BASE_PATH_FOR_THIS_MODULE})
list(APPEND System.Security.Cryptography_INCLUDE_DIRS ${PROJECT_SOURCE_DIR}/src/System.Security.Cryptography)

# source files
set(System.Security.Cryptography_SRCS

    sys_sec_crypto_native.cpp


    sys_sec_crypto_native_System_Security_Cryptography_SHA256.cpp

)

foreach(SRC_FILE ${System.Security.Cryptography_SRCS})
    set(System.Security.Cryptography_SRC_FILE SRC_FILE-NOTFOUND)
    find_file(System.Security.Cryptography_SRC_FILE ${SRC_FILE}
        PATHS
	        ${BASE_PATH_FOR_THIS_MODULE}
	        ${TARGET_BASE_LOCATION}
            ${PROJECT_SOURCE_DIR}/src/System.Security.Cryptography

	    CMAKE_FIND_ROOT_PATH_BOTH
    )
    # message("${SRC_FILE} >> ${System.Security.Cryptography_SRC_FILE}") # debug helper
    list(APPEND System.Security.Cryptography_SOURCES ${System.Security.Cryptography_SRC_FILE})
endforeach()

include(FindPackageHandleStandardArgs)

FIND_PACKAGE_HANDLE_STANDARD_ARGS(System.Security.Cryptography DEFAULT_MSG System.Security.Cryptography_INCLUDE_DIRS System.Security.Cryptography_SOURCES)
