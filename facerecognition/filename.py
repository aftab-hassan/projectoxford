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

userid_list = [];
age_list = [];
gender_list = [];

filename = 'C:/Users/aftab/Desktop/facerecognition/image/b0b737b5ffaa3a369c28c3b312524f94.jpg'
path="C:/Users/aftab/Desktop/facerecognition/image"

for filename in glob.iglob(path+'/*.jpg'):
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
   #print(age);
   #print(gender);
   userid=filename.split("/")
   userid=userid[5]
   userid=userid.split("\\")
   #print(userid[1])
   userid_list.append(userid[1])
   age_list.append(age)
   gender_list.append(gender)
   conn.close()

print(age_list)
print(gender_list)
print(userid_list)