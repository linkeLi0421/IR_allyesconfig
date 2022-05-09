; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/broadcom/b43/lo.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/b43/lo.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.b43_loctl = type { i8, i8 }
%struct.b43_wldev = type { ptr, ptr, %struct.completion, %struct.atomic_t, i8, i8, i8, i8, i8, i8, %struct.b43_phy, %union.anon.137, i8, %struct.b43_stats, i32, [6 x i32], i32, %struct.b43_noise_calculation, i32, %struct.delayed_work, i32, %struct.work_struct, i16, [58 x %struct.b43_key], %struct.b43_firmware, %struct.list_head, ptr, i32, [32 x i32], i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.b43_phy = type { ptr, %struct.anon.135, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i8, i8, i32, i8, i32, ptr, i32, %struct.atomic_t, i8, i8 }
%struct.anon.135 = type { ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.137 = type { %struct.b43_dma }
%struct.b43_dma = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.b43_stats = type { i8 }
%struct.b43_noise_calculation = type { i8, i8, [8 x [4 x i8]] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.b43_key = type { ptr, i8 }
%struct.b43_firmware = type { %struct.b43_firmware_file, %struct.b43_firmware_file, %struct.b43_firmware_file, %struct.b43_firmware_file, i16, i16, i32, i8, i8 }
%struct.b43_firmware_file = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.b43_phy_g = type { i8, i8, i8, i8, %struct.anon.136, [2 x i16], [2 x i16], ptr, i8, i32, i32, i8, %struct.b43_bbatt, %struct.b43_rfatt, i8, i32, i32, ptr, i16, i16, i16, i16, i16, i32, [26 x i32], [2 x i16], i32, [64 x i8], i16, i16, i16, i32 }
%struct.anon.136 = type { i8, i16, i16 }
%struct.b43_bbatt = type { i8 }
%struct.b43_rfatt = type { i8, i8 }
%struct.b43_rfatt_list = type { ptr, i8, i8, i8 }
%struct.b43_txpower_lo_control = type { %struct.b43_rfatt_list, %struct.b43_bbatt_list, [32 x i16], %struct.list_head, i32, i32, i8, i8, i64 }
%struct.b43_bbatt_list = type { ptr, i8, i8, i8 }
%struct.b43_lo_calib = type { %struct.b43_bbatt, %struct.b43_rfatt, %struct.b43_loctl, i32, %struct.list_head }
%struct.b43_bus_dev = type { i32, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, i32, i16, i16, i16, i16, i8, i8, ptr, i16, i8 }
%union.anon = type { ptr }
%struct.ssb_sprom = type { i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, [2 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [4 x %struct.ssb_sprom_core_pwr_info], %struct.anon.102, %struct.anon.103, [8 x i16], [8 x i16], [8 x i16], [8 x i16], i8, [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8 }
%struct.ssb_sprom_core_pwr_info = type { i8, i8, i8, i8, i8, i8, [4 x i16], [4 x i16], [4 x i16], [4 x i16] }
%struct.anon.102 = type { i8, i8, i8, i8 }
%struct.anon.103 = type { %struct.anon.104, %struct.anon.105 }
%struct.anon.104 = type { i8, i8, i8, i8, i8 }
%struct.anon.105 = type { i8, i8, i8, i8, i8 }

@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/net/wireless/broadcom/b43/lo.c\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"LO: Could not calibrate DC table entry\0A\00", [56 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"LO: Item BB(%u), RF(%u,%u), I=%d, Q=%d expired\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"LO: Recalibrating current LO setting\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to recalibrate current LO setting\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"LO: Calibrated for BB(%u), RF(%u,%u) => I=%d Q=%d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"LO calib: out of memory\0A\00", [39 x i8] zeroinitializer }, align 32
@lo_measure_txctl_values.tx_bias_values = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\09\08\0A\01\00\02\05\04\06", [23 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@lo_probe_possible_loctls.modifiers = internal constant { [8 x %struct.b43_loctl], [16 x i8] } { [8 x %struct.b43_loctl] [%struct.b43_loctl { i8 1, i8 1 }, %struct.b43_loctl { i8 1, i8 0 }, %struct.b43_loctl { i8 1, i8 -1 }, %struct.b43_loctl { i8 0, i8 -1 }, %struct.b43_loctl { i8 -1, i8 -1 }, %struct.b43_loctl { i8 -1, i8 0 }, %struct.b43_loctl { i8 -1, i8 1 }, %struct.b43_loctl { i8 0, i8 1 }], [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.7 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Invalid LO control pair (I: %d, Q: %d)\0A\00", [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 819, i32 2 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 845, i32 21 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 961, i32 20 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 973, i32 20 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 979, i32 21 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 763, i32 19 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 771, i32 20 }
@___asan_gen_.31 = private unnamed_addr constant [15 x i8] c"tx_bias_values\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 171, i32 18 }
@___asan_gen_.34 = private unnamed_addr constant [10 x i8] c"modifiers\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 580, i32 32 }
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.38 = private constant [42 x i8] c"../drivers/net/wireless/broadcom/b43/lo.c\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 52, i32 20 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @lo_measure_txctl_values.tx_bias_values, ptr @lo_probe_possible_loctls.modifiers, ptr @.str.7], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lo_measure_txctl_values.tx_bias_values to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lo_probe_possible_loctls.modifiers to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_gphy_dc_lt_init(ptr noundef %dev, i1 noundef zeroext %update_all) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %lo_control = getelementptr inbounds %struct.b43_phy_g, ptr %2, i32 0, i32 17
  %3 = ptrtoint ptr %lo_control to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lo_control, align 4
  %len = getelementptr inbounds %struct.b43_rfatt_list, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %len, align 4
  %conv = zext i8 %6 to i32
  %bbatt_list = getelementptr inbounds %struct.b43_txpower_lo_control, ptr %4, i32 0, i32 1
  %len2 = getelementptr inbounds %struct.b43_txpower_lo_control, ptr %4, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %len2 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %len2, align 4
  %conv3 = zext i8 %8 to i32
  %mul = mul nuw nsw i32 %conv3, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %mul)
  %cmp = icmp ugt i32 %mul, 64
  br i1 %cmp, label %do.end14, label %entry.if.end_crit_edge, !prof !31

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end14:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 819, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end14, %entry.if.end_crit_edge
  %power_vector26 = getelementptr inbounds %struct.b43_txpower_lo_control, ptr %4, i32 0, i32 8
  %9 = ptrtoint ptr %power_vector26 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %power_vector26, align 8
  %update_all.not = xor i1 %update_all, true
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %tobool28.not = icmp eq i64 %10, 0
  %or.cond = select i1 %update_all.not, i1 %tobool28.not, i1 false
  br i1 %or.cond, label %if.end.cleanup98_crit_edge, label %if.end30

if.end.cleanup98_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup98

if.end30:                                         ; preds = %if.end
  tail call void @b43_mac_suspend(ptr noundef %dev) #6
  %wl = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.end30
  %table_changed.0.off0154 = phi i1 [ false, %if.end30 ], [ %table_changed.1.off0, %cleanup.for.body_crit_edge ]
  %i.0152 = phi i32 [ 0, %if.end30 ], [ %inc, %cleanup.for.body_crit_edge ]
  br i1 %update_all, label %for.body.if.end37_crit_edge, label %land.lhs.true34

for.body.if.end37_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

land.lhs.true34:                                  ; preds = %for.body
  %sh_prom = zext i32 %i.0152 to i64
  %shl = shl nuw i64 1, %sh_prom
  %and = and i64 %shl, %10
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool35.not = icmp eq i64 %and, 0
  br i1 %tobool35.not, label %land.lhs.true34.cleanup_crit_edge, label %land.lhs.true34.if.end37_crit_edge

land.lhs.true34.if.end37_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

land.lhs.true34.cleanup_crit_edge:                ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end37:                                         ; preds = %land.lhs.true34.if.end37_crit_edge, %for.body.if.end37_crit_edge
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %len, align 4
  %conv40 = zext i8 %12 to i32
  %i.0152.frozen = freeze i32 %i.0152
  %conv40.frozen = freeze i32 %conv40
  %div = udiv i32 %i.0152.frozen, %conv40.frozen
  %13 = mul i32 %div, %conv40.frozen
  %rem.decomposed = sub i32 %i.0152.frozen, %13
  %14 = ptrtoint ptr %bbatt_list to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bbatt_list, align 8
  %arrayidx = getelementptr %struct.b43_bbatt, ptr %15, i32 %div
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %4, align 8
  %arrayidx47 = getelementptr %struct.b43_rfatt, ptr %17, i32 %rem.decomposed
  %call = tail call fastcc ptr @b43_calibrate_lo_setting(ptr noundef %dev, ptr noundef %arrayidx, ptr noundef %arrayidx47)
  %tobool48.not = icmp eq ptr %call, null
  br i1 %tobool48.not, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wl, align 4
  tail call void (ptr, ptr, ...) @b43warn(ptr noundef %19, ptr noundef nonnull @.str.1) #6
  br label %cleanup

if.end50:                                         ; preds = %if.end37
  %ctl = getelementptr inbounds %struct.b43_lo_calib, ptr %call, i32 0, i32 2
  %q = getelementptr inbounds %struct.b43_lo_calib, ptr %call, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %q to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %q, align 1
  %22 = ptrtoint ptr %ctl to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ctl, align 1
  %conv54 = zext i8 %23 to i16
  %shl55 = shl nuw nsw i16 %conv54, 4
  %conv56 = zext i8 %21 to i16
  %or = or i16 %shl55, %conv56
  tail call void @kfree(ptr noundef nonnull %call) #6
  %div58151 = lshr i32 %i.0152, 1
  %24 = and i32 %i.0152, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool60.not = icmp eq i32 %24, 0
  %arrayidx73 = getelementptr %struct.b43_txpower_lo_control, ptr %4, i32 0, i32 2, i32 %div58151
  %25 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx73, align 2
  br i1 %tobool60.not, label %if.else, label %if.then61

if.then61:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  %27 = and i16 %26, 255
  %28 = shl i16 %or, 8
  %or68150 = or i16 %27, %28
  %29 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %or68150, ptr %arrayidx73, align 2
  br label %cleanup

if.else:                                          ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  %30 = and i16 %26, -256
  %31 = and i16 %or, 255
  %or78149 = or i16 %30, %31
  %32 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %or78149, ptr %arrayidx73, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then61, %if.then49, %land.lhs.true34.cleanup_crit_edge
  %table_changed.1.off0 = phi i1 [ %table_changed.0.off0154, %if.then49 ], [ %table_changed.0.off0154, %land.lhs.true34.cleanup_crit_edge ], [ true, %if.else ], [ true, %if.then61 ]
  %inc = add nuw nsw i32 %i.0152, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %cleanup
  br i1 %table_changed.1.off0, label %for.end.for.body90_crit_edge, label %for.end.if.end97_crit_edge

for.end.if.end97_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end97

for.end.for.body90_crit_edge:                     ; preds = %for.end
  br label %for.body90

for.body90:                                       ; preds = %for.body90.for.body90_crit_edge, %for.end.for.body90_crit_edge
  %i.1156 = phi i32 [ %inc95, %for.body90.for.body90_crit_edge ], [ 0, %for.end.for.body90_crit_edge ]
  %33 = trunc i32 %i.1156 to i16
  %conv91 = add i16 %33, 928
  %arrayidx93 = getelementptr %struct.b43_txpower_lo_control, ptr %4, i32 0, i32 2, i32 %i.1156
  %34 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx93, align 2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext %conv91, i16 noundef zeroext %35) #6
  %inc95 = add nuw nsw i32 %i.1156, 1
  %exitcond157.not = icmp eq i32 %inc95, 32
  br i1 %exitcond157.not, label %for.body90.if.end97_crit_edge, label %for.body90.for.body90_crit_edge

for.body90.for.body90_crit_edge:                  ; preds = %for.body90
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body90

for.body90.if.end97_crit_edge:                    ; preds = %for.body90
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end97

if.end97:                                         ; preds = %for.body90.if.end97_crit_edge, %for.end.if.end97_crit_edge
  tail call void @b43_mac_enable(ptr noundef %dev) #6
  br label %cleanup98

cleanup98:                                        ; preds = %if.end97, %if.end.cleanup98_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_mac_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @b43_calibrate_lo_setting(ptr noundef %dev, ptr nocapture noundef readonly %bbatt, ptr nocapture noundef readonly %rfatt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %channel = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 18
  %3 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %channel, align 4
  tail call void @b43_mac_suspend(ptr noundef %dev) #6
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %bus_sprom.i = getelementptr inbounds %struct.b43_bus_dev, ptr %6, i32 0, i32 23
  %7 = ptrtoint ptr %bus_sprom.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus_sprom.i, align 4
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %0, align 4
  %lo_control.i = getelementptr inbounds %struct.b43_phy_g, ptr %10, i32 0, i32 17
  %11 = ptrtoint ptr %lo_control.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lo_control.i, align 4
  %call.i = tail call zeroext i1 @b43_has_hardware_pctl(ptr noundef %dev) #6
  br i1 %call.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 2063) #6
  %call4.i = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 2049) #6
  %call5.i = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 96) #6
  %call6.i = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 20) #6
  %call7.i93 = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 1144) #6
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 1144, i16 noundef zeroext 256) #6
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 2049, i16 noundef zeroext 64) #6
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 96, i16 noundef zeroext 64) #6
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 20, i16 noundef zeroext 512) #6
  %phi.bo = and i16 %call3.i, -16385
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %saved_regs.sroa.9.0 = phi i16 [ %phi.bo, %if.then.i ], [ -16385, %entry.if.end.i_crit_edge ]
  %saved_regs.sroa.11.0 = phi i16 [ %call4.i, %if.then.i ], [ -1, %entry.if.end.i_crit_edge ]
  %saved_regs.sroa.13.0 = phi i16 [ %call5.i, %if.then.i ], [ -1, %entry.if.end.i_crit_edge ]
  %saved_regs.sroa.17.0 = phi i16 [ %call6.i, %if.then.i ], [ -1, %entry.if.end.i_crit_edge ]
  %saved_regs.sroa.19.0 = phi i16 [ %call7.i93, %if.then.i ], [ -1, %entry.if.end.i_crit_edge ]
  %type.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 7
  %13 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %cmp.i = icmp eq i8 %14, 1
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i.if.end17.i_crit_edge

if.end.i.if.end17.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %radio_ver.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 11
  %15 = ptrtoint ptr %radio_ver.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %radio_ver.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8272, i16 %16)
  %cmp10.i = icmp eq i16 %16, 8272
  br i1 %cmp10.i, label %land.lhs.true12.i, label %land.lhs.true.i.if.end17.i_crit_edge

land.lhs.true.i.if.end17.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.i

land.lhs.true12.i:                                ; preds = %land.lhs.true.i
  %radio_rev.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 12
  %17 = ptrtoint ptr %radio_rev.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %radio_rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %18)
  %cmp14.i = icmp ult i8 %18, 6
  br i1 %cmp14.i, label %if.then16.i, label %land.lhs.true12.i.if.end17.i_crit_edge

land.lhs.true12.i.if.end17.i_crit_edge:           ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.i

if.then16.i:                                      ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 22, i16 noundef zeroext 1040) #6
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 23, i16 noundef zeroext 2080) #6
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then16.i, %land.lhs.true12.i.if.end17.i_crit_edge, %land.lhs.true.i.if.end17.i_crit_edge, %if.end.i.if.end17.i_crit_edge
  %rev.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 8
  %19 = ptrtoint ptr %rev.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %rev.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %20)
  %cmp19.i = icmp ugt i8 %20, 1
  br i1 %cmp19.i, label %if.then21.i, label %if.end17.i.if.end44.i_crit_edge

if.end17.i.if.end44.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44.i

if.then21.i:                                      ; preds = %if.end17.i
  %call22.i = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 2068) #6
  %call23.i = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 2069) #6
  %call24.i = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 2065) #6
  %call25.i = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 2066) #6
  %call26.i = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 2050) #6
  %call27.i = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 62) #6
  %call28.i = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 1065) #6
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 2050, i16 noundef zeroext -4) #6
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 1065, i16 noundef zeroext 32767) #6
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 2068, i16 noundef zeroext 3) #6
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 2069, i16 noundef zeroext -4) #6
  %21 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %22)
  %cmp31.i = icmp eq i8 %22, 2
  br i1 %cmp31.i, label %if.then33.i, label %if.then21.i.if.end43.i_crit_edge

if.then21.i.if.end43.i_crit_edge:                 ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43.i

if.then33.i:                                      ; preds = %if.then21.i
  %23 = ptrtoint ptr %rev.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %rev.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %24)
  %cmp36.i = icmp ugt i8 %24, 6
  br i1 %cmp36.i, label %land.lhs.true38.i, label %if.then33.i.if.else.i_crit_edge

if.then33.i.if.else.i_crit_edge:                  ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

land.lhs.true38.i:                                ; preds = %if.then33.i
  %boardflags_lo.i = getelementptr inbounds %struct.ssb_sprom, ptr %8, i32 0, i32 70
  %25 = ptrtoint ptr %boardflags_lo.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %boardflags_lo.i, align 4
  %27 = and i16 %26, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool.not.i = icmp eq i16 %27, 0
  br i1 %tobool.not.i, label %land.lhs.true38.i.if.else.i_crit_edge, label %land.lhs.true38.i.if.end43.i_crit_edge

land.lhs.true38.i.if.end43.i_crit_edge:           ; preds = %land.lhs.true38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43.i

land.lhs.true38.i.if.else.i_crit_edge:            ; preds = %land.lhs.true38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

if.else.i:                                        ; preds = %land.lhs.true38.i.if.else.i_crit_edge, %if.then33.i.if.else.i_crit_edge
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.else.i, %land.lhs.true38.i.if.end43.i_crit_edge, %if.then21.i.if.end43.i_crit_edge
  %.sink.i = phi i16 [ 307, %if.else.i ], [ 2355, %land.lhs.true38.i.if.end43.i_crit_edge ], [ 0, %if.then21.i.if.end43.i_crit_edge ]
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2065, i16 noundef zeroext %.sink.i) #6
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 62, i16 noundef zeroext 0) #6
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.end43.i, %if.end17.i.if.end44.i_crit_edge
  %saved_regs.sroa.21.0 = phi i16 [ %call22.i, %if.end43.i ], [ -1, %if.end17.i.if.end44.i_crit_edge ]
  %saved_regs.sroa.23.0 = phi i16 [ %call23.i, %if.end43.i ], [ -1, %if.end17.i.if.end44.i_crit_edge ]
  %saved_regs.sroa.25.0 = phi i16 [ %call24.i, %if.end43.i ], [ -1, %if.end17.i.if.end44.i_crit_edge ]
  %saved_regs.sroa.27.0 = phi i16 [ %call25.i, %if.end43.i ], [ -1, %if.end17.i.if.end44.i_crit_edge ]
  %saved_regs.sroa.29.0 = phi i16 [ %call26.i, %if.end43.i ], [ -1, %if.end17.i.if.end44.i_crit_edge ]
  %saved_regs.sroa.31.0 = phi i16 [ %call27.i, %if.end43.i ], [ -1, %if.end17.i.if.end44.i_crit_edge ]
  %saved_regs.sroa.33.0 = phi i16 [ %call28.i, %if.end43.i ], [ -1, %if.end17.i.if.end44.i_crit_edge ]
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  %read16.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %29, i32 0, i32 7
  %30 = ptrtoint ptr %read16.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read16.i.i, align 4
  %call.i.i = tail call zeroext i16 %31(ptr noundef %29, i16 noundef zeroext 1012) #6
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  %read16.i267.i = getelementptr inbounds %struct.b43_bus_dev, ptr %33, i32 0, i32 7
  %34 = ptrtoint ptr %read16.i267.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %read16.i267.i, align 4
  %call.i268.i = tail call zeroext i16 %35(ptr noundef %33, i16 noundef zeroext 994) #6
  %call47.i = tail call zeroext i16 @b43_radio_read(ptr noundef %dev, i16 noundef zeroext 67) #6
  %call48.i = tail call zeroext i16 @b43_radio_read(ptr noundef %dev, i16 noundef zeroext 122) #6
  %call49.i = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 21) #6
  %call50.i = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 42) #6
  %call51.i = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 53) #6
  %call52.i = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 96) #6
  %36 = ptrtoint ptr %rev.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %rev.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %37)
  %cmp55.i = icmp ugt i8 %37, 1
  br i1 %cmp55.i, label %land.lhs.true57.i, label %if.end44.i.if.then67.i_crit_edge

