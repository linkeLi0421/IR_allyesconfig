; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlwifi/iwl-trans.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlwifi/iwl-trans.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.5 }
%union.anon.5 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.iwl_trans = type { i8, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, [52 x i8], [3 x i32], i8, i8, i8, i8, i8, ptr, i32, i8, %struct.wait_queue_head, i8, i32, ptr, ptr, [50 x i8], ptr, %struct.lockdep_map, %struct.iwl_trans_debug, %struct.iwl_self_init_dram, i32, ptr, %struct.iwl_trans_txqs, [0 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.iwl_trans_debug = type { i8, i8, ptr, [32 x ptr], ptr, [2 x i32], i32, [2 x i32], [2 x i32], i32, i32, i32, [5 x %struct.iwl_fw_ini_allocation_tlv], [5 x %struct.iwl_fw_mon], %struct.iwl_dram_data, i8, i32, i64, [64 x ptr], %struct.list_head, [27 x %struct.iwl_dbg_tlv_time_point_data], %struct.list_head, i32, i32, i8, i32 }
%struct.iwl_fw_ini_allocation_tlv = type { %struct.iwl_fw_ini_header, i32, i32, i32, i32, i32 }
%struct.iwl_fw_ini_header = type { i32, i32 }
%struct.iwl_fw_mon = type { i32, ptr }
%struct.iwl_dram_data = type { i32, ptr, i32 }
%struct.iwl_dbg_tlv_time_point_data = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.iwl_self_init_dram = type { ptr, i32, ptr, i32 }
%struct.iwl_trans_txqs = type { [16 x i32], [16 x i32], [512 x ptr], ptr, i32, i8, i8, i8, ptr, %struct.anon.117, %struct.anon.118, %struct.iwl_dma_ptr }
%struct.anon.117 = type { i8, i8, i32 }
%struct.anon.118 = type { i8, i16, i8 }
%struct.iwl_dma_ptr = type { i32, ptr, i32 }
%struct.iwl_trans_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iwl_cfg_trans_params = type { ptr, i32, i32, i32, i32, i16 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.iwl_host_cmd = type { [2 x ptr], ptr, i32, i32, i32, i32, [2 x i16], [2 x i8] }
%struct.iwl_hcmd_arr = type { ptr, i32 }
%struct.iwl_hcmd_names = type { i8, ptr }
%struct.iwl_trans_config = type { ptr, i8, i8, i32, ptr, i32, i32, i8, i8, ptr, i32, i8, i8 }

@iwl_trans_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sync_cmd_lockdep_map\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/wireless/intel/iwlwifi/iwl-trans.c\00", [49 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"iwlwifi:bc\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"iwl_cmd_pool:%s\00", [16 x i8] zeroinitializer }, align 32
@iwl_trans_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&trans->wait_command_queue\00", [37 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s bad state = %d\0A\00", [45 x i8] zeroinitializer }, align 32
@__func__.iwl_trans_send_cmd = private unnamed_addr constant [19 x i8] c"iwl_trans_send_cmd\00", align 1
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UNKNOWN\00", [24 x i8] zeroinitializer }, align 32
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 25, i32 31 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 35, i32 49 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 43, i32 2 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 91, i32 42 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 103, i32 4 }
@___asan_gen_.22 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 118, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 167, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.32 = private constant [50 x i8] c"../drivers/net/wireless/intel/iwlwifi/iwl-trans.c\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 224, i32 10 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @iwl_trans_alloc.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @iwl_trans_init.__key, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_trans_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_trans_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @iwl_trans_alloc(i32 noundef %priv_size, ptr noundef %dev, ptr noundef %ops, ptr noundef %cfg_trans) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %priv_size, 4088
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %add, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %cfg_trans, ptr %trans_cfg, align 4
  %sync_cmd_lockdep_map = getelementptr inbounds %struct.iwl_trans, ptr %call.i, i32 0, i32 31
  tail call void @lockdep_init_map_type(ptr noundef %sync_cmd_lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @iwl_trans_alloc.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %dev1 = getelementptr inbounds %struct.iwl_trans, ptr %call.i, i32 0, i32 8
  %1 = ptrtoint ptr %dev1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %dev1, align 8
  %ops2 = getelementptr inbounds %struct.iwl_trans, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %ops2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ops, ptr %ops2, align 4
  %num_rx_queues = getelementptr inbounds %struct.iwl_trans, ptr %call.i, i32 0, i32 25
  %3 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %num_rx_queues, align 8
  %wait_txq_empty = getelementptr inbounds %struct.iwl_trans_ops, ptr %ops, i32 0, i32 18
  %4 = ptrtoint ptr %wait_txq_empty to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wait_txq_empty, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %land.rhs, label %if.end.if.end20_crit_edge

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

land.rhs:                                         ; preds = %if.end
  %wait_tx_queues_empty = getelementptr inbounds %struct.iwl_trans_ops, ptr %ops, i32 0, i32 17
  %6 = ptrtoint ptr %wait_tx_queues_empty to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wait_tx_queues_empty, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %do.end, label %land.rhs.if.end20_crit_edge, !prof !27

land.rhs.if.end20_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 43, i32 noundef 9, ptr noundef null) #9
  br label %if.end20

