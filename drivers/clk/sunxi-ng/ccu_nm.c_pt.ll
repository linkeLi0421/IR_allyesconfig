; ModuleID = '/llk/IR_all_yes/drivers/clk/sunxi-ng/ccu_nm.c_pt.bc'
source_filename = "../drivers/clk/sunxi-ng/ccu_nm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+ccu_nm_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_ccu_nm_ops\09\09\09\09"
module asm "\09.long\09__crc_ccu_nm_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ccu_nm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22ccu_nm_ops\22\09\09\09\09\09"
module asm "__kstrtabns_ccu_nm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22SUNXI_CCU\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct._ccu_nm = type { i32, i32, i32, i32, i32, i32 }

@ccu_nm_ops = dso_local constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @ccu_nm_enable, ptr @ccu_nm_disable, ptr @ccu_nm_is_enabled, ptr null, ptr null, ptr null, ptr @ccu_nm_recalc_rate, ptr @ccu_nm_round_rate, ptr null, ptr null, ptr null, ptr @ccu_nm_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_ccu_nm_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_ccu_nm_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_ccu_nm_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ccu_nm_ops to i32), ptr @__kstrtab_ccu_nm_ops, ptr @__kstrtabns_ccu_nm_ops }, section "___ksymtab_gpl+ccu_nm_ops", align 4
@___asan_gen_.1 = private unnamed_addr constant [11 x i8] c"ccu_nm_ops\00", align 1
@___asan_gen_.2 = private constant [33 x i8] c"../drivers/clk/sunxi-ng/ccu_nm.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 232, i32 22 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_ccu_nm_ops, ptr @ccu_nm_ops], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccu_nm_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccu_nm_enable(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -104
  %common = getelementptr i8, ptr %hw, i32 -20
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i, align 4
  %call1 = tail call i32 @ccu_gate_helper_enable(ptr noundef %common, i32 noundef %1) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ccu_nm_disable(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -104
  %common = getelementptr i8, ptr %hw, i32 -20
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i, align 4
  tail call void @ccu_gate_helper_disable(ptr noundef %common, i32 noundef %1) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccu_nm_is_enabled(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -104
  %common = getelementptr i8, ptr %hw, i32 -20
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i, align 4
  %call1 = tail call i32 @ccu_gate_helper_is_enabled(ptr noundef %common, i32 noundef %1) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccu_nm_recalc_rate(ptr noundef %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %common = getelementptr i8, ptr %hw, i32 -20
  %frac = getelementptr i8, ptr %hw, i32 -68
  %call1 = tail call zeroext i1 @ccu_frac_helper_is_enabled(ptr noundef %common, ptr noundef %frac) #4
  br i1 %call1, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %call4 = tail call i32 @ccu_frac_helper_read_rate(ptr noundef %common, ptr noundef %frac) #4
  %features = getelementptr i8, ptr %hw, i32 -8
  %0 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %features, align 4
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.then.cleanup.sink.split_crit_edge

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %entry
  %2 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %common, align 4
  %reg10 = getelementptr i8, ptr %hw, i32 -16
  %4 = ptrtoint ptr %reg10 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %reg10, align 4
  %conv = zext i16 %5 to i32
  %add.ptr = getelementptr i8, ptr %3, i32 %conv
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !13
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %n13 = getelementptr i8, ptr %hw, i32 -96
  %shift = getelementptr i8, ptr %hw, i32 -95
  %8 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %shift, align 1
  %conv14 = zext i8 %9 to i32
  %shr = lshr i32 %7, %conv14
  %width = getelementptr i8, ptr %hw, i32 -94
  %10 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %width, align 2
  %conv16 = zext i8 %11 to i32
  %notmask = shl nsw i32 -1, %conv16
  %sub = xor i32 %notmask, -1
  %and17 = and i32 %shr, %sub
  %12 = ptrtoint ptr %n13 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %n13, align 4
  %conv19 = zext i8 %13 to i32
  %add = add i32 %and17, %conv19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool20.not = icmp eq i32 %add, 0
  %spec.select = select i1 %tobool20.not, i32 1, i32 %add
  %m23 = getelementptr i8, ptr %hw, i32 -88
  %14 = ptrtoint ptr %m23 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %m23, align 4
  %conv25 = zext i8 %15 to i32
  %shr26 = lshr i32 %7, %conv25
  %width28 = getelementptr i8, ptr %hw, i32 -87
  %16 = ptrtoint ptr %width28 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %width28, align 1
  %conv29 = zext i8 %17 to i32
  %notmask93 = shl nsw i32 -1, %conv29
  %sub31 = xor i32 %notmask93, -1
  %and32 = and i32 %shr26, %sub31
  %offset34 = getelementptr i8, ptr %hw, i32 -80
  %18 = ptrtoint ptr %offset34 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %offset34, align 4
  %add35 = add i32 %and32, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add35)
  %tobool36.not = icmp eq i32 %add35, 0
  %m.0 = select i1 %tobool36.not, i32 1, i32 %add35
  %sdm = getelementptr i8, ptr %hw, i32 -52
  %call41 = tail call zeroext i1 @ccu_sdm_helper_is_enabled(ptr noundef %common, ptr noundef %sdm) #4
  br i1 %call41, label %if.then42, label %if.else

if.then42:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  %call45 = tail call i32 @ccu_sdm_helper_read_rate(ptr noundef %common, ptr noundef %sdm, i32 noundef %m.0, i32 noundef %spec.select) #4
  br label %if.end47

if.else:                                          ; preds = %if.end7
  %conv.i = zext i32 %parent_rate to i64
  %conv1.i = zext i32 %spec.select to i64
  %mul.i = mul nuw i64 %conv1.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i)
  %cmp168.i = icmp ult i64 %mul.i, 4294967296
  br i1 %cmp168.i, label %if.then172.i, label %if.else178.i, !prof !15

if.then172.i:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %conv173.i = trunc i64 %mul.i to i32
  %div176.i = udiv i32 %conv173.i, %m.0
  br label %if.end47

if.else178.i:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %20 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %m.0, i64 %mul.i) #7, !srcloc !16
  %asmresult1.i.i = extractvalue { i64, i64 } %20, 1
  %extract.t289.i = trunc i64 %asmresult1.i.i to i32
  br label %if.end47

