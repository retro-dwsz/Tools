import sys, os

try:
    Path = sys.argv[1]
except Exception:
    print("Invalid version")
    exit(1)

packages = [
    f"./Msys/mingw-w64-clang-aarch64-tools-cpp-{Path}-1-any.pkg.tar.zst",
    f"./Msys/mingw-w64-clang-x86_64-tools-cpp-{Path}-1-any.pkg.tar.zst",
    f"./Msys/mingw-w64-i686-tools-cpp-{Path}-1-any.pkg.tar.zst",
    f"./Msys/mingw-w64-ucrt-x86_64-tools-cpp-{Path}-1-any.pkg.tar.zst",
    f"./Msys/mingw-w64-x86_64-tools-cpp-{Path}-1-any.pkg.tar.zst",
    f"./Msys/msys-tools-cpp-{Path}-1-any.pkg.tar.zst"
]

for n, i in enumerate(packages, start=1):
    print(f"package{n}: {i}")

packs = " ".join(packages)
cmd = f"tar -zcf ./Msys/Release/Release-{Path}-tools-cpp.tar.gz {packs}"

print(f"tar -zcf ./Msys/Release/Release-{Path}-tools-cpp.tar.gz {{packs}}")
os.system(cmd)