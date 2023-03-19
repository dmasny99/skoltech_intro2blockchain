# Soul Bound Token (SBT) Certification
Intro to blokchain course final project at Skoltech, 2023.
Project presentation is available [here](https://docs.google.com/presentation/d/1X6dpyW0HeA-SIlquT45p1n_6wD9WMzO8FsND4YKSvC0/edit#slide=id.p). 
Tests of our implementation is shown [here](https://www.youtube.com/watch?v=kFxcmHqjVS4&ab_channel=DmitriiMasnyi).
# Project structure:
* ```factory.sol``` - factory smart contract, which deploys smart contracns for organisation (for example, institutions).
* ```sbt.sol``` - smart contract for soulbound tokens.
* ```non_sbt.sol``` - smart contract for non-soulbound tokens (to show different to sbt behaviour and proove that everything works fine).
* ```sbt_content.json``` - content of soulbound token (like information inside the certificate that we'd like to store).

# How to run the project:
* Go to [remix](https://remix.ethereum.org/) and create new workspace.
* Put all ```*.sol``` files in the directory ```contracts/```.
* Go to [piniata](https://app.pinata.cloud/pinmanager) and upload ```*.json``` files there (body of your SBT).
* Compile all used ```*.sol``` files.
* Then emulate use cases according to the [video](https://youtu.be/kFxcmHqjVS4).
