; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/netronome/nfp/nfp_port.c_pt.bc'
source_filename = "../drivers/net/ethernet/netronome/nfp/nfp_port.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.155, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.155 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.nfp_port = type { ptr, i32, i32, i32, ptr, %struct.devlink_port, %union.anon.173, %struct.list_head }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.144 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.144 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%union.anon.173 = type { %struct.anon.175 }
%struct.anon.175 = type { i32, i32, i8, i32, ptr }
%struct.nfp_app = type { ptr, ptr, ptr, ptr, [3 x ptr], ptr, i32, %struct.notifier_block, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nfp_app_type = type { i32, ptr, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nfp_pf = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, %struct.work_struct, ptr, i32, %struct.mutex }
%struct.nfp_eth_table_port = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i8], i8, i8, i8, i8, i8, i8, i8, i32, i8, i32 }
%struct.nfp_eth_table = type { i32, i32, [0 x %struct.nfp_eth_table_port] }

@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/ethernet/netronome/nfp/nfp_port.c\00", [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unknown netdev type for nfp_port\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Cannot disable HW TC offload while offloads active\0A\00", [44 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"p%d\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"p%ds%d\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pf%d\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pf%ds%d\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pf%dvf%d\00", [23 x i8] zeroinitializer }, align 32
@nfp_port_init_phy_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str, i32 196, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"nfp: NSP port entries don't match vNICs (no entry %d)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nfp_port_init_phy_port\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nfp_port_init_phy_port._entry_ptr = internal global ptr @nfp_port_init_phy_port._entry, section ".printk_index", align 4
@nfp_port_init_phy_port._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.9, ptr @.str, i32 202, ptr @.str.14, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"nfp: Config changed for port #%d, reboot required before port will be operational\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@nfp_port_init_phy_port._entry_ptr.15 = internal global ptr @nfp_port_init_phy_port._entry.12, section ".printk_index", align 4
@nfp_net_netdev_ops = external dso_local constant %struct.net_device_ops, align 4
@nfp_repr_netdev_ops = external dso_local constant %struct.net_device_ops, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 28, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 71, i32 22 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 135, i32 28 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 137, i32 28 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 142, i32 28 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 144, i32 28 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 148, i32 27 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 194, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.62 = private constant [49 x i8] c"../drivers/net/ethernet/netronome/nfp/nfp_port.c\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 200, i32 3 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @nfp_port_init_phy_port._entry, ptr @nfp_port_init_phy_port._entry.12, ptr @nfp_port_init_phy_port._entry_ptr, ptr @nfp_port_init_phy_port._entry_ptr.15, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_port_init_phy_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_port_init_phy_port._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfp_port_from_netdev(ptr nocapture noundef readonly %netdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 16
  %0 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev_ops.i, align 8
  %cmp.i = icmp eq ptr %1, @nfp_net_netdev_ops
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %port = getelementptr i8, ptr %netdev, i32 61188
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 4
  br label %return

if.end:                                           ; preds = %entry
  %cmp.i28 = icmp eq ptr %1, @nfp_repr_netdev_ops
  br i1 %cmp.i28, label %if.then3, label %do.end

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %port5 = getelementptr i8, ptr %netdev, i32 2312
  %4 = ptrtoint ptr %port5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port5, align 4
  br label %return

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 28, i32 noundef 9, ptr noundef nonnull @.str.1) #7
  br label %return

return:                                           ; preds = %do.end, %if.then3, %if.then
  %retval.0 = phi ptr [ %3, %if.then ], [ %5, %if.then3 ], [ null, %do.end ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_port_get_port_parent_id(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %ppid) local_unnamed_addr #0 align 64 {
entry:
  %serial = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %serial) #7
  %0 = ptrtoint ptr %serial to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %serial, align 4, !annotation !36
  %netdev_ops.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 16
  %1 = ptrtoint ptr %netdev_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %netdev_ops.i.i, align 8
  %cmp.i.i = icmp eq ptr %2, @nfp_net_netdev_ops
  br i1 %cmp.i.i, label %entry.nfp_port_from_netdev.exit_crit_edge, label %if.end.i