if.end44.i.if.then67.i_crit_edge:                 ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then67.i

land.lhs.true57.i:                                ; preds = %if.end44.i
  %radio_ver58.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 11
  %38 = ptrtoint ptr %radio_ver58.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %radio_ver58.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8272, i16 %39)
  %cmp60.i = icmp eq i16 %39, 8272
  br i1 %cmp60.i, label %land.lhs.true62.i, label %land.lhs.true57.i.if.then67.i_crit_edge

land.lhs.true57.i.if.then67.i_crit_edge:          ; preds = %land.lhs.true57.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then67.i

land.lhs.true62.i:                                ; preds = %land.lhs.true57.i
  %radio_rev63.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 12
  %40 = ptrtoint ptr %radio_rev63.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %radio_rev63.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %41)
  %cmp65.i = icmp eq i8 %41, 8
  br i1 %cmp65.i, label %land.lhs.true62.i.if.end73.i_crit_edge, label %land.lhs.true62.i.if.then67.i_crit_edge

land.lhs.true62.i.if.then67.i_crit_edge:          ; preds = %land.lhs.true62.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then67.i

land.lhs.true62.i.if.end73.i_crit_edge:           ; preds = %land.lhs.true62.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73.i

if.then67.i:                                      ; preds = %land.lhs.true62.i.if.then67.i_crit_edge, %land.lhs.true57.i.if.then67.i_crit_edge, %if.end44.i.if.then67.i_crit_edge
  %call68.i = tail call zeroext i16 @b43_radio_read(ptr noundef %dev, i16 noundef zeroext 82) #6
  %42 = and i16 %call68.i, 240
  br label %if.end73.i

if.end73.i:                                       ; preds = %if.then67.i, %land.lhs.true62.i.if.end73.i_crit_edge
  %saved_regs.sroa.51.0 = phi i16 [ -1, %land.lhs.true62.i.if.end73.i_crit_edge ], [ %42, %if.then67.i ]
  %43 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %44)
  %cmp76.i = icmp eq i8 %44, 1
  br i1 %cmp76.i, label %if.then78.i, label %if.else81.i

if.then78.i:                                      ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #8
  %call79.i = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 48) #6
  %call80.i = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 6) #6
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 48, i16 noundef zeroext 255) #6
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 6, i16 noundef zeroext 16191) #6
  br label %if.end85.i

if.else81.i:                                      ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev, align 4
  %read16.i269.i = getelementptr inbounds %struct.b43_bus_dev, ptr %46, i32 0, i32 7
  %47 = ptrtoint ptr %read16.i269.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %read16.i269.i, align 4
  %call.i270.i = tail call zeroext i16 %48(ptr noundef %46, i16 noundef zeroext 994) #6
  %49 = or i16 %call.i270.i, -32768
  %50 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev, align 4
  %write16.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %51, i32 0, i32 9
  %52 = ptrtoint ptr %write16.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %write16.i.i, align 4
  tail call void %53(ptr noundef %51, i16 noundef zeroext 994, i16 noundef zeroext %49) #6
  br label %if.end85.i

if.end85.i:                                       ; preds = %if.else81.i, %if.then78.i
  %saved_regs.sroa.42.0 = phi i16 [ %call79.i, %if.then78.i ], [ -1, %if.else81.i ]
  %saved_regs.sroa.44.0 = phi i16 [ %call80.i, %if.then78.i ], [ -1, %if.else81.i ]
  %54 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev, align 4
  %read16.i271.i = getelementptr inbounds %struct.b43_bus_dev, ptr %55, i32 0, i32 7
  %56 = ptrtoint ptr %read16.i271.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %read16.i271.i, align 4
  %call.i272.i = tail call zeroext i16 %57(ptr noundef %55, i16 noundef zeroext 1012) #6
  %58 = and i16 %call.i272.i, -4096
  %59 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev, align 4
  %write16.i273.i = getelementptr inbounds %struct.b43_bus_dev, ptr %60, i32 0, i32 9
  %61 = ptrtoint ptr %write16.i273.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %write16.i273.i, align 4
  tail call void %62(ptr noundef %60, i16 noundef zeroext 1012, i16 noundef zeroext %58) #6
  %63 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %64)
  %cmp92.i = icmp eq i8 %64, 2
  %conv94.i = select i1 %cmp92.i, i16 2063, i16 46
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext %conv94.i, i16 noundef zeroext 127) #6
  %65 = and i16 %call51.i, -129
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 53, i16 noundef zeroext %65) #6
  %66 = and i16 %call48.i, -16
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 122, i16 noundef zeroext %66) #6
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 42, i16 noundef zeroext 2211) #6
  %67 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %type.i, align 1
  %69 = zext i8 %68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values)
  switch i8 %68, label %if.end85.i.if.else122.i_crit_edge [
    i8 2, label %if.end85.i.if.end123.i_crit_edge
    i8 1, label %land.lhs.true111.i
  ]

if.end85.i.if.end123.i_crit_edge:                 ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end123.i

if.end85.i.if.else122.i_crit_edge:                ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else122.i

land.lhs.true111.i:                               ; preds = %if.end85.i
  %radio_ver112.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 11
  %70 = ptrtoint ptr %radio_ver112.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %radio_ver112.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8272, i16 %71)
  %cmp114.i = icmp eq i16 %71, 8272
  br i1 %cmp114.i, label %land.lhs.true116.i, label %land.lhs.true111.i.if.else122.i_crit_edge

land.lhs.true111.i.if.else122.i_crit_edge:        ; preds = %land.lhs.true111.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else122.i

land.lhs.true116.i:                               ; preds = %land.lhs.true111.i
  %radio_rev117.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 12
  %72 = ptrtoint ptr %radio_rev117.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %radio_rev117.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %73)
  %cmp119.i = icmp ugt i8 %73, 5
  br i1 %cmp119.i, label %land.lhs.true116.i.if.end123.i_crit_edge, label %land.lhs.true116.i.if.else122.i_crit_edge

land.lhs.true116.i.if.else122.i_crit_edge:        ; preds = %land.lhs.true116.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else122.i

land.lhs.true116.i.if.end123.i_crit_edge:         ; preds = %land.lhs.true116.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end123.i

if.else122.i:                                     ; preds = %land.lhs.true116.i.if.else122.i_crit_edge, %land.lhs.true111.i.if.else122.i_crit_edge, %if.end85.i.if.else122.i_crit_edge
  br label %if.end123.i

if.end123.i:                                      ; preds = %if.else122.i, %land.lhs.true116.i.if.end123.i_crit_edge, %if.end85.i.if.end123.i_crit_edge
  %.sink275.i = phi i16 [ 2050, %if.else122.i ], [ 4099, %if.end85.i.if.end123.i_crit_edge ], [ 4099, %land.lhs.true116.i.if.end123.i_crit_edge ]
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 43, i16 noundef zeroext %.sink275.i) #6
  %74 = ptrtoint ptr %rev.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %rev.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %75)
  %cmp126.i = icmp ugt i8 %75, 1
  br i1 %cmp126.i, label %if.then128.i, label %if.end123.i.if.end129.i_crit_edge

if.end123.i.if.end129.i_crit_edge:                ; preds = %if.end123.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end129.i

if.then128.i:                                     ; preds = %if.end123.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @b43_dummy_transmission(ptr noundef %dev, i1 noundef zeroext false, i1 noundef zeroext true) #6
  br label %if.end129.i

if.end129.i:                                      ; preds = %if.then128.i, %if.end123.i.if.end129.i_crit_edge
  tail call void @b43_gphy_channel_switch(ptr noundef %dev, i32 noundef 6, i1 noundef zeroext false) #6
  %call130.i = tail call zeroext i16 @b43_radio_read(ptr noundef %dev, i16 noundef zeroext 81) #6
  %76 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %77)
  %cmp133.i = icmp eq i8 %77, 2
  br i1 %cmp133.i, label %if.then135.i, label %if.end129.i.if.end136.i_crit_edge

if.end129.i.if.end136.i_crit_edge:                ; preds = %if.end129.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end136.i

if.then135.i:                                     ; preds = %if.end129.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 47, i16 noundef zeroext 0) #6
  br label %if.end136.i

if.end136.i:                                      ; preds = %if.then135.i, %if.end129.i.if.end136.i_crit_edge
  %txctl_measured_time.i = getelementptr inbounds %struct.b43_txpower_lo_control, ptr %12, i32 0, i32 5
  %78 = ptrtoint ptr %txctl_measured_time.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %txctl_measured_time.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %80 = load volatile i32, ptr @jiffies, align 128
  %sub.neg.i = add i32 %79, 17600
  %sub137.i = sub i32 %sub.neg.i, %80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub137.i)
  %cmp138.i = icmp slt i32 %sub137.i, 0
  br i1 %cmp138.i, label %if.then140.i, label %if.end136.i.if.end141.i_crit_edge

if.end136.i.if.end141.i_crit_edge:                ; preds = %if.end136.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end141.i

if.then140.i:                                     ; preds = %if.end136.i
  %81 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %0, align 4
  %lo_control.i.i = getelementptr inbounds %struct.b43_phy_g, ptr %82, i32 0, i32 17
  %83 = ptrtoint ptr %lo_control.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %lo_control.i.i, align 4
  %85 = ptrtoint ptr %rev.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %rev.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %86)
  %cmp.i.i = icmp ugt i8 %86, 1
  br i1 %cmp.i.i, label %if.else.i.i, label %lor.lhs.false.i.i

lor.lhs.false.i.i:                                ; preds = %if.then140.i
  %gmode.i.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 4
  %87 = ptrtoint ptr %gmode.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %gmode.i.i, align 2, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool.not.i.i = icmp eq i8 %88, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i.if.end73.i.i_crit_edge, label %if.else.thread.i.i

lor.lhs.false.i.i.if.end73.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73.i.i

if.else.i.i:                                      ; preds = %if.then140.i
  %max_lb_gain.i.i = getelementptr inbounds %struct.b43_phy_g, ptr %82, i32 0, i32 18
  %89 = ptrtoint ptr %max_lb_gain.i.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %max_lb_gain.i.i, align 4
  %91 = sdiv i16 %90, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 21, i16 %90)
  %cmp5.i.i = icmp sgt i16 %90, 21
  br i1 %cmp5.i.i, label %if.else.i.i.cond.end.i.i_crit_edge, label %land.lhs.true.i.i

if.else.i.i.cond.end.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i.i

if.else.thread.i.i:                               ; preds = %lor.lhs.false.i.i
  %max_lb_gain184.i.i = getelementptr inbounds %struct.b43_phy_g, ptr %82, i32 0, i32 18
  %92 = ptrtoint ptr %max_lb_gain184.i.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %max_lb_gain184.i.i, align 4
  %94 = sdiv i16 %93, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 21, i16 %93)
  %cmp5186.i.i = icmp sgt i16 %93, 21
  br i1 %cmp5186.i.i, label %if.else.thread.i.i.cond.end.i.i_crit_edge, label %if.else.thread.i.i.if.end.i.i_crit_edge

if.else.thread.i.i.if.end.i.i_crit_edge:          ; preds = %if.else.thread.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.else.thread.i.i.cond.end.i.i_crit_edge:        ; preds = %if.else.thread.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %if.else.thread.i.i.cond.end.i.i_crit_edge, %if.else.i.i.cond.end.i.i_crit_edge
  %div188.i.i = phi i16 [ %94, %if.else.thread.i.i.cond.end.i.i_crit_edge ], [ %91, %if.else.i.i.cond.end.i.i_crit_edge ]
  %sub.neg.i.i = add nsw i16 %div188.i.i, -10
  %div11191.i.i = sdiv i16 %sub.neg.i.i, 6
  %95 = tail call i16 @llvm.umin.i16(i16 %div11191.i.i, i16 15) #6
  br label %if.end73.i.i

land.lhs.true.i.i:                                ; preds = %if.else.i.i
  %radio_ver.i.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 11
  %96 = ptrtoint ptr %radio_ver.i.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %radio_ver.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8272, i16 %97)
  %cmp44.i.i = icmp eq i16 %97, 8272
  br i1 %cmp44.i.i, label %land.lhs.true46.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

land.lhs.true46.i.i:                              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %radio_rev.i.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 12
  %98 = ptrtoint ptr %radio_rev.i.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %radio_rev.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %99)
  %cmp48.i.i = icmp eq i8 %99, 8
  %spec.select.i.i = select i1 %cmp48.i.i, i32 60, i32 36
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %land.lhs.true46.i.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.else.thread.i.i.if.end.i.i_crit_edge
  %div187190.in.i.i = phi i16 [ %91, %land.lhs.true.i.i.if.end.i.i_crit_edge ], [ %91, %land.lhs.true46.i.i ], [ %94, %if.else.thread.i.i.if.end.i.i_crit_edge ]
  %cmp_val.0.i.i = phi i32 [ 36, %land.lhs.true.i.i.if.end.i.i_crit_edge ], [ %spec.select.i.i, %land.lhs.true46.i.i ], [ 36, %if.else.thread.i.i.if.end.i.i_crit_edge ]
  %div187190.i.i = sext i16 %div187190.in.i.i to i32
  %sub51.i.i = sub nsw i32 10, %div187190.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub51.i.i, i32 %cmp_val.0.i.i)
  %cmp52.i.i = icmp slt i32 %sub51.i.i, %cmp_val.0.i.i
  %spec.select183.i.i = select i1 %cmp52.i.i, i32 %sub51.i.i, i32 %div187190.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select183.i.i)
  %cmp57.i.i = icmp slt i32 %spec.select183.i.i, 0
  %tmp38.1.v.i.i = select i1 %cmp57.i.i, i32 6, i32 3
  %tmp38.1.i.i = add nsw i32 %tmp38.1.v.i.i, %spec.select183.i.i
  %div63181.i.i = lshr exact i32 %cmp_val.0.i.i, 2
  %div64.lhs.trunc.i.i = trunc i32 %tmp38.1.i.i to i16
  %div64192.i.i = sdiv i16 %div64.lhs.trunc.i.i, 4
  %div64.sext.i.i = sext i16 %div64192.i.i to i32
  %100 = tail call i32 @llvm.smin.i32(i32 %div63181.i.i, i32 %div64.sext.i.i) #6
  %radio_pctl_reg.0.i.i = trunc i32 %100 to i16
  br label %if.end73.i.i

if.end73.i.i:                                     ; preds = %if.end.i.i, %cond.end.i.i, %lor.lhs.false.i.i.if.end73.i.i_crit_edge
  %trsw_rx.0.i.i = phi i16 [ 2, %lor.lhs.false.i.i.if.end73.i.i_crit_edge ], [ 0, %if.end.i.i ], [ 0, %cond.end.i.i ]
  %pga.1.i.i = phi i16 [ 0, %lor.lhs.false.i.i.if.end73.i.i_crit_edge ], [ 0, %if.end.i.i ], [ %95, %cond.end.i.i ]
  %radio_pctl_reg.2.i.i = phi i16 [ 6, %lor.lhs.false.i.i.if.end73.i.i_crit_edge ], [ %radio_pctl_reg.0.i.i, %if.end.i.i ], [ 0, %cond.end.i.i ]
  tail call void @b43_radio_maskset(ptr noundef %dev, i16 noundef zeroext 67, i16 noundef zeroext -16, i16 noundef zeroext %radio_pctl_reg.2.i.i) #6
  tail call void @b43_gphy_set_baseband_attenuation(ptr noundef %dev, i16 noundef zeroext 2) #6
  %101 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %102)
  %cmp.i.i.i = icmp eq i8 %102, 1
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.else7.i.i.i

if.then.i.i.i:                                    ; preds = %if.end73.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %radio_rev.i.i.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 12
  %103 = ptrtoint ptr %radio_rev.i.i.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %radio_rev.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %104)
  %cmp4.i.i.i = icmp ult i8 %104, 6
  %..i.i.i = select i1 %cmp4.i.i.i, i16 67, i16 82
  br label %lo_txctl_register_table.exit.i.i

if.else7.i.i.i:                                   ; preds = %if.end73.i.i
  %105 = ptrtoint ptr %rev.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %rev.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %106)
  %cmp9.i.i.i = icmp ugt i8 %106, 1
  br i1 %cmp9.i.i.i, label %land.lhs.true.i.i.i, label %if.else7.i.i.i.if.else16.i.i.i_crit_edge

if.else7.i.i.i.if.else16.i.i.i_crit_edge:         ; preds = %if.else7.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else16.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.else7.i.i.i
  %radio_rev11.i.i.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 12
  %107 = ptrtoint ptr %radio_rev11.i.i.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %radio_rev11.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %108)
  %cmp13.i.i.i = icmp eq i8 %108, 8
  br i1 %cmp13.i.i.i, label %land.lhs.true.i.i.i.lo_txctl_register_table.exit.i.i_crit_edge, label %land.lhs.true.i.i.i.if.else16.i.i.i_crit_edge

land.lhs.true.i.i.i.if.else16.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else16.i.i.i

land.lhs.true.i.i.i.lo_txctl_register_table.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lo_txctl_register_table.exit.i.i

if.else16.i.i.i:                                  ; preds = %land.lhs.true.i.i.i.if.else16.i.i.i_crit_edge, %if.else7.i.i.i.if.else16.i.i.i_crit_edge
  br label %lo_txctl_register_table.exit.i.i

lo_txctl_register_table.exit.i.i:                 ; preds = %if.else16.i.i.i, %land.lhs.true.i.i.i.lo_txctl_register_table.exit.i.i_crit_edge, %if.then.i.i.i
  %reg.0.i.i.i = phi i16 [ 82, %if.else16.i.i.i ], [ %..i.i.i, %if.then.i.i.i ], [ 67, %land.lhs.true.i.i.i.lo_txctl_register_table.exit.i.i_crit_edge ]
  %v.0.i.i.i = phi i16 [ -49, %if.else16.i.i.i ], [ -49, %if.then.i.i.i ], [ -17, %land.lhs.true.i.i.i.lo_txctl_register_table.exit.i.i_crit_edge ]
  tail call void @b43_radio_mask(ptr noundef %dev, i16 noundef zeroext %reg.0.i.i.i, i16 noundef zeroext %v.0.i.i.i) #6
  %109 = ptrtoint ptr %rev.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %rev.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %110)
  %cmp78.i.i = icmp ugt i8 %110, 1
  br i1 %cmp78.i.i, label %land.lhs.true80.i.i, label %lo_txctl_register_table.exit.i.i.if.else125.i.i_crit_edge

lo_txctl_register_table.exit.i.i.if.else125.i.i_crit_edge: ; preds = %lo_txctl_register_table.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else125.i.i

land.lhs.true80.i.i:                              ; preds = %lo_txctl_register_table.exit.i.i
  %radio_ver81.i.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 11
  %111 = ptrtoint ptr %radio_ver81.i.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %radio_ver81.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8272, i16 %112)
  %cmp83.i.i = icmp eq i16 %112, 8272
  br i1 %cmp83.i.i, label %land.lhs.true85.i.i, label %land.lhs.true80.i.i.if.else125.i.i_crit_edge

land.lhs.true80.i.i.if.else125.i.i_crit_edge:     ; preds = %land.lhs.true80.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else125.i.i

land.lhs.true85.i.i:                              ; preds = %land.lhs.true80.i.i
  %radio_rev86.i.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 12
  %113 = ptrtoint ptr %radio_rev86.i.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %radio_rev86.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %114)
  %cmp88.i.i = icmp eq i8 %114, 8
  br i1 %cmp88.i.i, label %for.cond.preheader.i.i, label %land.lhs.true85.i.i.if.else125.i.i_crit_edge

land.lhs.true85.i.i.if.else125.i.i_crit_edge:     ; preds = %land.lhs.true85.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else125.i.i

