########### Python 2.7 #############
import httplib, urllib, base64,json,pickle,glob,time

headers = {
    # Request headers
    'Content-Type': 'application/octet-stream',
    'Ocp-Apim-Subscription-Key': '92db9bf775fb44c1a014910840805169'
	#8f37250321f247d495ce049f5a04afb5
}

params = urllib.urlencode({
    # Request parameters
    'returnFaceId': 'true',
    'returnFaceLandmarks':'true',
    'returnFaceAttributes':'age,gender,headPose,smile,facialHair'
})

filename = 'C:/Users/aftab/Desktop/facerecognition/image/b5dbd7001a42cc31e5c881b07bc3cc33.jpg'

path="C:/Users/aftab/Desktop/facerecognition/"

for filename in glob.iglob(path+'image/*.jpg'):
   f = open(filename, "rb")
   body = f.read()
   f.close()
   conn = httplib.HTTPSConnection('api.projectoxford.ai')
   conn.request("POST", "https://api.projectoxford.ai/face/v1.0/detect?%s" % params, body, headers)
   response = conn.getresponse()
   data = response.read()
   jsondata = json.loads(data)
   faceId = jsondata[0]['faceId']
   age = jsondata[0]['faceAttributes']['age']
   gender = jsondata[0]['faceAttributes']['gender']
   print(data);
   conn.close()
