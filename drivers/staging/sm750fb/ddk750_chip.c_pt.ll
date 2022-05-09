; ModuleID = '/llk/IR_all_yes/drivers/staging/sm750fb/ddk750_chip.c_pt.bc'
source_filename = "../drivers/staging/sm750fb/ddk750_chip.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.initchip_param = type { i16, i16, i16, i16, i16, i8 }
%struct.pll_value = type { i32, i32, i32, i32, i32, i32 }

@chip = internal global { i32, [28 x i8] } zeroinitializer, align 32
@sm750_set_chip_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 27, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\016found sm750le\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sm750_set_chip_type\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/staging/sm750fb/ddk750_chip.c\00", [58 x i8] zeroinitializer }, align 32
@sm750_set_chip_type._entry_ptr = internal global ptr @sm750_set_chip_type._entry, section ".printk_index", align 4
@mmio750 = external dso_local local_unnamed_addr global ptr, align 4
@switch.table.ddk750_get_vm_size = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 16777216, i32 33554432, i32 67108864, i32 8388608], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 1816, i64 1872]
@__sancov_gen_cov_switch_values.3 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.4 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 6, i64 8]
@___asan_gen_.5 = private unnamed_addr constant [5 x i8] c"chip\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 11, i32 31 }
@___asan_gen_.8 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.18 = private constant [41 x i8] c"../drivers/staging/sm750fb/ddk750_chip.c\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 27, i32 4 }
@___asan_gen_.20 = private unnamed_addr constant [32 x i8] c"switch.table.ddk750_get_vm_size\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @sm750_set_chip_type._entry, ptr @sm750_set_chip_type._entry_ptr, ptr @chip, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @switch.table.ddk750_get_vm_size], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chip to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm750_set_chip_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ddk750_get_vm_size to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @sm750_get_chip_type() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @chip, align 4
  ret i32 %0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sm750_set_chip_type(i16 noundef zeroext %dev_id, i8 noundef zeroext %rev_id) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i16 %dev_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i16 %dev_id, label %if.else10 [
    i16 1816, label %if.then
    i16 1872, label %if.then5
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  store i32 1, ptr @chip, align 4
  br label %if.end12

if.then5:                                         ; preds = %entry
  store i32 2, ptr @chip, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %rev_id)
  %cmp7 = icmp eq i8 %rev_id, -2
  br i1 %cmp7, label %if.then9, label %if.then5.if.end12_crit_edge

if.then5.if.end12_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then9:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  store i32 3, ptr @chip, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  br label %if.end12

if.else10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  store i32 0, ptr @chip, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.else10, %if.then9, %if.then5.if.end12_crit_edge, %if.then
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ddk750_get_vm_size() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %0)
  %cmp = icmp eq i32 %0, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %1 = load ptr, ptr @mmio750, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 68
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !18
  %3 = or i32 %2, 1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !19
  tail call void @arm_heavy_mb() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %4 = load ptr, ptr @mmio750, align 4
  %add.ptr.i9 = getelementptr i8, ptr %4, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 %3) #7, !srcloc !20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %5 = load ptr, ptr @mmio750, align 4
  %add.ptr.i10 = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10) #7, !srcloc !17
  %7 = lshr i32 %6, 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !18
  %8 = and i32 %7, 3
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.ddk750_get_vm_size, i32 0, i32 %8
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 67108864, %entry.cleanup_crit_edge ], [ %switch.load, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ddk750_init_hw(ptr nocapture noundef %p_init_param) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p_init_param to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %p_init_param, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp.not = icmp eq i16 %1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %p_init_param to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %p_init_param, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %3 = ptrtoint ptr %p_init_param to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %p_init_param, align 2
  %conv4 = zext i16 %4 to i32
  tail call void @sm750_set_power_mode(i32 noundef %conv4) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %5 = load ptr, ptr @mmio750, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 64
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !18
  %7 = or i32 %6, 100663296
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void @sm750_set_current_gate(i32 noundef %8) #7
  %9 = load i32, ptr @chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp6.not = icmp eq i32 %9, 3
  br i1 %cmp6.not, label %if.end.if.end11_crit_edge, label %if.then8

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %10 = load ptr, ptr @mmio750, align 4
  %add.ptr.i59 = getelementptr i8, ptr %10, i32 136
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i59) #7, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !18
  %12 = or i32 %11, 100663296
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !19
  tail call void @arm_heavy_mb() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %13 = load ptr, ptr @mmio750, align 4
  %add.ptr.i60 = getelementptr i8, ptr %13, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60, i32 %12) #7, !srcloc !20
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end.if.end11_crit_edge
  %chip_clock = getelementptr inbounds %struct.initchip_param, ptr %p_init_param, i32 0, i32 1
  %14 = ptrtoint ptr %chip_clock to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %chip_clock, align 2
  %conv12 = zext i16 %15 to i32
  %mul = mul i32 %conv12, 1000000
  %16 = load i32, ptr @chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %16)
  %cmp.i = icmp eq i32 %16, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %tobool.not.i = icmp eq i32 %mul, 0
  %or.cond.i = or i1 %cmp.i, %tobool.not.i
  br i1 %or.cond.i, label %if.end11.set_chip_clock.exit_crit_edge, label %if.end.i.i

if.end11.set_chip_clock.exit_crit_edge:           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_chip_clock.exit

