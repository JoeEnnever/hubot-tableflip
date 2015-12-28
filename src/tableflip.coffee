# Description:
#   Flip a table
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot tableflip phrase - Flips the phrase
#
# Author:
#   joe ennever

module.exports = (robot) ->
  robot.respond /tableflip(.*)?/, (msg) ->
    console.log("got here #{msg}")
    flipped = null
    if msg.match[1]
      flipped = flip(msg.match[1])
    else
      flipped = "┻━┻"
    msg.reply "(╯°□°）╯︵ #{flipped}"

  flip = (aString) ->
    result = (flipTable[x.charAt(0)] ? x for x in aString.split('').reverse().join(''))
    result.join('')

  flipTable = {
    a : '\u0250',
    b : 'q',
    c : '\u0254',
    d : 'p',
    e : '\u01DD',
    f : '\u025F',
    g : '\u0183',
    h : '\u0265',
    i : '\u0131',
    j : '\u027E',
    k : '\u029E',
    l : 'l',
    m : '\u026F',
    n : 'u',
    o : 'o',
    p : 'd',
    q : 'b',
    r : '\u0279',
    t : '\u0287',
    u : 'n',
    v : '\u028C',
    w : '\u028D',
    y : '\u028E',
    '.' : '\u02D9',
    '[' : ']',
    '(' : ')',
    '{' : '}',
    '?' : '\u00BF',
    '!' : '\u00A1',
    "\'" : ',',
    '<' : '>',
    '_' : '\u203E',
    ';' : '\u061B',
    '\u203F' : '\u2040',
    '\u2045' : '\u2046',
    '\u2234' : '\u2235',
    '\r' : '\n'
  }
  (flipTable[flipTable[i]] = i for i in flipTable)
