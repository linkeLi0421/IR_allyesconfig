; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/igc/igc_diag.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/igc/igc_diag.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.igc_reg_test = type { i16, i8, i8, i32, i32 }
%struct.igc_adapter = type { ptr, %struct.ethtool_eee, i16, i32, i32, i32, ptr, i16, i32, i32, [4 x ptr], i32, [4 x ptr], %struct.timer_list, %struct.timer_list, %struct.timer_list, i32, i32, i16, i16, i8, ptr, i32, i32, %struct.work_struct, %struct.work_struct, %struct.work_struct, i8, i8, i32, i32, i32, i64, i64, ptr, %struct.spinlock, %struct.rtnl_link_stats64, %struct.igc_hw, %struct.igc_hw_stats, [8 x ptr], i32, i32, i16, i16, i32, i32, i32, i32, i32, %struct.mutex, %struct.list_head, i32, [128 x i8], i32, %struct.igc_info, i32, ptr, %struct.ptp_clock_info, %struct.work_struct, ptr, %struct.hwtstamp_config, i32, i32, %struct.spinlock, %struct.cyclecounter, %struct.timecounter, %struct.timespec64, i64, %struct.system_time_snapshot, [32 x i8], ptr, i8, [4 x %struct.ptp_pin_desc], [2 x %struct.anon.131] }
%struct.ethtool_eee = type { i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.igc_hw = type { ptr, ptr, i32, %struct.igc_mac_info, %struct.igc_fc_info, %struct.igc_nvm_info, %struct.igc_phy_info, %struct.igc_bus_info, %union.anon.127, i16, i16, i16, i16, i8 }
%struct.igc_mac_info = type { %struct.igc_mac_operations, [6 x i8], [6 x i8], i32, i32, i16, i16, [128 x i32], i16, i8, i8, i8, i8, i8, i8 }
%struct.igc_mac_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.igc_fc_info = type { i32, i32, i16, i8, i8, i32, i32 }
%struct.igc_nvm_info = type { %struct.igc_nvm_operations, i32, i16, i16, i16, i16, i16 }
%struct.igc_nvm_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.igc_phy_info = type { %struct.igc_phy_operations, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8 }
%struct.igc_phy_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.igc_bus_info = type { i16, i16 }
%union.anon.127 = type { %struct.igc_dev_spec_base }
%struct.igc_dev_spec_base = type { i8, i8 }
%struct.igc_hw_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.igc_info = type { ptr, ptr, ptr, ptr }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.timespec64 = type { i64, i32 }
%struct.system_time_snapshot = type { i64, i64, i64, i32, i32, i8 }
%struct.ptp_pin_desc = type { [64 x i8], i32, i32, i32, [5 x i32] }
%struct.anon.131 = type { %struct.timespec64, %struct.timespec64 }

@reg_test = internal constant { [22 x %struct.igc_reg_test], [88 x i8] } { [22 x %struct.igc_reg_test] [%struct.igc_reg_test { i16 40, i8 1, i8 1, i32 -1, i32 -1 }, %struct.igc_reg_test { i16 44, i8 1, i8 1, i32 65535, i32 -1 }, %struct.igc_reg_test { i16 48, i8 1, i8 1, i32 65535, i32 -1 }, %struct.igc_reg_test { i16 -16380, i8 4, i8 1, i32 -1, i32 -1 }, %struct.igc_reg_test { i16 -16384, i8 4, i8 1, i32 -128, i32 -128 }, %struct.igc_reg_test { i16 -16376, i8 4, i8 1, i32 1048448, i32 1048575 }, %struct.igc_reg_test { i16 -16360, i8 4, i8 1, i32 65535, i32 65535 }, %struct.igc_reg_test { i16 8552, i8 1, i8 1, i32 262128, i32 262128 }, %struct.igc_reg_test { i16 368, i8 1, i8 1, i32 65535, i32 65535 }, %struct.igc_reg_test { i16 1040, i8 1, i8 1, i32 1073741823, i32 1073741823 }, %struct.igc_reg_test { i16 -8188, i8 4, i8 1, i32 -1, i32 -1 }, %struct.igc_reg_test { i16 -8192, i8 4, i8 1, i32 -128, i32 -128 }, %struct.igc_reg_test { i16 -8184, i8 4, i8 1, i32 1048448, i32 1048575 }, %struct.igc_reg_test { i16 -8168, i8 4, i8 1, i32 65535, i32 65535 }, %struct.igc_reg_test { i16 256, i8 1, i8 2, i32 -1, i32 0 }, %struct.igc_reg_test { i16 256, i8 1, i8 2, i32 80720638, i32 4194299 }, %struct.igc_reg_test { i16 256, i8 1, i8 2, i32 80720638, i32 -1 }, %struct.igc_reg_test { i16 1024, i8 1, i8 2, i32 -1, i32 0 }, %struct.igc_reg_test { i16 21504, i8 16, i8 4, i32 -1, i32 -1 }, %struct.igc_reg_test { i16 21504, i8 16, i8 5, i32 -1877999617, i32 -1 }, %struct.igc_reg_test { i16 20992, i8 -128, i8 3, i32 -1, i32 -1 }, %struct.igc_reg_test zeroinitializer], [88 x i8] zeroinitializer }, align 32
@.str = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"failed STATUS register test got: 0x%08X expected: 0x%08X\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"pattern test reg %04X failed: got 0x%08X expected 0x%08X\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"set/check reg %04X test failed: got 0x%08X expected 0x%08X\00", [37 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.3 = private unnamed_addr constant [9 x i8] c"reg_test\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 7, i32 28 }
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 101, i32 7 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 50, i32 8 }
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private constant [45 x i8] c"../drivers/net/ethernet/intel/igc/igc_diag.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 72, i32 7 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @reg_test, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_test to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @igc_reg_test(ptr noundef %adapter, ptr nocapture noundef writeonly %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 37
  %call = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 8) #4
  %and = and i32 %call, 6815955
  %hw_addr3 = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 37, i32 1
  %0 = ptrtoint ptr %hw_addr3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw_addr3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  tail call void @arm_heavy_mb() #4
  %arrayidx = getelementptr i8, ptr %1, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 -754948096) #4, !srcloc !20
  %call9 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 8) #4
  %and10 = and i32 %call9, 6815955
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %and10)
  %cmp.not = icmp eq i32 %and, %and10
  br i1 %cmp.not, label %do.body11, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str, i32 noundef %and10, i32 noundef %and) #7
  br label %cleanup.sink.split

