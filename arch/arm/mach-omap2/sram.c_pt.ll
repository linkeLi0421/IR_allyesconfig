; ModuleID = '/llk/IR_all_yes/arch/arm/mach-omap2/sram.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/sram.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

@_omap2_sram_ddr_init = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@_omap2_sram_reprogram_sdrc = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@_omap2_set_prcm = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@omap_sram_skip = internal global { i32, [28 x i8] } zeroinitializer, align 32
@omap_sram_start = internal global { i32, [28 x i8] } zeroinitializer, align 32
@omap_sram_size = internal global { i32, [28 x i8] } zeroinitializer, align 32
@omap242x_sram_ddr_init_sz = external dso_local local_unnamed_addr global i32, align 4
@omap242x_sram_reprogram_sdrc_sz = external dso_local local_unnamed_addr global i32, align 4
@omap242x_sram_set_prcm_sz = external dso_local local_unnamed_addr global i32, align 4
@omap243x_sram_ddr_init_sz = external dso_local local_unnamed_addr global i32, align 4
@omap243x_sram_reprogram_sdrc_sz = external dso_local local_unnamed_addr global i32, align 4
@omap243x_sram_set_prcm_sz = external dso_local local_unnamed_addr global i32, align 4
@___asan_gen_.1 = private unnamed_addr constant [21 x i8] c"_omap2_sram_ddr_init\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 139, i32 15 }
@___asan_gen_.4 = private unnamed_addr constant [27 x i8] c"_omap2_sram_reprogram_sdrc\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 150, i32 15 }
@___asan_gen_.7 = private unnamed_addr constant [16 x i8] c"_omap2_set_prcm\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 159, i32 14 }
@___asan_gen_.10 = private unnamed_addr constant [15 x i8] c"omap_sram_skip\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 50, i32 22 }
@___asan_gen_.13 = private unnamed_addr constant [16 x i8] c"omap_sram_start\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 49, i32 22 }
@___asan_gen_.16 = private unnamed_addr constant [15 x i8] c"omap_sram_size\00", align 1
@___asan_gen_.17 = private constant [30 x i8] c"../arch/arm/mach-omap2/sram.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 51, i32 22 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @_omap2_sram_ddr_init, ptr @_omap2_sram_reprogram_sdrc, ptr @_omap2_set_prcm, ptr @omap_sram_skip, ptr @omap_sram_start, ptr @omap_sram_size], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_omap2_sram_ddr_init to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_omap2_sram_reprogram_sdrc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_omap2_set_prcm to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_sram_skip to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_sram_start to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_sram_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap2_sram_ddr_init(ptr noundef %slow_dll_ctrl, i32 noundef %fast_dll_ctrl, i32 noundef %base_cs, i32 noundef %force_unlock) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @_omap2_sram_ddr_init, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %do.body4, label %do.end7, !prof !21

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/sram.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 145, 0\0A.popsection", ""() #3, !srcloc !22
  unreachable

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %0(ptr noundef %slow_dll_ctrl, i32 noundef %fast_dll_ctrl, i32 noundef %base_cs, i32 noundef %force_unlock) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap2_sram_reprogram_sdrc(i32 noundef %perf_level, i32 noundef %dll_val, i32 noundef %mem_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @_omap2_sram_reprogram_sdrc, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %do.body4, label %do.end7, !prof !21

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/sram.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 155, 0\0A.popsection", ""() #3, !srcloc !23
  unreachable

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %0(i32 noundef %perf_level, i32 noundef %dll_val, i32 noundef %mem_type) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap2_set_prcm(i32 noundef %dpll_ctrl_val, i32 noundef %sdrc_rfr_val, i32 noundef %bypass) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @_omap2_set_prcm, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %do.body4, label %do.end7, !prof !21

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/sram.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 163, 0\0A.popsection", ""() #3, !srcloc !24
  unreachable

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call i32 %0(i32 noundef %dpll_ctrl_val, i32 noundef %sdrc_rfr_val, i32 noundef %bypass) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3_sram_restore_context() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @omap_sram_reset() #3
  tail call void @omap_push_sram_idle() #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_sram_reset() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_push_sram_idle() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_sram_init() local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @omap_detect_sram() #6
  tail call fastcc void @omap2_map_sram() #6
  %call.i = tail call i32 @omap_rev() #3
  %shr.mask.i = and i32 %call.i, -1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 606076928, i32 %shr.mask.i)
  %cmp.i.not = icmp eq i32 %shr.mask.i, 606076928
  br i1 %cmp.i.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @omap242x_sram_init() #6
  br label %if.end12

if.else:                                          ; preds = %entry
  %call.i13 = tail call i32 @omap_rev() #3
  %shr.mask.i14 = and i32 %call.i13, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 607125504, i32 %shr.mask.i14)
  %cmp.i15.not = icmp eq i32 %shr.mask.i14, 607125504
  br i1 %cmp.i15.not, label %if.then4, label %if.else6

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @omap243x_sram_init() #6
  br label %if.end12

