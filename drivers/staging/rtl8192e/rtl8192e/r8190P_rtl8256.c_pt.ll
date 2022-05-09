; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8192e/rtl8192e/r8190P_rtl8256.c_pt.bc'
source_filename = "../drivers/staging/rtl8192e/rtl8192e/r8190P_rtl8256.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.r8192_priv = type { ptr, ptr, i8, i8, i8, i8, i8, i32, i16, i16, i16, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.channel_access_setting, ptr, ptr, %struct.work_struct, %struct.log_int_8190, i32, i32, i32, [4 x %struct.bb_reg_definition], %struct.rate_adaptive, i32, ptr, i32, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.sk_buff_head, %struct.tasklet_struct, %struct.tasklet_struct, %struct.tasklet_struct, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rt_stats, %struct.iw_statistics, ptr, ptr, [1 x ptr], [1 x [64 x ptr]], [1 x i32], [1 x i32], i32, i16, i64, i32, i8, i8, i16, [9 x %struct.rtl8192_tx_ring], i32, [16 x %struct.atomic_t], i16, i16, i8, i8, i8, i32, %struct.work_struct, i16, i16, i16, i16, i8, i8, [2 x i32], i8, i32, i8, i8, i8, [33 x i8], i8, i32, [10 x i32], i16, i8, i8, i8, i16, i8, i16, i16, i16, i8, i16, [14 x i8], [14 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i16, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, [4 x i32], i8, [4 x i8], i8, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i8, i8, i8, i8, i32, [6 x i32], [14 x i8], [14 x i8], [14 x i8], [14 x i8], [14 x i8], [14 x i8], i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, %struct.init_gain, [4 x i8], i8, i8, i8, i8, i32, i32, i32, i8, i8, i32, i8, i32, i32, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.channel_access_setting = type { i16, i16, i16, i16, i16, i16 }
%struct.log_int_8190 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bb_reg_definition = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rate_adaptive = type { i8, i8, i16, i32, i32, i8, i32, i8, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.sk_buff_head = type { %union.anon.68, i32, %struct.spinlock }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.123, i32 }
%struct.atomic_t = type { i32 }
%union.anon.123 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rt_stats = type { i32, i32, i32, i32, i32, i32, i32, [4 x [32 x i32]], [2 x [32 x i32]], i32, i32, i32, i32, i32, i32, [5 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, [100 x i32], [100 x i32], i32, i32, i32, i32, i32, i32, [4 x i8], [2 x i8], [4 x i32], [100 x i32], i32, i32 }
%struct.iw_statistics = type { i16, %struct.iw_quality, %struct.iw_discarded, %struct.iw_missed }
%struct.iw_quality = type { i8, i8, i8, i8 }
%struct.iw_discarded = type { i32, i32, i32, i32, i32 }
%struct.iw_missed = type { i32 }
%struct.rtl8192_tx_ring = type { ptr, i32, i32, i32, %struct.sk_buff_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.init_gain = type { i8, i8, i8, i8, i8 }

@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s(): Unknown HW version.\0A\00", [37 x i8] zeroinitializer }, align 32
@__func__.rtl92e_set_bandwidth = private unnamed_addr constant [21 x i8] c"rtl92e_set_bandwidth\00", align 1
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s(): Unknown bandwidth: %#X\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s(): Failed to check RF Path %d.\0A\00", [61 x i8] zeroinitializer }, align 32
@__func__.rtl92e_config_rf = private unnamed_addr constant [17 x i8] c"rtl92e_config_rf\00", align 1
@rt_global_debug_component = external dso_local local_unnamed_addr global i32, align 4
@rtl92e_config_rf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @__func__.rtl92e_config_rf, ptr @.str.4, i32 121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017rtl819xE:RF %d %d register final value: %x\0A\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/staging/rtl8192e/rtl8192e/r8190P_rtl8256.c\00", [45 x i8] zeroinitializer }, align 32
@rtl92e_config_rf._entry_ptr = internal global ptr @rtl92e_config_rf._entry, section ".printk_index", align 4
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s(): Failed to initialize RF Path %d.\0A\00", [56 x i8] zeroinitializer }, align 32
@rtl92e_config_rf._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @__func__.rtl92e_config_rf, ptr @.str.4, i32 146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017rtl819xE:PHY Initialization Success\0A\0A\00", [56 x i8] zeroinitializer }, align 32
@rtl92e_config_rf._entry_ptr.8 = internal global ptr @rtl92e_config_rf._entry.6, section ".printk_index", align 4
@__const.rtl92e_set_ofdm_tx_power.RegOffset = private unnamed_addr constant [6 x i16] [i16 3584, i16 3588, i16 3600, i16 3604, i16 3608, i16 3612], align 2
@switch.table.rtl92e_config_rf = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 16, i32 1048576, i32 16, i32 1048576], [16 x i8] zeroinitializer }, align 32
@switch.table.rtl92e_config_rf.9 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 16, i32 1048576, i32 16, i32 1048576], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 20, i32 20 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 46, i32 20 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 103, i32 20 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 118, i32 4 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 140, i32 8 }
@___asan_gen_.31 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.35 = private constant [54 x i8] c"../drivers/staging/rtl8192e/rtl8192e/r8190P_rtl8256.c\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 146, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant [30 x i8] c"switch.table.rtl92e_config_rf\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [32 x i8] c"switch.table.rtl92e_config_rf.9\00", align 1
@llvm.compiler.used = appending global [13 x ptr] [ptr @rtl92e_config_rf._entry, ptr @rtl92e_config_rf._entry.6, ptr @rtl92e_config_rf._entry_ptr, ptr @rtl92e_config_rf._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @switch.table.rtl92e_config_rf, ptr @switch.table.rtl92e_config_rf.9], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_config_rf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_config_rf._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtl92e_config_rf to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtl92e_config_rf.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92e_set_bandwidth(ptr noundef %dev, i32 noundef %Bandwidth) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %card_8192_version = getelementptr i8, ptr %dev, i32 35820
  %0 = ptrtoint ptr %card_8192_version to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %card_8192_version, align 8
  %.off = add i8 %1, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %for.cond.preheader, label %if.then

