cmake_minimum_required(VERSION 3.16)

project(simplespreadsheets VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick QuickControls2)

qt_standard_project_setup(REQUIRES 6.5)

qt_add_executable(appsimplespreadsheets
    main.cpp
)

# Install QML module resources (necessary for loadFromModule)
# install(DIRECTORY components DESTINATION ${CMAKE_INSTALL_PREFIX})

qt_add_qml_module(appsimplespreadsheets
    URI simplespreadsheets
    VERSION 0.1
    QML_FILES
        "Main.qml"
        "components/Spreadsheet.qml"
        "components/Cell.qml"
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appsimplespreadsheets PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appsimplespreadsheets
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appsimplespreadsheets
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appsimplespreadsheets
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)

qt_generate_deploy_qml_app_script(
    TARGET appsimplespreadsheets
    OUTPUT_SCRIPT deploy_script
    MACOS_BUNDLE_POST_BUILD
    NO_UNSUPPORTED_PLATFORM_ERROR
    DEPLOY_USER_QML_MODULES_ON_UNSUPPORTED_PLATFORM
)
install(SCRIPT ${deploy_script})