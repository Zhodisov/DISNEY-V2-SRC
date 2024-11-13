import os
import re
import json
from typing import Dict, List
import asyncio

Nom = "cheese_verify"
GET_PROPERTY_2 = re.compile(r"getproperty <q>\[public\]::(.*)$")

GET_PROPERTY_3 = re.compile(r"getproperty <q>\[public\]::((?:\\\d+)+)")
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
CONSTRUCT_PROP_1 = re.compile(r"constructprop <q>\[public\]::(.*?), 1 params$")
EXPORT = re.compile(r"(\s+)exports (\d+) as \"(.*?)_(.*?)\"")
EXTENDS = re.compile(r".*? extends <q>\[public\]::(.*?)\{$")
FINAL_METHOD = re.compile(r"final  method <q>\[public\](::|)(.*?) <q>\[public\]::(.*?)=\(")
FINAL_METHOD_2 = re.compile(r"final\s+method\s+<q>\[public\]::(.*?)\s+<q>\[public\]::(.*?)=\(\)\(0\s+params,\s+0\s+optional\)")
FINAL_METHOD_3 = re.compile(r"final\s+method\s+<q>\[public\]::int\s+<q>\[public\]::(.*?)=\(\)\(0\s+params,\s+0\s+optional\)")

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
VAR = re.compile(r"var <q>\[public\]::(.*?):<q>\[public\]::")
async def find_one(patt, s):
	return patt.search(s)

class ParseBase:
	def __init__(self):
		self.results = {}
		self.context = {}

	async def fetch(self, dumpscript: List[str]) -> Dict:
		raise NotImplementedError("Err ")

	def get_context(self, dumpscript: List[str], line: int, context_size: int = 10):
		start = max(line - context_size, 0)
		end = min(line + context_size + 1, len(dumpscript))
		return dumpscript[start:end]

	def __repr__(self):
		if self.results:
			return f"Found: {self.results}, Context: {self.context}"
		else:
			return "Pattern not found"

class Parse(ParseBase):
	async def fetch(self, dumpscript: List[str]) -> Dict:
		parse1_result = None
		parse2_result = None
		parse1_context = None
		parse2_context = None

		for line, content in enumerate(dumpscript):
			if (
				"getlocal_0" in content and
				"pushscope" in dumpscript[line + 1] and
				"getlocal_0" in dumpscript[line + 2] and
				"getlex" in dumpscript[line + 3] and
				"getproperty" in dumpscript[line + 4]
    
    			#"getlocal_0" in dumpscript[line - 6] #and
			):
				if 'getlex' in dumpscript[line + 5] and 'getproperty' in dumpscript[line + 7] and 'callpropvoid' in dumpscript[line + 15] and 'callpropvoid' in dumpscript[line + 18] and 'getlex' in dumpscript[line + 19]:
					property_line = dumpscript[line + 21]
					match = await find_one(CALL_PROPERTY, property_line)
					if match:
						parse1_result = match.group(1) if match else "Not_found"
						self.results[Nom] = parse1_result
						print("Result Parse1:", parse1_result)
						parse1_context = self.get_context(dumpscript, line + 3)
		for line, content in enumerate(dumpscript):
			#if (f'final  method <q>[public]::int <q>[public]::{parse1_result}=()(0 params, 0 optional)'):
				#property_line = content
				#if 'getlex' in dumpscript[line + 8] and 'getproperty' in dumpscript[line + 9] and 'initproperty' in dumpscript[line + 10] and 'getproperty' in dumpscript[line + 12] and 'getlocal_0' in dumpscript[line + 20]:
					#property_line = dumpscript[line + 10]
				#match = await find_one(FINAL_METHOD_2, property_line)
				pattern = f'final  method <q>[public]::int <q>[public]::{parse1_result}=()(0 params, 0 optional)'
				if pattern in content:
					property_line = content
					# Here, instead of assigning a string to match, we should use actual regex
					match = await find_one(FINAL_METHOD_3, property_line)
					if match:
						parse2_result = match.group(1) if match else "Not_found"
						parse2_context = self.get_context(dumpscript, line)
						print("Result Parse2:", parse2_result)
						if parse1_result == parse2_result:
							self.results[Nom] = parse1_result
							self.context[Nom] = parse1_context
							print("Matching result found and updated in results.")
							break

		return self.results
async def v(results, dumpscript):
	for result in results.values():
		if result != "Not_found":
			for line, content in enumerate(dumpscript):
				if f'final  method <q>[public]::int <q>[public]::{result}' in content:
					#if "returnvoid" in dumpscript[line + 1] and "popscope" in dumpscript[line - 1]:
						print(f"Cross verification found for {result}")
						return True
	return False

def cc(base_name, ext):
	counter = 1
	unique_name = f"{base_name}{counter}{ext}"
	result_dir = os.path.join(os.getcwd(), "Resultats-JSON")
	os.makedirs(result_dir, exist_ok=True)
	while os.path.exists(os.path.join(result_dir, unique_name)):
		counter += 1
		unique_name = f"{base_name}{counter}{ext}"
	return os.path.join(result_dir, unique_name)

async def xz(output_file, all_results):
	with open(output_file, 'r', encoding='utf-8') as file:
		dumpscript = file.readlines()

	parser = Parse()

	results = await parser.fetch(dumpscript)
	cross_verification = await v(results, dumpscript)
	print(f"Results for dump.txt: {results}")

	print(f"Cross verification result: {cross_verification}")

	file_results = {
		"fichier": output_file,
		"resultat": results,
		"verification": cross_verification
	}

	all_results.append(file_results)
	print(f"Processed {output_file}")

def vzzf(root_folder):
	output_files = []
	for dirpath, _, filenames in os.walk(root_folder):
		for filename in filenames:
			if filename == 'output.txt':
				output_files.append(os.path.join(dirpath, filename))
	return output_files

async def main():
	root_folder = './Parser-History/'
	output_files = vzzf(root_folder)
	all_results = []

	tasks = [xz(output_file, all_results) for output_file in output_files]
	await asyncio.gather(*tasks)

	json_filename = cc(Nom, '.json')
	with open(json_filename, 'w', encoding='utf-8') as json_file:
		json.dump(all_results, json_file, indent=4, ensure_ascii=False)

	print(f"Results {json_filename}")

if __name__ == '__main__':
	asyncio.run(main())