if.end47:                                         ; preds = %if.else178.i, %if.then172.i, %if.then42
  %rate.1 = phi i32 [ %call45, %if.then42 ], [ %div176.i, %if.then172.i ], [ %extract.t289.i, %if.else178.i ]
  %features49 = getelementptr i8, ptr %hw, i32 -8
  %21 = ptrtoint ptr %features49 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %features49, align 4
  %and50 = and i32 %22, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.end47.cleanup_crit_edge, label %if.end47.cleanup.sink.split_crit_edge

if.end47.cleanup.sink.split_crit_edge:            ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end47.cleanup.sink.split_crit_edge, %if.then.cleanup.sink.split_crit_edge
  %rate.1.sink = phi i32 [ %call4, %if.then.cleanup.sink.split_crit_edge ], [ %rate.1, %if.end47.cleanup.sink.split_crit_edge ]
  %fixed_post_div53 = getelementptr i8, ptr %hw, i32 -32
  %23 = ptrtoint ptr %fixed_post_div53 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fixed_post_div53, align 4
  %div54 = udiv i32 %rate.1.sink, %24
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end47.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.then.cleanup_crit_edge ], [ %rate.1, %if.end47.cleanup_crit_edge ], [ %div54, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccu_nm_round_rate(ptr noundef %hw, i32 noundef %rate, ptr nocapture noundef readonly %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %common = getelementptr i8, ptr %hw, i32 -20
  %features = getelementptr i8, ptr %hw, i32 -8
  %0 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %features, align 4
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.end.thread

if.end:                                           ; preds = %entry
  %min_rate = getelementptr i8, ptr %hw, i32 -28
  %2 = ptrtoint ptr %min_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %min_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %rate)
  %cmp = icmp ugt i32 %3, %rate
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.thread:                                    ; preds = %entry
  %fixed_post_div = getelementptr i8, ptr %hw, i32 -32
  %4 = ptrtoint ptr %fixed_post_div to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fixed_post_div, align 4
  %mul = mul i32 %5, %rate
  %min_rate125 = getelementptr i8, ptr %hw, i32 -28
  %6 = ptrtoint ptr %min_rate125 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %min_rate125, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %7)
  %cmp126 = icmp ult i32 %mul, %7
  br i1 %cmp126, label %if.end.thread.cleanup.sink.split_crit_edge, label %if.end10.thread

if.end.thread.cleanup.sink.split_crit_edge:       ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end10:                                         ; preds = %if.end
  %max_rate = getelementptr i8, ptr %hw, i32 -24
  %8 = ptrtoint ptr %max_rate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool11.not = icmp ne i32 %9, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %rate)
  %cmp13 = icmp ult i32 %9, %rate
  %or.cond = and i1 %tobool11.not, %cmp13
  br i1 %or.cond, label %if.end10.cleanup_crit_edge, label %if.end10.if.end24_crit_edge

if.end10.if.end24_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end10.thread:                                  ; preds = %if.end.thread
  %max_rate129 = getelementptr i8, ptr %hw, i32 -24
  %10 = ptrtoint ptr %max_rate129 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_rate129, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool11.not130 = icmp ne i32 %11, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %11)
  %cmp13131 = icmp ugt i32 %mul, %11
  %or.cond132 = select i1 %tobool11.not130, i1 %cmp13131, i1 false
  br i1 %or.cond132, label %if.end10.thread.cleanup.sink.split_crit_edge, label %if.end10.thread.if.end24_crit_edge

if.end10.thread.if.end24_crit_edge:               ; preds = %if.end10.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24

if.end10.thread.cleanup.sink.split_crit_edge:     ; preds = %if.end10.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end24:                                         ; preds = %if.end10.thread.if.end24_crit_edge, %if.end10.if.end24_crit_edge
  %rate.addr.0127133 = phi i32 [ %mul, %if.end10.thread.if.end24_crit_edge ], [ %rate, %if.end10.if.end24_crit_edge ]
  %frac = getelementptr i8, ptr %hw, i32 -68
  %call26 = tail call zeroext i1 @ccu_frac_helper_has_rate(ptr noundef %common, ptr noundef %frac, i32 noundef %rate.addr.0127133) #4
  br i1 %call26, label %if.then27, label %if.end36

if.then27:                                        ; preds = %if.end24
  %12 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %features, align 4
  %and30 = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.then27.cleanup_crit_edge, label %if.then32

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then32:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #6
  %fixed_post_div33 = getelementptr i8, ptr %hw, i32 -32
  br label %cleanup.sink.split

if.end36:                                         ; preds = %if.end24
  %sdm = getelementptr i8, ptr %hw, i32 -52
  %call38 = tail call zeroext i1 @ccu_sdm_helper_has_rate(ptr noundef %common, ptr noundef %sdm, i32 noundef %rate.addr.0127133) #4
  br i1 %call38, label %if.then39, label %if.end48

if.then39:                                        ; preds = %if.end36
  %14 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %features, align 4
  %and42 = and i32 %15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.then39.cleanup_crit_edge, label %if.then44

