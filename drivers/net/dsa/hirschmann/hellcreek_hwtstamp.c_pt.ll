; ModuleID = '/llk/IR_all_yes/drivers/net/dsa/hirschmann/hellcreek_hwtstamp.c_pt.bc'
source_filename = "../drivers/net/dsa/hirschmann/hellcreek_hwtstamp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dsa_switch = type { ptr, ptr, i32, i16, %struct.notifier_block, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.hellcreek = type { ptr, ptr, ptr, ptr, %struct.ptp_clock_info, ptr, %struct.delayed_work, %struct.led_classdev, %struct.led_classdev, %struct.mutex, %struct.mutex, %struct.mutex, ptr, ptr, ptr, ptr, i16, ptr, i64, i64, i16, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ethtool_ts_info = type { i32, i32, i32, i32, [3 x i32], i32, [3 x i32] }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ifreq = type { %union.anon.127, %union.anon.128 }
%union.anon.127 = type { [16 x i8] }
%union.anon.128 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.hellcreek_port = type { ptr, ptr, i32, i16, ptr, %struct.hellcreek_port_hwtstamp, ptr, %struct.delayed_work }
%struct.hellcreek_port_hwtstamp = type { i32, %struct.sk_buff_head, i32, ptr, %struct.hwtstamp_config }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.dsa_switch_tree = type { %struct.list_head, %struct.list_head, %struct.raw_notifier_head, i32, %struct.kref, ptr, ptr, i32, i8, ptr, %struct.list_head, i32, i32 }
%struct.raw_notifier_head = type { ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dsa_port = type { %union.anon.146, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, [6 x i8], i8, i8, ptr, i32, ptr, %struct.devlink_port, ptr, %struct.phylink_config, ptr, ptr, %struct.list_head, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.146 = type { ptr }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.135 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.135 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.ptp_header = type <{ i8, i8, i16, i8, i8, [2 x i8], i64, i32, %struct.port_identity, i16, i8, i8 }>
%struct.port_identity = type { %struct.clock_identity, i16 }
%struct.clock_identity = type { [8 x i8] }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.bio_vec = type { ptr, i32, i32 }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@hellcreek_txtstamp_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 235, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Wrong port for timestamping!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hellcreek_txtstamp_work\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/net/dsa/hirschmann/hellcreek_hwtstamp.c\00", [48 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hellcreek_txtstamp_work._entry_ptr = internal global ptr @hellcreek_txtstamp_work._entry, section ".printk_index", align 4
@hellcreek_txtstamp_work._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 249, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Timeout while waiting for Tx timestamp!\0A\00", [55 x i8] zeroinitializer }, align 32
@hellcreek_txtstamp_work._entry_ptr.10 = internal global ptr @hellcreek_txtstamp_work._entry.8, section ".printk_index", align 4
@hellcreek_ptp_hwtstamp_available._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.5, i32 190, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Tx time stamp lost! This should never happen!\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"hellcreek_ptp_hwtstamp_available\00", [63 x i8] zeroinitializer }, align 32
@hellcreek_ptp_hwtstamp_available._entry_ptr = internal global ptr @hellcreek_ptp_hwtstamp_available._entry, section ".printk_index", align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.16 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 156, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 235, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 248, i32 4 }
@___asan_gen_.42 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.49 = private constant [51 x i8] c"../drivers/net/dsa/hirschmann/hellcreek_hwtstamp.c\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 189, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 1984, i32 2 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @hellcreek_ptp_hwtstamp_available._entry, ptr @hellcreek_ptp_hwtstamp_available._entry_ptr, ptr @hellcreek_txtstamp_work._entry, ptr @hellcreek_txtstamp_work._entry.8, ptr @hellcreek_txtstamp_work._entry_ptr, ptr @hellcreek_txtstamp_work._entry_ptr.10, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @skb_queue_head_init.__key, ptr @.str.13], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hellcreek_txtstamp_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hellcreek_txtstamp_work._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hellcreek_ptp_hwtstamp_available._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hellcreek_get_ts_info(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef writeonly %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %ptp_clock = getelementptr inbounds %struct.hellcreek, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ptp_clock, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @ptp_clock_index(ptr noundef nonnull %3) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call, %cond.true ], [ -1, %entry.cond.end_crit_edge ]
  %phc_index = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 2
  %4 = ptrtoint ptr %phc_index to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %cond, ptr %phc_index, align 4
  %so_timestamping = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 1
  %5 = ptrtoint ptr %so_timestamping to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 69, ptr %so_timestamping, align 4
  %tx_types = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 3
  %6 = ptrtoint ptr %tx_types to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %tx_types, align 4
  %rx_filters = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 5
  %7 = ptrtoint ptr %rx_filters to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4096, ptr %rx_filters, align 4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_index(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hellcreek_port_hwtstamp_set(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef readonly %ifr) local_unnamed_addr #0 align 64 {
entry:
  %config = alloca %struct.hwtstamp_config, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %config) #7
  %2 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %config, align 4, !annotation !37
  %3 = getelementptr inbounds %struct.hwtstamp_config, ptr %config, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !37
  %5 = getelementptr inbounds %struct.hwtstamp_config, ptr %config, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !37
  %ports = getelementptr inbounds %struct.hellcreek, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ports, align 4
  %ifr_ifru = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %9 = ptrtoint ptr %ifr_ifru to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ifr_ifru, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 156) #7
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %11 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %10, i32 12, i32 -1226833920) #10, !srcloc !38
  %asmresult.i.i = extractvalue { i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !39

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %config, i32 noundef 12) #7
  %12 = call i32 @llvm.read_register.i32(metadata !27) #7
  %and.i.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 4
  %14 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !40
  %and.i.i.i.i = and i32 %14, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #7, !srcloc !41
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %config, ptr noundef %10, i32 noundef 12) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #7, !srcloc !41
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !39

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 12, %entry.if.then11.i.i_crit_edge ], [ 12, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 12, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %config, i32 %sub.i.i
  %15 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %16 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ports, align 4
  %port_hwtstamp.i = getelementptr %struct.hellcreek_port, ptr %17, i32 %port, i32 5
  %call.i.i.i24 = call zeroext i1 @__kasan_check_write(ptr noundef %port_hwtstamp.i, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !43
  call void @llvm.prefetch.p0(ptr %port_hwtstamp.i, i32 1, i32 3, i32 1) #7
  %18 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %port_hwtstamp.i, ptr %port_hwtstamp.i, i32 1, ptr elementtype(i32) %port_hwtstamp.i) #7, !srcloc !44
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %3, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %20, label %if.end.cleanup_crit_edge [
    i32 1, label %if.end.sw.epilog.i_crit_edge
    i32 0, label %sw.bb1.i
  ]

if.end.sw.epilog.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb1.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %3, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb1.i, %if.end.sw.epilog.i_crit_edge
  %tx_tstamp_enable.0.off0.i = phi i1 [ true, %sw.bb1.i ], [ false, %if.end.sw.epilog.i_crit_edge ]
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %5, align 4
  %.off = add i32 %24, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %.off)
  %switch = icmp ult i32 %.off, 9
  br i1 %switch, label %sw.epilog10.i, label %sw.epilog.i.cleanup_crit_edge

