//Generated by wsdl2apex

public class addressclean {
    public class addresscleanListRequest_element {
        public String adrstring;
        public String zipcode;
        public String city;
        public String cutputtype;
        private String[] adrstring_type_info = new String[]{'adrstring','addressclean',null,'1','1','false'};
        private String[] zipcode_type_info = new String[]{'zipcode','addressclean',null,'1','1','false'};
        private String[] city_type_info = new String[]{'city','addressclean',null,'1','1','false'};
        private String[] cutputtype_type_info = new String[]{'cutputtype','addressclean',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'addressclean','true','false'};
        private String[] field_order_type_info = new String[]{'adrstring','zipcode','city','cutputtype'};
    }
    public class addresscleanSoap {
        public String endpoint_x = 'http://ni-extapp01.bredband.local/webservices/addressclean/cgi-bin/addressclean.cgi';
        public Map<String,String> inputHttpHeaders_x;
        public Map<String,String> outputHttpHeaders_x;
        public String clientCertName_x;
        public String clientCert_x;
        public String clientCertPasswd_x;
        public Integer timeout_x;
        private String[] ns_map_type_info = new String[]{'addressclean', 'addressclean'};
        public addressclean.addresscleanListResponse_element addresscleanListRequest(String adrstring,String zipcode,String city,String cutputtype) {
            addressclean.addresscleanListRequest_element request_x = new addressclean.addresscleanListRequest_element();
            addressclean.addresscleanListResponse_element response_x;
            request_x.adrstring = adrstring;
            request_x.zipcode = zipcode;
            request_x.city = city;
            request_x.cutputtype = cutputtype;
            Map<String, addressclean.addresscleanListResponse_element> response_map_x = new Map<String, addressclean.addresscleanListResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'addressclean/addresscleanListRequest',
              'addressclean',
              'addresscleanListRequest',
              'addressclean',
              'addresscleanListResponse',
              'addressclean.addresscleanListResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x;
        }
    }
    public class addresscleanListResponse_element {
        public String street;
        public String streetnum;
        public String portletter;
        public String zipcode;
        public String city;
        public String region;
        public String county;
        public String municipality;
        public String municipalitypart;
        public String parish;
        public String province;
        public String citypart;
        public String popularname;
        public String rt90x;
        public String rt90y;
        public String latitude;
        public String longitude;
        public String property;
        public String telsite;
        private String[] street_type_info = new String[]{'street','addressclean',null,'1','1','false'};
        private String[] streetnum_type_info = new String[]{'streetnum','addressclean',null,'1','1','false'};
        private String[] portletter_type_info = new String[]{'portletter','addressclean',null,'1','1','false'};
        private String[] zipcode_type_info = new String[]{'zipcode','addressclean',null,'1','1','false'};
        private String[] city_type_info = new String[]{'city','addressclean',null,'1','1','false'};
        private String[] region_type_info = new String[]{'region','addressclean',null,'1','1','false'};
        private String[] county_type_info = new String[]{'county','addressclean',null,'1','1','false'};
        private String[] municipality_type_info = new String[]{'municipality','addressclean',null,'1','1','false'};
        private String[] municipalitypart_type_info = new String[]{'municipalitypart','addressclean',null,'1','1','false'};
        private String[] parish_type_info = new String[]{'parish','addressclean',null,'1','1','false'};
        private String[] province_type_info = new String[]{'province','addressclean',null,'1','1','false'};
        private String[] citypart_type_info = new String[]{'citypart','addressclean',null,'1','1','false'};
        private String[] popularname_type_info = new String[]{'popularname','addressclean',null,'1','1','false'};
        private String[] rt90x_type_info = new String[]{'rt90x','addressclean',null,'1','1','false'};
        private String[] rt90y_type_info = new String[]{'rt90y','addressclean',null,'1','1','false'};
        private String[] latitude_type_info = new String[]{'latitude','addressclean',null,'1','1','false'};
        private String[] longitude_type_info = new String[]{'longitude','addressclean',null,'1','1','false'};
        private String[] property_type_info = new String[]{'property','addressclean',null,'1','1','false'};
        private String[] telsite_type_info = new String[]{'telsite','addressclean',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'addressclean','true','false'};
        private String[] field_order_type_info = new String[]{'street','streetnum','portletter','zipcode','city','region','county','municipality','municipalitypart','parish','province','citypart','popularname','rt90x','rt90y','latitude','longitude','property','telsite'};
    }
}