if.end.i.i:                                       ; preds = %if.end11
  %div.i.i = udiv i32 %mul, 1000
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.3.i.for.body.i.i_crit_edge, %if.end.i.i
  %pll.sroa.17.0.i = phi i32 [ -1, %if.end.i.i ], [ %pll.sroa.17.2.3.i, %for.inc.i.3.i.for.body.i.i_crit_edge ]
  %pll.sroa.14.0.i = phi i32 [ -1, %if.end.i.i ], [ %pll.sroa.14.2.3.i, %for.inc.i.3.i.for.body.i.i_crit_edge ]
  %pll.sroa.11.0.i = phi i32 [ -1, %if.end.i.i ], [ %pll.sroa.11.2.3.i, %for.inc.i.3.i.for.body.i.i_crit_edge ]
  %pll.sroa.8.0.i = phi i32 [ -1, %if.end.i.i ], [ %pll.sroa.8.2.3.i, %for.inc.i.3.i.for.body.i.i_crit_edge ]
  %N.0103.i.i = phi i32 [ 15, %if.end.i.i ], [ %dec44.i.i, %for.inc.i.3.i.for.body.i.i_crit_edge ]
  %mini_diff.0101.i.i = phi i32 [ -1, %if.end.i.i ], [ %mini_diff.3.i.3.i, %for.inc.i.3.i.for.body.i.i_crit_edge ]
  %mul.i.i = mul i32 %N.0103.i.i, %div.i.i
  %mul.i.i.frozen = freeze i32 %mul.i.i
  %div6.i.i = udiv i32 %mul.i.i.frozen, 14318
  %17 = mul i32 %div6.i.i, 14318
  %rem7.i.i.decomposed = sub i32 %mul.i.i.frozen, %17
  %mul8.i.i = mul nuw nsw i32 %rem7.i.i.decomposed, 10000
  %div9.i.i = udiv i32 %mul8.i.i, 14318
  %mul13.i.i = shl nuw nsw i32 %div6.i.i, 3
  %mul14.i.i = shl nuw nsw i32 %div9.i.i, 3
  %div15.i.i = udiv i32 %mul8.i.i, 17897500
  %add.i.i = add nuw nsw i32 %div15.i.i, %mul13.i.i
  %rem17.i.i = urem i32 %mul14.i.i, 10000
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000, i32 %rem17.i.i)
  %cmp18.i.i = icmp ugt i32 %rem17.i.i, 5000
  %cond.i.i = zext i1 %cmp18.i.i to i32
  %add19.i.i = add nuw nsw i32 %add.i.i, %cond.i.i
  %18 = add nsw i32 %add19.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %18)
  %19 = icmp ult i32 %18, 255
  br i1 %19, label %if.then22.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

if.then22.i.i:                                    ; preds = %for.body.i.i
  %mul24.i.i = mul nuw i32 %add19.i.i, 14318181
  %div25.i.i = udiv i32 %mul24.i.i, %N.0103.i.i
  %div2695.i.i = lshr i32 %div25.i.i, 3
  %sub.i.i = sub i32 %div2695.i.i, %mul
  %20 = tail call i32 @llvm.abs.i32(i32 %sub.i.i, i1 false) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %mini_diff.0101.i.i)
  %cmp30.i.i = icmp ult i32 %20, %mini_diff.0101.i.i
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.then22.i.i.for.inc.i.i_crit_edge

if.then22.i.i.for.inc.i.i_crit_edge:              ; preds = %if.then22.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

if.then31.i.i:                                    ; preds = %if.then22.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then31.i.i, %if.then22.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %pll.sroa.17.2.i = phi i32 [ 0, %if.then31.i.i ], [ %pll.sroa.17.0.i, %if.then22.i.i.for.inc.i.i_crit_edge ], [ %pll.sroa.17.0.i, %for.body.i.i.for.inc.i.i_crit_edge ]
  %pll.sroa.14.2.i = phi i32 [ 3, %if.then31.i.i ], [ %pll.sroa.14.0.i, %if.then22.i.i.for.inc.i.i_crit_edge ], [ %pll.sroa.14.0.i, %for.body.i.i.for.inc.i.i_crit_edge ]
  %pll.sroa.11.2.i = phi i32 [ %N.0103.i.i, %if.then31.i.i ], [ %pll.sroa.11.0.i, %if.then22.i.i.for.inc.i.i_crit_edge ], [ %pll.sroa.11.0.i, %for.body.i.i.for.inc.i.i_crit_edge ]
  %pll.sroa.8.2.i = phi i32 [ %add19.i.i, %if.then31.i.i ], [ %pll.sroa.8.0.i, %if.then22.i.i.for.inc.i.i_crit_edge ], [ %pll.sroa.8.0.i, %for.body.i.i.for.inc.i.i_crit_edge ]
  %mini_diff.3.i.i = phi i32 [ %20, %if.then31.i.i ], [ %mini_diff.0101.i.i, %if.then22.i.i.for.inc.i.i_crit_edge ], [ %mini_diff.0101.i.i, %for.body.i.i.for.inc.i.i_crit_edge ]
  %mul13.i.1.i = shl nuw nsw i32 %div6.i.i, 2
  %div15.i.1.i = udiv i32 %mul8.i.i, 35795000
  %add.i.1.i = add nuw nsw i32 %div15.i.1.i, %mul13.i.1.i
  %div9.i.tr.i = trunc i32 %div9.i.i to i16
  %rem17.i.1.lhs.trunc.i = shl nuw i16 %div9.i.tr.i, 2
  %rem17.i.16.i = urem i16 %rem17.i.1.lhs.trunc.i, 10000
  call void @__sanitizer_cov_trace_const_cmp2(i16 5000, i16 %rem17.i.16.i)
  %cmp18.i.1.i = icmp ugt i16 %rem17.i.16.i, 5000
  %cond.i.1.i = zext i1 %cmp18.i.1.i to i32
  %add19.i.1.i = add nuw nsw i32 %add.i.1.i, %cond.i.1.i
  %21 = add nsw i32 %add19.i.1.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %21)
  %22 = icmp ult i32 %21, 255
  br i1 %22, label %if.then22.i.1.i, label %for.inc.i.i.for.inc.i.1.i_crit_edge