for.cond.preheader:                               ; preds = %entry
  %NumTotalRFPath = getelementptr i8, ptr %dev, i32 35996
  %2 = ptrtoint ptr %NumTotalRFPath to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %NumTotalRFPath, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp842.not = icmp eq i8 %3, 0
  br i1 %cmp842.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.rtl92e_set_bandwidth) #7
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call11 = tail call zeroext i8 @rtl92e_is_legal_rf_path(ptr noundef %dev, i32 noundef %indvars.iv) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call11)
  %tobool.not = icmp eq i8 %call11, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end13

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end13:                                         ; preds = %for.body
  %4 = zext i32 %Bandwidth to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %Bandwidth, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb17
  ]

sw.bb:                                            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @rtl92e_set_rf_reg(ptr noundef %dev, i32 noundef %indvars.iv, i32 noundef 11, i32 noundef 4095, i32 noundef 256) #4
  tail call void @rtl92e_set_rf_reg(ptr noundef %dev, i32 noundef %indvars.iv, i32 noundef 44, i32 noundef 4095, i32 noundef 983) #4
  tail call void @rtl92e_set_rf_reg(ptr noundef %dev, i32 noundef %indvars.iv, i32 noundef 14, i32 noundef 4095, i32 noundef 33) #4
  br label %for.inc

sw.bb17:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @rtl92e_set_rf_reg(ptr noundef %dev, i32 noundef %indvars.iv, i32 noundef 11, i32 noundef 4095, i32 noundef 768) #4
  tail call void @rtl92e_set_rf_reg(ptr noundef %dev, i32 noundef %indvars.iv, i32 noundef 44, i32 noundef 4095, i32 noundef 1023) #4
  tail call void @rtl92e_set_rf_reg(ptr noundef %dev, i32 noundef %indvars.iv, i32 noundef 14, i32 noundef 4095, i32 noundef 225) #4
  br label %for.inc

