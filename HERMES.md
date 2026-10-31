# 7days + Hermes Agent

7days는 GitHub 저장소이며 Codespaces에서 보통 /workspaces/7days 폴더로 열립니다.

## 시작하기
1. https://codespaces.new/sungju-yun/7days 를 열어 main 브랜치로 Codespace를 생성합니다.
2. 생성 중 .devcontainer 설정이 공식 Hermes stable 설치 프로그램을 실행합니다.
3. 설치가 끝나면 새 터미널에서 `hermes --version`을 확인합니다.
4. `hermes setup`으로 제공자 로그인 또는 API 연결을 직접 완료합니다.
5. 저장소 폴더에서 `hermes`를 실행합니다.

기존 Codespace라면 변경을 가져온 뒤 “Codespaces: Rebuild Container”를 실행해야 설정이 적용됩니다.
설치가 실패했다면 터미널에서 `bash .devcontainer/install-hermes.sh`로 다시 시도할 수 있습니다.

## 사용 예
- “index.html을 읽고 이 웹앱의 기능을 간단히 설명해줘.”
- “모바일에서 버튼이 겹치는지 확인하고 수정해줘.”
- “변경 사항을 설명하고 테스트한 뒤 커밋해줘.”

이전 대화 이어가기: `hermes --continue`

## 웹앱 미리보기
저장소 폴더에서 `python3 -m http.server 8000 --bind 0.0.0.0` 실행 후 Ports 탭의 8000번 주소를 엽니다.
이 주소는 개발용 미리보기이며 정식 사이트 배포가 아닙니다. 포트는 기본 비공개로 유지하세요.

## 저장과 비용
- Hermes 상태 및 인증 정보는 저장소 밖 /workspaces/.hermes에 저장합니다.
- 컨테이너 재구축 후에도 /workspaces 데이터는 유지되지만 Codespace 자체를 삭제하면 잃을 수 있습니다.
- API 키나 인증 파일을 저장소에 복사하거나 커밋하지 마세요.
- Codespaces와 선택한 AI 제공자의 사용량에 따라 요금이 발생할 수 있습니다.
- 사용 후 Codespace를 중지하세요. 상시 실행 서버 용도로 구성하지 않았습니다.
- 기본 설치에서는 브라우저 및 컴퓨터 제어 구성요소를 생략합니다.

## 확인 범위
저장소 설정과 설치 스크립트 구문을 확인했습니다. 실제 Codespace 생성, Hermes 설치 완료 및 제공자 인증은 아직 확인하지 않았습니다.

공식 안내:
- https://hermes-agent.nousresearch.com/docs/getting-started/quickstart
- https://docs.github.com/en/codespaces