for.cond.preheader.i.i:                           ; preds = %land.lhs.true85.i.i
  %tx_bias105.i.i = getelementptr inbounds %struct.b43_txpower_lo_control, ptr %84, i32 0, i32 6
  %tx_magn106.i.i = getelementptr inbounds %struct.b43_txpower_lo_control, ptr %84, i32 0, i32 7
  tail call void @b43_radio_maskset(ptr noundef %dev, i16 noundef zeroext 82, i16 noundef zeroext -241, i16 noundef zeroext 112) #6
  br label %for.body97.i.i

for.body97.i.i:                                   ; preds = %if.end107.i.i.for.body97.i.i_crit_edge, %for.cond.preheader.i.i
  %min_feedth.1195.i.i = phi i32 [ 65535, %for.cond.preheader.i.i ], [ %min_feedth.2.i.i, %if.end107.i.i.for.body97.i.i_crit_edge ]
  %j.0194.i.i = phi i32 [ 0, %for.cond.preheader.i.i ], [ %inc.i.i, %if.end107.i.i.for.body97.i.i_crit_edge ]
  %arrayidx98.i.i = getelementptr [9 x i8], ptr @lo_measure_txctl_values.tx_bias_values, i32 0, i32 %j.0194.i.i
  %115 = ptrtoint ptr %arrayidx98.i.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %arrayidx98.i.i, align 1
  %conv99.i.i = zext i8 %116 to i16
  tail call void @b43_radio_maskset(ptr noundef %dev, i16 noundef zeroext 82, i16 noundef zeroext -16, i16 noundef zeroext %conv99.i.i) #6
  %call100.i.i = tail call fastcc zeroext i16 @lo_measure_feedthrough(ptr noundef %dev, i16 noundef zeroext 0, i16 noundef zeroext %pga.1.i.i, i16 noundef zeroext %trsw_rx.0.i.i) #6
  %conv101.i.i = zext i16 %call100.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %min_feedth.1195.i.i, i32 %conv101.i.i)
  %cmp102.i.i = icmp sgt i32 %min_feedth.1195.i.i, %conv101.i.i
  br i1 %cmp102.i.i, label %if.then104.i.i, label %for.body97.i.i.if.end107.i.i_crit_edge

for.body97.i.i.if.end107.i.i_crit_edge:           ; preds = %for.body97.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end107.i.i

if.then104.i.i:                                   ; preds = %for.body97.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %117 = ptrtoint ptr %tx_bias105.i.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %116, ptr %tx_bias105.i.i, align 8
  %118 = ptrtoint ptr %tx_magn106.i.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 112, ptr %tx_magn106.i.i, align 1
  br label %if.end107.i.i

if.end107.i.i:                                    ; preds = %if.then104.i.i, %for.body97.i.i.if.end107.i.i_crit_edge
  %min_feedth.2.i.i = phi i32 [ %conv101.i.i, %if.then104.i.i ], [ %min_feedth.1195.i.i, %for.body97.i.i.if.end107.i.i_crit_edge ]
  %119 = ptrtoint ptr %tx_bias105.i.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %tx_bias105.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %cmp110.i.i = icmp ne i8 %120, 0
  %inc.i.i = add nuw nsw i32 %j.0194.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %j.0194.i.i)
  %cmp95.i.i = icmp ult i32 %j.0194.i.i, 8
  %or.cond.i.i = select i1 %cmp110.i.i, i1 %cmp95.i.i, i1 false
  br i1 %or.cond.i.i, label %if.end107.i.i.for.body97.i.i_crit_edge, label %for.end.i.i

if.end107.i.i.for.body97.i.i_crit_edge:           ; preds = %if.end107.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body97.i.i

for.end.i.i:                                      ; preds = %if.end107.i.i
  %call114.i.i = tail call zeroext i16 @b43_radio_read(ptr noundef %dev, i16 noundef zeroext 82) #6
  %121 = and i16 %call114.i.i, -256
  %122 = ptrtoint ptr %tx_bias105.i.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %tx_bias105.i.i, align 8
  %conv117.i.i = zext i8 %123 to i16
  %or.i.i = or i16 %121, %conv117.i.i
  %124 = ptrtoint ptr %tx_magn106.i.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %tx_magn106.i.i, align 1
  %conv119.i.i = zext i8 %125 to i16
  %or120.i.i = or i16 %or.i.i, %conv119.i.i
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 82, i16 noundef zeroext %or120.i.i) #6
  tail call void @b43_radio_maskset(ptr noundef %dev, i16 noundef zeroext 82, i16 noundef zeroext -241, i16 noundef zeroext 64) #6
  br label %for.body97.1.i.i

for.body97.1.i.i:                                 ; preds = %if.end107.1.i.i.for.body97.1.i.i_crit_edge, %for.end.i.i
  %min_feedth.1195.1.i.i = phi i32 [ %min_feedth.2.i.i, %for.end.i.i ], [ %min_feedth.2.1.i.i, %if.end107.1.i.i.for.body97.1.i.i_crit_edge ]
  %j.0194.1.i.i = phi i32 [ 0, %for.end.i.i ], [ %inc.1.i.i, %if.end107.1.i.i.for.body97.1.i.i_crit_edge ]
  %arrayidx98.1.i.i = getelementptr [9 x i8], ptr @lo_measure_txctl_values.tx_bias_values, i32 0, i32 %j.0194.1.i.i
  %126 = ptrtoint ptr %arrayidx98.1.i.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx98.1.i.i, align 1
  %conv99.1.i.i = zext i8 %127 to i16
  tail call void @b43_radio_maskset(ptr noundef %dev, i16 noundef zeroext 82, i16 noundef zeroext -16, i16 noundef zeroext %conv99.1.i.i) #6
  %call100.1.i.i = tail call fastcc zeroext i16 @lo_measure_feedthrough(ptr noundef %dev, i16 noundef zeroext 0, i16 noundef zeroext %pga.1.i.i, i16 noundef zeroext %trsw_rx.0.i.i) #6
  %conv101.1.i.i = zext i16 %call100.1.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %min_feedth.1195.1.i.i, i32 %conv101.1.i.i)
  %cmp102.1.i.i = icmp sgt i32 %min_feedth.1195.1.i.i, %conv101.1.i.i
  br i1 %cmp102.1.i.i, label %if.then104.1.i.i, label %for.body97.1.i.i.if.end107.1.i.i_crit_edge

for.body97.1.i.i.if.end107.1.i.i_crit_edge:       ; preds = %for.body97.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end107.1.i.i

if.then104.1.i.i:                                 ; preds = %for.body97.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %128 = ptrtoint ptr %tx_bias105.i.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %127, ptr %tx_bias105.i.i, align 8
  %129 = ptrtoint ptr %tx_magn106.i.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 64, ptr %tx_magn106.i.i, align 1
  br label %if.end107.1.i.i

if.end107.1.i.i:                                  ; preds = %if.then104.1.i.i, %for.body97.1.i.i.if.end107.1.i.i_crit_edge
  %min_feedth.2.1.i.i = phi i32 [ %conv101.1.i.i, %if.then104.1.i.i ], [ %min_feedth.1195.1.i.i, %for.body97.1.i.i.if.end107.1.i.i_crit_edge ]
  %130 = ptrtoint ptr %tx_bias105.i.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %tx_bias105.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %cmp110.1.i.i = icmp ne i8 %131, 0
  %inc.1.i.i = add nuw nsw i32 %j.0194.1.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %j.0194.1.i.i)
  %cmp95.1.i.i = icmp ult i32 %j.0194.1.i.i, 8
  %or.cond.1.i.i = select i1 %cmp110.1.i.i, i1 %cmp95.1.i.i, i1 false
  br i1 %or.cond.1.i.i, label %if.end107.1.i.i.for.body97.1.i.i_crit_edge, label %for.end.1.i.i

if.end107.1.i.i.for.body97.1.i.i_crit_edge:       ; preds = %if.end107.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body97.1.i.i

for.end.1.i.i:                                    ; preds = %if.end107.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call114.1.i.i = tail call zeroext i16 @b43_radio_read(ptr noundef %dev, i16 noundef zeroext 82) #6
  %132 = and i16 %call114.1.i.i, -256
  %133 = ptrtoint ptr %tx_bias105.i.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %tx_bias105.i.i, align 8
  %conv117.1.i.i = zext i8 %134 to i16
  %or.1.i.i = or i16 %132, %conv117.1.i.i
  %135 = ptrtoint ptr %tx_magn106.i.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %tx_magn106.i.i, align 1
  %conv119.1.i.i = zext i8 %136 to i16
  %or120.1.i.i = or i16 %or.1.i.i, %conv119.1.i.i
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 82, i16 noundef zeroext %or120.1.i.i) #6
  br label %lo_measure_txctl_values.exit.i

if.else125.i.i:                                   ; preds = %land.lhs.true85.i.i.if.else125.i.i_crit_edge, %land.lhs.true80.i.i.if.else125.i.i_crit_edge, %lo_txctl_register_table.exit.i.i.if.else125.i.i_crit_edge
  %tx_magn126.i.i = getelementptr inbounds %struct.b43_txpower_lo_control, ptr %84, i32 0, i32 7
  %137 = ptrtoint ptr %tx_magn126.i.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 0, ptr %tx_magn126.i.i, align 1
  %tx_bias127.i.i = getelementptr inbounds %struct.b43_txpower_lo_control, ptr %84, i32 0, i32 6
  %138 = ptrtoint ptr %tx_bias127.i.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 0, ptr %tx_bias127.i.i, align 8
  tail call void @b43_radio_mask(ptr noundef %dev, i16 noundef zeroext 82, i16 noundef zeroext -16) #6
  br label %lo_measure_txctl_values.exit.i

lo_measure_txctl_values.exit.i:                   ; preds = %if.else125.i.i, %for.end.1.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %139 = load volatile i32, ptr @jiffies, align 128
  %txctl_measured_time.i.i = getelementptr inbounds %struct.b43_txpower_lo_control, ptr %84, i32 0, i32 5
  %140 = ptrtoint ptr %txctl_measured_time.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %139, ptr %txctl_measured_time.i.i, align 4
  br label %if.end141.i

if.end141.i:                                      ; preds = %lo_measure_txctl_values.exit.i, %if.end136.i.if.end141.i_crit_edge
  %141 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %type.i, align 1
  %143 = zext i8 %142 to i64
  call void @__sanitizer_cov_trace_switch(i64 %143, ptr @__sancov_gen_cov_switch_values.8)
  switch i8 %142, label %if.end141.i.if.else158.i_crit_edge [
    i8 2, label %land.lhs.true146.i
    i8 1, label %if.then157.i
  ]

if.end141.i.if.else158.i_crit_edge:               ; preds = %if.end141.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else158.i

land.lhs.true146.i:                               ; preds = %if.end141.i
  %144 = ptrtoint ptr %rev.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %rev.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %145)
  %cmp149.i = icmp ugt i8 %145, 2
  br i1 %cmp149.i, label %if.then151.i, label %land.lhs.true146.i.if.else158.i_crit_edge

land.lhs.true146.i.if.else158.i_crit_edge:        ; preds = %land.lhs.true146.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else158.i

if.then151.i:                                     ; preds = %land.lhs.true146.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2063, i16 noundef zeroext -16264) #6
  br label %lo_measure_setup.exit

if.then157.i:                                     ; preds = %if.end141.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 46, i16 noundef zeroext -32648) #6
  br label %lo_measure_setup.exit

if.else158.i:                                     ; preds = %land.lhs.true146.i.if.else158.i_crit_edge, %if.end141.i.if.else158.i_crit_edge
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2063, i16 noundef zeroext -32648) #6
  br label %lo_measure_setup.exit

lo_measure_setup.exit:                            ; preds = %if.else158.i, %if.then157.i, %if.then151.i
  %146 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %147)
  %cmp.i95 = icmp eq i8 %147, 1
  br i1 %cmp.i95, label %if.then.i97, label %if.else7.i

if.then.i97:                                      ; preds = %lo_measure_setup.exit
  call void @__sanitizer_cov_trace_pc() #8
  %radio_rev.i96 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 12
  %148 = ptrtoint ptr %radio_rev.i96 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %radio_rev.i96, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %149)
  %cmp4.i = icmp ult i8 %149, 6
  %..i = select i1 %cmp4.i, i16 67, i16 82
  %.29.i.neg = select i1 %cmp4.i, i32 0, i32 -5
  br label %lo_txctl_register_table.exit

if.else7.i:                                       ; preds = %lo_measure_setup.exit
  %150 = ptrtoint ptr %rev.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %rev.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %151)
  %cmp9.i = icmp ugt i8 %151, 1
  br i1 %cmp9.i, label %land.lhs.true.i99, label %if.else7.i.if.else16.i_crit_edge

if.else7.i.if.else16.i_crit_edge:                 ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else16.i

land.lhs.true.i99:                                ; preds = %if.else7.i
  %radio_rev11.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 12
  %152 = ptrtoint ptr %radio_rev11.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %radio_rev11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %153)
  %cmp13.i = icmp eq i8 %153, 8
  br i1 %cmp13.i, label %land.lhs.true.i99.lo_txctl_register_table.exit_crit_edge, label %land.lhs.true.i99.if.else16.i_crit_edge

land.lhs.true.i99.if.else16.i_crit_edge:          ; preds = %land.lhs.true.i99
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else16.i

land.lhs.true.i99.lo_txctl_register_table.exit_crit_edge: ; preds = %land.lhs.true.i99
  call void @__sanitizer_cov_trace_pc() #8
  br label %lo_txctl_register_table.exit

if.else16.i:                                      ; preds = %land.lhs.true.i99.if.else16.i_crit_edge, %if.else7.i.if.else16.i_crit_edge
  br label %lo_txctl_register_table.exit

lo_txctl_register_table.exit:                     ; preds = %if.else16.i, %land.lhs.true.i99.lo_txctl_register_table.exit_crit_edge, %if.then.i97
  %reg.0.i = phi i16 [ 82, %if.else16.i ], [ %..i, %if.then.i97 ], [ 67, %land.lhs.true.i99.lo_txctl_register_table.exit_crit_edge ]
  %v.0.i = phi i16 [ 48, %if.else16.i ], [ 48, %if.then.i97 ], [ 16, %land.lhs.true.i99.lo_txctl_register_table.exit_crit_edge ]
  %padmix.0.i.neg = phi i32 [ -5, %if.else16.i ], [ %.29.i.neg, %if.then.i97 ], [ -2, %land.lhs.true.i99.lo_txctl_register_table.exit_crit_edge ]
  %154 = ptrtoint ptr %rfatt to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %rfatt, align 1
  %conv2 = zext i8 %155 to i16
  tail call void @b43_radio_maskset(ptr noundef %dev, i16 noundef zeroext 67, i16 noundef zeroext -16, i16 noundef zeroext %conv2) #6
  %neg = xor i16 %v.0.i, -1
  %with_padmix = getelementptr inbounds %struct.b43_rfatt, ptr %rfatt, i32 0, i32 1
  %156 = ptrtoint ptr %with_padmix to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %with_padmix, align 1, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %157)
  %tobool.not = icmp eq i8 %157, 0
  %spec.select = select i1 %tobool.not, i16 0, i16 %v.0.i
  tail call void @b43_radio_maskset(ptr noundef %dev, i16 noundef zeroext %reg.0.i, i16 noundef zeroext %neg, i16 noundef zeroext %spec.select) #6
  %158 = ptrtoint ptr %rfatt to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %rfatt, align 1
  %conv9 = zext i8 %159 to i32
  %mul = shl nuw nsw i32 %conv9, 1
  %160 = ptrtoint ptr %bbatt to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %bbatt, align 1
  %162 = lshr i8 %161, 1
  %div = zext i8 %162 to i32
  %add = add nuw nsw i32 %mul, %div
  %163 = ptrtoint ptr %with_padmix to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %with_padmix, align 1, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %164)
  %tobool13.not = icmp eq i8 %164, 0
  %sub = select i1 %tobool13.not, i32 0, i32 %padmix.0.i.neg
  %max_rx_gain.0 = add nsw i32 %add, %sub
  %165 = ptrtoint ptr %rev.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %rev.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %166)
  %cmp = icmp ugt i8 %166, 1
  br i1 %cmp, label %if.end22.thread188, label %lor.lhs.false

if.end22.thread188:                               ; preds = %lo_txctl_register_table.exit
  call void @__sanitizer_cov_trace_pc() #8
  %max_lb_gain189 = getelementptr inbounds %struct.b43_phy_g, ptr %2, i32 0, i32 18
  %167 = ptrtoint ptr %max_lb_gain189 to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %max_lb_gain189, align 4
  %conv20190202 = zext i16 %168 to i32
  %add21191 = add nsw i32 %max_rx_gain.0, %conv20190202
  br label %lor.end

lor.lhs.false:                                    ; preds = %lo_txctl_register_table.exit
  %gmode = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 4
  %169 = ptrtoint ptr %gmode to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %gmode, align 2, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %170)
  %tobool17.not = icmp eq i8 %170, 0
  br i1 %tobool17.not, label %lor.lhs.false.lor.rhs_crit_edge, label %if.end22

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs

if.end22:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %max_lb_gain = getelementptr inbounds %struct.b43_phy_g, ptr %2, i32 0, i32 18
  %171 = ptrtoint ptr %max_lb_gain to i32
  call void @__asan_load2_noabort(i32 %171)
  %172 = load i16, ptr %max_lb_gain, align 4
  %conv20203 = zext i16 %172 to i32
  %add21 = add nsw i32 %max_rx_gain.0, %conv20203
  br label %lor.rhs

lor.rhs:                                          ; preds = %if.end22, %lor.lhs.false.lor.rhs_crit_edge
  %max_rx_gain.1184 = phi i32 [ %add21, %if.end22 ], [ %max_rx_gain.0, %lor.lhs.false.lor.rhs_crit_edge ]
  %173 = ptrtoint ptr %gmode to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %gmode, align 2, !range !32
  %175 = zext i8 %174 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end22.thread188
  %max_rx_gain.1185 = phi i32 [ %max_rx_gain.1184, %lor.rhs ], [ %add21191, %if.end22.thread188 ]
  %176 = phi i32 [ %175, %lor.rhs ], [ 1, %if.end22.thread188 ]
  %conv23187 = trunc i32 %max_rx_gain.1185 to i16
  tail call fastcc void @lo_measure_gain_values(ptr noundef %dev, i16 noundef signext %conv23187, i32 noundef %176)
  %177 = ptrtoint ptr %bbatt to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %bbatt, align 1
  %conv32 = zext i8 %178 to i16
  tail call void @b43_gphy_set_baseband_attenuation(ptr noundef %dev, i16 noundef zeroext %conv32) #6
  %179 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %0, align 4
  %181 = ptrtoint ptr %rev.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %rev.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %182)
  %cmp.i101 = icmp ugt i8 %182, 1
  br i1 %cmp.i101, label %lor.end.if.then13.i_crit_edge, label %lor.lhs.false.i

lor.end.if.then13.i_crit_edge:                    ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then13.i

lor.lhs.false.i:                                  ; preds = %lor.end
  %gmode.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 4
  %183 = ptrtoint ptr %gmode.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %gmode.i, align 2, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %184)
  %tobool.not.i102 = icmp eq i8 %184, 0
  br i1 %tobool.not.i102, label %lor.lhs.false.i.if.end14.i_crit_edge, label %lor.lhs.false.i.if.then13.i_crit_edge

lor.lhs.false.i.if.then13.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then13.i

lor.lhs.false.i.if.end14.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14.i

if.then13.i:                                      ; preds = %lor.lhs.false.i.if.then13.i_crit_edge, %lor.end.if.then13.i_crit_edge
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then13.i, %lor.lhs.false.i.if.end14.i_crit_edge
  %d.sroa.12.0201.i = phi i32 [ 3, %if.then13.i ], [ 1, %lor.lhs.false.i.if.end14.i_crit_edge ]
  %max_repeat.0.i = phi i32 [ 4, %if.then13.i ], [ 1, %lor.lhs.false.i.if.end14.i_crit_edge ]
  %wl.i.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %lna_gain.i = getelementptr inbounds %struct.b43_phy_g, ptr %180, i32 0, i32 21
  %pga_gain.i = getelementptr inbounds %struct.b43_phy_g, ptr %180, i32 0, i32 22
  %trsw_rx_gain.i = getelementptr inbounds %struct.b43_phy_g, ptr %180, i32 0, i32 19
  %gmode.i.i103 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 4
  br label %do.body.i

