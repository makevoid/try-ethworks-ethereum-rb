abi = JSON.parse("[{\"constant\":true,\"inputs\":[],\"name\":\"get\",\"outputs\":[{\"name\":\"\",\"type\":\"bytes32\"}],\"payable\":false,\"stateMutability\":\"view\",\"type\":\"function\"},{\"constant\":false,\"inputs\":[{\"name\":\"data\",\"type\":\"bytes32\"}],\"name\":\"set\",\"outputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"function\"}]")

contract_address = "0x8e37d00a91ebc32f8bf223883df7804baf27d069"
contract = Ethereum::Contract.create name: "store", address: "0x01a4d1A62F01ED966646acBfA8BB0b59960D06dd ", abi: abi, client: CLIENT
