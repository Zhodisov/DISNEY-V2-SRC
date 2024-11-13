import re
from colorama import init, Fore, Style

init(autoreset=True)

def lf(x):
    try:
        with open(x, "r", encoding="utf-8") as file:
            return file.readlines()
    except Exception as e:
        print(f"{e}")
        return None

def ______xc(fdg):
    return r"\\" + r"\\".join(fdg)

def fs(be):
    hxxt = ''.join(f"\\x0{c}" for c in be)
    hxxt = hxxt.replace("\\x08", "\\b")
    aad = f'§{hxxt}§'
    return aad

def format_numbers(be):
    return '\\'.join(be)

def _v(za, ____bf):
    n = False
    g = Fore.CYAN + "=" * 80 + Style.RESET_ALL
    for i, line in enumerate(za):
        if re.search(____bf, line):
            print(g)
            if i > 0:
                print(Fore.YELLOW + f"Line {i}: Previous Line:" + Style.RESET_ALL)
                print(Fore.LIGHTYELLOW_EX + f"  {za[i-1].strip()}" + Style.RESET_ALL)
            print(Fore.GREEN + f"Line {i}: Matching Line:" + Style.RESET_ALL)
            print(Fore.LIGHTGREEN_EX + f"  {line.strip()}" + Style.RESET_ALL)
            if i < len(za) - 1:
                print(Fore.YELLOW + f"Line {i+2}: Next Line:" + Style.RESET_ALL)
                print(Fore.LIGHTYELLOW_EX + f"  {za[i+1].strip()}" + Style.RESET_ALL)
            print(g)
            n = True
    return n

def main():
    x = "./Parser-History/Parser-26-07-2024-10-47/Disneyclient/output.txt"
    za = lf(x)

    if not za:
        return

    while True:
        fdg = input("Entre numéro > ")
        fffgd = ______xc(fdg)
        fgggf = fs(fdg)
        formatted_numbers = format_numbers(fdg)
        
        n = _v(za, fffgd)

        if not n:
            print(Fore.RED + f"{fdg} non trouvé" + Style.RESET_ALL)
        else:
            print(Fore.RED + "\nNon Formated : " + Style.RESET_ALL)
            print(Fore.LIGHTRED_EX + f"  {fdg}\n" + Style.RESET_ALL)
            print(Fore.BLUE + "\nFormated : " + Style.RESET_ALL)
            print(Fore.LIGHTBLUE_EX + f"  {fgggf}\n" + Style.RESET_ALL)
            print(Fore.GREEN + "\nDump : " + Style.RESET_ALL)
            print(Fore.LIGHTGREEN_EX + f"  {formatted_numbers}\n" + Style.RESET_ALL)

if __name__ == "__main__":
    main()
