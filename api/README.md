# API

### 구조/기능 설명

Node.js의 서버가 켜져 있는 상황에서 React-Native가 get, post 등의 http 메소드로 서버에게 요청을 보내면 Node.js는 React-Native가 보낸 요청에 따라 알맞은 핸들링을 한다. 
모듈화를 하여 유연하게 확장할 수 있도록, 폴더를 route(controller), model로 나누었다. Client-Side-Rendering을 지향하여 서버에서는 따로 View를 렌더링해주지 않았다. 
route 폴더에서는 home.ctrl.js에서 모델을 이용하여 핸들러 함수가 작성되어 있으며, index.js에서는 ctrl.js의 모듈을 작성하기만 하면 된다. 
Model에서 SQL 쿼리가 이뤄지며 기능을 수행하게 된다. 

#### 1. 계정
 1-1. 로그인  
 1-2. 로그아웃  
 1-3. 아이디 찾기  
 1-4. 비밀번호 찾기  
 1-5. 회원가입  
 1-6. 회원탈퇴  
#### 2. 키워드 관리  
 2-1. 키워드 추가  
 2-2. 키워드 삭제  
 2-3. 키워드 가져오기  
#### 3. 메인페이지 관리
 3-1. 포탈 게시물 가져오기  
  
---

### 1. 계정
#### 1-1. 로그인 
- **URL** : /login  
- **METHOD** : /POST  
- **REQUEST BODY** :
```
{  
  id : julie0005,
  psword : 1234  
}
```
- **RETURN** :  

성공

```
{
  success : true,  
  r_id_arr : [(사용자가 등록한 페이지,키워드 id)]  
}
```
실패

```
{
    "success": false,
    "msg": "존재하지 않는 아이디입니다.",
}
```
</br>

#### 1-2. 로그아웃
- **URL** : /logout  
- **METHOD** : /POST  
- **REQUEST BODY** :
```
{}
```
- **RETURN** :  

성공

```
{
    "success": true,
    "id": "julie0005",
    "msg": "로그아웃 성공"
}
```
실패

```
{
    "success": false,
    "msg": "로그인 되어 있지 않은 사용자입니다."
}
```
</br>

#### 1-3. 아이디 찾기
- **URL** : /find/id 
- **METHOD** : /GET   
- **REQUEST BODY** :
```
{
    "email" : "duliesoures@gmail.com"
}
```
- **RETURN** :  

성공

```
{
    "success": true,
    "id": "dulie"
}
```
실패

```
{
    "success": false,
    "msg": "존재하지 않는 계정입니다."
}
```
</br>

#### 1-4. 비밀번호 찾기
- **URL** : /find/pw 
- **METHOD** : /GET 
- **REQUEST BODY** :
```
{
    "id" : "julie0005"
}
```
- **RETURN** :  

성공

```
{
    "success": true,
    "password": "**34"
}
```
실패

```
{
    "success": false,
    "msg": "존재하지 않는 계정입니다."
}
```
</br>

#### 1-5. 회원가입
- **URL** : /register 
- **METHOD** : /POST 
- **REQUEST BODY** :
```
{
    "id" : "julie0005",
    "email" : "julie0005@naver.com",
    "psword" : "1234"
}
```
- **RETURN** :  

성공

```
{
    "success": true
}
```
실패

```
{
    "success": false,
    "msg": "이미 존재하는 계정입니다."
}
```
</br>

#### 1-6. 회원탈퇴
- **URL** : /quit
- **METHOD** : /POST 
- **REQUEST BODY** :
```
{}
```
- **RETURN** :  

성공

```
{
    "success": true,
    "msg": "성공적으로 삭제되었습니다.",
    "u_id": "dulie"
}
```
실패

```
{
    "success": false,
    "msg": "로그인 되어 있지 않은 사용자입니다."
}
```
</br>
---