sw.epilog.i.cleanup_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.epilog10.i:                                    ; preds = %sw.epilog.i
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 12, ptr %5, align 4
  br i1 %tx_tstamp_enable.0.off0.i, label %sw.epilog10.i.cleanup_crit_edge, label %if.then.i18

sw.epilog10.i.cleanup_crit_edge:                  ; preds = %sw.epilog10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i18:                                      ; preds = %sw.epilog10.i
  call void @_set_bit(i32 noundef 0, ptr noundef %port_hwtstamp.i) #7
  %tstamp_config = getelementptr %struct.hellcreek_port, ptr %8, i32 %port, i32 5, i32 4
  %26 = call ptr @memcpy(ptr %tstamp_config, ptr %config, i32 12)
  %27 = ptrtoint ptr %ifr_ifru to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ifr_ifru, align 4
  call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 174) #7
  %call.i.i17 = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i17, label %if.then.i18.cleanup_crit_edge, label %if.end.i.i21

if.then.i18.cleanup_crit_edge:                    ; preds = %if.then.i18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i21:                                     ; preds = %if.then.i18
  %29 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %28, i32 12, i32 -1226833920) #10, !srcloc !45
  %asmresult.i.i19 = extractvalue { i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i19)
  %cmp.i.i20 = icmp eq i32 %asmresult.i.i19, 0
  br i1 %cmp.i.i20, label %copy_to_user.exit, label %if.end.i.i21.cleanup_crit_edge

if.end.i.i21.cleanup_crit_edge:                   ; preds = %if.end.i.i21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i21
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i22 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %config, i32 noundef 12) #7
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %28, ptr noundef nonnull %config, i32 noundef 12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool7.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool7.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end.i.i21.cleanup_crit_edge, %if.then.i18.cleanup_crit_edge, %sw.epilog10.i.cleanup_crit_edge, %sw.epilog.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ -14, %if.then11.i.i ], [ -34, %if.end.cleanup_crit_edge ], [ -34, %sw.epilog10.i.cleanup_crit_edge ], [ -14, %if.then.i18.cleanup_crit_edge ], [ -14, %if.end.i.i21.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ], [ -34, %sw.epilog.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %config) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hellcreek_port_hwtstamp_get(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef readonly %ifr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %ports = getelementptr inbounds %struct.hellcreek, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ports, align 4
  %tstamp_config = getelementptr %struct.hellcreek_port, ptr %3, i32 %port, i32 5, i32 4
  %ifr_ifru = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %4 = ptrtoint ptr %ifr_ifru to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ifr_ifru, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 174) #7
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %entry.copy_to_user.exit.thread_crit_edge, label %if.end.i.i

