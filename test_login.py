#!/usr/bin/env python
import requests


# curl -v -X POST --data  '{"account":"niko","passwd":"Geneva2022"}' --header "Content-Type: application/json"  http://localhost:7000/login

if __name__ == '__main__':
    headers = {"Content-Type": "application/json, charset=utf-8"}
    r = requests.post("http://localhost:7000/auth/login",json={'username':'joe','passwd':'secret'},
                   headers=headers)

    assert r.status_code == 200

    headers_response = r.headers.items()
    print("\n\n Status:{} \n".format(r.status_code))
    for k ,v in headers_response :
        print("{0}:{1}\n".format(k,v))
    
    # Print all request headers
    for header, value in r.headers.items():
        print(f"{header}: {value}")



    #//print("got session cookie: {0} \n".format(session))
 #   print("\n call server status with session")
#    headers = {"Cookie": "{0}".format(session)}
 #   r = requests.get("http://localhost:7000/status",headers=headers)
  #  print("\n get response from server: status {0}\n {1} \n ".format(r.status_code,r.text))
   # assert r.status_code == 200

   #
  # print("\n get response from server: status {0}\n {1} \n ".format(r.status_code,r.json()))
