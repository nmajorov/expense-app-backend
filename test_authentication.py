#!/usr/bin/env python
import requests


# curl -v -X POST --data  '{"account":"niko","passwd":"Geneva2022"}' --header "Content-Type: application/json"  http://localhost:7000/login

if __name__ == "__main__":
    headers = {"Content-Type": "application/json, charset=utf-8"}
    r = requests.post(
        "http://localhost:7000/auth/login",
        json={"username": "joe", "passwd": "secret"},
        headers=headers,
    )

    assert r.status_code == 200
    token: str = ""
    headers_response = r.headers.items()
    print("\n\n Status:{} \n".format(r.status_code))
    for k, v in headers_response:
        print("{0}:{1}\n".format(k, v))
        # Extract the Bearer token
        if v.startswith("Bearer "):
            token = v.split(" ")[1]
            print("\found token {}".format(token))

    if len(token) == 0:
        print("no token found in response\n")
        exit(1) 

    print("\n call server with token")

    headers = {"Authorization": f"Bearer {token}"}
    print("request headers: \n{}".format(headers))
    r = requests.get("http://127.0.0.1:7000/account/info?username=joe", headers=headers)
    print(
        "\n get response from server: status {0}\n {1} \n ".format(
            r.status_code, r.text
        )
    )
    assert r.status_code == 200

#
# print("\n get response from server: status {0}\n {1} \n ".format(r.status_code,r.json()))
