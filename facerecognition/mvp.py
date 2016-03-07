import os,http, http.client, urllib.request, urllib.parse, urllib.error, base64

headers = {
   # Basic Authorization Sample
   'Content-type': 'application/octet-stream',
}

params = urllib.parse.urlencode({
   # Specify your subscription key
   'subscription-key': '92db9bf775fb44c1a014910840805169',
   # Specify values for optional parameters, as needed
   'analyzesFaceLandmarks': 'true',
   'analyzesAge': 'true',
   'analyzesGender': 'true',
   'analyzesHeadPose': 'true',
})

try:
   conn = http.client.HTTPSConnection('api.projectoxford.ai')
   conn.request("POST", "/face/v0/detections?%s" % params, open('b0e9c2c41eb935c82882b36e7f1e40c6.jpg', "rb").read(), headers)
   print("send request")
   response = conn.getresponse()
   data = response.read()
   print(data)
   conn.close()
except Exception as e:
   print("[Errno {0}] {1}".format(e.errno, e.strerror))