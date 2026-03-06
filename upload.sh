#!/bin/bash

# Single Skill GitHub Upload Script
# 用法：./upload.sh <github-username> [repository-name]

set -e

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

if [ -z "$1" ]; then
    echo -e "${RED}❌ 错误：请提供 GitHub 用户名${NC}"
    echo "用法：$0 <github-username> [repository-name]"
    exit 1
fi

GITHUB_USERNAME=$1
REPO_NAME=${2:-$(basename "$(pwd)")}
REPO_URL="https://github.com/${GITHUB_USERNAME}/${REPO_NAME}.git"

echo -e "${BLUE}════════════════════════════════════════${NC}"
echo -e "${BLUE}🚀 Uploading to GitHub: ${REPO_NAME}${NC}"
echo -e "${BLUE}════════════════════════════════════════${NC}"
echo ""

# Replace placeholders
echo -e "${YELLOW}📝 Updating README...${NC}"
sed -i '' "s|YOUR_USERNAME|${GITHUB_USERNAME}|g" README.md 2>/dev/null || true
echo -e "${GREEN}✅ README updated${NC}"
echo ""

# Initialize Git
if [ ! -d ".git" ]; then
    echo -e "${YELLOW}📂 Initializing Git...${NC}"
    git init
    echo -e "${GREEN}✅ Git initialized${NC}"
fi
echo ""

# Add files
echo -e "${YELLOW}➕ Adding files...${NC}"
git add .
echo -e "${GREEN}✅ Files added${NC}"
echo ""

# Commit
echo -e "${YELLOW}💾 Creating commit...${NC}"
git commit -m "🎉 Initial commit: ${REPO_NAME}

CoPaw skill for Chinese users.
No VPN required. China-friendly."
echo -e "${GREEN}✅ Commit created${NC}"
echo ""

# Rename branch
echo -e "${YELLOW}🌿 Renaming branch to main...${NC}"
git branch -M main
echo -e "${GREEN}✅ Branch renamed${NC}"
echo ""

# Add remote
echo -e "${YELLOW}🔗 Adding remote repository...${NC}"
if git remote | grep -q "^origin$"; then
    git remote set-url origin ${REPO_URL}
else
    git remote add origin ${REPO_URL}
fi
echo -e "${GREEN}✅ Remote added: ${REPO_URL}${NC}"
echo ""

# Push
echo -e "${YELLOW}🚀 Pushing to GitHub...${NC}"
if git push -u origin main; then
    echo -e "${GREEN}✅ Upload successful!${NC}"
    echo ""
    echo -e "${GREEN}════════════════════════════════════════${NC}"
    echo -e "${GREEN}🎉 Done!${NC}"
    echo -e "${GREEN}════════════════════════════════════════${NC}"
    echo ""
    echo -e "${BLUE}📍 Repository: ${REPO_URL}${NC}"
    echo -e "${BLUE}🌐 URL: https://github.com/${GITHUB_USERNAME}/${REPO_NAME}${NC}"
    echo ""
    echo -e "${YELLOW}Next steps:${NC}"
    echo -e "  1. Visit the repository page"
    echo -e "  2. Add topics: copaw, ai, skill, china"
    echo -e "  3. Set repository description"
    echo -e "  4. Share with community!"
    echo ""
else
    echo -e "${RED}❌ Push failed!${NC}"
    echo -e "${YELLOW}Make sure you created the repository on GitHub first.${NC}"
    exit 1
fi
