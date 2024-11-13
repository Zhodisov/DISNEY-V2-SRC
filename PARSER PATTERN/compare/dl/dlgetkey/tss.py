import requests
from datetime import datetime

c = int(datetime.now().timestamp() * 1000)
h = "disneyclient.net"
access_token = "7e7c440abe8b6fcb1d63696fc23ed6b17003f373ab4"
flash_toke = "QT10JlNBPXQmU1Y9dCZFVj10Jk1QMz10JkFFPXQmVkU9dCZBQ0M9dCZQUj10JlNQPWYmU0I9ZiZERUI9ZiZWPVdJTiUyMDMyJTJDMCUyQzAlMkMxODImTT1BZG9iZSUyMFdpbmRvd3MmUj0xNTM2eDg2NCZDT0w9Y29sb3ImQVI9MS4wJk9TPVdpbmRvd3MlMjAxMCZBUkNIPXg4NiZMPWZyJklNRT10JlBSMzI9dCZQUjY0PXQmQ0FTPTMyJkxTPWZyLUZSO2VuLVVTJlBUPURlc2t0b3AmQVZEPWYmTEZEPWYmV0Q9ZiZUTFM9dCZNTD01LjEmRFA9NzI"
urls = [
    {
        "url": f"https://{h}/get_keys?flash_token={flash_toke}&access_token={access_token}&d={c}",
        "fl": "get_keys.json"
    },
    {
        "url": f"https://{h}/transformice?d={c}&swf",
        "fl": "transformice_2.swf"
    }

]



h = {
    "Accept": "text/xml, application/xml, application/xhtml+xml, text/html;q=0.9, text/plain;q=0.8, text/css, image/png, image/jpeg, image/gif;q=0.8, application/x-shockwave-flash, video/mp4;q=0.9, flv-application/octet-stream;q=0.8, video/x-flv;q=0.7, audio/mp4, application/futuresplash, */*;q=0.5, application/x-mpegURL",
    "x-flash-version": "32,0,0,182",
    "User-Agent": "Mozilla/5.0 (Windows; U; fr-FR) AppleWebKit/533.19.4 (KHTML, like Gecko) AdobeAIR/32.0",
    "Host": "disneyclient.net"
}

for item in urls:
    url = item["url"]
    fl = item["fl"]
    
    r = requests.get(url, headers=h)
    
    if r.status_code == 200:
        with open(fl, "wb") as file:
            file.write(r.content)
    else:
        print(f"Erreur {url} : {r.status_code}")
