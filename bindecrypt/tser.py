import os
import zlib
import gzip
import bz2
import lzma

def l(f):
    try:
        with open(f, 'rb') as b:
            c = b.read()
            return c
    except FileNotFoundError:
        return None

def dz(c):
    try:
        return zlib.decompress(c)
    except zlib.error:
        return None

def dg(c):
    try:
        return gzip.decompress(c)
    except OSError:
        return None

def db(c):
    try:
        return bz2.decompress(c)
    except OSError:
        return None

def dl(c):
    try:
        return lzma.decompress(c)
    except lzma.LZMAError:
        return None

def ccccccccccccccccccc(c):
    if dz(c):
        return 'zlib'
    if dg(c):
        return 'gzip'
    if db(c):
        return 'bzip2'
    if dl(c):
        return 'lzma'
    return 'unknown'

def ccccccccccccccccccccccccc(ccccccccccccccccccccccccccccccccccc):
    if ccccccccccccccccccccccccccccccccccc[:3] == b'FWS' or ccccccccccccccccccccccccccccccccccc[:3] == b'CWZ':

        dddddddddddddddd = dz(ccccccccccccccccccccccccccccccccccc)
        if dddddddddddddddd:
            return dddddddddddddddd
        return ccccccccccccccccccccccccccccccccccc
    return ccccccccccccccccccccccccccccccccccc

def t(src, dst):
    if not os.path.exists(dst):
        os.makedirs(dst)

    for n in os.listdir(src):
        sf = os.path.join(src, n)
        if os.path.isfile(sf):
            c = l(sf)
            if c:
                c = ccccccccccccccccccccccccc(c)
                tc = ccccccccccccccccccc(c)
                print(f"{n}: {tc}")
                dc = None
                if tc == 'zlib':
                    dc = dz(c)
                elif tc == 'gzip':
                    dc = dg(c)
                elif tc == 'bzip2':
                    dc = db(c)
                elif tc == 'lzma':
                    dc = dl(c)
                if dc:
                    df = os.path.join(dst, n)
                    with open(df, 'wb') as b:
                        b.write(dc)

src = "_assets"
dst = "_decompressed_assets"
t(src, dst)