if.end20:                                         ; preds = %do.end, %land.rhs.if.end20_crit_edge, %if.end.if.end20_crit_edge
  %8 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %trans_cfg, align 4
  %use_tfh = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %use_tfh to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load = load i16, ptr %use_tfh, align 4
  %11 = and i16 %bf.load, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool28.not = icmp eq i16 %11, 0
  %.sink67 = select i1 %tobool28.not, i8 36, i8 64
  %.sink66 = select i1 %tobool28.not, i8 20, i8 25
  %.sink = select i1 %tobool28.not, i16 128, i16 256
  %12 = getelementptr inbounds %struct.iwl_trans, ptr %call.i, i32 0, i32 36, i32 10, i32 2
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %.sink67, ptr %12, align 4
  %14 = getelementptr inbounds %struct.iwl_trans, ptr %call.i, i32 0, i32 36, i32 10
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %.sink66, ptr %14, align 8
  %16 = getelementptr inbounds %struct.iwl_trans, ptr %call.i, i32 0, i32 36, i32 10, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %.sink, ptr %16, align 2
  %conv = zext i8 %.sink66 to i32
  %sub = add nsw i32 %conv, -3
  %max_skb_frags = getelementptr inbounds %struct.iwl_trans, ptr %call.i, i32 0, i32 9
  %18 = ptrtoint ptr %max_skb_frags to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub, ptr %max_skb_frags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %entry.cleanup_crit_edge
  ret ptr %call.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_trans_init(ptr noundef %trans) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %0 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trans_cfg, align 4
  %gen2 = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %gen2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %gen2, align 4
  %3 = and i16 %bf.load, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %entry.if.end37_crit_edge, label %if.end4

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %device_family = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %device_family to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %device_family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %5)
  %cmp = icmp ult i32 %5, 19
  %. = select i1 %cmp, i32 64, i32 128
  %.151 = select i1 %cmp, i32 60, i32 68
  br label %if.end37

if.end37:                                         ; preds = %if.end4, %entry.if.end37_crit_edge
  %txcmd_size.0157 = phi i32 [ %.151, %if.end4 ], [ 96, %entry.if.end37_crit_edge ]
  %txcmd_align.0156 = phi i32 [ %., %if.end4 ], [ 4, %entry.if.end37_crit_edge ]
  %device_family39 = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %device_family39 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %device_family39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %7)
  %cmp40 = icmp ugt i32 %7, 18
  %spec.select = select i1 %cmp40, i32 2048, i32 640
  %8 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %spec.select, ptr %8, align 4
  %10 = ptrtoint ptr %gen2 to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load48 = load i16, ptr %gen2, align 4
  %11 = and i16 %bf.load48, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool52.not = icmp eq i16 %11, 0
  br i1 %tobool52.not, label %if.end37.if.end62_crit_edge, label %if.then53

