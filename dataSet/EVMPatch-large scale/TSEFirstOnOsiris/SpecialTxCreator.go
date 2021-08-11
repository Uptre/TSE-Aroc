package main

import (
	"encoding/hex"
	"encoding/json"
	"fmt"
	//"github.com/ethereum/go-ethereum/common"
)


type PatcherInput struct {
	PatcherAddr [20]byte
	TargetAddr	[20]byte
	Nonce		  uint64
	FuncSelector [4]byte
}

func Hex2Bytes(str string) []byte {
	h, _ := hex.DecodeString(str)

	return h
}

func FromHex(s string) []byte {
	if len(s) > 1 {
		if s[0:2] == "0x" || s[0:2] == "0X" {
			s = s[2:]
		}
		if len(s)%2 == 1 {
			s = "0" + s
		}
		return Hex2Bytes(s)
	}
	return nil
}

func BytesToAddress(b []byte) [20]byte {
	var a [20]byte
	if len(b) > 20 {
		b = b[len(b)-20:]
	}
	copy(a[20-len(b):], b)
	return a
}

func HexToAddress(s string) [20]byte   { return BytesToAddress(FromHex(s)) }

func BytesliceToBytearray(s string) [4]byte {
	tmp := FromHex(s)
	var data [4]byte
	for i := 0; i <= 3; i = i+1 {
		data[i] = tmp[i]
	}
	return data
}


//func Inputencoding(ContractAddress Address, Nounce uint64, Funselector [4]byte, Code []byte) {
func Inputencoding(){

	input := &PatcherInput{
		PatcherAddr: HexToAddress("0x7ec148c6e08e6665273e78798f63282bacf87eb2"),
		TargetAddr:	HexToAddress("0x1028a9963e9ba8781b5e5bb2ee9ce97ffb0ec08a"),
		Nonce:		   9,
		FuncSelector: BytesliceToBytearray("0x3ccfd60b"),
	}

	payload, err := json.Marshal(input)//0xa444f5e90000000000000000000000000000000000000000000000000000000000000001
	fmt.Printf("Marshalled data %x \n", payload)

	var unmar PatcherInput
	var unmar1 PatcherInput
	x := string(unmar1.PatcherAddr[:])
	fmt.Printf("len of unmar1 Addr before assign %x\n", x[0])
	err = json.Unmarshal(payload, &unmar)
	if err != nil {
		fmt.Println("\nerror %v\n", err)
	}
	fmt.Printf("Unmarshalled data %x\n", unmar) //%x是以十六进制输出，%v是以字节形式输

	fmt.Printf("unmarshalled patcher addr %v\n", unmar.PatcherAddr)
	fmt.Printf("unmarshalled target addr %v\n", unmar.TargetAddr)
	fmt.Printf("unmarshalled nonce %v\n", unmar.Nonce)
	fmt.Printf("unmarshalled FuncSelector %v\n", unmar.FuncSelector)
	fmt.Printf("len of unmar1 Addr before assign %x\n", string(unmar.PatcherAddr[:]))
}


func main()  {
	Inputencoding()
}
©package main

import (
	"encoding/hex"
	"encoding/json"
	"fmt"
	//"github.com/ethereum/go-ethereum/common"
)


type PatcherInput struct {
	PatcherAddr [20]byte
	TargetAddr	[20]byte
	Nonce		  uint64
	FuncSelector [4]byte
}

func Hex2Bytes(str string) []byte {
	h, _ := hex.DecodeString(str)

	return h
}

func FromHex(s string) []byte {
	if len(s) > 1 {
		if s[0:2] == "0x" || s[0:2] == "0X" {
			s = s[2:]
		}
		if len(s)%2 == 1 {
			s = "0" + s
		}
		return Hex2Bytes(s)
	}
	return nil
}

func BytesToAddress(b []byte) [20]byte {
	var a [20]byte
	if len(b) > 20 {
		b = b[len(b)-20:]
	}
	copy(a[20-len(b):], b)
	return a
}

func HexToAddress(s string) [20]byte   { return BytesToAddress(FromHex(s)) }

func BytesliceToBytearray(s string) [4]byte {
	tmp := FromHex(s)
	var data [4]byte
	for i := 0; i <= 3; i = i+1 {
		data[i] = tmp[i]
	}
	return data
}


//func Inputencoding(ContractAddress Address, Nounce uint64, Funselector [4]byte, Code []byte) {
func Inputencoding(){

	input := &PatcherInput{
		PatcherAddr: HexToAddress("0x7ec148c6e08e6665273e78798f63282bacf87eb2"),
		TargetAddr:	HexToAddress("0x1028a9963e9ba8781b5e5bb2ee9ce97ffb0ec08a"),
		Nonce:		   9,
		FuncSelector: BytesliceToBytearray("0x3ccfd60b"),
	}

	payload, err := json.Marshal(input)//0xa444f5e90000000000000000000000000000000000000000000000000000000000000001
	fmt.Printf("Marshalled data %x \n", payload)
}


func main()  {
	Inputencoding()
}