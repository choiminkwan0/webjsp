<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>전국 캠핑장 현황</title>
    <script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=82520504bc2544e0b03fb63c86f25417&libraries=services,clusterer"></script>
</head>
<body>
    <h1>전국 캠핑장 현황</h1>
    <div id="map" style="width:100%; height:700px;"></div>

    <script>
        const lat = 36.3492506;
        const lng = 127.3776511;

        var mapContainer = document.getElementById('map'); // 지도를 표시할 div
        var mapOption = {
            center: new kakao.maps.LatLng(lat, lng), // 지도의 중심좌표
            level: 14 // 지도의 확대 레벨
        };
        // 지도를 표시할 div와 지도 옵션으로 지도를 생성합니다
        var map = new kakao.maps.Map(mapContainer, mapOption);

        // 마커 클러스터러 생성
        var clusterer = new kakao.maps.MarkerClusterer({
            map: map, // 마커들을 클러스터로 관리하고 표시할 지도 객체
            averageCenter: true, // 클러스터에 포함된 마커들의 평균 위치를 클러스터 마커 위치로 설정
            minLevel: 10 // 클러스터 할 최소 지도 레벨
        });

        // 공공데이터 API 호출
        const url = 'https://apis.data.go.kr/B551011/GoCamping/basedList?serviceKey=c3f1e784dd475be7478cee128a2ec7ff24ef179011e4dec95820c42e186483a7&numOfRows=10&pageNo=1&MobileOS=ETC&MobileApp=AppTest&_type=json';

        fetch(url)
            .then(result => result.json())
            .then(json => {
                // 데이터 구조 확인 후 실제 데이터 경로 설정 (API 버전에 따라 다를 수 있음)
                const data = json.response.body.items.item;
                console.log(data);
                var markers = [];

                for (let i = 0; i < data.length; i++) {
                    var marker = new kakao.maps.Marker({
                        position: new kakao.maps.LatLng(data[i].mapY, data[i].mapX)
                    });

                    markers.push(marker);

                    var infowindow = new kakao.maps.InfoWindow({
                        content: '<div style="padding:5px; font-size:12px;">' + data[i].facItNm + '</div>'
                    });

                    kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
                    kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
                }

                clusterer.addMarkers(markers); // 모든 마커를 클러스터러에 추가
            })
            .catch(error => console.log('데이터 로드 오루:', error));

        function makeOverListener(map, marker, infowindow) {
            return function() { infowindow.open(map, marker); };
        }

        function makeOutListener(infowindow) {
            return function() { infowindow.close(); };
        }
    </script>
</body>
</html>