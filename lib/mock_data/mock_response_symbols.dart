/// http://localhost:8080/api/v1/content/symbols?search=all&limit=50&offset=0
const mockResponseHanspeakSymbols = '''
{
    "ok": true,
    "err": null,
    "data": [
        {
            "id": 1,
            "symbol_title": "단무지",
            "symbol_excerpt": "중국집, 무, 노란색, 피클, 짜장면, 짬뽕, 김밥, 무절이, 짠지",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 342,
                "medium_title": "단무지",
                "medium_path": "assets/symbols/hanspeak/A-A-01-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/A-A-01-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 2,
            "symbol_title": "버튼 눌러요",
            "symbol_excerpt": "빨래, 일반 세탁기, 버튼, 스위치, 누르다",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 343,
                "medium_title": "버튼 눌러요",
                "medium_path": "assets/symbols/hanspeak/AA-A201.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AA-A201.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 3,
            "symbol_title": "문 열어요",
            "symbol_excerpt": "빨래, 드럼 세탁기, 빨래, 넣다, 문, 열다, 개봉해요, 개봉하다, 잠가요, 잠그다, 닫다, 닫아요",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 344,
                "medium_title": "문 열어요",
                "medium_path": "assets/symbols/hanspeak/AA-A202.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AA-A202.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 4,
            "symbol_title": "빨래 넣어요",
            "symbol_excerpt": "빨래, 드럼 세탁기, 넣다, 담아요, 담다, 꺼내요, 꺼내다, 빼요, 빼다",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 345,
                "medium_title": "빨래 넣어요",
                "medium_path": "assets/symbols/hanspeak/AA-A203.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AA-A203.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 5,
            "symbol_title": "세제 넣어요",
            "symbol_excerpt": "빨래, 드럼 세탁기, 세제, 넣다, 담아요, 담다, 꺼내요, 꺼내다, 빼요, 빼다",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 346,
                "medium_title": "세제 넣어요",
                "medium_path": "assets/symbols/hanspeak/AA-A204.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AA-A204.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 6,
            "symbol_title": "섬유유연제 넣어요",
            "symbol_excerpt": "빨래, 드럼 세탁기, 섬유 유연제, 넣다, 담아요, 담다, 꺼내요, 꺼내다, 빼요, 빼다",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 347,
                "medium_title": "섬유유연제 넣어요",
                "medium_path": "assets/symbols/hanspeak/AA-A205.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AA-A205.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 7,
            "symbol_title": "버튼 눌러요",
            "symbol_excerpt": "빨래, 드럼 세탁기, 작동해요, 버튼, 스위치, 누르다",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 348,
                "medium_title": "버튼 눌러요",
                "medium_path": "assets/symbols/hanspeak/AA-A206.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AA-A206.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 8,
            "symbol_title": "옷",
            "symbol_excerpt": "티, 티셔츠, 반팔 티, 긴팔 티, 치마, 바지, 의복, 의류, 피복, 실오라기, 의상, 옷가지, 겉옷, 속옷",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 349,
                "medium_title": "옷",
                "medium_path": "assets/symbols/hanspeak/AA-A207.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AA-A207.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 9,
            "symbol_title": "옷",
            "symbol_excerpt": "티, 티셔츠, 반팔 티, 긴팔 티, 치마, 바지, 의복, 의류, 피복, 실오라기, 의상, 옷가지, 겉옷, 속옷",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 350,
                "medium_title": "옷",
                "medium_path": "assets/symbols/hanspeak/AA-A208.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AA-A208.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 10,
            "symbol_title": "속옷",
            "symbol_excerpt": "브래지어, 브라, 팬티, 러닝, 러닝셔츠, 내의, 내복, 겉옷",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 351,
                "medium_title": "속옷",
                "medium_path": "assets/symbols/hanspeak/AA-A209.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AA-A209.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 11,
            "symbol_title": "탈수해요",
            "symbol_excerpt": "빨래, 드럼 세탁기, 물기 빼요, 빼다, 탈수하다, 빠져요, 빠지다, 제거해요, 제거하다",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 352,
                "medium_title": "탈수해요",
                "medium_path": "assets/symbols/hanspeak/AA-A2010.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AA-A2010.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 12,
            "symbol_title": "세탁기",
            "symbol_excerpt": "빨래, 일반 세탁기, 기계, 가전제품, 전자기기",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 353,
                "medium_title": "세탁기",
                "medium_path": "assets/symbols/hanspeak/AA-A2011.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AA-A2011.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 13,
            "symbol_title": "문 열어요",
            "symbol_excerpt": "빨래, 일반 세탁기, 열다, 꺼내요, 꺼내다, 문, 개봉해요, 개봉하다, 잠가요, 잠그다, 닫아요, 닫다",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 354,
                "medium_title": "문 열어요",
                "medium_path": "assets/symbols/hanspeak/AA-A2012.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AA-A2012.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 14,
            "symbol_title": "빨래 넣어요",
            "symbol_excerpt": "빨래, 일반 세탁기, 넣다, 담아요, 담다, 꺼내요, 꺼내다, 빼요, 빼다",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 355,
                "medium_title": "빨래 넣어요",
                "medium_path": "assets/symbols/hanspeak/AA-A2013.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AA-A2013.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 15,
            "symbol_title": "세제 넣어요",
            "symbol_excerpt": "빨래, 일반 세탁기, 세제, 넣다, 담아요, 담다, 꺼내요, 꺼내다, 빼요, 빼다",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 356,
                "medium_title": "세제 넣어요",
                "medium_path": "assets/symbols/hanspeak/AA-A2014.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AA-A2014.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 16,
            "symbol_title": "섬유유연제 넣어요",
            "symbol_excerpt": "빨래, 일반 세탁기, 세제, 섬유유연제, 넣다, 담아요, 담다, 꺼내요, 꺼내다, 빼요, 빼다, 정전기",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 357,
                "medium_title": "섬유유연제 넣어요",
                "medium_path": "assets/symbols/hanspeak/AA-A2015.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AA-A2015.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 17,
            "symbol_title": "리본",
            "symbol_excerpt": "세월호, 무사귀환, 생환, 노란색, 달아요, 달다, 나비 효과, 추모, 하나의 작은 움직임이 큰 기적을, 침몰, 사고, 희생자",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 358,
                "medium_title": "리본",
                "medium_path": "assets/symbols/hanspeak/AAA-A-01-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAA-A-01-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 18,
            "symbol_title": "뜨거워요",
            "symbol_excerpt": "불, 조심해요, 데어요, 뜨겁게, 뜨거운, 화상, 뜨겁다, 조심하다, 데다, 온도가 높아요, 높다, 열, 화끈해요, 화끈하다, 끓어요, 끓다, 차가워요, 차갑다, 차요, 차다, 극열해요, 극열하다",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 359,
                "medium_title": "뜨거워요",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-01-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-01-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 19,
            "symbol_title": "차가워요",
            "symbol_excerpt": "얼음, 동상, 차갑다, 차가운, 차갑게, 서늘해요, 서늘하다, 매정해요, 매정하다, 매서워요, 매섭다, 냉랭해요, 냉랭하다, 차요, 차다, 더워요, 덥다, 뜨거워요, 뜨겁다",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 360,
                "medium_title": "차가워요",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-02-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-02-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 20,
            "symbol_title": "에어컨",
            "symbol_excerpt": "여름, 켜요, 켜다, 시원해요, 시원하다, 에어컨디셔너, 바람, 가전제품, 가전, 기기, 기계, 냉방병",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 361,
                "medium_title": "에어컨",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-03-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-03-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 21,
            "symbol_title": "선풍기",
            "symbol_excerpt": "여름, 켜요, 켜다, 시원해요, 시원하다, 날개, 바람, 가전제품, 가전, 기계, 기기, 팬, 강풍, 약풍, 미풍",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 362,
                "medium_title": "선풍기",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-04-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-04-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 22,
            "symbol_title": "부채",
            "symbol_excerpt": "여름, 시원해요, 시원하다, 부쳐요, 부치다, 바람, 부채질",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 363,
                "medium_title": "부채",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-05-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-05-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 23,
            "symbol_title": "더워요",
            "symbol_excerpt": "날씨, 여름, 온도가 높아요, 높다, 뜨거워요, 뜨겁다, 후텁지근해요, 후텁지근하다, 쪄요, 찌다, 무더워요, 무덥다, 훈훈해요, 훈훈하다, 시원해요, 시원하다, 싸늘해요, 싸늘하다, 차요, 차다, 추워요, 춥다",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 364,
                "medium_title": "더워요",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-06-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-06-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 24,
            "symbol_title": "추워요",
            "symbol_excerpt": "날씨, 겨울, 춥다, 시원해요, 시원하다, 싸늘해요, 싸늘하다, 차요, 차다, 온도가 낮아요, 낮다, 쌀쌀해요, 쌀쌀하다, 차가워요, 차갑다, 싸늘해요, 싸늘하다, 한랭해요, 한랭하다, 을씨년스러워요, 을씨년 스럽다, 음산해요, 음산하다, 떨려요, 떨리다, 더워요, 덥다",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 365,
                "medium_title": "추워요",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-07-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-07-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 25,
            "symbol_title": "켜요",
            "symbol_excerpt": "불, 전등, 스위치, 전기등, 점등, 켜다, 꺼요, 끄다 ",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 366,
                "medium_title": "켜요",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-08-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-08-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 26,
            "symbol_title": "꺼요",
            "symbol_excerpt": "불, 전등, 스위치, 전기등, 끄다, 소등, 멸등, 켜요, 켜다",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 367,
                "medium_title": "꺼요",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-09-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-09-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 27,
            "symbol_title": "수영해요",
            "symbol_excerpt": "여가, 스포츠, 운동, 놀이, 수영장, 재활, 수영하다, 헤엄쳐요, 헤엄치다",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 368,
                "medium_title": "수영해요",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-10-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-10-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 28,
            "symbol_title": "더워요",
            "symbol_excerpt": "날씨, 여름, 온도가 높아요, 높다, 뜨거워요, 뜨겁다, 후텁지근해요, 후텁지근하다, 쪄요, 찌다, 무더워요, 무덥다, 훈훈해요, 훈훈하다, 시원해요, 시원하다, 싸늘해요, 싸늘하다, 차요, 차다, 추워요, 춥다",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 369,
                "medium_title": "더워요",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-11-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-11-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 29,
            "symbol_title": "추워요",
            "symbol_excerpt": "날씨, 겨울, 춥다, 시원해요, 시원하다, 싸늘해요, 싸늘하다, 차요, 차다, 온도가 낮아요, 낮다, 쌀쌀해요, 쌀쌀하다, 차가워요, 차갑다, 싸늘해요, 싸늘하다, 한랭해요, 한랭하다, 을씨년스러워요, 을씨년 스럽다, 음산해요, 음산하다, 떨려요, 떨리다, 더워요, 덥다",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 370,
                "medium_title": "추워요",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-12-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-12-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 30,
            "symbol_title": "아이스크림",
            "symbol_excerpt": "음식, 간식, 소프트 아이스크림, 하드, 막대, 차가워요, 차갑다, 달아요, 달다, 콘, 크림, 셔벗, 빙수, 케이크, 샌드위치, 젤라토, 아포가토",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 371,
                "medium_title": "아이스크림",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-13-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-13-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 31,
            "symbol_title": "선글라스",
            "symbol_excerpt": "여름, 안경, 눈, 햇빛, 자외선 차단, 패션, 악세사리, 잡화, 보호경, 색깔, 색안경, 보안경",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 372,
                "medium_title": "선글라스",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-14-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-14-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 32,
            "symbol_title": "안경",
            "symbol_excerpt": "눈, 나빠요, 근시, 원시, 약시, 시력, 패션, 악세사리, 잡화, 바람, 먼지, 햇빛, 선글라스, 고글, 색안경, 보호경",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 373,
                "medium_title": "안경",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-15-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-15-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 33,
            "symbol_title": "써요",
            "symbol_excerpt": "눈, 안경, 나빠요, 나쁘다, 근시, 원시, 약시, 쓰다, 착용해요, 착용하다, 벗어요, 벗다, 껴요, 끼다",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 374,
                "medium_title": "써요",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-16-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-16-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 34,
            "symbol_title": "써요",
            "symbol_excerpt": "눈, 안경, 나빠요, 나쁘다, 근시, 원시, 약시, 쓰다, 착용해요, 착용하다, 벗어요, 벗다, 껴요, 끼다",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 375,
                "medium_title": "써요",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-17-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-17-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 35,
            "symbol_title": "벗어요",
            "symbol_excerpt": "눈, 안경, 나빠요, 나쁘다, 근시, 원시, 약시, 벗어요, 벗다, 빼요, 빼다",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 376,
                "medium_title": "벗어요",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-18-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-18-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 36,
            "symbol_title": "벗어요",
            "symbol_excerpt": "눈, 안경, 나빠요, 나쁘다, 근시, 원시, 약시, 벗어요, 벗다, 빼요, 빼다",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 377,
                "medium_title": "벗어요",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-19-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-19-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 37,
            "symbol_title": "인사해요",
            "symbol_excerpt": "안녕하세요, 감사합니다, 어서오세요, 공손, 배꼽손, 안녕히 가세요, 안녕히 계세요, 인사하다, 안녕하다, 겸손",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 378,
                "medium_title": "인사해요",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-20-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-20-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 38,
            "symbol_title": "인사해요",
            "symbol_excerpt": "안녕하세요, 감사합니다, 어서오세요, 공손, 배꼽손, 안녕히 가세요, 안녕히 계세요, 인사하다, 안녕하다, 겸손",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 379,
                "medium_title": "인사해요",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-21-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-21-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 39,
            "symbol_title": "눈",
            "symbol_excerpt": "신체 부위, 얼굴, 시력, 안목, 시선, 눈길, 안구, 시각, 눈동자, 각막, 수정체, 망막, 봐요, 보다, 감각",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 380,
                "medium_title": "눈",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-22-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-22-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 40,
            "symbol_title": "귀",
            "symbol_excerpt": "신체 부위, 얼굴, 청력, 귓바퀴, 들어요, 듣다, 감각",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 381,
                "medium_title": "귀",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-23-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-23-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 41,
            "symbol_title": "입",
            "symbol_excerpt": "신체, 얼굴, 입술, 먹어요, 먹다, 미각, 감각, 말, 입버릇",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 382,
                "medium_title": "입",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-24-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-24-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 42,
            "symbol_title": "들어와요",
            "symbol_excerpt": "들어오다, 들어서요, 들어서다, 들어가다, 들어가요, 문 열어요, 열다, 입장해요, 입장하다, 와요, 오다, 이동해요, 이동하다, 움직여요, 움직이다, 나가요, 나가다, 들어가요, 들어가다",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 383,
                "medium_title": "들어와요",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-25-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-25-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 43,
            "symbol_title": "들어와요",
            "symbol_excerpt": "들어오다, 들어서요, 들어서다, 들어가다, 들어가요, 문 열어요, 열다, 입장해요, 입장하다, 이동해요, 이동하다, 움직여요, 움직이다, 와요, 오다, 나가요, 나가다, 들어가요, 들어가다",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 384,
                "medium_title": "들어와요",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-26-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-26-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 44,
            "symbol_title": "나가요",
            "symbol_excerpt": "나가다, 문 열어요, 열다, 나와요, 나오다, 이동해요, 이동하다, 움직여요, 움직이다, 꺼져요, 꺼지다, 가요, 가다, 물러나요, 물러나다, 후퇴해요, 후퇴하다, 들어가요, 들어가다, 들어와요, 들어오다",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 385,
                "medium_title": "나가요",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-27-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-27-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 45,
            "symbol_title": "나가요",
            "symbol_excerpt": "나가다, 문 열어요, 열다, 나와요, 나오다, 이동해요, 이동하다, 움직여요, 움직이다, 꺼져요, 꺼지다, 가요, 가다, 물러나요, 물러나다, 후퇴해요, 후퇴하다, 들어가요, 들어가다, 들어와요, 들어오다",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 386,
                "medium_title": "나가요",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-28-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-28-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 46,
            "symbol_title": "고마워요",
            "symbol_excerpt": "수화, 수어, 고맙다, 고맙습니다, 감사하다, 감사합니다, 감사해요, 은혜롭다, 은혜로워요",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 387,
                "medium_title": "고마워요",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-29-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-29-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 47,
            "symbol_title": "떠요",
            "symbol_excerpt": "눈, 뜨다, 벌려요, 벌리다, 개안해요, 개안하다, 멀어요, 멀다, 감아요, 감다",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 388,
                "medium_title": "떠요",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-30-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-30-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 48,
            "symbol_title": "감아요",
            "symbol_excerpt": "눈, 감다, 덮어요, 덮다, 자요, 자다, 졸아요, 졸다, 떠요, 뜨다",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 389,
                "medium_title": "감아요",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-31-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-31-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 49,
            "symbol_title": "와요",
            "symbol_excerpt": "오다, 오세요, 들어와요, 들어오다",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 390,
                "medium_title": "와요",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-32-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-32-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 50,
            "symbol_title": "와요",
            "symbol_excerpt": "오다, 오세요, 들어와요, 들어오다",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 391,
                "medium_title": "와요",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-33-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-33-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 51,
            "symbol_title": "신발",
            "symbol_excerpt": "신, 운동화, 구두, 슬리퍼, 로퍼, 기능화, 정장화, 힐, 펌프스, 단화, 샌들, 캐주얼화, 부츠, 워커, 스니커즈, 슬립온, 아쿠아슈즈, 쪼리, 켤레",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 392,
                "medium_title": "신발",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-34-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-34-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 52,
            "symbol_title": "신어요",
            "symbol_excerpt": "신, 신발, 신다, 운동화, 구두, 슬리퍼, 로퍼, 기능화, 정장화, 힐, 펌프스, 단화, 샌들, 캐주얼화, 부츠, 워커, 스니커즈, 슬립온, 아쿠아슈즈, 쪼리, 착용해요, 착용하다, 벗어요, 벗다",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 393,
                "medium_title": "신어요",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-35-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-35-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 53,
            "symbol_title": "벗어요",
            "symbol_excerpt": "신, 신발, 벗다, 없애다, 없애요",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 394,
                "medium_title": "벗어요",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-36-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-36-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 54,
            "symbol_title": "신어요",
            "symbol_excerpt": "신다, 페이크 삭스, 스니커즈 양말, 스포츠 양말, 정장 양말, 수면 양말, 착용해요, 착용하다, 벗어요, 벗다",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 395,
                "medium_title": "신어요",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-37-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-37-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 55,
            "symbol_title": "벗어요",
            "symbol_excerpt": "신다, 페이크 삭스, 스니커즈 양말, 스포츠 양말, 정장 양말, 수면 양말, 벗다, 없애다, 없애요",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 396,
                "medium_title": "벗어요",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-38-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-38-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 56,
            "symbol_title": "실내화",
            "symbol_excerpt": "신발, 슬리퍼",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 397,
                "medium_title": "실내화",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-39-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-39-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 57,
            "symbol_title": "꺼내요",
            "symbol_excerpt": "꺼내다, 넣다, 넣어요, 신발, 신발장, 내놓다, 내놓아요, 끄집어내다, 끄집어내요, 들어내다, 들어내요, 내요, 내다",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 398,
                "medium_title": "꺼내요",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-40-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-40-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 58,
            "symbol_title": "넣어요",
            "symbol_excerpt": "넣다, 놓다, 놓아요, 담다, 담아요, 빼다, 빼요, 내다, 내요, 꺼내다, 꺼내요, 신발, 신발장",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 399,
                "medium_title": "넣어요",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-41-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-41-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 59,
            "symbol_title": "봐요",
            "symbol_excerpt": "보다, 눈, 발견, 읽다, 읽어요, 지키다, 지켜요, 맡다, 맡아요, 알아보다, 알아봐요, 구경해요, 구경하다, 평가해요, 평가하다, 관람해요, 관람하다, 보살피다, 보살펴요",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 400,
                "medium_title": "봐요",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-42-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-42-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 60,
            "symbol_title": "들어요",
            "symbol_excerpt": "듣다, 음악, 소리, 귀, 청취하다, 청취해요,  경청하다, 경청해요, 알아먹다, 알아먹어요, 이야기 하다, 이야기 해요",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 401,
                "medium_title": "들어요",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-43-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-43-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 61,
            "symbol_title": "말해요",
            "symbol_excerpt": "말하다, 대화하다, 대화해요, 입, 의견, 한국어, 진술하다, 진술해요, 언급하다, 언급해요, 일컫다, 일컬어요, 청하다, 청해요, 털어놓다, 털어놔요, 토로하다, 토로해요, 신고하다, 신고해요, 청탁하다, 청탁해요, 잔소리",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 402,
                "medium_title": "말해요",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-44-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-44-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 62,
            "symbol_title": "안녕",
            "symbol_excerpt": "안녕하다, 안녕해요, 인사, 제스처, 몸짓, 반가워, 잘가, 반말, 손 흔들다, 손 흔들어요",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 403,
                "medium_title": "안녕",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-45-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-45-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 63,
            "symbol_title": "먹어요",
            "symbol_excerpt": "먹다, 밥, 식사, 끼니, 한숟갈, 숟가락, 한 입, 삼켜요, 삼키다, 뱉다, 뱉어요, 토하다, 토해요",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 404,
                "medium_title": "먹어요",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-46-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-46-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 64,
            "symbol_title": "봐요",
            "symbol_excerpt": "보다, 눈, 발견, 읽다, 읽어요, 지키다, 지켜요, 맡다, 맡아요, 알아보다, 알아봐요, 구경해요, 구경하다, 평가해요, 평가하다, 관람해요, 관람하다, 보살피다, 보살펴요",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 405,
                "medium_title": "봐요",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-47-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-47-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 65,
            "symbol_title": "들어요",
            "symbol_excerpt": "듣다, 음악, 소리, 귀, 청취하다, 청취해요,  경청하다, 경청해요, 알아먹다, 알아먹어요, 이야기 하다, 이야기 해요",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 406,
                "medium_title": "들어요",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-48-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-48-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 66,
            "symbol_title": "말해요",
            "symbol_excerpt": "말하다, 대화하다, 대화해요, 입, 의견, 한국어, 진술하다, 진술해요, 언급하다, 언급해요, 일컫다, 일컬어요, 청하다, 청해요, 털어놓다, 털어놔요, 토로하다, 토로해요, 신고하다, 신고해요, 청탁하다, 청탁해요, 잔소리",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 407,
                "medium_title": "말해요",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-49-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-49-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 67,
            "symbol_title": "안녕",
            "symbol_excerpt": "안녕하다, 안녕해요, 인사, 제스처, 몸짓, 반가워, 잘가, 반말, 손 흔들다, 손 흔들어요",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 408,
                "medium_title": "안녕",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-50-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-50-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 68,
            "symbol_title": "먹어요",
            "symbol_excerpt": "먹다, 밥, 식사, 끼니, 한숟갈, 숟가락, 한 입, 삼켜요, 삼키다, 뱉다, 뱉어요, 토하다, 토해요",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 409,
                "medium_title": "먹어요",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-51-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-51-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 69,
            "symbol_title": "먹어요",
            "symbol_excerpt": "먹다, 식사, 끼니, 경관이식법, 레빈튜브, L-TUBE, 콧줄, 삽입, 투여, 주입",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 410,
                "medium_title": "먹어요",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-52-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-52-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 70,
            "symbol_title": "먹어요",
            "symbol_excerpt": "먹다, 식사, 끼니, 경관이식법, 레빈튜브, L-TUBE, 콧줄, 삽입, 투여, 주입",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 411,
                "medium_title": "먹어요",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-53-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-53-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 71,
            "symbol_title": "먹어요",
            "symbol_excerpt": "먹다, 식사, 끼니, 경관이식법, 레빈튜브, L-TUBE, 콧줄, 삽입, 투여, 주입",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 412,
                "medium_title": "먹어요",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-54-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-54-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 72,
            "symbol_title": "먹어요",
            "symbol_excerpt": "먹다, 식사, 끼니, 경관이식법, 레빈튜브, L-TUBE, 콧줄, 삽입, 투여, 주입",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 413,
                "medium_title": "먹어요",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-55-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-55-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 73,
            "symbol_title": "먹어요",
            "symbol_excerpt": "먹다, 식사, 끼니, 경관이식법, 레빈튜브, L-TUBE, 콧줄, 삽입, 투여, 주입",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 414,
                "medium_title": "먹어요",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-56-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-56-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 74,
            "symbol_title": "먹어요",
            "symbol_excerpt": "먹다, 식사, 끼니, 경관이식법, 레빈튜브, L-TUBE, 콧줄, 삽입, 투여, 주입",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 415,
                "medium_title": "먹어요",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-57-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-57-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 75,
            "symbol_title": "미안해요",
            "symbol_excerpt": "수어, 수화, 죄송합니다, 죄송하다, 죄송해요, 미안합니다, 미안하다, 안쓰럽다, 안쓰러워요, 유감스럽다, 유감스러워요, 송구하다, 송구해요",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 416,
                "medium_title": "미안해요",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-58-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-58-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 76,
            "symbol_title": "미안해요",
            "symbol_excerpt": "수어, 수화, 죄송합니다, 죄송하다, 죄송해요, 미안합니다, 미안하다, 안쓰럽다, 안쓰러워요, 유감스럽다, 유감스러워요, 송구하다, 송구해요",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 417,
                "medium_title": "미안해요",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-59-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-59-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 77,
            "symbol_title": "신발장",
            "symbol_excerpt": "가구, 신발, 정리해요, 넣어요, 빼요",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 418,
                "medium_title": "신발장",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-60-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-60-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 78,
            "symbol_title": "대기실",
            "symbol_excerpt": "방, 대기해요, 대기하다, 기다려요, 기다리다, 쉬어요, 쉬다",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 419,
                "medium_title": "대기실",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-61-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-61-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 79,
            "symbol_title": "대기실",
            "symbol_excerpt": "방, 대기해요, 대기하다, 기다려요, 기다리다, 쉬어요, 쉬다",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 420,
                "medium_title": "대기실",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-62-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-62-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 80,
            "symbol_title": "노크해요",
            "symbol_excerpt": "노크, 노크하다, 문, 두드리다, 두드려요, 똑똑, 손기척, 인기척",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 421,
                "medium_title": "노크해요",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-63-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-63-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 81,
            "symbol_title": "기다려요",
            "symbol_excerpt": "기다리다, 잠깐만, 멈춰요, 멈추다, 금지, 참다, 참아요, 잠시",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 422,
                "medium_title": "기다려요",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-64-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-64-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 82,
            "symbol_title": "기다려요",
            "symbol_excerpt": "기다리다, 잠깐만, 멈춰요, 멈추다, 금지, 참다, 참아요, 잠시",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 423,
                "medium_title": "기다려요",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-65-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-65-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 83,
            "symbol_title": "잠바",
            "symbol_excerpt": "옷, 의류, 의복, 옷가지, 의상, 윗옷, 겉옷, 외투, 점퍼",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 424,
                "medium_title": "잠바",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-66-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-66-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 84,
            "symbol_title": "가방",
            "symbol_excerpt": "책가방, 배낭, 백팩, 색",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 425,
                "medium_title": "가방",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-67-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-67-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 85,
            "symbol_title": "걸어요",
            "symbol_excerpt": "걸다, 놓다, 놓아요, 정리하다, 정리해요, 옷, 잠바, 점퍼, 윗옷, 겉옷, 외투, 의자",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 426,
                "medium_title": "걸어요",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-68-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-68-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 86,
            "symbol_title": "걸어요",
            "symbol_excerpt": "걸다, 정리하다, 정리해요, 가방, 책가방, 배낭, 백팩, 색, 의자",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 427,
                "medium_title": "걸어요",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-69-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-69-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 87,
            "symbol_title": "걸어요",
            "symbol_excerpt": "걸다, 옷, 옷걸이, 잠바, 점퍼, 윗옷, 겉옷 외투, 정리하다, 정리해요",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 428,
                "medium_title": "걸어요",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-70-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-70-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 88,
            "symbol_title": "앉아요",
            "symbol_excerpt": "앉다, 의자, 기다리다, 기다려요, 착석하다, 착석해요, 걸터앉다, 걸터앉아요, 서다, 서요",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 429,
                "medium_title": "앉아요",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-71-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-71-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 89,
            "symbol_title": "앉아요",
            "symbol_excerpt": "앉다, 의자, 기다리다, 기다려요, 착석하다, 착석해요, 걸터앉다, 걸터앉아요, 서다, 서요",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 430,
                "medium_title": "앉아요",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-72-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-72-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 90,
            "symbol_title": "와요",
            "symbol_excerpt": "몸짓, 제스처,  이리, 여기, 오다, 와요, 들어오다, 들어오세요, 어서오세요, 가다, 가요",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 431,
                "medium_title": "와요",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-73-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-73-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 91,
            "symbol_title": "신어요",
            "symbol_excerpt": "신다, 벗다, 벗어요, 양말, 올리다, 올려요, 착용하다, 착용해요, 벗다, 벗어요",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 432,
                "medium_title": "신어요",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-74-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-74-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 92,
            "symbol_title": "벗어요",
            "symbol_excerpt": "벗다, 양말, 내리다, 내려요, 신다, 신어요",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 433,
                "medium_title": "벗어요",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-75-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-75-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 93,
            "symbol_title": "벗어요",
            "symbol_excerpt": "벗다, 신발, 운동화, 스니커즈, 신다, 신어요",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 434,
                "medium_title": "벗어요",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-76-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-76-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 94,
            "symbol_title": "걸어요",
            "symbol_excerpt": "걸다, 옷, 옷걸이, 잠바, 점퍼, 윗옷, 겉옷 외투, 정리하다, 정리해요",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 435,
                "medium_title": "걸어요",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-77-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-77-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 95,
            "symbol_title": "걸어요",
            "symbol_excerpt": "걸다, 정리하다, 정리해요, 가방, 책가방, 배낭, 백팩, 의자",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 436,
                "medium_title": "걸어요",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-78-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-78-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 96,
            "symbol_title": "걸어요",
            "symbol_excerpt": "옷, 옷걸이, 잠바, 점퍼, 외투, 정리하다, 정리해요",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 437,
                "medium_title": "걸어요",
                "medium_path": "assets/symbols/hanspeak/AAAA-A-79-1.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/AAAA-A-79-1.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 97,
            "symbol_title": "떼요",
            "symbol_excerpt": "떼다, 도난 방지택, 제거하다, 제거해요, 뜯다, 뜯어요, 빼다, 빼요",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 438,
                "medium_title": "떼요",
                "medium_path": "assets/symbols/hanspeak/BB-A201.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/BB-A201.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 98,
            "symbol_title": "교환",
            "symbol_excerpt": "바꾸다, 바꿔요, 교환하다, 교환해요, 주고받다, 주고받아요, ",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 439,
                "medium_title": "교환",
                "medium_path": "assets/symbols/hanspeak/BB-A202.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/BB-A202.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 99,
            "symbol_title": "백화점",
            "symbol_excerpt": "아웃렛 몰, 롯데, 현대, 신세계, 소매점, 쇼핑, 쇼핑가, 상점, 점포, 매장",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 440,
                "medium_title": "백화점",
                "medium_path": "assets/symbols/hanspeak/BB-A203.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/BB-A203.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 100,
            "symbol_title": "인터넷 쇼핑몰",
            "symbol_excerpt": "상점, 점포, 매장, 쇼핑하다, 쇼핑해요, 쇼핑, 사이버몰, 사아버 마켓, 온라인몰, 쇼핑몰, 인터넷몰, 전자 쇼핑몰",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 441,
                "medium_title": "인터넷 쇼핑몰",
                "medium_path": "assets/symbols/hanspeak/BB-A204.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/BB-A204.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 101,
            "symbol_title": "아웃렛 몰",
            "symbol_excerpt": "상점, 점포, 할인, 직영, 재고품, 이월 상품, 매장, 쇼핑가, 쇼핑, 아울렛, 백화점",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 442,
                "medium_title": "아웃렛 몰",
                "medium_path": "assets/symbols/hanspeak/BB-A205.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/BB-A205.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 102,
            "symbol_title": "사요",
            "symbol_excerpt": "사다, 구매하다, 구매해요, 구하다, 구해요, 장만하다, 장만하다, 구입하다, 구입해요, 매입하다, 매입해요, 들여가다, 들여가요, 팔다, 팔아요",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 443,
                "medium_title": "사요",
                "medium_path": "assets/symbols/hanspeak/BB-A206.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/BB-A206.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 103,
            "symbol_title": "커요",
            "symbol_excerpt": "크다, 옷, 사이즈, 헐렁하다, 헐렁해요, 길다, 길어요, 작다, 작아요",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 444,
                "medium_title": "커요",
                "medium_path": "assets/symbols/hanspeak/BB-A207.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/BB-A207.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 104,
            "symbol_title": "커요",
            "symbol_excerpt": "크다, 옷, 사이즈, 헐렁하다, 헐렁해요, 길다, 길어요, 작다, 작아요",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 445,
                "medium_title": "커요",
                "medium_path": "assets/symbols/hanspeak/BB-A208.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/BB-A208.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 105,
            "symbol_title": "작아요",
            "symbol_excerpt": "작다, 옷, 사이즈, 짧다, 짧아요, 크다, 커요",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 446,
                "medium_title": "작아요",
                "medium_path": "assets/symbols/hanspeak/BB-A209.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/BB-A209.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 106,
            "symbol_title": "작아요",
            "symbol_excerpt": "작다, 옷, 사이즈, 짧다, 짧아요, 크다, 커요",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 447,
                "medium_title": "작아요",
                "medium_path": "assets/symbols/hanspeak/BB-A2010.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/BB-A2010.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 107,
            "symbol_title": "맞아요",
            "symbol_excerpt": "맞다, 옷, 사이즈, 좋다, 좋아요, 어울리다, 어울려요, 들어맞다, 들어맞아요, 괜찮다, 괜찮아요",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 448,
                "medium_title": "맞아요",
                "medium_path": "assets/symbols/hanspeak/BB-A2011.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/BB-A2011.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 108,
            "symbol_title": "맞아요",
            "symbol_excerpt": "맞다, 옷, 사이즈, 좋다, 좋아요, 어울리다, 어울려요, 들어맞다, 들어맞아요, 괜찮다, 괜찮아요",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 449,
                "medium_title": "맞아요",
                "medium_path": "assets/symbols/hanspeak/BB-A2012.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/BB-A2012.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 109,
            "symbol_title": "어울려요",
            "symbol_excerpt": "어울리다, 옷, 사이즈, 예쁘다, 예뻐요, 좋다, 좋아요, 들어맞다, 들어맞아요, 괜찮다, 괜찮아요",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 450,
                "medium_title": "어울려요",
                "medium_path": "assets/symbols/hanspeak/BB-A2013.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/BB-A2013.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 110,
            "symbol_title": "어울려요",
            "symbol_excerpt": "어울리다, 옷, 사이즈, 멋있다, 멋있어요, 예쁘다, 예뻐요, 좋다, 좋아요, 들어맞다, 들어맞아요, 괜찮다, 괜찮아요",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 451,
                "medium_title": "어울려요",
                "medium_path": "assets/symbols/hanspeak/BB-A2014.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/BB-A2014.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        },
        {
            "id": 111,
            "symbol_title": "피팅 룸",
            "symbol_excerpt": "방,   탈의실, 갈아입다, 갈아입어요",
            "symbol_status": {
                "id": 2,
                "status": "publish"
            },
            "is_comment_open": true,
            "medium": {
                "id": 452,
                "medium_title": "피팅 룸",
                "medium_path": "assets/symbols/hanspeak/BB-A2015.png",
                "medium_url": "http://localhost:8080/static/symbols/hanspeak/BB-A2015.png",
                "medium_mime_type": "image/png",
                "medium_status": {
                    "id": 2,
                    "status": "publish"
                },
                "user_id": 109,
                "user_org_id": 2,
                "description": null,
                "created_at": "0025-03-04T00:00:00Z",
                "updated_at": "0025-03-04T00:00:00Z"
            },
            "comment_count": 0,
            "like_count": 0,
            "symbol_system": {
                "id": 1,
                "system_name": "HANSPEAK SYMBOLs",
                "issuer": "HANSPEAK",
                "description": "사람과소통 상징"
            },
            "description": null,
            "created_at": "0025-03-24T08:27:52+08:27",
            "updated_at": "0025-03-24T08:27:52+08:27"
        }
    ],
    "search_term": "all",
    "cnt": {
        "total_count": 6255,
        "limit_count": 111
    }
}
''';
