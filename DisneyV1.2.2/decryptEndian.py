import struct

def read_int(data, offset=0):
    return struct.unpack_from('<I', data, offset)[0]

def read_byte(data, offset=0):
    return struct.unpack_from('<B', data, offset)[0]

with open('./binaryData/109__e_--_-.bin', 'rb') as f:
    bin_109 = f.read()

with open('./binaryData/110__e_-----.bin', 'rb') as f:
    bin_110 = f.read()

with open('./binaryData/111__e_-_-_--.bin', 'rb') as f:
    bin_111 = f.read()

a = read_int(bin_111) 

_loc4 = read_byte(bin_110)
c = []
offset = 1 
for _ in range(_loc4):
    _loc2 = bin_110[offset:offset+16]
    if len(_loc2) == 16:
        c.append(_loc2)
    offset += 16

_loc4 = read_int(bin_109)
d = []
offset = 4 
for _ in range(_loc4):
    if offset + 4 <= len(bin_109):
        _loc3 = read_int(bin_109, offset)
        offset += 4
        if offset + _loc3 <= len(bin_109):
            _loc4_bytes = bin_109[offset:offset+_loc3]
            offset += _loc3
            transformed_data = _loc4_bytes.decode('utf-8', errors='ignore') 
            d.append(transformed_data)

def decrypt(param1):
    if not d:
        pass
    index = param1 ^ a
    if 0 <= index < len(d):
        return d[index]
    else:
        return None


param = -1820302983
host_url = decrypt(param)
print(host_url)