do.body.i:                                        ; preds = %lor.end.i.do.body.i_crit_edge, %if.end14.i
  %max_rx_gain.2 = phi i32 [ %max_rx_gain.1185, %if.end14.i ], [ %max_rx_gain.6, %lor.end.i.do.body.i_crit_edge ]
  %d.sroa.25.0.i = phi i16 [ 0, %if.end14.i ], [ %d.sroa.25.2.i, %lor.end.i.do.body.i_crit_edge ]
  %d.sroa.12.1.i = phi i32 [ %d.sroa.12.0201.i, %if.end14.i ], [ %d.sroa.12.2234.i, %lor.end.i.do.body.i_crit_edge ]
  %d.sroa.7.0.i = phi i32 [ 0, %if.end14.i ], [ %d.sroa.7.2.i, %lor.end.i.do.body.i_crit_edge ]
  %repeat_cnt.0.i = phi i32 [ 0, %if.end14.i ], [ %inc141.i, %lor.end.i.do.body.i_crit_edge ]
  %d.sroa.25.14.extract.shift188.i = lshr i16 %d.sroa.25.0.i, 8
  %d.sroa.25.14.extract.trunc189.i = zext i16 %d.sroa.25.14.extract.shift188.i to i32
  %sext241.i = shl nuw i32 %d.sroa.25.14.extract.trunc189.i, 24
  %conv.i.i = ashr exact i32 %sext241.i, 24
  %185 = tail call i32 @llvm.abs.i32(i32 %conv.i.i, i1 true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %185)
  %cmp5.i.i104 = icmp ugt i32 %185, 16
  %d.sroa.25.15.extract.trunc.i = trunc i16 %d.sroa.25.0.i to i8
  %186 = tail call i8 @llvm.abs.i8(i8 %d.sroa.25.15.extract.trunc.i, i1 false) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %186)
  %cmp19.i.i = icmp ugt i8 %186, 16
  %or.cond242.i = select i1 %cmp5.i.i104, i1 true, i1 %cmp19.i.i
  br i1 %or.cond242.i, label %if.then.i.i, label %if.end.i.i105, !prof !33

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %187 = ptrtoint ptr %wl.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %wl.i.i, align 4
  %d.sroa.25.15.extract.trunc196.i = zext i16 %d.sroa.25.0.i to i32
  %sext.i = shl i32 %d.sroa.25.15.extract.trunc196.i, 24
  %conv25.i.i = ashr exact i32 %sext.i, 24
  tail call void (ptr, ptr, ...) @b43dbg(ptr noundef %188, ptr noundef nonnull @.str.7, i32 noundef %conv.i.i, i32 noundef %conv25.i.i) #6
  tail call void @dump_stack() #9
  br label %b43_lo_write.exit.i

if.end.i.i105:                                    ; preds = %do.body.i
  %189 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %190)
  %cmp27.not.i.i = icmp eq i8 %190, 2
  br i1 %cmp27.not.i.i, label %if.end.i.i105.if.end47.i.i_crit_edge, label %do.end.i.i, !prof !34

if.end.i.i105.if.end47.i.i_crit_edge:             ; preds = %if.end.i.i105
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47.i.i

do.end.i.i:                                       ; preds = %if.end.i.i105
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 58, i32 noundef 9, ptr noundef null) #6
  br label %if.end47.i.i

if.end47.i.i:                                     ; preds = %do.end.i.i, %if.end.i.i105.if.end47.i.i_crit_edge
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2064, i16 noundef zeroext %d.sroa.25.0.i) #6
  br label %b43_lo_write.exit.i

b43_lo_write.exit.i:                              ; preds = %if.end47.i.i, %if.then.i.i
  %191 = ptrtoint ptr %lna_gain.i to i32
  call void @__asan_load2_noabort(i32 %191)
  %192 = load i16, ptr %lna_gain.i, align 2
  %193 = ptrtoint ptr %pga_gain.i to i32
  call void @__asan_load2_noabort(i32 %193)
  %194 = load i16, ptr %pga_gain.i, align 4
  %195 = ptrtoint ptr %trsw_rx_gain.i to i32
  call void @__asan_load2_noabort(i32 %195)
  %196 = load i16, ptr %trsw_rx_gain.i, align 2
  %call.i106 = tail call fastcc zeroext i16 @lo_measure_feedthrough(ptr noundef %dev, i16 noundef zeroext %192, i16 noundef zeroext %194, i16 noundef zeroext %196) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 600, i16 %call.i106)
  %cmp17.i = icmp ult i16 %call.i106, 600
  br i1 %cmp17.i, label %if.then19.i, label %b43_lo_write.exit.i.if.end30.i_crit_edge

b43_lo_write.exit.i.if.end30.i_crit_edge:         ; preds = %b43_lo_write.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30.i

if.then19.i:                                      ; preds = %b43_lo_write.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 299, i16 %call.i106)
  %cmp21.i = icmp ugt i16 %call.i106, 299
  %..i107 = select i1 %cmp21.i, i32 6, i32 3
  %add24.i = add i32 %..i107, %max_rx_gain.2
  %197 = ptrtoint ptr %lna_gain.i to i32
  call void @__asan_load2_noabort(i32 %197)
  %198 = load i16, ptr %lna_gain.i, align 2
  %199 = ptrtoint ptr %pga_gain.i to i32
  call void @__asan_load2_noabort(i32 %199)
  %200 = load i16, ptr %pga_gain.i, align 4
  %201 = ptrtoint ptr %trsw_rx_gain.i to i32
  call void @__asan_load2_noabort(i32 %201)
  %202 = load i16, ptr %trsw_rx_gain.i, align 2
  %call29.i = tail call fastcc zeroext i16 @lo_measure_feedthrough(ptr noundef %dev, i16 noundef zeroext %198, i16 noundef zeroext %200, i16 noundef zeroext %202) #6
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then19.i, %b43_lo_write.exit.i.if.end30.i_crit_edge
  %max_rx_gain.3 = phi i32 [ %add24.i, %if.then19.i ], [ %max_rx_gain.2, %b43_lo_write.exit.i.if.end30.i_crit_edge ]
  %feedth.0.i = phi i16 [ %call29.i, %if.then19.i ], [ %call.i106, %b43_lo_write.exit.i.if.end30.i_crit_edge ]
  %203 = trunc i32 %d.sroa.12.1.i to i8
  %204 = add i32 %d.sroa.7.0.i, 1
  %smax.i = tail call i32 @llvm.smax.i32(i32 %204, i32 24) #6
  br label %do.body31.i

do.body31.i:                                      ; preds = %if.end79.i.do.body31.i_crit_edge, %if.end30.i
  %d.sroa.25.1.i = phi i16 [ %d.sroa.25.0.i, %if.end30.i ], [ %probe_loctl.sroa.0.0.insert.insert.i, %if.end79.i.do.body31.i_crit_edge ]
  %d.sroa.19.0.i = phi i16 [ %feedth.0.i, %if.end30.i ], [ %d.sroa.19.3223.i, %if.end79.i.do.body31.i_crit_edge ]
  %d.sroa.7.1.i = phi i32 [ %d.sroa.7.0.i, %if.end30.i ], [ %inc.i, %if.end79.i.do.body31.i_crit_edge ]
  %d.sroa.0.0.i = phi i32 [ 0, %if.end30.i ], [ %i.0.i248.i, %if.end79.i.do.body31.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %d.sroa.0.0.i)
  %205 = icmp ult i32 %d.sroa.0.0.i, 9
  br i1 %205, label %if.end54.i, label %if.end54.thread.i, !prof !34

if.end54.thread.i:                                ; preds = %do.body31.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 684, i32 noundef 9, ptr noundef null) #6
  %probe_loctl.sroa.0.0.extract.shift204.i = lshr i16 %d.sroa.25.1.i, 8
  %probe_loctl.sroa.0.0.extract.trunc205.i = trunc i16 %probe_loctl.sroa.0.0.extract.shift204.i to i8
  %probe_loctl.sroa.8.0.extract.trunc206.i = trunc i16 %d.sroa.25.1.i to i8
  %206 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %0, align 4
  br label %if.else.i.i110

if.end54.i:                                       ; preds = %do.body31.i
  %probe_loctl.sroa.0.0.extract.shift.i = lshr i16 %d.sroa.25.1.i, 8
  %probe_loctl.sroa.0.0.extract.trunc.i = trunc i16 %probe_loctl.sroa.0.0.extract.shift.i to i8
  %probe_loctl.sroa.8.0.extract.trunc.i = trunc i16 %d.sroa.25.1.i to i8
  %208 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %d.sroa.0.0.i)
  %cmp.i.i108 = icmp eq i32 %d.sroa.0.0.i, 0
  br i1 %cmp.i.i108, label %if.end54.i..thread.i.i_crit_edge, label %if.end54.i.if.else.i.i110_crit_edge

if.end54.i.if.else.i.i110_crit_edge:              ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i.i110

if.end54.i..thread.i.i_crit_edge:                 ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %.thread.i.i

if.else.i.i110:                                   ; preds = %if.end54.i.if.else.i.i110_crit_edge, %if.end54.thread.i
  %210 = phi ptr [ %207, %if.end54.thread.i ], [ %209, %if.end54.i.if.else.i.i110_crit_edge ]
  %probe_loctl.sroa.8.0.extract.trunc211.i = phi i8 [ %probe_loctl.sroa.8.0.extract.trunc206.i, %if.end54.thread.i ], [ %probe_loctl.sroa.8.0.extract.trunc.i, %if.end54.i.if.else.i.i110_crit_edge ]
  %probe_loctl.sroa.0.0.extract.trunc208.i = phi i8 [ %probe_loctl.sroa.0.0.extract.trunc205.i, %if.end54.thread.i ], [ %probe_loctl.sroa.0.0.extract.trunc.i, %if.end54.i.if.else.i.i110_crit_edge ]
  %211 = and i32 %d.sroa.0.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %211)
  %cmp3.i.i = icmp eq i32 %211, 0
  %212 = xor i32 %211, -1
  %begin.0.i.i = add i32 %d.sroa.0.0.i, %212
  %end.0.v.i.i = select i1 %cmp3.i.i, i32 1, i32 2
  %end.0.i.i = add i32 %end.0.v.i.i, %d.sroa.0.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %begin.0.i.i)
  %cmp13.i.i = icmp slt i32 %begin.0.i.i, 1
  %add15.i.i = add i32 %begin.0.i.i, 8
  %213 = select i1 %cmp13.i.i, i32 %add15.i.i, i32 %begin.0.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %end.0.i.i)
  %cmp17.i.i = icmp sgt i32 %end.0.i.i, 8
  %sub19.i.i = add i32 %end.0.i.i, -8
  %spec.select.i.i109 = select i1 %cmp17.i.i, i32 %sub19.i.i, i32 %end.0.i.i
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %if.else.i.i110, %if.end54.i..thread.i.i_crit_edge
  %214 = phi ptr [ %209, %if.end54.i..thread.i.i_crit_edge ], [ %210, %if.else.i.i110 ]
  %probe_loctl.sroa.8.0.extract.trunc212.i = phi i8 [ %probe_loctl.sroa.8.0.extract.trunc.i, %if.end54.i..thread.i.i_crit_edge ], [ %probe_loctl.sroa.8.0.extract.trunc211.i, %if.else.i.i110 ]
  %probe_loctl.sroa.0.0.extract.trunc209.i = phi i8 [ %probe_loctl.sroa.0.0.extract.trunc.i, %if.end54.i..thread.i.i_crit_edge ], [ %probe_loctl.sroa.0.0.extract.trunc208.i, %if.else.i.i110 ]
  %215 = phi i32 [ 1, %if.end54.i..thread.i.i_crit_edge ], [ %213, %if.else.i.i110 ]
  %216 = phi i32 [ 8, %if.end54.i..thread.i.i_crit_edge ], [ %spec.select.i.i109, %if.else.i.i110 ]
  %lna_gain.i.i = getelementptr inbounds %struct.b43_phy_g, ptr %214, i32 0, i32 21
  %pga_gain.i.i = getelementptr inbounds %struct.b43_phy_g, ptr %214, i32 0, i32 22
  %trsw_rx_gain.i.i = getelementptr inbounds %struct.b43_phy_g, ptr %214, i32 0, i32 19
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %d.sroa.7.1.i)
  %cmp105.i.i = icmp slt i32 %d.sroa.7.1.i, 2
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %if.end121.i.i, %.thread.i.i
  %d.sroa.19.1.i = phi i16 [ %d.sroa.19.0.i, %.thread.i.i ], [ %d.sroa.19.2.i, %if.end121.i.i ]
  %probe_loctl.sroa.8.0.i = phi i8 [ %probe_loctl.sroa.8.0.extract.trunc212.i, %.thread.i.i ], [ %probe_loctl.sroa.8.1.i, %if.end121.i.i ]
  %probe_loctl.sroa.0.0.i = phi i8 [ %probe_loctl.sroa.0.0.extract.trunc209.i, %.thread.i.i ], [ %probe_loctl.sroa.0.1.i, %if.end121.i.i ]
  %prev_loctl.sroa.5.0.i.i = phi i8 [ -100, %.thread.i.i ], [ %conv59.i176.i, %if.end121.i.i ]
  %prev_loctl.sroa.0.0.i.i = phi i8 [ -100, %.thread.i.i ], [ %conv50.i.i, %if.end121.i.i ]
  %i.0.i.i = phi i32 [ %215, %.thread.i.i ], [ %i.1.i.i, %if.end121.i.i ]
  %found_lower.0.i.i = phi i32 [ 0, %.thread.i.i ], [ %found_lower.1.i.i, %if.end121.i.i ]
  %217 = add i32 %i.0.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %217)
  %218 = icmp ult i32 %217, 8
  br i1 %218, label %while.cond.i.i.if.end38.i.i_crit_edge, label %do.end.i174.i, !prof !34

while.cond.i.i.if.end38.i.i_crit_edge:            ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38.i.i

do.end.i174.i:                                    ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 610, i32 noundef 9, ptr noundef null) #6
  br label %if.end38.i.i

if.end38.i.i:                                     ; preds = %do.end.i174.i, %while.cond.i.i.if.end38.i.i_crit_edge
  %arrayidx.i.i = getelementptr [8 x %struct.b43_loctl], ptr @lo_probe_possible_loctls.modifiers, i32 0, i32 %217
  %219 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %arrayidx.i.i, align 1
  %221 = mul i8 %220, %203
  %conv50.i.i = add i8 %221, %probe_loctl.sroa.0.0.extract.trunc209.i
  %q.i175.i = getelementptr [8 x %struct.b43_loctl], ptr @lo_probe_possible_loctls.modifiers, i32 0, i32 %217, i32 1
  %222 = ptrtoint ptr %q.i175.i to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %q.i175.i, align 1
  %224 = mul i8 %223, %203
  %conv59.i176.i = add i8 %224, %probe_loctl.sroa.8.0.extract.trunc212.i
  call void @__sanitizer_cov_trace_cmp1(i8 %conv50.i.i, i8 %prev_loctl.sroa.0.0.i.i)
  %cmp64.not.i.i = icmp eq i8 %conv50.i.i, %prev_loctl.sroa.0.0.i.i
  call void @__sanitizer_cov_trace_cmp1(i8 %conv59.i176.i, i8 %prev_loctl.sroa.5.0.i.i)
  %cmp70.not.i.i = icmp eq i8 %conv59.i176.i, %prev_loctl.sroa.5.0.i.i
  %or.cond.i.i111 = select i1 %cmp64.not.i.i, i1 %cmp70.not.i.i, i1 false
  br i1 %or.cond.i.i111, label %if.end38.i.i.if.end117.i.i_crit_edge, label %land.lhs.true.i.i112

if.end38.i.i.if.end117.i.i_crit_edge:             ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end117.i.i

land.lhs.true.i.i112:                             ; preds = %if.end38.i.i
  %conv74.i.i = sext i8 %conv50.i.i to i32
  %225 = tail call i32 @llvm.abs.i32(i32 %conv74.i.i, i1 true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %225)
  %cmp80.i.i = icmp ult i32 %225, 17
  br i1 %cmp80.i.i, label %land.lhs.true82.i.i, label %land.lhs.true.i.i112.if.end117.i.i_crit_edge

land.lhs.true.i.i112.if.end117.i.i_crit_edge:     ; preds = %land.lhs.true.i.i112
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end117.i.i

land.lhs.true82.i.i:                              ; preds = %land.lhs.true.i.i112
  %conv86.i.i = sext i8 %conv59.i176.i to i32
  %226 = tail call i32 @llvm.abs.i32(i32 %conv86.i.i, i1 true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %226)
  %cmp96.i.i = icmp ult i32 %226, 17
  br i1 %cmp96.i.i, label %if.then98.i.i, label %land.lhs.true82.i.i.if.end117.i.i_crit_edge

land.lhs.true82.i.i.if.end117.i.i_crit_edge:      ; preds = %land.lhs.true82.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end117.i.i

if.then98.i.i:                                    ; preds = %land.lhs.true82.i.i
  %227 = tail call i8 @llvm.abs.i8(i8 %conv59.i176.i, i1 false) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %227)
  %cmp19.i.i.i = icmp ugt i8 %227, 16
  br i1 %cmp19.i.i.i, label %if.then.i.i.i113, label %if.end.i.i.i, !prof !33

if.then.i.i.i113:                                 ; preds = %if.then98.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %228 = ptrtoint ptr %wl.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %wl.i.i, align 4
  tail call void (ptr, ptr, ...) @b43dbg(ptr noundef %229, ptr noundef nonnull @.str.7, i32 noundef %conv74.i.i, i32 noundef %conv86.i.i) #6
  tail call void @dump_stack() #9
  br label %b43_lo_write.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then98.i.i
  %230 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %231)
  %cmp27.not.i.i.i = icmp eq i8 %231, 2
  br i1 %cmp27.not.i.i.i, label %if.end.i.i.i.if.end47.i.i.i_crit_edge, label %do.end.i.i.i, !prof !34

if.end.i.i.i.if.end47.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47.i.i.i

do.end.i.i.i:                                     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 58, i32 noundef 9, ptr noundef null) #6
  br label %if.end47.i.i.i

if.end47.i.i.i:                                   ; preds = %do.end.i.i.i, %if.end.i.i.i.if.end47.i.i.i_crit_edge
  %conv58.i.i.i = zext i8 %conv50.i.i to i16
  %shl.i.i.i = shl nuw i16 %conv58.i.i.i, 8
  %conv59.i.i.i = zext i8 %conv59.i176.i to i16
  %or.i.i.i = or i16 %shl.i.i.i, %conv59.i.i.i
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2064, i16 noundef zeroext %or.i.i.i) #6
  br label %b43_lo_write.exit.i.i

b43_lo_write.exit.i.i:                            ; preds = %if.end47.i.i.i, %if.then.i.i.i113
  %232 = ptrtoint ptr %lna_gain.i.i to i32
  call void @__asan_load2_noabort(i32 %232)
  %233 = load i16, ptr %lna_gain.i.i, align 2
  %234 = ptrtoint ptr %pga_gain.i.i to i32
  call void @__asan_load2_noabort(i32 %234)
  %235 = load i16, ptr %pga_gain.i.i, align 4
  %236 = ptrtoint ptr %trsw_rx_gain.i.i to i32
  call void @__asan_load2_noabort(i32 %236)
  %237 = load i16, ptr %trsw_rx_gain.i.i, align 2
  %call.i.i114 = tail call fastcc zeroext i16 @lo_measure_feedthrough(ptr noundef %dev, i16 noundef zeroext %233, i16 noundef zeroext %235, i16 noundef zeroext %237) #6
  call void @__sanitizer_cov_trace_cmp2(i16 %call.i.i114, i16 %d.sroa.19.1.i)
  %cmp101.i.i = icmp ult i16 %call.i.i114, %d.sroa.19.1.i
  br i1 %cmp101.i.i, label %if.then103.i.i, label %b43_lo_write.exit.i.i.if.end117.i.i_crit_edge