if.else6:                                         ; preds = %if.else
  %call.i17 = tail call i32 @omap_rev() #3
  %and.i = and i32 %call.i17, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %and.i)
  %cmp.i18.not = icmp eq i32 %and.i, 52
  br i1 %cmp.i18.not, label %if.then9, label %if.else6.if.end12_crit_edge

if.else6.if.end12_crit_edge:                      ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end12

if.then9:                                         ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @omap_sram_reset() #3
  tail call void @omap_push_sram_idle() #3
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.else6.if.end12_crit_edge, %if.then4, %if.then
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @omap_detect_sram() unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 0, ptr @omap_sram_skip, align 4
  %call.i = tail call i32 @omap_type() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 3
  %call.i.i = tail call i32 @omap_rev() #3
  br i1 %cmp.i, label %if.then.i, label %if.then

if.then.i:                                        ; preds = %entry
  %shr.mask.i.i = and i32 %call.i.i, -1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 606076928, i32 %shr.mask.i.i)
  %cmp.i.not.i = icmp eq i32 %shr.mask.i.i, 606076928
  br i1 %cmp.i.not.i, label %if.then2.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -134197176 to ptr), i32 -16777216) #3, !srcloc !25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -134197168 to ptr), i32 -556859392) #3, !srcloc !25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -134197160 to ptr), i32 -556859392) #3, !srcloc !25
  br label %if.end.i

if.end.i:                                         ; preds = %if.then2.i, %if.then.i.if.end.i_crit_edge
  %call.i7.i = tail call i32 @omap_rev() #3
  %and.i.i = and i32 %call.i7.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %and.i.i)
  %cmp.i8.not.i = icmp eq i32 %and.i.i, 52
  br i1 %cmp.i8.not.i, label %if.then5.i, label %if.end.i.if.else10_crit_edge

if.end.i.if.else10_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else10

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -134141880 to ptr), i32 -65536) #3, !srcloc !25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -134141872 to ptr), i32 -65536) #3, !srcloc !25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -134141864 to ptr), i32 -65536) #3, !srcloc !25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -134141824 to ptr), i32 0) #3, !srcloc !25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -67108792 to ptr), i32 -1) #3, !srcloc !25
  br label %if.else10

if.then:                                          ; preds = %entry
  %and.i = and i32 %call.i.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %and.i)
  %cmp.i27.not = icmp eq i32 %and.i, 52
  br i1 %cmp.i27.not, label %if.then3, label %if.else8

if.then3:                                         ; preds = %if.then
  store i32 1075871744, ptr @omap_sram_start, align 4
  %call4 = tail call i32 @omap_type() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4)
  %cmp = icmp eq i32 %call4, 1
  br i1 %cmp, label %if.then3.if.then7_crit_edge, label %lor.lhs.false

if.then3.if.then7_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then7

lor.lhs.false:                                    ; preds = %if.then3
  %call5 = tail call i32 @omap_type() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call5)
  %cmp6 = icmp eq i32 %call5, 2
  br i1 %cmp6, label %lor.lhs.false.if.then7_crit_edge, label %if.else

lor.lhs.false.if.then7_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then7

if.then7:                                         ; preds = %lor.lhs.false.if.then7_crit_edge, %if.then3.if.then7_crit_edge
  store i32 28672, ptr @omap_sram_size, align 4
  %0 = load i32, ptr @omap_sram_skip, align 4
  %add = add i32 %0, 16384
  store i32 %add, ptr @omap_sram_skip, align 4
  br label %if.end25

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  store i32 32768, ptr @omap_sram_size, align 4
  br label %if.end25

if.else8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  store i32 1075902464, ptr @omap_sram_start, align 4
  store i32 2048, ptr @omap_sram_size, align 4
  br label %if.end25

if.else10:                                        ; preds = %if.then5.i, %if.end.i.if.else10_crit_edge
  %call.i28 = tail call i32 @omap_rev() #3
  %and.i29 = and i32 %call.i28, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %and.i29)
  %cmp.i30.not = icmp eq i32 %and.i29, 52
  store i32 1075838976, ptr @omap_sram_start, align 4
  br i1 %cmp.i30.not, label %if.then13, label %if.else14

if.then13:                                        ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #5
  store i32 65536, ptr @omap_sram_size, align 4
  br label %if.end25

if.else14:                                        ; preds = %if.else10
  %call.i32 = tail call i32 @omap_rev() #3
  %shr.mask.i = and i32 %call.i32, -1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 606076928, i32 %shr.mask.i)
  %cmp.i33.not = icmp eq i32 %shr.mask.i, 606076928
  br i1 %cmp.i33.not, label %if.then17, label %if.else18

if.then17:                                        ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #5
  store i32 655360, ptr @omap_sram_size, align 4
  br label %if.end25

if.else18:                                        ; preds = %if.else14
  %call.i35 = tail call i32 @omap_rev() #3
  %shr.mask.i36 = and i32 %call.i35, -1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 607125504, i32 %shr.mask.i36)
  %cmp.i37.not = icmp eq i32 %shr.mask.i36, 607125504
  br i1 %cmp.i37.not, label %if.then21, label %if.else18.if.end25_crit_edge