do.body11:                                        ; preds = %entry
  %4 = ptrtoint ptr %hw_addr3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %hw_addr3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !21
  tail call void @arm_heavy_mb() #4
  %6 = tail call i32 @llvm.bswap.i32(i32 %call)
  %arrayidx21 = getelementptr i8, ptr %5, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx21, i32 %6) #4, !srcloc !20
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %for.end.for.cond.preheader_crit_edge, %do.body11
  %test.0129 = phi ptr [ @reg_test, %do.body11 ], [ %incdec.ptr, %for.end.for.cond.preheader_crit_edge ]
  %b.0128 = phi i32 [ 0, %do.body11 ], [ %b.1.lcssa, %for.end.for.cond.preheader_crit_edge ]
  %array_len = getelementptr inbounds %struct.igc_reg_test, ptr %test.0129, i32 0, i32 1
  %7 = ptrtoint ptr %array_len to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %array_len, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp24124.not = icmp eq i8 %8, 0
  br i1 %cmp24124.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %test_type = getelementptr inbounds %struct.igc_reg_test, ptr %test.0129, i32 0, i32 2
  %mask64 = getelementptr inbounds %struct.igc_reg_test, ptr %test.0129, i32 0, i32 3
  %write65 = getelementptr inbounds %struct.igc_reg_test, ptr %test.0129, i32 0, i32 4
  br label %for.body

for.cond:                                         ; preds = %sw.epilog
  %inc = add nuw nsw i32 %i.0125, 1
  %9 = ptrtoint ptr %array_len to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %array_len, align 2
  %conv = zext i8 %10 to i32
  %cmp24 = icmp ult i32 %inc, %conv
  br i1 %cmp24, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %b.1127 = phi i32 [ %b.0128, %for.body.lr.ph ], [ 1, %for.cond.for.body_crit_edge ]
  %i.0125 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %11 = ptrtoint ptr %test_type to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %test_type, align 1
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i8 %12, label %for.body.sw.epilog_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.bb31
    i8 4, label %sw.bb40
    i8 5, label %sw.bb49
    i8 3, label %sw.bb59
  ]

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %test.0129 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %test.0129, align 4
  %conv28 = zext i16 %15 to i32
  %mul = shl i32 %i.0125, 6
  %add = add i32 %mul, %conv28
  %16 = ptrtoint ptr %mask64 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mask64, align 4
  %18 = ptrtoint ptr %write65 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %write65, align 4
  %call29 = tail call fastcc zeroext i1 @reg_pattern_test(ptr noundef %adapter, ptr noundef %data, i32 noundef %add, i32 noundef %17, i32 noundef %19)
  %conv30 = zext i1 %call29 to i32
  br label %sw.epilog

