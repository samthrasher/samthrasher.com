aws s3 sync \
  --exclude '.git/*' \
  --exclude 'README.md' \
  --exclude '.travis.yml' \
  --exclude '.gitignore' \
  --exclude 'upload.sh' \
  --acl public-read \
  --delete . \
  s3://www.samthrasher.com

aws cloudfront create-invalidation \
  --distribution-id E23C914E5SL3KK --paths '/*'

