import re
from typing import Dict, List
import asyncio

CALL_PROPERTY = re.compile(r"callproperty <q>\[public\]::(.*?), (\d+) params$")
FINAL_METHOD_REGEX = re.compile(
    r"final\s+method\s+<q>\[public\]::int\s+<q>\[public\]::(.*?)=\(\)\(0\s+params,\s+0\s+optional\)"
)

async def find_one(patt, s):
    return patt.search(s)

class ParseBase:
    def __init__(self):
        self.results = {}

    async def fetch(self, dumpscript: List[str]) -> Dict:
        return 0

    def __repr__(self):
        if self.results:
            return f"Found: {self.results}"
        else:
            return "Pattern not found"

class Parse(ParseBase):
    async def fetch(self, dumpscript: List[str]) -> Dict:
        value = None

        for line, content in enumerate(dumpscript):
            if "getlocal_0" in content:
                if "pushscope" in dumpscript[line + 1]:
                    if "getlocal_0" in dumpscript[line + 2]:
                        if "getlocal_1" in dumpscript[line + 9]:
                            if "getlocal_2" in dumpscript[line + 12]:
                                property_line = dumpscript[line + 19]
                                match = await find_one(CALL_PROPERTY, property_line)
                                
                                if match:
                                    value = match.group(1).strip()
                                    print(f"Extracted Value: '{value}'")
                                    
                                    fixed_string = f"final  method <q>[public]::int <q>[public]::{value}=()(0 params, 0 optional)"
                                    print(f"Expected String: '{fixed_string}'")
                                    
                                    if fixed_string in '\n'.join(dumpscript):
                                        self.results["cheese_verify"] = value
                                    else:
                                        self.results["cheese_verify"] = "Value_does_not_match"
                                    break

        if not value:
            self.results["cheese_verify"] = "Not_found"

        return self.results

async def main():
    with open('output.txt', 'r', encoding='utf-8') as file:
        dumpscript = file.readlines()

    parser1 = Parse()

    results1 = await parser1.fetch(dumpscript)

    print(results1)

if __name__ == "__main__":
    asyncio.run(main())