entry.copy_to_user.exit.thread_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit.thread

if.end.i.i:                                       ; preds = %entry
  %6 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %5, i32 12, i32 -1226833920) #10, !srcloc !45
  %asmresult.i.i = extractvalue { i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %copy_to_user.exit, label %if.end.i.i.copy_to_user.exit.thread_crit_edge

if.end.i.i.copy_to_user.exit.thread_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit.thread

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tstamp_config, i32 noundef 12) #7
  %call.i1.i.i = tail call i32 @arm_copy_to_user(ptr noundef %5, ptr noundef %tstamp_config, i32 noundef 12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %copy_to_user.exit, %if.end.i.i.copy_to_user.exit.thread_crit_edge, %entry.copy_to_user.exit.thread_crit_edge
  %7 = phi i32 [ -14, %entry.copy_to_user.exit.thread_crit_edge ], [ -14, %if.end.i.i.copy_to_user.exit.thread_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hellcreek_hwtstamp_work(ptr noundef %ptp) local_unnamed_addr #0 align 64 {
entry:
  %received.i.i = alloca %struct.sk_buff_head, align 4
  %shhwtstamps.i = alloca %struct.skb_shared_hwtstamps, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ptp, i32 -16
  %ds1 = getelementptr i8, ptr %ptp, i32 -8
  %0 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ds1, align 8
  %num_ports = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp29.not = icmp eq i32 %3, 0
  br i1 %cmp29.not, label %entry.for.end.thread_crit_edge, label %for.body.lr.ph

entry.for.end.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.thread

for.body.lr.ph:                                   ; preds = %entry
  %dst1.i.i = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 1
  %ports = getelementptr i8, ptr %ptp, i32 108
  %dev.i.i = getelementptr i8, ptr %ptp, i32 -12
  %ptp_lock.i = getelementptr i8, ptr %ptp, i32 1196
  %4 = getelementptr inbounds i8, ptr %received.i.i, i32 12
  %prev.i.i.i = getelementptr inbounds %struct.anon.79, ptr %received.i.i, i32 0, i32 1
  %qlen.i.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %received.i.i, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %restart.035 = phi i32 [ 0, %for.body.lr.ph ], [ %restart.2, %cleanup.for.body_crit_edge ]
  %i.030 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %5 = ptrtoint ptr %dst1.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dst1.i.i, align 4
  %ports.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn20.i.i = load ptr, ptr %ports.i.i, align 4
  %cmp.not21.i.i = icmp eq ptr %.pn20.i.i, %ports.i.i
  br i1 %cmp.not21.i.i, label %for.body.dsa_is_user_port.exit_crit_edge, label %for.body.for.body.i.i_crit_edge

for.body.for.body.i.i_crit_edge:                  ; preds = %for.body
  br label %for.body.i.i

for.body.dsa_is_user_port.exit_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsa_is_user_port.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.for.body.i.i_crit_edge
  %.pn22.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn20.i.i, %for.body.for.body.i.i_crit_edge ]
  %ds3.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -432
  %8 = ptrtoint ptr %ds3.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ds3.i.i, align 4
  %cmp4.i.i = icmp eq ptr %9, %1
  br i1 %cmp4.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %index.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -428
  %10 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %i.030)
  %cmp5.i.i = icmp eq i32 %11, %i.030
  br i1 %cmp5.i.i, label %cleanup.split.loop.exit18.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %12 = ptrtoint ptr %.pn22.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn.i.i = load ptr, ptr %.pn22.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %ports.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.dsa_is_user_port.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc.i.i.dsa_is_user_port.exit_crit_edge:      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsa_is_user_port.exit

cleanup.split.loop.exit18.i.i:                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %dp.0.le.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -448
  br label %dsa_is_user_port.exit

dsa_is_user_port.exit:                            ; preds = %cleanup.split.loop.exit18.i.i, %for.inc.i.i.dsa_is_user_port.exit_crit_edge, %for.body.dsa_is_user_port.exit_crit_edge
  %retval.0.i.i = phi ptr [ %dp.0.le.i.i, %cleanup.split.loop.exit18.i.i ], [ null, %for.body.dsa_is_user_port.exit_crit_edge ], [ null, %for.inc.i.i.dsa_is_user_port.exit_crit_edge ]
  %type.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i, i32 0, i32 6
  %13 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %14)
  %cmp.i = icmp eq i32 %14, 3
  br i1 %cmp.i, label %if.end, label %dsa_is_user_port.exit.cleanup_crit_edge

