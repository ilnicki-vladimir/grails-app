package grailstestproject

class GeocoderService {
    static transactional = true
    def base = 'http://maps.google.com/maps/api/geocode/xml?'
    def slurper = new XmlSlurper()
    def fillInLatLong(Client client){
        def params = [sensor:false, address:[client.street,'UK'].collect {
            URLEncoder.encode(it,'UTF-8')}.join(',+')]

        def url = base + params.collect {k,v -> "$k=$v"}.join('&')
        def response = slurper.parse(url)
        println url
        client.latitude = response.result.geometry.location.lat.toDouble()
        client.longitude = response.result.geometry.location.lat.toDouble()
        println "$client.latitude,$client.longitude"
    }

}