sw.bb31:                                          ; preds = %for.body
  %20 = ptrtoint ptr %test.0129 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %test.0129, align 4
  %conv33 = zext i16 %21 to i32
  %mul34 = shl i32 %i.0125, 6
  %add35 = add i32 %mul34, %conv33
  %22 = ptrtoint ptr %mask64 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mask64, align 4
  %24 = ptrtoint ptr %write65 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %write65, align 4
  %call.i = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef %add35) #4
  %26 = ptrtoint ptr %hw_addr3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %hw_addr3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  tail call void @arm_heavy_mb() #4
  %and.i = and i32 %25, %23
  %28 = tail call i32 @llvm.bswap.i32(i32 %and.i) #4
  %arrayidx.i = getelementptr i8, ptr %27, i32 %add35
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 %28) #4, !srcloc !20
  %call9.i = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef %add35) #4
  %and11.i = and i32 %call9.i, %23
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %and11.i)
  %cmp.not.i = icmp eq i32 %and.i, %and11.i
  br i1 %cmp.not.i, label %do.body27.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #6
  %29 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %adapter, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %30, ptr noundef nonnull @.str.2, i32 noundef %add35, i32 noundef %and11.i, i32 noundef %and.i) #7
  %31 = zext i32 %add35 to i64
  %32 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %data, align 8
  %33 = ptrtoint ptr %hw_addr3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %hw_addr3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  tail call void @arm_heavy_mb() #4
  %35 = tail call i32 @llvm.bswap.i32(i32 %call.i) #4
  %arrayidx24.i = getelementptr i8, ptr %34, i32 %add35
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx24.i, i32 %35) #4, !srcloc !20
  br label %reg_set_and_check.exit

do.body27.i:                                      ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #6
  %36 = ptrtoint ptr %hw_addr3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %hw_addr3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %38 = tail call i32 @llvm.bswap.i32(i32 %call.i) #4
  %arrayidx37.i = getelementptr i8, ptr %37, i32 %add35
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx37.i, i32 %38) #4, !srcloc !20
  br label %reg_set_and_check.exit

reg_set_and_check.exit:                           ; preds = %do.body27.i, %if.then.i
  %conv39 = zext i1 %cmp.not.i to i32
  br label %sw.epilog

sw.bb40:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %39 = ptrtoint ptr %test.0129 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %test.0129, align 4
  %conv42 = zext i16 %40 to i32
  %mul43 = shl i32 %i.0125, 3
  %add44 = add i32 %mul43, %conv42
  %41 = ptrtoint ptr %mask64 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %mask64, align 4
  %43 = ptrtoint ptr %write65 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %write65, align 4
  %call47 = tail call fastcc zeroext i1 @reg_pattern_test(ptr noundef %adapter, ptr noundef %data, i32 noundef %add44, i32 noundef %42, i32 noundef %44)
  %conv48 = zext i1 %call47 to i32
  br label %sw.epilog

sw.bb49:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %45 = ptrtoint ptr %test.0129 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %test.0129, align 4
  %conv51 = zext i16 %46 to i32
  %mul53 = shl i32 %i.0125, 3
  %add52 = or i32 %mul53, 4
  %add54 = add i32 %add52, %conv51
  %47 = ptrtoint ptr %mask64 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %mask64, align 4
  %49 = ptrtoint ptr %write65 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %write65, align 4
  %call57 = tail call fastcc zeroext i1 @reg_pattern_test(ptr noundef %adapter, ptr noundef %data, i32 noundef %add54, i32 noundef %48, i32 noundef %50)
  %conv58 = zext i1 %call57 to i32
  br label %sw.epilog

