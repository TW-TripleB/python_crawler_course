import requests
import xml.sax


class BusHandler(xml.sax.ContentHandler):
    def startElement(self, name, attrs):
        if name == "Route":
            print("ID:",attrs["ID"])
            print("Route:",attrs["nameZh"])
            print("起終點:",attrs["ddesc"])
            
if __name__=="__main__":
    parser=xml.sax.make_parser()
    #setting parser
    bus=BusHandler()
    #create class
    parser.setContentHandler(bus)
    #setting handler
    url="http://ibus.tbkc.gov.tw/xmlbus/StaticData/GetRoute.xml"
    data=requests.get(url)
    data.encoding="UTF-8" 
    data=data.text.strip()
    fileName="bus.xml"
    with open(fileName,"w",encoding="UTF-8") as fobj:
        fobj.write(data)
    parser.parse(fileName)