entry.nfp_port_from_netdev.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfp_port_from_netdev.exit

if.end.i:                                         ; preds = %entry
  %cmp.i28.i = icmp eq ptr %2, @nfp_repr_netdev_ops
  br i1 %cmp.i28.i, label %if.end.i.nfp_port_from_netdev.exit_crit_edge, label %nfp_port_from_netdev.exit.thread

if.end.i.nfp_port_from_netdev.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfp_port_from_netdev.exit

nfp_port_from_netdev.exit.thread:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 28, i32 noundef 9, ptr noundef nonnull @.str.1) #7
  br label %cleanup

nfp_port_from_netdev.exit:                        ; preds = %if.end.i.nfp_port_from_netdev.exit_crit_edge, %entry.nfp_port_from_netdev.exit_crit_edge
  %.sink = phi i32 [ 61188, %entry.nfp_port_from_netdev.exit_crit_edge ], [ 2312, %if.end.i.nfp_port_from_netdev.exit_crit_edge ]
  %port.i = getelementptr i8, ptr %netdev, i32 %.sink
  %3 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %retval.0.i = load ptr, ptr %port.i, align 4
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %nfp_port_from_netdev.exit.cleanup_crit_edge, label %if.end

nfp_port_from_netdev.exit.cleanup_crit_edge:      ; preds = %nfp_port_from_netdev.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %nfp_port_from_netdev.exit
  call void @__sanitizer_cov_trace_pc() #9
  %app = getelementptr inbounds %struct.nfp_port, ptr %retval.0.i, i32 0, i32 4
  %4 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %app, align 4
  %cpp = getelementptr inbounds %struct.nfp_app, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cpp, align 4
  %call1 = call i32 @nfp_cpp_serial(ptr noundef %7, ptr noundef nonnull %serial) #7
  %conv = trunc i32 %call1 to i8
  %id_len = getelementptr inbounds %struct.netdev_phys_item_id, ptr %ppid, i32 0, i32 1
  %8 = ptrtoint ptr %id_len to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %id_len, align 1
  %9 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %serial, align 4
  %conv3 = and i32 %call1, 255
  %11 = call ptr @memcpy(ptr %ppid, ptr %10, i32 %conv3)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %nfp_port_from_netdev.exit.cleanup_crit_edge, %nfp_port_from_netdev.exit.thread
  %retval.0 = phi i32 [ 0, %if.end ], [ -95, %nfp_port_from_netdev.exit.cleanup_crit_edge ], [ -95, %nfp_port_from_netdev.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %serial) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_cpp_serial(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_port_setup_tc(ptr noundef %netdev, i32 noundef %type, ptr noundef %type_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev_ops.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 16
  %0 = ptrtoint ptr %netdev_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev_ops.i.i, align 8
  %cmp.i.i = icmp eq ptr %1, @nfp_net_netdev_ops
  br i1 %cmp.i.i, label %entry.nfp_port_from_netdev.exit_crit_edge, label %if.end.i

entry.nfp_port_from_netdev.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfp_port_from_netdev.exit

if.end.i:                                         ; preds = %entry
  %cmp.i28.i = icmp eq ptr %1, @nfp_repr_netdev_ops
  br i1 %cmp.i28.i, label %if.end.i.nfp_port_from_netdev.exit_crit_edge, label %nfp_port_from_netdev.exit.thread

if.end.i.nfp_port_from_netdev.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfp_port_from_netdev.exit

nfp_port_from_netdev.exit.thread:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 28, i32 noundef 9, ptr noundef nonnull @.str.1) #7
  br label %cleanup

nfp_port_from_netdev.exit:                        ; preds = %if.end.i.nfp_port_from_netdev.exit_crit_edge, %entry.nfp_port_from_netdev.exit_crit_edge
  %.sink = phi i32 [ 61188, %entry.nfp_port_from_netdev.exit_crit_edge ], [ 2312, %if.end.i.nfp_port_from_netdev.exit_crit_edge ]
  %port.i = getelementptr i8, ptr %netdev, i32 %.sink
  %2 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %retval.0.i = load ptr, ptr %port.i, align 4
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %nfp_port_from_netdev.exit.cleanup_crit_edge, label %if.end

nfp_port_from_netdev.exit.cleanup_crit_edge:      ; preds = %nfp_port_from_netdev.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %nfp_port_from_netdev.exit
  %app = getelementptr inbounds %struct.nfp_port, ptr %retval.0.i, i32 0, i32 4
  %3 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %app, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %lor.lhs.false.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end
  %type1.i = getelementptr inbounds %struct.nfp_app, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %type1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %type1.i, align 4
  %setup_tc.i = getelementptr inbounds %struct.nfp_app_type, ptr %6, i32 0, i32 28
  %7 = ptrtoint ptr %setup_tc.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %setup_tc.i, align 4
  %tobool2.not.i = icmp eq ptr %8, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end.i4

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i4:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 %8(ptr noundef nonnull %4, ptr noundef %netdev, i32 noundef %type, ptr noundef %type_data) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end.i4, %lor.lhs.false.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %nfp_port_from_netdev.exit.cleanup_crit_edge, %nfp_port_from_netdev.exit.thread
  %retval.0 = phi i32 [ -95, %nfp_port_from_netdev.exit.cleanup_crit_edge ], [ -95, %nfp_port_from_netdev.exit.thread ], [ %call.i, %if.end.i4 ], [ -95, %lor.lhs.false.i.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_port_set_features(ptr noundef %netdev, i64 noundef %features) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev_ops.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 16
  %0 = ptrtoint ptr %netdev_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev_ops.i.i, align 8
  %cmp.i.i = icmp eq ptr %1, @nfp_net_netdev_ops
  br i1 %cmp.i.i, label %entry.nfp_port_from_netdev.exit_crit_edge, label %if.end.i

entry.nfp_port_from_netdev.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfp_port_from_netdev.exit

if.end.i:                                         ; preds = %entry
  %cmp.i28.i = icmp eq ptr %1, @nfp_repr_netdev_ops
  br i1 %cmp.i28.i, label %if.end.i.nfp_port_from_netdev.exit_crit_edge, label %nfp_port_from_netdev.exit.thread

if.end.i.nfp_port_from_netdev.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfp_port_from_netdev.exit

nfp_port_from_netdev.exit.thread:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 28, i32 noundef 9, ptr noundef nonnull @.str.1) #7
  br label %cleanup

nfp_port_from_netdev.exit:                        ; preds = %if.end.i.nfp_port_from_netdev.exit_crit_edge, %entry.nfp_port_from_netdev.exit_crit_edge
  %.sink = phi i32 [ 61188, %entry.nfp_port_from_netdev.exit_crit_edge ], [ 2312, %if.end.i.nfp_port_from_netdev.exit_crit_edge ]
  %port.i = getelementptr i8, ptr %netdev, i32 %.sink
  %2 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %retval.0.i = load ptr, ptr %port.i, align 4
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %nfp_port_from_netdev.exit.cleanup_crit_edge, label %if.end

nfp_port_from_netdev.exit.cleanup_crit_edge:      ; preds = %nfp_port_from_netdev.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %nfp_port_from_netdev.exit
  %features1 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 23
  %3 = ptrtoint ptr %features1 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %features1, align 16
  %and = and i64 %4, 562949953421312
  %and2 = and i64 %features, 562949953421312
  call void @__sanitizer_cov_trace_cmp8(i64 %and, i64 %and2)
  %cmp = icmp ugt i64 %and, %and2
  br i1 %cmp, label %land.lhs.true, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %tc_offload_cnt = getelementptr inbounds %struct.nfp_port, ptr %retval.0.i, i32 0, i32 3
  %5 = ptrtoint ptr %tc_offload_cnt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tc_offload_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not = icmp eq i32 %6, 0
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %if.then4

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.2) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %nfp_port_from_netdev.exit.cleanup_crit_edge, %nfp_port_from_netdev.exit.thread
  %retval.0 = phi i32 [ -16, %if.then4 ], [ 0, %nfp_port_from_netdev.exit.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %nfp_port_from_netdev.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfp_port_from_id(ptr noundef %pf, i32 noundef %type, i32 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 37, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !37

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 83, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp24.not = icmp eq i32 %type, 1
  br i1 %cmp24.not, label %if.end26, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end26:                                         ; preds = %if.end
  %ports = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 32
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end26
  %.pn.in = phi ptr [ %ports, %if.end26 ], [ %.pn, %for.body.for.cond_crit_edge ]
  %1 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp29.not = icmp eq ptr %.pn, %ports
  br i1 %cmp29.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %2 = getelementptr i8, ptr %.pn, i32 -20
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %cmp32 = icmp eq i32 %4, %id
  br i1 %cmp32, label %cleanup.loopexit.split.loop.exit, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

cleanup.loopexit.split.loop.exit:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %port.0.le = getelementptr i8, ptr %.pn, i32 -396
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit.split.loop.exit, %for.cond.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.end.cleanup_crit_edge ], [ %port.0.le, %cleanup.loopexit.split.loop.exit ], [ null, %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @__nfp_port_get_eth_port(ptr noundef readonly %port) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %port, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.nfp_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end2, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %eth_port = getelementptr inbounds %struct.nfp_port, ptr %port, i32 0, i32 6, i32 0, i32 2
  %2 = ptrtoint ptr %eth_port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eth_port, align 4
  br label %return

return:                                           ; preds = %if.end2, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi ptr [ %3, %if.end2 ], [ null, %entry.return_crit_edge ], [ null, %if.end.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfp_port_get_eth_port(ptr noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %port, null
  br i1 %tobool.not.i, label %entry.return_crit_edge, label %if.end.i

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.i:                                         ; preds = %entry
  %type.i = getelementptr inbounds %struct.nfp_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 1
  br i1 %cmp.not.i, label %__nfp_port_get_eth_port.exit, label %if.end.i.return_crit_edge

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

__nfp_port_get_eth_port.exit:                     ; preds = %if.end.i
  %eth_port.i = getelementptr inbounds %struct.nfp_port, ptr %port, i32 0, i32 6, i32 0, i32 2
  %2 = ptrtoint ptr %eth_port.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eth_port.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %__nfp_port_get_eth_port.exit.return_crit_edge, label %if.end

__nfp_port_get_eth_port.exit.return_crit_edge:    ; preds = %__nfp_port_get_eth_port.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %__nfp_port_get_eth_port.exit
  %flags = getelementptr inbounds %struct.nfp_port, ptr %port, i32 0, i32 2
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not, label %if.end.if.end.i16_crit_edge, label %if.then3

if.end.if.end.i16_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i16

if.then3:                                         ; preds = %if.end
  %call4 = tail call i32 @nfp_net_refresh_eth_port(ptr noundef nonnull %port) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then3.if.end.i16_crit_edge, label %if.then3.return_crit_edge

if.then3.return_crit_edge:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then3.if.end.i16_crit_edge:                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i16

if.end.i16:                                       ; preds = %if.then3.if.end.i16_crit_edge, %if.end.if.end.i16_crit_edge
  %6 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.not.i15 = icmp eq i32 %7, 1
  br i1 %cmp.not.i15, label %if.end2.i18, label %if.end.i16.return_crit_edge

if.end.i16.return_crit_edge:                      ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end2.i18:                                      ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %eth_port.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %eth_port.i, align 4
  br label %return

return:                                           ; preds = %if.end2.i18, %if.end.i16.return_crit_edge, %if.then3.return_crit_edge, %__nfp_port_get_eth_port.exit.return_crit_edge, %if.end.i.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi ptr [ null, %__nfp_port_get_eth_port.exit.return_crit_edge ], [ null, %if.then3.return_crit_edge ], [ %9, %if.end2.i18 ], [ null, %if.end.i16.return_crit_edge ], [ null, %entry.return_crit_edge ], [ null, %if.end.i.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_net_refresh_eth_port(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_port_get_phys_port_name(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %name, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev_ops.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 16
  %0 = ptrtoint ptr %netdev_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev_ops.i.i, align 8
  %cmp.i.i = icmp eq ptr %1, @nfp_net_netdev_ops
  br i1 %cmp.i.i, label %entry.nfp_port_from_netdev.exit_crit_edge, label %if.end.i

entry.nfp_port_from_netdev.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfp_port_from_netdev.exit

if.end.i:                                         ; preds = %entry
  %cmp.i28.i = icmp eq ptr %1, @nfp_repr_netdev_ops
  br i1 %cmp.i28.i, label %if.end.i.nfp_port_from_netdev.exit_crit_edge, label %nfp_port_from_netdev.exit.thread

if.end.i.nfp_port_from_netdev.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfp_port_from_netdev.exit

nfp_port_from_netdev.exit.thread:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 28, i32 noundef 9, ptr noundef nonnull @.str.1) #7
  br label %cleanup

nfp_port_from_netdev.exit:                        ; preds = %if.end.i.nfp_port_from_netdev.exit_crit_edge, %entry.nfp_port_from_netdev.exit_crit_edge
  %.sink = phi i32 [ 61188, %entry.nfp_port_from_netdev.exit_crit_edge ], [ 2312, %if.end.i.nfp_port_from_netdev.exit_crit_edge ]
  %port.i = getelementptr i8, ptr %netdev, i32 %.sink
  %2 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %retval.0.i = load ptr, ptr %port.i, align 4
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %nfp_port_from_netdev.exit.cleanup_crit_edge, label %if.end

nfp_port_from_netdev.exit.cleanup_crit_edge:      ; preds = %nfp_port_from_netdev.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %nfp_port_from_netdev.exit
  %type = getelementptr inbounds %struct.nfp_port, ptr %retval.0.i, i32 0, i32 1
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %if.end.cleanup_crit_edge [
    i32 1, label %__nfp_port_get_eth_port.exit
    i32 2, label %sw.bb13
    i32 3, label %sw.bb21
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

__nfp_port_get_eth_port.exit:                     ; preds = %if.end
  %eth_port.i = getelementptr inbounds %struct.nfp_port, ptr %retval.0.i, i32 0, i32 6, i32 0, i32 2
  %6 = ptrtoint ptr %eth_port.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %eth_port.i, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %__nfp_port_get_eth_port.exit.cleanup_crit_edge, label %if.end4

__nfp_port_get_eth_port.exit.cleanup_crit_edge:   ; preds = %__nfp_port_get_eth_port.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %__nfp_port_get_eth_port.exit
  %is_split = getelementptr inbounds %struct.nfp_eth_table_port, ptr %7, i32 0, i32 19
  %8 = ptrtoint ptr %is_split to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %is_split, align 4, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool5.not = icmp eq i8 %9, 0
  %label_port = getelementptr inbounds %struct.nfp_eth_table_port, ptr %7, i32 0, i32 11
  %10 = ptrtoint ptr %label_port to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %label_port, align 2
  %conv = zext i8 %11 to i32
  br i1 %tobool5.not, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef %len, ptr noundef nonnull @.str.3, i32 noundef %conv)
  br label %sw.epilog

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %label_subport = getelementptr inbounds %struct.nfp_eth_table_port, ptr %7, i32 0, i32 12
  %12 = ptrtoint ptr %label_subport to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %label_subport, align 1
  %conv10 = zext i8 %13 to i32
  %call11 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef %len, ptr noundef nonnull @.str.4, i32 noundef %conv, i32 noundef %conv10)
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end
  %14 = getelementptr inbounds %struct.nfp_port, ptr %retval.0.i, i32 0, i32 6
  %pf_split = getelementptr inbounds %struct.nfp_port, ptr %retval.0.i, i32 0, i32 6, i32 0, i32 2
  %15 = ptrtoint ptr %pf_split to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %pf_split, align 4, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool14.not = icmp eq i8 %16, 0
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %14, align 4
  br i1 %tobool14.not, label %if.then15, label %if.else17

if.then15:                                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #9
  %call16 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef %len, ptr noundef nonnull @.str.5, i32 noundef %18)
  br label %sw.epilog

if.else17:                                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #9
  %pf_split_id = getelementptr inbounds %struct.nfp_port, ptr %retval.0.i, i32 0, i32 6, i32 0, i32 3
  %19 = ptrtoint ptr %pf_split_id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pf_split_id, align 4
  %call19 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef %len, ptr noundef nonnull @.str.6, i32 noundef %18, i32 noundef %20)
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %21 = getelementptr inbounds %struct.nfp_port, ptr %retval.0.i, i32 0, i32 6
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %vf_id = getelementptr inbounds %struct.nfp_port, ptr %retval.0.i, i32 0, i32 6, i32 0, i32 1
  %24 = ptrtoint ptr %vf_id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vf_id, align 4
  %call23 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef %len, ptr noundef nonnull @.str.7, i32 noundef %23, i32 noundef %25)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb21, %if.else17, %if.then15, %if.else, %if.then6
  %n.0 = phi i32 [ %call23, %sw.bb21 ], [ %call19, %if.else17 ], [ %call16, %if.then15 ], [ %call11, %if.else ], [ %call7, %if.then6 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %n.0, i32 %len)
  %cmp.not = icmp ult i32 %n.0, %len
  %. = select i1 %cmp.not, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %__nfp_port_get_eth_port.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %nfp_port_from_netdev.exit.cleanup_crit_edge, %nfp_port_from_netdev.exit.thread
  %retval.0 = phi i32 [ -95, %nfp_port_from_netdev.exit.cleanup_crit_edge ], [ -95, %__nfp_port_get_eth_port.exit.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ %., %sw.epilog ], [ -95, %nfp_port_from_netdev.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_port_configure(ptr nocapture noundef readonly %netdev, i1 noundef zeroext %configed) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev_ops.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 16
  %0 = ptrtoint ptr %netdev_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev_ops.i.i, align 8
  %cmp.i.i = icmp eq ptr %1, @nfp_net_netdev_ops
  br i1 %cmp.i.i, label %entry.nfp_port_from_netdev.exit_crit_edge, label %if.end.i

entry.nfp_port_from_netdev.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfp_port_from_netdev.exit

if.end.i:                                         ; preds = %entry
  %cmp.i28.i = icmp eq ptr %1, @nfp_repr_netdev_ops
  br i1 %cmp.i28.i, label %if.end.i.nfp_port_from_netdev.exit_crit_edge, label %nfp_port_from_netdev.exit.thread

if.end.i.nfp_port_from_netdev.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfp_port_from_netdev.exit

nfp_port_from_netdev.exit.thread:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 28, i32 noundef 9, ptr noundef nonnull @.str.1) #7
  br label %cleanup

nfp_port_from_netdev.exit:                        ; preds = %if.end.i.nfp_port_from_netdev.exit_crit_edge, %entry.nfp_port_from_netdev.exit_crit_edge
  %.sink = phi i32 [ 61188, %entry.nfp_port_from_netdev.exit_crit_edge ], [ 2312, %if.end.i.nfp_port_from_netdev.exit_crit_edge ]
  %port.i = getelementptr i8, ptr %netdev, i32 %.sink
  %2 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %retval.0.i = load ptr, ptr %port.i, align 4
  %tobool.not.i = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not.i, label %nfp_port_from_netdev.exit.cleanup_crit_edge, label %if.end.i15

nfp_port_from_netdev.exit.cleanup_crit_edge:      ; preds = %nfp_port_from_netdev.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i15:                                       ; preds = %nfp_port_from_netdev.exit
  %type.i = getelementptr inbounds %struct.nfp_port, ptr %retval.0.i, i32 0, i32 1
  %3 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp.not.i = icmp eq i32 %4, 1
  br i1 %cmp.not.i, label %__nfp_port_get_eth_port.exit, label %if.end.i15.cleanup_crit_edge

if.end.i15.cleanup_crit_edge:                     ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

__nfp_port_get_eth_port.exit:                     ; preds = %if.end.i15
  %eth_port.i = getelementptr inbounds %struct.nfp_port, ptr %retval.0.i, i32 0, i32 6, i32 0, i32 2
  %5 = ptrtoint ptr %eth_port.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %eth_port.i, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %__nfp_port_get_eth_port.exit.cleanup_crit_edge, label %if.end

__nfp_port_get_eth_port.exit.cleanup_crit_edge:   ; preds = %__nfp_port_get_eth_port.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %__nfp_port_get_eth_port.exit
  %eth_forced = getelementptr inbounds %struct.nfp_port, ptr %retval.0.i, i32 0, i32 6, i32 0, i32 1
  %7 = ptrtoint ptr %eth_forced to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %eth_forced, align 4, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool2.not = icmp eq i8 %8, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %app = getelementptr inbounds %struct.nfp_port, ptr %retval.0.i, i32 0, i32 4
  %9 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %app, align 4
  %cpp = getelementptr inbounds %struct.nfp_app, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cpp, align 4
  %index = getelementptr inbounds %struct.nfp_eth_table_port, ptr %6, i32 0, i32 1
  %13 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index, align 4
  %call6 = tail call i32 @nfp_eth_set_configured(ptr noundef %12, i32 noundef %14, i1 noundef zeroext %configed) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call6)
  %cmp = icmp sgt i32 %call6, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %call6)
  %cmp7.not = icmp eq i32 %call6, -95
  %or.cond = or i1 %cmp, %cmp7.not
  %cond = select i1 %or.cond, i32 0, i32 %call6
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %__nfp_port_get_eth_port.exit.cleanup_crit_edge, %if.end.i15.cleanup_crit_edge, %nfp_port_from_netdev.exit.cleanup_crit_edge, %nfp_port_from_netdev.exit.thread
  %retval.0 = phi i32 [ %cond, %if.end4 ], [ 0, %__nfp_port_get_eth_port.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %nfp_port_from_netdev.exit.cleanup_crit_edge ], [ 0, %if.end.i15.cleanup_crit_edge ], [ 0, %nfp_port_from_netdev.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_eth_set_configured(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_port_init_phy_port(ptr nocapture noundef readonly %pf, ptr nocapture noundef readonly %app, ptr nocapture noundef writeonly %port, i32 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %eth_tbl = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 25
  %0 = ptrtoint ptr %eth_tbl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eth_tbl, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %id)
  %cmp.not = icmp ugt i32 %3, %id
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %cpp = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 2
  %4 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cpp, align 4
  %call = tail call ptr @nfp_cpp_device(ptr noundef %5) #7
  %parent = getelementptr inbounds %struct.device, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.8, i32 noundef %id) #10
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %override_changed = getelementptr %struct.nfp_eth_table, ptr %1, i32 0, i32 2, i32 %id, i32 16
  %8 = ptrtoint ptr %override_changed to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %override_changed, align 1, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool3.not = icmp eq i8 %9, 0
  br i1 %tobool3.not, label %if.end13, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %cpp7 = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 2
  %10 = ptrtoint ptr %cpp7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cpp7, align 4
  %call8 = tail call ptr @nfp_cpp_device(ptr noundef %11) #7
  %parent9 = getelementptr inbounds %struct.device, ptr %call8, i32 0, i32 1
  %12 = ptrtoint ptr %parent9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent9, align 8
  %14 = ptrtoint ptr %eth_tbl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %eth_tbl, align 4
  %index = getelementptr %struct.nfp_eth_table, ptr %15, i32 0, i32 2, i32 %id, i32 1
  %16 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %index, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.13, i32 noundef %17) #10
  %type = getelementptr inbounds %struct.nfp_port, ptr %port, i32 0, i32 1
  %18 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %type, align 4
  br label %return

