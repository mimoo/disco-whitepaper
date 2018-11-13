# Disco whitepaper

## TODO

- [ ] formally prove the protocol
- [ ] what are the implementation results?
- [ ] real-world deployement
    - implement in nginx, apache, etc. ?
    - implement in embedded devices
    - for mobile

## Feedback

The paper was originally submitted to Real World Crypto and rejected here are some feedback:

> The talk will be about Disco, a new library that combines SHA-3 and Curve25519 to provide a complete protocol framework. It actually builds off the Noise and Strobe suggestions, both talked about previously at RWC. It simplifies Noise by replacing some internal components with SHA-3 invocations, basically using an ongoing run of SHA-3 to generate all cryptographic material, and bind together all parts (key exchange, symmetric encryption). It's a cute idea and can be implemented in about 1000 lines of code. Rough arguments about security are provided, but **nothing too detailed and further analysis is warranted**. Could be an interesting short talk.

> This is a nice design, but there are a lot of nice designs out there. It wasn't clear to me why this design was necessary or important, or why it's at a level of significance that has an impact on the real world. I suggest the authors **work harder on the motivation** for the paper, and with a **beefed-up rationale section** that they submit it to a conference with more of a focus on research than on real-world deployment.

> Could be good for a short talk. Most of what's here is background on Keccak and the Noise protocol framework. Two questions I have about its presentation-worthiness: does it come with any sort of **serious security analysis**, and does it have **deployment traction**? If the answer is "no" to both, then I think we reject.

> The paper proposes a simplified SSL/TLS like session encryption mechanism using Strobe and Noise. It can be implemented in 1000 lines, while
SSL/TLS required 700 times more. This looks like a precious effort, but presentation is quite complicated and not quite sure **what kind of properties were achieved** by this construction. 