if.then39.cleanup_crit_edge:                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then44:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #6
  %fixed_post_div45 = getelementptr i8, ptr %hw, i32 -32
  br label %cleanup.sink.split

if.end48:                                         ; preds = %if.end36
  %min = getelementptr i8, ptr %hw, i32 -93
  %16 = ptrtoint ptr %min to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %min, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool49.not = icmp eq i8 %17, 0
  %narrow = select i1 %tobool49.not, i8 1, i8 %17
  %conv. = zext i8 %narrow to i32
  %max = getelementptr i8, ptr %hw, i32 -92
  %18 = ptrtoint ptr %max to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %max, align 4
  %conv51 = zext i8 %19 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool52.not = icmp eq i8 %19, 0
  br i1 %tobool52.not, label %cond.false54, label %if.end48.cond.end57_crit_edge

if.end48.cond.end57_crit_edge:                    ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end57

cond.false54:                                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #6
  %width = getelementptr i8, ptr %hw, i32 -94
  %20 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %width, align 2
  %conv56 = zext i8 %21 to i32
  %shl = shl nuw i32 1, %conv56
  br label %cond.end57

cond.end57:                                       ; preds = %cond.false54, %if.end48.cond.end57_crit_edge
  %cond58 = phi i32 [ %shl, %cond.false54 ], [ %conv51, %if.end48.cond.end57_crit_edge ]
  %max59 = getelementptr i8, ptr %hw, i32 -84
  %22 = ptrtoint ptr %max59 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool60.not = icmp eq i32 %23, 0
  br i1 %tobool60.not, label %cond.false62, label %cond.end57.cond.end67_crit_edge

cond.end57.cond.end67_crit_edge:                  ; preds = %cond.end57
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end67

cond.false62:                                     ; preds = %cond.end57
  call void @__sanitizer_cov_trace_pc() #6
  %width64 = getelementptr i8, ptr %hw, i32 -87
  %24 = ptrtoint ptr %width64 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %width64, align 1
  %conv65 = zext i8 %25 to i32
  %shl66 = shl nuw i32 1, %conv65
  br label %cond.end67

cond.end67:                                       ; preds = %cond.false62, %cond.end57.cond.end67_crit_edge
  %cond68 = phi i32 [ %shl66, %cond.false62 ], [ %23, %cond.end57.cond.end67_crit_edge ]
  %26 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %parent_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond58, i32 %conv.)
  %cmp.not36.i = icmp ult i32 %cond58, %conv.
  br i1 %cmp.not36.i, label %cond.end67.ccu_nm_find_best.exit_crit_edge, label %for.body.lr.ph.i

cond.end67.ccu_nm_find_best.exit_crit_edge:       ; preds = %cond.end67
  call void @__sanitizer_cov_trace_pc() #6
  %.pre = zext i32 %27 to i64
  br label %ccu_nm_find_best.exit

for.body.lr.ph.i:                                 ; preds = %cond.end67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond68)
  %cmp2.not27.i = icmp eq i32 %cond68, 0
  %conv.i.i = zext i32 %27 to i64
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc9.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %_n.040.i = phi i32 [ %conv., %for.body.lr.ph.i ], [ %inc10.i, %for.inc9.i.for.body.i_crit_edge ]
  %best_m.039.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %best_m.1.lcssa.i, %for.inc9.i.for.body.i_crit_edge ]
  %best_n.038.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %best_n.1.lcssa.i, %for.inc9.i.for.body.i_crit_edge ]
  %best_rate.037.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %best_rate.1.lcssa.i, %for.inc9.i.for.body.i_crit_edge ]
  br i1 %cmp2.not27.i, label %for.body.i.for.inc9.i_crit_edge, label %for.body3.lr.ph.i

for.body.i.for.inc9.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc9.i

for.body3.lr.ph.i:                                ; preds = %for.body.i
  %conv1.i.i = zext i32 %_n.040.i to i64
  %mul.i.i = mul nuw i64 %conv1.i.i, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i.i)
  %cmp168.i.i = icmp ult i64 %mul.i.i, 4294967296
  %conv173.i.i = trunc i64 %mul.i.i to i32
  br label %if.else166.i.i

if.else166.i.i:                                   ; preds = %cleanup.i.if.else166.i.i_crit_edge, %for.body3.lr.ph.i
  %_m.031.i = phi i32 [ 1, %for.body3.lr.ph.i ], [ %inc.i, %cleanup.i.if.else166.i.i_crit_edge ]
  %best_m.130.i = phi i32 [ %best_m.039.i, %for.body3.lr.ph.i ], [ %best_m.3.i, %cleanup.i.if.else166.i.i_crit_edge ]
  %best_n.129.i = phi i32 [ %best_n.038.i, %for.body3.lr.ph.i ], [ %best_n.3.i, %cleanup.i.if.else166.i.i_crit_edge ]
  %best_rate.128.i = phi i32 [ %best_rate.037.i, %for.body3.lr.ph.i ], [ %best_rate.3.i, %cleanup.i.if.else166.i.i_crit_edge ]
  br i1 %cmp168.i.i, label %if.then172.i.i, label %if.else178.i.i, !prof !15

if.then172.i.i:                                   ; preds = %if.else166.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %div176.i.i = udiv i32 %conv173.i.i, %_m.031.i
  br label %ccu_nm_calc_rate.exit.i

if.else178.i.i:                                   ; preds = %if.else166.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %28 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %_m.031.i, i64 %mul.i.i) #7, !srcloc !16
  %asmresult1.i.i.i = extractvalue { i64, i64 } %28, 1
  %extract.t289.i.i = trunc i64 %asmresult1.i.i.i to i32
  br label %ccu_nm_calc_rate.exit.i

