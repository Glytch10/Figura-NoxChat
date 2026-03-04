ChatCfg = {



  --========================== AUTO-FORMAT OPTIONS ==========================--
  -- Fill this region with whatever formatting you want to automatically apply to your messages. Ex: '&c&o', for italic red.
  default = "",
  -- Fill this region with whatever symbol(s) you want to use to CANCEL the above formatting and send a regular message. '/' is already included.
  escape = "",
    -- should the escape character be visible in the chat (example, using parenthesis for ooc will show up)
  hideEscape = true,



  --========================== PING OPTIONS ==========================--
    -- pinging you must start with this symbol and your username. leave blank to ping with just your name/any symbol.
  pingPrefix = "@",
    -- this sound will play for you when you're pinged. leave blank to not have pings.
      -- supports a {"sound1","sound2",etc}, table. supports custom sounds.
  pingSound = {
    "block.note_block.iron_xylophone",
    "block.note_block.iron_xylophone",
  },
    -- same as above, pitches of each sound in order
  pingPitch = {
    1,
    1.7,
  },
    -- any name in this list will play the ping sound when the prefix is present. leave as {} to disable and only use your player name
  pingNames = {
    "YOURNICKNAME1",
    "YOURNICKNAME2",
  },



  --========================== SPEAK SOUND OPTIONS ==========================--
    -- sound(s) you want to play when you send a message. leave blank to remain mute.
      -- supports a {"sound1","sound2",etc}, table. supports custom sounds.
  speakSounds = {
    "",
  },
  shoutSounds = {
    "",
  },
    -- same as above, pitches of each sound in order
  speakPitch = {
    1,
  },
  shoutPitch = {
    1,
  },
    -- same as above, volumes of each sound in order
  speakVol = {
    1,
  },
  -- There is no shout volume because they're set to 1000000 anyways to make them global

    -- if you want to send a single message with no sound, begin it with the following symbol. leave blank to disable
  speakMuteKey = "",
    -- if you want to send a 'shout' message that will play globally across the dimension, begin it with the following symbol. DO NOT BE ANNOYING
  speakShoutKey = "",


  
  --========================== TECHNICAL OPTIONS ==========================--
    -- max interpreter length. leave blank to disable, set to 0 to shut off the interpreter.
      -- if you are receiving the error "message exceeded interpreter length" frequently, this value may be too low.
      -- be advised that disabling this failsafe or setting the value too high could result in lag spikes with complex messages.
  maxLength = 2048,
    -- whether or not to show interpreter errors or simply fallback to the default message.
      -- not showing the error makes it harder for me to debug, but makes it more convenient to read.
  showErrors = true,
    -- interpreter cancel keys. if you need a specific type of message to not be interpreted, you can put a lua pattern string in this table.
      -- leave blank if you don't know what you're doing.
  cancelKeys = {
    
  },



  --========================== CYPHER OPTIONS ==========================--
    -- see below for cypher brackets
  cypherBrackets = "f:",

}

--[[========================== CYPHERS ==========================--

  The following table is how custom "fonts" are loaded into NoxChat's send handler.
  There are no actual fonts, you just have a list of characters and their replacements.
  Essentially, it is a dictionary.
  The code will check each letter in the message you send, and if it is in the cypher table,
  it will replace it with the cypher letter.
  This makes it appear as the sent character FOR EVERYONE.
  Not just NoxChat users.
  This can be both a good thing and a bad thing.
  Since Figura modifies chat messages on the client end,
  these messages and their contents can be reported. Neither Figura nor I will take
  responsibility if a NoxChat message gets reported.

  TO USE:
   - Decide on a symbol(s) to use before a set of () as "font brackets". Example, "cyph:" would end up "cyph:(nameofcypher)"
   - Use empty brackets in-game to clear the cypher. Example, "cyph:()"
   - Name your cypher, and set it = to a table {}. The name will be used in the font brackets
   - In the cypher table {}, set a sequence of symbols equal to their replacement. Recommended format is ["a"] = "letter to replace a"
   - Ensure that there are commas between each value

=================================================================]]