sw.default:                                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.rtl92e_set_bandwidth, i32 noundef %Bandwidth) #7
  br label %for.inc

for.inc:                                          ; preds = %sw.default, %sw.bb17, %sw.bb, %for.body.for.inc_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %5 = ptrtoint ptr %NumTotalRFPath to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %NumTotalRFPath, align 8
  %7 = zext i8 %6 to i32
  %cmp8 = icmp ult i32 %indvars.iv.next, %7
  br i1 %cmp8, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then, %for.cond.preheader.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtl92e_is_legal_rf_path(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_set_rf_reg(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl92e_config_rf(ptr noundef %dev) local_unnamed_addr #0 align 64 {
for.body.preheader:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 30772
  %NumTotalRFPath = getelementptr i8, ptr %dev, i32 35996
  %0 = ptrtoint ptr %NumTotalRFPath to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 2, ptr %NumTotalRFPath, align 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %indvars.iv = phi i32 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %u4RegValue.0117 = phi i32 [ 0, %for.body.preheader ], [ %u4RegValue.2, %for.inc.for.body_crit_edge ]
  %call5 = tail call zeroext i8 @rtl92e_is_legal_rf_path(ptr noundef %dev, i32 noundef %indvars.iv) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call5)
  %tobool.not = icmp eq i8 %call5, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end:                                           ; preds = %for.body
  %arrayidx = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 24, i32 %indvars.iv
  %1 = trunc i32 %indvars.iv to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %1)
  %2 = icmp ult i8 %1, 4
  br i1 %2, label %switch.lookup, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %sext134 = shl i32 %indvars.iv, 24
  %3 = ashr exact i32 %sext134, 24
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.rtl92e_config_rf, i32 0, i32 %3
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load i32, ptr %switch.gep, align 4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %call10 = tail call i32 @rtl92e_get_bb_reg(ptr noundef %dev, i32 noundef %6, i32 noundef %switch.load) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end.sw.epilog_crit_edge
  %u4RegValue.1 = phi i32 [ %u4RegValue.0117, %if.end.sw.epilog_crit_edge ], [ %call10, %switch.lookup ]
  %rfintfe = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 24, i32 %indvars.iv, i32 3
  %7 = ptrtoint ptr %rfintfe to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rfintfe, align 4
  tail call void @rtl92e_set_bb_reg(ptr noundef %dev, i32 noundef %8, i32 noundef 1048576, i32 noundef 1) #4
  %rfintfo = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 24, i32 %indvars.iv, i32 2
  %9 = ptrtoint ptr %rfintfo to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rfintfo, align 4
  tail call void @rtl92e_set_bb_reg(ptr noundef %dev, i32 noundef %10, i32 noundef 16, i32 noundef 1) #4
  %rfHSSIPara2 = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 24, i32 %indvars.iv, i32 8
  %11 = ptrtoint ptr %rfHSSIPara2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rfHSSIPara2, align 4
  tail call void @rtl92e_set_bb_reg(ptr noundef %dev, i32 noundef %12, i32 noundef 1024, i32 noundef 0) #4
  %13 = ptrtoint ptr %rfHSSIPara2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rfHSSIPara2, align 4
  tail call void @rtl92e_set_bb_reg(ptr noundef %dev, i32 noundef %14, i32 noundef 2048, i32 noundef 0) #4
  tail call void @rtl92e_set_rf_reg(ptr noundef %dev, i32 noundef %indvars.iv, i32 noundef 0, i32 noundef 4095, i32 noundef 191) #4
  %call14 = tail call zeroext i1 @rtl92e_check_bb_and_rf(ptr noundef %dev, i32 noundef 3, i32 noundef %indvars.iv) #4
  br i1 %call14, label %while.body, label %if.then16

if.then16:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.rtl92e_config_rf, i32 noundef %indvars.iv) #7
  br label %cleanup

