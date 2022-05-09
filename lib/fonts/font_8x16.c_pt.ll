; ModuleID = '/llk/IR_all_yes/lib/fonts/font_8x16.c_pt.bc'
source_filename = "../lib/fonts/font_8x16.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+font_vga_8x16\22, \22a\22\09"
module asm "\09.weak\09__crc_font_vga_8x16\09\09\09\09"
module asm "\09.long\09__crc_font_vga_8x16\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_font_vga_8x16:\09\09\09\09\09"
module asm "\09.asciz \09\22font_vga_8x16\22\09\09\09\09\09"
module asm "__kstrtabns_font_vga_8x16:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.font_desc = type { i32, ptr, i32, i32, i32, ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }

@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"VGA8x16\00", [24 x i8] zeroinitializer }, align 32
@font_vga_8x16 = dso_local constant { %struct.font_desc, [36 x i8] } { %struct.font_desc { i32 1, ptr @.str, i32 8, i32 16, i32 256, ptr getelementptr (i8, ptr @fontdata_8x16, i64 16), i32 0 }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_font_vga_8x16 = external dso_local constant [0 x i8], align 1
@__kstrtabns_font_vga_8x16 = external dso_local constant [0 x i8], align 1
@__ksymtab_font_vga_8x16 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @font_vga_8x16 to i32), ptr @__kstrtab_font_vga_8x16, ptr @__kstrtabns_font_vga_8x16 }, section "___ksymtab+font_vga_8x16", align 4
@fontdata_8x16 = internal constant { { [4 x i32], <{ [4075 x i8], [21 x i8] }> }, [1040 x i8] } { { [4 x i32], <{ [4075 x i8], [21 x i8] }> } { [4 x i32] [i32 0, i32 0, i32 4096, i32 0], <{ [4075 x i8], [21 x i8] }> <{ [4075 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00~\81\A5\81\81\BD\99\81\81~\00\00\00\00\00\00~\FF\DB\FF\FF\C3\E7\FF\FF~\00\00\00\00\00\00\00\00l\FE\FE\FE\FE|8\10\00\00\00\00\00\00\00\00\108|\FE|8\10\00\00\00\00\00\00\00\00\18<<\E7\E7\E7\18\18<\00\00\00\00\00\00\00\18<~\FF\FF~\18\18<\00\00\00\00\00\00\00\00\00\00\18<<\18\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\E7\C3\C3\E7\FF\FF\FF\FF\FF\FF\00\00\00\00\00<fBBf<\00\00\00\00\00\FF\FF\FF\FF\FF\C3\99\BD\BD\99\C3\FF\FF\FF\FF\FF\00\00\1E\0E\1A2x\CC\CC\CC\CCx\00\00\00\00\00\00<ffff<\18~\18\18\00\00\00\00\00\00?3?0000p\F0\E0\00\00\00\00\00\00\7Fc\7Fccccg\E7\E6\C0\00\00\00\00\00\00\18\18\DB<\E7<\DB\18\18\00\00\00\00\00\80\C0\E0\F0\F8\FE\F8\F0\E0\C0\80\00\00\00\00\00\02\06\0E\1E>\FE>\1E\0E\06\02\00\00\00\00\00\00\18<~\18\18\18~<\18\00\00\00\00\00\00\00fffffff\00ff\00\00\00\00\00\00\7F\DB\DB\DB{\1B\1B\1B\1B\1B\00\00\00\00\00|\C6`8l\C6\C6l8\0C\C6|\00\00\00\00\00\00\00\00\00\00\00\FE\FE\FE\FE\00\00\00\00\00\00\18<~\18\18\18~<\18~\00\00\00\00\00\00\18<~\18\18\18\18\18\18\18\00\00\00\00\00\00\18\18\18\18\18\18\18~<\18\00\00\00\00\00\00\00\00\00\18\0C\FE\0C\18\00\00\00\00\00\00\00\00\00\00\000`\FE`0\00\00\00\00\00\00\00\00\00\00\00\00\C0\C0\C0\FE\00\00\00\00\00\00\00\00\00\00\00(l\FEl(\00\00\00\00\00\00\00\00\00\00\1088||\FE\FE\00\00\00\00\00\00\00\00\00\FE\FE||88\10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\18<<<\18\18\18\00\18\18\00\00\00\00\00fff$\00\00\00\00\00\00\00\00\00\00\00\00\00\00ll\FElll\FEll\00\00\00\00\18\18|\C6\C2\C0|\06\06\86\C6|\18\18\00\00\00\00\00\00\C2\C6\0C\180`\C6\86\00\00\00\00\00\008ll8v\DC\CC\CC\CCv\00\00\00\00\00000`\00\00\00\00\00\00\00\00\00\00\00\00\00\0C\18000000\18\0C\00\00\00\00\00\000\18\0C\0C\0C\0C\0C\0C\180\00\00\00\00\00\00\00\00\00f<\FF<f\00\00\00\00\00\00\00\00\00\00\00\18\18~\18\18\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\18\18\180\00\00\00\00\00\00\00\00\00\00\FE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\18\18\00\00\00\00\00\00\00\00\02\06\0C\180`\C0\80\00\00\00\00\00\008l\C6\C6\D6\D6\C6\C6l8\00\00\00\00\00\00\188x\18\18\18\18\18\18~\00\00\00\00\00\00|\C6\06\0C\180`\C0\C6\FE\00\00\00\00\00\00|\C6\06\06<\06\06\06\C6|\00\00\00\00\00\00\0C\1C<l\CC\FE\0C\0C\0C\1E\00\00\00\00\00\00\FE\C0\C0\C0\FC\06\06\06\C6|\00\00\00\00\00\008`\C0\C0\FC\C6\C6\C6\C6|\00\00\00\00\00\00\FE\C6\06\06\0C\180000\00\00\00\00\00\00|\C6\C6\C6|\C6\C6\C6\C6|\00\00\00\00\00\00|\C6\C6\C6~\06\06\06\0Cx\00\00\00\00\00\00\00\00\18\18\00\00\00\18\18\00\00\00\00\00\00\00\00\00\18\18\00\00\00\18\180\00\00\00\00\00\00\00\06\0C\180`0\18\0C\06\00\00\00\00\00\00\00\00\00~\00\00~\00\00\00\00\00\00\00\00\00\00`0\18\0C\06\0C\180`\00\00\00\00\00\00|\C6\C6\0C\18\18\18\00\18\18\00\00\00\00\00\00\00|\C6\C6\DE\DE\DE\DC\C0|\00\00\00\00\00\00\108l\C6\C6\FE\C6\C6\C6\C6\00\00\00\00\00\00\FCfff|ffff\FC\00\00\00\00\00\00<f\C2\C0\C0\C0\C0\C2f<\00\00\00\00\00\00\F8lffffffl\F8\00\00\00\00\00\00\FEfbhxh`bf\FE\00\00\00\00\00\00\FEfbhxh```\F0\00\00\00\00\00\00<f\C2\C0\C0\DE\C6\C6f:\00\00\00\00\00\00\C6\C6\C6\C6\FE\C6\C6\C6\C6\C6\00\00\00\00\00\00<\18\18\18\18\18\18\18\18<\00\00\00\00\00\00\1E\0C\0C\0C\0C\0C\CC\CC\CCx\00\00\00\00\00\00\E6fflxxlff\E6\00\00\00\00\00\00\F0``````bf\FE\00\00\00\00\00\00\C6\EE\FE\FE\D6\C6\C6\C6\C6\C6\00\00\00\00\00\00\C6\E6\F6\FE\DE\CE\C6\C6\C6\C6\00\00\00\00\00\00|\C6\C6\C6\C6\C6\C6\C6\C6|\00\00\00\00\00\00\FCfff|````\F0\00\00\00\00\00\00|\C6\C6\C6\C6\C6\C6\D6\DE|\0C\0E\00\00\00\00\FCfff|lfff\E6\00\00\00\00\00\00|\C6\C6`8\0C\06\C6\C6|\00\00\00\00\00\00~~Z\18\18\18\18\18\18<\00\00\00\00\00\00\C6\C6\C6\C6\C6\C6\C6\C6\C6|\00\00\00\00\00\00\C6\C6\C6\C6\C6\C6\C6l8\10\00\00\00\00\00\00\C6\C6\C6\C6\D6\D6\D6\FE\EEl\00\00\00\00\00\00\C6\C6l|88|l\C6\C6\00\00\00\00\00\00ffff<\18\18\18\18<\00\00\00\00\00\00\FE\C6\86\0C\180`\C2\C6\FE\00\00\00\00\00\00<00000000<\00\00\00\00\00\00\00\80\C0\E0p8\1C\0E\06\02\00\00\00\00\00\00<\0C\0C\0C\0C\0C\0C\0C\0C<\00\00\00\00\108l\C6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\00\00\000\18\0C\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00x\0C|\CC\CC\CCv\00\00\00\00\00\00\E0``xlffff|\00\00\00\00\00\00\00\00\00|\C6\C0\C0\C0\C6|\00\00\00\00\00\00\1C\0C\0C<l\CC\CC\CC\CCv\00\00\00\00\00\00\00\00\00|\C6\FE\C0\C0\C6|\00\00\00\00\00\00\1C620x0000x\00\00\00\00\00\00\00\00\00v\CC\CC\CC\CC\CC|\0C\CCx\00\00\00\E0``lvffff\E6\00\00\00\00\00\00\18\18\008\18\18\18\18\18<\00\00\00\00\00\00\06\06\00\0E\06\06\06\06\06\06ff<\00\00\00\E0``flxxlf\E6\00\00\00\00\00\008\18\18\18\18\18\18\18\18<\00\00\00\00\00\00\00\00\00\EC\FE\D6\D6\D6\D6\C6\00\00\00\00\00\00\00\00\00\DCffffff\00\00\00\00\00\00\00\00\00|\C6\C6\C6\C6\C6|\00\00\00\00\00\00\00\00\00\DCfffff|``\F0\00\00\00\00\00\00v\CC\CC\CC\CC\CC|\0C\0C\1E\00\00\00\00\00\00\DCvf```\F0\00\00\00\00\00\00\00\00\00|\C6`8\0C\C6|\00\00\00\00\00\00\1000\FC00006\1C\00\00\00\00\00\00\00\00\00\CC\CC\CC\CC\CC\CCv\00\00\00\00\00\00\00\00\00\C6\C6\C6\C6\C6l8\00\00\00\00\00\00\00\00\00\C6\C6\D6\D6\D6\FEl\00\00\00\00\00\00\00\00\00\C6l888l\C6\00\00\00\00\00\00\00\00\00\C6\C6\C6\C6\C6\C6~\06\0C\F8\00\00\00\00\00\00\FE\CC\180`\C6\FE\00\00\00\00\00\00\0E\18\18\18p\18\18\18\18\0E\00\00\00\00\00\00\18\18\18\18\18\18\18\18\18\18\00\00\00\00\00\00p\18\18\18\0E\18\18\18\18p\00\00\00\00\00v\DC\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\108l\C6\C6\C6\FE\00\00\00\00\00\00\00<f\C2\C0\C0\C0\C0\C2f<\18p\00\00\00\00\CC\00\00\CC\CC\CC\CC\CC\CCv\00\00\00\00\00\0C\180\00|\C6\FE\C0\C0\C6|\00\00\00\00\00\108l\00x\0C|\CC\CC\CCv\00\00\00\00\00\00\CC\00\00x\0C|\CC\CC\CCv\00\00\00\00\00`0\18\00x\0C|\CC\CC\CCv\00\00\00\00\008l8\00x\0C|\CC\CC\CCv\00\00\00\00\00\00\00\00\00|\C6\C0\C0\C0\C6|\18p\00\00\00\108l\00|\C6\FE\C0\C0\C6|\00\00\00\00\00\00\C6\00\00|\C6\FE\C0\C0\C6|\00\00\00\00\00`0\18\00|\C6\FE\C0\C0\C6|\00\00\00\00\00\00f\00\008\18\18\18\18\18<\00\00\00\00\00\18<f\008\18\18\18\18\18<\00\00\00\00\00`0\18\008\18\18\18\18\18<\00\00\00\00\00\C6\00\108l\C6\C6\FE\C6\C6\C6\00\00\00\008l8\108l\C6\FE\C6\C6\C6\C6\00\00\00\00\0C\18\00\FEfbhxhbf\FE\00\00\00\00\00\00\00\00\00\EC66~\D8\D8n\00\00\00\00\00\00>l\CC\CC\FE\CC\CC\CC\CC\CE\00\00\00\00\00\108l\00|\C6\C6\C6\C6\C6|\00\00\00\00\00\00\C6\00\00|\C6\C6\C6\C6\C6|\00\00\00\00\00`0\18\00|\C6\C6\C6\C6\C6|\00\00\00\00\000x\CC\00\CC\CC\CC\CC\CC\CCv\00\00\00\00\00`0\18\00\CC\CC\CC\CC\CC\CCv\00\00\00\00\00\00\C6\00\00\C6\C6\C6\C6\C6\C6~\06\0Cx\00\00\C6\00|\C6\C6\C6\C6\C6\C6\C6|\00\00\00\00\00\C6\00\C6\C6\C6\C6\C6\C6\C6\C6|\00\00\00\00\00\18\18|\C6\C0\C0\C0\C6|\18\18\00\00\00\00\008ld`\F0````\E6\FC\00\00\00\00\00\00ff<\18~\18~\18\18\18\00\00\00\00\00\F8\CC\CC\F8\C4\CC\DE\CC\CC\CC\C6\00\00\00\00\00\0E\1B\18\18\18~\18\18\18\D8p\00\00\00\00\00\180`\00x\0C|\CC\CC\CCv\00\00\00\00\00\0C\180\008\18\18\18\18\18<\00\00\00\00\00\180`\00|\C6\C6\C6\C6\C6|\00\00\00\00\00\180`\00\CC\CC\CC\CC\CC\CCv\00\00\00\00\00\00v\DC\00\DCffffff\00\00\00\00v\DC\00\C6\E6\F6\FE\DE\CE\C6\C6\C6\00\00\00\00\00\00<ll>\00~\00\00\00\00\00\00\00\00\00\008ll8\00|\00\00\00\00\00\00\00\00\00\0000\0000`\C0\C6\C6|\00\00\00\00\00\00\00\00\00\00\FE\C0\C0\C0\C0\00\00\00\00\00\00\00\00\00\00\00\FE\06\06\06\06\00\00\00\00\00\00`\E0bfl\180`\DC\86\0C\18>\00\00\00`\E0bfl\180f\CE\9A?\06\06\00\00\00\00\18\18\00\18\18\18<<<\18\00\00\00\00\00\00\00\00\006l\D8l6\00\00\00\00\00\00\00\00\00\00\00\D8l6l\D8\00\00\00\00\00\00\11D\11D\11D\11D\11D\11D\11D\11DU\AAU\AAU\AAU\AAU\AAU\AAU\AAU\AA\DDw\DDw\DDw\DDw\DDw\DDw\DDw\DDw\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\F8\18\18\18\18\18\18\18\18\18\18\18\18\18\F8\18\F8\18\18\18\18\18\18\18\186666666\F666666666\00\00\00\00\00\00\00\FE66666666\00\00\00\00\00\F8\18\F8\18\18\18\18\18\18\18\1866666\F6\06\F6666666666666666666666666\00\00\00\00\00\FE\06\F66666666666666\F6\06\FE\00\00\00\00\00\00\00\006666666\FE\00\00\00\00\00\00\00\00\18\18\18\18\18\F8\18\F8\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\F8\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\1F\00\00\00\00\00\00\00\00\18\18\18\18\18\18\18\FF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\1F\18\18\18\18\18\18\18\18\00\00\00\00\00\00\00\FF\00\00\00\00\00\00\00\00\18\18\18\18\18\18\18\FF\18\18\18\18\18\18\18\18\18\18\18\18\18\1F\18\1F\18\18\18\18\18\18\18\1866666667666666666666670?\00\00\00\00\00\00\00\00\00\00\00\00\00?076666666666666\F7\00\FF\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\00\F7666666666666670766666666\00\00\00\00\00\FF\00\FF\00\00\00\00\00\00\00\0066666\F7\00\F766666666\18\18\18\18\18\FF\00\FF\00\00\00\00\00\00\00\006666666\FF\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\00\FF\18\18\18\18\18\18\18\18\00\00\00\00\00\00\00\FF666666666666666?\00\00\00\00\00\00\00\00\18\18\18\18\18\1F\18\1F\00\00\00\00\00\00\00\00\00\00\00\00\00\1F\18\1F\18\18\18\18\18\18\18\18\00\00\00\00\00\00\00?666666666666666\FF66666666\18\18\18\18\18\FF\18\FF\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\F8\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1F\18\18\18\18\18\18\18\18\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\00\00\00\00\00\00\00\00v\DC\D8\D8\D8\DCv\00\00\00\00\00\00x\CC\CC\CC\D8\CC\C6\C6\C6\CC\00\00\00\00\00\00\FE\C6\C6\C0\C0\C0\C0\C0\C0\C0\00\00\00\00\00\00\00\00\00\FEllllll\00\00\00\00\00\00\FE\C6`0\18\180`\C6\FE\00\00\00\00\00\00\00\00\00~\D8\D8\D8\D8\D8p\00\00\00\00\00\00\00\00\00ffffff|``\C0\00\00\00\00\00v\DC\18\18\18\18\18\18\00\00\00\00\00\00~\18<ffff<\18~\00\00\00\00\00\008l\C6\C6\FE\C6\C6\C6l8\00\00\00\00\00\008l\C6\C6\C6llll\EE\00\00\00\00\00\00\1E0\18\0C>ffff<\00\00\00\00\00\00\00\00\00~\DB\DB\DB~\00\00\00\00\00\00\00\00\00\03\06~\DB\DB\F3~`\C0\00\00\00\00\00\00\1C0``|```0\1C\00\00\00\00\00\00\00|\C6\C6\C6\C6\C6\C6\C6\C6\00\00\00\00\00\00\00\00\FE\00\00\FE\00\00\FE\00\00\00\00\00\00\00\00\00\18\18~\18\18\00\00~\00\00\00\00\00\00\000\18\0C\06\0C\180\00~\00\00\00\00\00\00\00\0C\180`0\18\0C\00~\00\00\00\00\00\00\0E\1B\1B\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\D8\D8\D8p\00\00\00\00\00\00\00\00\18\00~\00\18\00\00\00\00\00\00\00\00\00\00\00v\DC\00v\DC\00\00\00\00\00\00\008ll8\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\18\18\00\00\00\00\00\00\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\00\00\0F\0C\0C\0C\0C\0C\ECll<\1C\00\00\00\00\00l66666\00\00\00\00\00\00\00\00\00\00<f\0C\182~\00\00\00\00\00\00\00\00\00\00\00\00\00~~~~~~~", [21 x i8] zeroinitializer }> }, [1040 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 4627, i32 10 }
@___asan_gen_.5 = private unnamed_addr constant [14 x i8] c"font_vga_8x16\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 4625, i32 24 }
@___asan_gen_.8 = private unnamed_addr constant [14 x i8] c"fontdata_8x16\00", align 1
@___asan_gen_.9 = private constant [25 x i8] c"../lib/fonts/font_8x16.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 13, i32 31 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_font_vga_8x16, ptr @.str, ptr @font_vga_8x16, ptr @fontdata_8x16], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @font_vga_8x16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fontdata_8x16 to i32), i32 4112, i32 5152, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #0 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #0 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind uwtable(sync) "frame-pointer"="all" }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../lib/fonts/font_8x16.c", i32 4627, i32 10}
!2 = !{ptr @font_vga_8x16, !3, !"font_vga_8x16", i1 false, i1 false}
!3 = !{!"../lib/fonts/font_8x16.c", i32 4625, i32 24}
!4 = !{ptr @__ksymtab_font_vga_8x16, !5, !"__ksymtab_font_vga_8x16", i1 false, i1 false}
!5 = !{!"../lib/fonts/font_8x16.c", i32 4634, i32 1}
!6 = !{ptr @fontdata_8x16, !7, !"fontdata_8x16", i1 false, i1 false}
!7 = !{!"../lib/fonts/font_8x16.c", i32 13, i32 31}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
