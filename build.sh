cd frontend

# Create static.json
echo '{
  "root": "./dist",
  "clean_urls": true,
  "routes": {
    "/**": "index.html"
  }
}' > static.json

# Initialize Heroku
heroku create chat-app --buildpack https://github.com/heroku/heroku-buildpack-static
git init
git add .
git commit -m "Frontend initial"

# Deploy
git push heroku master
