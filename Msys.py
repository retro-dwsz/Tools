import sys, os

try:
    v = sys.argv[1]
except Exception:
    print("Invalid version")
    exit(1)

packages = [
    f"./Msys/mingw-w64-clang-aarch64-tools-cpp-{v}-1-any.pkg.tar.zst",
    f"./Msys/mingw-w64-clang-x86_64-tools-cpp-{v}-1-any.pkg.tar.zst",
    f"./Msys/mingw-w64-i686-tools-cpp-{v}-1-any.pkg.tar.zst",
    f"./Msys/mingw-w64-ucrt-x86_64-tools-cpp-{v}-1-any.pkg.tar.zst",
    f"./Msys/mingw-w64-x86_64-tools-cpp-{v}-1-any.pkg.tar.zst",
    f"./Msys/msys-tools-cpp-{v}-1-any.pkg.tar.zst"
]

packs = " ".join(packages)
print(packs)
cmd = f"tar -zcf ./Msys/Release/Release-{v}-tools-cpp.tar.gz {packs}"

print(cmd)
os.system(cmd)