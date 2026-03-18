# 使用輕量級的 Java 21 (或是你專案用的版本)
FROM eclipse-temurin:17-jdk-alpine

# 設定工作目錄
WORKDIR /app

# 將 build 好的 jar 檔複製進去
COPY build/libs/*.jar app.jar

# 執行程式
ENTRYPOINT ["java", "-jar", "app.jar"]