TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt
CONFIG(debug, release|debug):DEFINES += _DEBUG

TARGET = 

QMAKE_EXTRA_TARGETS += copyfiles
POST_TARGETDEPS += copyfiles

#using debugging flag during debug build
#QMAKE_CXXFLAGS += -g
QMAKE_CXXFLAGS += -std=c++11

LIBS += -L/usr/lib

#building against wt built in web server
LIBS += -lwthttp

#building against wt fast-cgi option for standard web servers like Apache
#LIBS += -lwtfcgi

LIBS += -lwt -lboost_regex -lboost_signals -lboost_random -lboost_program_options
LIBS += -lboost_system -lboost_thread -lboost_filesystem -lboost_date_time
LIBS += -lwtdbo

#building using the wt::dbo::sqlite3 database connector
#LIBS += -lwtdbosqlite3

#building using the wt::dbo::mysql database connector
#LIBS += -lwtdbomysql

#building using the wt::dbo::firebird database connector
#LIBS += -lwtdbofirebird

#building using the wt::dbo::postgres database connector
#LIBS += -lwtdbopostgres

SOURCES +=

HEADERS +=
