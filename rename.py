import os
import sys
import re

argumentList = sys.argv
print(argumentList)
print(os.name)
print(os.getcwd())

def renamer(a):
    for file in os.listdir(argumentList[1]):
        x = re.search(rf"(^\d\..*\.{a}$)", file)
        if (x):
            path = os.path.join(argumentList[1], file)
            nfile = "0" + file
            path2 = os.path.join(argumentList[1], nfile)
            os.rename(path, path2)
            print(f'{file} is renamed to {nfile}')


def main():
    a = input("Enter the extension :")
    renamer(a)

    


if __name__ == "__main__":
    main()
