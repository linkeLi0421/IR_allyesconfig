; ModuleID = '/llk/IR_all_yes/drivers/clk/sunxi-ng/ccu_nkmp.c_pt.bc'
source_filename = "../drivers/clk/sunxi-ng/ccu_nkmp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+ccu_nkmp_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_ccu_nkmp_ops\09\09\09\09"
module asm "\09.long\09__crc_ccu_nkmp_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ccu_nkmp_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22ccu_nkmp_ops\22\09\09\09\09\09"
module asm "__kstrtabns_ccu_nkmp_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22SUNXI_CCU\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }

@ccu_nkmp_ops = dso_local constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @ccu_nkmp_enable, ptr @ccu_nkmp_disable, ptr @ccu_nkmp_is_enabled, ptr null, ptr null, ptr null, ptr @ccu_nkmp_recalc_rate, ptr @ccu_nkmp_round_rate, ptr null, ptr null, ptr null, ptr @ccu_nkmp_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_ccu_nkmp_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_ccu_nkmp_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_ccu_nkmp_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ccu_nkmp_ops to i32), ptr @__kstrtab_ccu_nkmp_ops, ptr @__kstrtabns_ccu_nkmp_ops }, section "___ksymtab_gpl+ccu_nkmp_ops", align 4
@___asan_gen_.1 = private unnamed_addr constant [13 x i8] c"ccu_nkmp_ops\00", align 1
@___asan_gen_.2 = private constant [35 x i8] c"../drivers/clk/sunxi-ng/ccu_nkmp.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 224, i32 22 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_ccu_nkmp_ops, ptr @ccu_nkmp_ops], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccu_nkmp_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccu_nkmp_enable(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -88
  %common = getelementptr i8, ptr %hw, i32 -20
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i, align 4
  %call1 = tail call i32 @ccu_gate_helper_enable(ptr noundef %common, i32 noundef %1) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ccu_nkmp_disable(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -88
  %common = getelementptr i8, ptr %hw, i32 -20
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i, align 4
  tail call void @ccu_gate_helper_disable(ptr noundef %common, i32 noundef %1) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccu_nkmp_is_enabled(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -88
  %common = getelementptr i8, ptr %hw, i32 -20
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i, align 4
  %call1 = tail call i32 @ccu_gate_helper_is_enabled(ptr noundef %common, i32 noundef %1) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccu_nkmp_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %common = getelementptr i8, ptr %hw, i32 -20
  %0 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common, align 4
  %reg2 = getelementptr i8, ptr %hw, i32 -16
  %2 = ptrtoint ptr %reg2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %reg2, align 4
  %conv = zext i16 %3 to i32
  %add.ptr = getelementptr i8, ptr %1, i32 %conv
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !13
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %n5 = getelementptr i8, ptr %hw, i32 -80
  %shift = getelementptr i8, ptr %hw, i32 -79
  %6 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %shift, align 1
  %conv6 = zext i8 %7 to i32
  %shr = lshr i32 %5, %conv6
  %width = getelementptr i8, ptr %hw, i32 -78
  %8 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %width, align 2
  %conv8 = zext i8 %9 to i32
  %notmask = shl nsw i32 -1, %conv8
  %sub = xor i32 %notmask, -1
  %and = and i32 %shr, %sub
  %10 = ptrtoint ptr %n5 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %n5, align 4
  %conv10 = zext i8 %11 to i32
  %add = add i32 %and, %conv10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool.not = icmp eq i32 %add, 0
  %spec.select = select i1 %tobool.not, i32 1, i32 %add
  %k11 = getelementptr i8, ptr %hw, i32 -75
  %shift12 = getelementptr i8, ptr %hw, i32 -74
  %12 = ptrtoint ptr %shift12 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %shift12, align 1
  %conv13 = zext i8 %13 to i32
  %shr14 = lshr i32 %5, %conv13
  %width16 = getelementptr i8, ptr %hw, i32 -73
  %14 = ptrtoint ptr %width16 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %width16, align 1
  %conv17 = zext i8 %15 to i32
  %notmask94 = shl nsw i32 -1, %conv17
  %sub19 = xor i32 %notmask94, -1
  %and20 = and i32 %shr14, %sub19
  %16 = ptrtoint ptr %k11 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %k11, align 1
  %conv23 = zext i8 %17 to i32
  %add24 = add i32 %and20, %conv23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add24)
  %tobool25.not = icmp eq i32 %add24, 0
  %k.0 = select i1 %tobool25.not, i32 1, i32 %add24
  %m29 = getelementptr i8, ptr %hw, i32 -68
  %18 = ptrtoint ptr %m29 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %m29, align 4
  %conv31 = zext i8 %19 to i32
  %shr32 = lshr i32 %5, %conv31
  %width34 = getelementptr i8, ptr %hw, i32 -67
  %20 = ptrtoint ptr %width34 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %width34, align 1
  %conv35 = zext i8 %21 to i32
  %notmask95 = shl nsw i32 -1, %conv35
  %sub37 = xor i32 %notmask95, -1
  %and38 = and i32 %shr32, %sub37
  %offset40 = getelementptr i8, ptr %hw, i32 -60
  %22 = ptrtoint ptr %offset40 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %offset40, align 4
  %add41 = add i32 %and38, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add41)
  %tobool42.not = icmp eq i32 %add41, 0
  %m.0 = select i1 %tobool42.not, i32 1, i32 %add41
  %p46 = getelementptr i8, ptr %hw, i32 -48
  %24 = ptrtoint ptr %p46 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %p46, align 4
  %conv48 = zext i8 %25 to i32
  %shr49 = lshr i32 %5, %conv48
  %width51 = getelementptr i8, ptr %hw, i32 -47
  %26 = ptrtoint ptr %width51 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %width51, align 1
  %conv52 = zext i8 %27 to i32
  %notmask96 = shl nsw i32 -1, %conv52
  %sub54 = xor i32 %notmask96, -1
  %and55 = and i32 %shr49, %sub54
  %conv.i = zext i32 %parent_rate to i64
  %mul.i = mul i32 %k.0, %spec.select
  %conv1.i = zext i32 %mul.i to i64
  %mul2.i = mul nuw i64 %conv1.i, %conv.i
  %mul3.i = shl i32 %m.0, %and55
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul2.i)
  %cmp170.i = icmp ult i64 %mul2.i, 4294967296
  br i1 %cmp170.i, label %if.then174.i, label %if.else180.i, !prof !15

if.then174.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv175.i = trunc i64 %mul2.i to i32
  %div178.i = udiv i32 %conv175.i, %mul3.i
  br label %ccu_nkmp_calc_rate.exit

if.else180.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %28 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul3.i, i64 %mul2.i) #7, !srcloc !16
  %asmresult1.i.i = extractvalue { i64, i64 } %28, 1
  %extract.t293.i = trunc i64 %asmresult1.i.i to i32
  br label %ccu_nkmp_calc_rate.exit

ccu_nkmp_calc_rate.exit:                          ; preds = %if.else180.i, %if.then174.i
  %rate.0.off0.i = phi i32 [ %div178.i, %if.then174.i ], [ %extract.t293.i, %if.else180.i ]
  %features = getelementptr i8, ptr %hw, i32 -8
  %29 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %features, align 4
  %and59 = and i32 %30, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %ccu_nkmp_calc_rate.exit.if.end62_crit_edge, label %if.then61

ccu_nkmp_calc_rate.exit.if.end62_crit_edge:       ; preds = %ccu_nkmp_calc_rate.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end62

if.then61:                                        ; preds = %ccu_nkmp_calc_rate.exit
  call void @__sanitizer_cov_trace_pc() #6
  %fixed_post_div = getelementptr i8, ptr %hw, i32 -28
  %31 = ptrtoint ptr %fixed_post_div to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %fixed_post_div, align 4
  %div = udiv i32 %rate.0.off0.i, %32
  br label %if.end62

if.end62:                                         ; preds = %if.then61, %ccu_nkmp_calc_rate.exit.if.end62_crit_edge
  %rate.0 = phi i32 [ %div, %if.then61 ], [ %rate.0.off0.i, %ccu_nkmp_calc_rate.exit.if.end62_crit_edge ]
  ret i32 %rate.0
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @ccu_nkmp_round_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, ptr nocapture noundef readonly %parent_rate) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %features = getelementptr i8, ptr %hw, i32 -8
  %0 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %features, align 4
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.end.thread

