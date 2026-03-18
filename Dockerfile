# 第一階段：使用 Gradle 進行編譯
FROM gradle:8.7-jdk17 AS build
WORKDIR /app
# 複製專案檔案
COPY . .
# 執行編譯，跳過測試以節省時間與記憶體
RUN ./gradlew build -x test --no-daemon

# 第二階段：執行環境
FROM eclipse-temurin:17-jdk-alpine
WORKDIR /app
# 從編譯階段把產出的 jar 檔複製過來
COPY --from=build /app/build/libs/*.jar app.jar
# 設定 Port 映射 (Render 會用到)
EXPOSE 8080
# 執行程式
ENTRYPOINT ["java", "-jar", "app.jar"]