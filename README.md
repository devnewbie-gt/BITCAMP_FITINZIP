# Fitinzip (21.03.11 ~ 21.04.13)
![image](https://user-images.githubusercontent.com/78800147/116191320-11616e00-a767-11eb-9493-21234dd410b9.png)
***
# 목차
  ### 1. 개요
  ### 2. 분석 및 설계
  ### 3. 주요화면 및 기능 소개
  ### 4. 느낀 점
***
# 개요
### 소개
Fitinzip은 비대면으로 피트니스 강의와 간단한 운동 물품 판매를 제공하는 플랫폼 서비스입니다.
### 사용 기술
![image](https://user-images.githubusercontent.com/78800147/116201839-e8e07080-a774-11eb-815d-e7111c1671ac.png)
- Front : HTML, CSS, JavaScript, Bootstrap, jQuery, Brackets, Ajax
- Back : Java 기반, Spring Framework, MyBatis, Apache Tomcat 8.5v, Oracle DB
- API : I'mport, Kakao developers, FullCalendar, Google Calendar, CKEditor, Chart.js
- VCS & For Team Collaboration Tool : Github, Notion
***
# 분석 및 설계
### 일정 관리
- 소요기간 : 약 4.7주
- 기획, 분석 및 설계(21.03.11 ~ 21.03.18) : 아이디어 및 기능 회의, DB설계, 메인 화면 구성, Spring Framework 환경 설정
- 코드 작성(21.03.20 ~ 21.04.08) : view, control 기능 구현 및 git을 이용한 병합
- 마무리(21.04.09 ~ 21.04.12) : 테스트 및 오류 수정
### 분석 및 설계
1. 주제 선정 및 기능 회의 후, 스토리 보드를 구성하여 기능 구현의 기틀을 잡음
![image](https://user-images.githubusercontent.com/78800147/116205120-635ebf80-a778-11eb-92d6-f7d5e8c0836d.png)
2. 구현할 기능의 흐름을 구체화 하기 위하여 플로우 차트를 작성
> ##### 플로우 차트의 일부분
> > ![image](https://user-images.githubusercontent.com/78800147/116205255-81c4bb00-a778-11eb-86ef-75d9e070ec27.png)
3. 이후 플로우 차트를 기반으로 각자 맡을 파트를 분담
4. 기능 구현을 위한 DB 설계
> ##### ERD
> > ![image](https://user-images.githubusercontent.com/78800147/116205341-9bfe9900-a778-11eb-9bd0-201ead91a49e.png)
> > - 개발 단계에서 참조에 대한 제약조건을 걸어두면 간단한 테스트가 번거로워지는 등의 지연이 발생하여 참조 제약을 배제하고 진행하였음
***
