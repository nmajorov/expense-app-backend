#!/usr/bin/env python
import requests


# curl -v -X POST --data  '{"account":"niko","passwd":"Geneva2022"}' --header "Content-Type: application/json"  http://localhost:7000/login

if __name__ == '__main__':
    headers = {"Content-Type": "application/json, charset=utf-8"}
    r = requests.options("http://localhost:7000/auth/login",
                   headers=headers)

    print("\n\n response:{} \n".format(r.status_code))
    assert r.status_code == 200

    headers_response = r.headers.items()
    print("\n\n Status:{} \n".format(r.status_code))
    for k ,v in headers_response :
        print("{0}:{1}\n".format(k,v))
