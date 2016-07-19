function! Gradient(hexStart, hexEnd, steps)
  " convert hex to decimal
  let startR = str2nr(a:hexStart[1:2], 16)
  let startG = str2nr(a:hexStart[3:4], 16)
  let startB = str2nr(a:hexStart[5:6], 16)

  let endR = str2nr(a:hexEnd[1:2], 16)
  let endG = str2nr(a:hexEnd[3:4], 16)
  let endB = str2nr(a:hexEnd[5:6], 16)

  " get the step ammount
  let stepR = (endR - startR ) / (a:steps - 1)
  let stepG = (endG - startG ) / (a:steps - 1)
  let stepB = (endB - startB ) / (a:steps - 1)

  " create gradient list
  let gradient = []

  let i = 0
  while i < a:steps
    " create the step values 
    let rgbR = float2nr(startR + (stepR * i))
    let rgbG = float2nr(startG + (stepG * i))
    let rgbB = float2nr(startB + (stepB * i))

    " reconvert them back to hex
    let hexR = printf('%02x', rgbR)
    let hexG = printf('%02x', rgbG)
    let hexB = printf('%02x', rgbB)

    " concat back to hex colour
    let hex = join(["#", hexR, hexG, hexB], '')

    " insert into gradient list
    call add(gradient, hex)

    let i +=1
  endwhile

  execute "echo gradient"
endfunction