ccu_nm_calc_rate.exit.i:                          ; preds = %if.else178.i.i, %if.then172.i.i
  %rate.0.off0.i.i = phi i32 [ %div176.i.i, %if.then172.i.i ], [ %extract.t289.i.i, %if.else178.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %rate.addr.0127133, i32 %rate.0.off0.i.i)
  %cmp4.i = icmp ult i32 %rate.addr.0127133, %rate.0.off0.i.i
  br i1 %cmp4.i, label %ccu_nm_calc_rate.exit.i.cleanup.i_crit_edge, label %if.end.i

ccu_nm_calc_rate.exit.i.cleanup.i_crit_edge:      ; preds = %ccu_nm_calc_rate.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i

if.end.i:                                         ; preds = %ccu_nm_calc_rate.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i = sub i32 %rate.addr.0127133, %rate.0.off0.i.i
  %sub5.i = sub i32 %rate.addr.0127133, %best_rate.128.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %sub5.i)
  %cmp6.i = icmp ult i32 %sub.i, %sub5.i
  %best_rate.2.i = select i1 %cmp6.i, i32 %rate.0.off0.i.i, i32 %best_rate.128.i
  %best_n.2.i = select i1 %cmp6.i, i32 %_n.040.i, i32 %best_n.129.i
  %best_m.2.i = select i1 %cmp6.i, i32 %_m.031.i, i32 %best_m.130.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i, %ccu_nm_calc_rate.exit.i.cleanup.i_crit_edge
  %best_rate.3.i = phi i32 [ %best_rate.2.i, %if.end.i ], [ %best_rate.128.i, %ccu_nm_calc_rate.exit.i.cleanup.i_crit_edge ]
  %best_n.3.i = phi i32 [ %best_n.2.i, %if.end.i ], [ %best_n.129.i, %ccu_nm_calc_rate.exit.i.cleanup.i_crit_edge ]
  %best_m.3.i = phi i32 [ %best_m.2.i, %if.end.i ], [ %best_m.130.i, %ccu_nm_calc_rate.exit.i.cleanup.i_crit_edge ]
  %inc.i = add i32 %_m.031.i, 1
  %cmp2.not.i = icmp ugt i32 %inc.i, %cond68
  br i1 %cmp2.not.i, label %cleanup.i.for.inc9.i_crit_edge, label %cleanup.i.if.else166.i.i_crit_edge

cleanup.i.if.else166.i.i_crit_edge:               ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else166.i.i

cleanup.i.for.inc9.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc9.i

for.inc9.i:                                       ; preds = %cleanup.i.for.inc9.i_crit_edge, %for.body.i.for.inc9.i_crit_edge
  %best_rate.1.lcssa.i = phi i32 [ %best_rate.037.i, %for.body.i.for.inc9.i_crit_edge ], [ %best_rate.3.i, %cleanup.i.for.inc9.i_crit_edge ]
  %best_n.1.lcssa.i = phi i32 [ %best_n.038.i, %for.body.i.for.inc9.i_crit_edge ], [ %best_n.3.i, %cleanup.i.for.inc9.i_crit_edge ]
  %best_m.1.lcssa.i = phi i32 [ %best_m.039.i, %for.body.i.for.inc9.i_crit_edge ], [ %best_m.3.i, %cleanup.i.for.inc9.i_crit_edge ]
  %inc10.i = add i32 %_n.040.i, 1
  %cmp.not.i = icmp ugt i32 %inc10.i, %cond58
  br i1 %cmp.not.i, label %for.inc9.i.ccu_nm_find_best.exit_crit_edge, label %for.inc9.i.for.body.i_crit_edge

for.inc9.i.for.body.i_crit_edge:                  ; preds = %for.inc9.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.inc9.i.ccu_nm_find_best.exit_crit_edge:       ; preds = %for.inc9.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ccu_nm_find_best.exit

ccu_nm_find_best.exit:                            ; preds = %for.inc9.i.ccu_nm_find_best.exit_crit_edge, %cond.end67.ccu_nm_find_best.exit_crit_edge
  %conv.i.pre-phi = phi i64 [ %.pre, %cond.end67.ccu_nm_find_best.exit_crit_edge ], [ %conv.i.i, %for.inc9.i.ccu_nm_find_best.exit_crit_edge ]
  %best_n.0.lcssa.i = phi i32 [ 0, %cond.end67.ccu_nm_find_best.exit_crit_edge ], [ %best_n.1.lcssa.i, %for.inc9.i.ccu_nm_find_best.exit_crit_edge ]
  %best_m.0.lcssa.i = phi i32 [ 0, %cond.end67.ccu_nm_find_best.exit_crit_edge ], [ %best_m.1.lcssa.i, %for.inc9.i.ccu_nm_find_best.exit_crit_edge ]
  %conv1.i = zext i32 %best_n.0.lcssa.i to i64
  %mul.i = mul nuw i64 %conv.i.pre-phi, %conv1.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i)
  %cmp168.i = icmp ult i64 %mul.i, 4294967296
  br i1 %cmp168.i, label %if.then172.i, label %if.else178.i, !prof !15

if.then172.i:                                     ; preds = %ccu_nm_find_best.exit
  call void @__sanitizer_cov_trace_pc() #6
  %conv173.i = trunc i64 %mul.i to i32
  %div176.i = udiv i32 %conv173.i, %best_m.0.lcssa.i
  br label %ccu_nm_calc_rate.exit

