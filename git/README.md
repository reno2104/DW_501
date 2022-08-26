### git? github?

- github : 사이트 (프로젝트를 관리해주는 사이트)
- git : 프로젝트 관리 프로그램

### git 설치하는 방법

1. https://git-scm.com/downloads 접속
2. 운영체제에 맞게 설치

### 실무에 가면..

실무에 가면 git 혹은 svn(정부기관, 관청에서 일하는 회사들이 많이 쓰는 프로그램) 이라는 프로그램을 사용하는데,
둘다 프로젝트를 관리해주는 프로그램이며 명령어는 비슷하다.

### git 설정

- git config --global user.name '사용자이름'
- git config --global user.email '가입한 이메일'

### git 명령어

-init : 저장소 생성

- add : 작업한 파일 혹은 폴더를 추가. // 파일명 2자 + Tab키 누르면 폴더 안의 파일명이 자동으로 뜬다.
- commit : 작업한 파일 or 폴더 저장. // git commit -m '내용입력' -> 하면 업로드 할 파일의 설명이 입력된다.
  // 사이트의 git remote add origin https://github.com/reno2104/'git_study.git'(폴더명은 다를 수 있다.) 를 입력한다.(마우스 오른쪽 누르고 paste 누르면 붙여넣기 된다.)
- git config --global user.name 'reno2104'를 입력한다.
- push : 최종 github에 업로드.
- clone : 다운로드
- pull : 변경된 내용 파일 다운로드 가능.(사이트에서는 전체 다운로드만 가능한 것과 대조적.)