if.end:                                           ; preds = %entry
  %max_rate = getelementptr i8, ptr %hw, i32 -24
  %2 = ptrtoint ptr %max_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp ne i32 %3, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %rate)
  %cmp = icmp ult i32 %3, %rate
  %or.cond = and i1 %tobool1.not, %cmp
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.thread:                                    ; preds = %entry
  %fixed_post_div = getelementptr i8, ptr %hw, i32 -28
  %4 = ptrtoint ptr %fixed_post_div to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fixed_post_div, align 4
  %mul = mul i32 %5, %rate
  %max_rate107 = getelementptr i8, ptr %hw, i32 -24
  %6 = ptrtoint ptr %max_rate107 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_rate107, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not108 = icmp ne i32 %7, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %7)
  %cmp109 = icmp ugt i32 %mul, %7
  %or.cond110 = select i1 %tobool1.not108, i1 %cmp109, i1 false
  br i1 %or.cond110, label %if.end.thread.cleanup.sink.split_crit_edge, label %if.end.thread.if.end12_crit_edge

if.end.thread.if.end12_crit_edge:                 ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

if.end.thread.cleanup.sink.split_crit_edge:       ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end12:                                         ; preds = %if.end.thread.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %rate.addr.0111 = phi i32 [ %mul, %if.end.thread.if.end12_crit_edge ], [ %rate, %if.end.if.end12_crit_edge ]
  %min = getelementptr i8, ptr %hw, i32 -77
  %8 = ptrtoint ptr %min to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %min, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool13.not = icmp eq i8 %9, 0
  %narrow = select i1 %tobool13.not, i8 1, i8 %9
  %conv. = zext i8 %narrow to i32
  %max = getelementptr i8, ptr %hw, i32 -76
  %10 = ptrtoint ptr %max to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %max, align 4
  %conv15 = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool16.not = icmp eq i8 %11, 0
  br i1 %tobool16.not, label %cond.false18, label %if.end12.cond.end21_crit_edge

if.end12.cond.end21_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end21

cond.false18:                                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  %width = getelementptr i8, ptr %hw, i32 -78
  %12 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %width, align 2
  %conv20 = zext i8 %13 to i32
  %shl = shl nuw i32 1, %conv20
  br label %cond.end21

cond.end21:                                       ; preds = %cond.false18, %if.end12.cond.end21_crit_edge
  %cond22 = phi i32 [ %shl, %cond.false18 ], [ %conv15, %if.end12.cond.end21_crit_edge ]
  %min23 = getelementptr i8, ptr %hw, i32 -72
  %14 = ptrtoint ptr %min23 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %min23, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool25.not = icmp eq i8 %15, 0
  %narrow104 = select i1 %tobool25.not, i8 1, i8 %15
  %conv24. = zext i8 %narrow104 to i32
  %max31 = getelementptr i8, ptr %hw, i32 -71
  %16 = ptrtoint ptr %max31 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %max31, align 1
  %conv32 = zext i8 %17 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool33.not = icmp eq i8 %17, 0
  br i1 %tobool33.not, label %cond.false35, label %cond.end21.cond.end40_crit_edge

cond.end21.cond.end40_crit_edge:                  ; preds = %cond.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end40

cond.false35:                                     ; preds = %cond.end21
  call void @__sanitizer_cov_trace_pc() #6
  %width37 = getelementptr i8, ptr %hw, i32 -73
  %18 = ptrtoint ptr %width37 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %width37, align 1
  %conv38 = zext i8 %19 to i32
  %shl39 = shl nuw i32 1, %conv38
  br label %cond.end40

cond.end40:                                       ; preds = %cond.false35, %cond.end21.cond.end40_crit_edge
  %cond41 = phi i32 [ %shl39, %cond.false35 ], [ %conv32, %cond.end21.cond.end40_crit_edge ]
  %max42 = getelementptr i8, ptr %hw, i32 -64
  %20 = ptrtoint ptr %max42 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool43.not = icmp eq i32 %21, 0
  br i1 %tobool43.not, label %cond.false45, label %cond.end40.cond.end50_crit_edge

cond.end40.cond.end50_crit_edge:                  ; preds = %cond.end40
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end50

cond.false45:                                     ; preds = %cond.end40
  call void @__sanitizer_cov_trace_pc() #6
  %width47 = getelementptr i8, ptr %hw, i32 -67
  %22 = ptrtoint ptr %width47 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %width47, align 1
  %conv48 = zext i8 %23 to i32
  %shl49 = shl nuw i32 1, %conv48
  br label %cond.end50

cond.end50:                                       ; preds = %cond.false45, %cond.end40.cond.end50_crit_edge
  %cond51 = phi i32 [ %shl49, %cond.false45 ], [ %21, %cond.end40.cond.end50_crit_edge ]
  %max52 = getelementptr i8, ptr %hw, i32 -44
  %24 = ptrtoint ptr %max52 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %max52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool53.not = icmp eq i32 %25, 0
  br i1 %tobool53.not, label %cond.false55, label %cond.end50.cond.end61_crit_edge

cond.end50.cond.end61_crit_edge:                  ; preds = %cond.end50
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end61

cond.false55:                                     ; preds = %cond.end50
  call void @__sanitizer_cov_trace_pc() #6
  %width57 = getelementptr i8, ptr %hw, i32 -47
  %26 = ptrtoint ptr %width57 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %width57, align 1
  %conv58 = zext i8 %27 to i32
  %notmask = shl nsw i32 -1, %conv58
  %sub = xor i32 %notmask, -1
  %shl60 = shl nuw i32 1, %sub
  br label %cond.end61

cond.end61:                                       ; preds = %cond.false55, %cond.end50.cond.end61_crit_edge
  %cond62 = phi i32 [ %shl60, %cond.false55 ], [ %25, %cond.end50.cond.end61_crit_edge ]
  %28 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %parent_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond41, i32 %conv24.)
  %cmp.not88.i = icmp ult i32 %cond41, %conv24.
  br i1 %cmp.not88.i, label %cond.end61.ccu_nkmp_find_best.exit_crit_edge, label %for.body.lr.ph.i

cond.end61.ccu_nkmp_find_best.exit_crit_edge:     ; preds = %cond.end61
  call void @__sanitizer_cov_trace_pc() #6
  %.pre = zext i32 %29 to i64
  br label %ccu_nkmp_find_best.exit

for.body.lr.ph.i:                                 ; preds = %cond.end61
  call void @__sanitizer_cov_trace_cmp4(i32 %cond22, i32 %conv.)
  %cmp2.not75.i = icmp ult i32 %cond22, %conv.
  %conv.i.i = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond51)
  %cmp5.not62.i = icmp eq i32 %cond51, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond62)
  %cmp8.not50.i = icmp eq i32 %cond62, 0
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc20.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %_k.094.i = phi i32 [ %conv24., %for.body.lr.ph.i ], [ %inc21.i, %for.inc20.i.for.body.i_crit_edge ]
  %best_p.093.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %best_p.1.lcssa.i, %for.inc20.i.for.body.i_crit_edge ]
  %best_m.092.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %best_m.1.lcssa.i, %for.inc20.i.for.body.i_crit_edge ]
  %best_k.091.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %best_k.1.lcssa.i, %for.inc20.i.for.body.i_crit_edge ]
  %best_n.090.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %best_n.1.lcssa.i, %for.inc20.i.for.body.i_crit_edge ]
  %best_rate.089.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %best_rate.1.lcssa.i, %for.inc20.i.for.body.i_crit_edge ]
  br i1 %cmp2.not75.i, label %for.body.i.for.inc20.i_crit_edge, label %for.body.i.for.body3.i_crit_edge

for.body.i.for.body3.i_crit_edge:                 ; preds = %for.body.i
  br label %for.body3.i

for.body.i.for.inc20.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc20.i