b43_lo_write.exit.i.i.if.end117.i.i_crit_edge:    ; preds = %b43_lo_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end117.i.i

if.then103.i.i:                                   ; preds = %b43_lo_write.exit.i.i
  br i1 %cmp105.i.i, label %land.lhs.true107.i.i, label %if.then103.i.i.if.end117.i.i_crit_edge

if.then103.i.i.if.end117.i.i_crit_edge:           ; preds = %if.then103.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end117.i.i

land.lhs.true107.i.i:                             ; preds = %if.then103.i.i
  %238 = ptrtoint ptr %rev.i to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %rev.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %239)
  %cmp109.i.i = icmp ugt i8 %239, 1
  br i1 %cmp109.i.i, label %land.lhs.true107.i.i.if.end117.i.i_crit_edge, label %lor.lhs.false111.i.i

land.lhs.true107.i.i.if.end117.i.i_crit_edge:     ; preds = %land.lhs.true107.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end117.i.i

lor.lhs.false111.i.i:                             ; preds = %land.lhs.true107.i.i
  %240 = ptrtoint ptr %gmode.i.i103 to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %gmode.i.i103, align 2, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %241)
  %tobool112.not.i.i = icmp eq i8 %241, 0
  br i1 %tobool112.not.i.i, label %lor.lhs.false111.i.i.if.end65.i_crit_edge, label %lor.lhs.false111.i.i.if.end117.i.i_crit_edge

lor.lhs.false111.i.i.if.end117.i.i_crit_edge:     ; preds = %lor.lhs.false111.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end117.i.i

lor.lhs.false111.i.i.if.end65.i_crit_edge:        ; preds = %lor.lhs.false111.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65.i

if.end117.i.i:                                    ; preds = %lor.lhs.false111.i.i.if.end117.i.i_crit_edge, %land.lhs.true107.i.i.if.end117.i.i_crit_edge, %if.then103.i.i.if.end117.i.i_crit_edge, %b43_lo_write.exit.i.i.if.end117.i.i_crit_edge, %land.lhs.true82.i.i.if.end117.i.i_crit_edge, %land.lhs.true.i.i112.if.end117.i.i_crit_edge, %if.end38.i.i.if.end117.i.i_crit_edge
  %d.sroa.19.2.i = phi i16 [ %d.sroa.19.1.i, %if.end38.i.i.if.end117.i.i_crit_edge ], [ %call.i.i114, %land.lhs.true107.i.i.if.end117.i.i_crit_edge ], [ %call.i.i114, %lor.lhs.false111.i.i.if.end117.i.i_crit_edge ], [ %call.i.i114, %if.then103.i.i.if.end117.i.i_crit_edge ], [ %d.sroa.19.1.i, %b43_lo_write.exit.i.i.if.end117.i.i_crit_edge ], [ %d.sroa.19.1.i, %land.lhs.true82.i.i.if.end117.i.i_crit_edge ], [ %d.sroa.19.1.i, %land.lhs.true.i.i112.if.end117.i.i_crit_edge ]
  %probe_loctl.sroa.8.1.i = phi i8 [ %probe_loctl.sroa.8.0.i, %if.end38.i.i.if.end117.i.i_crit_edge ], [ %conv59.i176.i, %land.lhs.true107.i.i.if.end117.i.i_crit_edge ], [ %conv59.i176.i, %lor.lhs.false111.i.i.if.end117.i.i_crit_edge ], [ %conv59.i176.i, %if.then103.i.i.if.end117.i.i_crit_edge ], [ %probe_loctl.sroa.8.0.i, %b43_lo_write.exit.i.i.if.end117.i.i_crit_edge ], [ %probe_loctl.sroa.8.0.i, %land.lhs.true82.i.i.if.end117.i.i_crit_edge ], [ %probe_loctl.sroa.8.0.i, %land.lhs.true.i.i112.if.end117.i.i_crit_edge ]
  %probe_loctl.sroa.0.1.i = phi i8 [ %probe_loctl.sroa.0.0.i, %if.end38.i.i.if.end117.i.i_crit_edge ], [ %conv50.i.i, %land.lhs.true107.i.i.if.end117.i.i_crit_edge ], [ %conv50.i.i, %lor.lhs.false111.i.i.if.end117.i.i_crit_edge ], [ %conv50.i.i, %if.then103.i.i.if.end117.i.i_crit_edge ], [ %probe_loctl.sroa.0.0.i, %b43_lo_write.exit.i.i.if.end117.i.i_crit_edge ], [ %probe_loctl.sroa.0.0.i, %land.lhs.true82.i.i.if.end117.i.i_crit_edge ], [ %probe_loctl.sroa.0.0.i, %land.lhs.true.i.i112.if.end117.i.i_crit_edge ]
  %found_lower.1.i.i = phi i32 [ %found_lower.0.i.i, %if.end38.i.i.if.end117.i.i_crit_edge ], [ 1, %land.lhs.true107.i.i.if.end117.i.i_crit_edge ], [ 1, %lor.lhs.false111.i.i.if.end117.i.i_crit_edge ], [ 1, %if.then103.i.i.if.end117.i.i_crit_edge ], [ %found_lower.0.i.i, %b43_lo_write.exit.i.i.if.end117.i.i_crit_edge ], [ %found_lower.0.i.i, %land.lhs.true82.i.i.if.end117.i.i_crit_edge ], [ %found_lower.0.i.i, %land.lhs.true.i.i112.if.end117.i.i_crit_edge ]
  %cmp118.i.i = icmp eq i32 %i.0.i.i, %216
  br i1 %cmp118.i.i, label %lo_probe_possible_loctls.exit.i, label %if.end121.i.i

if.end121.i.i:                                    ; preds = %if.end117.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %i.0.i.i)
  %cmp122.i.i = icmp eq i32 %i.0.i.i, 8
  %inc.i.i115 = add i32 %i.0.i.i, 1
  %i.1.i.i = select i1 %cmp122.i.i, i32 1, i32 %inc.i.i115
  br label %while.cond.i.i

lo_probe_possible_loctls.exit.i:                  ; preds = %if.end117.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %found_lower.1.i.i)
  %tobool63.not.i = icmp eq i32 %found_lower.1.i.i, 0
  br i1 %tobool63.not.i, label %lo_probe_possible_loctls.exit.i.do.end86.i_crit_edge, label %lo_probe_possible_loctls.exit.i.if.end65.i_crit_edge

lo_probe_possible_loctls.exit.i.if.end65.i_crit_edge: ; preds = %lo_probe_possible_loctls.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65.i

lo_probe_possible_loctls.exit.i.do.end86.i_crit_edge: ; preds = %lo_probe_possible_loctls.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end86.i

if.end65.i:                                       ; preds = %lo_probe_possible_loctls.exit.i.if.end65.i_crit_edge, %lor.lhs.false111.i.i.if.end65.i_crit_edge
  %i.0.i248.i = phi i32 [ %216, %lo_probe_possible_loctls.exit.i.if.end65.i_crit_edge ], [ %i.0.i.i, %lor.lhs.false111.i.i.if.end65.i_crit_edge ]
  %probe_loctl.sroa.0.2228.i = phi i8 [ %probe_loctl.sroa.0.1.i, %lo_probe_possible_loctls.exit.i.if.end65.i_crit_edge ], [ %conv50.i.i, %lor.lhs.false111.i.i.if.end65.i_crit_edge ]
  %probe_loctl.sroa.8.2226.i = phi i8 [ %probe_loctl.sroa.8.1.i, %lo_probe_possible_loctls.exit.i.if.end65.i_crit_edge ], [ %conv59.i176.i, %lor.lhs.false111.i.i.if.end65.i_crit_edge ]
  %d.sroa.19.3223.i = phi i16 [ %d.sroa.19.2.i, %lo_probe_possible_loctls.exit.i.if.end65.i_crit_edge ], [ %call.i.i114, %lor.lhs.false111.i.i.if.end65.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %probe_loctl.sroa.0.2228.i, i8 %probe_loctl.sroa.0.0.extract.trunc209.i)
  %cmp70.i = icmp eq i8 %probe_loctl.sroa.0.2228.i, %probe_loctl.sroa.0.0.extract.trunc209.i
  call void @__sanitizer_cov_trace_cmp1(i8 %probe_loctl.sroa.8.2226.i, i8 %probe_loctl.sroa.8.0.extract.trunc212.i)
  %cmp76.i116 = icmp eq i8 %probe_loctl.sroa.8.2226.i, %probe_loctl.sroa.8.0.extract.trunc212.i
  %or.cond.i = select i1 %cmp70.i, i1 %cmp76.i116, i1 false
  br i1 %or.cond.i, label %if.end65.i.do.end86.i_crit_edge, label %if.end79.i

if.end65.i.do.end86.i_crit_edge:                  ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end86.i

if.end79.i:                                       ; preds = %if.end65.i
  %probe_loctl.sroa.8.0.insert.ext.i = zext i8 %probe_loctl.sroa.8.2226.i to i16
  %probe_loctl.sroa.0.0.insert.ext.i = zext i8 %probe_loctl.sroa.0.2228.i to i16
  %probe_loctl.sroa.0.0.insert.shift.i = shl nuw i16 %probe_loctl.sroa.0.0.insert.ext.i, 8
  %probe_loctl.sroa.0.0.insert.insert.i = or i16 %probe_loctl.sroa.0.0.insert.shift.i, %probe_loctl.sroa.8.0.insert.ext.i
  %inc.i = add i32 %d.sroa.7.1.i, 1
  %cmp84.i = icmp slt i32 %inc.i, 24
  br i1 %cmp84.i, label %if.end79.i.do.body31.i_crit_edge, label %if.end79.i.do.end86.i_crit_edge

if.end79.i.do.end86.i_crit_edge:                  ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end86.i

if.end79.i.do.body31.i_crit_edge:                 ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body31.i

do.end86.i:                                       ; preds = %if.end79.i.do.end86.i_crit_edge, %if.end65.i.do.end86.i_crit_edge, %lo_probe_possible_loctls.exit.i.do.end86.i_crit_edge
  %d.sroa.19.3224.i = phi i16 [ %d.sroa.19.2.i, %lo_probe_possible_loctls.exit.i.do.end86.i_crit_edge ], [ %d.sroa.19.3223.i, %if.end79.i.do.end86.i_crit_edge ], [ %d.sroa.19.3223.i, %if.end65.i.do.end86.i_crit_edge ]
  %d.sroa.25.2.i = phi i16 [ %d.sroa.25.1.i, %lo_probe_possible_loctls.exit.i.do.end86.i_crit_edge ], [ %probe_loctl.sroa.0.0.insert.insert.i, %if.end79.i.do.end86.i_crit_edge ], [ %d.sroa.25.1.i, %if.end65.i.do.end86.i_crit_edge ]
  %d.sroa.7.2.i = phi i32 [ %d.sroa.7.1.i, %lo_probe_possible_loctls.exit.i.do.end86.i_crit_edge ], [ %smax.i, %if.end79.i.do.end86.i_crit_edge ], [ %d.sroa.7.1.i, %if.end65.i.do.end86.i_crit_edge ]
  %242 = ptrtoint ptr %rev.i to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %rev.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %243)
  %cmp90.i = icmp ugt i8 %243, 1
  br i1 %cmp90.i, label %do.end86.i.if.then96.i_crit_edge, label %lor.lhs.false92.i

do.end86.i.if.then96.i_crit_edge:                 ; preds = %do.end86.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then96.i

lor.lhs.false92.i:                                ; preds = %do.end86.i
  %244 = ptrtoint ptr %gmode.i.i103 to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %gmode.i.i103, align 2, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %245)
  %tobool94.not.i = icmp eq i8 %245, 0
  br i1 %tobool94.not.i, label %if.end131.thread.i, label %lor.lhs.false92.i.if.then96.i_crit_edge

lor.lhs.false92.i.if.then96.i_crit_edge:          ; preds = %lor.lhs.false92.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then96.i

if.end131.thread.i:                               ; preds = %lor.lhs.false92.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv132231.i = trunc i32 %max_rx_gain.3 to i16
  br label %lor.rhs.i

if.then96.i:                                      ; preds = %lor.lhs.false92.i.if.then96.i_crit_edge, %do.end86.i.if.then96.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 4500, i16 %d.sroa.19.3224.i)
  %cmp99.i = icmp ugt i16 %d.sroa.19.3224.i, 4500
  br i1 %cmp99.i, label %if.then96.i.if.end110.sink.split.i_crit_edge, label %if.else102.i

if.then96.i.if.end110.sink.split.i_crit_edge:     ; preds = %if.then96.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end110.sink.split.i

if.else102.i:                                     ; preds = %if.then96.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 1500, i16 %d.sroa.19.3224.i)
  %cmp105.i = icmp ult i16 %d.sroa.19.3224.i, 1500
  br i1 %cmp105.i, label %if.else102.i.if.end110.sink.split.i_crit_edge, label %if.else102.i.if.end110.i_crit_edge

if.else102.i.if.end110.i_crit_edge:               ; preds = %if.else102.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end110.i

if.else102.i.if.end110.sink.split.i_crit_edge:    ; preds = %if.else102.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end110.sink.split.i

if.end110.sink.split.i:                           ; preds = %if.else102.i.if.end110.sink.split.i_crit_edge, %if.then96.i.if.end110.sink.split.i_crit_edge
  %.sink255.i = phi i32 [ -6, %if.then96.i.if.end110.sink.split.i_crit_edge ], [ 3, %if.else102.i.if.end110.sink.split.i_crit_edge ]
  %add108.i = add i32 %.sink255.i, %max_rx_gain.3
  br label %if.end110.i

if.end110.i:                                      ; preds = %if.end110.sink.split.i, %if.else102.i.if.end110.i_crit_edge
  %max_rx_gain.4 = phi i32 [ %add108.i, %if.end110.sink.split.i ], [ %max_rx_gain.3, %if.else102.i.if.end110.i_crit_edge ]
  %246 = zext i32 %repeat_cnt.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %246, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %repeat_cnt.0.i, label %if.end110.i.if.end131.i_crit_edge [
    i32 0, label %if.then113.i
    i32 2, label %if.then127.i
  ]

if.end110.i.if.end131.i_crit_edge:                ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end131.i

if.then113.i:                                     ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 1501, i16 %d.sroa.19.3224.i)
  %cmp116.i = icmp ult i16 %d.sroa.19.3224.i, 1501
  %spec.select239.i = select i1 %cmp116.i, i32 1, i32 2
  %spec.select240.i = zext i1 %cmp116.i to i32
  br label %if.end131.i

if.then127.i:                                     ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end131.i

if.end131.i:                                      ; preds = %if.then127.i, %if.then113.i, %if.end110.i.if.end131.i_crit_edge
  %d.sroa.12.2.ph.i = phi i32 [ 1, %if.then127.i ], [ %d.sroa.12.1.i, %if.end110.i.if.end131.i_crit_edge ], [ %spec.select239.i, %if.then113.i ]
  %repeat_cnt.1.ph.i = phi i32 [ 2, %if.then127.i ], [ %repeat_cnt.0.i, %if.end110.i.if.end131.i_crit_edge ], [ %spec.select240.i, %if.then113.i ]
  %conv132.i = trunc i32 %max_rx_gain.4 to i16
  br i1 %cmp90.i, label %if.end131.i.lor.end.i_crit_edge, label %if.end131.i.lor.rhs.i_crit_edge

if.end131.i.lor.rhs.i_crit_edge:                  ; preds = %if.end131.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs.i

if.end131.i.lor.end.i_crit_edge:                  ; preds = %if.end131.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end.i

lor.rhs.i:                                        ; preds = %if.end131.i.lor.rhs.i_crit_edge, %if.end131.thread.i
  %max_rx_gain.5 = phi i32 [ %max_rx_gain.4, %if.end131.i.lor.rhs.i_crit_edge ], [ %max_rx_gain.3, %if.end131.thread.i ]
  %conv132237.i = phi i16 [ %conv132.i, %if.end131.i.lor.rhs.i_crit_edge ], [ %conv132231.i, %if.end131.thread.i ]
  %repeat_cnt.1235.i = phi i32 [ %repeat_cnt.1.ph.i, %if.end131.i.lor.rhs.i_crit_edge ], [ %repeat_cnt.0.i, %if.end131.thread.i ]
  %d.sroa.12.2233.i = phi i32 [ %d.sroa.12.2.ph.i, %if.end131.i.lor.rhs.i_crit_edge ], [ %d.sroa.12.1.i, %if.end131.thread.i ]
  %247 = ptrtoint ptr %gmode.i.i103 to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %gmode.i.i103, align 2, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %248)
  %tobool138.i = icmp ne i8 %248, 0
  br label %lor.end.i

lor.end.i:                                        ; preds = %lor.rhs.i, %if.end131.i.lor.end.i_crit_edge
  %max_rx_gain.6 = phi i32 [ %max_rx_gain.4, %if.end131.i.lor.end.i_crit_edge ], [ %max_rx_gain.5, %lor.rhs.i ]
  %conv132238.i = phi i16 [ %conv132.i, %if.end131.i.lor.end.i_crit_edge ], [ %conv132237.i, %lor.rhs.i ]
  %repeat_cnt.1236.i = phi i32 [ %repeat_cnt.1.ph.i, %if.end131.i.lor.end.i_crit_edge ], [ %repeat_cnt.1235.i, %lor.rhs.i ]
  %d.sroa.12.2234.i = phi i32 [ %d.sroa.12.2.ph.i, %if.end131.i.lor.end.i_crit_edge ], [ %d.sroa.12.2233.i, %lor.rhs.i ]
  %249 = phi i1 [ true, %if.end131.i.lor.end.i_crit_edge ], [ %tobool138.i, %lor.rhs.i ]
  %lor.ext.i = zext i1 %249 to i32
  tail call fastcc void @lo_measure_gain_values(ptr noundef %dev, i16 noundef signext %conv132238.i, i32 noundef %lor.ext.i) #6
  %inc141.i = add i32 %repeat_cnt.1236.i, 1
  %cmp142.i = icmp slt i32 %inc141.i, %max_repeat.0.i
  br i1 %cmp142.i, label %lor.end.i.do.body.i_crit_edge, label %lo_probe_loctls_statemachine.exit

lor.end.i.do.body.i_crit_edge:                    ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

lo_probe_loctls_statemachine.exit:                ; preds = %lor.end.i
  %loctl.sroa.0.0.extract.shift.le = lshr i16 %d.sroa.25.2.i, 8
  %loctl.sroa.0.0.extract.trunc.le = zext i16 %loctl.sroa.0.0.extract.shift.le to i32
  %loctl.sroa.8.0.extract.trunc.le = zext i16 %d.sroa.25.2.i to i32
  %250 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %0, align 4
  %252 = ptrtoint ptr %rev.i to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %rev.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %253)
  %cmp.i118 = icmp ugt i8 %253, 1
  br i1 %cmp.i118, label %if.then.i120, label %if.else.i121

if.then.i120:                                     ; preds = %lo_probe_loctls_statemachine.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 21, i16 noundef zeroext -7424) #6
  %pga_gain.i119 = getelementptr inbounds %struct.b43_phy_g, ptr %251, i32 0, i32 22
  %254 = ptrtoint ptr %pga_gain.i119 to i32
  call void @__asan_load2_noabort(i32 %254)
  %255 = load i16, ptr %pga_gain.i119, align 4
  %shl.i = shl i16 %255, 8
  %or.i = or i16 %shl.i, 160
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2066, i16 noundef zeroext %or.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %256 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %256(i32 noundef 1073740) #6
  %or8.i = or i16 %shl.i, 162
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2066, i16 noundef zeroext %or8.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %257 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %257(i32 noundef 429496) #6
  %258 = or i16 %shl.i, 163
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2066, i16 noundef zeroext %258) #6
  br label %if.end.i123

