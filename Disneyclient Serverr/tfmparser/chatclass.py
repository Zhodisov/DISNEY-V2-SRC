from .regex import CALL_PROPERTY, CALL_PROPVOID, GET_LEX, GET_PROPERTY, CONSTRUCTOR, GET_PROPERTY_2, INIT_PROPERTY, PUBLIC_METHOD, SET_PROPERTY, SET_PROPERTY_2, find_one

from typing import Dict, List

class Chat(dict):
	async def fetch(self, dumpscript: List) -> Dict:
		for line, content in enumerate(dumpscript):
			if "(<q>[public]::int, <q>[public]::int, <q>[public]::int)(3 params, 0 optional)" in content:
				for x in range(line, line + 15):
					if "applytype 1 params" in dumpscript[x]:
						if (constructor := await find_one(CONSTRUCTOR, content)) is not None:
							self["chat_class_name"] = constructor.group(1)
							
							for y in range(x, x + 100):
								if "initproperty <q>[public]::mouseEnabled" in dumpscript[y]:
									if "getlocal_0" in dumpscript[y + 1] and "getlocal_3" in dumpscript[y + 2]:
										if "initproperty" in dumpscript[y + 3]:
											if "getlocal_0" in dumpscript[y + 4]:
												if "getlex" in dumpscript[y + 5]:
													if (getproperty := await find_one(GET_PROPERTY, dumpscript[y + 6])) is not None:
														self["chat_instance"] = getproperty.group(2)
														break
							break

		if (chat_instance := self.get("chat_instance")) is not None:
			for line, content in enumerate(dumpscript):
				if f"getproperty <q>[public]::{chat_instance}" in content:
					if "setlocal_3" in dumpscript[line - 2]:
						if (getproperty := await find_one(GET_PROPERTY, dumpscript[line + 1])) is not None:
							if "coerce_a" in dumpscript[line + 2]:
								if "setlocal r4" in dumpscript[line + 3]:
									self["player_list"] = getproperty.group(2)

									for x in range(line, line + 30):
										if "toLowerCase" in dumpscript[x]:
											if (_getproperty := await find_one(GET_PROPERTY, dumpscript[x - 1])) is not None:
												self["player_name"] = _getproperty.group(2)
											break
									else:
										continue
									break

			for line, content in enumerate(dumpscript):
				if f"getproperty <q>[public]::{chat_instance}" in content:
					if "returnvalue" in dumpscript[line + 3]:
						if (getproperty := await find_one(GET_PROPERTY, dumpscript[line + 2])) is not None:
							self["player"] = (await find_one(GET_PROPERTY, dumpscript[line + 1])).group(2)
							self["player_physics"] = getproperty.group(2)
							break
			
			for line, content in enumerate(dumpscript):
				if "getlocal_0" in content:
					if "pushscope" in dumpscript[line + 1]:
						if "getlocal_0" in dumpscript[line + 2]:
							if "getlocal_1" in dumpscript[line + 3]:
								if "getlocal_0" in dumpscript[line + 5]:
									if "getlocal_1" in dumpscript[line + 7]:
										if "getlocal_0" in dumpscript[line + 9]:
											if "getlocal_0" in dumpscript[line + 16]:
																	property_line = dumpscript[line +10]
																	match = await find_one(GET_PROPERTY_2, property_line)
																	if match:
																		self["player_moving_right"] = match.group(1) if match else "Not_found"
																		break 
			for line, content in enumerate(dumpscript):
				if "getlocal_0" in content:
					if "pushscope" in dumpscript[line + 1]:
						if 'getlocal_0' in dumpscript[line + 2]:
							if 'getlocal_0' in dumpscript[line + 8]:
								if 'getlocal_0' in dumpscript[line + 12]:
									if 'getlocal_0' in dumpscript[line + 13]:
										if 'getlocal_0' in dumpscript[line + 17]:
														property_line = dumpscript[line + 9]
														match = await find_one(GET_PROPERTY_2, property_line)
														if match:
															self["player_moving_left"] = match.group(1) if match else "Not_found"
															break 
			for line, content in enumerate(dumpscript):
				if (
					"getproperty" in content and
					"getlex" in dumpscript[line + 1] and
					"getlex" in dumpscript[line + 2]
					#"initproperty" in dumpscript[line - 3] and
					#"getlocal_0" in dumpscript[line - 6] #and
				):
					if 'getproperty' in dumpscript[line + 3] and 'getlocal_3' in dumpscript[line + 7] and 'getlocal_3' in dumpscript[line + 14] and 'getlocal_1' in dumpscript[line + 15] and 'getproperty' in dumpscript[line + 16] and 'callpropvoid' in dumpscript[line + 17]:
						property_line = dumpscript[line + 20]
						match = await find_one(GET_PROPERTY_2, property_line)
						if match:
							parse1_result = match.group(1) if match else "Not_found"
							self["current_frame"] = parse1_result
							print("Result Parse1:", parse1_result)
			for line, content in enumerate(dumpscript):
				if (
					"getlocal_3" in content and
					"getlex" in dumpscript[line + 2] and
					"getproperty" in dumpscript[line + 1]
					#"initproperty" in dumpscript[line - 3] and
					#"getlocal_0" in dumpscript[line - 6] #and
				):
					if 'callproperty' in dumpscript[line + 5] and 'getlocal_0' in dumpscript[line + 8] and 'getlocal_0' in dumpscript[line + 9] and 'getlocal_0' in dumpscript[line + 19] and 'getproperty' in dumpscript[line + 17] and 'getlex' in dumpscript[line + 20]:
						property_line = dumpscript[line + 18]

						#property_line = content
						match = await find_one(INIT_PROPERTY, property_line)
						if match:
							parse2_result = match.group(1) if match else "Not_found"
							print("Result Parse2:", parse2_result)
							if parse1_result == parse2_result:
								self["current_frame"] = parse1_result
								print("Matching result found and updated in results.")
								break
			for line, content in enumerate(dumpscript):
				if "getlocal_0" in content:
					if "pushscope" in dumpscript[line + 1]:
						if "pushnull" in dumpscript[line + 2]:
							if "getlocal_0" in dumpscript[line + 9]:
								if "getlocal_0" in dumpscript[line + 32]:
																		property_line = dumpscript[line + 30]
																		match = await find_one(GET_PROPERTY_2, property_line)
																		if match:
																			self["is_jumping"] = match.group(1) if match else "Not_found"
																			break 

			for line, content in enumerate(dumpscript):
				if (
					"getlocal_0" in content and
					"getlocal_0" in dumpscript[line + 2] and
					"getlocal_1" in dumpscript[line + 3] and
					"getlocal_0" in dumpscript[line + 5] and
					"getlocal_0" in dumpscript[line + 9]
		
					#"getlocal_0" in dumpscript[line - 6] #and
				):
					if 'getproperty' in dumpscript[line + 10] and 'getlocal_0' in dumpscript[line + 12] and 'callpropvoid' in dumpscript[line + 14] and 'getproperty' in dumpscript[line + 17] and 'getlocal_0' in dumpscript[line + 19]:
						property_line = dumpscript[line + 14]
						match = await find_one(CALL_PROPVOID, property_line)
						if match:
							parse1_result = match.group(1) if match else "Not_found"
							self["animation_course"] = parse1_result
							print("Result Parse1:", parse1_result)
			for line, content in enumerate(dumpscript):
				if (
					"getlocal_0" in content and
					"getlocal_0" in dumpscript[line + 2] and
					"getlocal_1" in dumpscript[line + 3] and
					"getlocal_0" in dumpscript[line + 5] and
					"getlocal_0" in dumpscript[line + 9]
		
					#"getlocal_0" in dumpscript[line - 6] #and
				):
					if 'getproperty' in dumpscript[line + 10] and 'getlocal_0' in dumpscript[line + 12] and 'callpropvoid' in dumpscript[line + 14] and 'getproperty' in dumpscript[line + 17] and 'getlocal_0' in dumpscript[line + 19]:
						property_line = dumpscript[line + 21]

						#property_line = content
						match = await find_one(CALL_PROPVOID, property_line)
						if match:
							parse2_result = match.group(1) if match else "Not_found"
							print("Result Parse2:", parse2_result)
							if parse1_result == parse2_result:
								self["animation_course"] = parse1_result
								print("Matching result found and updated in results.")
								break
			for line, content in enumerate(dumpscript):
				if "convert_b" in content and "iffalse" in dumpscript[line + 1] and "getlocal r4" in dumpscript[line + 2]:
					if (setproperty := await find_one(SET_PROPERTY, dumpscript[line + 6])) is not None and "returnvoid" in dumpscript[line + 7]:
							self["is_down"] = setproperty.group(1)
							break
							
			for line, content in enumerate(dumpscript):
				if f"getproperty <q>[public]::{chat_instance}" in content:
					if "getproperty <q>[public]::stage" in dumpscript[line + 1] and "getproperty <q>[public]::focus" in dumpscript[line + 2]:
						for x in range(line, line - 10, -1):
							if "not" in dumpscript[x]:
								if ((getproperty := await find_one(GET_PROPERTY, dumpscript[x - 1])), (callpropvoid := await find_one(CALL_PROPVOID, dumpscript[x + 1]))) != (None, None):
									self["chat_is_upper"] = getproperty.group(2)
									self["chat_shift"] = callpropvoid.group(1)
									break
						else:
							continue
						break

		if (player_name := self.get("player_name")) is not None:
			for line, content in enumerate(dumpscript):
				if f"initproperty <q>[public]::{player_name}" in content:
					if "getlocal_0" in dumpscript[line + 1]:
						if "getlocal r4" in dumpscript[line + 2]:
							if (initproperty := await find_one(INIT_PROPERTY, dumpscript[line + 3])):
								self["is_dead"] = initproperty.group(1)
								break
			
			for line, content in enumerate(dumpscript):
				if f"getproperty <q>[public]::{player_name}" in content and "getlocal_0" in dumpscript[line - 1]:
					if "iffalse" in dumpscript[line + 1] and (getlex := await find_one(GET_LEX, dumpscript[line + 2])):
						if f"getproperty <q>[public]::{chat_instance}" in dumpscript[line + 3]:
							self["ui_scoreboard_class_name"] = getlex.group(1)
							break

			if (is_dead := self.get("is_dead")) is not None:
				for line, content in enumerate(dumpscript):
					if f"initproperty <q>[public]::{is_dead}" in content:
						for x in range(line, line - 20, -1):
							if "readBoolean" in dumpscript[x]:
								if (initproperty := await find_one(INIT_PROPERTY, dumpscript[x + 1])):
									self["player_is_shaman"] = initproperty.group(1)
									break

		for line, content in enumerate(dumpscript):
			if "=(<q>[public]::int, <q>[public]::String, <q>[public]::Function = null)(3 params, 1 optional)" in content:
				if (constructor := await find_one(CONSTRUCTOR, content)) is not None:
					self["chat_class_name2"] = constructor.group(1)
					break

		for line, content in enumerate(dumpscript):
			if "getproperty <q>[public]::caretIndex" in content:
				if "getlocal_2" in dumpscript[line - 2]:
					if (getproperty := await find_one(GET_PROPERTY, dumpscript[line - 1])) is not None:
						if "convert_i" in dumpscript[line + 1]:
							self["chat_text_field"] = getproperty.group(2)
							break

		for line, content in enumerate(dumpscript):
			if "=(<q>[public]flash.events::Event)(1 params, 0 optional)" in content:
				for x in range(line, line + 10):
					if "pushbyte 0" in dumpscript[x] and "setlocal r5" in dumpscript[x + 1] and "pushnull" in dumpscript[x + 2] and "coerce" in dumpscript[x + 3]:
						self["event_chat_text"] = (await find_one(PUBLIC_METHOD, content)).group(3)
						break
  
		return self