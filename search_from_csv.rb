code = ARGV[0]

# 処理速度を計測する
start_time = Time.now

File.open("KEN_ALL.CSV", "r:shift_jis").each_line do |line|
  line.chomp! #末尾が改行の場合、その改行文字を削る
  rows = line.split(/,/)
  zipcode = rows[2].gsub(/"/, '')
  if zipcode == code
    puts line.encode("utf-8")
  end
end

p Time.now - start_time
