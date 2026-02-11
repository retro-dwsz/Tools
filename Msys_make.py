import sys, os

try:
    v = sys.argv[1]
except Exception:
    print("Invalid version")
    exit(1)

packages = [
    f"msys2_shell.cmd -defterm -here -no-start -msys -c \"cd {v} && makepkg -Cf >null 2>&1\"",
    f"msys2_shell.cmd -defterm -here -no-start -ucrt64 -c \"cd {v} && makepkg -Cf >null 2>&1\"",
    f"msys2_shell.cmd -defterm -here -no-start -mingw32 -c \"cd {v} && makepkg -Cf >null 2>&1\"",
    f"msys2_shell.cmd -defterm -here -no-start -mingw64 -c \"cd {v} && makepkg -Cf >null 2>&1\"",
    f"msys2_shell.cmd -defterm -here -no-start -clang64 -c \"cd {v} && makepkg -Cf >null 2>&1\"",
    f"msys2_shell.cmd -defterm -here -no-start -clangarm64 -c \"cd {v} && makepkg -Cf >null 2>&1\""
]

syss = [
    "Msys",
    "UCRT64",
    "MinGW32",
    "MinGW64",
    "Clang64",
    "Clang64Arm",
]

def main():
    try:
        for n, i in enumerate(packages, start=1):
            print(n, f"Making for {syss[n-1]}")
            os.system(i)

    except KeyboardInterrupt as e:
        print(f"Operation canceled: {e}")

if __name__ == "__main__":
    main()