if.end13:                                         ; preds = %if.end
  %arrayidx = getelementptr %struct.nfp_eth_table, ptr %1, i32 0, i32 2, i32 %id
  %19 = getelementptr inbounds %struct.nfp_port, ptr %port, i32 0, i32 6
  %eth_port = getelementptr inbounds %struct.nfp_port, ptr %port, i32 0, i32 6, i32 0, i32 2
  %20 = ptrtoint ptr %eth_port to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %arrayidx, ptr %eth_port, align 4
  %21 = ptrtoint ptr %eth_tbl to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %eth_tbl, align 4
  %index20 = getelementptr %struct.nfp_eth_table, ptr %22, i32 0, i32 2, i32 %id, i32 1
  %23 = ptrtoint ptr %index20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %index20, align 4
  %25 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %19, align 4
  %mac_stats_mem = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 7
  %26 = ptrtoint ptr %mac_stats_mem to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mac_stats_mem, align 4
  %tobool21.not = icmp eq ptr %27, null
  br i1 %tobool21.not, label %if.end13.return_crit_edge, label %if.then22

if.end13.return_crit_edge:                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then22:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %mul = shl i32 %24, 9
  %add.ptr = getelementptr i8, ptr %27, i32 %mul
  %eth_stats = getelementptr inbounds %struct.nfp_port, ptr %port, i32 0, i32 6, i32 0, i32 3
  %28 = ptrtoint ptr %eth_stats to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %add.ptr, ptr %eth_stats, align 4
  br label %return