dsa_is_user_port.exit.cleanup_crit_edge:          ; preds = %dsa_is_user_port.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %dsa_is_user_port.exit
  %15 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ports, align 4
  %port_hwtstamp = getelementptr %struct.hellcreek_port, ptr %16, i32 %i.030, i32 5
  %17 = ptrtoint ptr %port_hwtstamp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %port_hwtstamp, align 4
  %19 = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not = icmp eq i32 %19, 0
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %shhwtstamps.i) #7
  %tx_skb.i = getelementptr %struct.hellcreek_port, ptr %16, i32 %i.030, i32 5, i32 3
  %20 = ptrtoint ptr %tx_skb.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tx_skb.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.then3.hellcreek_txtstamp_work.exit_crit_edge, label %if.end.i

if.then3.hellcreek_txtstamp_work.exit_crit_edge:  ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %hellcreek_txtstamp_work.exit

if.end.i:                                         ; preds = %if.then3
  %22 = zext i32 %i.030 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %i.030, label %do.end.i [
    i32 2, label %if.end.i.sw.epilog.i_crit_edge
    i32 3, label %sw.bb1.i
  ]

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.3) #11
  br label %hellcreek_txtstamp_work.exit

sw.epilog.i:                                      ; preds = %sw.bb1.i, %if.end.i.sw.epilog.i_crit_edge
  %status_reg.0.i = phi i32 [ 78, %sw.bb1.i ], [ 62, %if.end.i.sw.epilog.i_crit_edge ]
  %data_reg.0.i = phi i32 [ 80, %sw.bb1.i ], [ 64, %if.end.i.sw.epilog.i_crit_edge ]
  %call.i.i = call zeroext i16 @hellcreek_ptp_read(ptr noundef %add.ptr, i32 noundef %status_reg.0.i) #7
  %conv.i.i = zext i16 %call.i.i to i32
  %and.i.i = and i32 %conv.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %sw.epilog.i.hellcreek_ptp_hwtstamp_available.exit.i_crit_edge, label %do.end.i.i

sw.epilog.i.hellcreek_ptp_hwtstamp_available.exit.i_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hellcreek_ptp_hwtstamp_available.exit.i

do.end.i.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.11) #11
  br label %hellcreek_ptp_hwtstamp_available.exit.i

hellcreek_ptp_hwtstamp_available.exit.i:          ; preds = %do.end.i.i, %sw.epilog.i.hellcreek_ptp_hwtstamp_available.exit.i_crit_edge
  %27 = and i32 %conv.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.i23 = icmp eq i32 %27, 0
  br i1 %cmp.i23, label %if.then2.i, label %if.end11.i

if.then2.i:                                       ; preds = %hellcreek_ptp_hwtstamp_available.exit.i
  %tx_tstamp_start.i = getelementptr %struct.hellcreek_port, ptr %16, i32 %i.030, i32 5, i32 2
  %28 = ptrtoint ptr %tx_tstamp_start.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tx_tstamp_start.i, align 4
  %add.i = add i32 %29, 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %30 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp4.i = icmp slt i32 %sub.i, 0
  br i1 %cmp4.i, label %do.end8.i, label %if.then2.i.hellcreek_txtstamp_work.exit_crit_edge

if.then2.i.hellcreek_txtstamp_work.exit_crit_edge: ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hellcreek_txtstamp_work.exit

do.end8.i:                                        ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.9) #11
  %33 = ptrtoint ptr %tx_skb.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tx_skb.i, align 4
  call void @__dev_kfree_skb_any(ptr noundef %34, i32 noundef 1) #7
  %35 = ptrtoint ptr %tx_skb.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %tx_skb.i, align 4
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %port_hwtstamp, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !43
  call void @llvm.prefetch.p0(ptr %port_hwtstamp, i32 1, i32 3, i32 1) #7
  %36 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %port_hwtstamp, ptr %port_hwtstamp, i32 2, ptr elementtype(i32) %port_hwtstamp) #7, !srcloc !44
  br label %hellcreek_txtstamp_work.exit

