package utils

import (
	"encoding/binary"
	"math"
	"time"
)

// Convert given date to date formatted string
func DateToFormat(layout string, d int64) string {
	intTime := int64(d)
	t := time.UnixMilli(intTime)
	if layout == "" {
		layout = "2006-01-02 15:04:05"
	}
	return t.Format(layout)
}

// Convert given float  to bytes array
func Float64ToByte(f float64) []byte {
	var buf [8]byte
	binary.BigEndian.PutUint64(buf[:], math.Float64bits(f))
	return buf[:]
}