if.else.i121:                                     ; preds = %lo_probe_loctls_statemachine.exit
  call void @__sanitizer_cov_trace_pc() #8
  %pga_gain13.i = getelementptr inbounds %struct.b43_phy_g, ptr %251, i32 0, i32 22
  %259 = ptrtoint ptr %pga_gain13.i to i32
  call void @__asan_load2_noabort(i32 %259)
  %260 = load i16, ptr %pga_gain13.i, align 4
  %or15.i = or i16 %260, -4192
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 21, i16 noundef zeroext %or15.i) #6
  br label %if.end.i123

if.end.i123:                                      ; preds = %if.else.i121, %if.then.i120
  %261 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %262)
  %cmp18.i = icmp eq i8 %262, 2
  br i1 %cmp18.i, label %if.then20.i, label %if.end.i123.if.end35.i_crit_edge

if.end.i123.if.end35.i_crit_edge:                 ; preds = %if.end.i123
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35.i

if.then20.i:                                      ; preds = %if.end.i123
  call void @__sanitizer_cov_trace_pc() #8
  %263 = ptrtoint ptr %rev.i to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %rev.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %264)
  %cmp23.i = icmp ugt i8 %264, 2
  %..i124 = select i1 %cmp23.i, i16 -16264, i16 -32648
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 46, i16 noundef zeroext %..i124) #6
  %265 = ptrtoint ptr %rev.i to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %rev.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %266)
  %cmp30.i = icmp ugt i8 %266, 1
  %.sink151.i = select i1 %cmp30.i, i16 514, i16 257
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 47, i16 noundef zeroext %.sink151.i) #6
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then20.i, %if.end.i123.if.end35.i_crit_edge
  %267 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %dev, align 4
  %write16.i.i126 = getelementptr inbounds %struct.b43_bus_dev, ptr %268, i32 0, i32 9
  %269 = ptrtoint ptr %write16.i.i126 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %write16.i.i126, align 4
  tail call void %270(ptr noundef %268, i16 noundef zeroext 1012, i16 noundef zeroext %call.i.i) #6
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 21, i16 noundef zeroext %call49.i) #6
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 42, i16 noundef zeroext %call50.i) #6
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 53, i16 noundef zeroext %call51.i) #6
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 96, i16 noundef zeroext %call52.i) #6
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 67, i16 noundef zeroext %call47.i) #6
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 122, i16 noundef zeroext %call48.i) #6
  %271 = ptrtoint ptr %rev.i to i32
  call void @__asan_load1_noabort(i32 %271)
  %272 = load i8, ptr %rev.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %272)
  %cmp38.i = icmp ugt i8 %272, 1
  br i1 %cmp38.i, label %land.lhs.true.i134, label %if.end35.i.if.then47.i_crit_edge

if.end35.i.if.then47.i_crit_edge:                 ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then47.i

land.lhs.true.i134:                               ; preds = %if.end35.i
  %radio_ver.i133 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 11
  %273 = ptrtoint ptr %radio_ver.i133 to i32
  call void @__asan_load2_noabort(i32 %273)
  %274 = load i16, ptr %radio_ver.i133, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8272, i16 %274)
  %cmp41.i = icmp eq i16 %274, 8272
  br i1 %cmp41.i, label %land.lhs.true43.i, label %land.lhs.true.i134.if.then47.i_crit_edge

land.lhs.true.i134.if.then47.i_crit_edge:         ; preds = %land.lhs.true.i134
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then47.i

land.lhs.true43.i:                                ; preds = %land.lhs.true.i134
  %radio_rev.i135 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 12
  %275 = ptrtoint ptr %radio_rev.i135 to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %radio_rev.i135, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %276)
  %cmp45.i = icmp eq i8 %276, 8
  br i1 %cmp45.i, label %land.lhs.true43.i.if.end48.i_crit_edge, label %land.lhs.true43.i.if.then47.i_crit_edge

land.lhs.true43.i.if.then47.i_crit_edge:          ; preds = %land.lhs.true43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then47.i

land.lhs.true43.i.if.end48.i_crit_edge:           ; preds = %land.lhs.true43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48.i

if.then47.i:                                      ; preds = %land.lhs.true43.i.if.then47.i_crit_edge, %land.lhs.true.i134.if.then47.i_crit_edge, %if.end35.i.if.then47.i_crit_edge
  tail call void @b43_radio_maskset(ptr noundef %dev, i16 noundef zeroext 82, i16 noundef zeroext -241, i16 noundef zeroext %saved_regs.sroa.51.0) #6
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then47.i, %land.lhs.true43.i.if.end48.i_crit_edge
  %277 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %dev, align 4
  %write16.i150.i = getelementptr inbounds %struct.b43_bus_dev, ptr %278, i32 0, i32 9
  %279 = ptrtoint ptr %write16.i150.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %write16.i150.i, align 4
  tail call void %280(ptr noundef %278, i16 noundef zeroext 994, i16 noundef zeroext %call.i268.i) #6
  %281 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %281)
  %282 = load i8, ptr %type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %282)
  %cmp51.i = icmp eq i8 %282, 1
  br i1 %cmp51.i, label %land.lhs.true53.i, label %if.end48.i.if.end64.i_crit_edge

if.end48.i.if.end64.i_crit_edge:                  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64.i

land.lhs.true53.i:                                ; preds = %if.end48.i
  %radio_ver54.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 11
  %283 = ptrtoint ptr %radio_ver54.i to i32
  call void @__asan_load2_noabort(i32 %283)
  %284 = load i16, ptr %radio_ver54.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8272, i16 %284)
  %cmp56.i = icmp eq i16 %284, 8272
  br i1 %cmp56.i, label %land.lhs.true58.i, label %land.lhs.true53.i.if.end64.i_crit_edge

land.lhs.true53.i.if.end64.i_crit_edge:           ; preds = %land.lhs.true53.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64.i

land.lhs.true58.i:                                ; preds = %land.lhs.true53.i
  %radio_rev59.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 12
  %285 = ptrtoint ptr %radio_rev59.i to i32
  call void @__asan_load1_noabort(i32 %285)
  %286 = load i8, ptr %radio_rev59.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %286)
  %cmp61.i = icmp ult i8 %286, 6
  br i1 %cmp61.i, label %if.then63.i, label %land.lhs.true58.i.if.end64.i_crit_edge

land.lhs.true58.i.if.end64.i_crit_edge:           ; preds = %land.lhs.true58.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64.i

if.then63.i:                                      ; preds = %land.lhs.true58.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 48, i16 noundef zeroext %saved_regs.sroa.42.0) #6
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 6, i16 noundef zeroext %saved_regs.sroa.44.0) #6
  br label %if.end64.i

if.end64.i:                                       ; preds = %if.then63.i, %land.lhs.true58.i.if.end64.i_crit_edge, %land.lhs.true53.i.if.end64.i_crit_edge, %if.end48.i.if.end64.i_crit_edge
  %287 = ptrtoint ptr %rev.i to i32
  call void @__asan_load1_noabort(i32 %287)
  %288 = load i8, ptr %rev.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %288)
  %cmp67.i = icmp ugt i8 %288, 1
  br i1 %cmp67.i, label %if.then69.i, label %if.end64.i.if.end70.i_crit_edge

if.end64.i.if.end70.i_crit_edge:                  ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70.i

if.then69.i:                                      ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2068, i16 noundef zeroext %saved_regs.sroa.21.0) #6
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2069, i16 noundef zeroext %saved_regs.sroa.23.0) #6
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2050, i16 noundef zeroext %saved_regs.sroa.29.0) #6
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2065, i16 noundef zeroext %saved_regs.sroa.25.0) #6
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2066, i16 noundef zeroext %saved_regs.sroa.27.0) #6
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 62, i16 noundef zeroext %saved_regs.sroa.31.0) #6
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1065, i16 noundef zeroext %saved_regs.sroa.33.0) #6
  br label %if.end70.i

if.end70.i:                                       ; preds = %if.then69.i, %if.end64.i.if.end70.i_crit_edge
  %call.i147 = tail call zeroext i1 @b43_has_hardware_pctl(ptr noundef %dev) #6
  br i1 %call.i147, label %if.then71.i, label %if.end70.i.lo_measure_restore.exit_crit_edge

if.end70.i.lo_measure_restore.exit_crit_edge:     ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lo_measure_restore.exit

if.then71.i:                                      ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2063, i16 noundef zeroext %saved_regs.sroa.9.0) #6
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2049, i16 noundef zeroext %saved_regs.sroa.11.0) #6
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 96, i16 noundef zeroext %saved_regs.sroa.13.0) #6
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 20, i16 noundef zeroext %saved_regs.sroa.17.0) #6
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1144, i16 noundef zeroext %saved_regs.sroa.19.0) #6
  br label %lo_measure_restore.exit

lo_measure_restore.exit:                          ; preds = %if.then71.i, %if.end70.i.lo_measure_restore.exit_crit_edge
  %conv75.i = and i32 %4, 255
  tail call void @b43_gphy_channel_switch(ptr noundef %dev, i32 noundef %conv75.i, i1 noundef zeroext true) #6
  tail call void @b43_mac_enable(ptr noundef %dev) #6
  %call33 = tail call zeroext i1 @b43_debug(ptr noundef %dev, i32 noundef 5) #6
  br i1 %call33, label %if.then34, label %lo_measure_restore.exit.if.end44_crit_edge

lo_measure_restore.exit.if.end44_crit_edge:       ; preds = %lo_measure_restore.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.then34:                                        ; preds = %lo_measure_restore.exit
  call void @__sanitizer_cov_trace_pc() #8
  %289 = ptrtoint ptr %wl.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %wl.i.i, align 4
  %291 = ptrtoint ptr %bbatt to i32
  call void @__asan_load1_noabort(i32 %291)
  %292 = load i8, ptr %bbatt, align 1
  %conv36 = zext i8 %292 to i32
  %293 = ptrtoint ptr %rfatt to i32
  call void @__asan_load1_noabort(i32 %293)
  %294 = load i8, ptr %rfatt, align 1
  %conv38 = zext i8 %294 to i32
  %295 = ptrtoint ptr %with_padmix to i32
  call void @__asan_load1_noabort(i32 %295)
  %296 = load i8, ptr %with_padmix, align 1, !range !32
  %297 = zext i8 %296 to i32
  %sext = shl nuw i32 %loctl.sroa.0.0.extract.trunc.le, 24
  %conv42 = ashr exact i32 %sext, 24
  %sext193 = shl i32 %loctl.sroa.8.0.extract.trunc.le, 24
  %conv43 = ashr exact i32 %sext193, 24
  tail call void (ptr, ptr, ...) @b43dbg(ptr noundef %290, ptr noundef nonnull @.str.5, i32 noundef %conv36, i32 noundef %conv38, i32 noundef %297, i32 noundef %conv42, i32 noundef %conv43) #6
  br label %if.end44

if.end44:                                         ; preds = %if.then34, %lo_measure_restore.exit.if.end44_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %298 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %298, i32 noundef 3264, i32 noundef 20) #10
  %tobool46.not = icmp eq ptr %call7.i, null
  br i1 %tobool46.not, label %if.then47, label %if.end49

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  %299 = ptrtoint ptr %wl.i.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %wl.i.i, align 4
  tail call void (ptr, ptr, ...) @b43warn(ptr noundef %300, ptr noundef nonnull @.str.6) #6
  br label %cleanup

if.end49:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  %301 = ptrtoint ptr %bbatt to i32
  call void @__asan_load1_noabort(i32 %301)
  %302 = load i8, ptr %bbatt, align 1
  %303 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %303)
  store i8 %302, ptr %call7.i, align 8
  %rfatt51 = getelementptr inbounds %struct.b43_lo_calib, ptr %call7.i, i32 0, i32 1
  %304 = ptrtoint ptr %rfatt to i32
  call void @__asan_loadN_noabort(i32 %304, i32 2)
  %305 = load i16, ptr %rfatt, align 1
  %306 = ptrtoint ptr %rfatt51 to i32
  call void @__asan_storeN_noabort(i32 %306, i32 2)
  store i16 %305, ptr %rfatt51, align 1
  %ctl = getelementptr inbounds %struct.b43_lo_calib, ptr %call7.i, i32 0, i32 2
  %307 = ptrtoint ptr %ctl to i32
  call void @__asan_storeN_noabort(i32 %307, i32 2)
  store i16 %d.sroa.25.2.i, ptr %ctl, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %308 = load volatile i32, ptr @jiffies, align 128
  %calib_time = getelementptr inbounds %struct.b43_lo_calib, ptr %call7.i, i32 0, i32 3
  %309 = ptrtoint ptr %calib_time to i32
  call void @__asan_store4_noabort(i32 %309)
  store i32 %308, ptr %calib_time, align 8
  %list = getelementptr inbounds %struct.b43_lo_calib, ptr %call7.i, i32 0, i32 4
  %310 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %310)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.b43_lo_calib, ptr %call7.i, i32 0, i32 4, i32 1
  %311 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %311)
  store ptr %list, ptr %prev.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %if.then47
  ret ptr %call7.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_phy_write(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_mac_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_lo_g_adjust(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %rf = alloca %struct.b43_rfatt, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rf) #6
  %rfatt = getelementptr inbounds %struct.b43_phy_g, ptr %2, i32 0, i32 13
  %3 = ptrtoint ptr %rfatt to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %rfatt, align 2
  %5 = ptrtoint ptr %rf to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %rf, align 2
  %6 = trunc i16 %4 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %entry.b43_lo_fixup_rfatt.exit_crit_edge, label %if.end.i

entry.b43_lo_fixup_rfatt.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %b43_lo_fixup_rfatt.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %rf to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %rf, align 2
  %.off.i = add i8 %8, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.off.i)
  %switch.i = icmp ult i8 %.off.i, 3
  %spec.store.select = select i1 %switch.i, i8 %8, i8 4
  %9 = ptrtoint ptr %rf to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %spec.store.select, ptr %rf, align 2
  br label %b43_lo_fixup_rfatt.exit

b43_lo_fixup_rfatt.exit:                          ; preds = %if.end.i, %entry.b43_lo_fixup_rfatt.exit_crit_edge
  %bbatt = getelementptr inbounds %struct.b43_phy_g, ptr %2, i32 0, i32 12
  %lo_control.i = getelementptr inbounds %struct.b43_phy_g, ptr %2, i32 0, i32 17
  %10 = ptrtoint ptr %lo_control.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lo_control.i, align 4
  %calib_list.i.i = getelementptr inbounds %struct.b43_txpower_lo_control, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %calib_list.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn18.i.i = load ptr, ptr %calib_list.i.i, align 4
  %cmp.not20.i.i = icmp eq ptr %.pn18.i.i, %calib_list.i.i
  br i1 %cmp.not20.i.i, label %b43_lo_fixup_rfatt.exit.if.end.i8_crit_edge, label %for.body.lr.ph.i.i

b43_lo_fixup_rfatt.exit.if.end.i8_crit_edge:      ; preds = %b43_lo_fixup_rfatt.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i8

for.body.lr.ph.i.i:                               ; preds = %b43_lo_fixup_rfatt.exit
  %13 = ptrtoint ptr %bbatt to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bbatt, align 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %.pn21.i.i = phi ptr [ %.pn18.i.i, %for.body.lr.ph.i.i ], [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %c.022.i.i = getelementptr i8, ptr %.pn21.i.i, i32 -12
  %15 = ptrtoint ptr %c.022.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %c.022.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %16, i8 %14)
  %cmp.i.i.i = icmp eq i8 %16, %14
  br i1 %cmp.i.i.i, label %if.end.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %rfatt3.i.i = getelementptr i8, ptr %.pn21.i.i, i32 -11
  %17 = ptrtoint ptr %rfatt3.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %rfatt3.i.i, align 1
  %19 = ptrtoint ptr %rf to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %rf, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %20)
  %cmp.i17.i.i = icmp eq i8 %18, %20
  br i1 %cmp.i17.i.i, label %b43_compare_rfatt.exit.i.i, label %if.end.i.i.for.inc.i.i_crit_edge

if.end.i.i.for.inc.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

b43_compare_rfatt.exit.i.i:                       ; preds = %if.end.i.i
  %with_padmix.i.i.i = getelementptr i8, ptr %.pn21.i.i, i32 -10
  %21 = ptrtoint ptr %with_padmix.i.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %with_padmix.i.i.i, align 1, !range !32
  call void @__sanitizer_cov_trace_cmp1(i8 %22, i8 %6)
  %cmp8.i.i.i = icmp eq i8 %22, %6
  br i1 %cmp8.i.i.i, label %b43_find_lo_calib.exit.i, label %b43_compare_rfatt.exit.i.i.for.inc.i.i_crit_edge

b43_compare_rfatt.exit.i.i.for.inc.i.i_crit_edge: ; preds = %b43_compare_rfatt.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %b43_compare_rfatt.exit.i.i.for.inc.i.i_crit_edge, %if.end.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %23 = ptrtoint ptr %.pn21.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn.i.i = load ptr, ptr %.pn21.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %calib_list.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.if.end.i8_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.inc.i.i.if.end.i8_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i8

b43_find_lo_calib.exit.i:                         ; preds = %b43_compare_rfatt.exit.i.i
  %c.022.i.i.le = getelementptr i8, ptr %.pn21.i.i, i32 -12
  %tobool.not.i7 = icmp eq ptr %c.022.i.i.le, null
  br i1 %tobool.not.i7, label %b43_find_lo_calib.exit.i.if.end.i8_crit_edge, label %b43_find_lo_calib.exit.i.if.end_crit_edge

b43_find_lo_calib.exit.i.if.end_crit_edge:        ; preds = %b43_find_lo_calib.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

b43_find_lo_calib.exit.i.if.end.i8_crit_edge:     ; preds = %b43_find_lo_calib.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i8

if.end.i8:                                        ; preds = %b43_find_lo_calib.exit.i.if.end.i8_crit_edge, %for.inc.i.i.if.end.i8_crit_edge, %b43_lo_fixup_rfatt.exit.if.end.i8_crit_edge
  %call1.i = call fastcc ptr @b43_calibrate_lo_setting(ptr noundef %dev, ptr noundef %bbatt, ptr noundef nonnull %rf) #6
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.end.i8.cleanup_crit_edge, label %if.end4.i

if.end.i8.cleanup_crit_edge:                      ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i8
  %list.i = getelementptr inbounds %struct.b43_lo_calib, ptr %call1.i, i32 0, i32 4
  %24 = ptrtoint ptr %calib_list.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %calib_list.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %calib_list.i.i, ptr noundef %25) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end4.i.if.end_crit_edge

if.end4.i.if.end_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i.i.i:                                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %list.i, ptr %prev1.i.i.i, align 4
  %27 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %25, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.b43_lo_calib, ptr %call1.i, i32 0, i32 4, i32 1
  %28 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %calib_list.i.i, ptr %prev3.i.i.i, align 4
  %29 = ptrtoint ptr %calib_list.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %list.i, ptr %calib_list.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i.i.i, %if.end4.i.if.end_crit_edge, %b43_find_lo_calib.exit.i.if.end_crit_edge
  %retval.0.i.ph = phi ptr [ %call1.i, %if.end.i.i.i ], [ %call1.i, %if.end4.i.if.end_crit_edge ], [ %c.022.i.i.le, %b43_find_lo_calib.exit.i.if.end_crit_edge ]
  %ctl = getelementptr inbounds %struct.b43_lo_calib, ptr %retval.0.i.ph, i32 0, i32 2
  %30 = ptrtoint ptr %ctl to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %ctl, align 1
  %conv.i = sext i8 %31 to i32
  %32 = tail call i32 @llvm.abs.i32(i32 %conv.i, i1 true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %32)
  %cmp5.i = icmp ugt i32 %32, 16
  br i1 %cmp5.i, label %if.end.if.then.i_crit_edge, label %lor.rhs.i, !prof !31

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

lor.rhs.i:                                        ; preds = %if.end
  %q.i = getelementptr inbounds %struct.b43_lo_calib, ptr %retval.0.i.ph, i32 0, i32 2, i32 1
  %33 = ptrtoint ptr %q.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %q.i, align 1
  %35 = tail call i8 @llvm.abs.i8(i8 %34, i1 false) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %35)
  %cmp19.i = icmp ugt i8 %35, 16
  br i1 %cmp19.i, label %lor.rhs.i.if.then.i_crit_edge, label %if.end.i9, !prof !31

