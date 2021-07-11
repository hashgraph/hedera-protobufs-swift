#!/usr/bin/env python3
import subprocess
from fileinput import FileInput
from glob import glob


def add_import_in_files(path: str):
    for filename in glob(path):
        with open(filename, "r") as file:
            file_data = file.read()

        file_data = file_data.replace("import SwiftProtobuf", "import SwiftProtobuf\nimport HederaProtoServices")

        with open(filename, "w") as file:
            file.write(file_data)

subprocess.run([
    "protoc",
    *glob("Protobufs/services/*.proto"),
    "-IProtobufs/services",
    "--swift_out=Sources/HederaProtoServices",
    "--swift_opt=Visibility=Public",
    "--grpc-swift_opt=Client=true,Server=true,Visibility=Public",
    "--grpc-swift_out=Sources/HederaProtoServices",
])

subprocess.run([
    "protoc",
    *glob("Protobufs/streams/*.proto"),
    "-IProtobufs/services",
    "-IProtobufs/streams",
    "--swift_out=Sources/HederaProtoStreams",
    "--swift_opt=Visibility=Public",
    "--grpc-swift_opt=Client=true,Server=true,Visibility=Public",
    "--grpc-swift_out=Sources/HederaProtoStreams",
])

add_import_in_files("./Sources/HederaProtoStreams/*.swift")

subprocess.run([
    "protoc",
    *glob("Protobufs/mirror/*.proto"),
    "-IProtobufs/mirror",
    "-IProtobufs/services",
    "--swift_out=Sources/HederaProtoMirror",
    "--swift_opt=Visibility=Public",
    "--grpc-swift_opt=Client=true,Server=true,Visibility=Public",
    "--grpc-swift_out=Sources/HederaProtoMirror",
])

add_import_in_files("./Sources/HederaProtoMirror/*.swift")