for.body3.i:                                      ; preds = %for.inc17.i.for.body3.i_crit_edge, %for.body.i.for.body3.i_crit_edge
  %_n.081.i = phi i32 [ %inc18.i, %for.inc17.i.for.body3.i_crit_edge ], [ %conv., %for.body.i.for.body3.i_crit_edge ]
  %best_p.180.i = phi i32 [ %best_p.2.lcssa.i, %for.inc17.i.for.body3.i_crit_edge ], [ %best_p.093.i, %for.body.i.for.body3.i_crit_edge ]
  %best_m.179.i = phi i32 [ %best_m.2.lcssa.i, %for.inc17.i.for.body3.i_crit_edge ], [ %best_m.092.i, %for.body.i.for.body3.i_crit_edge ]
  %best_k.178.i = phi i32 [ %best_k.2.lcssa.i, %for.inc17.i.for.body3.i_crit_edge ], [ %best_k.091.i, %for.body.i.for.body3.i_crit_edge ]
  %best_n.177.i = phi i32 [ %best_n.2.lcssa.i, %for.inc17.i.for.body3.i_crit_edge ], [ %best_n.090.i, %for.body.i.for.body3.i_crit_edge ]
  %best_rate.176.i = phi i32 [ %best_rate.2.lcssa.i, %for.inc17.i.for.body3.i_crit_edge ], [ %best_rate.089.i, %for.body.i.for.body3.i_crit_edge ]
  br i1 %cmp5.not62.i, label %for.body3.i.for.inc17.i_crit_edge, label %for.body6.lr.ph.i

for.body3.i.for.inc17.i_crit_edge:                ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc17.i

for.body6.lr.ph.i:                                ; preds = %for.body3.i
  %mul.i.i = mul i32 %_n.081.i, %_k.094.i
  %conv1.i.i = zext i32 %mul.i.i to i64
  %mul2.i.i = mul nuw i64 %conv1.i.i, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul2.i.i)
  %cmp170.i.i = icmp ult i64 %mul2.i.i, 4294967296
  %conv175.i.i = trunc i64 %mul2.i.i to i32
  br label %for.body6.i

for.body6.i:                                      ; preds = %for.inc15.i.for.body6.i_crit_edge, %for.body6.lr.ph.i
  %_m.068.i = phi i32 [ 1, %for.body6.lr.ph.i ], [ %inc.i, %for.inc15.i.for.body6.i_crit_edge ]
  %best_p.267.i = phi i32 [ %best_p.180.i, %for.body6.lr.ph.i ], [ %best_p.3.lcssa.i, %for.inc15.i.for.body6.i_crit_edge ]
  %best_m.266.i = phi i32 [ %best_m.179.i, %for.body6.lr.ph.i ], [ %best_m.3.lcssa.i, %for.inc15.i.for.body6.i_crit_edge ]
  %best_k.265.i = phi i32 [ %best_k.178.i, %for.body6.lr.ph.i ], [ %best_k.3.lcssa.i, %for.inc15.i.for.body6.i_crit_edge ]
  %best_n.264.i = phi i32 [ %best_n.177.i, %for.body6.lr.ph.i ], [ %best_n.3.lcssa.i, %for.inc15.i.for.body6.i_crit_edge ]
  %best_rate.263.i = phi i32 [ %best_rate.176.i, %for.body6.lr.ph.i ], [ %best_rate.3.lcssa.i, %for.inc15.i.for.body6.i_crit_edge ]
  br i1 %cmp8.not50.i, label %for.body6.i.for.inc15.i_crit_edge, label %for.body6.i.for.body9.i_crit_edge

for.body6.i.for.body9.i_crit_edge:                ; preds = %for.body6.i
  br label %for.body9.i

for.body6.i.for.inc15.i_crit_edge:                ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc15.i

for.body9.i:                                      ; preds = %cleanup.i.for.body9.i_crit_edge, %for.body6.i.for.body9.i_crit_edge
  %_p.056.i = phi i32 [ %shl.i, %cleanup.i.for.body9.i_crit_edge ], [ 1, %for.body6.i.for.body9.i_crit_edge ]
  %best_p.355.i = phi i32 [ %best_p.5.i, %cleanup.i.for.body9.i_crit_edge ], [ %best_p.267.i, %for.body6.i.for.body9.i_crit_edge ]
  %best_m.354.i = phi i32 [ %best_m.5.i, %cleanup.i.for.body9.i_crit_edge ], [ %best_m.266.i, %for.body6.i.for.body9.i_crit_edge ]
  %best_k.353.i = phi i32 [ %best_k.5.i, %cleanup.i.for.body9.i_crit_edge ], [ %best_k.265.i, %for.body6.i.for.body9.i_crit_edge ]
  %best_n.352.i = phi i32 [ %best_n.5.i, %cleanup.i.for.body9.i_crit_edge ], [ %best_n.264.i, %for.body6.i.for.body9.i_crit_edge ]
  %best_rate.351.i = phi i32 [ %best_rate.5.i, %cleanup.i.for.body9.i_crit_edge ], [ %best_rate.263.i, %for.body6.i.for.body9.i_crit_edge ]
  %mul3.i.i = mul i32 %_p.056.i, %_m.068.i
  br i1 %cmp170.i.i, label %if.then174.i.i, label %if.else180.i.i, !prof !15

if.then174.i.i:                                   ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #6
  %div178.i.i = udiv i32 %conv175.i.i, %mul3.i.i
  br label %ccu_nkmp_calc_rate.exit.i

if.else180.i.i:                                   ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #6
  %30 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul3.i.i, i64 %mul2.i.i) #7, !srcloc !16
  %asmresult1.i.i.i = extractvalue { i64, i64 } %30, 1
  %extract.t293.i.i = trunc i64 %asmresult1.i.i.i to i32
  br label %ccu_nkmp_calc_rate.exit.i

ccu_nkmp_calc_rate.exit.i:                        ; preds = %if.else180.i.i, %if.then174.i.i
  %rate.0.off0.i.i = phi i32 [ %div178.i.i, %if.then174.i.i ], [ %extract.t293.i.i, %if.else180.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %rate.addr.0111, i32 %rate.0.off0.i.i)
  %cmp10.i = icmp ult i32 %rate.addr.0111, %rate.0.off0.i.i
  br i1 %cmp10.i, label %ccu_nkmp_calc_rate.exit.i.cleanup.i_crit_edge, label %if.end.i

ccu_nkmp_calc_rate.exit.i.cleanup.i_crit_edge:    ; preds = %ccu_nkmp_calc_rate.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i

if.end.i:                                         ; preds = %ccu_nkmp_calc_rate.exit.i
  %sub.i = sub i32 %rate.addr.0111, %rate.0.off0.i.i
  %sub11.i = sub i32 %rate.addr.0111, %best_rate.351.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %sub11.i)
  %cmp12.i = icmp ult i32 %sub.i, %sub11.i
  br i1 %cmp12.i, label %if.then13.i, label %if.end.i.cleanup.i_crit_edge

if.end.i.cleanup.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i

if.then13.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then13.i, %if.end.i.cleanup.i_crit_edge, %ccu_nkmp_calc_rate.exit.i.cleanup.i_crit_edge
  %best_rate.5.i = phi i32 [ %best_rate.351.i, %ccu_nkmp_calc_rate.exit.i.cleanup.i_crit_edge ], [ %rate.0.off0.i.i, %if.then13.i ], [ %best_rate.351.i, %if.end.i.cleanup.i_crit_edge ]
  %best_n.5.i = phi i32 [ %best_n.352.i, %ccu_nkmp_calc_rate.exit.i.cleanup.i_crit_edge ], [ %_n.081.i, %if.then13.i ], [ %best_n.352.i, %if.end.i.cleanup.i_crit_edge ]
  %best_k.5.i = phi i32 [ %best_k.353.i, %ccu_nkmp_calc_rate.exit.i.cleanup.i_crit_edge ], [ %_k.094.i, %if.then13.i ], [ %best_k.353.i, %if.end.i.cleanup.i_crit_edge ]
  %best_m.5.i = phi i32 [ %best_m.354.i, %ccu_nkmp_calc_rate.exit.i.cleanup.i_crit_edge ], [ %_m.068.i, %if.then13.i ], [ %best_m.354.i, %if.end.i.cleanup.i_crit_edge ]
  %best_p.5.i = phi i32 [ %best_p.355.i, %ccu_nkmp_calc_rate.exit.i.cleanup.i_crit_edge ], [ %_p.056.i, %if.then13.i ], [ %best_p.355.i, %if.end.i.cleanup.i_crit_edge ]
  %shl.i = shl i32 %_p.056.i, 1
  %cmp8.not.i = icmp ugt i32 %shl.i, %cond62
  br i1 %cmp8.not.i, label %cleanup.i.for.inc15.i_crit_edge, label %cleanup.i.for.body9.i_crit_edge

