import requests
import xml.sax #sax=凾式庫
class BikeHadler(xml.sax.ContentHandler):
    def __init__(self):
        self.station=""
        self.rent=""
        self.space=""
    def startElement(self, name, attrs):
        self.tag = name
        
        
    def characters(self, content):
        if self.tag=="StationName":
            self.station=content
        elif self.tag=="AvaliableBikeCount":
            self.rent=content
        elif self.tag=="AvaliableSpaceCount":
            self.space=content
            
            
    def endElement(self, name):
        if self.tag=="StationName":
            print("Station:",self.station)
        elif self.tag=="AvaliableBikeCount":
            print("AvaliableRent:",self.rent)
        elif self.tag=="AvaliableSpaceCount":
            print("AvaliableParkSpace:",self.space)

if __name__=="__main__":
    parser=xml.sax.make_parser()
    #setting parser
    bike=BikeHadler()
    #create class
    parser.setContentHandler(bike)
    #setting handler
    url="http://tbike-data.tainan.gov.tw/Service/StationStatus/Xml"
    data=requests.get(url)
    data.encoding="UTF-8" 
    data=data.text.strip()
    fileName="bike.xml"
    with open(fileName,"w",encoding="UTF-8") as fobj:
        fobj.write(data)
    parser.parse(fileName)
    
    
        