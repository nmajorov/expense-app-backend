package logger

import (
	"bytes"
	"fmt"
	s "strings"
	"testing"
)

type bufferingBuffer struct {
	held    bytes.Buffer
	flushed bytes.Buffer
}

func (b *bufferingBuffer) Write(p []byte) (int, error) {
	return b.held.Write(p)
}

func (b *bufferingBuffer) String() string {
	return b.flushed.String()
}

func (b *bufferingBuffer) Flush() error {
	_, err := b.flushed.WriteString(b.held.String())
	return err
}

func TestLogger(t *testing.T) {
	t.Run("uses default output if none is given", func(t *testing.T) {
		//buf := new(bufferingBuffer)
		var buf bufferingBuffer
		//writer := bufio.NewWriter(buf)

		logger := newLogger()
		logger.SetOutput(&buf)

		logger.Info("this is test ", "who", "programmer", "why", "testing")
		str := buf.held.String()
		fmt.Printf("str: %v\n", str)
		hasLevelInfo := s.Contains(str, "level=info")

		if !hasLevelInfo {
			t.Fatalf(`don't has info level`)
		}

		msgContains := "msg=\"this is test whoprogrammerwhytesting\""
		wantMsgContains := s.Contains(str, msgContains)
		if !wantMsgContains {
			t.Fatal("message not correspond")
		}

	})
}