return:                                           ; preds = %if.then22, %if.end13.return_crit_edge, %do.end6, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %do.end6 ], [ 0, %if.then22 ], [ 0, %if.end13.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_cpp_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfp_port_alloc(ptr noundef %app, i32 noundef %type, ptr noundef %netdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 404) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %netdev, ptr %call7.i.i, align 8
  %type3 = getelementptr inbounds %struct.nfp_port, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %type3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %type, ptr %type3, align 4
  %app4 = getelementptr inbounds %struct.nfp_port, ptr %call7.i.i, i32 0, i32 4
  %3 = ptrtoint ptr %app4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %app, ptr %app4, align 8
  %port_list = getelementptr inbounds %struct.nfp_port, ptr %call7.i.i, i32 0, i32 7
  %pf = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 1
  %4 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pf, align 4
  %ports = getelementptr inbounds %struct.nfp_pf, ptr %5, i32 0, i32 32
  %prev.i = getelementptr inbounds %struct.nfp_pf, ptr %5, i32 0, i32 32, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %port_list, ptr noundef %7, ptr noundef %ports) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %port_list, ptr %prev.i, align 4
  %9 = ptrtoint ptr %port_list to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %ports, ptr %port_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.nfp_port, ptr %call7.i.i, i32 0, i32 7, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev3.i.i, align 8
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %port_list, ptr %7, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ], [ %call7.i.i, %if.end.cleanup_crit_edge ], [ %call7.i.i, %if.end.i.i ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfp_port_free(ptr noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %port, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %port_list = getelementptr inbounds %struct.nfp_port, ptr %port, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %port_list) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.nfp_port, ptr %port, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %port_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %6 = ptrtoint ptr %port_list to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %port_list, align 4
  %prev.i = getelementptr inbounds %struct.nfp_port, ptr %port, i32 0, i32 7, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef nonnull %port) #7
  br label %return

return:                                           ; preds = %list_del.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !18, !19, !20, !21, !22, !24, !25, !26}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_port.c", i32 28, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_port.c", i32 71, i32 22}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_port.c", i32 135, i32 28}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_port.c", i32 137, i32 28}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_port.c", i32 142, i32 28}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_port.c", i32 144, i32 28}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_port.c", i32 148, i32 27}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_port.c", i32 194, i32 3}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.11, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @nfp_port_init_phy_port._entry, !16, !"_entry", i1 false, i1 false}
!21 = !{ptr @nfp_port_init_phy_port._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_port.c", i32 200, i32 3}
!24 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @nfp_port_init_phy_port._entry.12, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @nfp_port_init_phy_port._entry_ptr.15, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{!"auto-init"}
!37 = !{!"branch_weights", i32 1, i32 2000}
!38 = !{i8 0, i8 2}