for.inc.i.i.for.inc.i.1.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.1.i

if.then22.i.1.i:                                  ; preds = %for.inc.i.i
  %mul24.i.1.i = mul nuw i32 %add19.i.1.i, 14318181
  %div25.i.1.i = udiv i32 %mul24.i.1.i, %N.0103.i.i
  %div2695.i.1.i = lshr i32 %div25.i.1.i, 2
  %sub.i.1.i = sub i32 %div2695.i.1.i, %mul
  %23 = tail call i32 @llvm.abs.i32(i32 %sub.i.1.i, i1 false) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %mini_diff.3.i.i)
  %cmp30.i.1.i = icmp ult i32 %23, %mini_diff.3.i.i
  br i1 %cmp30.i.1.i, label %if.then31.i.1.i, label %if.then22.i.1.i.for.inc.i.1.i_crit_edge

if.then22.i.1.i.for.inc.i.1.i_crit_edge:          ; preds = %if.then22.i.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.1.i

if.then31.i.1.i:                                  ; preds = %if.then22.i.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.1.i

for.inc.i.1.i:                                    ; preds = %if.then31.i.1.i, %if.then22.i.1.i.for.inc.i.1.i_crit_edge, %for.inc.i.i.for.inc.i.1.i_crit_edge
  %pll.sroa.17.2.1.i = phi i32 [ 0, %if.then31.i.1.i ], [ %pll.sroa.17.2.i, %if.then22.i.1.i.for.inc.i.1.i_crit_edge ], [ %pll.sroa.17.2.i, %for.inc.i.i.for.inc.i.1.i_crit_edge ]
  %pll.sroa.14.2.1.i = phi i32 [ 2, %if.then31.i.1.i ], [ %pll.sroa.14.2.i, %if.then22.i.1.i.for.inc.i.1.i_crit_edge ], [ %pll.sroa.14.2.i, %for.inc.i.i.for.inc.i.1.i_crit_edge ]
  %pll.sroa.11.2.1.i = phi i32 [ %N.0103.i.i, %if.then31.i.1.i ], [ %pll.sroa.11.2.i, %if.then22.i.1.i.for.inc.i.1.i_crit_edge ], [ %pll.sroa.11.2.i, %for.inc.i.i.for.inc.i.1.i_crit_edge ]
  %pll.sroa.8.2.1.i = phi i32 [ %add19.i.1.i, %if.then31.i.1.i ], [ %pll.sroa.8.2.i, %if.then22.i.1.i.for.inc.i.1.i_crit_edge ], [ %pll.sroa.8.2.i, %for.inc.i.i.for.inc.i.1.i_crit_edge ]
  %mini_diff.3.i.1.i = phi i32 [ %23, %if.then31.i.1.i ], [ %mini_diff.3.i.i, %if.then22.i.1.i.for.inc.i.1.i_crit_edge ], [ %mini_diff.3.i.i, %for.inc.i.i.for.inc.i.1.i_crit_edge ]
  %mul13.i.2.i = shl nuw nsw i32 %div6.i.i, 1
  %div15.i.2.lhs.trunc.i = trunc i32 %rem7.i.i.decomposed to i16
  %div15.i.27.i = udiv i16 %div15.i.2.lhs.trunc.i, 7159
  %div15.i.2.zext.i = zext i16 %div15.i.27.i to i32
  %add.i.2.i = add nuw nsw i32 %mul13.i.2.i, %div15.i.2.zext.i
  %rem17.i.2.lhs.trunc.i = shl nuw nsw i16 %div9.i.tr.i, 1
  %rem17.i.28.i = urem i16 %rem17.i.2.lhs.trunc.i, 10000
  call void @__sanitizer_cov_trace_const_cmp2(i16 5000, i16 %rem17.i.28.i)
  %cmp18.i.2.i = icmp ugt i16 %rem17.i.28.i, 5000
  %cond.i.2.i = zext i1 %cmp18.i.2.i to i32
  %add19.i.2.i = add nuw nsw i32 %add.i.2.i, %cond.i.2.i
  %24 = add nsw i32 %add19.i.2.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %24)
  %25 = icmp ult i32 %24, 255
  br i1 %25, label %if.then22.i.2.i, label %for.inc.i.1.i.for.inc.i.2.i_crit_edge

for.inc.i.1.i.for.inc.i.2.i_crit_edge:            ; preds = %for.inc.i.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.2.i