if.end37.if.end62_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.then53:                                        ; preds = %if.end37
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %8, align 4
  %call = tail call ptr @dmam_pool_create(ptr noundef nonnull @.str.2, ptr noundef %13, i32 noundef %15, i32 noundef 256, i32 noundef 0) #9
  %bc_pool = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 3
  %16 = ptrtoint ptr %bc_pool to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call, ptr %bc_pool, align 8
  %tobool59.not = icmp eq ptr %call, null
  br i1 %tobool59.not, label %if.then53.cleanup_crit_edge, label %if.then53.if.end62_crit_edge

if.then53.if.end62_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.then53.cleanup_crit_edge:                      ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end62:                                         ; preds = %if.then53.if.end62_crit_edge, %if.end37.if.end62_crit_edge
  %addr_size = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 10, i32 2
  %17 = ptrtoint ptr %addr_size to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %addr_size, align 4
  %conv = zext i8 %18 to i32
  %19 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %trans_cfg, align 4
  %use_tfh = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %use_tfh to i32
  call void @__asan_load2_noabort(i32 %21)
  %bf.load66 = load i16, ptr %use_tfh, align 4
  %22 = and i16 %bf.load66, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool70.not = icmp eq i16 %22, 0
  %cond = select i1 %tobool70.not, i32 36, i32 64
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %conv)
  %cmp71.not = icmp eq i32 %cond, %conv
  br i1 %cmp71.not, label %if.end62.if.end94_crit_edge, label %do.end88, !prof !28

if.end62.if.end94_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end94

do.end88:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 100, i32 noundef 9, ptr noundef null) #9
  br label %if.end94

if.end94:                                         ; preds = %do.end88, %if.end62.if.end94_crit_edge
  %dev_cmd_pool_name = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 29
  %dev102 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %23 = ptrtoint ptr %dev102 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev102, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %26, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end94.dev_name.exit_crit_edge

if.end94.dev_name.exit_crit_edge:                 ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %24, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end94.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %28, %if.end.i ], [ %26, %if.end94.dev_name.exit_crit_edge ]
  %call104 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %dev_cmd_pool_name, i32 noundef 50, ptr noundef nonnull @.str.3, ptr noundef %retval.0.i)
  %call107 = tail call ptr @kmem_cache_create(ptr noundef %dev_cmd_pool_name, i32 noundef %txcmd_size.0157, i32 noundef %txcmd_align.0156, i32 noundef 8192, ptr noundef null) #9
  %dev_cmd_pool = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 28
  %29 = ptrtoint ptr %dev_cmd_pool to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call107, ptr %dev_cmd_pool, align 4
  %tobool109.not = icmp eq ptr %call107, null
  br i1 %tobool109.not, label %dev_name.exit.cleanup_crit_edge, label %if.end111

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end111:                                        ; preds = %dev_name.exit
  %call112 = tail call noalias ptr @__alloc_percpu(i32 noundef 8, i32 noundef 4) #12
  %tso_hdr_page = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 8
  %30 = ptrtoint ptr %tso_hdr_page to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call112, ptr %tso_hdr_page, align 4
  %tobool116.not = icmp eq ptr %call112, null
  br i1 %tobool116.not, label %if.then117, label %do.body120

if.then117:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %dev_cmd_pool to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev_cmd_pool, align 4
  tail call void @kmem_cache_destroy(ptr noundef %32) #9
  br label %cleanup

do.body120:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #11
  %wait_command_queue = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 24
  tail call void @__init_waitqueue_head(ptr noundef %wait_command_queue, ptr noundef nonnull @.str.4, ptr noundef nonnull @iwl_trans_init.__key) #9
  br label %cleanup

