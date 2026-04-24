#!/bin/bash

set -e

echo "🔄 upstream 최신 가져오는 중..."

# master 이동
git checkout master

# 원본 fetch
git fetch upstream

# 원본 기준으로 맞추기
git reset --hard upstream/master

# 내 fork(origin)에 반영
git push origin master --force-with-lease

echo "✅ master가 upstream과 동기화 완료"
