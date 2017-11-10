#4차산업혁명 선도인재 양성 프로젝트 과정
---
## 1. Week 1 Day 5:  asked

***



1. question (제목, 내용)

- controller : question


- action : index, show

  - index.erb : form을 통해 질문을 받는다(익명, 공개)
  - show에서 입력된 질문을 보여준다

- model

  - name(질문자이름)

  - content(내용)

    ​

1. rails g model (모델명)
2. migration 파일 작성
3. rake db:migrate table생성



#### 회원가입

== database에 유저 정보를 저장하는 것

1. User 테이블 생성

- User model

rails g model xxx

2. User 정보를 저장

+ 회원정보를 받아, DB에 저장

##### 

#### 로그인

== session 유저 정보를 검증을 거친 후 저장하는것

1. User 정보를 받는다

2. 받은 User 정보와 DB의 User 정보가 일치하는지 확인

3. if 일치, session에 유저 정보를 넣는다

   else, 이유를 말해주고 로그인 안시킨다.

4. 로그아웃

   session.clear



