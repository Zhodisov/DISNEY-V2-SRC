import re
from typing import List

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
PUBLIC_METHOD = re.compile(r"method <q>\[public\](::|)(.*?) <q>\[public\]::(.*?)=\(")
PUBLIC_SLOT = re.compile(r"slot \d: var <q>\[public\]::(.*?):<q>\[public\]::(.*?)$")
PUSH_NUM = re.compile(r"push(byte|short|int) (-?\d+)$")
PUSH_STRING = re.compile(r"findproperty <q>\[(private|public)\](NULL|)(.*?)\n(.*?)pushstring \"(.*?)\"")
PUSH_STRING_2 = re.compile(r"pushstring \"(.*?)\"")
SET_PROPERTY = re.compile(r"setproperty <q>\[public\]::(.*?)$")
WRITE = re.compile(r"write(Byte|Short|Int|UTF), (\d+) params")
GET_PROPERTY_2 = re.compile(r"getproperty <q>\[public\]::(.*)$")
GET_LEX_2 = re.compile(r"getlex <q>\[public\]::(.*)$")
SET_PROPERTY_2 = re.compile(r"setproperty <q>\[public\]::(.*)$")
PUBLIC_METHOD_2 = re.compile(r"method <q>\[public\]::Boolean <q>\[public\]::(.*?)=\(")
CONSTRUCT_PROP_1 = re.compile(r"constructprop <q>\[public\]::(.*?), 1 params$")
VAR = re.compile(r"var <q>\[public\]::(.*?):<q>\[public\]::")
GET_PROPERTY_3 = re.compile(r"getproperty <q>\[public\]::((?:\\\d+)+)")
FINAL_METHOD_3 = re.compile(r"final\s+method\s+<q>\[public\]::int\s+<q>\[public\]::(.*?)=\(\)\(0\s+params,\s+0\s+optional\)")
async def find_one(patt, s):
    return patt.search(s)

def find_all(patt, s):
    r = re.compile(patt)
    result = r.findall(s)
    if len(result) > 0:
        return result
    return None
def get_context(self, dumpscript: List[str], line: int, context_size: int = 10):
    start = max(line - context_size, 0)
    end = min(line + context_size + 1, len(dumpscript))
    return dumpscript[start:end]
