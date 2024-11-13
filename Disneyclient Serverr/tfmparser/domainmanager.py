from .regex import CALL_PROPERTY, FINAL_METHOD, GET_LEX, find_one

from typing import Dict, List

class DomainManager(dict):
	async def fetch(self, dumpscript: List) -> Dict:
		for line, content in enumerate(dumpscript):
			if "getlocal_0" in content:
				if "pushscope" in dumpscript[line + 1]:
					if 'getlocal_0' in dumpscript[line + 2]:
						if 'getlocal_0' in dumpscript[line + 4]:
							if 'getlocal_1' in dumpscript[line + 5]:
								if 'getlocal_0' in dumpscript[line + 7]:
									if 'getlocal_2' in dumpscript[line + 8]:

											property_line = dumpscript[line + 10]
											match = await find_one(GET_LEX, property_line)
											if match:
												self["domain_manager_class_name"] = match.group(1) if match else "Not_found"
												break 

		for line, content in enumerate(dumpscript):
			if "add" in content and (callproperty := await find_one(CALL_PROPERTY, dumpscript[line + 1])) is not None:
				if "coerce <q>[public]flash.display::Bitmap" in dumpscript[line + 2] and "jump" in dumpscript[line + 3] and "pushnull" in dumpscript[line + 4]:
					self["load_img"] = callproperty.group(1)
					break

		return self