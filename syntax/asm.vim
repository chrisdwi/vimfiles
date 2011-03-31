"vim syntax for Analog Devices ASM files
" Language:		ADI Assembler
" Maintainer:	Rich Rademacher (rich.rademacher@commradio.com)
" Last Change:	16 Nov 2004

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn case ignore " case insensitive


" keywords
syn match adi_asmKeyword /OFFSETOF/
syn match adi_asmKeyword /SIZEOF/
syn match adi_asmKeyword /.ALIGN/
syn match adi_asmKeyword /.BYTE/
syn match adi_asmKeyword /.BYTE1/
syn match adi_asmKeyword /.BYTE2/
syn match adi_asmKeyword /.BYTE4/
syn match adi_asmKeyword /.EXTERN/
syn match adi_asmKeyword /.EXTERN/
syn match adi_asmKeyword /STRUCT/
syn match adi_asmKeyword /.FILE/
syn match adi_asmKeyword /.GLOBAL/
syn match adi_asmKeyword /.IMPORT/
syn match adi_asmKeyword /.LEFTMARGIN/
syn match adi_asmKeyword /.LIST/
syn match adi_asmKeyword /.NOLIST/
syn match adi_asmKeyword /.LIST_DATA/
syn match adi_asmKeyword /.NOLIST_DATA/
syn match adi_asmKeyword /.LIST_DATFILE/
syn match adi_asmKeyword /.NOLIST_DATFILE/
syn match adi_asmKeyword /.LIST_DEFTAB/
syn match adi_asmKeyword /.LIST_LOCTAB/
syn match adi_asmKeyword /.LIST_WRAPDATA/
syn match adi_asmKeyword /.LIST_NOWRAPDATA/
syn match adi_asmKeyword /.NEWPAGE/
syn match adi_asmKeyword /.PAGELENGTH/
syn match adi_asmKeyword /.PAGEWIDTH/
syn match adi_asmKeyword /.PREVIOUS/
syn match adi_asmKeyword /.SECTION/
syn match adi_asmKeyword /.STRUCT/
syn match adi_asmKeyword /.TYPE/
syn match adi_asmKeyword /.VAR/
syn match adi_asmKeyword /.WEAK/

" register
syn match	adi_asmDreg		/\<R[0-7]\>/
syn match	adi_asmDreg_hi	/\<R[0-7].H\>/
syn match	adi_asmDreg_lo	/\<R[0-7].L\>/
syn match	adi_asmPreg		/\<SP\>/ 
syn match	adi_asmPreg		/\<USP\>/ 
syn match	adi_asmPreg		/\<FP\>/ 
syn match	adi_asmPreg		/\<P[0-7]\>/
syn match 	adi_asmMreg		/\<M[0-3]\>/
syn match	adi_asmIreg		/\<I[0-3]\>/
syn match	adi_asmBreg		/\<B[0-3]\>/
syn match	adi_asmLreg		/\<L[0-3]\>/
syn match	adi_asmLoopreg	/\<L[TBC][0-1]\>/
syn match	adi_asmAreg		/\<A[0-1]\>/
syn match	adi_asmCC		/\<CC\>/
syn match	adi_asmAstatreg	/\<ASTAT\>/

" label
syn match	adi_asmLabel	/^[ \t]*[A-Z_][.A-Z0-9_]*:/

" comments
syn region adi_asmString	start=/"/		end=/"/
syn region adi_asmComment	start=/\/\*/ 	end=/\*\//
syn region adi_asmComment	start=/\/\//	end=/$/

" pp
syn region adi_asmMacro		start=/^#/		end=/$/

