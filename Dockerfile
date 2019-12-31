FROM swift:latest as builder
WORKDIR /root
COPY . .
RUN swift build -c release

FROM swift:slim
WORKDIR /root
COPY --from=builder /root/.build/x86_64-unknown-linux/release/exampleServer /root
CMD ["/root/exampleServer"]
