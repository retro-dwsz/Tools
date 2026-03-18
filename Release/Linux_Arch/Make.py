import sys, os, pathlib

Path = f"{pathlib.Path.cwd()}" + "/Release/Linux_Arch"

Path = Path.replace("\\", "/")

# try:
#     Path = sys.argv[1]
# except Exception:
#     print("Invalid version")
#     exit(1)

syss = [
    "Arch"
]

print("This dir: ", Path)

packages = [
    f"msys2_shell.cmd -defterm -here -no-start -msys -c \"cd {Path} && makepkg -Cf >null 2>&1\""
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
