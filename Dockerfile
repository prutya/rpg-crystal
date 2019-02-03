# Build image
FROM crystallang/crystal:0.27.1 as build

# Set the working dir
WORKDIR /usr/src/app

# Copy shard.yml and shard.lock
COPY shard.yml shard.lock ./

# Install dependencies
RUN shards install

# Copy the source code
COPY . .

# Build the app
RUN crystal build src/rpg.cr --release



# Final image
FROM crystallang/crystal:0.27.1

# Set the working dir
WORKDIR /usr/src/app

# Copy the binary from the build image
COPY --from=build /usr/src/app/rpg ./rpg

CMD ./rpg