if.else178.i:                                     ; preds = %ccu_nm_find_best.exit
  call void @__sanitizer_cov_trace_pc() #6
  %29 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %best_m.0.lcssa.i, i64 %mul.i) #7, !srcloc !16
  %asmresult1.i.i = extractvalue { i64, i64 } %29, 1
  %extract.t289.i = trunc i64 %asmresult1.i.i to i32
  br label %ccu_nm_calc_rate.exit

ccu_nm_calc_rate.exit:                            ; preds = %if.else178.i, %if.then172.i
  %rate.0.off0.i = phi i32 [ %div176.i, %if.then172.i ], [ %extract.t289.i, %if.else178.i ]
  %30 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %features, align 4
  %and74 = and i32 %31, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %ccu_nm_calc_rate.exit.cleanup_crit_edge, label %if.then76

ccu_nm_calc_rate.exit.cleanup_crit_edge:          ; preds = %ccu_nm_calc_rate.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then76:                                        ; preds = %ccu_nm_calc_rate.exit
  call void @__sanitizer_cov_trace_pc() #6
  %fixed_post_div77 = getelementptr i8, ptr %hw, i32 -32
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then76, %if.then44, %if.then32, %if.end10.thread.cleanup.sink.split_crit_edge, %if.end.thread.cleanup.sink.split_crit_edge
  %fixed_post_div77.sink = phi ptr [ %fixed_post_div77, %if.then76 ], [ %fixed_post_div45, %if.then44 ], [ %fixed_post_div33, %if.then32 ], [ %fixed_post_div, %if.end.thread.cleanup.sink.split_crit_edge ], [ %fixed_post_div, %if.end10.thread.cleanup.sink.split_crit_edge ]
  %rate.0.off0.i.sink = phi i32 [ %rate.0.off0.i, %if.then76 ], [ %rate.addr.0127133, %if.then44 ], [ %rate.addr.0127133, %if.then32 ], [ %7, %if.end.thread.cleanup.sink.split_crit_edge ], [ %11, %if.end10.thread.cleanup.sink.split_crit_edge ]
  %32 = ptrtoint ptr %fixed_post_div77.sink to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %fixed_post_div77.sink, align 4
  %div78 = udiv i32 %rate.0.off0.i.sink, %33
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %ccu_nm_calc_rate.exit.cleanup_crit_edge, %if.then39.cleanup_crit_edge, %if.then27.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %rate.addr.0127133, %if.then27.cleanup_crit_edge ], [ %rate.addr.0127133, %if.then39.cleanup_crit_edge ], [ %rate.0.off0.i, %ccu_nm_calc_rate.exit.cleanup_crit_edge ], [ %3, %if.end.cleanup_crit_edge ], [ %9, %if.end10.cleanup_crit_edge ], [ %div78, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccu_nm_set_rate(ptr noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  %_nm = alloca %struct._ccu_nm, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_nm) #4
  %0 = getelementptr inbounds %struct._ccu_nm, ptr %_nm, i32 0, i32 1
  %1 = getelementptr inbounds %struct._ccu_nm, ptr %_nm, i32 0, i32 2
  %2 = getelementptr inbounds %struct._ccu_nm, ptr %_nm, i32 0, i32 3
  %3 = getelementptr inbounds %struct._ccu_nm, ptr %_nm, i32 0, i32 4
  %4 = getelementptr inbounds %struct._ccu_nm, ptr %_nm, i32 0, i32 5
  %common = getelementptr i8, ptr %hw, i32 -20
  %features = getelementptr i8, ptr %hw, i32 -8
  %5 = call ptr @memset(ptr %_nm, i32 255, i32 16)
  %6 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %features, align 4
  %and = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %fixed_post_div = getelementptr i8, ptr %hw, i32 -32
  %8 = ptrtoint ptr %fixed_post_div to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fixed_post_div, align 4
  %mul = mul i32 %9, %rate
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rate.addr.0 = phi i32 [ %mul, %if.then ], [ %rate, %entry.if.end_crit_edge ]
  %frac = getelementptr i8, ptr %hw, i32 -68
  %call2 = tail call zeroext i1 @ccu_frac_helper_has_rate(ptr noundef %common, ptr noundef %frac, i32 noundef %rate.addr.0) #4
  br i1 %call2, label %do.body4, label %if.else

do.body4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %lock = getelementptr i8, ptr %hw, i32 -4
  %10 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lock, align 4
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #4
  %12 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %common, align 4
  %reg12 = getelementptr i8, ptr %hw, i32 -16
  %14 = ptrtoint ptr %reg12 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %reg12, align 4
  %conv13 = zext i16 %15 to i32
  %add.ptr = getelementptr i8, ptr %13, i32 %conv13
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !13
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  %m = getelementptr i8, ptr %hw, i32 -88
  %18 = ptrtoint ptr %m to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %m, align 4
  %conv17 = zext i8 %19 to i32
  %shl.neg = shl nsw i32 -1, %conv17
  %width = getelementptr i8, ptr %hw, i32 -87
  %20 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %width, align 1
  %conv19 = zext i8 %21 to i32
  %22 = add nuw nsw i32 %conv17, %conv19
  %sub25 = sub nsw i32 32, %22
  %shr = lshr i32 -1, %sub25
  %and26 = and i32 %shr, %shl.neg
  %neg = xor i32 %and26, -1
  %and28 = and i32 %17, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !18
  tail call void @arm_heavy_mb() #4
  %23 = tail call i32 @llvm.bswap.i32(i32 %and28)
  %24 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %common, align 4
  %26 = ptrtoint ptr %reg12 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %reg12, align 4
  %conv36 = zext i16 %27 to i32
  %add.ptr37 = getelementptr i8, ptr %25, i32 %conv36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 %23) #4, !srcloc !19
  %28 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %29, i32 noundef %call7) #4
  tail call void @ccu_frac_helper_enable(ptr noundef %common, ptr noundef %frac) #4
  %lock44 = getelementptr i8, ptr %hw, i32 -100
  %30 = ptrtoint ptr %lock44 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %lock44, align 4
  %call45 = tail call i32 @ccu_frac_helper_set_rate(ptr noundef %common, ptr noundef %frac, i32 noundef %rate.addr.0, i32 noundef %31) #4
  br label %cleanup

