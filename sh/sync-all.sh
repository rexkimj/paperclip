#!/bin/bash

set -e

BRANCH="custom/ollama-work"

echo "🚀 전체 동기화 시작..."

# 1. master 업데이트
git checkout master
git fetch upstream
git reset --hard upstream/master
git push origin master --force-with-lease

# 2. 작업 브랜치 반영
git checkout $BRANCH
git merge master

echo "⚠️ 충돌 발생 시 해결 후 다시 push 하세요"

git push

echo "✅ 전체 동기화 완료"