cleanup.i.for.body9.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body9.i

cleanup.i.for.inc15.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc15.i

for.inc15.i:                                      ; preds = %cleanup.i.for.inc15.i_crit_edge, %for.body6.i.for.inc15.i_crit_edge
  %best_rate.3.lcssa.i = phi i32 [ %best_rate.263.i, %for.body6.i.for.inc15.i_crit_edge ], [ %best_rate.5.i, %cleanup.i.for.inc15.i_crit_edge ]
  %best_n.3.lcssa.i = phi i32 [ %best_n.264.i, %for.body6.i.for.inc15.i_crit_edge ], [ %best_n.5.i, %cleanup.i.for.inc15.i_crit_edge ]
  %best_k.3.lcssa.i = phi i32 [ %best_k.265.i, %for.body6.i.for.inc15.i_crit_edge ], [ %best_k.5.i, %cleanup.i.for.inc15.i_crit_edge ]
  %best_m.3.lcssa.i = phi i32 [ %best_m.266.i, %for.body6.i.for.inc15.i_crit_edge ], [ %best_m.5.i, %cleanup.i.for.inc15.i_crit_edge ]
  %best_p.3.lcssa.i = phi i32 [ %best_p.267.i, %for.body6.i.for.inc15.i_crit_edge ], [ %best_p.5.i, %cleanup.i.for.inc15.i_crit_edge ]
  %inc.i = add i32 %_m.068.i, 1
  %cmp5.not.i = icmp ugt i32 %inc.i, %cond51
  br i1 %cmp5.not.i, label %for.inc15.i.for.inc17.i_crit_edge, label %for.inc15.i.for.body6.i_crit_edge

for.inc15.i.for.body6.i_crit_edge:                ; preds = %for.inc15.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body6.i

for.inc15.i.for.inc17.i_crit_edge:                ; preds = %for.inc15.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc17.i

for.inc17.i:                                      ; preds = %for.inc15.i.for.inc17.i_crit_edge, %for.body3.i.for.inc17.i_crit_edge
  %best_rate.2.lcssa.i = phi i32 [ %best_rate.176.i, %for.body3.i.for.inc17.i_crit_edge ], [ %best_rate.3.lcssa.i, %for.inc15.i.for.inc17.i_crit_edge ]
  %best_n.2.lcssa.i = phi i32 [ %best_n.177.i, %for.body3.i.for.inc17.i_crit_edge ], [ %best_n.3.lcssa.i, %for.inc15.i.for.inc17.i_crit_edge ]
  %best_k.2.lcssa.i = phi i32 [ %best_k.178.i, %for.body3.i.for.inc17.i_crit_edge ], [ %best_k.3.lcssa.i, %for.inc15.i.for.inc17.i_crit_edge ]
  %best_m.2.lcssa.i = phi i32 [ %best_m.179.i, %for.body3.i.for.inc17.i_crit_edge ], [ %best_m.3.lcssa.i, %for.inc15.i.for.inc17.i_crit_edge ]
  %best_p.2.lcssa.i = phi i32 [ %best_p.180.i, %for.body3.i.for.inc17.i_crit_edge ], [ %best_p.3.lcssa.i, %for.inc15.i.for.inc17.i_crit_edge ]
  %inc18.i = add i32 %_n.081.i, 1
  %cmp2.not.i = icmp ugt i32 %inc18.i, %cond22
  br i1 %cmp2.not.i, label %for.inc17.i.for.inc20.i_crit_edge, label %for.inc17.i.for.body3.i_crit_edge

for.inc17.i.for.body3.i_crit_edge:                ; preds = %for.inc17.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body3.i

for.inc17.i.for.inc20.i_crit_edge:                ; preds = %for.inc17.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc20.i

for.inc20.i:                                      ; preds = %for.inc17.i.for.inc20.i_crit_edge, %for.body.i.for.inc20.i_crit_edge
  %best_rate.1.lcssa.i = phi i32 [ %best_rate.089.i, %for.body.i.for.inc20.i_crit_edge ], [ %best_rate.2.lcssa.i, %for.inc17.i.for.inc20.i_crit_edge ]
  %best_n.1.lcssa.i = phi i32 [ %best_n.090.i, %for.body.i.for.inc20.i_crit_edge ], [ %best_n.2.lcssa.i, %for.inc17.i.for.inc20.i_crit_edge ]
  %best_k.1.lcssa.i = phi i32 [ %best_k.091.i, %for.body.i.for.inc20.i_crit_edge ], [ %best_k.2.lcssa.i, %for.inc17.i.for.inc20.i_crit_edge ]
  %best_m.1.lcssa.i = phi i32 [ %best_m.092.i, %for.body.i.for.inc20.i_crit_edge ], [ %best_m.2.lcssa.i, %for.inc17.i.for.inc20.i_crit_edge ]
  %best_p.1.lcssa.i = phi i32 [ %best_p.093.i, %for.body.i.for.inc20.i_crit_edge ], [ %best_p.2.lcssa.i, %for.inc17.i.for.inc20.i_crit_edge ]
  %inc21.i = add i32 %_k.094.i, 1
  %cmp.not.i = icmp ugt i32 %inc21.i, %cond41
  br i1 %cmp.not.i, label %ccu_nkmp_find_best.exit.loopexit, label %for.inc20.i.for.body.i_crit_edge

for.inc20.i.for.body.i_crit_edge:                 ; preds = %for.inc20.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

ccu_nkmp_find_best.exit.loopexit:                 ; preds = %for.inc20.i
  call void @__sanitizer_cov_trace_pc() #6
  %31 = mul i32 %best_k.1.lcssa.i, %best_n.1.lcssa.i
  %32 = mul i32 %best_p.1.lcssa.i, %best_m.1.lcssa.i
  br label %ccu_nkmp_find_best.exit

ccu_nkmp_find_best.exit:                          ; preds = %ccu_nkmp_find_best.exit.loopexit, %cond.end61.ccu_nkmp_find_best.exit_crit_edge
  %conv.i.pre-phi = phi i64 [ %.pre, %cond.end61.ccu_nkmp_find_best.exit_crit_edge ], [ %conv.i.i, %ccu_nkmp_find_best.exit.loopexit ]
  %mul.i = phi i32 [ 0, %cond.end61.ccu_nkmp_find_best.exit_crit_edge ], [ %31, %ccu_nkmp_find_best.exit.loopexit ]
  %mul3.i = phi i32 [ 0, %cond.end61.ccu_nkmp_find_best.exit_crit_edge ], [ %32, %ccu_nkmp_find_best.exit.loopexit ]
  %conv1.i = zext i32 %mul.i to i64
  %mul2.i = mul nuw i64 %conv.i.pre-phi, %conv1.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul2.i)
  %cmp170.i = icmp ult i64 %mul2.i, 4294967296
  br i1 %cmp170.i, label %if.then174.i, label %if.else180.i, !prof !15

if.then174.i:                                     ; preds = %ccu_nkmp_find_best.exit
  call void @__sanitizer_cov_trace_pc() #6
  %conv175.i = trunc i64 %mul2.i to i32
  %div178.i = udiv i32 %conv175.i, %mul3.i
  br label %ccu_nkmp_calc_rate.exit

if.else180.i:                                     ; preds = %ccu_nkmp_find_best.exit
  call void @__sanitizer_cov_trace_pc() #6
  %33 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul3.i, i64 %mul2.i) #7, !srcloc !16
  %asmresult1.i.i = extractvalue { i64, i64 } %33, 1
  %extract.t293.i = trunc i64 %asmresult1.i.i to i32
  br label %ccu_nkmp_calc_rate.exit

ccu_nkmp_calc_rate.exit:                          ; preds = %if.else180.i, %if.then174.i
  %rate.0.off0.i = phi i32 [ %div178.i, %if.then174.i ], [ %extract.t293.i, %if.else180.i ]
  br i1 %tobool.not, label %ccu_nkmp_calc_rate.exit.cleanup_crit_edge, label %if.then72

