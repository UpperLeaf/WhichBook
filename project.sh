git config --global core.autocrlf false

echo ">> git clone API Gateway Service"
git clone https://github.com/UpperLeaf/WhichBook_Apigateway.git whichbook_apigateway

echo ">> git clone User Service"
git clone https://github.com/UpperLeaf/WhichBook_User.git whichbook_user

echo ">> git clone Book Service"
git clone https://github.com/SeonghoJin/WhichBook_Book.git whichbook_book


docker image rm whichbook_apigateway
docker image rm whichbook_user_service
docker image rm whichbook_book_service

docker-compose up -d