if.else:                                          ; preds = %if.end
  tail call void @ccu_frac_helper_disable(ptr noundef %common, ptr noundef %frac) #4
  %n = getelementptr i8, ptr %hw, i32 -96
  %min = getelementptr i8, ptr %hw, i32 -93
  %32 = ptrtoint ptr %min to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %min, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool50.not = icmp eq i8 %33, 0
  %narrow = select i1 %tobool50.not, i8 1, i8 %33
  %cond = zext i8 %narrow to i32
  %34 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %cond, ptr %0, align 4
  %max = getelementptr i8, ptr %hw, i32 -92
  %35 = ptrtoint ptr %max to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %max, align 4
  %conv52 = zext i8 %36 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool53.not = icmp eq i8 %36, 0
  br i1 %tobool53.not, label %cond.false55, label %if.else.cond.end60_crit_edge

if.else.cond.end60_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end60

cond.false55:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %width57 = getelementptr i8, ptr %hw, i32 -94
  %37 = ptrtoint ptr %width57 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %width57, align 2
  %conv58 = zext i8 %38 to i32
  %shl59 = shl nuw i32 1, %conv58
  br label %cond.end60

cond.end60:                                       ; preds = %cond.false55, %if.else.cond.end60_crit_edge
  %cond61 = phi i32 [ %shl59, %cond.false55 ], [ %conv52, %if.else.cond.end60_crit_edge ]
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %cond61, ptr %1, align 4
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %3, align 4
  %m62 = getelementptr i8, ptr %hw, i32 -88
  %max63 = getelementptr i8, ptr %hw, i32 -84
  %41 = ptrtoint ptr %max63 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %max63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool64.not = icmp eq i32 %42, 0
  br i1 %tobool64.not, label %cond.false66, label %cond.end60.cond.end71_crit_edge

cond.end60.cond.end71_crit_edge:                  ; preds = %cond.end60
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end71

cond.false66:                                     ; preds = %cond.end60
  call void @__sanitizer_cov_trace_pc() #6
  %width68 = getelementptr i8, ptr %hw, i32 -87
  %43 = ptrtoint ptr %width68 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %width68, align 1
  %conv69 = zext i8 %44 to i32
  %shl70 = shl nuw i32 1, %conv69
  br label %cond.end71

cond.end71:                                       ; preds = %cond.false66, %cond.end60.cond.end71_crit_edge
  %cond72 = phi i32 [ %shl70, %cond.false66 ], [ %42, %cond.end60.cond.end71_crit_edge ]
  %45 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %cond72, ptr %4, align 4
  %sdm = getelementptr i8, ptr %hw, i32 -52
  %call74 = tail call zeroext i1 @ccu_sdm_helper_has_rate(ptr noundef %common, ptr noundef %sdm, i32 noundef %rate.addr.0) #4
  br i1 %call74, label %if.then75, label %if.else83

if.then75:                                        ; preds = %cond.end71
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @ccu_sdm_helper_enable(ptr noundef %common, ptr noundef %sdm, i32 noundef %rate.addr.0) #4
  %call82 = call i32 @ccu_sdm_helper_get_factors(ptr noundef %common, ptr noundef %sdm, i32 noundef %rate.addr.0, ptr noundef %2, ptr noundef nonnull %_nm) #4
  br label %do.body88

if.else83:                                        ; preds = %cond.end71
  tail call void @ccu_sdm_helper_disable(ptr noundef %common, ptr noundef %sdm) #4
  %46 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %0, align 4
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %49)
  %cmp.not36.i = icmp ugt i32 %47, %49
  br i1 %cmp.not36.i, label %if.else83.ccu_nm_find_best.exit_crit_edge, label %for.body.lr.ph.i

if.else83.ccu_nm_find_best.exit_crit_edge:        ; preds = %if.else83
  call void @__sanitizer_cov_trace_pc() #6
  br label %ccu_nm_find_best.exit

for.body.lr.ph.i:                                 ; preds = %if.else83
  %50 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %3, align 4
  %52 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %53)
  %cmp2.not27.i = icmp ugt i32 %51, %53
  %conv.i.i = zext i32 %parent_rate to i64
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc9.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %_n.040.i = phi i32 [ %47, %for.body.lr.ph.i ], [ %inc10.i, %for.inc9.i.for.body.i_crit_edge ]
  %best_m.039.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %best_m.1.lcssa.i, %for.inc9.i.for.body.i_crit_edge ]
  %best_n.038.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %best_n.1.lcssa.i, %for.inc9.i.for.body.i_crit_edge ]
  %best_rate.037.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %best_rate.1.lcssa.i, %for.inc9.i.for.body.i_crit_edge ]
  br i1 %cmp2.not27.i, label %for.body.i.for.inc9.i_crit_edge, label %for.body3.lr.ph.i

for.body.i.for.inc9.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc9.i

for.body3.lr.ph.i:                                ; preds = %for.body.i
  %conv1.i.i = zext i32 %_n.040.i to i64
  %mul.i.i = mul nuw i64 %conv1.i.i, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i.i)
  %cmp168.i.i = icmp ult i64 %mul.i.i, 4294967296
  %conv173.i.i = trunc i64 %mul.i.i to i32
  br label %if.else166.i.i