ccu_nkmp_calc_rate.exit.cleanup_crit_edge:        ; preds = %ccu_nkmp_calc_rate.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then72:                                        ; preds = %ccu_nkmp_calc_rate.exit
  call void @__sanitizer_cov_trace_pc() #6
  %fixed_post_div73 = getelementptr i8, ptr %hw, i32 -28
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then72, %if.end.thread.cleanup.sink.split_crit_edge
  %fixed_post_div73.sink = phi ptr [ %fixed_post_div73, %if.then72 ], [ %fixed_post_div, %if.end.thread.cleanup.sink.split_crit_edge ]
  %rate.0.off0.i.sink = phi i32 [ %rate.0.off0.i, %if.then72 ], [ %7, %if.end.thread.cleanup.sink.split_crit_edge ]
  %34 = ptrtoint ptr %fixed_post_div73.sink to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %fixed_post_div73.sink, align 4
  %div74 = udiv i32 %rate.0.off0.i.sink, %35
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %ccu_nkmp_calc_rate.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %rate.0.off0.i, %ccu_nkmp_calc_rate.exit.cleanup_crit_edge ], [ %3, %if.end.cleanup_crit_edge ], [ %div74, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccu_nkmp_set_rate(ptr noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %features = getelementptr i8, ptr %hw, i32 -8
  %0 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %features, align 4
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %fixed_post_div = getelementptr i8, ptr %hw, i32 -28
  %2 = ptrtoint ptr %fixed_post_div to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fixed_post_div, align 4
  %mul = mul i32 %3, %rate
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rate.addr.0 = phi i32 [ %mul, %if.then ], [ %rate, %entry.if.end_crit_edge ]
  %min = getelementptr i8, ptr %hw, i32 -77
  %4 = ptrtoint ptr %min to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %min, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  %narrow = select i1 %tobool1.not, i8 1, i8 %5
  %conv. = zext i8 %narrow to i32
  %max = getelementptr i8, ptr %hw, i32 -76
  %6 = ptrtoint ptr %max to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %max, align 4
  %conv3 = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  br i1 %tobool4.not, label %cond.false6, label %if.end.cond.end9_crit_edge

if.end.cond.end9_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end9

cond.false6:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %width = getelementptr i8, ptr %hw, i32 -78
  %8 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %width, align 2
  %conv8 = zext i8 %9 to i32
  %shl = shl nuw i32 1, %conv8
  br label %cond.end9

cond.end9:                                        ; preds = %cond.false6, %if.end.cond.end9_crit_edge
  %cond10 = phi i32 [ %shl, %cond.false6 ], [ %conv3, %if.end.cond.end9_crit_edge ]
  %min11 = getelementptr i8, ptr %hw, i32 -72
  %10 = ptrtoint ptr %min11 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %min11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool13.not = icmp eq i8 %11, 0
  %narrow282 = select i1 %tobool13.not, i8 1, i8 %11
  %conv12. = zext i8 %narrow282 to i32
  %max19 = getelementptr i8, ptr %hw, i32 -71
  %12 = ptrtoint ptr %max19 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %max19, align 1
  %conv20 = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool21.not = icmp eq i8 %13, 0
  br i1 %tobool21.not, label %cond.false23, label %cond.end9.cond.end28_crit_edge

cond.end9.cond.end28_crit_edge:                   ; preds = %cond.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end28

cond.false23:                                     ; preds = %cond.end9
  call void @__sanitizer_cov_trace_pc() #6
  %width25 = getelementptr i8, ptr %hw, i32 -73
  %14 = ptrtoint ptr %width25 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %width25, align 1
  %conv26 = zext i8 %15 to i32
  %shl27 = shl nuw i32 1, %conv26
  br label %cond.end28

cond.end28:                                       ; preds = %cond.false23, %cond.end9.cond.end28_crit_edge
  %cond29 = phi i32 [ %shl27, %cond.false23 ], [ %conv20, %cond.end9.cond.end28_crit_edge ]
  %m = getelementptr i8, ptr %hw, i32 -68
  %max30 = getelementptr i8, ptr %hw, i32 -64
  %16 = ptrtoint ptr %max30 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool31.not = icmp eq i32 %17, 0
  br i1 %tobool31.not, label %cond.false33, label %cond.end28.cond.end38_crit_edge

cond.end28.cond.end38_crit_edge:                  ; preds = %cond.end28
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end38

cond.false33:                                     ; preds = %cond.end28
  call void @__sanitizer_cov_trace_pc() #6
  %width35 = getelementptr i8, ptr %hw, i32 -67
  %18 = ptrtoint ptr %width35 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %width35, align 1
  %conv36 = zext i8 %19 to i32
  %shl37 = shl nuw i32 1, %conv36
  br label %cond.end38

cond.end38:                                       ; preds = %cond.false33, %cond.end28.cond.end38_crit_edge
  %cond39 = phi i32 [ %shl37, %cond.false33 ], [ %17, %cond.end28.cond.end38_crit_edge ]
  %p = getelementptr i8, ptr %hw, i32 -48
  %max40 = getelementptr i8, ptr %hw, i32 -44
  %20 = ptrtoint ptr %max40 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool41.not = icmp eq i32 %21, 0
  br i1 %tobool41.not, label %cond.false43, label %cond.end38.cond.end49_crit_edge

cond.end38.cond.end49_crit_edge:                  ; preds = %cond.end38
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end49

cond.false43:                                     ; preds = %cond.end38
  call void @__sanitizer_cov_trace_pc() #6
  %width45 = getelementptr i8, ptr %hw, i32 -47
  %22 = ptrtoint ptr %width45 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %width45, align 1
  %conv46 = zext i8 %23 to i32
  %notmask = shl nsw i32 -1, %conv46
  %sub = xor i32 %notmask, -1
  %shl48 = shl nuw i32 1, %sub
  br label %cond.end49

cond.end49:                                       ; preds = %cond.false43, %cond.end38.cond.end49_crit_edge
  %cond50 = phi i32 [ %shl48, %cond.false43 ], [ %21, %cond.end38.cond.end49_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond29, i32 %conv12.)
  %cmp.not88.i = icmp ult i32 %cond29, %conv12.
  br i1 %cmp.not88.i, label %cond.end49.ccu_nkmp_find_best.exit_crit_edge, label %for.body.lr.ph.i

cond.end49.ccu_nkmp_find_best.exit_crit_edge:     ; preds = %cond.end49
  call void @__sanitizer_cov_trace_pc() #6
  br label %ccu_nkmp_find_best.exit

for.body.lr.ph.i:                                 ; preds = %cond.end49
  call void @__sanitizer_cov_trace_cmp4(i32 %cond10, i32 %conv.)
  %cmp2.not75.i = icmp ult i32 %cond10, %conv.
  %conv.i.i = zext i32 %parent_rate to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond39)
  %cmp5.not62.i = icmp eq i32 %cond39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond50)
  %cmp8.not50.i = icmp eq i32 %cond50, 0
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc20.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %_k.094.i = phi i32 [ %conv12., %for.body.lr.ph.i ], [ %inc21.i, %for.inc20.i.for.body.i_crit_edge ]
  %best_p.093.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %best_p.1.lcssa.i, %for.inc20.i.for.body.i_crit_edge ]
  %best_m.092.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %best_m.1.lcssa.i, %for.inc20.i.for.body.i_crit_edge ]
  %best_k.091.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %best_k.1.lcssa.i, %for.inc20.i.for.body.i_crit_edge ]
  %best_n.090.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %best_n.1.lcssa.i, %for.inc20.i.for.body.i_crit_edge ]
  %best_rate.089.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %best_rate.1.lcssa.i, %for.inc20.i.for.body.i_crit_edge ]
  br i1 %cmp2.not75.i, label %for.body.i.for.inc20.i_crit_edge, label %for.body.i.for.body3.i_crit_edge

for.body.i.for.body3.i_crit_edge:                 ; preds = %for.body.i
  br label %for.body3.i

for.body.i.for.inc20.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc20.i