if.else18.if.end25_crit_edge:                     ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end25

if.then21:                                        ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #5
  store i32 65536, ptr @omap_sram_size, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %if.else18.if.end25_crit_edge, %if.then17, %if.then13, %if.else8, %if.else, %if.then7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @omap2_map_sram() unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @omap_rev() #3
  %and.i = and i32 %call.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %and.i)
  %cmp.i.not = icmp ne i32 %and.i, 52
  %spec.select = zext i1 %cmp.i.not to i32
  %0 = load i32, ptr @omap_sram_start, align 4
  %1 = load i32, ptr @omap_sram_size, align 4
  %2 = load i32, ptr @omap_sram_skip, align 4
  tail call void @omap_map_sram(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %spec.select) #3
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @omap242x_sram_init() unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @omap242x_sram_ddr_init_sz to i32))
  %0 = load i32, ptr @omap242x_sram_ddr_init_sz, align 4
  %call = tail call ptr @omap_sram_push(ptr noundef nonnull @omap242x_sram_ddr_init, i32 noundef %0) #3
  store ptr %call, ptr @_omap2_sram_ddr_init, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @omap242x_sram_reprogram_sdrc_sz to i32))
  %1 = load i32, ptr @omap242x_sram_reprogram_sdrc_sz, align 4
  %call1 = tail call ptr @omap_sram_push(ptr noundef nonnull @omap242x_sram_reprogram_sdrc, i32 noundef %1) #3
  store ptr %call1, ptr @_omap2_sram_reprogram_sdrc, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @omap242x_sram_set_prcm_sz to i32))
  %2 = load i32, ptr @omap242x_sram_set_prcm_sz, align 4
  %call2 = tail call ptr @omap_sram_push(ptr noundef nonnull @omap242x_sram_set_prcm, i32 noundef %2) #3
  store ptr %call2, ptr @_omap2_set_prcm, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @omap243x_sram_init() unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @omap243x_sram_ddr_init_sz to i32))
  %0 = load i32, ptr @omap243x_sram_ddr_init_sz, align 4
  %call = tail call ptr @omap_sram_push(ptr noundef nonnull @omap243x_sram_ddr_init, i32 noundef %0) #3
  store ptr %call, ptr @_omap2_sram_ddr_init, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @omap243x_sram_reprogram_sdrc_sz to i32))
  %1 = load i32, ptr @omap243x_sram_reprogram_sdrc_sz, align 4
  %call1 = tail call ptr @omap_sram_push(ptr noundef nonnull @omap243x_sram_reprogram_sdrc, i32 noundef %1) #3
  store ptr %call1, ptr @_omap2_sram_reprogram_sdrc, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @omap243x_sram_set_prcm_sz to i32))
  %2 = load i32, ptr @omap243x_sram_set_prcm_sz, align 4
  %call2 = tail call ptr @omap_sram_push(ptr noundef nonnull @omap243x_sram_set_prcm, i32 noundef %2) #3
  store ptr %call2, ptr @_omap2_set_prcm, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_type() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_rev() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_map_sram(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @omap_sram_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap242x_sram_ddr_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap242x_sram_reprogram_sdrc(i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap242x_sram_set_prcm(i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap243x_sram_ddr_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap243x_sram_reprogram_sdrc(i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap243x_sram_set_prcm(i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @_omap2_sram_ddr_init, !1, !"_omap2_sram_ddr_init", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-omap2/sram.c", i32 139, i32 15}
!2 = !{ptr @_omap2_sram_reprogram_sdrc, !3, !"_omap2_sram_reprogram_sdrc", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-omap2/sram.c", i32 150, i32 15}
!4 = !{ptr @_omap2_set_prcm, !5, !"_omap2_set_prcm", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-omap2/sram.c", i32 159, i32 14}
!6 = !{ptr @omap_sram_skip, !7, !"omap_sram_skip", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-omap2/sram.c", i32 50, i32 22}
!8 = !{ptr @omap_sram_start, !9, !"omap_sram_start", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-omap2/sram.c", i32 49, i32 22}
!10 = !{ptr @omap_sram_size, !11, !"omap_sram_size", i1 false, i1 false}
!11 = !{!"../arch/arm/mach-omap2/sram.c", i32 51, i32 22}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{!"branch_weights", i32 1, i32 2000}
!22 = !{i64 2155080066, i64 2155080557, i64 2155080103, i64 2155080159, i64 2155080193, i64 2155080217, i64 2155080258, i64 2155080279, i64 2155080307, i64 2155080341}
!23 = !{i64 2155081697, i64 2155082188, i64 2155081734, i64 2155081790, i64 2155081824, i64 2155081848, i64 2155081889, i64 2155081910, i64 2155081938, i64 2155081972}
!24 = !{i64 2155083306, i64 2155083797, i64 2155083343, i64 2155083399, i64 2155083433, i64 2155083457, i64 2155083498, i64 2155083519, i64 2155083547, i64 2155083581}
!25 = !{i64 4040142}
