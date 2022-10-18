# JSON RPC

The next list of JSON RPC calls where used for plugin development.
For response examples see spec/resources:

  * getbalance
  
    `curl  --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getbalance", "params": [] }' -H 'content-type: text/plain;' http://user:password@127.0.0.1:55466`
  * getblock
  
    `curl  --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getblock", "params": ["bcec89d6da6b45a127ecc17a0de59fbb14ba2678dcccd3e5b91c8c64f781806f", true] }' -H 'content-type: text/plain;' http://user:password@127.0.0.1:55466`
  * getblockcount
  
    `curl  --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getblockcount", "params": [] }' -H 'content-type: text/plain;' http://user:password@127.0.0.1:55466`
  * getblockhash
  
    `curl --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getblockhash", "params": [40500] }' -H 'content-type: text/plain;' http://user:password@127.0.0.1:55466 `
  * getnewaddress
  
    `curl --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getnewaddress", "params": [] }' -H 'content-type: text/plain;' http://user:password@127.0.0.1:55466 `
  * listaddressgroupings
  
    `curl --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "listaddressgroupings", "params": [] }' -H 'content-type: text/plain;' http://user:password@127.0.0.1:55466`
  * sendtoaddress
  
    `curl --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "sendtoaddress", "params": ["XLKJCQBQd42UK8foCxZLq1Y2cYCEtAvfwT", 0.11] }' -H 'content-type: text/plain;' http://user:password@127.0.0.1:55466`
  * methodnotfound
  
    `curl  --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "methodnotfound", "params": [] }' -H 'content-type: text/plain;' http://user:password@127.0.0.1:55466`
* getrawtransaction
  
    `curl --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getrawtransaction", "params": ['2469a0a71362eef4e2ab0a48f0e5ac8a2db9b899a4c2731e2972771e424b52d4', true] }' -H 'content-type: text/plain;' http://user:password@127.0.0.1:55466 `