if.end11.i:                                       ; preds = %hellcreek_ptp_hwtstamp_available.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @mutex_lock_nested(ptr noundef %ptp_lock.i, i32 noundef 0) #7
  %call.i42.i = call zeroext i16 @hellcreek_ptp_read(ptr noundef %add.ptr, i32 noundef %data_reg.0.i) #7
  %call1.i.i = call zeroext i16 @hellcreek_ptp_read(ptr noundef %add.ptr, i32 noundef %data_reg.0.i) #7
  %call2.i.i = call zeroext i16 @hellcreek_ptp_read(ptr noundef %add.ptr, i32 noundef %data_reg.0.i) #7
  %call3.i.i = call zeroext i16 @hellcreek_ptp_read(ptr noundef %add.ptr, i32 noundef %data_reg.0.i) #7
  %call4.i.i = call zeroext i16 @hellcreek_ptp_read(ptr noundef %add.ptr, i32 noundef %data_reg.0.i) #7
  %conv.i43.i = zext i16 %call4.i.i to i64
  %conv5.i.i = zext i16 %call3.i.i to i64
  %shl.i.i = shl nuw nsw i64 %conv5.i.i, 16
  %or.i.i = or i64 %shl.i.i, %conv.i43.i
  %call13.i = call i64 @hellcreek_ptp_gettime_seconds(ptr noundef %add.ptr, i64 noundef %or.i.i) #7
  %add14.i = add i64 %or.i.i, %call13.i
  call void @mutex_unlock(ptr noundef %ptp_lock.i) #7
  %37 = ptrtoint ptr %shhwtstamps.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %add14.i, ptr %shhwtstamps.i, align 8
  %38 = ptrtoint ptr %tx_skb.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tx_skb.i, align 4
  store ptr null, ptr %tx_skb.i, align 4
  %call.i.i44.i = call zeroext i1 @__kasan_check_write(ptr noundef %port_hwtstamp, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !43
  call void @llvm.prefetch.p0(ptr %port_hwtstamp, i32 1, i32 3, i32 1) #7
  %40 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %port_hwtstamp, ptr %port_hwtstamp, i32 2, ptr elementtype(i32) %port_hwtstamp) #7, !srcloc !44
  call void @skb_complete_tx_timestamp(ptr noundef %39, ptr noundef nonnull %shhwtstamps.i) #7
  br label %hellcreek_txtstamp_work.exit

hellcreek_txtstamp_work.exit:                     ; preds = %if.end11.i, %do.end8.i, %if.then2.i.hellcreek_txtstamp_work.exit_crit_edge, %do.end.i, %if.then3.hellcreek_txtstamp_work.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %do.end.i ], [ 0, %do.end8.i ], [ 0, %if.end11.i ], [ 0, %if.then3.hellcreek_txtstamp_work.exit_crit_edge ], [ 1, %if.then2.i.hellcreek_txtstamp_work.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %shhwtstamps.i) #7
  %or = or i32 %retval.0.i, %restart.035
  br label %if.end5

if.end5:                                          ; preds = %hellcreek_txtstamp_work.exit, %if.end.if.end5_crit_edge
  %restart.1 = phi i32 [ %or, %hellcreek_txtstamp_work.exit ], [ %restart.035, %if.end.if.end5_crit_edge ]
  %rx_queue.i = getelementptr %struct.hellcreek_port, ptr %16, i32 %i.030, i32 5, i32 1
  %call.i = call ptr @skb_dequeue(ptr noundef %rx_queue.i) #7
  %tobool.not.i24 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i24, label %if.end5.cleanup_crit_edge, label %if.then.i

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %received.i.i) #7
  %41 = call ptr @memset(ptr %4, i32 255, i32 44)
  %42 = ptrtoint ptr %received.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %received.i.i, ptr %received.i.i, align 4
  %43 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %received.i.i, ptr %prev.i.i.i, align 4
  %44 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %qlen.i.i.i, align 4
  %lock.i.i = getelementptr %struct.hellcreek_port, ptr %16, i32 %i.030, i32 5, i32 1, i32 2
  %call2.i.i25 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #7
  %45 = ptrtoint ptr %rx_queue.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rx_queue.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %46, %rx_queue.i
  br i1 %cmp.i.not.i.i.i, label %if.then.i.for.body.lr.ph.i.i_crit_edge, label %if.then.i.i.i

if.then.i.for.body.lr.ph.i.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.lr.ph.i.i

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev.i.i.i, align 4
  %prev2.i.i.i.i = getelementptr %struct.hellcreek_port, ptr %16, i32 %i.030, i32 5, i32 1, i32 0, i32 0, i32 1
  %49 = ptrtoint ptr %prev2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prev2.i.i.i.i, align 4
  %prev5.i.i.i.i = getelementptr inbounds %struct.anon.51, ptr %46, i32 0, i32 1
  %51 = ptrtoint ptr %prev5.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %48, ptr %prev5.i.i.i.i, align 4
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %46, ptr %48, align 8
  %53 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %received.i.i, ptr %50, align 8
  store volatile ptr %50, ptr %prev.i.i.i, align 4
  %qlen.i2.i.i = getelementptr %struct.hellcreek_port, ptr %16, i32 %i.030, i32 5, i32 1, i32 1
  %54 = ptrtoint ptr %qlen.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %qlen.i2.i.i, align 4
  %56 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %57, %55
  store i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  %58 = ptrtoint ptr %rx_queue.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %rx_queue.i, ptr %rx_queue.i, align 4
  store ptr %rx_queue.i, ptr %prev2.i.i.i.i, align 4
  store i32 0, ptr %qlen.i2.i.i, align 4
  br label %for.body.lr.ph.i.i