if.then22.i.2.i:                                  ; preds = %for.inc.i.1.i
  %mul24.i.2.i = mul nuw i32 %add19.i.2.i, 14318181
  %div25.i.2.i = udiv i32 %mul24.i.2.i, %N.0103.i.i
  %div2695.i.2.i = lshr i32 %div25.i.2.i, 1
  %sub.i.2.i = sub i32 %div2695.i.2.i, %mul
  %26 = tail call i32 @llvm.abs.i32(i32 %sub.i.2.i, i1 false) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %mini_diff.3.i.1.i)
  %cmp30.i.2.i = icmp ult i32 %26, %mini_diff.3.i.1.i
  br i1 %cmp30.i.2.i, label %if.then31.i.2.i, label %if.then22.i.2.i.for.inc.i.2.i_crit_edge

if.then22.i.2.i.for.inc.i.2.i_crit_edge:          ; preds = %if.then22.i.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.2.i

if.then31.i.2.i:                                  ; preds = %if.then22.i.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.2.i

for.inc.i.2.i:                                    ; preds = %if.then31.i.2.i, %if.then22.i.2.i.for.inc.i.2.i_crit_edge, %for.inc.i.1.i.for.inc.i.2.i_crit_edge
  %pll.sroa.17.2.2.i = phi i32 [ 0, %if.then31.i.2.i ], [ %pll.sroa.17.2.1.i, %if.then22.i.2.i.for.inc.i.2.i_crit_edge ], [ %pll.sroa.17.2.1.i, %for.inc.i.1.i.for.inc.i.2.i_crit_edge ]
  %pll.sroa.14.2.2.i = phi i32 [ 1, %if.then31.i.2.i ], [ %pll.sroa.14.2.1.i, %if.then22.i.2.i.for.inc.i.2.i_crit_edge ], [ %pll.sroa.14.2.1.i, %for.inc.i.1.i.for.inc.i.2.i_crit_edge ]
  %pll.sroa.11.2.2.i = phi i32 [ %N.0103.i.i, %if.then31.i.2.i ], [ %pll.sroa.11.2.1.i, %if.then22.i.2.i.for.inc.i.2.i_crit_edge ], [ %pll.sroa.11.2.1.i, %for.inc.i.1.i.for.inc.i.2.i_crit_edge ]
  %pll.sroa.8.2.2.i = phi i32 [ %add19.i.2.i, %if.then31.i.2.i ], [ %pll.sroa.8.2.1.i, %if.then22.i.2.i.for.inc.i.2.i_crit_edge ], [ %pll.sroa.8.2.1.i, %for.inc.i.1.i.for.inc.i.2.i_crit_edge ]
  %mini_diff.3.i.2.i = phi i32 [ %26, %if.then31.i.2.i ], [ %mini_diff.3.i.1.i, %if.then22.i.2.i.for.inc.i.2.i_crit_edge ], [ %mini_diff.3.i.1.i, %for.inc.i.1.i.for.inc.i.2.i_crit_edge ]
  %rem17.i.39.i = urem i16 %div9.i.tr.i, 10000
  call void @__sanitizer_cov_trace_const_cmp2(i16 5000, i16 %rem17.i.39.i)
  %cmp18.i.3.i = icmp ugt i16 %rem17.i.39.i, 5000
  %cond.i.3.i = zext i1 %cmp18.i.3.i to i32
  %add19.i.3.i = add nuw nsw i32 %div6.i.i, %cond.i.3.i
  %27 = add nsw i32 %add19.i.3.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %27)
  %28 = icmp ult i32 %27, 255
  br i1 %28, label %if.then22.i.3.i, label %for.inc.i.2.i.for.inc.i.3.i_crit_edge

for.inc.i.2.i.for.inc.i.3.i_crit_edge:            ; preds = %for.inc.i.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.3.i

if.then22.i.3.i:                                  ; preds = %for.inc.i.2.i
  %mul24.i.3.i = mul nuw i32 %add19.i.3.i, 14318181
  %div25.i.3.i = udiv i32 %mul24.i.3.i, %N.0103.i.i
  %sub.i.3.i = sub i32 %div25.i.3.i, %mul
  %29 = tail call i32 @llvm.abs.i32(i32 %sub.i.3.i, i1 false) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %mini_diff.3.i.2.i)
  %cmp30.i.3.i = icmp ult i32 %29, %mini_diff.3.i.2.i
  br i1 %cmp30.i.3.i, label %if.then31.i.3.i, label %if.then22.i.3.i.for.inc.i.3.i_crit_edge

if.then22.i.3.i.for.inc.i.3.i_crit_edge:          ; preds = %if.then22.i.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.3.i

if.then31.i.3.i:                                  ; preds = %if.then22.i.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.3.i