cleanup:                                          ; preds = %do.body120, %if.then117, %dev_name.exit.cleanup_crit_edge, %if.then53.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body120 ], [ -12, %if.then117 ], [ -12, %if.then53.cleanup_crit_edge ], [ -12, %dev_name.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_trans_free(ptr nocapture noundef readonly %trans) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tso_hdr_page = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 8
  %0 = ptrtoint ptr %tso_hdr_page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tso_hdr_page, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %for.cond.preheader

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

for.cond.preheader:                               ; preds = %entry
  %call19 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call19, i32 %2)
  %cmp20 = icmp ult i32 %call19, %2
  br i1 %cmp20, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %call21 = phi i32 [ %call, %if.end.for.body_crit_edge ], [ %call19, %for.cond.preheader.for.body_crit_edge ]
  %3 = ptrtoint ptr %tso_hdr_page to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tso_hdr_page, align 4
  %5 = ptrtoint ptr %4 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call21
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add = add i32 %7, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool4.not = icmp eq i32 %add, 0
  br i1 %tobool4.not, label %for.body.if.end_crit_edge, label %land.lhs.true

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %8 = inttoptr i32 %add to ptr
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %tobool5.not = icmp eq ptr %10, null
  br i1 %tobool5.not, label %land.lhs.true.if.end_crit_edge, label %if.then6

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__free_pages(ptr noundef nonnull %10, i32 noundef 0) #9
  br label %if.end

if.end:                                           ; preds = %if.then6, %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %call = tail call i32 @cpumask_next(i32 noundef %call21, ptr noundef nonnull @__cpu_possible_mask) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %11 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %11
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %12 = ptrtoint ptr %tso_hdr_page to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tso_hdr_page, align 4
  tail call void @free_percpu(ptr noundef %13) #9
  br label %if.end10

if.end10:                                         ; preds = %for.end, %entry.if.end10_crit_edge
  %dev_cmd_pool = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 28
  %14 = ptrtoint ptr %dev_cmd_pool to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_cmd_pool, align 4
  tail call void @kmem_cache_destroy(ptr noundef %15) #9
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_trans_send_cmd(ptr noundef %trans, ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 4
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs:                                         ; preds = %entry
  %status = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 7
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %status, align 4
  %4 = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not = icmp eq i32 %4, 0
  br i1 %tobool1.not, label %land.rhs.if.end_crit_edge, label %land.rhs.cleanup_crit_edge, !prof !28

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %system_pm_mode = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 34
  %5 = ptrtoint ptr %system_pm_mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %system_pm_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp eq i32 %6, 1
  %and6 = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %or.cond180 = select i1 %cmp, i1 %tobool7.not, i1 false
  br i1 %or.cond180, label %if.end.cleanup_crit_edge, label %if.end18, !prof !29

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end18:                                         ; preds = %if.end
  %status19 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 7
  %7 = ptrtoint ptr %status19 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %status19, align 4
  %9 = and i32 %8, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool21.not = icmp eq i32 %9, 0
  br i1 %tobool21.not, label %if.end29, label %if.end18.cleanup_crit_edge, !prof !28

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end29:                                         ; preds = %if.end18
  %state = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 6
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp30.not = icmp eq i32 %11, 2
  br i1 %cmp30.not, label %if.end42, label %do.end, !prof !28

do.end:                                           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %13, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.iwl_trans_send_cmd, i32 noundef %11) #9
  br label %cleanup

if.end42:                                         ; preds = %if.end29
  %14 = and i32 %1, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %14)
  %15 = icmp eq i32 %14, 8
  br i1 %15, label %do.end68, label %if.end83, !prof !27

do.end68:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 172, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end83:                                         ; preds = %if.end42
  %and48 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %__here, label %if.end83.if.end89_crit_edge

if.end83.if.end89_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89

__here:                                           ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  %sync_cmd_lockdep_map = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 31
  tail call void @lock_acquire(ptr noundef %sync_cmd_lockdep_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@iwl_trans_send_cmd, %__here) to i32)) #9
  br label %if.end89

if.end89:                                         ; preds = %__here, %if.end83.if.end89_crit_edge
  %wide_cmd_header = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 23
  %16 = ptrtoint ptr %wide_cmd_header to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %wide_cmd_header, align 8, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool90.not = icmp eq i8 %17, 0
  br i1 %tobool90.not, label %if.end89.if.end100_crit_edge, label %land.lhs.true

if.end89.if.end100_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end100

land.lhs.true:                                    ; preds = %if.end89
  %id = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 5
  %18 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id, align 4
  %20 = and i32 %19, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool92.not = icmp ne i32 %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp95.not = icmp eq i32 %19, 2
  %or.cond181 = or i1 %cmp95.not, %tobool92.not
  br i1 %or.cond181, label %land.lhs.true.if.end100_crit_edge, label %if.then96

