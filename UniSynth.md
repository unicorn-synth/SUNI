## UniSynth
### The Brief
UniSynth creates synthetic ERC20 token versions of Real World Assets (RWA). Anything that is actively traded and has a price visible online can be used.

We call the synthetic ERC20 token an ‘sToken’. In our initial demo release we have sToken versions of the Nasdaq100, RussianRuble, TeslaStock, PalladiumPM, China A50 & WestTexasCrudeOil.

When creating the sToken, the UniSynth smart contracts also create a UniSwap V3 pool to allow swaps between the sToken and a stable coin. Usually this is USDc, but could be anything that is traded in volume on-chain. We call the associated stable coin the ‘baseToken’.

UniSynth uses ***only*** UniSwap as a front end. As such the buying and selling of the sTokens on UniSwap is permissionless. It is beyond our control who buys or sells these sTokens.

UniSynth sTokens are not backed by the underlying RWA. They are essentially free floating and only backed by the (limited) liquidity that has been injected into the system. 

The UniSynth smart contracts also create a ‘sTrader’ contract for each sToken created. The sTrader is allowed to mint & burn it’s associated sToken. The sTrader receives a price feed from an oracle, and uses the price feed to regularly nudge the UniSwap pool price in the direction of the oracle price. To move the Uniswap pool price, the sTrader can add & remove liquidity and perform swaps. The sTrader has 3 goals. In order of priority they are:

1. To move the price of the UniSwap pool towards the oracle price for the asset.  
2. To provide sToken entry liquidity (allow users to buy sTokens).  
3. To provide sToken exit liquidity (allow users to sell sTokens).

The only costs associated with buying or selling an sToken are the usual gas and uniswap fees. There is no fee (interest) for holding an sToken. There is no support for leveraged purchases. The intention is to create a system where someone could purchase a sToken and hold it long term (days, weeks, months even years).  
   
Again, this is a demo release. Please do not put any real money into it. The risk of loss in doing so is high. 

### Major Risks

1. Contract coding bugs & hacking risks are high. This code is in beta and has not been formally or independently reviewed.  
2. Algorithm risks. The trading algorithm may not perform as expected resulting in the loss of liquidy or funds.  
3. Exit liquidity risks are high. There may not be enough exit liquidity to sell your holdings when you want (or need) to sell them.  
4. Price feed / Oracle risks are high. The oracle could become faulty, be hacked, or taken over by a malicious actor or even a state actor.  
5. Gas price risks exist. If the price of gas were to rise significantly, then this project may become non viable.  
6. This is not an exhaustive or complete set of risks. 

**Warning:**  
***UniSynth is in live demo mode. The demo is active on the ArbitrumOne chain. It has very very limited liquidity (intentional). It is a demo, please come and check it out, but do not put any real money in it. It is very likely that this version will fail and/or be mothballed before any upgrade is released. The risk of losing money placed into this system at this time is very high.*** 

### Active tokens

The following sTokens are live on the Arbitrum One chain:

