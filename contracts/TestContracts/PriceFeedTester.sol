// SPDX-License-Identifier: MIT

pragma solidity 0.8.19;
import "../PriceFeed.sol";

contract PriceFeedTester is PriceFeed {
	function setPrice(address _asset, uint256 _price) external {
		priceRecords[_asset] = PriceRecord({ scaledPrice: _price, timestamp: block.timestamp });
	}

	function _getRETH_ETHValue() internal pure override returns (uint256) {
		return 1054021266924449498;
	}

	function _getWstETH_StETHValue() internal pure override returns (uint256) {
		return 1104446462143629660;
	}
}
