if !exists('loaded_snippet') || &cp
    finish
endif

let st = g:snip_start_tag
let et = g:snip_end_tag
let cd = g:snip_elem_delim

exec "Snippet alc always @(posedge ".st."c".et." or negedge ".st."r".et.")<CR>begin<CR>if (!".st."r".et.") ".st."v".et." <= 'b0;<CR>else ".st."v".et." <= ".st.et.";<CR>end<CR>".st.et
