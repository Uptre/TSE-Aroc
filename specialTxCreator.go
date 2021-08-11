package main

import (
"encoding/hex"
"encoding/json"
"fmt"
)


type PatcherInput struct {
	PatchAddr [20]byte
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


func Inputencoding(){
	input := &PatcherInput{
		PatchAddr:  HexToAddress("0xFb2FBfC2381c82dC4D6Bbb34e851B9eBe47a0AC1"),
		TargetAddr:   HexToAddress("0x598dC737741B05df741D9bA284E9EdC21A46151f"),
		Nonce:         	 	36,
		FuncSelector: BytesliceToBytearray("0x2e1a7d4d"),
	}

	payload, _ := json.Marshal(input)
	fmt.Printf("The data of the special transaction：  %x\n", payload)
}


func main()  {
	Inputencoding()
}