for.inc.i.3.i:                                    ; preds = %if.then31.i.3.i, %if.then22.i.3.i.for.inc.i.3.i_crit_edge, %for.inc.i.2.i.for.inc.i.3.i_crit_edge
  %pll.sroa.17.2.3.i = phi i32 [ 0, %if.then31.i.3.i ], [ %pll.sroa.17.2.2.i, %if.then22.i.3.i.for.inc.i.3.i_crit_edge ], [ %pll.sroa.17.2.2.i, %for.inc.i.2.i.for.inc.i.3.i_crit_edge ]
  %pll.sroa.14.2.3.i = phi i32 [ 0, %if.then31.i.3.i ], [ %pll.sroa.14.2.2.i, %if.then22.i.3.i.for.inc.i.3.i_crit_edge ], [ %pll.sroa.14.2.2.i, %for.inc.i.2.i.for.inc.i.3.i_crit_edge ]
  %pll.sroa.11.2.3.i = phi i32 [ %N.0103.i.i, %if.then31.i.3.i ], [ %pll.sroa.11.2.2.i, %if.then22.i.3.i.for.inc.i.3.i_crit_edge ], [ %pll.sroa.11.2.2.i, %for.inc.i.2.i.for.inc.i.3.i_crit_edge ]
  %pll.sroa.8.2.3.i = phi i32 [ %add19.i.3.i, %if.then31.i.3.i ], [ %pll.sroa.8.2.2.i, %if.then22.i.3.i.for.inc.i.3.i_crit_edge ], [ %pll.sroa.8.2.2.i, %for.inc.i.2.i.for.inc.i.3.i_crit_edge ]
  %mini_diff.3.i.3.i = phi i32 [ %29, %if.then31.i.3.i ], [ %mini_diff.3.i.2.i, %if.then22.i.3.i.for.inc.i.3.i_crit_edge ], [ %mini_diff.3.i.2.i, %for.inc.i.2.i.for.inc.i.3.i_crit_edge ]
  %dec44.i.i = add nsw i32 %N.0103.i.i, -1
  %cmp5.i.i = icmp ugt i32 %dec44.i.i, 1
  br i1 %cmp5.i.i, label %for.inc.i.3.i.for.body.i.i_crit_edge, label %sm750_calc_pll_value.exit.i

for.inc.i.3.i.for.body.i.i_crit_edge:             ; preds = %for.inc.i.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

sm750_calc_pll_value.exit.i:                      ; preds = %for.inc.i.3.i
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i.i = shl i32 %pll.sroa.17.2.3.i, 14
  %and.i.i = and i32 %shl.i.i, 49152
  %shl5.i.i = shl i32 %pll.sroa.14.2.3.i, 12
  %and6.i.i = and i32 %shl5.i.i, 12288
  %shl8.i.i = shl i32 %pll.sroa.11.2.3.i, 8
  %and9.i.i = and i32 %shl8.i.i, 3840
  %and12.i.i = and i32 %pll.sroa.8.2.3.i, 255
  %or.i.i = or i32 %and.i.i, %and6.i.i
  %or7.i.i = or i32 %or.i.i, %and12.i.i
  %or10.i.i = or i32 %or7.i.i, %and9.i.i
  %or13.i.i = or i32 %or10.i.i, 131072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !19
  tail call void @arm_heavy_mb() #7
  %30 = tail call i32 @llvm.bswap.i32(i32 %or13.i.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %31 = load ptr, ptr @mmio750, align 4
  %add.ptr.i.i = getelementptr i8, ptr %31, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %30) #7, !srcloc !20
  br label %set_chip_clock.exit

set_chip_clock.exit:                              ; preds = %sm750_calc_pll_value.exit.i, %if.end11.set_chip_clock.exit_crit_edge
  %mem_clock = getelementptr inbounds %struct.initchip_param, ptr %p_init_param, i32 0, i32 2
  %32 = ptrtoint ptr %mem_clock to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %mem_clock, align 2
  %conv13 = zext i16 %33 to i32
  %mul14 = mul i32 %conv13, 1000000
  %34 = load i32, ptr @chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %34)
  %cmp.i61 = icmp eq i32 %34, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul14)
  %tobool.not.i62 = icmp eq i32 %mul14, 0
  %or.cond.i63 = or i1 %cmp.i61, %tobool.not.i62
  br i1 %or.cond.i63, label %set_chip_clock.exit.set_memory_clock.exit_crit_edge, label %get_mxclk_freq.exit.i

set_chip_clock.exit.set_memory_clock.exit_crit_edge: ; preds = %set_chip_clock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_memory_clock.exit

get_mxclk_freq.exit.i:                            ; preds = %set_chip_clock.exit
  %35 = tail call i32 @llvm.umin.i32(i32 %mul14, i32 336000000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %36 = load ptr, ptr @mmio750, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %36, i32 112
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !17
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !18
  %and.i.i64 = and i32 %38, 255
  %and2.i.i = lshr i32 %38, 8
  %shr3.i.i = and i32 %and2.i.i, 15
  %and4.i.i = lshr i32 %38, 12
  %shr5.i.i = and i32 %and4.i.i, 3
  %and6.i.i65 = lshr i32 %38, 14
  %shr7.i.i = and i32 %and6.i.i65, 3
  %mul.i.i66 = mul nuw i32 %and.i.i64, 14318181
  %div.i.i67 = udiv i32 %mul.i.i66, %shr3.i.i
  %div818.i.i = lshr i32 %div.i.i67, %shr5.i.i
  %div1019.i.i = lshr i32 %div818.i.i, %shr7.i.i
  %div23.i = lshr exact i32 %35, 1
  %add.i = add nuw i32 %div1019.i.i, %div23.i
  %div6.i = udiv i32 %add.i, %35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %39 = load ptr, ptr @mmio750, align 4
  %add.ptr.i.i68 = getelementptr i8, ptr %39, i32 64
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i68) #7, !srcloc !17
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !18
  %and.i = and i32 %41, -12289
  %42 = zext i32 %div6.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %div6.i, label %get_mxclk_freq.exit.i.sw.epilog.i_crit_edge [
    i32 4, label %sw.bb12.i
    i32 2, label %sw.bb8.i
    i32 3, label %sw.bb10.i
  ]

get_mxclk_freq.exit.i.sw.epilog.i_crit_edge:      ; preds = %get_mxclk_freq.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb8.i:                                         ; preds = %get_mxclk_freq.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %or9.i = or i32 %and.i, 4096
  br label %sw.epilog.i