lor.rhs.i.if.then.i_crit_edge:                    ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.then.i:                                        ; preds = %lor.rhs.i.if.then.i_crit_edge, %if.end.if.then.i_crit_edge
  %wl.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %36 = ptrtoint ptr %wl.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %wl.i, align 4
  %q24.i = getelementptr inbounds %struct.b43_lo_calib, ptr %retval.0.i.ph, i32 0, i32 2, i32 1
  %38 = ptrtoint ptr %q24.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %q24.i, align 1
  %conv25.i = sext i8 %39 to i32
  tail call void (ptr, ptr, ...) @b43dbg(ptr noundef %37, ptr noundef nonnull @.str.7, i32 noundef %conv.i, i32 noundef %conv25.i) #6
  tail call void @dump_stack() #9
  br label %cleanup

if.end.i9:                                        ; preds = %lor.rhs.i
  %type.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 7
  %40 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %41)
  %cmp27.not.i = icmp eq i8 %41, 2
  br i1 %cmp27.not.i, label %if.end.i9.if.end47.i_crit_edge, label %do.end.i, !prof !34

if.end.i9.if.end47.i_crit_edge:                   ; preds = %if.end.i9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47.i

do.end.i:                                         ; preds = %if.end.i9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 58, i32 noundef 9, ptr noundef null) #6
  br label %if.end47.i

if.end47.i:                                       ; preds = %do.end.i, %if.end.i9.if.end47.i_crit_edge
  %42 = ptrtoint ptr %q.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %q.i, align 1
  %44 = ptrtoint ptr %ctl to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %ctl, align 1
  %conv58.i = zext i8 %45 to i16
  %shl.i = shl nuw i16 %conv58.i, 8
  %conv59.i = zext i8 %43 to i16
  %or.i = or i16 %shl.i, %conv59.i
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2064, i16 noundef zeroext %or.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end47.i, %if.then.i, %if.end.i8.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rf) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_lo_g_adjust_to(ptr noundef %dev, i16 noundef zeroext %rfatt, i16 noundef zeroext %bbatt, i16 noundef zeroext %tx_control) local_unnamed_addr #0 align 64 {
b43_lo_fixup_rfatt.exit:
  %rf = alloca %struct.b43_rfatt, align 2
  %bb = alloca %struct.b43_bbatt, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rf) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bb) #6
  %0 = ptrtoint ptr %rf to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %rf, align 2
  %conv = trunc i16 %rfatt to i8
  store i8 %conv, ptr %rf, align 2
  %conv1 = trunc i16 %bbatt to i8
  %1 = ptrtoint ptr %bb to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv1, ptr %bb, align 1
  %2 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %lo_control.i = getelementptr inbounds %struct.b43_phy_g, ptr %4, i32 0, i32 17
  %5 = ptrtoint ptr %lo_control.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lo_control.i, align 4
  %calib_list.i.i = getelementptr inbounds %struct.b43_txpower_lo_control, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %calib_list.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn18.i.i = load ptr, ptr %calib_list.i.i, align 4
  %cmp.not20.i.i = icmp eq ptr %.pn18.i.i, %calib_list.i.i
  br i1 %cmp.not20.i.i, label %b43_lo_fixup_rfatt.exit.if.end.i8_crit_edge, label %b43_lo_fixup_rfatt.exit.for.body.i.i_crit_edge

b43_lo_fixup_rfatt.exit.for.body.i.i_crit_edge:   ; preds = %b43_lo_fixup_rfatt.exit
  br label %for.body.i.i

b43_lo_fixup_rfatt.exit.if.end.i8_crit_edge:      ; preds = %b43_lo_fixup_rfatt.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i8

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %b43_lo_fixup_rfatt.exit.for.body.i.i_crit_edge
  %.pn21.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn18.i.i, %b43_lo_fixup_rfatt.exit.for.body.i.i_crit_edge ]
  %c.022.i.i = getelementptr i8, ptr %.pn21.i.i, i32 -12
  %8 = ptrtoint ptr %c.022.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %c.022.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %conv1)
  %cmp.i.i.i = icmp eq i8 %9, %conv1
  br i1 %cmp.i.i.i, label %if.end.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %rfatt3.i.i = getelementptr i8, ptr %.pn21.i.i, i32 -11
  %10 = ptrtoint ptr %rfatt3.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %rfatt3.i.i, align 1
  %12 = ptrtoint ptr %rf to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %rf, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %13)
  %cmp.i17.i.i = icmp eq i8 %11, %13
  br i1 %cmp.i17.i.i, label %b43_compare_rfatt.exit.i.i, label %if.end.i.i.for.inc.i.i_crit_edge

if.end.i.i.for.inc.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

b43_compare_rfatt.exit.i.i:                       ; preds = %if.end.i.i
  %with_padmix.i.i.i = getelementptr i8, ptr %.pn21.i.i, i32 -10
  %14 = ptrtoint ptr %with_padmix.i.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %with_padmix.i.i.i, align 1, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp8.i.i.i = icmp eq i8 %15, 0
  br i1 %cmp8.i.i.i, label %b43_find_lo_calib.exit.i, label %b43_compare_rfatt.exit.i.i.for.inc.i.i_crit_edge

b43_compare_rfatt.exit.i.i.for.inc.i.i_crit_edge: ; preds = %b43_compare_rfatt.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %b43_compare_rfatt.exit.i.i.for.inc.i.i_crit_edge, %if.end.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %16 = ptrtoint ptr %.pn21.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn.i.i = load ptr, ptr %.pn21.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %calib_list.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.if.end.i8_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.inc.i.i.if.end.i8_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i8

b43_find_lo_calib.exit.i:                         ; preds = %b43_compare_rfatt.exit.i.i
  %c.022.i.i.le = getelementptr i8, ptr %.pn21.i.i, i32 -12
  %tobool.not.i7 = icmp eq ptr %c.022.i.i.le, null
  br i1 %tobool.not.i7, label %b43_find_lo_calib.exit.i.if.end.i8_crit_edge, label %b43_find_lo_calib.exit.i.if.end_crit_edge

b43_find_lo_calib.exit.i.if.end_crit_edge:        ; preds = %b43_find_lo_calib.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

b43_find_lo_calib.exit.i.if.end.i8_crit_edge:     ; preds = %b43_find_lo_calib.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i8

if.end.i8:                                        ; preds = %b43_find_lo_calib.exit.i.if.end.i8_crit_edge, %for.inc.i.i.if.end.i8_crit_edge, %b43_lo_fixup_rfatt.exit.if.end.i8_crit_edge
  %call1.i = call fastcc ptr @b43_calibrate_lo_setting(ptr noundef %dev, ptr noundef nonnull %bb, ptr noundef nonnull %rf) #6
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.end.i8.cleanup_crit_edge, label %if.end4.i

if.end.i8.cleanup_crit_edge:                      ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i8
  %list.i = getelementptr inbounds %struct.b43_lo_calib, ptr %call1.i, i32 0, i32 4
  %17 = ptrtoint ptr %calib_list.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %calib_list.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %calib_list.i.i, ptr noundef %18) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end4.i.if.end_crit_edge

if.end4.i.if.end_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i.i.i:                                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %list.i, ptr %prev1.i.i.i, align 4
  %20 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %18, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.b43_lo_calib, ptr %call1.i, i32 0, i32 4, i32 1
  %21 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %calib_list.i.i, ptr %prev3.i.i.i, align 4
  %22 = ptrtoint ptr %calib_list.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %list.i, ptr %calib_list.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i.i.i, %if.end4.i.if.end_crit_edge, %b43_find_lo_calib.exit.i.if.end_crit_edge
  %retval.0.i.ph = phi ptr [ %call1.i, %if.end.i.i.i ], [ %call1.i, %if.end4.i.if.end_crit_edge ], [ %c.022.i.i.le, %b43_find_lo_calib.exit.i.if.end_crit_edge ]
  %ctl = getelementptr inbounds %struct.b43_lo_calib, ptr %retval.0.i.ph, i32 0, i32 2
  %23 = ptrtoint ptr %ctl to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %ctl, align 1
  %conv.i = sext i8 %24 to i32
  %25 = tail call i32 @llvm.abs.i32(i32 %conv.i, i1 true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %25)
  %cmp5.i = icmp ugt i32 %25, 16
  br i1 %cmp5.i, label %if.end.if.then.i_crit_edge, label %lor.rhs.i, !prof !31

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

lor.rhs.i:                                        ; preds = %if.end
  %q.i = getelementptr inbounds %struct.b43_lo_calib, ptr %retval.0.i.ph, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %q.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %q.i, align 1
  %28 = tail call i8 @llvm.abs.i8(i8 %27, i1 false) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %28)
  %cmp19.i = icmp ugt i8 %28, 16
  br i1 %cmp19.i, label %lor.rhs.i.if.then.i_crit_edge, label %if.end.i9, !prof !31

lor.rhs.i.if.then.i_crit_edge:                    ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.then.i:                                        ; preds = %lor.rhs.i.if.then.i_crit_edge, %if.end.if.then.i_crit_edge
  %wl.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %29 = ptrtoint ptr %wl.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %wl.i, align 4
  %q24.i = getelementptr inbounds %struct.b43_lo_calib, ptr %retval.0.i.ph, i32 0, i32 2, i32 1
  %31 = ptrtoint ptr %q24.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %q24.i, align 1
  %conv25.i = sext i8 %32 to i32
  tail call void (ptr, ptr, ...) @b43dbg(ptr noundef %30, ptr noundef nonnull @.str.7, i32 noundef %conv.i, i32 noundef %conv25.i) #6
  tail call void @dump_stack() #9
  br label %cleanup

if.end.i9:                                        ; preds = %lor.rhs.i
  %type.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 7
  %33 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %34)
  %cmp27.not.i = icmp eq i8 %34, 2
  br i1 %cmp27.not.i, label %if.end.i9.if.end47.i_crit_edge, label %do.end.i, !prof !34

if.end.i9.if.end47.i_crit_edge:                   ; preds = %if.end.i9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47.i

do.end.i:                                         ; preds = %if.end.i9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 58, i32 noundef 9, ptr noundef null) #6
  br label %if.end47.i

if.end47.i:                                       ; preds = %do.end.i, %if.end.i9.if.end47.i_crit_edge
  %35 = ptrtoint ptr %q.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %q.i, align 1
  %37 = ptrtoint ptr %ctl to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %ctl, align 1
  %conv58.i = zext i8 %38 to i16
  %shl.i = shl nuw i16 %conv58.i, 8
  %conv59.i = zext i8 %36 to i16
  %or.i = or i16 %shl.i, %conv59.i
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2064, i16 noundef zeroext %or.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end47.i, %if.then.i, %if.end.i8.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bb) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rf) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_lo_g_maintenance_work(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %lo_control = getelementptr inbounds %struct.b43_phy_g, ptr %2, i32 0, i32 17
  %3 = ptrtoint ptr %lo_control to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lo_control, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %call = tail call zeroext i1 @b43_has_hardware_pctl(ptr noundef %dev) #6
  br i1 %call, label %if.then3, label %if.end10

if.then3:                                         ; preds = %if.end
  %pwr_vec_read_time = getelementptr inbounds %struct.b43_txpower_lo_control, ptr %4, i32 0, i32 4
  %6 = ptrtoint ptr %pwr_vec_read_time to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pwr_vec_read_time, align 8
  %sub.neg = sub i32 2800, %5
  %sub4 = add i32 %sub.neg, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub4)
  %cmp = icmp slt i32 %sub4, 0
  br i1 %cmp, label %if.then5, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @lo_read_power_vector(ptr noundef %dev)
  tail call void @b43_gphy_dc_lt_init(ptr noundef %dev, i1 noundef zeroext false)
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %calib_list = getelementptr inbounds %struct.b43_txpower_lo_control, ptr %4, i32 0, i32 3
  %8 = ptrtoint ptr %calib_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %calib_list, align 8
  %cmp19.not164 = icmp eq ptr %9, %calib_list
  br i1 %cmp19.not164, label %if.end10.lor.lhs.false_crit_edge, label %for.body.lr.ph

if.end10.lor.lhs.false_crit_edge:                 ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false

for.body.lr.ph:                                   ; preds = %if.end10
  %sub11.neg = sub i32 2800, %5
  %bbatt24 = getelementptr inbounds %struct.b43_phy_g, ptr %2, i32 0, i32 12
  %rfatt26 = getelementptr inbounds %struct.b43_phy_g, ptr %2, i32 0, i32 13
  %with_padmix5.i = getelementptr inbounds %struct.b43_phy_g, ptr %2, i32 0, i32 13, i32 1
  %wl = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn.in166 = phi ptr [ %9, %for.body.lr.ph ], [ %.pn170, %for.inc.for.body_crit_edge ]
  %current_item_expired.0.off0165 = phi i1 [ false, %for.body.lr.ph ], [ %current_item_expired.2.off0, %for.inc.for.body_crit_edge ]
  %cal.0169 = getelementptr i8, ptr %.pn.in166, i32 -12
  %10 = ptrtoint ptr %.pn.in166 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn170 = load ptr, ptr %.pn.in166, align 4
  %calib_time = getelementptr i8, ptr %.pn.in166, i32 -4
  %11 = ptrtoint ptr %calib_time to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %calib_time, align 4
  %sub20 = add i32 %sub11.neg, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub20)
  %cmp21 = icmp slt i32 %sub20, 0
  br i1 %cmp21, label %if.end23, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end23:                                         ; preds = %for.body
  %13 = ptrtoint ptr %cal.0169 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %cal.0169, align 1
  %15 = ptrtoint ptr %bbatt24 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bbatt24, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %14, i8 %16)
  %cmp.i = icmp eq i8 %14, %16
  br i1 %cmp.i, label %land.lhs.true, label %if.end23.if.end53_crit_edge

if.end23.if.end53_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

land.lhs.true:                                    ; preds = %if.end23
  %rfatt = getelementptr i8, ptr %.pn.in166, i32 -11
  %17 = ptrtoint ptr %rfatt to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %rfatt, align 1
  %19 = ptrtoint ptr %rfatt26 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %rfatt26, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %20)
  %cmp.i153 = icmp eq i8 %18, %20
  br i1 %cmp.i153, label %b43_compare_rfatt.exit, label %land.lhs.true.if.end53_crit_edge

land.lhs.true.if.end53_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

b43_compare_rfatt.exit:                           ; preds = %land.lhs.true
  %with_padmix.i = getelementptr i8, ptr %.pn.in166, i32 -10
  %21 = ptrtoint ptr %with_padmix.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %with_padmix.i, align 1, !range !32
  %23 = ptrtoint ptr %with_padmix5.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %with_padmix5.i, align 1, !range !32
  call void @__sanitizer_cov_trace_cmp1(i8 %22, i8 %24)
  %cmp8.i = icmp ne i8 %22, %24
  %current_item_expired.0.off0.not = xor i1 %current_item_expired.0.off0165, true
  %brmerge = select i1 %cmp8.i, i1 true, i1 %current_item_expired.0.off0.not
  %not.cmp8.i = xor i1 %cmp8.i, true
  %current_item_expired.0.off0.mux = select i1 %not.cmp8.i, i1 true, i1 %current_item_expired.0.off0165
  br i1 %brmerge, label %b43_compare_rfatt.exit.if.end53_crit_edge, label %do.end, !prof !35

b43_compare_rfatt.exit.if.end53_crit_edge:        ; preds = %b43_compare_rfatt.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

do.end:                                           ; preds = %b43_compare_rfatt.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 957, i32 noundef 9, ptr noundef null) #6
  br label %if.end53

if.end53:                                         ; preds = %do.end, %b43_compare_rfatt.exit.if.end53_crit_edge, %land.lhs.true.if.end53_crit_edge, %if.end23.if.end53_crit_edge
  %current_item_expired.1.off0 = phi i1 [ %current_item_expired.0.off0.mux, %b43_compare_rfatt.exit.if.end53_crit_edge ], [ %current_item_expired.0.off0165, %if.end23.if.end53_crit_edge ], [ true, %do.end ], [ %current_item_expired.0.off0165, %land.lhs.true.if.end53_crit_edge ]
  %call54 = tail call zeroext i1 @b43_debug(ptr noundef %dev, i32 noundef 5) #6
  br i1 %call54, label %if.then55, label %if.end53.if.end66_crit_edge

if.end53.if.end66_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

if.then55:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %wl, align 4
  %27 = ptrtoint ptr %cal.0169 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %cal.0169, align 4
  %conv = zext i8 %28 to i32
  %rfatt57 = getelementptr i8, ptr %.pn.in166, i32 -11
  %29 = ptrtoint ptr %rfatt57 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %rfatt57, align 1
  %conv59 = zext i8 %30 to i32
  %with_padmix = getelementptr i8, ptr %.pn.in166, i32 -10
  %31 = ptrtoint ptr %with_padmix to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %with_padmix, align 1, !range !32
  %33 = zext i8 %32 to i32
  %ctl = getelementptr i8, ptr %.pn.in166, i32 -9
  %34 = ptrtoint ptr %ctl to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %ctl, align 1
  %conv63 = sext i8 %35 to i32
  %q = getelementptr i8, ptr %.pn.in166, i32 -8
  %36 = ptrtoint ptr %q to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %q, align 1
  %conv65 = sext i8 %37 to i32
  tail call void (ptr, ptr, ...) @b43dbg(ptr noundef %26, ptr noundef nonnull @.str.2, i32 noundef %conv, i32 noundef %conv59, i32 noundef %33, i32 noundef %conv63, i32 noundef %conv65) #6
  br label %if.end66

if.end66:                                         ; preds = %if.then55, %if.end53.if.end66_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in166) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end66.list_del.exit_crit_edge

if.end66.list_del.exit_crit_edge:                 ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in166, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i.i, align 4
  %40 = ptrtoint ptr %.pn.in166 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %.pn.in166, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev1.i.i.i, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %41, ptr %39, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end66.list_del.exit_crit_edge
  %44 = ptrtoint ptr %.pn.in166 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in166, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in166, i32 0, i32 1
  %45 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %cal.0169) #6
  br label %for.inc

for.inc:                                          ; preds = %list_del.exit, %for.body.for.inc_crit_edge
  %current_item_expired.2.off0 = phi i1 [ %current_item_expired.1.off0, %list_del.exit ], [ %current_item_expired.0.off0165, %for.body.for.inc_crit_edge ]
  %cmp19.not = icmp eq ptr %.pn170, %calib_list
  br i1 %cmp19.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  br i1 %current_item_expired.2.off0, label %for.end.if.then84_crit_edge, label %for.end.lor.lhs.false_crit_edge

for.end.lor.lhs.false_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false

for.end.if.then84_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then84

lor.lhs.false:                                    ; preds = %for.end.lor.lhs.false_crit_edge, %if.end10.lor.lhs.false_crit_edge
  %46 = ptrtoint ptr %calib_list to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %calib_list, align 4
  %cmp.i154.not = icmp eq ptr %47, %calib_list
  br i1 %cmp.i154.not, label %lor.lhs.false.if.then84_crit_edge, label %lor.lhs.false.cleanup_crit_edge, !prof !31

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false.if.then84_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then84

if.then84:                                        ; preds = %lor.lhs.false.if.then84_crit_edge, %for.end.if.then84_crit_edge
  %call85 = tail call zeroext i1 @b43_debug(ptr noundef %dev, i32 noundef 5) #6
  br i1 %call85, label %if.then86, label %if.then84.if.end88_crit_edge

if.then84.if.end88_crit_edge:                     ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end88

if.then86:                                        ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #8
  %wl87 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %48 = ptrtoint ptr %wl87 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %wl87, align 4
  tail call void (ptr, ptr, ...) @b43dbg(ptr noundef %49, ptr noundef nonnull @.str.3) #6
  br label %if.end88

if.end88:                                         ; preds = %if.then86, %if.then84.if.end88_crit_edge
  %bbatt89 = getelementptr inbounds %struct.b43_phy_g, ptr %2, i32 0, i32 12
  %rfatt90 = getelementptr inbounds %struct.b43_phy_g, ptr %2, i32 0, i32 13
  %call91 = tail call fastcc ptr @b43_calibrate_lo_setting(ptr noundef %dev, ptr noundef %bbatt89, ptr noundef %rfatt90)
  %tobool92.not = icmp eq ptr %call91, null
  br i1 %tobool92.not, label %if.else, label %if.then93