CYPHERS = {
  
  sc = { -- Not all letters have to be filled. This cypher (small capitals) only affects lowercase letters that don't already look like capitals.
    a="ᴀ",b="ʙ",d="ᴅ",e="ᴇ",f="ғ",
    g="ɢ",h="ʜ",i="ɪ",j="ᴊ",k="ᴋ",l="ʟ",
    m="ᴍ",n="ɴ",p="ᴘ",q="ǫ",r="ʀ",
    t="ᴛ",u="ᴜ",v="ᴠ",w="ᴡ",y="ʏ"
  },
  olde = { -- there is a difference between lowercase and upper
    A="𝔄",B="𝔅",C="ℭ",D="𝔇",E="𝔈",F="𝔉",G="𝔊",
    H="ℌ",I="ℑ",J="𝔍",K="𝔎",L="𝔏",M="𝔐",N="𝔑",
    O="𝔒",P="𝔓",Q="𝔔",R="ℜ",S="𝔖",T="𝔗",U="𝔘",
    V="𝔙",W="𝔚",X="𝔛",Y="𝔜",Z="ℨ",
    a="𝔞",b="𝔟",c="𝔠",d="𝔡",e="𝔢",f="𝔣",g="𝔤",
    h="𝔥",i="𝔦",j="𝔧",k="𝔨",l="𝔩",m="𝔪",n="𝔫",
    o="𝔬",p="𝔭",q="𝔮",r="𝔯",s="𝔰",t="𝔱",u="𝔲",
    v="𝔳",w="𝔴",x="𝔵",y="𝔶",z="𝔷",
  },
  bin = { -- this is really just an example of how to format numbers and symbols
    ["2"]="10 ",["3"]="11 ",["4"]="100 ",
    ["5"]="101 ",["6"]="110 ",["7"]="111 ",["8"]="1000 ",["9"]="1001 ",
  },
  sga = { -- bro's speakin enchantingtable
    A="ᔑ",B="ʖ",C="ᓵ",D="↸",E="ᒷ",F="⎓",G="⊣",
    H="⍑",I="╎",J="⋮",K="ꖌ",L="ꖎ",M="ᒲ",N="リ",
    O="𝙹",P="!¡",Q="ᑑ",R="∷",S="ᓭ",T="ℸ\\u0323",U="⚍",
    V="⍊",W="∴",X="̇/",Y="\\|\\|",Z="⨅",
    a="ᔑ",b="ʖ",c="ᓵ",d="↸",e="ᒷ",f="⎓",g="⊣",
    h="⍑",i="╎",j="⋮",k="ꖌ",l="ꖎ",m="ᒲ",n="リ",
    o="𝙹",p="!¡",q="ᑑ",r="∷",s="ᓭ",t="ℸ\\u0323",u="⚍",
    v="⍊",w="∴",x="̇/",y="\\|\\|",z="⨅",
  },

}

--[[
========================================================
|        DO NOT TOUCH ANYTHING BELOW THIS POINT        |
|------------------------------------------------------|
|     If you do not heed this warning, severe          |
|      migraine, muscle spasms, irritability,          |
|       seizure, mental illness, spontaneous           |
|         combustion, severe injuries, and             |
|                death may occur.                      |
========================================================
]] --

function pings.speakSound(pos)
  for i,v in ipairs(ChatCfg.speakSounds) do if ChatCfg.speakPitch[i] ~= nil and ChatCfg.speakVol[i] ~= nil then sounds:playSound(v,pos,ChatCfg.speakVol[i],ChatCfg.speakPitch[i]) end end end
function pings.shoutSound()
  for i,v in ipairs(ChatCfg.shoutSounds) do if ChatCfg.shoutPitch[i] ~= nil then sounds:playSound(v,client:getCameraPos(),10,ChatCfg.shoutPitch[i]) end end end
if not host:isHost() then return end
-- https://github.com/rxi/json.lua/blob/master/json.lua
local escape_char_map = { ["\\"] = "\\", ["\""] = "\"", ["\b"] = "b", ["\f"] = "f", ["\n"] = "n", ["\r"] = "r", ["\t"] = "t" }
local err = "unknown"
local escape_char_map_inv = { ["/"] = "/" }
for k, v in pairs(escape_char_map) do escape_char_map_inv[v] = k end
local parse
local function create_set(...) local res = {} for i = 1, select("#", ...) do res[select(i, ...)] = true end return res end
local space_chars  = create_set(" ", "\t", "\r", "\n")
local delim_chars  = create_set(" ", "\t", "\r", "\n", "]", "}", ",")
local escape_chars = create_set("\\", "/", '"', "b", "f", "n", "r", "t", "u")
local literals     = create_set("true", "false", "null")
local literal_map  = { ["true"] = true, ["false"] = false, ["null"] = nil }
local function next_char(str, idx, set, negate) for i = idx, #str do if set[str:sub(i, i)] ~= negate then return i end end return #str + 1 end
local function decode_error(str, idx, msg) if err ~= "unknown" then return end local line_count = 1 local col_count = 1 for i = 1, idx - 1 do col_count = col_count + 1 if str:sub(i, i) == "\n" then line_count = line_count + 1 col_count = 1 end end err = string.format("%s at line %d col %d", msg, line_count, col_count) end
local function codepoint_to_utf8(n)
  -- http://scripts.sil.org/cms/scripts/page.php?site_id=nrsi&id=iws-appendixa
  local f = math.floor
  if n <= 0x7f then return string.char(n)
  elseif n <= 0x7ff then return string.char(f(n / 64) + 192, n % 64 + 128)
  elseif n <= 0xffff then return string.char(f(n / 4096) + 224, f(n % 4096 / 64) + 128, n % 64 + 128)
  elseif n <= 0x10ffff then return string.char(f(n / 262144) + 240, f(n % 262144 / 4096) + 128, f(n % 4096 / 64) + 128, n % 64 + 128) end
  err = ( string.format("invalid unicode codepoint '%x'", n) ) return ""
