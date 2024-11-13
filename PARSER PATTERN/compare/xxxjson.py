import json

with open('Disneyclient.json', 'r') as f1, open('localgetkeys.json', 'r') as f2:
    disneyclient = json.load(f1)
    localgetkeys = json.load(f2)
disney_keys = disneyclient['keys']
local_keys = localgetkeys['keys']
common_keys = set(disney_keys.keys()).intersection(local_keys.keys())
unique_disney_keys = set(disney_keys.keys()) - set(local_keys.keys())
unique_local_keys = set(local_keys.keys()) - set(disney_keys.keys())
value_differences = {key: (disney_keys[key], local_keys[key]) for key in common_keys if disney_keys[key] != local_keys[key]}
value_similarities = {key: disney_keys[key] for key in common_keys if disney_keys[key] == local_keys[key]}
output_data = {
    "DisneyClient": {
        "Keys": {key: disney_keys[key] for key in disney_keys},
        "MissingInLocalGetKeys": list(unique_disney_keys)
    },
    "LocalGetKeys": {
        "Keys": {key: local_keys[key] for key in local_keys},
        "MissingInDisneyClient": list(unique_local_keys)
    },
    "Differences": {
        key: {
            "DisneyClient": disney_keys[key],
            "LocalGetKeys": local_keys[key]
        }
        for key in value_differences
    },
    "CommonWithSameValues": {
        key: disney_keys[key] for key in value_similarities
    }
}
with open('comparison_result.json', 'w') as outfile:
    json.dump(output_data, outfile, indent=4)
