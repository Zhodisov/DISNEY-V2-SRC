import json

with open('Disneyclient.json', 'r') as a, open('localgetkeys.json', 'r') as b:
    c = json.load(a)
    d = json.load(b)

e = c['keys']
f = d['keys']

g = set(e.keys()).intersection(f.keys())
h = set(e.keys()) - set(f.keys())
i = set(f.keys()) - set(e.keys())

j = {k: (e[k], f[k]) for k in g if e[k] != f[k]}
l = {m: e[m] for m in g if e[m] == f[m]}

n = {
    "DisneyClient": {
        "Keys": {o: e[o] for o in e},
        "MissingInLocalGetKeys": list(h)
    },
    "LocalGetKeys": {
        "Keys": {p: f[p] for p in f},
        "MissingInDisneyClient": list(i)
    },
    "Differences": {
        q: {
            "DisneyClient": e[q],
            "LocalGetKeys": f[q]
        }
        for q in j
    },
    "CommonWithSameValues": {
        r: e[r] for r in l
    }
}

with open('comparison_result.json', 'w') as s:
    json.dump(n, s, indent=4)