land.lhs.true.if.end100_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end100

if.then96:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %or = or i32 %19, 256
  %21 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or, ptr %id, align 4
  br label %if.end100

if.end100:                                        ; preds = %if.then96, %land.lhs.true.if.end100_crit_edge, %if.end89.if.end100_crit_edge
  %call101 = tail call i32 @iwl_trans_txq_send_hcmd(ptr noundef %trans, ptr noundef %cmd) #9
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags, align 4
  %and103 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  br i1 %tobool104.not, label %__here107, label %if.end100.if.end109_crit_edge

if.end100.if.end109_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end109

__here107:                                        ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #11
  %sync_cmd_lockdep_map106 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 31
  tail call void @lock_release(ptr noundef %sync_cmd_lockdep_map106, i32 noundef ptrtoint (ptr blockaddress(@iwl_trans_send_cmd, %__here107) to i32)) #9
  br label %if.end109

if.end109:                                        ; preds = %__here107, %if.end100.if.end109_crit_edge
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags, align 4
  %and112 = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112)
  %tobool113.not = icmp ne i32 %and112, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool115.not = icmp eq i32 %call101, 0
  %or.cond = select i1 %tobool113.not, i1 %tobool115.not, i1 false
  br i1 %or.cond, label %land.end120, label %if.end109.cleanup_crit_edge

if.end109.cleanup_crit_edge:                      ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.end120:                                      ; preds = %if.end109
  %resp_pkt = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 1
  %26 = ptrtoint ptr %resp_pkt to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %resp_pkt, align 4
  %tobool117.not = icmp eq ptr %27, null
  br i1 %tobool117.not, label %28, label %land.end120.cleanup_crit_edge, !prof !27

land.end120.cleanup_crit_edge:                    ; preds = %land.end120
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