sw.bb10.i:                                        ; preds = %get_mxclk_freq.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %or11.i = or i32 %and.i, 8192
  br label %sw.epilog.i

sw.bb12.i:                                        ; preds = %get_mxclk_freq.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %or13.i = or i32 %41, 12288
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb12.i, %sw.bb10.i, %sw.bb8.i, %get_mxclk_freq.exit.i.sw.epilog.i_crit_edge
  %reg.0.i = phi i32 [ %or11.i, %sw.bb10.i ], [ %or9.i, %sw.bb8.i ], [ %or13.i, %sw.bb12.i ], [ %and.i, %get_mxclk_freq.exit.i.sw.epilog.i_crit_edge ]
  tail call void @sm750_set_current_gate(i32 noundef %reg.0.i) #7
  br label %set_memory_clock.exit

set_memory_clock.exit:                            ; preds = %sw.epilog.i, %set_chip_clock.exit.set_memory_clock.exit_crit_edge
  %master_clock = getelementptr inbounds %struct.initchip_param, ptr %p_init_param, i32 0, i32 3
  %43 = ptrtoint ptr %master_clock to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %master_clock, align 2
  %conv15 = zext i16 %44 to i32
  %mul16 = mul i32 %conv15, 1000000
  %45 = load i32, ptr @chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %45)
  %cmp.i69 = icmp eq i32 %45, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul16)
  %tobool.not.i70 = icmp eq i32 %mul16, 0
  %or.cond.i71 = or i1 %cmp.i69, %tobool.not.i70
  br i1 %or.cond.i71, label %set_memory_clock.exit.set_master_clock.exit_crit_edge, label %get_mxclk_freq.exit.i89

set_memory_clock.exit.set_master_clock.exit_crit_edge: ; preds = %set_memory_clock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_master_clock.exit

get_mxclk_freq.exit.i89:                          ; preds = %set_memory_clock.exit
  %46 = tail call i32 @llvm.umin.i32(i32 %mul16, i32 190000000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %47 = load ptr, ptr @mmio750, align 4
  %add.ptr.i.i.i72 = getelementptr i8, ptr %47, i32 112
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i72) #7, !srcloc !17
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !18
  %and.i.i73 = and i32 %49, 255
  %and2.i.i74 = lshr i32 %49, 8
  %shr3.i.i75 = and i32 %and2.i.i74, 15
  %and4.i.i76 = lshr i32 %49, 12
  %shr5.i.i77 = and i32 %and4.i.i76, 3
  %and6.i.i78 = lshr i32 %49, 14
  %shr7.i.i79 = and i32 %and6.i.i78, 3
  %mul.i.i80 = mul nuw i32 %and.i.i73, 14318181
  %div.i.i81 = udiv i32 %mul.i.i80, %shr3.i.i75
  %div818.i.i82 = lshr i32 %div.i.i81, %shr5.i.i77
  %div1019.i.i83 = lshr i32 %div818.i.i82, %shr7.i.i79
  %div23.i84 = lshr exact i32 %46, 1
  %add.i85 = add nuw i32 %div1019.i.i83, %div23.i84
  %div6.i86 = udiv i32 %add.i85, %46
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %50 = load ptr, ptr @mmio750, align 4
  %add.ptr.i.i87 = getelementptr i8, ptr %50, i32 64
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i87) #7, !srcloc !17
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !18
  %and.i88 = and i32 %52, -49153
  %53 = zext i32 %div6.i86 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %div6.i86, label %get_mxclk_freq.exit.i89.sw.epilog.i97_crit_edge [
    i32 8, label %sw.bb12.i95
    i32 4, label %sw.bb8.i91
    i32 6, label %sw.bb10.i93
  ]

get_mxclk_freq.exit.i89.sw.epilog.i97_crit_edge:  ; preds = %get_mxclk_freq.exit.i89
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i97

sw.bb8.i91:                                       ; preds = %get_mxclk_freq.exit.i89
  call void @__sanitizer_cov_trace_pc() #9
  %or9.i90 = or i32 %and.i88, 16384
  br label %sw.epilog.i97

sw.bb10.i93:                                      ; preds = %get_mxclk_freq.exit.i89
  call void @__sanitizer_cov_trace_pc() #9
  %or11.i92 = or i32 %and.i88, 32768
  br label %sw.epilog.i97

sw.bb12.i95:                                      ; preds = %get_mxclk_freq.exit.i89
  call void @__sanitizer_cov_trace_pc() #9
  %or13.i94 = or i32 %52, 49152
  br label %sw.epilog.i97

sw.epilog.i97:                                    ; preds = %sw.bb12.i95, %sw.bb10.i93, %sw.bb8.i91, %get_mxclk_freq.exit.i89.sw.epilog.i97_crit_edge
  %reg.0.i96 = phi i32 [ %or11.i92, %sw.bb10.i93 ], [ %or9.i90, %sw.bb8.i91 ], [ %or13.i94, %sw.bb12.i95 ], [ %and.i88, %get_mxclk_freq.exit.i89.sw.epilog.i97_crit_edge ]
  tail call void @sm750_set_current_gate(i32 noundef %reg.0.i96) #7
  br label %set_master_clock.exit

set_master_clock.exit:                            ; preds = %sw.epilog.i97, %set_memory_clock.exit.set_master_clock.exit_crit_edge
  %reset_memory = getelementptr inbounds %struct.initchip_param, ptr %p_init_param, i32 0, i32 5
  %54 = ptrtoint ptr %reset_memory to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %reset_memory, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %55)
  %cmp18 = icmp eq i8 %55, 1
  br i1 %cmp18, label %if.then20, label %set_master_clock.exit.if.end23_crit_edge