if.then93:                                        ; preds = %if.end88
  %list94 = getelementptr inbounds %struct.b43_lo_calib, ptr %call91, i32 0, i32 4
  %50 = ptrtoint ptr %calib_list to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %calib_list, align 4
  %call.i.i155 = tail call zeroext i1 @__list_add_valid(ptr noundef %list94, ptr noundef %calib_list, ptr noundef %51) #6
  br i1 %call.i.i155, label %if.end.i.i156, label %if.then93.list_add.exit_crit_edge

if.then93.list_add.exit_crit_edge:                ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add.exit

if.end.i.i156:                                    ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %list94, ptr %prev1.i.i, align 4
  %53 = ptrtoint ptr %list94 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %51, ptr %list94, align 4
  %prev3.i.i = getelementptr inbounds %struct.b43_lo_calib, ptr %call91, i32 0, i32 4, i32 1
  %54 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %calib_list, ptr %prev3.i.i, align 4
  %55 = ptrtoint ptr %calib_list to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %list94, ptr %calib_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i156, %if.then93.list_add.exit_crit_edge
  %ctl96 = getelementptr inbounds %struct.b43_lo_calib, ptr %call91, i32 0, i32 2
  %56 = ptrtoint ptr %ctl96 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %ctl96, align 1
  %conv.i157 = sext i8 %57 to i32
  %58 = tail call i32 @llvm.abs.i32(i32 %conv.i157, i1 true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %58)
  %cmp5.i = icmp ugt i32 %58, 16
  br i1 %cmp5.i, label %list_add.exit.if.then.i_crit_edge, label %lor.rhs.i, !prof !31

list_add.exit.if.then.i_crit_edge:                ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

lor.rhs.i:                                        ; preds = %list_add.exit
  %q.i = getelementptr inbounds %struct.b43_lo_calib, ptr %call91, i32 0, i32 2, i32 1
  %59 = ptrtoint ptr %q.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %q.i, align 1
  %61 = tail call i8 @llvm.abs.i8(i8 %60, i1 false) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %61)
  %cmp19.i = icmp ugt i8 %61, 16
  br i1 %cmp19.i, label %lor.rhs.i.if.then.i_crit_edge, label %if.end.i, !prof !31

lor.rhs.i.if.then.i_crit_edge:                    ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.then.i:                                        ; preds = %lor.rhs.i.if.then.i_crit_edge, %list_add.exit.if.then.i_crit_edge
  %wl.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %62 = ptrtoint ptr %wl.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %wl.i, align 4
  %q24.i = getelementptr inbounds %struct.b43_lo_calib, ptr %call91, i32 0, i32 2, i32 1
  %64 = ptrtoint ptr %q24.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %q24.i, align 1
  %conv25.i = sext i8 %65 to i32
  tail call void (ptr, ptr, ...) @b43dbg(ptr noundef %63, ptr noundef nonnull @.str.7, i32 noundef %conv.i157, i32 noundef %conv25.i) #6
  tail call void @dump_stack() #9
  br label %cleanup

if.end.i:                                         ; preds = %lor.rhs.i
  %type.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 7
  %66 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %67)
  %cmp27.not.i = icmp eq i8 %67, 2
  br i1 %cmp27.not.i, label %if.end.i.if.end47.i_crit_edge, label %do.end.i, !prof !34

if.end.i.if.end47.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 58, i32 noundef 9, ptr noundef null) #6
  br label %if.end47.i

if.end47.i:                                       ; preds = %do.end.i, %if.end.i.if.end47.i_crit_edge
  %68 = ptrtoint ptr %q.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %q.i, align 1
  %70 = ptrtoint ptr %ctl96 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %ctl96, align 1
  %conv58.i = zext i8 %71 to i16
  %shl.i = shl nuw i16 %conv58.i, 8
  %conv59.i = zext i8 %69 to i16
  %or.i = or i16 %shl.i, %conv59.i
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2064, i16 noundef zeroext %or.i) #6
  br label %cleanup

if.else:                                          ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #8
  %wl97 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %72 = ptrtoint ptr %wl97 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %wl97, align 4
  tail call void (ptr, ptr, ...) @b43warn(ptr noundef %73, ptr noundef nonnull @.str.4) #6
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end47.i, %if.then.i, %lor.lhs.false.cleanup_crit_edge, %if.then5, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @b43_has_hardware_pctl(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lo_read_power_vector(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %lo_control = getelementptr inbounds %struct.b43_phy_g, ptr %2, i32 0, i32 17
  %3 = ptrtoint ptr %lo_control to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lo_control, align 4
  %call = tail call zeroext i16 @b43_shm_read16(ptr noundef %dev, i16 noundef zeroext 1, i16 noundef zeroext 784) #6
  %conv2 = zext i16 %call to i64
  tail call void @b43_shm_write16(ptr noundef %dev, i16 noundef zeroext 1, i16 noundef zeroext 784, i16 noundef zeroext 0) #6
  %call.1 = tail call zeroext i16 @b43_shm_read16(ptr noundef %dev, i16 noundef zeroext 1, i16 noundef zeroext 786) #6
  %conv2.1 = zext i16 %call.1 to i64
  %shl.1 = shl nuw nsw i64 %conv2.1, 16
  %or.1 = or i64 %shl.1, %conv2
  tail call void @b43_shm_write16(ptr noundef %dev, i16 noundef zeroext 1, i16 noundef zeroext 786, i16 noundef zeroext 0) #6
  %call.2 = tail call zeroext i16 @b43_shm_read16(ptr noundef %dev, i16 noundef zeroext 1, i16 noundef zeroext 788) #6
  %conv2.2 = zext i16 %call.2 to i64
  %shl.2 = shl nuw nsw i64 %conv2.2, 32
  %or.2 = or i64 %shl.2, %or.1
  tail call void @b43_shm_write16(ptr noundef %dev, i16 noundef zeroext 1, i16 noundef zeroext 788, i16 noundef zeroext 0) #6
  %call.3 = tail call zeroext i16 @b43_shm_read16(ptr noundef %dev, i16 noundef zeroext 1, i16 noundef zeroext 790) #6
  %conv2.3 = zext i16 %call.3 to i64
  %shl.3 = shl nuw i64 %conv2.3, 48
  %or.3 = or i64 %shl.3, %or.2
  tail call void @b43_shm_write16(ptr noundef %dev, i16 noundef zeroext 1, i16 noundef zeroext 790, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or.3)
  %tobool.not = icmp eq i64 %or.3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %power_vector6 = getelementptr inbounds %struct.b43_txpower_lo_control, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %power_vector6 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %or.3, ptr %power_vector6, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %pwr_vec_read_time = getelementptr inbounds %struct.b43_txpower_lo_control, ptr %4, i32 0, i32 4
  %7 = ptrtoint ptr %pwr_vec_read_time to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %pwr_vec_read_time, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @b43_debug(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43dbg(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_lo_g_cleanup(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %lo_control = getelementptr inbounds %struct.b43_phy_g, ptr %2, i32 0, i32 17
  %3 = ptrtoint ptr %lo_control to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lo_control, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %calib_list = getelementptr inbounds %struct.b43_txpower_lo_control, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %calib_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %calib_list, align 8
  %cmp.not23 = icmp eq ptr %6, %calib_list
  br i1 %cmp.not23, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn.in24 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %6, %if.end.for.body_crit_edge ]
  %cal.0 = getelementptr i8, ptr %.pn.in24, i32 -12
  %7 = ptrtoint ptr %.pn.in24 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn = load ptr, ptr %.pn.in24, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in24) #6
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in24, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %.pn.in24 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %.pn.in24, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %14 = ptrtoint ptr %.pn.in24 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in24, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in24, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %cal.0) #6
  %cmp.not = icmp eq ptr %.pn, %calib_list
  br i1 %cmp.not, label %list_del.exit.cleanup_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

list_del.exit.cleanup_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_lo_g_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @b43_has_hardware_pctl(ptr noundef %dev) #6
  br i1 %call, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @lo_read_power_vector(ptr noundef %dev)
  tail call void @b43_gphy_dc_lt_init(ptr noundef %dev, i1 noundef zeroext true)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_radio_maskset(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lo_measure_gain_values(ptr noundef %dev, i16 noundef signext %max_rx_gain, i32 noundef %use_trsw_rx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %3 = tail call i16 @llvm.smax.i16(i16 %max_rx_gain, i16 0)
  %rev = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 8
  %4 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp4 = icmp ugt i8 %5, 1
  br i1 %cmp4, label %entry.if.then7_crit_edge, label %lor.lhs.false

entry.if.then7_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7

lor.lhs.false:                                    ; preds = %entry
  %gmode = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 4
  %6 = ptrtoint ptr %gmode to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %gmode, align 2, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.else51, label %lor.lhs.false.if.then7_crit_edge

lor.lhs.false.if.then7_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7

if.then7:                                         ; preds = %lor.lhs.false.if.then7_crit_edge, %entry.if.then7_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %use_trsw_rx)
  %tobool8.not = icmp eq i32 %use_trsw_rx, 0
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.then7
  %trsw_rx_gain10 = getelementptr inbounds %struct.b43_phy_g, ptr %2, i32 0, i32 19
  %8 = ptrtoint ptr %trsw_rx_gain10 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %trsw_rx_gain10, align 2
  %10 = sdiv i16 %9, 2
  %div = sext i16 %10 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %10)
  %cmp13.not = icmp slt i16 %3, %10
  br i1 %cmp13.not, label %if.then9.if.end19_crit_edge, label %if.then15

if.then9.if.end19_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then15:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  %conv12 = zext i16 %3 to i32
  %sub = sub nsw i32 %conv12, %div
  br label %if.end19

if.else:                                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  %conv18 = zext i16 %3 to i32
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then15, %if.then9.if.end19_crit_edge
  %trsw_rx_gain.0 = phi i32 [ %sub, %if.then15 ], [ %div, %if.then9.if.end19_crit_edge ], [ %conv18, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %trsw_rx_gain.0)
  %cmp20 = icmp slt i32 %trsw_rx_gain.0, 9
  %sub25 = add nsw i32 %trsw_rx_gain.0, -8
  %not.cmp20 = xor i1 %cmp20, true
  %spec.select = zext i1 %not.cmp20 to i16
  %spec.select133 = select i1 %cmp20, i32 %trsw_rx_gain.0, i32 %sub25
  %11 = getelementptr inbounds %struct.b43_phy_g, ptr %2, i32 0, i32 20
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %spec.select, ptr %11, align 4
  %13 = tail call i32 @llvm.smax.i32(i32 %spec.select133, i32 0)
  %14 = tail call i32 @llvm.umin.i32(i32 %13, i32 45)
  %div37131.lhs.trunc = trunc i32 %14 to i8
  %div37131132 = udiv i8 %div37131.lhs.trunc, 3
  %conv38 = zext i8 %div37131132 to i16
  %pga_gain = getelementptr inbounds %struct.b43_phy_g, ptr %2, i32 0, i32 22
  %15 = ptrtoint ptr %pga_gain to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv38, ptr %pga_gain, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %div37131.lhs.trunc)
  %cmp41 = icmp ugt i8 %div37131.lhs.trunc, 14
  br i1 %cmp41, label %if.then43, label %if.else48

if.then43:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %conv47 = add nsw i16 %conv38, -5
  %16 = ptrtoint ptr %pga_gain to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv47, ptr %pga_gain, align 4
  %lna_gain = getelementptr inbounds %struct.b43_phy_g, ptr %2, i32 0, i32 21
  %17 = ptrtoint ptr %lna_gain to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 2, ptr %lna_gain, align 2
  br label %if.end80

if.else48:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %lna_gain49 = getelementptr inbounds %struct.b43_phy_g, ptr %2, i32 0, i32 21
  %18 = ptrtoint ptr %lna_gain49 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %lna_gain49, align 2
  br label %if.end80

if.else51:                                        ; preds = %lor.lhs.false
  %lna_gain52 = getelementptr inbounds %struct.b43_phy_g, ptr %2, i32 0, i32 21
  %19 = ptrtoint ptr %lna_gain52 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %lna_gain52, align 2
  %trsw_rx_gain53 = getelementptr inbounds %struct.b43_phy_g, ptr %2, i32 0, i32 19
  %20 = ptrtoint ptr %trsw_rx_gain53 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 32, ptr %trsw_rx_gain53, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 19, i16 %3)
  %cmp55 = icmp ugt i16 %3, 19
  br i1 %cmp55, label %if.then57, label %if.else60

if.then57:                                        ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #8
  %lna_lod_gain58 = getelementptr inbounds %struct.b43_phy_g, ptr %2, i32 0, i32 20
  %21 = ptrtoint ptr %lna_lod_gain58 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 1, ptr %lna_lod_gain58, align 4
  %pga_gain59 = getelementptr inbounds %struct.b43_phy_g, ptr %2, i32 0, i32 22
  %22 = ptrtoint ptr %pga_gain59 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 2, ptr %pga_gain59, align 4
  br label %if.end80

if.else60:                                        ; preds = %if.else51
  call void @__sanitizer_cov_trace_const_cmp2(i16 17, i16 %3)
  %cmp62 = icmp ugt i16 %3, 17
  br i1 %cmp62, label %if.then64, label %if.else67

if.then64:                                        ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #8
  %lna_lod_gain65 = getelementptr inbounds %struct.b43_phy_g, ptr %2, i32 0, i32 20
  %23 = ptrtoint ptr %lna_lod_gain65 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 1, ptr %lna_lod_gain65, align 4
  %pga_gain66 = getelementptr inbounds %struct.b43_phy_g, ptr %2, i32 0, i32 22
  %24 = ptrtoint ptr %pga_gain66 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 1, ptr %pga_gain66, align 4
  br label %if.end80

if.else67:                                        ; preds = %if.else60
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %3)
  %cmp69 = icmp ugt i16 %3, 14
  %lna_lod_gain72 = getelementptr inbounds %struct.b43_phy_g, ptr %2, i32 0, i32 20
  br i1 %cmp69, label %if.then71, label %if.else74

if.then71:                                        ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %lna_lod_gain72 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 1, ptr %lna_lod_gain72, align 4
  %pga_gain73 = getelementptr inbounds %struct.b43_phy_g, ptr %2, i32 0, i32 22
  %26 = ptrtoint ptr %pga_gain73 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %pga_gain73, align 4
  br label %if.end80

if.else74:                                        ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %lna_lod_gain72 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %lna_lod_gain72, align 4
  %pga_gain76 = getelementptr inbounds %struct.b43_phy_g, ptr %2, i32 0, i32 22
  %28 = ptrtoint ptr %pga_gain76 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %pga_gain76, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.else74, %if.then71, %if.then64, %if.then57, %if.else48, %if.then43
  %call = tail call zeroext i16 @b43_radio_read(ptr noundef %dev, i16 noundef zeroext 122) #6
  %lna_lod_gain81 = getelementptr inbounds %struct.b43_phy_g, ptr %2, i32 0, i32 20
  %29 = ptrtoint ptr %lna_lod_gain81 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %lna_lod_gain81, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %cmp83 = icmp eq i16 %30, 0
  %31 = and i16 %call, -9
  %masksel = select i1 %cmp83, i16 0, i16 8
  %tmp.0 = or i16 %masksel, %31
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 122, i16 noundef zeroext %tmp.0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_gphy_set_baseband_attenuation(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @b43_phy_read(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_phy_set(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_phy_mask(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @b43_radio_read(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_radio_write(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_dummy_transmission(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_gphy_channel_switch(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_radio_mask(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @lo_measure_feedthrough(ptr noundef %dev, i16 noundef zeroext %lna, i16 noundef zeroext %pga, i16 noundef zeroext %trsw_rx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %gmode = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 4
  %0 = ptrtoint ptr %gmode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %gmode, align 2, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %shl = shl i16 %lna, 12
  %shl4 = shl i16 %pga, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %shl)
  %tobool7.not = icmp sgt i16 %shl, -1
  br i1 %tobool7.not, label %if.then.if.end_crit_edge, label %do.end, !prof !34

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 76, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %shl4)
  %tobool31.not = icmp ult i16 %shl4, 4096
  br i1 %tobool31.not, label %if.end.if.end53_crit_edge, label %do.end47, !prof !34

if.end.if.end53_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

do.end47:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 77, i32 noundef 9, ptr noundef null) #6
  br label %if.end53

if.end53:                                         ; preds = %do.end47, %if.end.if.end53_crit_edge
  %2 = and i16 %trsw_rx, 227
  %or = or i16 %shl4, %shl
  %or69136 = or i16 %or, %2
  %or73137 = or i16 %or69136, 16
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %bus_sprom = getelementptr inbounds %struct.b43_bus_dev, ptr %4, i32 0, i32 23
  %5 = ptrtoint ptr %bus_sprom to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus_sprom, align 4
  %boardflags_lo = getelementptr inbounds %struct.ssb_sprom, ptr %6, i32 0, i32 70
  %7 = ptrtoint ptr %boardflags_lo to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %boardflags_lo, align 4
  %9 = and i16 %8, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool78.not = icmp eq i16 %9, 0
  br i1 %tobool78.not, label %if.end53.if.end85_crit_edge, label %land.lhs.true

if.end53.if.end85_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end85

land.lhs.true:                                    ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  %rev = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 8
  %10 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %11)
  %cmp = icmp ugt i8 %11, 6
  %12 = or i16 %or69136, -32752
  %spec.select = select i1 %cmp, i16 %12, i16 %or73137
  br label %if.end85

if.end85:                                         ; preds = %land.lhs.true, %if.end53.if.end85_crit_edge
  %rfover.0 = phi i16 [ %or73137, %if.end53.if.end85_crit_edge ], [ %spec.select, %land.lhs.true ]
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 21, i16 noundef zeroext -7424) #6
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2066, i16 noundef zeroext %rfover.0) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 2147480) #6
  %14 = or i16 %rfover.0, 2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2066, i16 noundef zeroext %14) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 2147480) #6
  %16 = or i16 %rfover.0, 3
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2066, i16 noundef zeroext %16) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 2147480) #6
  br label %if.end101

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %18 = or i16 %pga, -4192
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 21, i16 noundef zeroext %18) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 2147480) #6
  %20 = or i16 %pga, -4128
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 21, i16 noundef zeroext %20) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 2147480) #6
  %22 = or i16 %pga, -32
  br label %if.end101

if.end101:                                        ; preds = %if.else, %if.end85
  %.sink = phi i16 [ %22, %if.else ], [ -3328, %if.end85 ]
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 21, i16 noundef zeroext %.sink) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 4509708) #6
  %call = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 45) #6
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 118, i32 noundef 0) #6
  %call.i = tail call i32 @__cond_resched() #6
  ret i16 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @b43_shm_read16(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_shm_write16(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.smax.i16(i16, i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.abs.i8(i8, i1 immarg) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/broadcom/b43/lo.c", i32 819, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/broadcom/b43/lo.c", i32 845, i32 21}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/broadcom/b43/lo.c", i32 961, i32 20}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/broadcom/b43/lo.c", i32 973, i32 20}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/broadcom/b43/lo.c", i32 979, i32 21}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/broadcom/b43/lo.c", i32 763, i32 19}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/broadcom/b43/lo.c", i32 771, i32 20}
!14 = !{ptr @lo_measure_txctl_values.tx_bias_values, !15, !"tx_bias_values", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/broadcom/b43/lo.c", i32 171, i32 18}
!16 = distinct !{null, !17, !"tx_magn_values", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/broadcom/b43/lo.c", i32 175, i32 18}
!18 = !{ptr @lo_probe_possible_loctls.modifiers, !19, !"modifiers", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/broadcom/b43/lo.c", i32 580, i32 32}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/broadcom/b43/lo.c", i32 52, i32 20}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{!"branch_weights", i32 1, i32 2000}
!32 = !{i8 0, i8 2}
!33 = !{!"branch_weights", i32 4001, i32 4000000}
!34 = !{!"branch_weights", i32 2000, i32 1}
!35 = !{!"branch_weights", i32 4001, i32 1}