| Name | NAS100 |
| :---- | :---- |
| Description | Synthetic Nasdaq 100 ERC20 token |
| sToken.name() | UniSynth Nasdaq100 |
| sToken.symbol() | NAS100us |
| Chain | Arbitrum One |
| sToken Address | [https://arbiscan.io/token/0xF8a0c62f92D75b0bb9bA3dE3996c1424477EB165](https://arbiscan.io/token/0xF8a0c62f92D75b0bb9bA3dE3996c1424477EB165)  |
| UniSwap | [https://app.uniswap.org/explore/tokens/arbitrum/0xf8a0c62f92d75b0bb9ba3de3996c1424477eb165](https://app.uniswap.org/explore/tokens/arbitrum/0xf8a0c62f92d75b0bb9ba3de3996c1424477eb165)  |
| Oracle | [Https://arbiscan.io/address/0xf332124c90aead918b3f857488ac06ff8bda2857](Https://arbiscan.io/address/0xf332124c90aead918b3f857488ac06ff8bda2857)  |
| baseToken | Circle USDc on Arbitrum One |

| Name | WTCO |
| :---- | :---- |
| Description | Synthetic West Texas Crude Oil ERC20 token |
| sToken.name() | UniSynth WestTexasCrudeOil |
| sToken.symbol() | WTCOus |
| Chain | Arbitrum One |
| sToken Address | [https://arbiscan.io/token/0xb01a0dE05eE3C58FE63d890D6791cD22ff8dD4bE](https://arbiscan.io/token/0xb01a0dE05eE3C58FE63d890D6791cD22ff8dD4bE)  |
| UniSwap | [https://app.uniswap.org/explore/tokens/arbitrum/0xb01a0de05ee3c58fe63d890d6791cd22ff8dd4be](https://app.uniswap.org/explore/tokens/arbitrum/0xb01a0de05ee3c58fe63d890d6791cd22ff8dd4be)  |
| Oracle | [https://arbiscan.io/address/0x950819c00476db15062b2594ca42f36e578b5463](https://arbiscan.io/address/0x950819c00476db15062b2594ca42f36e578b5463)  |
| baseToken | Circle USDc on Arbitrum One |

| Name | XPD |
| :---- | :---- |
| Description | Synthetic Palladium Ounce ERC20 token |
| sToken.name() | UniSynth PalladiumOunce |
| sToken.symbol() | XPDus |
| Chain | Arbitrum One |
| sToken Address | [https://arbiscan.io/token/0xbbc993f4259792a413ef720fcca299b1d06bb708](https://arbiscan.io/token/0xbbc993f4259792a413ef720fcca299b1d06bb708)  |
| UniSwap | [https://app.uniswap.org/explore/tokens/arbitrum/0xbbc993f4259792a413ef720fcca299b1d06bb708](https://app.uniswap.org/explore/tokens/arbitrum/0xbbc993f4259792a413ef720fcca299b1d06bb708)      |
| Oracle | [https://arbiscan.io/address/0x488f1acd70a4D8fd837D67Dd74c21D1061d06FC5](https://arbiscan.io/address/0x488f1acd70a4D8fd837D67Dd74c21D1061d06FC5)     |
| baseToken | Circle USDc on Arbitrum One |

| Name | CN50 |
| :---- | :---- |
| Description | Synthetic China A50 ERC20 token |
| sToken.name() | UniSynth China A50 |
| sToken.symbol() | CN50us |
| Chain | Arbitrum One |
| sToken Address | [https://arbiscan.io/token/0xDcFF35E849C85D6C70bEa6FC6346df232328b8C6](https://arbiscan.io/token/0xDcFF35E849C85D6C70bEa6FC6346df232328b8C6)  |
| UniSwap | [https://app.uniswap.org/explore/tokens/arbitrum/0xdcff35e849c85d6c70bea6fc6346df232328b8c6](https://app.uniswap.org/explore/tokens/arbitrum/0xdcff35e849c85d6c70bea6fc6346df232328b8c6)  |
| Oracle | [https://arbiscan.io/address/0xd8d9c1a97bb06fe742d586801248537505803702](https://arbiscan.io/address/0xd8d9c1a97bb06fe742d586801248537505803702)  |
| baseToken | Circle USDc on Arbitrum One |

| Name | RUB |
| :---- | :---- |
| Description | Synthetic Russian Ruble ERC20 token |
| sToken.name() | UniSynth Russian Ruble |
| sToken.symbol() | RUBus |
| Chain | Arbitrum One |
| sToken Address | [https://arbiscan.io/token/0x60deacC2b421aD6C0Bcf1Fdc8b7BF9af11fD2e7E](https://arbiscan.io/token/0x60deacC2b421aD6C0Bcf1Fdc8b7BF9af11fD2e7E)     |
| UniSwap | [https://app.uniswap.org/explore/tokens/arbitrum/0x60deacc2b421ad6c0bcf1fdc8b7bf9af11fd2e7e](https://app.uniswap.org/explore/tokens/arbitrum/0x60deacc2b421ad6c0bcf1fdc8b7bf9af11fd2e7e)      |
| Oracle | [https://arbiscan.io/address/0x3DDe92CB4e390cA74DfDd0FBD6232CDe68926dB6](https://arbiscan.io/address/0x3DDe92CB4e390cA74DfDd0FBD6232CDe68926dB6) 	  |
| baseToken | Circle USDc on Arbitrum One |

| Name | TSLA |
| :---- | :---- |
| Description | Synthetic Tesla ERC20 token |
| sToken.name() | UniSynth Tesla |
| sToken.symbol() | TSLAus |
| Chain | Arbitrum One |
| sToken Address | [https://arbiscan.io/token/0x8A3fCC052ad26FDd9F3Bf85D95220e3091Ea110f](https://arbiscan.io/token/0x8A3fCC052ad26FDd9F3Bf85D95220e3091Ea110f)  |
| UniSwap | [https://app.uniswap.org/explore/tokens/arbitrum/0x8a3fcc052ad26fdd9f3bf85d95220e3091ea110f](https://app.uniswap.org/explore/tokens/arbitrum/0x8a3fcc052ad26fdd9f3bf85d95220e3091ea110f)      |
| Oracle | [https://arbiscan.io/address/0xb88b51967fb397b8ba1ed9e72d86ebd2108b1886](https://arbiscan.io/address/0xb88b51967fb397b8ba1ed9e72d86ebd2108b1886) 	  |
| baseToken | Circle USDc on Arbitrum One |

| Name | SUNI |
| :---- | :---- |
| Description | Synthetic Uniswap Governance ERC20 token |
| sToken.name() | SyntheticUniSwapToken |
| sToken.symbol() | SUNI |
| Chain | Arbitrum One |
| sToken Address | [https://arbiscan.io/token/0x4cEe060Fe588D635A79dc1B879194d2dBAb95e72](https://arbiscan.io/token/0x4cEe060Fe588D635A79dc1B879194d2dBAb95e72)  |
| UniSwap | [https://app.uniswap.org/explore/tokens/arbitrum/0x4cee060fe588d635a79dc1b879194d2dbab95e72](https://app.uniswap.org/explore/tokens/arbitrum/0x4cee060fe588d635a79dc1b879194d2dbab95e72)      |
| Oracle | NA |
| baseToken | Circle USDc on Arbitrum One |

FAQ

Q: Is your contract code available?  
A: While in demo mode our code is not available. It will be made available in time.

Q: Is your contract code Open Source?  
A: We intend to release the code under MIT licence at a future date.  
   
Q: Is your contract code immutable?  
A: Not at present. The code uses openzepplin’s ‘Ownable’, so there is potential to burn the keys in the future.

Q: Who is your oracle?  
A: At present we use an oracle that we control. This is for cost & debugging purposes. In the future we intend to use other third party oracles (ChainLink, Pyth etc). The TSLA sToken currently (partially & indirectly) gets a price feed from ChainLink.

Q: How often does the sTrader update it’s price & perform actions on the uniswap pool?  
A: Currently every 4 hours the sTrader nudges the price and reconfigures liquidity pools in the uniswap pool. The time is configurable, and with volume that update rate could be increased.

Q: How does UniSynth pay for oracle gas/fees?  
A: The sTrader provides liquidity to the uniswap pool. The uniswap fees generated from swaps are used to purchase gas (for the oracle) and also to purchase & burn SUNI tokens (SUNI tokens is UniSynths governance token).

Q: Who is in your team?  
A: We have a team of 3 at present. They are all university educated Science & Engineering professionals. They have more than 35 years of commercial software development experience between them. The lead has been in crypto science since the beginning and is a former bitcoin core developer. 

Q: Where are you based?  
A: Australia at present. However we may move to a more crypto friendly country if that makes financial & legal sense to do so.

Q: Can you name your team?  
A: The team wishes to remain anonymous. However the team has not gone to absurd lengths to hide who they are. The smart ones can work it out, however please do not dox us.

Q: Is this even legal?  
A: It is a good question. We think it is legal in our resident country. There are many questions, but the answers are more than a little grey. 

Q: Is it legal for me to interact with your contracts?  
A: We suggest you get your own legal advice.

Q: Do you have a marketing team / support team etc?  
A: No, we are just a couple of devs. We will not be doing any formal marketing, nor do we offer any support. Our focus is development at this point.

Q: Who has financed this?  
A: The team is self financed.

Q: How can I support this project?  
A: Purchase our SUNI tokens on the open market or tell the world what we have.

Q: How can I contact your team?  
A: You could try a PM on X(twitter) or send us an email. However we have limited resources, so you may not get a fast or timely response.

Q: Why is there no leverage on sTokens?  
A: We do not intend to provide leverage. In the future we may support an AAVE style borrow/lend market, however it would be a separate project

 

 