for.body.lr.ph.i.i:                               ; preds = %if.then.i.i.i, %if.then.i.for.body.lr.ph.i.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i.i25) #7
  br label %for.body.i.i26

for.body.i.i26:                                   ; preds = %if.then.i4.i.i, %for.body.lr.ph.i.i
  %skb.addr.06.i.i = phi ptr [ %call.i, %for.body.lr.ph.i.i ], [ %67, %if.then.i4.i.i ]
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.06.i.i, i32 0, i32 3
  %59 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %cb.i.i, align 8
  %call6.i.i = call ptr @ptp_parse_header(ptr noundef nonnull %skb.addr.06.i.i, i32 noundef %60) #7
  %reserved2.i.i.i = getelementptr inbounds %struct.ptp_header, ptr %call6.i.i, i32 0, i32 7
  %61 = ptrtoint ptr %reserved2.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %61, i32 4)
  %62 = load i32, ptr %reserved2.i.i.i, align 1
  %conv.i.i.i = zext i32 %62 to i64
  store i32 0, ptr %reserved2.i.i.i, align 1
  call void @mutex_lock_nested(ptr noundef %ptp_lock.i, i32 noundef 0) #7
  %call8.i.i = call i64 @hellcreek_ptp_gettime_seconds(ptr noundef %add.ptr, i64 noundef %conv.i.i.i) #7
  %add.i.i = add i64 %call8.i.i, %conv.i.i.i
  call void @mutex_unlock(ptr noundef %ptp_lock.i) #7
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.06.i.i, i32 0, i32 17
  %63 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %end.i.i.i.i, align 4
  %hwtstamps.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %64, i32 0, i32 7
  %65 = ptrtoint ptr %hwtstamps.i.i.i to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %add.i.i, ptr %hwtstamps.i.i.i, align 8
  %call12.i.i = call i32 @netif_rx_ni(ptr noundef nonnull %skb.addr.06.i.i) #7
  %66 = ptrtoint ptr %received.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %received.i.i, align 4
  %cmp.i.i.i.i = icmp eq ptr %67, %received.i.i
  %cond7.i.i = icmp eq ptr %67, null
  %cond.i.i = or i1 %cmp.i.i.i.i, %cond7.i.i
  br i1 %cond.i.i, label %hellcreek_get_rxts.exit.i, label %if.then.i4.i.i

if.then.i4.i.i:                                   ; preds = %for.body.i.i26
  call void @__sanitizer_cov_trace_pc() #9
  %68 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %qlen.i.i.i, align 4
  %sub.i.i.i.i = add i32 %69, -1
  store volatile i32 %sub.i.i.i.i, ptr %qlen.i.i.i, align 4
  %70 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %67, align 8
  %prev9.i.i.i.i = getelementptr inbounds %struct.anon.51, ptr %67, i32 0, i32 1
  %72 = ptrtoint ptr %prev9.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %prev9.i.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i.i, align 4
  store ptr null, ptr %67, align 8
  %prev17.i.i.i.i = getelementptr inbounds %struct.anon.51, ptr %71, i32 0, i32 1
  %74 = ptrtoint ptr %prev17.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %73, ptr %prev17.i.i.i.i, align 4
  %75 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %71, ptr %73, align 8
  br label %for.body.i.i26

hellcreek_get_rxts.exit.i:                        ; preds = %for.body.i.i26
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %received.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %hellcreek_get_rxts.exit.i, %if.end5.cleanup_crit_edge, %dsa_is_user_port.exit.cleanup_crit_edge
  %restart.2 = phi i32 [ %restart.035, %dsa_is_user_port.exit.cleanup_crit_edge ], [ %restart.1, %if.end5.cleanup_crit_edge ], [ %restart.1, %hellcreek_get_rxts.exit.i ]
  %inc = add nuw i32 %i.030, 1
  %76 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %num_ports, align 4
  %cmp = icmp ult i32 %inc, %77
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %restart.2)
  %tobool6.not = icmp eq i32 %restart.2, 0
  br i1 %tobool6.not, label %for.end.for.end.thread_crit_edge, label %for.end._crit_edge

for.end._crit_edge:                               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %78

for.end.for.end.thread_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end.for.end.thread_crit_edge, %entry.for.end.thread_crit_edge
  br label %78

