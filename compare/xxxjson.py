import json

with open('Disneyclient.json', 'r') as f1, open('localgetkeys.json', 'r') as f2:
    dc = json.load(f1)
    localgetkeys = json.load(f2)
dk = dc['keys']
lk = localgetkeys['keys']
ck = set(dk.keys()).intersection(lk.keys())
udk = set(dk.keys()) - set(lk.keys())
ulk = set(lk.keys()) - set(dk.keys())
cdv = {key: (dk[key], lk[key]) for key in ck if dk[key] != lk[key]}
vcd = {key: dk[key] for key in ck if dk[key] == lk[key]}
o = {
    "DisneyClient": {
        "Keys": {key: dk[key] for key in dk},
        "MissingInLocalGetKeys": list(udk)
    },
    "LocalGetKeys": {
        "Keys": {key: lk[key] for key in lk},
        "MissingInDisneyClient": list(ulk)
    },
    "Differences": {
        key: {
            "DisneyClient": dk[key],
            "LocalGetKeys": lk[key]
        }
        for key in cdv
    },
    "CommonWithSameValues": {
        key: dk[key] for key in vcd
    }
}
with open('comparison_result.json', 'w') as outfile:
    json.dump(o, outfile, indent=4)