while.body:                                       ; preds = %sw.epilog
  %call25 = tail call zeroext i8 @rtl92e_config_rf_path(ptr noundef %dev, i32 noundef %indvars.iv) #4
  %call27 = tail call i32 @rtl92e_get_rf_reg(ptr noundef %dev, i32 noundef %indvars.iv, i32 noundef 3, i32 noundef 4095) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %15 = load i32, ptr @rt_global_debug_component, align 4
  %and = and i32 %15, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool28.not = icmp eq i32 %and, 0
  br i1 %tobool28.not, label %while.body.do.end35_crit_edge, label %do.end

while.body.do.end35_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end35

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %indvars.iv, i32 noundef 3, i32 noundef %call27) #7
  br label %do.end35

do.end35:                                         ; preds = %do.end, %while.body.do.end35_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2033, i32 %call27)
  %cmp19.not = icmp eq i32 %call27, 2033
  br i1 %cmp19.not, label %do.end35.while.end_crit_edge, label %while.body.1

do.end35.while.end_crit_edge:                     ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.1:                                     ; preds = %do.end35
  %call25.1 = tail call zeroext i8 @rtl92e_config_rf_path(ptr noundef %dev, i32 noundef %indvars.iv) #4
  %call27.1 = tail call i32 @rtl92e_get_rf_reg(ptr noundef %dev, i32 noundef %indvars.iv, i32 noundef 3, i32 noundef 4095) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %16 = load i32, ptr @rt_global_debug_component, align 4
  %and.1 = and i32 %16, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool28.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool28.not.1, label %while.body.1.do.end35.1_crit_edge, label %do.end.1

while.body.1.do.end35.1_crit_edge:                ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end35.1

do.end.1:                                         ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #6
  %call32.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %indvars.iv, i32 noundef 3, i32 noundef %call27.1) #7
  br label %do.end35.1

do.end35.1:                                       ; preds = %do.end.1, %while.body.1.do.end35.1_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2033, i32 %call27.1)
  %cmp19.not.1 = icmp eq i32 %call27.1, 2033
  br i1 %cmp19.not.1, label %do.end35.1.while.end_crit_edge, label %while.body.2

do.end35.1.while.end_crit_edge:                   ; preds = %do.end35.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.2:                                     ; preds = %do.end35.1
  %call25.2 = tail call zeroext i8 @rtl92e_config_rf_path(ptr noundef %dev, i32 noundef %indvars.iv) #4
  %call27.2 = tail call i32 @rtl92e_get_rf_reg(ptr noundef %dev, i32 noundef %indvars.iv, i32 noundef 3, i32 noundef 4095) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %17 = load i32, ptr @rt_global_debug_component, align 4
  %and.2 = and i32 %17, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool28.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool28.not.2, label %while.body.2.do.end35.2_crit_edge, label %do.end.2

while.body.2.do.end35.2_crit_edge:                ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end35.2

do.end.2:                                         ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #6
  %call32.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %indvars.iv, i32 noundef 3, i32 noundef %call27.2) #7
  br label %do.end35.2

do.end35.2:                                       ; preds = %do.end.2, %while.body.2.do.end35.2_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2033, i32 %call27.2)
  %cmp19.not.2 = icmp eq i32 %call27.2, 2033
  br i1 %cmp19.not.2, label %do.end35.2.while.end_crit_edge, label %while.body.3

do.end35.2.while.end_crit_edge:                   ; preds = %do.end35.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.3:                                     ; preds = %do.end35.2
  %call25.3 = tail call zeroext i8 @rtl92e_config_rf_path(ptr noundef %dev, i32 noundef %indvars.iv) #4
  %call27.3 = tail call i32 @rtl92e_get_rf_reg(ptr noundef %dev, i32 noundef %indvars.iv, i32 noundef 3, i32 noundef 4095) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %18 = load i32, ptr @rt_global_debug_component, align 4
  %and.3 = and i32 %18, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool28.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool28.not.3, label %while.body.3.do.end35.3_crit_edge, label %do.end.3

