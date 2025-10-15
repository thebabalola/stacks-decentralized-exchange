# Stacks Decentralized Exchange (DEX)

A fully functional decentralized exchange built on the Stacks blockchain, implementing an Automated Market Maker (AMM) with constant product formula (x*y=k).

## 🚀 Features

- **Permissionless Pool Creation**: Create trading pools for any SIP-010 compliant tokens
- **Liquidity Provision**: Add and remove liquidity to earn trading fees
- **Token Swapping**: Swap tokens using the constant product market maker formula
- **Fee Distribution**: Trading fees are distributed to liquidity providers
- **SIP-010 Compliance**: Works with all standard Stacks tokens

## 📁 Project Structure

```
decentralized-exchange/
├── amm/                    # AMM smart contract
│   ├── contracts/          # Clarity smart contracts
│   │   ├── amm.clar       # Main AMM contract
│   │   └── mock-token.clar # SIP-010 test tokens
│   ├── tests/             # Contract tests
│   └── Clarinet.toml      # Clarinet configuration
└── frontend/              # React frontend interface
    ├── src/               # Source code
    ├── components/        # React components
    └── package.json       # Dependencies
```

## 🛠️ Smart Contract Features

### AMM Contract (`amm.clar`)
- **create-pool**: Create new trading pools
- **add-liquidity**: Provide liquidity to pools
- **remove-liquidity**: Withdraw liquidity from pools
- **swap**: Exchange tokens using constant product formula
- **get-pool-data**: Query pool information
- **get-position-liquidity**: Check user's liquidity position

### Mock Token Contract (`mock-token.clar`)
- SIP-010 compliant fungible token
- Minting functionality for testing
- All standard token functions (transfer, balance, etc.)

## 🧪 Testing

The project includes comprehensive tests covering:
- Pool creation and duplicate prevention
- Liquidity provision and removal
- Token swapping functionality
- Fee distribution mechanisms

Run tests with:
```bash
cd amm
npm test
```

## 🚀 Deployment

The contracts are deployed to Stacks testnet and ready for interaction.

## 🔧 Development

### Prerequisites
- Node.js
- Clarinet CLI
- Stacks wallet

### Setup
1. Clone the repository
2. Install dependencies:
   ```bash
   cd amm && npm install
   cd ../frontend && npm install
   ```
3. Run tests:
   ```bash
   cd amm && npm test
   ```

## 📖 How It Works

The DEX uses the constant product market maker formula (x*y=k) where:
- x = amount of token X in the pool
- y = amount of token Y in the pool  
- k = constant product

When a swap occurs, the formula ensures that the product of the two token amounts remains constant, automatically determining the exchange rate.

## 🎯 Use Cases

- **Liquidity Providers**: Earn fees by providing liquidity to trading pools
- **Traders**: Swap tokens at market rates with minimal slippage
- **Token Creators**: Create trading pools for new tokens
- **DeFi Protocols**: Integrate with other DeFi applications

## 📄 License

This project is open source and available under the MIT License.