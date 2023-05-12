// スマートコントラクトを実装
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Transactions {
  // 仮想通貨の受け渡しのためのスキーマ
  struct TransferStruct {
    address sender;
    address receiver;
    uint amount;
  }

  TransferStruct[] transactions;

  function addToBlockChain(address payable receiver, uint amount) public {
    transactions.push(TransferStruct(msg.sender, receiver, amount));
  }

}