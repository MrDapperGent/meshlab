HEADERS        = interfaces.h \
		 GLLogStream.h \
                 mainwindow.h \
                 meshmodel.h \
                 glarea.h \
                 plugindialog.h \
                 customDialog.h \
                 saveSnapshotDialog.h \
                 ../meshlabplugins/meshio/savemaskdialog.h\
                 ../meshlabplugins/meshio/maskobj.h\
                 ../../../sf/wrap/gui/trackball.h\
                 ../../../sf/wrap/gui/trackmode.h\
                 ../../../sf/wrap/gl/trimesh.h
SOURCES        = main.cpp \
                 mainwindow_Init.cpp \
                 mainwindow_RunTime.cpp\
                 meshmodel.cpp \
		 GLLogStream.cpp \
                 glarea.cpp \
                 plugindialog.cpp \
                 customDialog.cpp \
                 saveSnapshotDialog.cpp \
                 ../meshlabplugins/meshio/savemaskdialog.cpp\
                 ../meshlabplugins/meshio/maskobj.cpp\
                 ../../../sf/wrap/ply/plylib.cpp\
                 ../../../sf/wrap/gui/trackball.cpp\
                 ../../../sf/wrap/gui/trackmode.cpp

FORMS          = ui/custom.ui\
ui/savesnapshot.ui\						 ui/aboutForm.ui


RESOURCES     = meshlab.qrc

QT           += opengl

# the following line is needed to avoid mismatch between 
# the awful min/max macros of windows and the limits max
win32:DEFINES += NOMINMAX

INCLUDEPATH += . ../../../sf ../../../code/lib/glew/include
CONFIG += stl
win32:LIBS	+= ../../../code/lib/glew/lib/glew32.lib 
unix{
	LIBS		+= -lGLEW
	QMAKE_CC	 = gcc-3.3
	QMAKE_CXX	 = g++-3.3
	QMAKE_LINK	 = gcc-3.3
	CONFIG		+= warn_off debug_and_release
}