78:                                               ; preds = %for.end.thread, %for.end._crit_edge
  %79 = phi i32 [ -1, %for.end.thread ], [ 1, %for.end._crit_edge ]
  ret i32 %79
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hellcreek_port_txtstamp(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %ports = getelementptr inbounds %struct.hellcreek, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ports, align 4
  %port_hwtstamp = getelementptr %struct.hellcreek_port, ptr %3, i32 %port, i32 5
  %call = tail call i32 @ptp_classify_raw(ptr noundef %skb) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ports, align 4
  %call.i = tail call ptr @ptp_parse_header(ptr noundef %skb, i32 noundef %call) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %port_hwtstamp.i = getelementptr %struct.hellcreek_port, ptr %5, i32 %port, i32 5
  %6 = ptrtoint ptr %port_hwtstamp.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %port_hwtstamp.i, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.end3

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end.i
  %call4 = tail call ptr @skb_clone_sk(ptr noundef %skb) #7
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %port_hwtstamp, i32 noundef 4) #7
  %8 = ptrtoint ptr %port_hwtstamp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %port_hwtstamp, align 4
  %and.i.i = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %test_and_set_bit_lock.exit, label %if.end7.if.then9_crit_edge

if.end7.if.then9_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9

test_and_set_bit_lock.exit:                       ; preds = %if.end7
  tail call void @llvm.prefetch.p0(ptr %port_hwtstamp, i32 1, i32 3, i32 1) #7
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %port_hwtstamp, ptr %port_hwtstamp, i32 2, ptr elementtype(i32) %port_hwtstamp) #7, !srcloc !46
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !47
  %11 = and i32 %asmresult.i.i.i.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %phi.cmp.i.not = icmp eq i32 %11, 0
  br i1 %phi.cmp.i.not, label %if.end10, label %test_and_set_bit_lock.exit.if.then9_crit_edge

test_and_set_bit_lock.exit.if.then9_crit_edge:    ; preds = %test_and_set_bit_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9

if.then9:                                         ; preds = %test_and_set_bit_lock.exit.if.then9_crit_edge, %if.end7.if.then9_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %call4, i32 noundef 0) #7
  br label %cleanup

