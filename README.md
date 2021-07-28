# Keyword_Notification(2021.01 - 2021.03)
> 2021 KEY Team Project

## 🏡 팀 소개

안녕하세요! 팀 KEY입니다.

- [김승은](https://github.com/julie0005)
- [김예원](https://github.com/yeye921)
- [박윤정](https://github.com/pyj127)
- [우다현](https://github.com/defwdahyun0)
- [한동민](https://github.com/handevmin)

## 🔑 **서비스 소개**

<br/>

학교 공지사항에서 프로그램을 신청하려고 봤더니, 신청기한이 지난 적이 있으신가요?

학교 홈페이지, 학과 홈페이지를 돌아다니며 공지사항을 확인하기 힘드신가요?

매일 공지사항을 확인하기 어려우신가요?

이제 `아주키워드`에서 원하는 정보 알림을 받아보세요!

<br/>

- 회원가입/로그인을 하고,
- 키워드를 추가해보세요.
- 알림을 받아볼 수 있습니다!
- 나에게 딱 맞는 알림을 키워드를 설정하고, 모아서 알림을 받아보세요!

<br/>

## 1. Technology used
 
<br/>

**BackEnd** `Node.js` `Amazon EC2` `ExpressJS`

**Database** `MySQL` `MySQLWorkBench`

**crawling** `Python`

**Server** `AWS EC2` `Firebase`

**FrontEnd** `ReactNative`

**Version Control** `Git`

**Repository** `Github`

**Tools** `Visual Studio Code` `Notion` `Microsoft 365`

<br/>

## 2. Directory description
### 2.1 api
    - AWS EC2 서버 구조
[README](https://github.com/julie0005/Keyword_Notification/blob/master/api/README.md)

### 2.2 app-front
    - 앱 컴포넌트 및 UI, 기능 제작
[README](https://github.com/julie0005/Keyword_Notification/blob/master/app-front/README.md)

### 2.3 db
     - 웹 크롤링 및 데이터베이스 관리
[README](https://github.com/julie0005/Keyword_Notification/blob/master/db/README.md)

### 2.4 meeting_note
    - 회의록, notion으로 기록 후 옮김

## 3. Development result

### 로그인 화면
![로그인](./login.jpg)

#### id 찾기 화면
![id 찾기]()
#### 비밀번호 찾기 화면
![비밀번호 찾기]()
#### 회원가입 화면
![회원가임]()

### Main 화면
![메인](./portal.jpg)

#### keyword 추가 화면
![키워드 추가](./addkeyword.jpg)
#### Setting 화면
![설정]()

## 4. How to process

### 4.1. Running front-end

``` bash
# go to directory
$ cd app-front

# install dependencies
$ npm install # Or yarn install

# build for production and launch server
$ cd android
$ gradlew build

# generate and start project
$ npx react-native start
$ npx react-native run-android

```
### 4.2. Running back-end

``` bash
# go to directory
$ cd api/app

# install node and npm (in ubuntu)
$ sudo apt-get update 
$ sudo apt-get install nodejs
$ sudo apt-get install npm
$ npm init --yes
$ npm install

# start node server with exit state(background)    
$ nohup npm start &
$ exit

# start node server with auto_modifying state(Daemon process)
$ nohup nodemon </dev/null &
$ exit
```
## 5. contact
    e-mail: keywordalarmi@gmail.com