while.body.3.do.end35.3_crit_edge:                ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end35.3

do.end.3:                                         ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #6
  %call32.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %indvars.iv, i32 noundef 3, i32 noundef %call27.3) #7
  br label %do.end35.3

do.end35.3:                                       ; preds = %do.end.3, %while.body.3.do.end35.3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2033, i32 %call27.3)
  %cmp19.not.3 = icmp eq i32 %call27.3, 2033
  br i1 %cmp19.not.3, label %do.end35.3.while.end_crit_edge, label %while.body.4

do.end35.3.while.end_crit_edge:                   ; preds = %do.end35.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.4:                                     ; preds = %do.end35.3
  %call25.4 = tail call zeroext i8 @rtl92e_config_rf_path(ptr noundef %dev, i32 noundef %indvars.iv) #4
  %call27.4 = tail call i32 @rtl92e_get_rf_reg(ptr noundef %dev, i32 noundef %indvars.iv, i32 noundef 3, i32 noundef 4095) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %19 = load i32, ptr @rt_global_debug_component, align 4
  %and.4 = and i32 %19, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool28.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool28.not.4, label %while.body.4.while.end_crit_edge, label %do.end.4

while.body.4.while.end_crit_edge:                 ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

do.end.4:                                         ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #6
  %call32.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %indvars.iv, i32 noundef 3, i32 noundef %call27.4) #7
  br label %while.end

while.end:                                        ; preds = %do.end.4, %while.body.4.while.end_crit_edge, %do.end35.3.while.end_crit_edge, %do.end35.2.while.end_crit_edge, %do.end35.1.while.end_crit_edge, %do.end35.while.end_crit_edge
  %call25.lcssa = phi i8 [ %call25, %do.end35.while.end_crit_edge ], [ %call25.1, %do.end35.1.while.end_crit_edge ], [ %call25.2, %do.end35.2.while.end_crit_edge ], [ %call25.3, %do.end35.3.while.end_crit_edge ], [ %call25.4, %do.end.4 ], [ %call25.4, %while.body.4.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %1)
  %20 = icmp ult i8 %1, 4
  br i1 %20, label %switch.lookup131, label %while.end.sw.epilog41_crit_edge

while.end.sw.epilog41_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog41

switch.lookup131:                                 ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  %sext = shl i32 %indvars.iv, 24
  %21 = ashr exact i32 %sext, 24
  %switch.gep132 = getelementptr inbounds [4 x i32], ptr @switch.table.rtl92e_config_rf.9, i32 0, i32 %21
  %22 = ptrtoint ptr %switch.gep132 to i32
  call void @__asan_load4_noabort(i32 %22)
  %switch.load133 = load i32, ptr %switch.gep132, align 4
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx, align 4
  tail call void @rtl92e_set_bb_reg(ptr noundef %dev, i32 noundef %24, i32 noundef %switch.load133, i32 noundef %u4RegValue.1) #4
  br label %sw.epilog41

sw.epilog41:                                      ; preds = %switch.lookup131, %while.end.sw.epilog41_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call25.lcssa)
  %tobool42.not = icmp eq i8 %call25.lcssa, 0
  br i1 %tobool42.not, label %sw.epilog41.for.inc_crit_edge, label %if.then43

sw.epilog41.for.inc_crit_edge:                    ; preds = %sw.epilog41
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then43:                                        ; preds = %sw.epilog41
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.rtl92e_config_rf, i32 noundef %indvars.iv) #7
  br label %cleanup

for.inc:                                          ; preds = %sw.epilog41.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %u4RegValue.2 = phi i32 [ %u4RegValue.1, %sw.epilog41.for.inc_crit_edge ], [ %u4RegValue.0117, %for.body.for.inc_crit_edge ]
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %25 = ptrtoint ptr %NumTotalRFPath to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %NumTotalRFPath, align 8
  %27 = zext i8 %26 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %27
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %do.body46

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