for.body3.i:                                      ; preds = %for.inc17.i.for.body3.i_crit_edge, %for.body.i.for.body3.i_crit_edge
  %_n.081.i = phi i32 [ %inc18.i, %for.inc17.i.for.body3.i_crit_edge ], [ %conv., %for.body.i.for.body3.i_crit_edge ]
  %best_p.180.i = phi i32 [ %best_p.2.lcssa.i, %for.inc17.i.for.body3.i_crit_edge ], [ %best_p.093.i, %for.body.i.for.body3.i_crit_edge ]
  %best_m.179.i = phi i32 [ %best_m.2.lcssa.i, %for.inc17.i.for.body3.i_crit_edge ], [ %best_m.092.i, %for.body.i.for.body3.i_crit_edge ]
  %best_k.178.i = phi i32 [ %best_k.2.lcssa.i, %for.inc17.i.for.body3.i_crit_edge ], [ %best_k.091.i, %for.body.i.for.body3.i_crit_edge ]
  %best_n.177.i = phi i32 [ %best_n.2.lcssa.i, %for.inc17.i.for.body3.i_crit_edge ], [ %best_n.090.i, %for.body.i.for.body3.i_crit_edge ]
  %best_rate.176.i = phi i32 [ %best_rate.2.lcssa.i, %for.inc17.i.for.body3.i_crit_edge ], [ %best_rate.089.i, %for.body.i.for.body3.i_crit_edge ]
  br i1 %cmp5.not62.i, label %for.body3.i.for.inc17.i_crit_edge, label %for.body6.lr.ph.i

for.body3.i.for.inc17.i_crit_edge:                ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc17.i

for.body6.lr.ph.i:                                ; preds = %for.body3.i
  %mul.i.i = mul i32 %_n.081.i, %_k.094.i
  %conv1.i.i = zext i32 %mul.i.i to i64
  %mul2.i.i = mul nuw i64 %conv1.i.i, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul2.i.i)
  %cmp170.i.i = icmp ult i64 %mul2.i.i, 4294967296
  %conv175.i.i = trunc i64 %mul2.i.i to i32
  br label %for.body6.i

for.body6.i:                                      ; preds = %for.inc15.i.for.body6.i_crit_edge, %for.body6.lr.ph.i
  %_m.068.i = phi i32 [ 1, %for.body6.lr.ph.i ], [ %inc.i, %for.inc15.i.for.body6.i_crit_edge ]
  %best_p.267.i = phi i32 [ %best_p.180.i, %for.body6.lr.ph.i ], [ %best_p.3.lcssa.i, %for.inc15.i.for.body6.i_crit_edge ]
  %best_m.266.i = phi i32 [ %best_m.179.i, %for.body6.lr.ph.i ], [ %best_m.3.lcssa.i, %for.inc15.i.for.body6.i_crit_edge ]
  %best_k.265.i = phi i32 [ %best_k.178.i, %for.body6.lr.ph.i ], [ %best_k.3.lcssa.i, %for.inc15.i.for.body6.i_crit_edge ]
  %best_n.264.i = phi i32 [ %best_n.177.i, %for.body6.lr.ph.i ], [ %best_n.3.lcssa.i, %for.inc15.i.for.body6.i_crit_edge ]
  %best_rate.263.i = phi i32 [ %best_rate.176.i, %for.body6.lr.ph.i ], [ %best_rate.3.lcssa.i, %for.inc15.i.for.body6.i_crit_edge ]
  br i1 %cmp8.not50.i, label %for.body6.i.for.inc15.i_crit_edge, label %for.body6.i.for.body9.i_crit_edge

for.body6.i.for.body9.i_crit_edge:                ; preds = %for.body6.i
  br label %for.body9.i

for.body6.i.for.inc15.i_crit_edge:                ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc15.i

for.body9.i:                                      ; preds = %cleanup.i.for.body9.i_crit_edge, %for.body6.i.for.body9.i_crit_edge
  %_p.056.i = phi i32 [ %shl.i, %cleanup.i.for.body9.i_crit_edge ], [ 1, %for.body6.i.for.body9.i_crit_edge ]
  %best_p.355.i = phi i32 [ %best_p.5.i, %cleanup.i.for.body9.i_crit_edge ], [ %best_p.267.i, %for.body6.i.for.body9.i_crit_edge ]
  %best_m.354.i = phi i32 [ %best_m.5.i, %cleanup.i.for.body9.i_crit_edge ], [ %best_m.266.i, %for.body6.i.for.body9.i_crit_edge ]
  %best_k.353.i = phi i32 [ %best_k.5.i, %cleanup.i.for.body9.i_crit_edge ], [ %best_k.265.i, %for.body6.i.for.body9.i_crit_edge ]
  %best_n.352.i = phi i32 [ %best_n.5.i, %cleanup.i.for.body9.i_crit_edge ], [ %best_n.264.i, %for.body6.i.for.body9.i_crit_edge ]
  %best_rate.351.i = phi i32 [ %best_rate.5.i, %cleanup.i.for.body9.i_crit_edge ], [ %best_rate.263.i, %for.body6.i.for.body9.i_crit_edge ]
  %mul3.i.i = mul i32 %_p.056.i, %_m.068.i
  br i1 %cmp170.i.i, label %if.then174.i.i, label %if.else180.i.i, !prof !15

if.then174.i.i:                                   ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #6
  %div178.i.i = udiv i32 %conv175.i.i, %mul3.i.i
  br label %ccu_nkmp_calc_rate.exit.i

if.else180.i.i:                                   ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #6
  %24 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul3.i.i, i64 %mul2.i.i) #7, !srcloc !16
  %asmresult1.i.i.i = extractvalue { i64, i64 } %24, 1
  %extract.t293.i.i = trunc i64 %asmresult1.i.i.i to i32
  br label %ccu_nkmp_calc_rate.exit.i

ccu_nkmp_calc_rate.exit.i:                        ; preds = %if.else180.i.i, %if.then174.i.i
  %rate.0.off0.i.i = phi i32 [ %div178.i.i, %if.then174.i.i ], [ %extract.t293.i.i, %if.else180.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %rate.addr.0, i32 %rate.0.off0.i.i)
  %cmp10.i = icmp ult i32 %rate.addr.0, %rate.0.off0.i.i
  br i1 %cmp10.i, label %ccu_nkmp_calc_rate.exit.i.cleanup.i_crit_edge, label %if.end.i

ccu_nkmp_calc_rate.exit.i.cleanup.i_crit_edge:    ; preds = %ccu_nkmp_calc_rate.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i

if.end.i:                                         ; preds = %ccu_nkmp_calc_rate.exit.i
  %sub.i = sub i32 %rate.addr.0, %rate.0.off0.i.i
  %sub11.i = sub i32 %rate.addr.0, %best_rate.351.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %sub11.i)
  %cmp12.i = icmp ult i32 %sub.i, %sub11.i
  br i1 %cmp12.i, label %if.then13.i, label %if.end.i.cleanup.i_crit_edge

if.end.i.cleanup.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i

if.then13.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then13.i, %if.end.i.cleanup.i_crit_edge, %ccu_nkmp_calc_rate.exit.i.cleanup.i_crit_edge
  %best_rate.5.i = phi i32 [ %best_rate.351.i, %ccu_nkmp_calc_rate.exit.i.cleanup.i_crit_edge ], [ %rate.0.off0.i.i, %if.then13.i ], [ %best_rate.351.i, %if.end.i.cleanup.i_crit_edge ]
  %best_n.5.i = phi i32 [ %best_n.352.i, %ccu_nkmp_calc_rate.exit.i.cleanup.i_crit_edge ], [ %_n.081.i, %if.then13.i ], [ %best_n.352.i, %if.end.i.cleanup.i_crit_edge ]
  %best_k.5.i = phi i32 [ %best_k.353.i, %ccu_nkmp_calc_rate.exit.i.cleanup.i_crit_edge ], [ %_k.094.i, %if.then13.i ], [ %best_k.353.i, %if.end.i.cleanup.i_crit_edge ]
  %best_m.5.i = phi i32 [ %best_m.354.i, %ccu_nkmp_calc_rate.exit.i.cleanup.i_crit_edge ], [ %_m.068.i, %if.then13.i ], [ %best_m.354.i, %if.end.i.cleanup.i_crit_edge ]
  %best_p.5.i = phi i32 [ %best_p.355.i, %ccu_nkmp_calc_rate.exit.i.cleanup.i_crit_edge ], [ %_p.056.i, %if.then13.i ], [ %best_p.355.i, %if.end.i.cleanup.i_crit_edge ]
  %shl.i = shl i32 %_p.056.i, 1
  %cmp8.not.i = icmp ugt i32 %shl.i, %cond50
  br i1 %cmp8.not.i, label %cleanup.i.for.inc15.i_crit_edge, label %cleanup.i.for.body9.i_crit_edge