end
local function parse_unicode_escape(s)
  local n1 = tonumber( s:sub(1, 4),  16 )
  local n2 = tonumber( s:sub(7, 10), 16 )
   -- Surrogate pair?
  if n2 then return codepoint_to_utf8((n1 - 0xd800) * 0x400 + (n2 - 0xdc00) + 0x10000) else return codepoint_to_utf8(n1) end
end
local function parse_string(str, i)
  local res = "" local j = i + 1 local k = j
  while j <= #str do
    local x = str:byte(j)
    if x < 32 then decode_error(str, j, "control character in string") return "", 0
    elseif x == 92 then -- `\`: Escape
      res = res .. str:sub(k, j - 1) j = j + 1 local c = str:sub(j, j) if c == "u" then local hex = str:match("^[dD][89aAbB]%x%x\\u%x%x%x%x", j + 1) or str:match("^%x%x%x%x", j + 1) if hex == nil then decode_error(str, j - 1, "invalid unicode escape in string") else res = res .. parse_unicode_escape(hex) j = j + #hex end else if not escape_chars[c] then decode_error(str, j - 1, "invalid escape char '" .. c .. "' in string") return "", 0 else res = res .. escape_char_map_inv[c] end end k = j + 1
    elseif x == 34 then -- `"`: End of string
      res = res .. str:sub(k, j - 1) return res, j + 1
    end
    j = j + 1
  end
  decode_error(str, i, "expected closing quote for string") return "", 0
end
local function parse_number(str, i) local x = next_char(str, i, delim_chars) local s = str:sub(i, x - 1) local n = tonumber(s) if not n then decode_error(str, i, "invalid number '" .. s .. "'") return 0, x end return n, x end
local function parse_literal(str, i) local x = next_char(str, i, delim_chars) local word = str:sub(i, x - 1) if not literals[word] then decode_error(str, i, "invalid literal '" .. word .. "'") return nil, x end return literal_map[word], x end
local function parse_array(str, i)
  local res = {} local n = 1 i = i + 1
  while 1 do
    local x
    i = next_char(str, i, space_chars, true)
    -- Empty / end of array?
    if str:sub(i, i) == "]" then i = i + 1 break end
    -- Read token
    x, i = parse(str, i) res[n] = x n = n + 1
    -- Next token
    i = next_char(str, i, space_chars, true) local chr = str:sub(i, i) i = i + 1 if chr == "]" then break end
    if chr ~= "," then decode_error(str, i, "expected ']' or ',' but got "..chr) return {}, i end
  end
  return res, i
end
local function parse_object(str, i)
  local res = {} i = i + 1
  while 1 do
    local key, val i = next_char(str, i, space_chars, true)
    -- Empty / end of object?
    if str:sub(i, i) == "}" then i = i + 1 break end
    -- Read key
    if str:sub(i, i) ~= '"' then decode_error(str, i, "expected string for key") return {}, i end key, i = parse(str, i)
    -- Read ':' delimiter
    i = next_char(str, i, space_chars, true) if str:sub(i, i) ~= ":" then decode_error(str, i, "expected ':' after key") return {}, i end i = next_char(str, i + 1, space_chars, true)
    -- Read value
    val, i = parse(str, i)
    -- Set
    res[key] = val
    -- Next token
    i = next_char(str, i, space_chars, true) local chr = str:sub(i, i) i = i + 1 if chr == "}" then break end if chr ~= "," then decode_error(str, i, "expected '}' or ',' but got '"..chr.."'") return {}, i end
  end
  return res, i
end
local char_func_map = { [ '"' ] = parse_string, [ "0" ] = parse_number, [ "1" ] = parse_number, [ "2" ] = parse_number, [ "3" ] = parse_number, [ "4" ] = parse_number, [ "5" ] = parse_number, [ "6" ] = parse_number, [ "7" ] = parse_number, [ "8" ] = parse_number, [ "9" ] = parse_number, [ "-" ] = parse_number, [ "t" ] = parse_literal, [ "f" ] = parse_literal, [ "n" ] = parse_literal, [ "[" ] = parse_array, [ "{" ] = parse_object, }
parse = function(str, idx) local chr = str:sub(idx, idx) local f = char_func_map[chr] if f then return f(str, idx) end decode_error(str, idx, "unexpected character '" .. chr .. "'") return nil, idx end
local function decode(str) if type(str) ~= "string" then err = ("expected argument of type string, got " .. type(str)) return str end local res, idx = parse(str, next_char(str, 1, space_chars, true)) idx = next_char(str, idx, space_chars, true) if idx <= #str then decode_error(str, idx, "trailing garbage") return res end return res end

