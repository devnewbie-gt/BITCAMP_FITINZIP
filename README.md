# Fitinzip (21.03.11 ~ 21.04.13)
![image](https://user-images.githubusercontent.com/78800147/116191320-11616e00-a767-11eb-9493-21234dd410b9.png)
***
# 목차
  ### [1. 개요](#개요)
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
> ![class_list](https://user-images.githubusercontent.com/78800147/116518864-bfa61880-a90b-11eb-9c72-437c4bf1c98f.png)


> - 강의 등록 화면(각 항목 입력란에 대한 유효성 검사 적용)
> ![image](https://user-images.githubusercontent.com/78800147/116517930-9afd7100-a90a-11eb-8929-757b101271a0.png)
> ![class_register](https://user-images.githubusercontent.com/78800147/116518189-e9ab0b00-a90a-11eb-92d9-f66196329275.png)
> ![class_register2](https://user-images.githubusercontent.com/78800147/116518690-8c638980-a90b-11eb-9cc6-3f23dfcc500b.png)
> - 강의 수정은 등록과 대부분 유사함

### 진행 도중 어려웠던 점
- 파일 업로드 구현
> - 파일을 로컬 경로에 업로드하여 브라우저에 표시하려면, 크롬의 보안 정책으로 인해 tomcat 서버에 context 설정을 추가하여야 함
> - 이를 보고 로컬 경로에 파일을 업로드하는 것은 부적절하다고 판단하여 파일서버 구축을 시도
> ![gcp](https://user-images.githubusercontent.com/78800147/116519833-e7e24700-a90c-11eb-8cab-81c292dffca2.png)
> - gcp를 이용하여 docker 기반으로 파일 업로드를 위한 서버 구축에 도전하였으나, 클라우드 서비스 및 docker에 대한 이해가 부족했고, 이를 학습하며 진행하기에는 시간이 다소 부족하여 프로젝트에 적용해보지는 못했음
> 
> - 추후 개인 프로젝트를 통하여 gcp 및 aws를 이용하는 방법에 대하여 추가 학습 예정
***
# 진행하며 느낀 점
- 이 전에 1, 2차 프로젝트는 부득이하게 비대면으로 진행하였는데, 직접 소통을 통해 의사소통의 중요성을 다시금 상기하게 되었음
- Spring Framework를 이용하여 DI, IoC라는 개념에 대해 피부로 느끼며 알 수 있었음
- 기존에는 기능에 대한 구현에 열중해서 신경쓰지 못했지만, 개발한 서비스를 배포하는 방식에 대해 생각해볼 수 있는 계기가 되었음