cleanup.i.for.body9.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body9.i

cleanup.i.for.inc15.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc15.i

for.inc15.i:                                      ; preds = %cleanup.i.for.inc15.i_crit_edge, %for.body6.i.for.inc15.i_crit_edge
  %best_rate.3.lcssa.i = phi i32 [ %best_rate.263.i, %for.body6.i.for.inc15.i_crit_edge ], [ %best_rate.5.i, %cleanup.i.for.inc15.i_crit_edge ]
  %best_n.3.lcssa.i = phi i32 [ %best_n.264.i, %for.body6.i.for.inc15.i_crit_edge ], [ %best_n.5.i, %cleanup.i.for.inc15.i_crit_edge ]
  %best_k.3.lcssa.i = phi i32 [ %best_k.265.i, %for.body6.i.for.inc15.i_crit_edge ], [ %best_k.5.i, %cleanup.i.for.inc15.i_crit_edge ]
  %best_m.3.lcssa.i = phi i32 [ %best_m.266.i, %for.body6.i.for.inc15.i_crit_edge ], [ %best_m.5.i, %cleanup.i.for.inc15.i_crit_edge ]
  %best_p.3.lcssa.i = phi i32 [ %best_p.267.i, %for.body6.i.for.inc15.i_crit_edge ], [ %best_p.5.i, %cleanup.i.for.inc15.i_crit_edge ]
  %inc.i = add i32 %_m.068.i, 1
  %cmp5.not.i = icmp ugt i32 %inc.i, %cond39
  br i1 %cmp5.not.i, label %for.inc15.i.for.inc17.i_crit_edge, label %for.inc15.i.for.body6.i_crit_edge

for.inc15.i.for.body6.i_crit_edge:                ; preds = %for.inc15.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body6.i

for.inc15.i.for.inc17.i_crit_edge:                ; preds = %for.inc15.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc17.i

for.inc17.i:                                      ; preds = %for.inc15.i.for.inc17.i_crit_edge, %for.body3.i.for.inc17.i_crit_edge
  %best_rate.2.lcssa.i = phi i32 [ %best_rate.176.i, %for.body3.i.for.inc17.i_crit_edge ], [ %best_rate.3.lcssa.i, %for.inc15.i.for.inc17.i_crit_edge ]
  %best_n.2.lcssa.i = phi i32 [ %best_n.177.i, %for.body3.i.for.inc17.i_crit_edge ], [ %best_n.3.lcssa.i, %for.inc15.i.for.inc17.i_crit_edge ]
  %best_k.2.lcssa.i = phi i32 [ %best_k.178.i, %for.body3.i.for.inc17.i_crit_edge ], [ %best_k.3.lcssa.i, %for.inc15.i.for.inc17.i_crit_edge ]
  %best_m.2.lcssa.i = phi i32 [ %best_m.179.i, %for.body3.i.for.inc17.i_crit_edge ], [ %best_m.3.lcssa.i, %for.inc15.i.for.inc17.i_crit_edge ]
  %best_p.2.lcssa.i = phi i32 [ %best_p.180.i, %for.body3.i.for.inc17.i_crit_edge ], [ %best_p.3.lcssa.i, %for.inc15.i.for.inc17.i_crit_edge ]
  %inc18.i = add i32 %_n.081.i, 1
  %cmp2.not.i = icmp ugt i32 %inc18.i, %cond10
  br i1 %cmp2.not.i, label %for.inc17.i.for.inc20.i_crit_edge, label %for.inc17.i.for.body3.i_crit_edge

for.inc17.i.for.body3.i_crit_edge:                ; preds = %for.inc17.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body3.i

for.inc17.i.for.inc20.i_crit_edge:                ; preds = %for.inc17.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc20.i

for.inc20.i:                                      ; preds = %for.inc17.i.for.inc20.i_crit_edge, %for.body.i.for.inc20.i_crit_edge
  %best_rate.1.lcssa.i = phi i32 [ %best_rate.089.i, %for.body.i.for.inc20.i_crit_edge ], [ %best_rate.2.lcssa.i, %for.inc17.i.for.inc20.i_crit_edge ]
  %best_n.1.lcssa.i = phi i32 [ %best_n.090.i, %for.body.i.for.inc20.i_crit_edge ], [ %best_n.2.lcssa.i, %for.inc17.i.for.inc20.i_crit_edge ]
  %best_k.1.lcssa.i = phi i32 [ %best_k.091.i, %for.body.i.for.inc20.i_crit_edge ], [ %best_k.2.lcssa.i, %for.inc17.i.for.inc20.i_crit_edge ]
  %best_m.1.lcssa.i = phi i32 [ %best_m.092.i, %for.body.i.for.inc20.i_crit_edge ], [ %best_m.2.lcssa.i, %for.inc17.i.for.inc20.i_crit_edge ]
  %best_p.1.lcssa.i = phi i32 [ %best_p.093.i, %for.body.i.for.inc20.i_crit_edge ], [ %best_p.2.lcssa.i, %for.inc17.i.for.inc20.i_crit_edge ]
  %inc21.i = add i32 %_k.094.i, 1
  %cmp.not.i = icmp ugt i32 %inc21.i, %cond29
  br i1 %cmp.not.i, label %for.inc20.i.ccu_nkmp_find_best.exit_crit_edge, label %for.inc20.i.for.body.i_crit_edge

for.inc20.i.for.body.i_crit_edge:                 ; preds = %for.inc20.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.inc20.i.ccu_nkmp_find_best.exit_crit_edge:    ; preds = %for.inc20.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ccu_nkmp_find_best.exit

ccu_nkmp_find_best.exit:                          ; preds = %for.inc20.i.ccu_nkmp_find_best.exit_crit_edge, %cond.end49.ccu_nkmp_find_best.exit_crit_edge
  %best_n.0.lcssa.i = phi i32 [ 0, %cond.end49.ccu_nkmp_find_best.exit_crit_edge ], [ %best_n.1.lcssa.i, %for.inc20.i.ccu_nkmp_find_best.exit_crit_edge ]
  %best_k.0.lcssa.i = phi i32 [ 0, %cond.end49.ccu_nkmp_find_best.exit_crit_edge ], [ %best_k.1.lcssa.i, %for.inc20.i.ccu_nkmp_find_best.exit_crit_edge ]
  %best_m.0.lcssa.i = phi i32 [ 0, %cond.end49.ccu_nkmp_find_best.exit_crit_edge ], [ %best_m.1.lcssa.i, %for.inc20.i.ccu_nkmp_find_best.exit_crit_edge ]
  %best_p.0.lcssa.i = phi i32 [ 0, %cond.end49.ccu_nkmp_find_best.exit_crit_edge ], [ %best_p.1.lcssa.i, %for.inc20.i.ccu_nkmp_find_best.exit_crit_edge ]
  %width52 = getelementptr i8, ptr %hw, i32 -78
  %25 = ptrtoint ptr %width52 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %width52, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool53.not = icmp eq i8 %26, 0
  br i1 %tobool53.not, label %ccu_nkmp_find_best.exit.if.end70_crit_edge, label %if.then54

ccu_nkmp_find_best.exit.if.end70_crit_edge:       ; preds = %ccu_nkmp_find_best.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end70

if.then54:                                        ; preds = %ccu_nkmp_find_best.exit
  call void @__sanitizer_cov_trace_pc() #6
  %shift = getelementptr i8, ptr %hw, i32 -79
  %27 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %shift, align 1
  %conv56 = zext i8 %28 to i32
  %shl57.neg = shl nsw i32 -1, %conv56
  %conv61 = zext i8 %26 to i32
  %29 = add nuw nsw i32 %conv61, %conv56
  %sub67 = sub nsw i32 32, %29
  %shr = lshr i32 -1, %sub67
  %and68 = and i32 %shr, %shl57.neg
  br label %if.end70

