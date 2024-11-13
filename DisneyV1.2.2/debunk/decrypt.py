import struct
import zlib
from io import BytesIO

a = []
b = []
c = 0
d = False

def e(f):
    with open(f, 'rb') as g:
        return g.read()

def h(i):
    try:
        return zlib.decompress(i)
    except zlib.error as j:
        print(f"Erreur de décompression : {j}")
        raise

class k:
    def __init__(self, l):
        self.m = l

    def n(self):
        return len(self.m)

    def o(self, p):
        pass

    def q(self, r):
        r = bytearray(r)
        for s in range(len(r)):
            r[s] ^= self.m[s % len(self.m)]
        return bytes(r)

class t:
    def __init__(self, u):
        self.v = u

    def w(self, x):
        self.v = x

    def y(self, z):
        pass

    def aa(self, bb):
        pass

class cc:
    def __init__(self, dd, ee=None):
        self.ff = dd
        if ee is None:
            ee = t(self.ff.n())
        else:
            ee.w(self.ff.n())
        self.gg = ee

    def n(self):
        return self.ff.n()

    def o(self, hh):
        hh = self.ff.q(hh)
        self.gg.y(hh)
        return hh

    def q(self, ii):
        ii = self.ff.q(ii)
        self.gg.aa(ii)
        return ii

def jj():
    kk = 'C:/Users/Admin/Desktop/miaou/DisneyV1.2.2/debunk/bin/109__e_--_-.bin'
    ll = 'C:/Users/Admin/Desktop/miaou/DisneyV1.2.2/debunk/bin/110__e_-----.bin'
    mm = 'C:/Users/Admin/Desktop/miaou/DisneyV1.2.2/debunk/bin/111__e_-_-_--.bin'

    nn = h(e(kk))
    oo = h(e(ll))
    pp = h(e(mm))

    return BytesIO(nn), BytesIO(oo), BytesIO(pp)

def qq(rr):
    return struct.unpack('<i', rr)[0]

def ss(tt):
    try:
        return tt.decode('utf-8')
    except UnicodeDecodeError as uu:
        print(f"Erreur de décodage : {uu}")
        print("Brutes :", tt)
        raise

def vv(ww, xx, yy):
    global a, b, c, d

    yy.seek(0)
    c = qq(yy.read(4))

    zz = ord(xx.read(1))
    b = [xx.read(16) for _ in range(zz)]

    aaa = qq(ww.read(4))
    bbb = ww.read()

    a = []
    for i in range(aaa):
        ccc = i * 4
        ddd = qq(bbb[ccc:ccc + 4])
        eee = bbb[ccc + 4:ccc + 4 + ddd]
        fff = cc(k(b[i % len(b)]))
        ggg = fff.q(eee)
        print(f"Décrypté brut (avant décodage) : {ggg}")
        try:
            a.append(ss(ggg))
        except UnicodeDecodeError:
            a.append(ggg.hex())

    d = True

def hhh(iii):
    global a, c, d
    
    if not d:
        jjj, kkk, lll = jj()
        vv(jjj, kkk, lll)
    
    mmm = iii ^ c
    return a[mmm]

nnn = -1820302983
ooo = hhh(nnn)
print("Décrypté:", ooo)
