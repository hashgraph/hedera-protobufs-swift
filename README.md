# Hedera™ Hashgraph Swift Protubufs

> Generated protobufs in Swift for interacting with Hedera Hashgraph: the official distributed
> consensus platform built using the hashgraph consensus algorithm for fast,
> fair and secure transactions. Hedera enables and empowers developers to
> build an entirely new class of decentralized applications.

## Development

When updating the protobufs submodule (at `proto/`), the generated code should be updated.

### Prerequisites

-   Protobuf compiler plugin for Swift (`protoc-gen-swift`, `protoc-gen-grpc-swift`)

    ```sh
    $ brew install grpc-swift
    ```

-   Python 3+

### Build

```sh
# update the proto/ directory from hedera-protobufs
$ git submodule update --init

# generate swift code from protobuf definitions
$ ./x.py
```

## License

Licensed under Apache License,
Version 2.0 – see [LICENSE](LICENSE) in this repo