do.body46:                                        ; preds = %for.inc
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %28 = load i32, ptr @rt_global_debug_component, align 4
  %and47 = and i32 %28, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %do.body46.cleanup_crit_edge, label %do.end52

do.body46.cleanup_crit_edge:                      ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end52:                                         ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #6
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end52, %do.body46.cleanup_crit_edge, %if.then43, %if.then16
  %cmp110 = phi i1 [ false, %if.then16 ], [ false, %if.then43 ], [ true, %do.body46.cleanup_crit_edge ], [ true, %do.end52 ]
  ret i1 %cmp110
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl92e_get_bb_reg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_set_bb_reg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl92e_check_bb_and_rf(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtl92e_config_rf_path(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl92e_get_rf_reg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92e_set_cck_tx_power(ptr noundef %dev, i8 noundef zeroext %powerlevel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %powerlevel to i32
  %bDynamicTxLowPower = getelementptr i8, ptr %dev, i32 36146
  %0 = ptrtoint ptr %bDynamicTxLowPower to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bDynamicTxLowPower, align 2, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.then:                                          ; preds = %entry
  %CustomerID = getelementptr i8, ptr %dev, i32 31412
  %2 = ptrtoint ptr %CustomerID to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %CustomerID, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %3)
  %cmp = icmp eq i32 %3, 10
  br i1 %cmp, label %if.then.if.end4_crit_edge, label %if.else

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %CckPwEnl = getelementptr i8, ptr %dev, i32 36014
  %4 = ptrtoint ptr %CckPwEnl to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %CckPwEnl, align 2
  %conv3 = zext i8 %5 to i32
  %add = add nuw nsw i32 %conv3, %conv
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %TxAGC.0 = phi i32 [ %add, %if.else ], [ %conv, %entry.if.end4_crit_edge ], [ 34, %if.then.if.end4_crit_edge ]
  %6 = tail call i32 @llvm.umin.i32(i32 %TxAGC.0, i32 36)
  tail call void @rtl92e_set_bb_reg(ptr noundef %dev, i32 noundef 3592, i32 noundef 32512, i32 noundef %6) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92e_set_ofdm_tx_power(ptr noundef %dev, i8 noundef zeroext %powerlevel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 30772
  %conv = zext i8 %powerlevel to i32
  %LegacyHTTxPowerDiff = getelementptr i8, ptr %dev, i32 36140
  %0 = ptrtoint ptr %LegacyHTTxPowerDiff to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %LegacyHTTxPowerDiff, align 8
  %conv1 = zext i8 %1 to i32
  %add = add nuw nsw i32 %conv1, %conv
  %shl = shl i32 %add, 24
  %shl2 = shl nuw nsw i32 %add, 16
  %shl3 = shl nuw nsw i32 %add, 8
  %or = or i32 %shl2, %add
  %or4 = or i32 %or, %shl
  %or5 = or i32 %or4, %shl3
  %or12 = mul nuw i32 %conv, 16843009
  %bDynamicTxHighPower = getelementptr i8, ptr %dev, i32 36145
  %Pwr_Track = getelementptr i8, ptr %dev, i32 36020
  br label %for.body

for.body:                                         ; preds = %if.end72.for.body_crit_edge, %entry
  %indvars.iv = phi i32 [ 0, %entry ], [ %indvars.iv.next, %if.end72.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 134, i32 %indvars.iv
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %indvars.iv)
  %cmp16 = icmp ult i32 %indvars.iv, 2
  %or5.or12 = select i1 %cmp16, i32 %or5, i32 %or12
  %add18 = add i32 %3, %or5.or12
  %4 = trunc i32 %add18 to i8
  %conv19 = and i8 %4, 127
  %and20 = lshr i32 %add18, 8
  %5 = trunc i32 %and20 to i8
  %conv21 = and i8 %5, 127
  %and22 = lshr i32 %add18, 16
  %6 = trunc i32 %and22 to i8
  %conv24 = and i8 %6, 127
  %and25 = lshr i32 %add18, 24
  %7 = trunc i32 %and25 to i8
  %conv27 = and i8 %7, 127
  %8 = tail call i8 @llvm.umin.i8(i8 %conv19, i8 36)
  %9 = tail call i8 @llvm.umin.i8(i8 %conv21, i8 36)
  %10 = tail call i8 @llvm.umin.i8(i8 %conv24, i8 36)
  %11 = tail call i8 @llvm.umin.i8(i8 %conv27, i8 36)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %indvars.iv)
  %cmp47 = icmp eq i32 %indvars.iv, 3
  br i1 %cmp47, label %if.then49, label %for.body.if.end60_crit_edge

for.body.if.end60_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end60

if.then49:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %conv50 = zext i8 %11 to i32
  %shl51 = shl nuw nsw i32 %conv50, 24
  %conv52 = zext i8 %10 to i32
  %shl53 = shl nuw nsw i32 %conv52, 16
  %or54 = or i32 %shl51, %shl53
  %conv55 = zext i8 %9 to i32
  %shl56 = shl nuw nsw i32 %conv55, 8
  %or57 = or i32 %or54, %shl56
  %conv58 = zext i8 %8 to i32
  %or59 = or i32 %or57, %conv58
  %12 = ptrtoint ptr %Pwr_Track to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or59, ptr %Pwr_Track, align 8
  br label %if.end60

if.end60:                                         ; preds = %if.then49, %for.body.if.end60_crit_edge
  %13 = ptrtoint ptr %bDynamicTxHighPower to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bDynamicTxHighPower, align 1, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  br i1 %tobool.not, label %if.else, label %if.end60.if.end72_crit_edge

if.end60.if.end72_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end72

if.else:                                          ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #6
  %conv62 = zext i8 %11 to i32
  %shl63 = shl nuw nsw i32 %conv62, 24
  %conv64 = zext i8 %10 to i32
  %shl65 = shl nuw nsw i32 %conv64, 16
  %or66 = or i32 %shl63, %shl65
  %conv67 = zext i8 %9 to i32
  %shl68 = shl nuw nsw i32 %conv67, 8
  %or69 = or i32 %or66, %shl68
  %conv70 = zext i8 %8 to i32
  %or71 = or i32 %or69, %conv70
  br label %if.end72

if.end72:                                         ; preds = %if.else, %if.end60.if.end72_crit_edge
  %writeVal.0 = phi i32 [ %or71, %if.else ], [ 50529027, %if.end60.if.end72_crit_edge ]
  %arrayidx74 = getelementptr [6 x i16], ptr @__const.rtl92e_set_ofdm_tx_power.RegOffset, i32 0, i32 %indvars.iv
  %15 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx74, align 2
  %conv75 = zext i16 %16 to i32
  tail call void @rtl92e_set_bb_reg(ptr noundef %dev, i32 noundef %conv75, i32 noundef 2139062143, i32 noundef %writeVal.0) #4
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 6
  br i1 %exitcond.not, label %for.end, label %if.end72.for.body_crit_edge

if.end72.for.body_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !17, !19, !20}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8190P_rtl8256.c", i32 20, i32 20}
!2 = !{ptr @__func__.rtl92e_set_bandwidth, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8190P_rtl8256.c", i32 20, i32 51}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8190P_rtl8256.c", i32 46, i32 20}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8190P_rtl8256.c", i32 103, i32 20}
!8 = !{ptr @__func__.rtl92e_config_rf, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8190P_rtl8256.c", i32 104, i32 8}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8190P_rtl8256.c", i32 118, i32 4}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @rtl92e_config_rf._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @rtl92e_config_rf._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8190P_rtl8256.c", i32 140, i32 8}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8190P_rtl8256.c", i32 146, i32 2}
!19 = !{ptr @rtl92e_config_rf._entry.6, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @rtl92e_config_rf._entry_ptr.8, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{i8 0, i8 2}