" instructions
syn match adi_asmInstr	/\<jump\>/
syn match adi_asmInstr	/\<if cc jump\>/
syn match adi_asmInstr	/\<if \!cc jump\>/
syn match adi_asmInstr	/\<call\>/
syn match adi_asmInstr	/\<if cc r[0-7] = r[0-7]\>/
syn match adi_asmInstr	/\<if \!cc r[0-7] = r[0-7]\>/
syn match adi_asmInstr	/\<rts\>/
syn match adi_asmInstr	/\<rti\>/
syn match adi_asmInstr	/\<rtx\>/
syn match adi_asmInstr	/\<rtn\>/
syn match adi_asmInstr	/\<rte\>/
syn match adi_asmInstr	/\<lsetup\>/
syn match adi_asmInstr	/\<loop\>/
syn match adi_asmInstr	/\<loop_begin\>/
syn match adi_asmInstr	/\<loop_end\>/
syn match adi_asmInstr	/\<link\>/
syn match adi_asmInstr	/\<unlink\>/
syn match adi_asmInstr	/\<bxorshift\>/
syn match adi_asmInstr	/\<bxor\>/
syn match adi_asmInstr	/\<bitclr\>/
syn match adi_asmInstr	/\<bitset\>/
syn match adi_asmInstr	/\<bittgl\>/
syn match adi_asmInstr	/\<bittst\>/
syn match adi_asmInstr	/\<deposit\>/
syn match adi_asmInstr	/\<extract\>/
syn match adi_asmInstr	/\<bitmux\>/
syn match adi_asmInstr	/\<ones\>/
syn match adi_asmInstr	/\<rot\>/
syn match adi_asmInstr	/\<abs\>/
syn match adi_asmInstr	/\<divs\>/
syn match adi_asmInstr	/\<divq\>/
syn match adi_asmInstr	/\<expandj\>/
syn match adi_asmInstr	/\<max\>/
syn match adi_asmInstr	/\<min\>/
syn match adi_asmInstr	/\<rnd\>/
syn match adi_asmInstr	/\<signbits\>/
syn match adi_asmInstr	/\<idle\>/
syn match adi_asmInstr	/\<csync\>/
syn match adi_asmInstr	/\<ssync\>/
syn match adi_asmInstr	/\<emuexcpt\>/
syn match adi_asmInstr	/\<sti\>/
syn match adi_asmInstr	/\<cli\>/
syn match adi_asmInstr	/\<raise\>/
syn match adi_asmInstr	/\<excpt\>/
syn match adi_asmInstr	/\<testset\>/
syn match adi_asmInstr	/\<nop\>/
syn match adi_asmInstr	/\<mnop\>/
syn match adi_asmInstr	/\<prefetch\>/
syn match adi_asmInstr	/\<flush\>/
syn match adi_asmInstr	/\<flushinv\>/
syn match adi_asmInstr	/\<iflush\>/
syn match adi_asmInstr	/\<align8\>/
syn match adi_asmInstr	/\<align16\>/
syn match adi_asmInstr	/\<align24\>/
syn match adi_asmInstr	/\<disalgnexcpt\>/
syn match adi_asmInstr	/\<byteop3p\>/
syn match adi_asmInstr	/\<byteop16p\>/
syn match adi_asmInstr	/\<byteop1p\>/
syn match adi_asmInstr	/\<byteop2p\>/
syn match adi_asmInstr	/\<bytepack\>/
syn match adi_asmInstr	/\<byteop16m\>/
syn match adi_asmInstr	/\<saa\>/
syn match adi_asmInstr	/\<byteunpack\>/
syn match adi_asmInstr	/\<vit_max\>/

" numbers
syn match adi_asmHexNumber	/\<0x[0-9A-F]\+\>/
syn match adi_asmDecNumber	/\<[-+]\?[0-9]\+\>/
syn match adi_asmFractNumber	/[-+]\?[0-9]*.[0-9]\+r/

syn case match

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_asm_syntax_inits")
  if version < 508
    let did_asm_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif


 " map the groups to the vim group general groups
 HiLink adi_asmKeyword Keyword
 HiLink adi_asmString String
 HiLink adi_asmComment Comment
 HiLink adi_asmHexNumber Number
 HiLink adi_asmDecNumber Number
 HiLink adi_asmFractNumber Number

 HiLink adi_asmMacro Macro

 HiLink adi_asmDreg Type
 HiLink adi_asmDreg_lo Type
 HiLink adi_asmDreg_hi Type
 HiLink adi_asmPreg Type
 HiLink adi_asmMreg Type 
 HiLink adi_asmIreg Type 
 HiLink adi_asmBreg Type 
 HiLink adi_asmLreg Type 
 HiLink adi_asmLoopreg Type 
 HiLink adi_asmAreg Type
 HiLink adi_asmCC Type
 HiLink adi_asmASTATreg Type

 HiLink adi_asmLabel Label
 HiLink adi_asmInstr Special

  delcommand HiLink
endif

let b:current_syntax = "asm"
