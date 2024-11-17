FIND_PATH(GMP_INCLUDE_DIR gmp.h $ENV{HOME}/.local/include)

FIND_LIBRARY(GMP_LIBRARY NAMES gmp PATH $ENV{HOME}/.local/include)

IF (GMP_INCLUDE_DIR AND GMP_LIBRARY)
   SET(GMP_FOUND TRUE)
ENDIF (GMP_INCLUDE_DIR AND GMP_LIBRARY)

IF (GMP_FOUND)
   IF (NOT GMP_FIND_QUIETLY)
      MESSAGE(STATUS "Found GMP: ${GMP_LIBRARY}")
   ENDIF (NOT GMP_FIND_QUIETLY)
ELSE (GMP_FOUND)
   IF (GMP_FIND_REQUIRED)
      MESSAGE(FATAL_ERROR "Could not find GMP")
   ENDIF (GMP_FIND_REQUIRED)
ENDIF (GMP_FOUND)