28:                                               ; preds = %land.end120
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 188, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %28, %land.end120.cleanup_crit_edge, %if.end109.cleanup_crit_edge, %do.end68, %do.end, %if.end18.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ -22, %do.end68 ], [ -132, %land.rhs.cleanup_crit_edge ], [ -5, %if.end18.cleanup_crit_edge ], [ -5, %28 ], [ 0, %land.end120.cleanup_crit_edge ], [ %call101, %if.end109.cleanup_crit_edge ], [ -112, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_err(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_trans_txq_send_hcmd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @iwl_get_cmd_string(ptr nocapture noundef readonly %trans, i32 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd) #9
  %conv.i29 = trunc i32 %id to i8
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv.i29, ptr %cmd, align 1
  %command_groups = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 21
  %1 = ptrtoint ptr %command_groups to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %command_groups, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %and.i = lshr i32 %id, 8
  %conv = and i32 %and.i, 255
  %command_groups_size = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 22
  %3 = ptrtoint ptr %command_groups_size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %command_groups_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %conv)
  %cmp.not = icmp sgt i32 %4, %conv
  br i1 %cmp.not, label %lor.lhs.false3, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %arrayidx = getelementptr %struct.iwl_hcmd_arr, ptr %2, i32 %conv
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %tobool6.not = icmp eq ptr %6, null
  br i1 %tobool6.not, label %lor.lhs.false3.cleanup_crit_edge, label %if.end

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  %size11 = getelementptr %struct.iwl_hcmd_arr, ptr %2, i32 %conv, i32 1
  %7 = ptrtoint ptr %size11 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size11, align 4
  %call12 = call ptr @bsearch(ptr noundef nonnull %cmd, ptr noundef nonnull %6, i32 noundef %8, i32 noundef 8, ptr noundef nonnull @iwl_hcmd_names_cmp) #9
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.end.cleanup_crit_edge, label %if.end15

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %cmd_name = getelementptr inbounds %struct.iwl_hcmd_names, ptr %call12, i32 0, i32 1
  %9 = ptrtoint ptr %cmd_name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cmd_name, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %10, %if.end15 ], [ @.str.6, %lor.lhs.false3.cleanup_crit_edge ], [ @.str.6, %lor.lhs.false.cleanup_crit_edge ], [ @.str.6, %entry.cleanup_crit_edge ], [ @.str.6, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd) #9
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bsearch(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @iwl_hcmd_names_cmp(ptr nocapture noundef readonly %key, ptr nocapture noundef readonly %elt) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %key, align 1
  %2 = ptrtoint ptr %elt to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %elt, align 4
  %conv = zext i8 %1 to i32
  %conv1 = zext i8 %3 to i32
  %sub = sub nsw i32 %conv, %conv1
  ret i32 %sub
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_cmd_groups_verify_sorted(ptr nocapture noundef readonly %trans) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %command_groups_size = getelementptr inbounds %struct.iwl_trans_config, ptr %trans, i32 0, i32 10
  %0 = ptrtoint ptr %command_groups_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %command_groups_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp30 = icmp sgt i32 %1, 0
  br i1 %cmp30, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %command_groups = getelementptr inbounds %struct.iwl_trans_config, ptr %trans, i32 0, i32 9
  %2 = ptrtoint ptr %command_groups to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %command_groups, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc15.for.body_crit_edge, %for.body.lr.ph
  %i.031 = phi i32 [ 0, %for.body.lr.ph ], [ %inc16, %for.inc15.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.iwl_hcmd_arr, ptr %3, i32 %i.031
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.inc15_crit_edge, label %for.cond2.preheader

for.body.for.inc15_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc15

for.cond2.preheader:                              ; preds = %for.body
  %size = getelementptr %struct.iwl_hcmd_arr, ptr %3, i32 %i.031, i32 1
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 4
  %sub = add i32 %7, -1
  %smax = call i32 @llvm.smax.i32(i32 %sub, i32 0)
  br label %for.cond2

for.cond2:                                        ; preds = %for.body4.for.cond2_crit_edge, %for.cond2.preheader
  %j.0 = phi i32 [ %add, %for.body4.for.cond2_crit_edge ], [ 0, %for.cond2.preheader ]
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0, i32 %smax)
  %exitcond.not = icmp eq i32 %j.0, %smax
  br i1 %exitcond.not, label %for.cond2.for.inc15_crit_edge, label %for.body4

for.cond2.for.inc15_crit_edge:                    ; preds = %for.cond2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc15

for.body4:                                        ; preds = %for.cond2
  %arrayidx6 = getelementptr %struct.iwl_hcmd_names, ptr %5, i32 %j.0
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx6, align 4
  %add = add nuw i32 %j.0, 1
  %arrayidx8 = getelementptr %struct.iwl_hcmd_names, ptr %5, i32 %add
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx8, align 4
  %cmp11 = icmp ugt i8 %9, %11
  br i1 %cmp11, label %for.body4.cleanup_crit_edge, label %for.body4.for.cond2_crit_edge

for.body4.for.cond2_crit_edge:                    ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond2

for.body4.cleanup_crit_edge:                      ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc15:                                        ; preds = %for.cond2.for.inc15_crit_edge, %for.body.for.inc15_crit_edge
  %inc16 = add nuw nsw i32 %i.031, 1
  %exitcond34.not = icmp eq i32 %inc16, %1
  br i1 %exitcond34.not, label %for.inc15.cleanup_crit_edge, label %for.inc15.for.body_crit_edge

for.inc15.for.body_crit_edge:                     ; preds = %for.inc15
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc15.cleanup_crit_edge:                      ; preds = %for.inc15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.inc15.cleanup_crit_edge, %for.body4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -1, %for.body4.cleanup_crit_edge ], [ 0, %for.inc15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @iwl_trans_alloc.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-trans.c", i32 25, i32 31}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-trans.c", i32 35, i32 49}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-trans.c", i32 43, i32 2}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-trans.c", i32 91, i32 42}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-trans.c", i32 103, i32 4}
!10 = !{ptr @iwl_trans_init.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-trans.c", i32 118, i32 2}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-trans.c", i32 167, i32 3}
!15 = !{ptr @__func__.iwl_trans_send_cmd, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-trans.c", i32 224, i32 10}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{!"branch_weights", i32 1, i32 2000}
!28 = !{!"branch_weights", i32 2000, i32 1}
!29 = !{!"branch_weights", i32 1, i32 4001}
!30 = !{i8 0, i8 2}
