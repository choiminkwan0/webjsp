<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>전국 캠핑장 현황</title>
    <script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=82520504bc2544e0b03fb63c86f25417&libraries=services"></script>
</head>
<body>
    <h1>전국 캠핑장 현황</h1>
    <div id="map" style="width:100%; height:700px;"></div>

    <script>
        const lat = 36.3492506;
        const lng = 127.3776511;

        var mapContainer = document.getElementById('map');
        var mapOption = {
            center: new kakao.maps.LatLng(lat, lng),
            level: 14
        };
        var map = new kakao.maps.Map(mapContainer, mapOption);

        // 마커 클러스터러 생성
        var clusterer = new kakao.maps.MarkerClusterer({
            map: map.
            averageCenter: true,
            minLevel: 10
        });

        // 공공데이터 API 호출
        const url = 'https://apis.data.go.kr/B551011/GoCamping/basedList?serviceKey=c3f1e784dd475be7478cee128a2ec7ff24ef179011e4dec95820c42e186483a7&numOfRows=10&pageNo=1&MobileOS=ETC&MobileApp=AppTest&_type=json';
