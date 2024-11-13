from .regex import CALL_PROPERTY, CALL_PROPVOID, CONSTRUCTOR_2, FINAL_METHOD_3, FIND_PROPSTRICT, GET_LEX, GET_PROPERTY, INIT_PROPERTY, PUBLIC_METHOD, PUBLIC_METHOD_2, SET_PROPERTY, find_one, GET_PROPERTY_2, SET_PROPERTY_2

from typing import Dict, List

class Player(dict):
	async def fetch(self, dumpscript: List) -> Dict:
		for line, content in enumerate(dumpscript):
			if "getscopeobject 1" in content and "pushnull" in dumpscript[line + 1]:
				if "coerce <q>[public]flash.display::MovieClip" in dumpscript[line + 2] and "setslot 2" in dumpscript[line + 3]:
					if "findpropstrict <q>[public]::addChildAt" in dumpscript[line + 4] and "getlocal_0" in dumpscript[line + 5]:
						if (getproperty := await find_one(GET_PROPERTY, dumpscript[line + 6])) is not None:
							self["player_bitmap"] = getproperty.group(2)
							break

		if (player_bitmap := self.get("player_bitmap")) is not None:
			for line, content in enumerate(dumpscript):
				if "getlocal_0" in content:
					if "pushscope" in dumpscript[line + 1]:
						if 'getlocal_0' in dumpscript[line + 2]:
							if 'getlocal_0' in dumpscript[line + 8]:
								if 'getlocal_0' in dumpscript[line + 12]:
									if 'getlocal_0' in dumpscript[line + 13]:
										if 'getlocal_0' in dumpscript[line + 17]:
													property_line = dumpscript[line + 20]
													match = await find_one(CALL_PROPVOID, property_line)
													if match:
														self["static_animation"] = match.group(1) if match else "Not_found"
														break 

		for line, content in enumerate(dumpscript):
			if content.endswith("=(<q>[public]::Boolean)(1 params, 0 optional)"):
				if "pushnull" in dumpscript[line + 5] and "coerce" in dumpscript[line + 6] and "setlocal_3" in dumpscript[line + 7] and "pushbyte 0" in dumpscript[line + 8]:
					self["crouch"] = (await find_one(PUBLIC_METHOD, content)).group(3)
					break

		if (crouch := self.get("crouch")) is not None:
			for line, content in enumerate(dumpscript):
				if f"callpropvoid <q>[public]::{crouch}" in content and (getproperty := await find_one(GET_PROPERTY, dumpscript[line - 1])) is not None:
					self["static_side"] = getproperty.group(2)
					break
		for line, content in enumerate(dumpscript):
			if "getproperty <q>[public]::" in content:
				if "iffalse" in dumpscript[line + 2]:
					if "callpropvoid <q>[public]::" in dumpscript[line + 8]:
						if "equals" in dumpscript[line + 23]:
																property_line = dumpscript[line + 15]
																match = await find_one(CALL_PROPVOID, property_line)
																if match:
																	self["crouch2"] = match.group(1) if match else "Not_found"
																	break 
			if "getlocal_0" in content:
				if "pushscope" in dumpscript[line + 1]:
					if "getlocal_0" in dumpscript[line + 2]:
						if "getlocal_1" in dumpscript[line + 3]:
							if "getlocal_0" in dumpscript[line + 22]:
								property_line = dumpscript[line + 19]
								match = await find_one(CALL_PROPVOID, property_line)
								if match:
									self["crouch2"] = match.group(1) if match else "Not_found"
									break 
		for line, content in enumerate(dumpscript):
			if "getlocal_0" in content and "getlocal_1" in dumpscript[line + 1] and "callproperty <q>[public]::readShort, 0 params" in dumpscript[line + 2]:
				if (initproperty := await find_one(INIT_PROPERTY, dumpscript[line + 3])) is not None and "getlocal_0" in dumpscript[line + 4] and "getlocal_1" in dumpscript[line + 5]:
					if "callproperty <q>[public]::readByte, 0 params" in dumpscript[line + 6] and "initproperty" in dumpscript[line + 7] and "getlocal_0" in dumpscript[line + 8]:
						if "getlocal_1" in dumpscript[line + 9] and "callproperty <q>[public]::readByte, 0 params" in dumpscript[line + 10]:
							if "initproperty" in dumpscript[line + 11] and "getlocal_0" in dumpscript[line + 12] and "getlocal_1" in dumpscript[line + 13]:
								if "callproperty <q>[public]::readUTF, 0 params" in dumpscript[line + 14]:
									self["player_title"] = initproperty.group(1)
									break

		for line, content in enumerate(dumpscript):
			if content.endswith("=(<q>[public]::Boolean, <q>[public]::int = 0)(2 params, 1 optional)") and "pushnull" in dumpscript[line + 5] and "coerce" in dumpscript[line + 6]:
				self["jump"] = (await find_one(PUBLIC_METHOD, content)).group(3)
				break

		for line, content in enumerate(dumpscript):
			if content.endswith("=(<q>[public]::Number = 0, <q>[public]::Number = 0)(2 params, 2 optional)") and "constructor" in content:
				for x in range(line, line + 10):
					if "constructsuper 0 params" in dumpscript[x]:
						self["b2vec2"] = (await find_one(CONSTRUCTOR_2, content)).group(1)
						break

		for line, content in enumerate(dumpscript):
			if "getlocal_0" in content:
				if "pushscope" in dumpscript[line + 1]:
					if 'pushnull' in dumpscript[line + 2]:
						if 'getlocal_2' in dumpscript[line + 8]:
							if 'getlocal_0' in dumpscript[line + 13]:
												property_line = dumpscript[line + 9]
												match = await find_one(GET_PROPERTY_2, property_line)
												if match:
													self["get_x_form"] = match.group(1) if match else "Not_found"
													break
				if "pushscope" in dumpscript[line + 1]:
					if "getlocal_0" in dumpscript[line + 2]:
						if "getlocal_2" in dumpscript[line + 8]:
							if "getlocal_1" in dumpscript[line + 11]:
								property_line = dumpscript[line + 3]
								match = await find_one(GET_PROPERTY_2, property_line)
								if match:
									self["get_x_form"] = match.group(1) if match else "Not_found"
									break 
		
		if (get_x_form := self.get("get_x_form")) is not None:
			for line, content in enumerate(dumpscript):
				if f"callproperty <q>[public]::{get_x_form}" in content:
					i = 0
					for x in range(line, line + 25):
						if "getproperty <q>[public]::position" in dumpscript[x] and (getproperty := await find_one(GET_PROPERTY, dumpscript[x + 1])) is not None and "convert_d" in dumpscript[x + 2]:
							if not i:
								self["pos_x"] = self["physics_state_vx"] = getproperty.group(2)
							else:
								#self["pos_y"] = self["physics_state_vy"] = getproperty.group(2)
								break
							i += 1
		for line, content in enumerate(dumpscript):
			if "getlocal_0" in content:
				if "pushscope" in dumpscript[line + 1]:
					if "getlocal_1" in dumpscript[line + 4]:
						if "getlocal_2" in dumpscript[line + 5]:
							if "getlocal_0" in dumpscript[line + 10]:
								if "returnvalue" in dumpscript[line + 30]:
																property_line = dumpscript[line + 24]
																match = await find_one(SET_PROPERTY_2, property_line)
																if match:
																	self["pos_x"] = match.group(1) if match else "Not_found"
																	break 
		for line, content in enumerate(dumpscript):
			if (
				"getlocal_0" in content and
				"getlocal_0" in dumpscript[line + 2] and
				"pushscope" in dumpscript[line + 1]
				#"initproperty" in dumpscript[line - 3] and
    			#"getlocal_0" in dumpscript[line - 6] #and
			):
				if 'getlocal_0' in dumpscript[line + 4] and 'getlocal_0' in dumpscript[line + 8] and 'getlocal_0' in dumpscript[line + 13] and 'getlocal_0' in dumpscript[line + 17] and 'getlocal_3' in dumpscript[line + 20] and 'getlocal_0' in dumpscript[line + 23]:
					property_line = dumpscript[line + 16]
					match = await find_one(INIT_PROPERTY, property_line)
					if match:
						parse1_result = match.group(1) if match else "Not_found"
						self["pos_y"] = parse1_result
						print("Result Parse1:", parse1_result)
		for line, content in enumerate(dumpscript):
			if (
				"getlocal_0" in content and
				"getlocal_0" in dumpscript[line + 2] and
				"getlocal_0" in dumpscript[line + 9] and
				"getlocal_0" in dumpscript[line + 5] and
				"constructsuper" in dumpscript[line + 4] and
				"getlex" in dumpscript[line + 6] and
				"initproperty" in dumpscript[line + 8] 
				#"initproperty" in dumpscript[line - 3] and
    			#"getlocal_0" in dumpscript[line - 6] #and
			):
				if 'callproperty' in dumpscript[line + 7] and 'getlocal_0' in dumpscript[line + 13] and 'getlocal_0' in dumpscript[line + 17] and 'getlocal_0' in dumpscript[line + 21]:
					property_line = dumpscript[line + 16]
					#property_line = content
					match = await find_one(INIT_PROPERTY, property_line)
					if match:
						parse2_result = match.group(1) if match else "Not_found"
						print("Result Parse2:", parse2_result)
						if parse1_result == parse2_result:
							self["pos_y"] = parse1_result
							print("Matching result found and updated in results.")
							break
		if (pos_x := self.get("pos_x")) is not None and (pos_y := self.get("pos_y")) is not None:
			for line, content in enumerate(dumpscript):
				if "getlocal_3" in content and (getproperty := await find_one(GET_PROPERTY, dumpscript[line + 1])) is not None and f"getproperty <q>[public]::{pos_x}" in dumpscript[line + 2]:
					if "getlocal_3" in dumpscript[line + 3]:
						self["physics_state"] = getproperty.group(2)
						break

		if (b2vec2 := self.get("b2vec2")) is not None and (physics_state := self.get("physics_state")) is not None:
			for line, content in enumerate(dumpscript):
				if "setlocal r5" in content and "getlocal r4" in dumpscript[line + 1] and (callproperty := await find_one(CALL_PROPERTY, dumpscript[line + 2])) is not None:
					if "coerce" in dumpscript[line + 3] and "setlocal r6" in dumpscript[line + 4] and "getlocal_0" in dumpscript[line + 5]:
						self["get_linear_velocity"] = callproperty.group(1)
						break

		for line, content in enumerate(dumpscript):
			if "jump" in content and "label" in dumpscript[line + 1] and (getlex := await find_one(GET_LEX, dumpscript[line + 2])) is not None:
				if "getlocal r9" in dumpscript[line + 3]:
					self["shaman_handler_class_name"] = self["anim_class_name"] = getlex.group(1)

					for x in range(line, line + 12):
						if (callpropvoid := await find_one(CALL_PROPVOID, dumpscript[x])) is not None:
							self["update_coord1"] = result = callpropvoid.group(1)
							self["change_player_speed1"] = result #change_player_speed1
							break
					break

		#for line, content in enumerate(dumpscript):
		#    if "getlocal_0" in content:
		#        if "pushscope" in dumpscript[line + 1]:
		#            if 'returnvoid' in dumpscript[line + 12]:
		#                if 'getlocal_1' in dumpscript[line + 19]:
		#                    if 'setlocal_2' in dumpscript[line + 48]:
		#                                        property_line = dumpscript[line + 58]
		#                                        match = await find_one(CALL_PROPVOID, property_line)
		#                                        if match:
		#                                            self["update_coord"] = result = match.group(1)
		#                                            self["change_player_speed1"] = result
		#                                            break 
		if (anim_class_name := self.get("anim_class_name")) is not None:
			for line, content in enumerate(dumpscript):
				if f"getlex <q>[public]::{anim_class_name}" in content and "getlocal r" in dumpscript[line + 1] and "getlocal r" in dumpscript[line + 2]:
					if (callpropvoid := await find_one(CALL_PROPVOID, dumpscript[line + 3])) is not None and dumpscript[line + 3].endswith(", 2 params"):
						if "setlocal r" in dumpscript[line - 1]:
							self["change_player_speed2"]  = self["update_coord2"] = callpropvoid.group(1) #change_player_speed2
							break

		for line, content in enumerate(dumpscript):
			if "not" in content and "dup" in dumpscript[line + 1] and "iftrue" in dumpscript[line + 2] and "pop" in dumpscript[line + 3]:
				if (getlex := await find_one(GET_LEX, dumpscript[line + 4])) is not None and (getproperty := await find_one(GET_PROPERTY, dumpscript[line + 5])) is not None:
					if "not" in dumpscript[line + 7] and "dup" in dumpscript[line + 8] and "iftrue" in dumpscript[line + 9]:
						self["mouse_info_class_name"] = getlex.group(1)
						self["mouse_info_instance"] = getproperty.group(2)
						break

		if (mouse_info_class_name := self.get("mouse_info_class_name")) is not None:
			for line, content in enumerate(dumpscript):
				if f"getlex <q>[public]::{mouse_info_class_name}" in content and "negate" in dumpscript[line - 1]:
					if (getproperty := await find_one(GET_PROPERTY, dumpscript[line + 2])) is not None and "multiply" in dumpscript[line + 3]:
						self["jump_height"] = getproperty.group(2)
						break

		for line, content in enumerate(dumpscript):
			if "findpropstrict <q>[public]flash.utils::getTimer" in content and "getlocal_1" in dumpscript[line - 1]:
				if (setproperty := await find_one(SET_PROPERTY, dumpscript[line + 2])) is not None and "returnvoid" in dumpscript[line + 3]:
					self["jump_timestamp"] = setproperty.group(1)
					break

		for line, content in enumerate(dumpscript):
			if f", <q>[public]::int)(2 params, 0 optional)" in content and "pushnull" in dumpscript[line + 5] and "coerce" in dumpscript[line + 6]:
				if "setlocal_3" in dumpscript[line + 7] and "getlocal_1" in dumpscript[line + 8] and "getlocal_2" in dumpscript[line + 9]:
					if (setproperty := await find_one(SET_PROPERTY, dumpscript[line + 10])) is not None:
						self["player_cheese"] = setproperty.group(1)
						break

		for line, content in enumerate(dumpscript):
			if " getlex <q>[public]::Math" in content and "getlocal_1" in dumpscript[line + 1]:
				if (getproperty := await find_one(GET_PROPERTY, dumpscript[line + 2])) is not None:
					if "callproperty <q>[public]::abs, 1 params" in dumpscript[line + 3] and "getlocal r" in dumpscript[line + 4]:
						self["player_id"] = getproperty.group(2)
						break

		for line, content in enumerate(dumpscript):
			if "getlocal r5" in content and "getlocal_1" in dumpscript[line + 1] and "getproperty" in dumpscript[line + 2]:
				if (setproperty := await find_one(SET_PROPERTY, dumpscript[line + 3])) is not None:
					if "getlocal r5" in dumpscript[line + 4] and "iffalse" in dumpscript[line + 6]:
						self["player_id2"] = setproperty.group(1)
						break
		for line, content in enumerate(dumpscript):
			if "getlocal_0" in content:
				if "pushscope" in dumpscript[line + 1]:
					if "getlocal_0" in dumpscript[line + 2]:
						if "getlocal_1" in dumpscript[line + 4]:
							if "getlocal_1" in dumpscript[line + 9]:
									if "getlocal_0" in dumpscript[line + 20]:
										if "getlocal_0" in dumpscript[line + 27]:
											if "getlocal_0" in dumpscript[line + 37]:
												property_line = dumpscript[line + 33]
												match = await find_one(INIT_PROPERTY, property_line)
												if match:
													self["is_static"] = match.group(1) if match else "Not_found"
													break
		for line, content in enumerate(dumpscript):
			if "getlocal_0" in content:
				if "pushscope" in dumpscript[line + 1]:
					if "pushnull" in dumpscript[line + 2]:
						if "setlocal_2" in dumpscript[line + 11]:
							if "getlocal_1" in dumpscript[line + 20]:
									if "getlocal_0" in dumpscript[line + 29]:
										if "getlocal_1" in dumpscript[line + 36]:
											if "getlocal_3" in dumpscript[line + 44]:
												property_line = dumpscript[line + 45]
												match = await find_one(CALL_PROPVOID, property_line)
												if match:
													self["function_static2"] = self["function_static"] = match.group(1) if match else "Not_found"
													break
				if "pushscope" in dumpscript[line + 1]:
						if "getlocal_1" in dumpscript[line + 3]:
							if "getlocal_2" in dumpscript[line + 11]:
								if "getlocal_3" in dumpscript[line + 13]:
									property_line = dumpscript[line + 15]
									match = await find_one(CALL_PROPVOID, property_line)
									if match:
										self["function_static2"] = self["function_static"] = match.group(1) if match else "Not_found"
										break 
		for line, content in enumerate(dumpscript):
			if "getlocal_0" in content:
				if "pushscope" in dumpscript[line + 1]:
					if "getlocal_1" in dumpscript[line + 2]:
						if "getlocal_1" in dumpscript[line + 9]:
							if "getlocal_1" in dumpscript[line + 16]:
								if "getlocal_1" in dumpscript[line + 21]:
									if "getlocal_1" in dumpscript[line + 26]:
										if "getlocal_2" in dumpscript[line + 28]:
											if "getlocal_1" in dumpscript[line + 31]:

																property_line = dumpscript[line + 30]
																match = await find_one(SET_PROPERTY_2, property_line)
																if match:
																	self["friction_charge"] = match.group(1) if match else "Not_found"
																	break 
		for line, content in enumerate(dumpscript):
			if "getlocal_0" in content:
				if "pushscope" in dumpscript[line + 1]:
					if 'getlocal_1' in dumpscript[line + 2]:
						if 'getlocal_1' in dumpscript[line + 9]:
							if 'getlocal_1' in dumpscript[line + 16]:
								if 'getlocal_1' in dumpscript[line + 21]:
									if 'getlocal_2' in dumpscript[line + 28]:
										if 'getlocal_1' in dumpscript[line + 31]:
											if 'getlocal_2' in dumpscript[line + 33]:
												property_line = dumpscript[line + 35]
												match = await find_one(SET_PROPERTY, property_line)
												if match:
													self["friction_rate"] = match.group(1) if match else "Not_found"
													break 

		for line, content in enumerate(dumpscript):
			if "getlocal_0" in content:
				if "pushscope" in dumpscript[line + 1]:
					if "pushnull" in dumpscript[line + 2]:
						if "setlocal_2" in dumpscript[line + 4]:
							if "setlocal_3" in dumpscript[line + 6]:
								if "getlocal_0" in dumpscript[line + 13]:
									if "getlocal_0" in dumpscript[line + 17]:
											property_line = dumpscript[line + 18]
											match = await find_one(FIND_PROPSTRICT, property_line)
											if match:
												self["player_pos_class_name"] = match.group(1) if match else "Not_found"
												break
		for line, content in enumerate(dumpscript):
			if "getlocal_0" in content:
				if "pushscope" in dumpscript[line + 1]:
					if "setlocal_2" in dumpscript[line + 3]:
						if "setlocal_2" in dumpscript[line + 10]:
											property_line = dumpscript[line + 13]
											match = await find_one(GET_LEX, property_line)
											if match:
												self["packets_class_name"] = match.group(1) if match else "Not_found"
												break
		for line, content in enumerate(dumpscript):
			if "getlocal_0" in content:
				if "pushscope" in dumpscript[line + 1]:
					if 'getlocal_0' in dumpscript[line + 2]:
						if 'getlocal_0' in dumpscript[line + 11]:
							if 'getlocal_0' in dumpscript[line + 14]:
								if 'getlocal_0' in dumpscript[line + 19]:
									if 'getlocal_1' in dumpscript[line + 26]:
										if 'returnvoid' in dumpscript[line + 29]:
														property_line = dumpscript[line + 27]
														match = await find_one(CALL_PROPERTY, property_line)
														if match:
															self["move_player_packet"] = match.group(1) if match else "Not_found"
															break 
				if "returnvoid" in dumpscript[line + 16]:
						if "getlocal_0" in dumpscript[line + 9]:
							if "getlocal_0" in dumpscript[line + 7]:
								if "getlex" in dumpscript[line + 13]:
									property_line = dumpscript[line + 15]
									match = await find_one(CALL_PROPVOID, property_line)
									if match:
										self["move_player_packet"] = match.group(1) if match else "Not_found"
										break 
		for line, content in enumerate(dumpscript):
			if "pushnull" in content:
				if "pushnull" in dumpscript[line + 3]:
					if 'getlocal_1' in dumpscript[line + 7]:
						if 'getlocal_1' in dumpscript[line + 11]:
							if 'getlocal_1' in dumpscript[line + 15]:
								if 'getlocal_2' in dumpscript[line + 21]:
									if 'getlocal_3' in dumpscript[line + 22]:
												property_line = dumpscript[line + 31]
												match = await find_one(GET_PROPERTY_2, property_line)
												if match:
													self["is_self_player"] = match.group(1) if match else "Not_found"
													break 
		for line, content in enumerate(dumpscript):
			if "getlocal_0" in content:
				if "pushscope" in dumpscript[line + 1]:
					if "getlocal_0" in dumpscript[line + 2]:
						if "getlocal_1" in dumpscript[line + 4]:
							if "getlocal_0" in dumpscript[line + 7]:
								if "getlocal_1" in dumpscript[line + 8]:                                                         
									property_line = dumpscript[line + 9]
									match = await find_one(CALL_PROPVOID, property_line)
									if match:
										self["remove_shaman_obj"] = match.group(1) if match else "Not_found"
										break
		for line, content in enumerate(dumpscript):
			if "getlocal_0" in content:
				if "pushscope" in dumpscript[line + 1]:
					if "getlocal_1" in dumpscript[line + 2]:
						if "pushnull" in dumpscript[line + 4]:
							if "getlocal_1" in dumpscript[line + 6]:
								if "getlocal_0" in dumpscript[line + 9]:                                                         
									property_line = dumpscript[line + 11]
									match = await find_one(GET_PROPERTY_2, property_line)
									if match:
										self["shaman_obj_var"] = match.group(1) if match else "Not_found"
										break
		#for line, content in enumerate(dumpscript):
		#	if "getlocal_1" in content:
		#		if "getlocal_1" in dumpscript[line + 5]:
		#			if "getlocal_1" in dumpscript[line + 8]:
		#				if "getlocal_1" in dumpscript[line + 14]:
		#					if "getlocal_1" in dumpscript[line + 24]:
		#						if "pushtrue" in dumpscript[line + 37]:
		#							if "returnvoid" in dumpscript[line + 57]:                                                          
		#							property_line = dumpscript[line + 38]
		#								match = await find_one(CALL_PROPVOID, property_line)
		#								if match:
		#									self["jump"] = match.group(1) if match else "Not_found"
		#									break
		for line, content in enumerate(dumpscript):
			if "getlocal_0" in content:
				if "pushscope" in dumpscript[line + 1]:
					if "dup" in dumpscript[line + 5]:
						if "pop" in dumpscript[line + 7]:
							if "convert_b" in dumpscript[line + 11]:
								if "returnvalue" in dumpscript[line + 17]:
													property_line = dumpscript[line + 16]
													match = await find_one(GET_PROPERTY_2, property_line)
													if match:
														self["get_linear_velocity"] = match.group(1) if match else "Not_found"
														break   
		self["is_jumping"] = "Not_found"
		for line, content in enumerate(dumpscript):
			if "getlocal_0" in content:
				if "pushscope" in dumpscript[line + 1]:
					if "getlocal_1" in dumpscript[line + 7]:
						if "getlocal_1" in dumpscript[line + 14]:
							if "getlocal_1" in dumpscript[line + 17]:
									if "getlocal_1" in dumpscript[line + 20]:
																		property_line = dumpscript[line + 21]
																		match = await find_one(GET_PROPERTY_2, property_line)
																		if match:
																			self["is_jumping"] = match.group(1) if match else "Not_found"
																			break
		for line, content in enumerate(dumpscript):
			if (
				"getlocal_0" in content and
				"pushscope" in dumpscript[line + 1] and
				"getproperty" in dumpscript[line + 3]
			):
				if 'getlocal_1' in dumpscript[line + 6] and 'getlocal_1' in dumpscript[line + 13] and 'getlocal_0' in dumpscript[line + 23] and 'getlocal_1' in dumpscript[line + 25]:
					property_line = dumpscript[line + 14]
					match = await find_one(GET_LEX, property_line)
					if match:
						parse1_result = match.group(1) if match else "Not_found"
						self["image_url_class_name"] = parse1_result
						print("Result Parse1:", parse1_result)
		for line, content in enumerate(dumpscript):
			if (
				"getlocal_0" in content and
				"pushscope" in dumpscript[line + 1] and
				"getproperty" in dumpscript[line + 3]
			):
				if 'getlocal_1' in dumpscript[line + 6] and 'getlocal_1' in dumpscript[line + 13] and 'getlocal_0' in dumpscript[line + 23] and 'getlocal_1' in dumpscript[line + 25]:
					property_line = dumpscript[line + 7]
					#property_line = content
					match = await find_one(GET_LEX, property_line)
					if match:
						parse2_result = match.group(1) if match else "Not_found"
						print("Result Parse2:", parse2_result)
						if parse1_result == parse2_result:
							self["image_url_class_name"] = parse1_result
							print("Matching result found and updated in results.")
							break

		for line, content in enumerate(dumpscript):
			if 'pushstring "http://transformice.com/images/wallpaper/"' in content:
																property_line = dumpscript[line + 1]
																match = await find_one(SET_PROPERTY_2, property_line)
																if match:
																	self["image_url"] = match.group(1) if match else "Not_found"
																	break 
		for line, content in enumerate(dumpscript):
			if (
				"getproperty" in content and
				"getlocal_0" in dumpscript[line - 1] and
				"getlocal_0" in dumpscript[line - 2] and
				"initproperty" in dumpscript[line - 3] and
    			"getlocal_0" in dumpscript[line - 6] #and
			):
				if 'getproperty' in dumpscript[line + 20] and 'getlocal_0' in dumpscript[line + 19] and 'getlocal_0' in dumpscript[line + 18] and 'initproperty' in dumpscript[line + 17] and 'initproperty' in dumpscript[line + 2] and 'initproperty' in dumpscript[line + 7] and 'getlocal_0' in dumpscript[line + 4] and 'getlocal_0' in dumpscript[line + 3] and 'getlocal_0' in dumpscript[line + 9] and 'initproperty' in dumpscript[line + 7]:
					property_line = dumpscript[line + 5]
					match = await find_one(GET_PROPERTY_2, property_line)
					if match:
						parse1_result = match.group(1) if match else "Not_found"
						#self["login_screen"] = parse1_result
						print("Result Parse1 login_screen:", parse1_result)
		for line, content in enumerate(dumpscript):
			if (
				"getproperty" in content and
				"getlocal_0" in dumpscript[line - 1] and
				"getlocal_0" in dumpscript[line - 2]
			):
				if 'initproperty' in dumpscript[line + 2] and 'initproperty' in dumpscript[line + 7] and 'getlocal_0' in dumpscript[line + 4] and 'getlocal_0' in dumpscript[line + 3] and 'getlocal_0' in dumpscript[line + 9] and 'initproperty' in dumpscript[line + 7]:
					property_line = dumpscript[line + 15]
					#property_line = content
					match = await find_one(GET_PROPERTY_2, property_line)
					if match:
						parse2_result = match.group(1) if match else "Not_found"
						print("Result Parse2 login_screen: ", parse2_result)
						if parse1_result == parse2_result:
							self["login_screen"] = parse1_result
							print("Matching result found and updated in results.")
							break
		self["CSync_class_name"] = "Not_found"

		for line, content in enumerate(dumpscript):
			if "getlocal_0" in content:
				if "pushscope" in dumpscript[line + 1]:
					if 'getlocal_0' in dumpscript[line + 2]:
						if 'getlocal_1' in dumpscript[line + 3]:
							if 'equals' in dumpscript[line + 9]:
								if 'setlocal_2' in dumpscript[line + 10]:
									if 'getlocal_2' in dumpscript[line + 11]:
										if 'pop' in dumpscript[line + 15]:
											property_line = dumpscript[line + 16]
											match = await find_one(GET_LEX, property_line)
											if match:
												self["CSync_class_name"] = match.group(1) if match else "Not_found"
												break 
		for line, content in enumerate(dumpscript):
			if "getlocal_0" in content:
				if "pushscope" in dumpscript[line + 1]:
					if "pushnull" in dumpscript[line + 24]:
						if "pushnull" in dumpscript[line + 31]:
							if "getlocal_0" in dumpscript[line + 48]:
																property_line = dumpscript[line + 40]
																match = await find_one(GET_PROPERTY_2, property_line)
																if match:
																	self["Synchroniseur"] = match.group(1) if match else "Not_found"
																	break 
		self["menu_title"] = "SafeMarket-Cracked"
		self["menu_title_v1"] = "SafeMarket-Cracked"
		
		
		for line, content in enumerate(dumpscript):
			if "getlocal_0" in content:
				if "pushscope" in dumpscript[line + 1]:
					if 'getlocal_0' in dumpscript[line + 2]:
						if 'getlocal_0' in dumpscript[line + 4]:
							if 'getlocal_1' in dumpscript[line + 5]:
								if 'getlocal_0' in dumpscript[line + 7]:
									if 'getlocal_2' in dumpscript[line + 8]:

											property_line = dumpscript[line + 15]
											match = await find_one(CALL_PROPERTY, property_line)
											if match:
												self["get_definition"] = match.group(1) if match else "Not_found"
												break 
		for line, content in enumerate(dumpscript):
			if "getlocal_0" in content:
				if "pushscope" in dumpscript[line + 1]:
					if 'getlocal_1' in dumpscript[line + 9]:
						if 'getlocal_0' in dumpscript[line + 11]:
							if 'getlocal_2' in dumpscript[line + 12]:
								if 'getlocal_0' in dumpscript[line + 13]:
									if 'getlocal_1' in dumpscript[line + 18]:
												property_line = dumpscript[line + 16]
												match = await find_one(INIT_PROPERTY, property_line)
												if match:
													self["mouse_speed"] = match.group(1) if match else "Not_found"
													break 
				if "pushscope" in dumpscript[line + 1]:
					if "getlocal_1" in dumpscript[line + 7]:
						if "getlocal_2" in dumpscript[line + 12]:
							if "getlocal_0" in dumpscript[line + 13]:
								if "returnvoid" in dumpscript[line + 17]:
																property_line = dumpscript[line + 16]
																match = await find_one(INIT_PROPERTY, property_line)
																if match:
																	self["mouse_speed"] = match.group(1) if match else "Not_found"
																	break 

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
						self["cheese_verify"] = parse1_result
						print("Result Parse1:", parse1_result)
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
						print("Result Parse2:", parse2_result)
						if parse1_result == parse2_result:
							self["cheese_verify"] = parse1_result
							print("Matching result found and updated in results.")
							break
		for line, content in enumerate(dumpscript):
			if (
				"getlex" in content and
				"callproperty" in dumpscript[line + 1] and
				"getlocal" in dumpscript[line + 5] and
				"getlex" in dumpscript[line + 11] and
				"getlocal" in dumpscript[line + 13]
    
    			#"getlocal_0" in dumpscript[line - 6] #and
			):
				if 'getproperty' in dumpscript[line + 14] and 'callproperty' in dumpscript[line + 15] and 'callproperty' in dumpscript[line + 16] and 'findpropstrict' in dumpscript[line + 18] and 'getlocal' in dumpscript[line + 19]:
					property_line = dumpscript[line + 14]
					match = await find_one(GET_PROPERTY_2, property_line)
					if match:
						parse1_result = match.group(1) if match else "Not_found"
						self["change_player_pos"] = parse1_result
						print("Result Parse1:", parse1_result)
		for line, content in enumerate(dumpscript):
			if (
				"getlex" in content and
				"callproperty" in dumpscript[line + 1] and
				"getlocal" in dumpscript[line + 5] and
				"getlex" in dumpscript[line + 11] and
				"getlocal" in dumpscript[line + 13]
    
    			#"getlocal_0" in dumpscript[line - 6] #and
			):
				if 'getproperty' in dumpscript[line + 14] and 'callproperty' in dumpscript[line + 15] and 'callproperty' in dumpscript[line + 16] and 'findpropstrict' in dumpscript[line + 18] and 'getlocal' in dumpscript[line + 27]:
					property_line = dumpscript[line + 44]

					#property_line = content
					match = await find_one(GET_PROPERTY_2, property_line)
					if match:
						parse2_result = match.group(1) if match else "Not_found"
						print("Result Parse2:", parse2_result)
						if parse1_result == parse2_result:
							self["change_player_pos"] = parse1_result
							print("Matching result found and updated in results.")
							break
		return self