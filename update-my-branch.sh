#!/bin/bash

set -e

BRANCH="custom/ollama-work"

echo "🔀 작업 브랜치(${BRANCH})에 master 반영 중..."

# 작업 브랜치 이동
git checkout $BRANCH

# master merge
git merge master

echo "⚠️ 충돌이 나면 직접 해결하세요"

# 자동 push (충돌 없을 경우)
git push

echo "✅ 작업 브랜치 업데이트 완료"
