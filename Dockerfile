# ベースイメージはeclipse-temurin(旧OpenJDK)のJava17を使用
FROM eclipse-temurin:17-jre-alpine

# ホストOSのMavenのビルド成果物をコンテナイメージに格納
WORKDIR /
COPY ./target/docker-push-with-maven.jar ./

# Executable Jarなのでjavaコマンドでサーバを起動
CMD ["java", "-jar", "docker-push-with-maven.jar"]