set_master_clock.exit.if.end23_crit_edge:         ; preds = %set_master_clock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then20:                                        ; preds = %set_master_clock.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %56 = load ptr, ptr @mmio750, align 4
  %add.ptr.i98 = getelementptr i8, ptr %56, i32 4
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i98) #7, !srcloc !17
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !18
  %and = and i32 %58, -65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !19
  tail call void @arm_heavy_mb() #7
  %59 = tail call i32 @llvm.bswap.i32(i32 %and) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %60 = load ptr, ptr @mmio750, align 4
  %add.ptr.i99 = getelementptr i8, ptr %60, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i99, i32 %59) #7, !srcloc !20
  %or22 = or i32 %58, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !19
  tail call void @arm_heavy_mb() #7
  %61 = tail call i32 @llvm.bswap.i32(i32 %or22) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %62 = load ptr, ptr @mmio750, align 4
  %add.ptr.i100 = getelementptr i8, ptr %62, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i100, i32 %61) #7, !srcloc !20
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %set_master_clock.exit.if.end23_crit_edge
  %set_all_eng_off = getelementptr inbounds %struct.initchip_param, ptr %p_init_param, i32 0, i32 4
  %63 = ptrtoint ptr %set_all_eng_off to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %set_all_eng_off, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %64)
  %cmp25 = icmp eq i16 %64, 1
  br i1 %cmp25, label %if.then27, label %if.end23.if.end36_crit_edge

if.end23.if.end36_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @sm750_enable_2d_engine(i32 noundef 0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %65 = load ptr, ptr @mmio750, align 4
  %add.ptr.i101 = getelementptr i8, ptr %65, i32 524352
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i101) #7, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !18
  %67 = and i32 %66, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !19
  tail call void @arm_heavy_mb() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %68 = load ptr, ptr @mmio750, align 4
  %add.ptr.i102 = getelementptr i8, ptr %68, i32 524352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i102, i32 %67) #7, !srcloc !20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %69 = load ptr, ptr @mmio750, align 4
  %add.ptr.i103 = getelementptr i8, ptr %69, i32 524416
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i103) #7, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !18
  %71 = and i32 %70, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !19
  tail call void @arm_heavy_mb() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %72 = load ptr, ptr @mmio750, align 4
  %add.ptr.i104 = getelementptr i8, ptr %72, i32 524416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i104, i32 %71) #7, !srcloc !20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %73 = load ptr, ptr @mmio750, align 4
  %add.ptr.i105 = getelementptr i8, ptr %73, i32 524544
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i105) #7, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !18
  %75 = and i32 %74, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !19
  tail call void @arm_heavy_mb() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %76 = load ptr, ptr @mmio750, align 4
  %add.ptr.i106 = getelementptr i8, ptr %76, i32 524544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i106, i32 %75) #7, !srcloc !20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %77 = load ptr, ptr @mmio750, align 4
  %add.ptr.i107 = getelementptr i8, ptr %77, i32 852000
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i107) #7, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !18
  %79 = or i32 %78, 536870912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !19
  tail call void @arm_heavy_mb() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %80 = load ptr, ptr @mmio750, align 4
  %add.ptr.i108 = getelementptr i8, ptr %80, i32 852000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i108, i32 %79) #7, !srcloc !20
  tail call void @sm750_enable_dma(i32 noundef 0) #7
  br label %if.end36

