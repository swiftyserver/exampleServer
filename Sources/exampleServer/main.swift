
import SwiftyServer

struct MyEnviroment: HTTPEnviroment {
	var httpParameters: HTTPRequest

	static var Server: Server<MyEnviroment> = .init()
}



MyEnviroment.Server.configure {

	MyEnviroment.get("/")
		.constant("Hello World")
		.response()

	MyEnviroment.get("/hello")
		.constant("Hello")
		.map { up, req in "\(up) World"}
		.response()

}.serve()

// curl 127.0.0.1:8080/ to check if your server is working!
