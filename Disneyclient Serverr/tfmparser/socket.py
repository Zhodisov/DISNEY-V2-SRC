from .regex import CONSTRUCT_PROP_1, GET_LEX, GET_PROPERTY, FIND_PROPERTY, INIT_PROPERTY, PUBLIC_METHOD, CALL_PROPVOID, SET_PROPERTY_2, find_one, GET_PROPERTY_2, CONSTRUCTOR

from typing import Dict, List

class Socket(dict):
	async def fetch(self, dumpscript: List) -> Dict:


		if (socket_name := self.get("socket_name")) is not None:
			for line, content in enumerate(dumpscript):
				if "getproperty <q>[public]::bytesAvailable" in content and f"getproperty <q>[public]::{socket_name}" in dumpscript[line - 1]:
					for x in range(line, line + 15):
						if "increment_i" in dumpscript[x] and (getproperty := await find_one(GET_PROPERTY, dumpscript[x - 1])) is not None:
							#self["data_id"] = getproperty.group(2)
							break
					else:
						continue
					break

		for line, content in enumerate(dumpscript):
			if (
				"setlocal" in content and
				"getlocal" in dumpscript[line + 1] and
				"getlocal" in dumpscript[line + 2] and
				"setproperty" in dumpscript[line + 3] and
				"getlocal_0" in dumpscript[line + 7]
    
    			#"getlocal_0" in dumpscript[line - 6] #and
			):
				if 'getlocal_0' in dumpscript[line + 11] and 'getproperty' in dumpscript[line + 9] and 'getlex' in dumpscript[line + 8] and 'setlocal' in dumpscript[line + 19] and 'getlocal_0' in dumpscript[line + 20]:
					property_line = dumpscript[line + 12]
					match = await find_one(GET_PROPERTY_2, property_line)
					if match:
						parse1_result = match.group(1) if match else "Not_found"
						self["read_data"] = parse1_result
						print("Result Parse1:", parse1_result)
		for line, content in enumerate(dumpscript):
			if (
				"getproperty" in content and
				"getlex" in dumpscript[line + 1] and
				"getlex" in dumpscript[line + 2] and
				"callproperty" in dumpscript[line + 4]
    
    			#"getlocal_0" in dumpscript[line - 6] #and
			):
				if 'getlocal_0' in dumpscript[line + 7] and 'getlex' in dumpscript[line + 8] and 'getproperty' in dumpscript[line + 9] and 'getlex' in dumpscript[line + 17] and 'getlocal_0' in dumpscript[line + 11]:
					property_line = dumpscript[line + 10]

					#property_line = content
					match = await find_one(INIT_PROPERTY, property_line)
					if match:
						parse2_result = match.group(1) if match else "Not_found"
						print("Result Parse2:", parse2_result)
						if parse1_result == parse2_result:
							self["read_data"] = parse1_result
							print("Matching result found and updated in results.")
							break

		for line, content in enumerate(dumpscript):
			if "getproperty <q>[public]::errorID" in content:
				for x in range(line, line + 8):
					if "callpropvoid" in dumpscript[x] and (getlex := await find_one(GET_LEX, dumpscript[x - 1])) is not None:
						self["packet_handler_class_name"] = getlex.group(1)
						break
				break

		for line, content in enumerate(dumpscript):
			if content.endswith("=(<q>[public]::int, <q>[public]::String, <q>[public]::String = , <q>[public]::Boolean = false, <q>[public]::Boolean = false, <q>[public]::Array = null)(6 params, 4 optional)"):
				self["packet_handler"] = (await find_one(PUBLIC_METHOD, content)).group(3)
				break

		for line, content in enumerate(dumpscript):
			if content.endswith("=(<q>[public]flash.events::ProgressEvent = null, <q>[public]::Boolean = false)(2 params, 2 optional)"):
				self["event_socket_data"] = (await find_one(PUBLIC_METHOD, content)).group(3)
				break

		for line, content in enumerate(dumpscript):
			if "multiply" in content and "lshift" in dumpscript[line + 1] and "bitor" in dumpscript[line + 2]:
				if (initproperty := await find_one(INIT_PROPERTY, dumpscript[line + 3])) is not None:
					if "getlocal_0" in dumpscript[line + 4] and "dup" in dumpscript[line + 5] and "setlocal r4" in dumpscript[line + 6]:
						if (getproperty := await find_one(GET_PROPERTY, dumpscript[line + 7])):
							self["data_len"] = initproperty.group(1)
							self["data_offset"] = getproperty.group(2)
							break

		for line, content in enumerate(dumpscript):
			if content.endswith("::ecriture, 1 params") and (findproperty := await find_one(FIND_PROPERTY, dumpscript[line + 1])) is not None:
				self["cipher"] = findproperty.group(1)
				break

		for line, content in enumerate(dumpscript):
			if "getlex <q>[public]flash.events::Event" in content:
				if "getproperty <q>[public]::CLOSE" in dumpscript[line + 1]:
					if "getlocal_0" in dumpscript[line + 2]:
						property_line = dumpscript[line + 3]
						match = await find_one(GET_PROPERTY_2, property_line)
						if match:
							self["event_bulle_socket_close"] = match.group(1) if match else "Not_found"
							break
		for line, content in enumerate(dumpscript):
			if "[stack:3 locals:4 scope:4-5 flags: has_optional] slot:0" in content:
				if "getlocal_0" in dumpscript[line + 2]:
					if "pushscope" in dumpscript[line + 3]:
						if "dup" in dumpscript[line + 6]:
							if "setlocal_3" in dumpscript[line + 7]:
								if "getlocal_0" in dumpscript[line + 8]:
														property_line = dumpscript[line + 9]
														match = await find_one(GET_PROPERTY_2, property_line)
														if match:
															self["socket_name3"] = match.group(1) if match else "Not_found"
															break
		for line, content in enumerate(dumpscript):
			if "[stack:7 locals:2 scope:10-11 flags: need_rest] slot:0" in content:
				if "getlocal_0" in dumpscript[line + 2]:
					if "pushscope" in dumpscript[line + 3]:
						if "getlocal_0" in dumpscript[line + 4]:
														property_line = dumpscript[line + 5]
														match = await find_one(GET_PROPERTY_2, property_line)
														if match:
															self["packet_keys_array"] = match.group(1) if match else "Not_found"
															break
		for line, content in enumerate(dumpscript):
			if "getlocal_0" in content:
				if "pushscope" in dumpscript[line + 1]:
					if "getlocal_2" in dumpscript[line + 9]:
						if "getlocal_3" in dumpscript[line + 17]:
							if "setlocal_3" in dumpscript[line + 24]:
																property_line = dumpscript[line + 25]
																match = await find_one(GET_LEX, property_line)
																if match:
																	self["socket2_class_name"] = match.group(1) if match else "Not_found"
																	break 
				if "pushscope" in dumpscript[line + 1]:
					if "pushnull" in dumpscript[line + 17]:
						if "returnvoid" in dumpscript[line + 24]:
																property_line = dumpscript[line + 10]
																match = await find_one(GET_LEX, property_line)
																if match:
																	self["socket2_class_name"] = match.group(1) if match else "Not_found"
																	break 

		for line, content in enumerate(dumpscript):
			if "getlocal_0" in content:
				if "pushscope" in dumpscript[line + 1]:
					if "setlocal_3" in dumpscript[line + 5]:
						if "getlocal_0" in dumpscript[line + 6]:
							if "getlocal_3" in dumpscript[line + 9]:
								if "getlocal_0" in dumpscript[line + 10]:
									property_line = dumpscript[line + 11]
									match = await find_one(GET_PROPERTY_2, property_line)
									if match:
										self["socket69"] = match.group(1) if match else "Not_found"
										break
		for line, content in enumerate(dumpscript):
			if "getlocal_0" in content:
				if "pushscope" in dumpscript[line + 1]:
					if "getlocal_0" in dumpscript[line + 2]:
						if "getlocal_0" in dumpscript[line + 6]:
							if "getlocal_1" in dumpscript[line + 8]:
								if "getlocal_0" in dumpscript[line + 12]:
									if "setproperty <q>[public]::textColor" in dumpscript[line + 16]:
											property_line = dumpscript[line + 18]
											match = await find_one(GET_PROPERTY_2, property_line)
											if match:
												self["socket_name"] = match.group(1) if match else "Not_found"
												break

		for line, content in enumerate(dumpscript):
			if (
				"setlocal" in content and
				"getlocal" in dumpscript[line + 1] and
				"getlocal" in dumpscript[line + 2] and
				"getlocal_0" in dumpscript[line + 7] and
				"getlocal_0" in dumpscript[line + 11]
    
    			#"getlocal_0" in dumpscript[line - 6] #and
			):
				if 'getlex' in dumpscript[line + 8] and 'getproperty' in dumpscript[line + 9] and 'initproperty' in dumpscript[line + 10] and 'getproperty' in dumpscript[line + 12] and 'getlocal_0' in dumpscript[line + 20]:
					property_line = dumpscript[line + 3]
					match = await find_one(SET_PROPERTY_2, property_line)
					if match:
						parse1_result = match.group(1) if match else "Not_found"
						self["data_id"] = parse1_result
						print("Result Parse1:", parse1_result)
		for line, content in enumerate(dumpscript):
			if (
				"setlocal" in content and
				"getlocal" in dumpscript[line + 1] and
				"getlocal" in dumpscript[line + 2] and
				"getlocal_0" in dumpscript[line + 7] and
				"getlocal_0" in dumpscript[line + 11]
    
    			#"getlocal_0" in dumpscript[line - 6] #and
			):
				if 'getlex' in dumpscript[line + 8] and 'getproperty' in dumpscript[line + 9] and 'initproperty' in dumpscript[line + 10] and 'getproperty' in dumpscript[line + 12] and 'getlocal_0' in dumpscript[line + 20]:
					property_line = dumpscript[line + 10]
     				#property_line = content

					match = await find_one(INIT_PROPERTY, property_line)
					if match:
						parse2_result = match.group(1) if match else "Not_found"
						print("Result Parse2:", parse2_result)
						if parse1_result == parse2_result:
							self["data_id"] = parse1_result
							print("Matching result found and updated in results.")
							break
		for line, content in enumerate(dumpscript):
			if (
				"pushundefined" in content and
				"setlocal_2" in dumpscript[line + 2] and
				"getlocal_1" in dumpscript[line + 4]
			):
				if 'getlocal_2' in dumpscript[line + 8] and 'returnvalue' in dumpscript[line + 22]:
					property_line = dumpscript[line + 3]
					match = await find_one(GET_LEX, property_line)
					if match:
						parse1_result = match.group(1) if match else "Not_found"
						self["socket_list"] = parse1_result
						print("Result Parse1:", parse1_result)
		for line, content in enumerate(dumpscript):
			if (
				"pushundefined" in content and
				"setlocal_2" in dumpscript[line + 2] and
				"getlocal_1" in dumpscript[line + 4]
			):
				if 'getlocal_2' in dumpscript[line + 8] and 'returnvalue' in dumpscript[line + 22]:
					property_line = dumpscript[line + 14]
					#property_line = content
					match = await find_one(GET_LEX, property_line)
					if match:
						parse2_result = match.group(1) if match else "Not_found"
						print("Result Parse2:", parse2_result)
						if parse1_result == parse2_result:
							self["socket_list"] = parse1_result
							print("Matching result found and updated in results.")
							break
		for line, content in enumerate(dumpscript):
			if "getlocal_0" in content:
				if "pushscope" in dumpscript[line + 1]:
					if 'getlocal_1' in dumpscript[line + 2]:
						if 'getlocal_2' in dumpscript[line + 14]:
												property_line = dumpscript[line + 11]
												match = await find_one(CONSTRUCT_PROP_1, property_line)
												if match:
													self["crouch_packet_class_name"] = match.group(1) if match else "Not_found"
													break 
		for line, content in enumerate(dumpscript):
			if "getlocal_0" in content:
				if "pushscope" in dumpscript[line + 1]:
					if "getlocal_0" in dumpscript[line + 8]:
						if "pushnull" in dumpscript[line + 9]:
							if "returnvoid" in dumpscript[line + 11]:
																property_line = dumpscript[line +10]
																match = await find_one(CALL_PROPVOID, property_line)
																if match:
																	self["event_main_socket_close"] = match.group(1) if match else "Not_found"
																	break 
		return self