sw.bb59:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %51 = ptrtoint ptr %test.0129 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %test.0129, align 4
  %conv61 = zext i16 %52 to i32
  %mul62 = shl i32 %i.0125, 2
  %add63 = add i32 %mul62, %conv61
  %53 = ptrtoint ptr %mask64 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %mask64, align 4
  %55 = ptrtoint ptr %write65 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %write65, align 4
  %call66 = tail call fastcc zeroext i1 @reg_pattern_test(ptr noundef %adapter, ptr noundef %data, i32 noundef %add63, i32 noundef %54, i32 noundef %56)
  %conv67 = zext i1 %call66 to i32
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb59, %sw.bb49, %sw.bb40, %reg_set_and_check.exit, %sw.bb, %for.body.sw.epilog_crit_edge
  %b.2 = phi i32 [ %b.1127, %for.body.sw.epilog_crit_edge ], [ %conv67, %sw.bb59 ], [ %conv58, %sw.bb49 ], [ %conv48, %sw.bb40 ], [ %conv39, %reg_set_and_check.exit ], [ %conv30, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %b.2)
  %tobool68.not = icmp eq i32 %b.2, 0
  br i1 %tobool68.not, label %sw.epilog.cleanup_crit_edge, label %for.cond

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %b.1.lcssa = phi i32 [ %b.0128, %for.cond.preheader.for.end_crit_edge ], [ 1, %for.cond.for.end_crit_edge ]
  %incdec.ptr = getelementptr %struct.igc_reg_test, ptr %test.0129, i32 1
  %57 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %incdec.ptr, align 4
  %tobool.not = icmp eq i16 %58, 0
  br i1 %tobool.not, label %for.end.cleanup.sink.split_crit_edge, label %for.end.for.cond.preheader_crit_edge

for.end.for.cond.preheader_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.preheader

for.end.cleanup.sink.split_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.end.cleanup.sink.split_crit_edge, %if.then
  %.sink = phi i64 [ 1, %if.then ], [ 0, %for.end.cleanup.sink.split_crit_edge ]
  %59 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %.sink, ptr %data, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.epilog.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp.not, %cleanup.sink.split ], [ false, %sw.epilog.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igc_rd32(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @reg_pattern_test(ptr noundef %adapter, ptr nocapture noundef writeonly %data, i32 noundef %reg, i32 noundef %mask, i32 noundef %write) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 37
  %hw_addr3 = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 37, i32 1
  %call = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef %reg) #4
  %0 = ptrtoint ptr %hw_addr3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw_addr3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  %and = and i32 %write, 1515870810
  %2 = tail call i32 @llvm.bswap.i32(i32 %and)
  %arrayidx7 = getelementptr i8, ptr %1, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx7, i32 %2) #4, !srcloc !20
  %call10 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef %reg) #4
  %and13 = and i32 %and, %mask
  call void @__sanitizer_cov_trace_cmp4(i32 %call10, i32 %and13)
  %cmp14.not = icmp eq i32 %call10, %and13
  br i1 %cmp14.not, label %do.body31, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %do.body31.2.if.then_crit_edge, %do.body31.1.if.then_crit_edge, %do.body31.if.then_crit_edge, %entry.if.then_crit_edge
  %call.lcssa = phi i32 [ %call, %entry.if.then_crit_edge ], [ %call.1, %do.body31.if.then_crit_edge ], [ %call.2, %do.body31.1.if.then_crit_edge ], [ %call.3, %do.body31.2.if.then_crit_edge ]
  %call10.lcssa = phi i32 [ %call10, %entry.if.then_crit_edge ], [ %call10.1, %do.body31.if.then_crit_edge ], [ %call10.2, %do.body31.1.if.then_crit_edge ], [ %call10.3, %do.body31.2.if.then_crit_edge ]
  %and13.lcssa = phi i32 [ %and13, %entry.if.then_crit_edge ], [ %and13.1, %do.body31.if.then_crit_edge ], [ 0, %do.body31.1.if.then_crit_edge ], [ %and13.3, %do.body31.2.if.then_crit_edge ]
  %3 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adapter, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %4, ptr noundef nonnull @.str.1, i32 noundef %reg, i32 noundef %call10.lcssa, i32 noundef %and13.lcssa) #7
  %5 = zext i32 %reg to i64
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %data, align 8
  %7 = ptrtoint ptr %hw_addr3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %hw_addr3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !26
  tail call void @arm_heavy_mb() #4
  %9 = tail call i32 @llvm.bswap.i32(i32 %call.lcssa)
  %arrayidx28 = getelementptr i8, ptr %8, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx28, i32 %9) #4, !srcloc !20
  br label %cleanup

do.body31:                                        ; preds = %entry
  %10 = ptrtoint ptr %hw_addr3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %hw_addr3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  %12 = tail call i32 @llvm.bswap.i32(i32 %call)
  %arrayidx41 = getelementptr i8, ptr %11, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx41, i32 %12) #4, !srcloc !20
  %call.1 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef %reg) #4
  %13 = ptrtoint ptr %hw_addr3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %hw_addr3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  %and.1 = and i32 %write, -1515870811
  %15 = tail call i32 @llvm.bswap.i32(i32 %and.1)
  %arrayidx7.1 = getelementptr i8, ptr %14, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx7.1, i32 %15) #4, !srcloc !20
  %call10.1 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef %reg) #4
  %and13.1 = and i32 %and.1, %mask
  call void @__sanitizer_cov_trace_cmp4(i32 %call10.1, i32 %and13.1)
  %cmp14.not.1 = icmp eq i32 %call10.1, %and13.1
  br i1 %cmp14.not.1, label %do.body31.1, label %do.body31.if.then_crit_edge