---@diagnostic disable: param-type-mismatch
events.chat_send_message:register(function(message)
  local msg = message
  if msg:sub(1, 1) == "/" then return msg end
  local hasDefault = false
  if (ChatCfg.escape ~= "") and msg:sub(1, #ChatCfg.escape) == ChatCfg.escape then if ChatCfg.hideEscape then msg = msg:sub(#ChatCfg.escape + 1) end
  else hasDefault = true end
  if ChatCfg.speakSounds ~= nil and ChatCfg.speakSounds ~= {} then
    local offset = (not hasDefault and not ChatCfg.hideEscape) and #ChatCfg.escape+1 or 1
    if (not ((ChatCfg.speakMuteKey ~= "") and msg:sub(offset, #ChatCfg.speakMuteKey+offset-1) == ChatCfg.speakMuteKey) and not (not hasDefault and ChatCfg.escape == ChatCfg.speakMuteKey)) then
      local shout = ((ChatCfg.speakShoutKey ~= "") and msg:sub(offset, #ChatCfg.speakShoutKey+offset-1) == ChatCfg.speakShoutKey)
      if shout then msg = msg:sub(offset+#ChatCfg.speakShoutKey) end
      if shout then pings.shoutSound() else pings.speakSound(player:getPos()) end
    elseif ChatCfg.speakMuteKey ~= ChatCfg.escape then msg = msg:sub(offset+#ChatCfg.speakMuteKey) end
  end
  if hasDefault then msg = ChatCfg.default..msg end
  local out = msg
  local format = ""
  if CYPHERS ~= nil then
    if ChatCfg.cypherBrackets ~= "" and msg:match("^.-"..ChatCfg.cypherBrackets.."%(.-%).-") then
      local cy = ""
      for i = 1, #msg do
        local ct = msg:sub(i,#msg)
        if (msg:sub(i-1):match("^[^\\]"..ChatCfg.cypherBrackets.."%(.-%).*") or i==1) and ct:match("^"..ChatCfg.cypherBrackets.."%(.-%).*") then
          cy = ct:match("^"..ChatCfg.cypherBrackets.."%((.-)%).*")
          if cy == nil then cy = "" end
          if out:match("^(.-)"..ChatCfg.cypherBrackets.."%(.-%).*") then out = out:match("^(.-)"..ChatCfg.cypherBrackets.."%(.-%).*") end
          format = ct:match("^.-%(.-%)(.-)"..ChatCfg.cypherBrackets.."%(.-%).*")
          if format == nil then format = ct:match("^.-%(.-%)(.*)") end
          if CYPHERS[cy] ~= nil then for s,v in pairs(CYPHERS[cy]) do format = format:gsub(s,v) end end
          out = out..format
        elseif msg:sub(i-1):match("^[\\]"..ChatCfg.cypherBrackets.."%(.-%).*") then out = out:gsub("\\"..ChatCfg.cypherBrackets,""..ChatCfg.cypherBrackets,1) end
      end
    end
  end
  return out
end,"NoxChat Auto-formatter")
local function con(s, v, c, f, h)
  local o = ""
  if v == nil then err = 'string for format was nil' return s end
  local t = v:gsub("\\([^nu\\])","%1"):gsub('"','\\"')
  o = s .. ',{"text":"' .. t .. '"'
  if (c ~= nil) and (c ~= "") then
    local co
    if #c == 1 then
      if c == "0" then co = "000000" end
      if c == "1" then co = "0000aa" end
      if c == "2" then co = "00aa00" end
      if c == "3" then co = "00aaaa" end
      if c == "4" then co = "aa0000" end
      if c == "5" then co = "aa00aa" end
      if c == "6" then co = "ffaa00" end
      if c == "7" then co = "aaaaaa" end
      if c == "8" then co = "555555" end
      if c == "9" then co = "5555ff" end
      if c == "a" then co = "55ff55" end
      if c == "b" then co = "55ffff" end
      if c == "c" then co = "ff5555" end
      if c == "d" then co = "ff55ff" end
      if c == "e" then co = "ffff55" end
      if c == "f" then co = "ffffff" end
    else co = c end
    if co == nil then err = "expected 6-char hex text color, got nil" else
      if #co ~= 6 then err = "expected 6-char hex text color, got "..#co.."-char" end
    end
    if co ~= nil then o = o .. ',"color":"#' .. co .. '"' end
  end
  if f ~= nil then
    if f:match(".-l.-") then o = o .. ',"bold":true' end
    if f:match(".-o.-") then o = o .. ',"italic":true' end
    if f:match(".-k.-") then o = o .. ',"obfuscated":true' end
    if f:match(".-n.-") then o = o .. ',"underlined":true' end
    if f:match(".-m.-") then o = o .. ',"strikethrough":true' end
  end
  if h ~= nil and h ~= "" then o = o .. ',"hoverEvent":{"action":"show_text","contents":"' .. h .. '"}' end
  o = o .. "}"
  return o
end
local function cap(s)
  local c = s
  if (c == nil) then c = "f" end
  if (#c < 6) then
    c = c:gsub("(%x)",string.rep("%1",math.ceil(6/#c)))
    c = c:sub(1,6)
  end
  return c
end
local function chn(s)
  local m = (s:match("^%&[%(%xlonmkr]") or s:match("^%*") or s:match("^%_%_") or s:match("^%|%|") or s:match("^%~%~"))
  local t,k = s:match("^(.-[^\\])([%&%|%_%~%*])")
  if k=="&" then t = s:match("^(.-[^\\])%&[%(%xlonmkr]")
  elseif k=="|" then t = s:match("^(.-[^\\])%|%|")
  elseif k=="_" then t = s:match("^(.-[^\\])%_%_")
  elseif k=="~" then t = s:match("^(.-[^\\])%~%~") end
  if m then return "" end
  if t then return t end
  return s
end
local function hovcap(h)
  local m = (h:match("^%&r") or h:match("^%|%|"))
  local t = h:match("^(.-[^\\])%&r")
  if not t then t = h:match("^(.-[^\\])%|%|") end
  if not t then t = h end
  if m then return "" end
  if t then return t end
  return h
end
events.chat_receive_message:register( function(raw, text)
  for _,v in ipairs(ChatCfg.cancelKeys) do
    if text:match(v) then return text end
  end
  if ChatCfg.maxLength ~= nil then
    if #text > ChatCfg.maxLength then
      if ChatCfg.showErrors then return '§r§9§l§nNOXCHAT FAILURE!\n§r§c§lERROR: §r§4§omessage exceeded interpreter length§r\n'..raw..'', vec(0.1,0,0)
      else return text, vec(0.1,0,0) end
    end
  end
  local c, f, h, t, out, en = "", "", "", "", "", ""
  local format = true
  local sv, ftf = client:getServerData(), false
  if sv["ip"] ~= nil then ftf = sv["ip"]:match("ftfsmp.*") end
  local brgb = vec(0, 0, 0)
  if not ftf then 
    out,t,en = text:match('(.*"}}),"(.-)"(]})')
    if out ~= nil then out = out..',[""' end if en ~= nil then en = ']'..en end
  else
    out,t,en = text:match('(.*),{"text":"(.-)","color":"white"}(]}]})')
    if t == nil or t == "" then out,t,en = text:match('(.*%[)"(.-)"(]}]})') if out then out = out..'""' end end
  end
  if t == nil then return text end
  local matchedName = false
  if ChatCfg.pingNames ~= {} and ChatCfg.pingNames ~= nil then for _,v in ipairs(ChatCfg.pingNames) do if t:lower():match("^.-"..ChatCfg.pingPrefix..v:lower()..".*") then matchedName = true end end end
  if t:match("^.-"..ChatCfg.pingPrefix..player:getName()..".*") then matchedName = true end
  if matchedName then for i,v in ipairs(ChatCfg.pingSound) do if ChatCfg.pingPitch[i] ~= nil then sounds:playSound(v,player:getPos(),5,ChatCfg.pingPitch[i]) else err = "ping pitch for sound ID "..i.." was nil" end end end
  local txt = t
  local function applyChar(m,i,col,form,hov)
    local pre = t:match("^(.-[^\\])"..m..".*") or ""
    local suf = txt:sub(i,#txt):match("^"..m.."(.*)") or ""
    if format and i>1 then out = con(out,pre) end format = false t = pre..suf
    out = con(out,chn(suf),col,form,hov)
  end
  if t:match("^%&%$%x%x-%).*") then local hex = txt:match("^%&%$(%x-)%).*") txt = txt:sub(#hex+4,#txt) t = txt brgb = vectors.hexToRGB(hex) end
  for i = 1, #txt do repeat
    local ct = txt:sub(i,#txt)
    if player:getName():match("^.-_.*") and ct:match("^"..player:getName()..".*") then local name = player:getName() name = name:gsub("_","\\_") t = t:gsub(player:getName(),name) txt = txt:gsub(player:getName(),name) end
    if ct:match("^\\\\[nu%*%_%|%~%&].*") then local pre = t:match("^(.-\\)\\[nu%*%_%|%~%&].*") local suf = ct:match("^\\\\(.*)") t = pre..suf break
    elseif (txt:sub(i-1):match("^[^\\]%&%(%x%x-%).*") or i==1) and ct:match("^%&%(%x%x-%).*") then c = cap(ct:match("^%&%((%x%x-)%).*")) applyChar("%&%(%x%x-%)",i,c,f,h) break
    elseif (txt:sub(i-1):match("^[^\\]%&[%xlonmkr].*") or i==1) and ct:match("^%&[%xlonmkr].*") then local tc = ct:match("^%&(%x).*") local tf = ct:match("^%&([lonmk]).*") if tf == "k" then h = hovcap(ct:match("^%&k(.*)")) end if tc then c = tc end if tf then f = f..tf end if ct:match("^%&r.*") then c = "" f = "" end applyChar("%&[%xlonmkr]",i,c,f,h) break
    elseif (txt:sub(i-1):match("^[^\\%*]%*%*%*.*") or i==1) and ct:match("^%*%*%*.*") then local f1,k1,f2,k2,f3 = f:match("^(.-)(t[ol])(.-)(t[ol])(.*)") if k1 and k2 then f = (f1 or "")..(f2 or "")..(f3 or "") elseif k1 and (ct:match("^%*%*%*.-%*.-%*%*") or ct:match("^%*%*%*.-%*%*.-%*")) then if k1:match("to") then f = f.."tl" elseif k1:match("tl") then f = f.."to" end elseif ct:match("^%*%*%*.-%*.-%*%*") or ct:match("^%*%*%*.-%*%*.-%*") then f = f.."totl" end applyChar("%*%*%*",i,c,f,h) break
    elseif (txt:sub(i-1):match("^[^\\%*]%*%*.*") or i==1) and ct:match("^%*%*.*") then local f1,k,f2 = f:match("^(.-)(tl)(.*)") if k then f = (f1 or "")..(f2 or "") elseif ct:match("^%*%*.-%*%*") then f = f.."tl" end applyChar("%*%*",i,c,f,h) break
    elseif (txt:sub(i-1):match("^[^\\%*]%*.*") or i==1) and ct:match("^%*.*") then local f1,k,f2 = f:match("^(.-)(to)(.*)") if k then f = (f1 or "")..(f2 or "") elseif ct:match("^%*.-%*") then f = f.."to" end applyChar("%*",i,c,f,h) break
    elseif (txt:sub(i-1):match("^[^\\]%_%_.*") or i==1) and ct:match("^%_%_.*") then local f1,k,f2 = f:match("^(.-)(tn)(.*)") if k then f = (f1 or "")..(f2 or "") elseif ct:match("^%_%_.-%_%_") then f = f.."tn" end applyChar("%_%_",i,c,f,h) break
    elseif (txt:sub(i-1):match("^[^\\]%|%|.*") or i==1) and ct:match("^%|%|.*") then local f1,k,f2 = f:match("^(.-)(tk)(.*)") if k then f = (f1 or "")..(f2 or "") h = "" elseif ct:match("^%|%|.-%|%|") then f = f.."tk" h = hovcap(ct:match("^%|%|(.*)")) end applyChar("%|%|",i,c,f,h) break
    elseif (txt:sub(i-1):match("^[^\\]%~%~.*") or i==1) and ct:match("^%~%~.*") then local f1,k,f2 = f:match("^(.-)(tm)(.*)") if k then f = (f1 or "")..(f2 or "") elseif ct:match("^%~%~.-%~%~") then f = f.."tm" end applyChar("%~%~",i,c,f,h) break
    elseif not (txt:match("^%&[%(%$%xlonmkr].*") or txt:match("^.-[^\\]%&[%(%$%xlonmkr].*") or txt:match("^.-[^\\]%*.*") or txt:match("^%*.*") or txt:match("^.-[^\\]%_%_.*") or txt:match("^%_%_.*") or txt:match("^.-[^\\]%|%|.*") or txt:match("^%|%|.*") or txt:match("^.-[^\\]%|%|.*") or txt:match("^%|%|.*")) then out = text:gsub("\\(\\[nu%*%_%|%~%&])","%1") out = out:gsub("\\([%*%_%|%~%&])","%1") decode(out) if err == "unknown" then return out else if ChatCfg.showErrors then return '§r§9§l§nNOXCHAT FAILURE!\n§r§7§lJSON:§r§8§o'..out..'\n§r§c§lERROR: §r§4§o'..err..'\n§r'..raw..'', vec(0.1,0,0) else return text, vec(0.1,0,0) end end end
  until true end
  out = out:gsub("\\(\\[nu%*%_%|%~%&])","%1")
  out = out:gsub("\\([%*%_%|%~%&])","%1")
  out = out:gsub("([^\\])\\([^\\])","%1".."\\\\".."%2")
  if err == "unknown" then decode(out..en)
  else local prerr = err err = "unknown" if ChatCfg.showErrors then return '§r§9§l§nNOXCHAT FAILURE!\n§r§7§lJSON:§r§8§o'..out..en..'\n§r§c§lERROR: §r§4§o'..prerr..'\n§r'..raw..'', vec(0.1,0,0) else return text, vec(0.1,0,0) end end
  return out..en, brgb
end, "NoxChat interpreter")
local _p, _s, ss, hh, ph, isl, noc, id, ks = 0, 0, 0, 0, 0, false, false, "a85142cf-8509-447b-b53e-62c58a754882", {} ks.att, ks.clk = { k = keybinds:newKeybind("[Vanilla] Click"), v = "key.attack" }, { k = keybinds:newKeybind("[Vanilla] Interact"), v = "key.use" } local function tr() return true end for _, v in pairs(ks) do v.k:onPress(tr) end local c, t, mt = models:newPart("c"), textures:newTexture("b", 257, 32):fill(0, 0, 257, 32, vec(0, 0, 0, 0)), textures:newTexture("m", 257, 32):fill(0, 0, 257, 32, vec(0, 0, 0, 0)) local bm, mm = models:newPart("b", "HUD"):newSprite("bs"):texture(t, 257, 32):renderType("TRANSLUCENT"):scale(1) :light(15):visible(false), models:newPart("m", "HUD"):newSprite("m"):texture(mt, 257, 32):renderType("TRANSLUCENT"):light(15) :visible(false) local tt = models.b:newText("tt"):alignment("CENTER"):setLight(15):outline(true) local m1, m2 = vec(0.45, 0.4, 0.4, 1), vec(0.3, 0.2, 0.2, 1) local r1, r2 = vec(0.3, 0.1, 0.1, 0.8), vec(0.2, 0.1, 0.1, 1) local t1, t2 = vec(0.3, 0.2, 0.2, 0.4), vec(0.2, 0.1, 0.1, 0.2)
local function ca(v) return vec(math.clamp(v.x, 0, 1), math.clamp(v.y, 0, 1), math.clamp(v.z, 0, 1), math.clamp(v.w, 0, 1)) end
local function n(x, y, s) math.randomseed(math.sin((x * 2 + y * 2) * s) * 10) local a = math.random(0, 500) * 0.005 math.randomseed(world.getTime(client:getFrameTime())) return a end
local function s(x, y, cx, r, m) local no = n(x * 0.5, y * 0.5, 1) * 0.1 local g = math.lerp(m1 + no, m2 + no, (y - 5) / 11) if (math.abs(y - 8) <= (m * (x - cx)) ^ (r * 0.9) and math.abs(y - 8) >= (m * (x - cx - (3 * m))) ^ r) or (math.abs(y - 8) <= m * (x - cx - m) and m * x < m * cx + 3) then return vec(g.r, g.g, g.b, 1) end end
local function fr(x, y) return (x > 7 and x < 249 and y > 5 and y < 11) or (x > 5 and x < 251 and y > 6 and y < 10) or (x >= 127 and x <= 129) end
local function hm(x, y, ht, ti) local cl = math.lerp(r1, r2, (y - 5) / 6) cl.rgb = (cl.rgb + n(x * 0.3 + ti * 0.5, y * 0.3, 0.25) * 0.15) * (math.sin(ti * 2) * 0.5 * (1 - ht * 0.8) + 1.1) if fr(x, y) and t:getPixel(x, y).rgb == vec(0, 0, 0) and t:getPixel(x, y).a > 0 then cl.rgb = cl .rgb - 0.3 elseif t:getPixel(x, y).a > 0 then return end if (x >= (128 - math.floor((ht ^ 1.9) * 122.5))) and (x < (128 + math.ceil((ht ^ 1.9) * 122.5))) then return ca(cl) elseif (x >= (128 - math.ceil((ht ^ 1.9) * 122.5))) and (x <= (128 + math.ceil((ht ^ 1.9) * 122.5))) then return ca(math.lerp(cl, r2 - 0.4, (128 - ((ht ^ 1.9) * 122.5)) % 1)) else if t:getPixel(x, y).a == 0 then return ca(r2 - 0.4) else return vec(0, 0, 0, 0) end end end
local function o(co, x, y) if co.a == 0 then local ns = { x > 0 and t:getPixel(x - 1, y), x < 256 and t:getPixel(x + 1, y), y > 0 and t:getPixel(x, y - 1), y < 31 and t:getPixel(x, y + 1) } for _, nh in ipairs(ns) do if nh then if nh[1] > 0 or nh[2] > 0 or nh[3] > 0 or nh[4] < 0 then return vec(0, 0, 0, 1) end end end end end
local function lr(x, y, ti) if t:getPixel(x, y).a < 1 then return ca(math.lerp(vec(0, 0, 0, 0), r1, math.max(math.sin(x * 0.3 + ti * 2.0) + 0.5, math.max(math.sin(x * 0.5 - ti * 1.5) + 0.5, math.sin(x * 0.2 + ti * 2.5) + 0.5)) * ((y) / 5))) end end
local function tc(x, y, cx, cy, sc, ti) if t:getPixel(x, y).a == 0 then math.randomseed(cx) local tx = math.sin(ti - y * (2 - sc) * 0.5 + math.random(0, 20)) local sy, sx = 6 * sc, sc math.randomseed(x * 500 + y * 50000) local ty, r = (6 * sc - math.abs((x - cx) + tx)) * ((sy) / (sx)), (math.random() - 0.5) * 0.1 math.randomseed(world.getTime(client:getFrameTime())) local cl = math.lerp(t1 + r, t2 + r, (y + cy - 1) / sy) if y <= 15 then cl.rgb = cl.rgb - (16 - y) * 0.1 end if y + cy + 12 <= ty then return ca(cl) else return vec(0, 0, 0, 0) end end end
local function fm() t:applyFunc(4, 5, 249, 7, function(_, x, y) local no = n(x * 0.5, y * 0.5, 1) * 0.1 if fr(x, y) then return vec(0, 0, 0, 0) end return ca(math.lerp(m1 + no, m2 + no, (y + 1) / 11)) end) t:applyFunc(1, 1, 7, 15, function(_, x, y) return s(x, y, 0, 1.2, 1) end):applyFunc(61, 3, 6, 11, function(_, x, y) return s(x, y, 60, 1.1, 1) end):applyFunc(126, 1, 3, 15, function(_, x, y) return s(x, y, 121, 1.1, 1) end):applyFunc(128, 1, 3, 15, function(_, x, y) return s(x, y, 135, 1.1, -1) end):applyFunc(190, 3, 6, 11, function(_, x, y) return s(x, y, 196, 1.1, -1) end):applyFunc(249, 1, 7, 15, function(_, x, y) return s(x, y, 256, 1.2, -1) end):pixel(128, 8, r1):applyFunc(0, 0, 257, 32, function(co, x, y) return o(co, x, y) end):update() end fm()
function events.tick() local pls = world:avatarVars() isl = (pls[id] ~= nil) noc = ((isl and not (player:getUUID() == id)) and pls[id]["toggle"]) or false _s = ss ss = isl and pls[id]["ss"] or 0 hh = isl and pls[id]["ht"] or 1 ph = isl and pls[id]["ph"] or 0 local nm = isl and pls[id]["nm"] or "" if ph == 0 then return end if ph < 2 then m1, m2 = vec(0.45, 0.4, 0.4, 1), vec(0.3, 0.2, 0.2, 1) r1, r2 = vec(0.5, 0.3, 0.3, 0.8), vec(0.1, 0, 0, 1) t1, t2 = vec(0.3, 0.2, 0.2, 0.4), vec(0.2, 0.1, 0.1, 0.2) else m1, m2 = vec(0.3, 0.2, 0.2, 1), vec(0.1, 0.05, 0.05, 1) t1, t2 = vec(0.5, 0, 0, 1), vec(0.4, 0, 0, 1) if ph == 3 then r1, r2 = vec(1, 0, 0, 0.8), vec(0.3, 0, 0, 1) else r1, r2 = vec(0.8, 0, 0, 1), vec(0.1, 0, 0, 1) end end if _p ~= ph then fm() _p = ph end tt:outlineColor(r2.rgb):text(nm) local ti = world.getTime() mt:applyFunc(6, 4, 245, 9, function(_, x, y) return hm(x, y, hh, ti * 0.1) end):update() if ti % 4 == 0 then if ph > 1 then mt:applyFunc(7, 0, 243, 4, function(_, x, y) return lr(x, y, ti * 0.03) end):update() else mt:fill(7, 0, 243, 4, vec(0, 0, 0, 0)):update() end end if ti % 6 == 0 then for i = 1, 14 do math.randomseed(i) local of = math.random(-2, 2) mt:applyFunc(i * 17 + of, 13, 9, 19, function(_, x, y) return tc(x, y, i * 17 + 4 + of, -15, (1.1 - math.abs(i - 7.5) * 0.08) * (ph == 3 and 0.8 or 0.6), ti * 0.1) end) end mt:update() end end
function events.post_render(dt) for _, v in pairs(ks) do v.k:key(v.v:find("keyboard") and v.v or keybinds:getVanillaKey(v.v)) :enabled(noc and not action_wheel:isEnabled()) end local ls = math.lerp(_s, ss, dt) c:setRot(math.random(math.round(ls * -15), math.round(ls * 15)) * 0.1, math.random(math.round(ls * -15), math.round(ls * 15)) * 0.1, math.random(math.round(ls * -15), math.round(ls * 15)) * 0.1):setPos( math.random(math.round(ls * -15), math.round(ls * 15)) * 0.01, math.random(math.round(ls * -15), math.round(ls * 15)) * 0.01, math.random(math.round(ls * -15), math.round(ls * 15)) * 0.01) renderer:offsetCameraRot(c:getRot()):offsetCameraPivot(c:getPos()) renderer:setRenderCrosshair(not noc) bm:pos(-client:getScaledWindowSize().x * 0.5 + 129, -16, 1):visible(ph > 0) mm:pos(-client:getScaledWindowSize().x * 0.5 + 129, -16, -1):visible(ph > 0) tt:pos(-client:getScaledWindowSize().x * 0.5, -8, -1):visible(ph > 0) end