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
- 최종 발표(21.04.13)
### 분석 및 설계
1. 주제 선정 및 기능 회의 후, 스토리 보드를 구성하여 기능 구현의 기틀을 잡음
2. 구현할 기능의 흐름을 구체화 하기 위하여 플로우 차트를 작성
> ##### 플로우 차트의 일부분
> > ![image](https://user-images.githubusercontent.com/78800147/116205255-81c4bb00-a778-11eb-86ef-75d9e070ec27.png)
3. 이후 플로우 차트를 기반으로 각자 맡을 파트를 분담
4. 기능 구현을 위한 DB 설계
> ##### ERD
> > ![image](https://user-images.githubusercontent.com/78800147/116205341-9bfe9900-a778-11eb-9bd0-201ead91a49e.png)
> > - 개발 단계에서 시간 절약을 위해 참조 제약을 배제하고 진행하였음
> > - 중복 확인 등의 필요한 부분은 코드를 통해 구현
***
### 담당 파트 화면 및 기능 소개
#### 1. 일반 회원 일정 관리
> - Fullcalendar를 이용한 캘린더 구현
> ![image](https://user-images.githubusercontent.com/78800147/116505305-7945bf00-a8f5-11eb-9ddb-1a283c3acf5e.png)
> - 쿠폰 발급을 위한 출석 기능
> 
> > ![attendent](https://user-images.githubusercontent.com/78800147/116510140-6801b000-a8ff-11eb-865d-c23277890d68.png)
> - 수강 내역에 따른 일정 표시와 API 사용
> ![functions](https://user-images.githubusercontent.com/78800147/116516291-68eb0f80-a908-11eb-90ae-d68c5c046c08.png)



#### 2. 강사의 강의 관리
> - 강의 목록 확인
> ![class_list](https://user-images.githubusercontent.com/78800147/116516307-6c7e9680-a908-11eb-98aa-fb79fb6552cb.png)



