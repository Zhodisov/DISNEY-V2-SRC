import re
from typing import Dict, List
import asyncio
GET_PROPERTY_2 = re.compile(r"getproperty <q>\[public\]::(.*)$")
SET_PROPERTY_2 = re.compile(r"setproperty <q>\[public\]::(.*)$")
GET_LEX = re.compile(r"getlex <q>\[public\]::(.*)$")
CONSTRUCTOR = re.compile(r"constructor \* <q>\[public\]::(.*)=\(")
INIT_PROPERTY = re.compile(r"initproperty <q>\[public\]::(.*?)$")
CALL_PROPVOID = re.compile(r"callpropvoid .*?::(.*?), (\d+) params$")
CALL_PROPERTY = re.compile(r"callproperty <q>\[public\]::(.*?), (\d+) params$")
CALL_PROPERTY_2 = re.compile(r"callproperty <q>\[(private|public)\](NULL|)::(.*?), 0 params$")
CALL_PROPVOID = re.compile(r"callpropvoid .*?::(.*?), (\d+) params$")
CLASS = re.compile(r"class <q>\[public\]::(.*?) extends")
COERCE = re.compile(r"coerce <q>\[public\]::(.*?)$")
CONSTRUCTOR = re.compile(r"constructor \* <q>\[public\]::(.*?)=\(")
CONSTRUCTOR_2 = re.compile(r"constructor <q>\[public\]::void <q>\[public\]::(.*?)=\(")
CONSTRUCT_PROP = re.compile(r"constructprop <q>\[public\]::(.*?), 0 params$")
EXPORT = re.compile(r"(\s+)exports (\d+) as \"(.*?)_(.*?)\"")
EXTENDS = re.compile(r".*? extends <q>\[public\]::(.*?)\{$")
FINAL_METHOD = re.compile(r"final  method <q>\[public\](::|)(.*?) <q>\[public\]::(.*?)=\(")
FIND_PROPERTY = re.compile(r"findproperty <q>\[public\]::(.*?)$")
FIND_PROPSTRICT = re.compile(r"findpropstrict <q>\[public\]::(.*?)$")
GET_LEX = re.compile(r"getlex <q>\[public\]::(.*?)$")
GET_PROPERTY = re.compile(r"getproperty (.*?)::(.*?)$")
INT_METHOD = re.compile(r"method <q>\[public\]::int.*?::(.*?)=\(")
INIT_PROPERTY = re.compile(r"initproperty <q>\[public\]::(.*?)$")
INT_VALUE = re.compile(r"int = (-?\d+)")
OBJECT = re.compile(r"<q>\[public\]::Object <q>\[private\]NULL::(.*?)=\(\)\(0 params, 0 optional\)")
OPERATOR = re.compile(r"(add|subtract|modulo)")
NEW_FUNCTION = re.compile(r"newfunction \[method (.*?) \]")
PUBLIC_METHOD_2 = re.compile(r"method <q>\[public\]::Boolean <q>\[public\]::(.*?)=\(")
PUBLIC_METHOD_3 = re.compile(r'method <q>\[public\]::Boolean <q>\[public\]::[\\0-9]+=\(<q>\[public\]::([\\0-9]+), <q>\[public\]::Number\)\(2 params, 0 optional\)')
PUBLIC_SLOT = re.compile(r"slot \d: var <q>\[public\]::(.*?):<q>\[public\]::(.*?)$")
PUSH_NUM = re.compile(r"push(byte|short|int) (-?\d+)$")
PUSH_STRING = re.compile(r"findproperty <q>\[(private|public)\](NULL|)(.*?)\n(.*?)pushstring \"(.*?)\"")
PUSH_STRING_2 = re.compile(r"pushstring \"(.*?)\"")
SET_PROPERTY = re.compile(r"setproperty <q>\[public\]::(.*?)$")
WRITE = re.compile(r"write(Byte|Short|Int|UTF), (\d+) params")
async def find_one(patt, s):
    return patt.search(s)

class ParseBase:
    def __init__(self):
        self.results = {}

    async def fetch(self, dumpscript: List[str]) -> Dict:
        raise NotImplementedError("Err Implementation")

    def __repr__(self):
        if self.results:
            return f"{self.results}"
        else:
            return "Pattern not found"

class Parse(ParseBase):
    async def fetch(self, dumpscript: List[str]) -> Dict:

        for line, content in enumerate(dumpscript):
            if "multiply" in content:
                if "getlocal_3" in dumpscript[line + 2]:
                    if 'multiply ' in dumpscript[line + 7]:
                        if "getlocal_3" in dumpscript[line + 9]:
                            if "getlocal_1" in dumpscript[line + 10]:
                                if "getlocal_3" in dumpscript[line + 13]:
                                    if "getlocal_1" in dumpscript[line + 14]:
                                        property_line = dumpscript[line + 15]
                                        if "getproperty" in property_line:
                                            match = await find_one(GET_PROPERTY_2, property_line)
                                            if match:
                                                self.results["current_frame"] = match.group(1) if match else "Not_found"
                                                return self.results  
                if "getlocal_3" in dumpscript[line + 2]:
                    if 'multiply ' in dumpscript[line + 9]:
                        if "getlocal_3" in dumpscript[line + 11]:
                            if "getlocal_1" in dumpscript[line + 12]:
                                if "getlocal_3" in dumpscript[line + 15]:
                                    if "getlocal_1" in dumpscript[line + 16]:
                                        property_line = dumpscript[line + 17]
                                        if "getproperty" in property_line:
                                            match = await find_one(GET_PROPERTY_2, property_line)
                                            if match:
                                                self.results["current_frame"] = match.group(1) if match else "Not_found"
                                                return self.results  

        return self.results
class Parse2(ParseBase):
    async def fetch(self, dumpscript: List[str]) -> Dict:
        for line, content in enumerate(dumpscript):
            if "getlocal_0" in content:
                if "pushscope" in dumpscript[line + 1]:
                    if "getlocal_0" in dumpscript[line + 10]:
                        if "getlocal_0" in dumpscript[line + 19]:
                                                                        property_line = dumpscript[line + 26]
                                                                        match = await find_one(INIT_PROPERTY, property_line)
                                                                        if match:
                                                                            self.results["image_url"] = match.group(1) if match else "Not_found"
                                                                            break
        return self.results

async def main():
    with open('output.txt', 'r', encoding='utf-8') as file:
        dumpscript = file.readlines()
    #with open('dump2.txt', 'r', encoding='utf-8') as file:
    #    dumpscript2 = file.readlines()

    parser1 = Parse()
    parser2 = Parse2()

    results1 = await parser1.fetch(dumpscript)
    #results2 = await parser2.fetch(dumpscript2)

    print(f"dump.txt: {results1}")
    #print(f"dump2.txt: {results2}")

if __name__ == "__main__":
    asyncio.run(main())
