'''
Run with `py ./Release/Msys/Msys_pack.py <RELEASE>`
'''

import sys, os

try:
    Release = sys.argv[1]
except Exception:
    print("Invalid version")
    exit(1)

packages = [
    f"Release/Msys/msys-tools-cpp-{Release}-1-any.pkg.tar.zst",
    f"Release/Msys/mingw-w64-clang-aarch64-tools-cpp-{Release}-1-any.pkg.tar.zst",
    f"Release/Msys/mingw-w64-clang-x86_64-tools-cpp-{Release}-1-any.pkg.tar.zst",
    f"Release/Msys/mingw-w64-i686-tools-cpp-{Release}-1-any.pkg.tar.zst",
    f"Release/Msys/mingw-w64-ucrt-x86_64-tools-cpp-{Release}-1-any.pkg.tar.zst",
    f"Release/Msys/mingw-w64-x86_64-tools-cpp-{Release}-1-any.pkg.tar.zst"
]

for n, i in enumerate(packages, start=1):
    print(f"Package {n}: {i}")

packs = " ".join(packages)
cmd = f"tar -zcf Release/Msys/Release/Release-{Release}-tools-cpp.tar.gz {packs}"

print(f"All Pack : Release/Msys/Release/Release-{Release}-tools-cpp.tar.gz")
print(f"\nRunning command: {cmd}\n")
os.system(cmd)
