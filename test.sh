##docker exec -it cli peer chaincode invoke -o orderer2.example.com:7050 -n mycc -c '{"Args":["set", "a", "65"]}' -C mychannel
export FABRIC_START_TIMEOUT=1
echo ${FABRIC_START_TIMEOUT}
sleep ${FABRIC_START_TIMEOUT}
docker exec -it cli peer chaincode invoke -o orderer2.example.com:7050 -n mycc -c '{"Args":["get", "a"]}' -C mychannel
