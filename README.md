# Disco

This repository is to track research being done on the Disco protocol and its real-world implementations. Anyone who has access to this is invited to contribute or to lurk :)

## State

- [ ] **Protocol**. The protocol currently strongly relies on Strobe for the symmetric parts, but what about the asymmetric parts? Current state: X25519 for the key exchange algorithm and either ed25519, Strobe's Schnorr-variant or qDSA for the signature scheme.
- [ ] **Specification**. It is currently written as an [extension of Noise](https://www.discocrypto.com/disco.html), but It would be better if it was a self-contained RFC relying on the Strobe spec.
- [ ] **Formal Proofs**. I am interested in formally proving the protocol via Tamarin. [I sketched some ideas here](https://github.com/mimoo/disco-whitepaper/issues/1), the trick part is that there is no sponge/duplex/strobe support there so we either need to be clever or work closely with the Tamarin people. 
- [ ] **Paper Proofs**. Paper proofs should be more straight forward based on what was done already for the keyed duplex construction.
- [ ] **Real-World deployement**. To be a successful protocol, Disco needs to be implemented in different languages (currently it is implemented in [Golang](https://www.discocrypto.com), [C](https://www.embeddeddisco.com), [C#](https://github.com/Fasjeit/DiscoNet), [Python](https://github.com/Fasjeit/PyDisco)). In addition, it needs to be integrated to different library and frameworks (nginx, apache, what else? Android/iOS?)
- [ ] **Embedded Platforms**. The Disco protocol should be especially attracting for small embedded devices as it is tiny. What are the results on different platforms for either a Rust implementation or a [C](https://www.embeddeddisco.com) implementation? What about facilitating the usage of the library ([RiotOS](https://www.riot-os.org))? 
- [ ] **Usability**. The Noise protocol framework is not really human friendly (even if it is probably the most human-friendly cryptographic protocol). As a library Disco should strive to be usable and to avoid repeating decades of bad cryptography history


## Feedback

The paper was originally submitted to Real World Crypto and rejected here are some feedback:

> The talk will be about Disco, a new library that combines SHA-3 and Curve25519 to provide a complete protocol framework. It actually builds off the Noise and Strobe suggestions, both talked about previously at RWC. It simplifies Noise by replacing some internal components with SHA-3 invocations, basically using an ongoing run of SHA-3 to generate all cryptographic material, and bind together all parts (key exchange, symmetric encryption). It's a cute idea and can be implemented in about 1000 lines of code. Rough arguments about security are provided, but **nothing too detailed and further analysis is warranted**. Could be an interesting short talk.

> This is a nice design, but there are a lot of nice designs out there. It wasn't clear to me why this design was necessary or important, or why it's at a level of significance that has an impact on the real world. I suggest the authors **work harder on the motivation** for the paper, and with a **beefed-up rationale section** that they submit it to a conference with more of a focus on research than on real-world deployment.

> Could be good for a short talk. Most of what's here is background on Keccak and the Noise protocol framework. Two questions I have about its presentation-worthiness: does it come with any sort of **serious security analysis**, and does it have **deployment traction**? If the answer is "no" to both, then I think we reject.

> The paper proposes a simplified SSL/TLS like session encryption mechanism using Strobe and Noise. It can be implemented in 1000 lines, while
SSL/TLS required 700 times more. This looks like a precious effort, but presentation is quite complicated and not quite sure **what kind of properties were achieved** by this construction. 