do.body31.if.then_crit_edge:                      ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

do.body31.1:                                      ; preds = %do.body31
  %16 = ptrtoint ptr %hw_addr3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %hw_addr3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  %18 = tail call i32 @llvm.bswap.i32(i32 %call.1)
  %arrayidx41.1 = getelementptr i8, ptr %17, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx41.1, i32 %18) #4, !srcloc !20
  %call.2 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef %reg) #4
  %19 = ptrtoint ptr %hw_addr3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %hw_addr3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  %arrayidx7.2 = getelementptr i8, ptr %20, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx7.2, i32 0) #4, !srcloc !20
  %call10.2 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef %reg) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.2)
  %cmp14.not.2 = icmp eq i32 %call10.2, 0
  br i1 %cmp14.not.2, label %do.body31.2, label %do.body31.1.if.then_crit_edge

do.body31.1.if.then_crit_edge:                    ; preds = %do.body31.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

do.body31.2:                                      ; preds = %do.body31.1
  %21 = ptrtoint ptr %hw_addr3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %hw_addr3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  %23 = tail call i32 @llvm.bswap.i32(i32 %call.2)
  %arrayidx41.2 = getelementptr i8, ptr %22, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx41.2, i32 %23) #4, !srcloc !20
  %call.3 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef %reg) #4
  %24 = ptrtoint ptr %hw_addr3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %hw_addr3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  %26 = tail call i32 @llvm.bswap.i32(i32 %write)
  %arrayidx7.3 = getelementptr i8, ptr %25, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx7.3, i32 %26) #4, !srcloc !20
  %call10.3 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef %reg) #4
  %and13.3 = and i32 %write, %mask
  call void @__sanitizer_cov_trace_cmp4(i32 %call10.3, i32 %and13.3)
  %cmp14.not.3 = icmp eq i32 %call10.3, %and13.3
  br i1 %cmp14.not.3, label %do.body31.3, label %do.body31.2.if.then_crit_edge

do.body31.2.if.then_crit_edge:                    ; preds = %do.body31.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

do.body31.3:                                      ; preds = %do.body31.2
  call void @__sanitizer_cov_trace_pc() #6
  %27 = ptrtoint ptr %hw_addr3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %hw_addr3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  %29 = tail call i32 @llvm.bswap.i32(i32 %call.3)
  %arrayidx41.3 = getelementptr i8, ptr %28, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx41.3, i32 %29) #4, !srcloc !20
  br label %cleanup

cleanup:                                          ; preds = %do.body31.3, %if.then
  %cmp68 = phi i1 [ false, %if.then ], [ true, %do.body31.3 ]
  ret i1 %cmp68
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @igc_eeprom_test(ptr noundef %adapter, ptr nocapture noundef writeonly %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 37
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %data, align 8
  %validate = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 37, i32 5, i32 0, i32 5
  %1 = ptrtoint ptr %validate to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %validate, align 4
  %call = tail call i32 %2(ptr noundef %hw1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 1, ptr %data, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  ret i1 %cmp.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @igc_link_test(ptr noundef %adapter, ptr nocapture noundef writeonly %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %data, align 8
  %autoneg = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 37, i32 3, i32 12
  %1 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %autoneg, align 1, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @msleep(i32 noundef 5000) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = tail call zeroext i1 @igc_has_link(ptr noundef %adapter) #4
  br i1 %call, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 1, ptr %data, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge
  ret i1 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @igc_has_link(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/igc/igc_diag.c", i32 101, i32 7}
!2 = !{ptr @reg_test, !3, !"reg_test", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/intel/igc/igc_diag.c", i32 7, i32 28}
!4 = distinct !{null, !5, !"test_pattern", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/intel/igc/igc_diag.c", i32 40, i32 19}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/intel/igc/igc_diag.c", i32 50, i32 8}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/intel/igc/igc_diag.c", i32 72, i32 7}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{i64 2156599728}
!20 = !{i64 5000164}
!21 = !{i64 2156603168}
!22 = !{i64 2156589482}
!23 = !{i64 2156592908}
!24 = !{i64 2156596292}
!25 = !{i64 2156575152}
!26 = !{i64 2156578617}
!27 = !{i64 2156586062}
!28 = !{i8 0, i8 2}
