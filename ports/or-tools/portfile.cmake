vcpkg_from_github(
        OUT_SOURCE_PATH SOURCE_PATH
        REPO "google/or-tools"
        REF "5a3253cb0f50f561b8507e3f1f6577b7829dc7c1" #stable 2.11
        SHA512 3a2f7d207260846741d496d18f7d015d90ff3c7be565690c641e9b6c4fa98493847b87b340678275b90f71dd099fd89982709e8f8c1ba83d9222f97c0cd62adb
        HEAD_REF master
)

vcpkg_cmake_configure(
        SOURCE_PATH "${SOURCE_PATH}"
        OPTIONS
        -DBUILD_SHARED_LIBS=OFF
        -DUSE_SCIP=ON
        -DUSE_GLPK=ON
        -DUSE_GLOP=OFF
        -DUSE_BOP=OFF
        -DUSE_GUROBI=OFF
        -DUSE_CPLEX=OFF
        -DBUILD_DEPS=OFF
        -DBUILD_SAMPLES=OFF
        -DBUILD_FLATZINC=OFF
        -DBUILD_EXAMPLES=OFF
        -DBUILD_DEPS=OFF
        -DBUILD_ZLIB=OFF
        -DUSE_HIGHS=OFF
        -DBUILD_MATH_OPT=OFF
        -DBUILD_TESTING=OFF
)

vcpkg_cmake_install()

file(INSTALL "${SOURCE_PATH}/LICENSE" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}" RENAME copyright)