### 2. 키워드 관리
#### 2-1. 키워드 추가
- **URL** : /keyword/add 
- **METHOD** : /POST 
- **REQUEST BODY** :
```
{
    "p_name" : "공과대학",
    "keyword" : "교환학생"
}
```
- **RETURN** :  

성공

```
{
    "success": true,
    "msg": "u_id, p_id, k_id are saved successfully",
    "r_id": 4 (registration table 고유 아이디)
}
```
실패

```
{
    "success": false,
    "msg": "로그인 되어 있지 않은 사용자입니다."
}
```
```
{
    "success": false,
    "msg": "이미 해당 등록은 저장되어 있습니다."
}
```
</br>

#### 2-2. 키워드 삭제
- **URL** : /keyword/delete 
- **METHOD** : /POST 
- **REQUEST BODY** :
```
{
    "r_id" : "3" (registration table 고유 id)
}
```
- **RETURN** :  

성공

```
{
    "success": true,
    "msg": "성공적으로 삭제되었습니다.",
    "r_id": "3"
}
```
실패

```
{
    "success": false,
    "msg": "로그인 되어 있지 않은 사용자입니다."
}
```

```
{
    "success": false,
    "msg": "해당 등록이 존재하지 않습니다."
}
```
</br>

#### 2-3. 키워드 가져오기
- **URL** : /keyword/get  
- **METHOD** : /GET 
- **REQUEST BODY** :
```
{
    "r_id" : "3" (registration table 고유 id)
}
```
- **RETURN** :  

성공

```
{
    "success": true,
    "data": [
        {
            "up_id": 5,
            "p_name": "공과대학",
            "keyword": "교환학생"
        },
        {
            "up_id": 6,
            "p_name": "소프트웨어학과",
            "keyword": "현장실습"
        },
        {
            "up_id": 7,
            "p_name": "소프트웨어학과",
            "keyword": "장학"
        }
    ]
}
```
```
{
    "success": true,
    "msg": "아직 등록한 키워드가 존재하지 않습니다."
}
```

실패

```
{
    "success": false,
    "msg": "로그인 되어 있지 않은 사용자입니다."
}
```
</br>
---

### 3. 메인페이지 관리
#### 3-1. 포탈게시물 가져오기
- **URL** : /keyword/portal 
- **METHOD** : /GET 
- **REQUEST BODY** :
```
{}
```
- **RETURN** :  

성공

```
{
    "success": true,
    "data": [
        {
            "title": "[대학일자리플러스 \n센터] (소수인원 추가모집) 데이터사이언티스트 M2 참여자 모집",
            "content": "데이터사이언티스트 M2 데이터 프로세스 & 분석\n 과정 소수인원을 추가 모집합니다.",
            "link": "https://www.ajou.ac.kr/kr/ajou/notice.do",
            "updateDate": "2021-07-28"
        },
        {
            "title": "2021 제1회 온라인 직무박람회 관련 안내(다시보기 8/1(일) 종료!)",
            "content": "주요 기업 현직자들로부터 생생한 경험담을 들을 수 있는 2021 제 1회 아주대학교 온라인 직무박람회가 많은 관심과 참여 속에 마무리되었습니다.",
            "link": "https://www.ajou.ac.kr/kr/ajou/notice.do",
            "updateDate": "2021-07-28"
        }
    ]
}
```

실패

```
{
    "success": false,
    "msg": "crawl data 조회 실패"
}
```

</br>

---
### 어려웠던 점, TroubleShooting

* Node.Js의 비동기를 다루기가 까다로웠다. Async, Await, Promise 등과 개념을 지속적으로 학습했다.
* 쿼리를 처리하고 또 다시 쿼리를 보낼 때, 이와 같은 상황이 악화되면 쿼리 콜백 지옥이 이어지기 때문에 데이터베이스 최적화나 쿼리 최적화가 중요하다는 것을 깨달았다.
* inner join이 많은 쿼리 구문들은 데이터베이스에 view를 만듦으로써 비용을 줄일 수 있었다.

