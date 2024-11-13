import requests
import os
import time
from datetime import datetime

def cds():
    t = datetime.now().strftime("%d-%m-%Y-%H-%M")
    bs = os.path.join(os.getcwd(), "Parser-History") #os.path.join(os.getcwd(), t)
    os.makedirs(bs, exist_ok=True)
    
    ds = os.path.join(bs, f"Parser-{t}", "Disneyclient")
    ld = os.path.join(bs, f"Parser-{t}", "Local")
    
    os.makedirs(ds, exist_ok=True)
    os.makedirs(ld, exist_ok=True)
    
    return bs, ds, ld

def f(urls, headers, bs, ds, ld):
    for item in urls:
        url = item["url"]
        fl = item["fl"]
        
        ch = headers if "localhost" not in url else {}
        
        r = requests.get(url, headers=ch)
        
        if r.status_code == 200:
            fp = os.path.join(ds if fl in ["transformice_2.swf", "get_keys.json"] else ld, fl)


            with open(fp, "wb") as file:
                file.write(r.content)
            print(f"Saved {fl} to {fp}")
        else:
            print(f"Erreur {url} : {r.status_code}")
def main():
    bsr = "https://disneyclient.net"
    access_token="7e657c1f5c2aa27db61edd3984b1ff55a99a434c885"
    flash_token = "QT10JlNBPXQmU1Y9dCZFVj10Jk1QMz10JkFFPXQmVkU9dCZBQ0M9dCZQUj10JlNQPWYmU0I9ZiZERUI9ZiZWPVdJTiUyMDMyJTJDMCUyQzAlMkMxODImTT1BZG9iZSUyMFdpbmRvd3MmUj0xNTM2eDg2NCZDT0w9Y29sb3ImQVI9MS4wJk9TPVdpbmRvd3MlMjAxMCZBUkNIPXg4NiZMPWZyJklNRT10JlBSMzI9dCZQUjY0PXQmQ0FTPTMyJkxTPWZyLUZSO2VuLVVTJlBUPURlc2t0b3AmQVZEPWYmTEZEPWYmV0Q9ZiZUTFM9dCZNTD01LjEmRFA9NzI"
    
    urls = [
        {
            "url": f"{bsr}/api/get-data?type=2&flash_token={flash_token}&access_token={access_token}&d={int(datetime.now().timestamp() * 1000)}",
            "fl": "get_keys.json"
        },
        {
            "url": f"{bsr}/transformice?d={int(datetime.now().timestamp() * 1000)}&swf",
            "fl": "transformice_2.swf"
        },
        {
            "url": "http://localhost:8080/get_keys",
            "fl": "get_keys_local.json"
        }
    ]
    
    headers = {
        "Accept": "text/xml, application/xml, application/xhtml+xml, text/html;q=0.9, text/plain;q=0.8, text/css, image/png, image/jpeg, image/gif;q=0.8, application/x-shockwave-flash, video/mp4;q=0.9, flv-application/octet-stream;q=0.8, video/x-flv;q=0.7, audio/mp4, application/futuresplash, */*;q=0.5, application/x-mpegURL",
        "x-flash-version": "16,0,0,276",
        "User-Agent": "DisneyClient/1.9",
        "Host": "disneyclient.net"
    }
    
    while True:
        bs, ds, ld = cds()
        f(urls, headers, bs, ds, ld)
        print("Fetching...")
        time.sleep(180) 

if __name__ == "__main__":
    main()
