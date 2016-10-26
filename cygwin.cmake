add_definitions( "-D_WIN32_WINNT=0x0601" )
add_definitions( -DCURL_STATICLIB )
add_definitions( -D__USE_W32_SOCKETS )
set( CMAKE_CXX_FLAGS "-std=c++14" )