if.else166.i.i:                                   ; preds = %cleanup.i.if.else166.i.i_crit_edge, %for.body3.lr.ph.i
  %_m.031.i = phi i32 [ %51, %for.body3.lr.ph.i ], [ %inc.i, %cleanup.i.if.else166.i.i_crit_edge ]
  %best_m.130.i = phi i32 [ %best_m.039.i, %for.body3.lr.ph.i ], [ %best_m.3.i, %cleanup.i.if.else166.i.i_crit_edge ]
  %best_n.129.i = phi i32 [ %best_n.038.i, %for.body3.lr.ph.i ], [ %best_n.3.i, %cleanup.i.if.else166.i.i_crit_edge ]
  %best_rate.128.i = phi i32 [ %best_rate.037.i, %for.body3.lr.ph.i ], [ %best_rate.3.i, %cleanup.i.if.else166.i.i_crit_edge ]
  br i1 %cmp168.i.i, label %if.then172.i.i, label %if.else178.i.i, !prof !15

if.then172.i.i:                                   ; preds = %if.else166.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %div176.i.i = udiv i32 %conv173.i.i, %_m.031.i
  br label %ccu_nm_calc_rate.exit.i

if.else178.i.i:                                   ; preds = %if.else166.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %54 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %_m.031.i, i64 %mul.i.i) #7, !srcloc !16
  %asmresult1.i.i.i = extractvalue { i64, i64 } %54, 1
  %extract.t289.i.i = trunc i64 %asmresult1.i.i.i to i32
  br label %ccu_nm_calc_rate.exit.i

ccu_nm_calc_rate.exit.i:                          ; preds = %if.else178.i.i, %if.then172.i.i
  %rate.0.off0.i.i = phi i32 [ %div176.i.i, %if.then172.i.i ], [ %extract.t289.i.i, %if.else178.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %rate.addr.0, i32 %rate.0.off0.i.i)
  %cmp4.i = icmp ult i32 %rate.addr.0, %rate.0.off0.i.i
  br i1 %cmp4.i, label %ccu_nm_calc_rate.exit.i.cleanup.i_crit_edge, label %if.end.i

ccu_nm_calc_rate.exit.i.cleanup.i_crit_edge:      ; preds = %ccu_nm_calc_rate.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i

if.end.i:                                         ; preds = %ccu_nm_calc_rate.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i = sub i32 %rate.addr.0, %rate.0.off0.i.i
  %sub5.i = sub i32 %rate.addr.0, %best_rate.128.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %sub5.i)
  %cmp6.i = icmp ult i32 %sub.i, %sub5.i
  %best_rate.2.i = select i1 %cmp6.i, i32 %rate.0.off0.i.i, i32 %best_rate.128.i
  %best_n.2.i = select i1 %cmp6.i, i32 %_n.040.i, i32 %best_n.129.i
  %best_m.2.i = select i1 %cmp6.i, i32 %_m.031.i, i32 %best_m.130.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i, %ccu_nm_calc_rate.exit.i.cleanup.i_crit_edge
  %best_rate.3.i = phi i32 [ %best_rate.2.i, %if.end.i ], [ %best_rate.128.i, %ccu_nm_calc_rate.exit.i.cleanup.i_crit_edge ]
  %best_n.3.i = phi i32 [ %best_n.2.i, %if.end.i ], [ %best_n.129.i, %ccu_nm_calc_rate.exit.i.cleanup.i_crit_edge ]
  %best_m.3.i = phi i32 [ %best_m.2.i, %if.end.i ], [ %best_m.130.i, %ccu_nm_calc_rate.exit.i.cleanup.i_crit_edge ]
  %inc.i = add i32 %_m.031.i, 1
  %cmp2.not.i = icmp ugt i32 %inc.i, %53
  br i1 %cmp2.not.i, label %cleanup.i.for.inc9.i_crit_edge, label %cleanup.i.if.else166.i.i_crit_edge

cleanup.i.if.else166.i.i_crit_edge:               ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else166.i.i

cleanup.i.for.inc9.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc9.i

for.inc9.i:                                       ; preds = %cleanup.i.for.inc9.i_crit_edge, %for.body.i.for.inc9.i_crit_edge
  %best_rate.1.lcssa.i = phi i32 [ %best_rate.037.i, %for.body.i.for.inc9.i_crit_edge ], [ %best_rate.3.i, %cleanup.i.for.inc9.i_crit_edge ]
  %best_n.1.lcssa.i = phi i32 [ %best_n.038.i, %for.body.i.for.inc9.i_crit_edge ], [ %best_n.3.i, %cleanup.i.for.inc9.i_crit_edge ]
  %best_m.1.lcssa.i = phi i32 [ %best_m.039.i, %for.body.i.for.inc9.i_crit_edge ], [ %best_m.3.i, %cleanup.i.for.inc9.i_crit_edge ]
  %inc10.i = add i32 %_n.040.i, 1
  %cmp.not.i = icmp ugt i32 %inc10.i, %49
  br i1 %cmp.not.i, label %for.inc9.i.ccu_nm_find_best.exit_crit_edge, label %for.inc9.i.for.body.i_crit_edge

for.inc9.i.for.body.i_crit_edge:                  ; preds = %for.inc9.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.inc9.i.ccu_nm_find_best.exit_crit_edge:       ; preds = %for.inc9.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ccu_nm_find_best.exit

