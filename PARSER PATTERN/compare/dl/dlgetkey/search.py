import re
from colorama import init, Fore, Style

init(autoreset=True)

def a(b):
    try:
        with open(b, "r", encoding="utf-8") as c:
            return c.readlines()
    except Exception as d:
        return None

def e(f):
    return r"\\" + r"\\".join(f)

def g(h):
    i = ''.join(f"\\x0{j}" for j in h)
    i = i.replace("\\x08", "\\b")
    return f'§{i}§'

def k(l):
    return '\\'.join(l)

def m(n, o):
    p = False
    q = Fore.CYAN + "=" * 80 + Style.RESET_ALL
    for r, s in enumerate(n):
        if re.search(o, s):
            if r > 0:
                pass
            if r < len(n) - 1:
                pass
            p = True
    return p

def main():
    b = "output.txt"
    n = a(b)

    if not n:
        return

    while True:
        f = input("Entre numéro > ")
        u = e(f)
        v = g(f)
        w = k(f)
        
        p = m(n, u)

        if not p:
            pass
        else:
            pass

if __name__ == "__main__":
    main()
