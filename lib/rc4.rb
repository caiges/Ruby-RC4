class RC4
  def initialize(str)
    begin
      raise SyntaxError, "RC4: Key supplied is blank"  if str.eql?('')
      initialize_state(str)
      @q1, @q2 = 0, 0
    end
  end

  def encrypt!(text)
    index = 0
    while index < text.length
      @q1 = (@q1 + 1) % 256
      @q2 = (@q2 + @state[@q1]) % 256
      @state[@q1], @state[@q2] = @state[@q2], @state[@q1]
      text.setbyte(index, text.getbyte(index) ^ @state[(@state[@q1] + @state[@q2]) % 256])
      index += 1
    end
    text
  end

  alias_method :decrypt!, :encrypt!

  def encrypt(text)
    encrypt!(text.dup)
  end

  alias_method :decrypt, :encrypt

  private

  # The initial state which is then modified by the key-scheduling algorithm
  INITIAL_STATE = (0..255).to_a

  # Performs the key-scheduling algorithm to initialize the state.
  def initialize_state(key)
    i = j = 0
    @state = INITIAL_STATE.dup
    key_length = key.length
    while i < 256
      j = (j + @state[i] + key.getbyte(i % key_length)) % 256
      @state[i], @state[j] = @state[j], @state[i]
      i += 1
    end
  end

end