ccu_nm_find_best.exit:                            ; preds = %for.inc9.i.ccu_nm_find_best.exit_crit_edge, %if.else83.ccu_nm_find_best.exit_crit_edge
  %best_n.0.lcssa.i = phi i32 [ 0, %if.else83.ccu_nm_find_best.exit_crit_edge ], [ %best_n.1.lcssa.i, %for.inc9.i.ccu_nm_find_best.exit_crit_edge ]
  %best_m.0.lcssa.i = phi i32 [ 0, %if.else83.ccu_nm_find_best.exit_crit_edge ], [ %best_m.1.lcssa.i, %for.inc9.i.ccu_nm_find_best.exit_crit_edge ]
  %55 = ptrtoint ptr %_nm to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %best_n.0.lcssa.i, ptr %_nm, align 4
  %56 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %best_m.0.lcssa.i, ptr %2, align 4
  br label %do.body88

do.body88:                                        ; preds = %ccu_nm_find_best.exit, %if.then75
  %lock95 = getelementptr i8, ptr %hw, i32 -4
  %57 = ptrtoint ptr %lock95 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %lock95, align 4
  %call97 = call i32 @_raw_spin_lock_irqsave(ptr noundef %58) #4
  %59 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %common, align 4
  %reg107 = getelementptr i8, ptr %hw, i32 -16
  %61 = ptrtoint ptr %reg107 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %reg107, align 4
  %conv108 = zext i16 %62 to i32
  %add.ptr109 = getelementptr i8, ptr %60, i32 %conv108
  %63 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr109) #4, !srcloc !13
  %64 = call i32 @llvm.bswap.i32(i32 %63)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  %shift114 = getelementptr i8, ptr %hw, i32 -95
  %65 = ptrtoint ptr %shift114 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %shift114, align 1
  %conv115 = zext i8 %66 to i32
  %shl116.neg = shl nsw i32 -1, %conv115
  %width120 = getelementptr i8, ptr %hw, i32 -94
  %67 = ptrtoint ptr %width120 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %width120, align 2
  %conv121 = zext i8 %68 to i32
  %69 = add nuw nsw i32 %conv115, %conv121
  %sub127 = sub nsw i32 32, %69
  %shr128 = lshr i32 -1, %sub127
  %and129 = and i32 %shr128, %shl116.neg
  %70 = ptrtoint ptr %m62 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %m62, align 4
  %conv135 = zext i8 %71 to i32
  %shl136.neg = shl nsw i32 -1, %conv135
  %width140 = getelementptr i8, ptr %hw, i32 -87
  %72 = ptrtoint ptr %width140 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %width140, align 1
  %conv141 = zext i8 %73 to i32
  %74 = add nuw nsw i32 %conv135, %conv141
  %sub147 = sub nsw i32 32, %74
  %shr148 = lshr i32 -1, %sub147
  %and149 = and i32 %shr148, %shl136.neg
  %75 = or i32 %and149, %and129
  %76 = xor i32 %75, -1
  %and152 = and i32 %64, %76
  %77 = ptrtoint ptr %_nm to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %_nm, align 4
  %79 = ptrtoint ptr %n to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %n, align 4
  %conv155 = zext i8 %80 to i32
  %sub156 = sub i32 %78, %conv155
  %shl160 = shl i32 %sub156, %conv115
  %or = or i32 %and152, %shl160
  %81 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %2, align 4
  %offset163 = getelementptr i8, ptr %hw, i32 -80
  %83 = ptrtoint ptr %offset163 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %offset163, align 4
  %sub164 = sub i32 %82, %84
  %shl168 = shl i32 %sub164, %conv135
  %or169 = or i32 %or, %shl168
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !21
  call void @arm_heavy_mb() #4
  %85 = call i32 @llvm.bswap.i32(i32 %or169)
  %86 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %common, align 4
  %88 = ptrtoint ptr %reg107 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %reg107, align 4
  %conv177 = zext i16 %89 to i32
  %add.ptr178 = getelementptr i8, ptr %87, i32 %conv177
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr178, i32 %85) #4, !srcloc !19
  %90 = ptrtoint ptr %lock95 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %lock95, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %91, i32 noundef %call97) #4
  %lock182 = getelementptr i8, ptr %hw, i32 -100
  %92 = ptrtoint ptr %lock182 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %lock182, align 4
  call void @ccu_helper_wait_for_lock(ptr noundef %common, i32 noundef %93) #4
  br label %cleanup

cleanup:                                          ; preds = %do.body88, %do.body4
  %retval.0 = phi i32 [ %call45, %do.body4 ], [ 0, %do.body88 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_nm) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccu_gate_helper_enable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ccu_gate_helper_disable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccu_gate_helper_is_enabled(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ccu_frac_helper_is_enabled(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccu_frac_helper_read_rate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ccu_sdm_helper_is_enabled(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccu_sdm_helper_read_rate(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ccu_frac_helper_has_rate(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ccu_sdm_helper_has_rate(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ccu_frac_helper_enable(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccu_frac_helper_set_rate(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ccu_frac_helper_disable(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ccu_sdm_helper_enable(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccu_sdm_helper_get_factors(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ccu_sdm_helper_disable(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ccu_helper_wait_for_lock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @ccu_nm_ops, !1, !"ccu_nm_ops", i1 false, i1 false}
!1 = !{!"../drivers/clk/sunxi-ng/ccu_nm.c", i32 232, i32 22}
!2 = !{ptr @__ksymtab_ccu_nm_ops, !3, !"__ksymtab_ccu_nm_ops", i1 false, i1 false}
!3 = !{!"../drivers/clk/sunxi-ng/ccu_nm.c", i32 241, i32 1}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{i64 4030951}
!14 = !{i64 2151628283}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{i64 2148945917, i64 2148946197, i64 2148946531, i64 2148946865}
!17 = !{i64 2151629847}
!18 = !{i64 2151631040}
!19 = !{i64 4030533}
!20 = !{i64 2151632138}
!21 = !{i64 2151634295}
