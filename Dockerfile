FROM eclipse-temurin:11-jdk

WORKDIR /app

# Copy project
COPY . /app/

# Build the site
RUN chmod +x gradlew && \
    ./gradlew clean bake

# Output directory for deployment
VOLUME /app/build/jbake

CMD ["tail", "-f", "/dev/null"]
