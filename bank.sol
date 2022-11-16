// SPDX-License-Identifier: MIT
pragma solidity ^0.7.0; 
//declared the solidity version

//defining a contract
contract MyContract {
    address private owner;

    //define a construstor

    constructor(){
        owner=msg.sender; 
    }
  
    //function to get the address of the owner
    function getOwner()
    
        public view returns (address) {
            return owner;
        }

        //function to get return the balancr of the owner
        function getbalance()
        public view returns(uint256){
            return owner.balance;
        }

        //function to deposit money
        function deposit() external payable{
            require(msg.value == 2 ether, "Please send two ethers");
        }

        //Function to withdraw money
        function withdraw() external{
            require(msg.sender == owner, "No");
            msg.sender.transfer(address(this).balance);
        }

}