if.end70:                                         ; preds = %if.then54, %ccu_nkmp_find_best.exit.if.end70_crit_edge
  %n_mask.0 = phi i32 [ %and68, %if.then54 ], [ 0, %ccu_nkmp_find_best.exit.if.end70_crit_edge ]
  %width72 = getelementptr i8, ptr %hw, i32 -73
  %30 = ptrtoint ptr %width72 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %width72, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool73.not = icmp eq i8 %31, 0
  br i1 %tobool73.not, label %if.end70.if.end93_crit_edge, label %if.then74

if.end70.if.end93_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end93

if.then74:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #6
  %shift76 = getelementptr i8, ptr %hw, i32 -74
  %32 = ptrtoint ptr %shift76 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %shift76, align 1
  %conv77 = zext i8 %33 to i32
  %shl78.neg = shl nsw i32 -1, %conv77
  %conv83 = zext i8 %31 to i32
  %34 = add nuw nsw i32 %conv83, %conv77
  %sub89 = sub nsw i32 32, %34
  %shr90 = lshr i32 -1, %sub89
  %and91 = and i32 %shr90, %shl78.neg
  br label %if.end93

if.end93:                                         ; preds = %if.then74, %if.end70.if.end93_crit_edge
  %k_mask.0 = phi i32 [ %and91, %if.then74 ], [ 0, %if.end70.if.end93_crit_edge ]
  %width95 = getelementptr i8, ptr %hw, i32 -67
  %35 = ptrtoint ptr %width95 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %width95, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool96.not = icmp eq i8 %36, 0
  br i1 %tobool96.not, label %if.end93.if.end116_crit_edge, label %if.then97

if.end93.if.end116_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end116

if.then97:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #6
  %37 = ptrtoint ptr %m to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %m, align 4
  %conv100 = zext i8 %38 to i32
  %shl101.neg = shl nsw i32 -1, %conv100
  %conv106 = zext i8 %36 to i32
  %39 = add nuw nsw i32 %conv106, %conv100
  %sub112 = sub nsw i32 32, %39
  %shr113 = lshr i32 -1, %sub112
  %and114 = and i32 %shr113, %shl101.neg
  br label %if.end116

if.end116:                                        ; preds = %if.then97, %if.end93.if.end116_crit_edge
  %m_mask.0 = phi i32 [ %and114, %if.then97 ], [ 0, %if.end93.if.end116_crit_edge ]
  %width118 = getelementptr i8, ptr %hw, i32 -47
  %40 = ptrtoint ptr %width118 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %width118, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool119.not = icmp eq i8 %41, 0
  br i1 %tobool119.not, label %if.end116.do.body140_crit_edge, label %if.then120

if.end116.do.body140_crit_edge:                   ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body140

if.then120:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #6
  %42 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %p, align 4
  %conv123 = zext i8 %43 to i32
  %shl124.neg = shl nsw i32 -1, %conv123
  %conv129 = zext i8 %41 to i32
  %44 = add nuw nsw i32 %conv129, %conv123
  %sub135 = sub nsw i32 32, %44
  %shr136 = lshr i32 -1, %sub135
  %and137 = and i32 %shr136, %shl124.neg
  br label %do.body140

do.body140:                                       ; preds = %if.then120, %if.end116.do.body140_crit_edge
  %p_mask.0 = phi i32 [ %and137, %if.then120 ], [ 0, %if.end116.do.body140_crit_edge ]
  %k = getelementptr i8, ptr %hw, i32 -75
  %n = getelementptr i8, ptr %hw, i32 -80
  %common = getelementptr i8, ptr %hw, i32 -20
  %lock = getelementptr i8, ptr %hw, i32 -4
  %45 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %lock, align 4
  %call144 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %46) #4
  %47 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %common, align 4
  %reg149 = getelementptr i8, ptr %hw, i32 -16
  %49 = ptrtoint ptr %reg149 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %reg149, align 4
  %conv150 = zext i16 %50 to i32
  %add.ptr = getelementptr i8, ptr %48, i32 %conv150
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  %52 = ptrtoint ptr %n to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %n, align 4
  %shift162 = getelementptr i8, ptr %hw, i32 -79
  %54 = ptrtoint ptr %shift162 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %shift162, align 1
  %56 = ptrtoint ptr %k to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %k, align 1
  %shift173 = getelementptr i8, ptr %hw, i32 -74
  %58 = ptrtoint ptr %shift173 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %shift173, align 1
  %offset180 = getelementptr i8, ptr %hw, i32 -60
  %60 = ptrtoint ptr %offset180 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %offset180, align 4
  %62 = ptrtoint ptr %m to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %m, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best_p.0.lcssa.i)
  %tobool.not.i.i283 = icmp eq i32 %best_p.0.lcssa.i, 0
  %64 = tail call i32 @llvm.ctlz.i32(i32 %best_p.0.lcssa.i, i1 true) #4, !range !18
  %sub.i.op.i = xor i32 %64, 31
  %sub.i284 = select i1 %tobool.not.i.i283, i32 -1, i32 %sub.i.op.i
  %65 = tail call i32 @llvm.bswap.i32(i32 %51)
  %or = or i32 %k_mask.0, %n_mask.0
  %or154 = or i32 %or, %m_mask.0
  %or155 = or i32 %or154, %p_mask.0
  %neg = xor i32 %or155, -1
  %and156 = and i32 %65, %neg
  %conv159 = zext i8 %53 to i32
  %sub160 = sub i32 %best_n.0.lcssa.i, %conv159
  %conv163 = zext i8 %55 to i32
  %shl164 = shl i32 %sub160, %conv163
  %and165 = and i32 %shl164, %n_mask.0
  %or166 = or i32 %and165, %and156
  %conv170 = zext i8 %57 to i32
  %sub171 = sub i32 %best_k.0.lcssa.i, %conv170
  %conv174 = zext i8 %59 to i32
  %shl175 = shl i32 %sub171, %conv174
  %and176 = and i32 %shl175, %k_mask.0
  %or177 = or i32 %or166, %and176
  %sub181 = sub i32 %best_m.0.lcssa.i, %61
  %conv184 = zext i8 %63 to i32
  %shl185 = shl i32 %sub181, %conv184
  %and186 = and i32 %shl185, %m_mask.0
  %or187 = or i32 %or177, %and186
  %66 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %p, align 4
  %conv207 = zext i8 %67 to i32
  %shl208 = shl i32 %sub.i284, %conv207
  %and209 = and i32 %shl208, %p_mask.0
  %or210 = or i32 %or187, %and209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  tail call void @arm_heavy_mb() #4
  %68 = tail call i32 @llvm.bswap.i32(i32 %or210)
  %69 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %common, align 4
  %71 = ptrtoint ptr %reg149 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %reg149, align 4
  %conv218 = zext i16 %72 to i32
  %add.ptr219 = getelementptr i8, ptr %70, i32 %conv218
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr219, i32 %68) #4, !srcloc !20
  %73 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %74, i32 noundef %call144) #4
  %lock223 = getelementptr i8, ptr %hw, i32 -84
  %75 = ptrtoint ptr %lock223 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %lock223, align 4
  tail call void @ccu_helper_wait_for_lock(ptr noundef %common, i32 noundef %76) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccu_gate_helper_enable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ccu_gate_helper_disable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccu_gate_helper_is_enabled(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

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
attributes #1 = { argmemonly nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @ccu_nkmp_ops, !1, !"ccu_nkmp_ops", i1 false, i1 false}
!1 = !{!"../drivers/clk/sunxi-ng/ccu_nkmp.c", i32 224, i32 22}
!2 = !{ptr @__ksymtab_ccu_nkmp_ops, !3, !"__ksymtab_ccu_nkmp_ops", i1 false, i1 false}
!3 = !{!"../drivers/clk/sunxi-ng/ccu_nkmp.c", i32 233, i32 1}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{i64 4031044}
!14 = !{i64 2151623659}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{i64 2148946010, i64 2148946290, i64 2148946624, i64 2148946958}
!17 = !{i64 2151629045}
!18 = !{i32 0, i32 33}
!19 = !{i64 2151629479}
!20 = !{i64 4030626}