if.end36:                                         ; preds = %if.then27, %if.end23.if.end36_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sm750_set_power_mode(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sm750_set_current_gate(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sm750_enable_2d_engine(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sm750_enable_dma(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sm750_calc_pll_value(i32 noundef %request_orig, ptr nocapture noundef %pll) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %0)
  %cmp = icmp eq i32 %0, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %div = udiv i32 %request_orig, 1000
  %input_freq = getelementptr inbounds %struct.pll_value, ptr %pll, i32 0, i32 1
  %1 = ptrtoint ptr %input_freq to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %input_freq, align 4
  %div1 = udiv i32 %2, 1000
  %3 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pll, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp2 = icmp eq i32 %4, 0
  %spec.select = select i1 %cmp2, i32 3, i32 6
  %M32 = getelementptr inbounds %struct.pll_value, ptr %pll, i32 0, i32 2
  %N33 = getelementptr inbounds %struct.pll_value, ptr %pll, i32 0, i32 3
  %POD = getelementptr inbounds %struct.pll_value, ptr %pll, i32 0, i32 5
  %OD = getelementptr inbounds %struct.pll_value, ptr %pll, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc43.for.body_crit_edge, %if.end
  %N.0103 = phi i32 [ 15, %if.end ], [ %dec44, %for.inc43.for.body_crit_edge ]
  %ret.0102 = phi i32 [ 0, %if.end ], [ %ret.3, %for.inc43.for.body_crit_edge ]
  %mini_diff.0101 = phi i32 [ -1, %if.end ], [ %mini_diff.3, %for.inc43.for.body_crit_edge ]
  %mul = mul i32 %N.0103, %div
  %mul.frozen = freeze i32 %mul
  %div1.frozen = freeze i32 %div1
  %div6 = udiv i32 %mul.frozen, %div1.frozen
  %5 = mul i32 %div6, %div1.frozen
  %rem7.decomposed = sub i32 %mul.frozen, %5
  %mul8 = mul i32 %rem7.decomposed, 10000
  %div9 = udiv i32 %mul8, %div1
  br label %for.body12

for.body12:                                       ; preds = %for.inc.for.body12_crit_edge, %for.body
  %ret.1100 = phi i32 [ %ret.0102, %for.body ], [ %ret.3, %for.inc.for.body12_crit_edge ]
  %mini_diff.199 = phi i32 [ %mini_diff.0101, %for.body ], [ %mini_diff.3, %for.inc.for.body12_crit_edge ]
  %d.097 = phi i32 [ %spec.select, %for.body ], [ %dec, %for.inc.for.body12_crit_edge ]
  %mul13 = shl i32 %div6, %d.097
  %mul14 = shl i32 %div9, %d.097
  %mul14.frozen = freeze i32 %mul14
  %div15 = udiv i32 %mul14.frozen, 10000
  %add = add i32 %div15, %mul13
  %6 = mul i32 %div15, 10000
  %rem17.decomposed = sub i32 %mul14.frozen, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000, i32 %rem17.decomposed)
  %cmp18 = icmp ugt i32 %rem17.decomposed, 5000
  %cond = zext i1 %cmp18 to i32
  %add19 = add i32 %add, %cond
  %7 = add i32 %add19, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %7)
  %8 = icmp ult i32 %7, 255
  br i1 %8, label %if.then22, label %for.body12.for.inc_crit_edge

for.body12.for.inc_crit_edge:                     ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then22:                                        ; preds = %for.body12
  %mul24 = mul i32 %add19, %2
  %div25 = udiv i32 %mul24, %N.0103
  %div2695 = lshr i32 %div25, %d.097
  %sub = sub i32 %div2695, %request_orig
  %9 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %mini_diff.199)
  %cmp30 = icmp ult i32 %9, %mini_diff.199
  br i1 %cmp30, label %if.then31, label %if.then22.for.inc_crit_edge

if.then22.for.inc_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then31:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %M32 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add19, ptr %M32, align 4
  %11 = ptrtoint ptr %N33 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %N.0103, ptr %N33, align 4
  %12 = tail call i32 @llvm.usub.sat.i32(i32 %d.097, i32 3)
  %13 = ptrtoint ptr %POD to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %POD, align 4
  %sub40 = sub nsw i32 %d.097, %12
  %14 = ptrtoint ptr %OD to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sub40, ptr %OD, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then31, %if.then22.for.inc_crit_edge, %for.body12.for.inc_crit_edge
  %mini_diff.3 = phi i32 [ %mini_diff.199, %for.body12.for.inc_crit_edge ], [ %9, %if.then31 ], [ %mini_diff.199, %if.then22.for.inc_crit_edge ]
  %ret.3 = phi i32 [ %ret.1100, %for.body12.for.inc_crit_edge ], [ %div2695, %if.then31 ], [ %ret.1100, %if.then22.for.inc_crit_edge ]
  %dec = add nsw i32 %d.097, -1
  %cmp11 = icmp sgt i32 %d.097, 0
  br i1 %cmp11, label %for.inc.for.body12_crit_edge, label %for.inc43

for.inc.for.body12_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body12

for.inc43:                                        ; preds = %for.inc
  %dec44 = add nsw i32 %N.0103, -1
  %cmp5 = icmp ugt i32 %dec44, 1
  br i1 %cmp5, label %for.inc43.for.body_crit_edge, label %for.inc43.cleanup_crit_edge

for.inc43.cleanup_crit_edge:                      ; preds = %for.inc43
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc43.for.body_crit_edge:                     ; preds = %for.inc43
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %for.inc43.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %request_orig, %entry.cleanup_crit_edge ], [ %ret.3, %for.inc43.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @sm750_format_pll_reg(ptr nocapture noundef readonly %p_PLL) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %POD1 = getelementptr inbounds %struct.pll_value, ptr %p_PLL, i32 0, i32 5
  %0 = ptrtoint ptr %POD1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %POD1, align 4
  %OD2 = getelementptr inbounds %struct.pll_value, ptr %p_PLL, i32 0, i32 4
  %2 = ptrtoint ptr %OD2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %OD2, align 4
  %M3 = getelementptr inbounds %struct.pll_value, ptr %p_PLL, i32 0, i32 2
  %4 = ptrtoint ptr %M3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %M3, align 4
  %N4 = getelementptr inbounds %struct.pll_value, ptr %p_PLL, i32 0, i32 3
  %6 = ptrtoint ptr %N4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %N4, align 4
  %shl = shl i32 %1, 14
  %and = and i32 %shl, 49152
  %shl5 = shl i32 %3, 12
  %and6 = and i32 %shl5, 12288
  %shl8 = shl i32 %7, 8
  %and9 = and i32 %shl8, 3840
  %and12 = and i32 %5, 255
  %or = or i32 %and, %and6
  %or7 = or i32 %or, %and12
  %or10 = or i32 %or7, %and9
  %or13 = or i32 %or10, 131072
  ret i32 %or13
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/sm750fb/ddk750_chip.c", i32 27, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @sm750_set_chip_type._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @sm750_set_chip_type._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @chip, !7, !"chip", i1 false, i1 false}
!7 = !{!"../drivers/staging/sm750fb/ddk750_chip.c", i32 11, i32 31}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{i64 1337772}
!18 = !{i64 2150710749}
!19 = !{i64 2150711130}
!20 = !{i64 1337354}
