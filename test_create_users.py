#!/usr/bin/env python
import json,requests


# curl -v -X POST --data  '{"account":"niko","passwd":"Geneva2022"}' --header "Content-Type: application/json"  http://localhost:7000/login

if __name__ == "__main__":
    headers = {"Content-Type": "application/json, charset=utf-8"}
    payload = """
       {
        "username": "joe",
        "email": "joe@joebiden.com",
        "password": "secret",
        "name": "Joe",
        "last_name": "Biden"
        }

    """

    json_data = json.loads(payload)

    r = requests.post(
        "http://localhost:7000/auth/register", json=json_data, headers=headers
    )


    print("\n\n response status code:{} \n".format(r.status_code))

    if r.status_code == 409:
        print("\n Account already created for this email")
        exit(0)

    assert r.status_code == 201

    headers_response = r.headers.items()
    print("\n\n Status:{} \n".format(r.status_code))
    for k, v in headers_response:
        print("{0}:{1}\n".format(k, v))