if.end10:                                         ; preds = %test_and_set_bit_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  %tx_skb = getelementptr %struct.hellcreek_port, ptr %3, i32 %port, i32 5, i32 3
  %12 = ptrtoint ptr %tx_skb to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call4, ptr %tx_skb, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %tx_tstamp_start = getelementptr %struct.hellcreek_port, ptr %3, i32 %port, i32 5, i32 2
  %14 = ptrtoint ptr %tx_tstamp_start to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %tx_tstamp_start, align 4
  %ptp_clock = getelementptr inbounds %struct.hellcreek, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ptp_clock, align 4
  %call11 = tail call i32 @ptp_schedule_worker(ptr noundef %16, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then9, %if.end3.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_classify_raw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone_sk(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_schedule_worker(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @hellcreek_port_rxtstamp(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr noundef %skb, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %ports = getelementptr inbounds %struct.hellcreek, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ports, align 4
  %rx_filter = getelementptr %struct.hellcreek_port, ptr %3, i32 %port, i32 5, i32 4, i32 2
  %4 = ptrtoint ptr %rx_filter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_filter, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %5)
  %cmp.not = icmp eq i32 %5, 12
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @ptp_parse_header(ptr noundef %skb, i32 noundef %type) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %port_hwtstamp.i = getelementptr %struct.hellcreek_port, ptr %3, i32 %port, i32 5
  %6 = ptrtoint ptr %port_hwtstamp.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %port_hwtstamp.i, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.end2

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end2:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %8 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %type, ptr %cb, align 8
  %rx_queue = getelementptr %struct.hellcreek_port, ptr %3, i32 %port, i32 5, i32 1
  tail call void @skb_queue_tail(ptr noundef %rx_queue, ptr noundef %skb) #7
  %ptp_clock = getelementptr inbounds %struct.hellcreek, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ptp_clock, align 4
  %call3 = tail call i32 @ptp_schedule_worker(ptr noundef %10, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end2 ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ false, %if.end.i.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hellcreek_hwtstamp_setup(ptr noundef %hellcreek) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ds1 = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 2
  %0 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ds1, align 8
  %num_ports = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp9.not = icmp eq i32 %3, 0
  br i1 %cmp9.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dst1.i.i = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 1
  %ports.i = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.010 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %dst1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dst1.i.i, align 4
  %ports.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn20.i.i = load ptr, ptr %ports.i.i, align 4
  %cmp.not21.i.i = icmp eq ptr %.pn20.i.i, %ports.i.i
  br i1 %cmp.not21.i.i, label %for.body.dsa_is_user_port.exit_crit_edge, label %for.body.for.body.i.i_crit_edge

for.body.for.body.i.i_crit_edge:                  ; preds = %for.body
  br label %for.body.i.i

for.body.dsa_is_user_port.exit_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsa_is_user_port.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.for.body.i.i_crit_edge
  %.pn22.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn20.i.i, %for.body.for.body.i.i_crit_edge ]
  %ds3.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -432
  %7 = ptrtoint ptr %ds3.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ds3.i.i, align 4
  %cmp4.i.i = icmp eq ptr %8, %1
  br i1 %cmp4.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %index.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -428
  %9 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %i.010)
  %cmp5.i.i = icmp eq i32 %10, %i.010
  br i1 %cmp5.i.i, label %cleanup.split.loop.exit18.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %11 = ptrtoint ptr %.pn22.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn.i.i = load ptr, ptr %.pn22.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %ports.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.dsa_is_user_port.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc.i.i.dsa_is_user_port.exit_crit_edge:      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsa_is_user_port.exit

cleanup.split.loop.exit18.i.i:                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %dp.0.le.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -448
  br label %dsa_is_user_port.exit

dsa_is_user_port.exit:                            ; preds = %cleanup.split.loop.exit18.i.i, %for.inc.i.i.dsa_is_user_port.exit_crit_edge, %for.body.dsa_is_user_port.exit_crit_edge
  %retval.0.i.i = phi ptr [ %dp.0.le.i.i, %cleanup.split.loop.exit18.i.i ], [ null, %for.body.dsa_is_user_port.exit_crit_edge ], [ null, %for.inc.i.i.dsa_is_user_port.exit_crit_edge ]
  %type.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i, i32 0, i32 6
  %12 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %cmp.i = icmp eq i32 %13, 3
  br i1 %cmp.i, label %if.end, label %dsa_is_user_port.exit.for.inc_crit_edge

dsa_is_user_port.exit.for.inc_crit_edge:          ; preds = %dsa_is_user_port.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %dsa_is_user_port.exit
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ports.i, align 4
  %rx_queue.i = getelementptr %struct.hellcreek_port, ptr %15, i32 %i.010, i32 5, i32 1
  %lock.i.i = getelementptr %struct.hellcreek_port, ptr %15, i32 %i.010, i32 5, i32 1, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #7
  %16 = ptrtoint ptr %rx_queue.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %rx_queue.i, ptr %rx_queue.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.anon.79, ptr %rx_queue.i, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %rx_queue.i, ptr %prev.i.i.i, align 4
  %qlen.i.i.i = getelementptr %struct.hellcreek_port, ptr %15, i32 %i.010, i32 5, i32 1, i32 1
  %18 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %qlen.i.i.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end, %dsa_is_user_port.exit.for.inc_crit_edge
  %inc = add nuw i32 %i.010, 1
  %19 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_ports, align 4
  %cmp = icmp ult i32 %inc, %20
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @hellcreek_ptp_write(ptr noundef %hellcreek, i16 noundef zeroext 784, i32 noundef 18) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hellcreek_ptp_write(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @hellcreek_hwtstamp_free(ptr nocapture noundef %hellcreek) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @hellcreek_ptp_gettime_seconds(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_complete_tx_timestamp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @hellcreek_ptp_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ptp_parse_header(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx_ni(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readnone }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !12, !13, !14, !15, !17, !18, !19, !21, !22, !23, !24, !26}
!llvm.named.register.sp = !{!27}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!2 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/dsa/hirschmann/hellcreek_hwtstamp.c", i32 235, i32 3}
!9 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !8, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @hellcreek_txtstamp_work._entry, !8, !"_entry", i1 false, i1 false}
!14 = !{ptr @hellcreek_txtstamp_work._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/dsa/hirschmann/hellcreek_hwtstamp.c", i32 248, i32 4}
!17 = !{ptr @hellcreek_txtstamp_work._entry.8, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @hellcreek_txtstamp_work._entry_ptr.10, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/dsa/hirschmann/hellcreek_hwtstamp.c", i32 189, i32 3}
!21 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @hellcreek_ptp_hwtstamp_available._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @hellcreek_ptp_hwtstamp_available._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @skb_queue_head_init.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!26 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!27 = !{!"sp"}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{!"auto-init"}
!38 = !{i64 2152337749, i64 2152337774}
!39 = !{!"branch_weights", i32 2000, i32 1}
!40 = !{i64 4833304}
!41 = !{i64 4833501}
!42 = !{i64 2152318734}
!43 = !{i64 2148461556}
!44 = !{i64 2148371975, i64 2148372007, i64 2148372036, i64 2148372070, i64 2148372101, i64 2148372124}
!45 = !{i64 2152338430, i64 2152338455}
!46 = !{i64 2148373588, i64 2148373620, i64 2148373649, i64 2148373683, i64 2148373714, i64 2148373737}
!47 = !{i64 2148462669}
