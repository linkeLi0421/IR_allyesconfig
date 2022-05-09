; ModuleID = '/llk/IR_all_yes/drivers/net/netdevsim/ethtool.c_pt.bc'
source_filename = "../drivers/net/netdevsim/ethtool.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.156, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
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
%union.anon.156 = type { ptr }
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
%struct.netdevsim = type { ptr, ptr, ptr, i64, i64, %struct.u64_stats_sync, ptr, ptr, i32, %struct.xdp_attachment_info, %struct.xdp_attachment_info, i8, i8, i8, i8, i8, %struct.nsim_ipsec, %struct.anon.158, %struct.nsim_ethtool }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.xdp_attachment_info = type { ptr, i32 }
%struct.nsim_ipsec = type { [33 x %struct.nsim_sa], ptr, i32, i32, i32 }
%struct.nsim_sa = type { ptr, [4 x i32], [4 x i32], i32, i8, i8, i8 }
%struct.anon.158 = type { i32, i32, [2 x [4 x i32]], ptr, [2 x %struct.debugfs_u32_array] }
%struct.debugfs_u32_array = type { ptr, i32 }
%struct.nsim_ethtool = type { i32, i32, i32, %struct.nsim_ethtool_pauseparam, %struct.ethtool_coalesce, %struct.ethtool_ringparam, %struct.ethtool_fecparam }
%struct.nsim_ethtool_pauseparam = type { i8, i8, i8, i8 }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_fecparam = type { i32, i32, i32, i32 }
%struct.nsim_bus_dev = type { %struct.device, %struct.list_head, i32, i32, ptr, i32, i32, %struct.mutex, i8, i8 }
%struct.nsim_dev_port = type { %struct.list_head, %struct.devlink_port, i32, i32, ptr, ptr, ptr, ptr }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.145 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.145 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.ethtool_pause_stats = type { i64, i64 }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }
%struct.ethtool_channels = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@nsim_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 16777215, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nsim_get_coalesce, ptr @nsim_set_coalesce, ptr @nsim_get_ringparam, ptr @nsim_set_ringparam, ptr @nsim_get_pause_stats, ptr @nsim_get_pauseparam, ptr @nsim_set_pauseparam, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nsim_get_channels, ptr @nsim_set_channels, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nsim_get_fecparam, ptr @nsim_set_fecparam, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ethtool\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"get_err\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"set_err\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pause\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"report_stats_rx\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"report_stats_tx\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ring\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rx_max_pending\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rx_jumbo_max_pending\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rx_mini_max_pending\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tx_max_pending\00", [17 x i8] zeroinitializer }, align 32
@___asan_gen_.11 = private unnamed_addr constant [17 x i8] c"nsim_ethtool_ops\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 143, i32 33 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 179, i32 31 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 181, i32 21 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 182, i32 21 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 184, i32 27 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 185, i32 22 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 187, i32 22 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 190, i32 27 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 191, i32 21 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 193, i32 21 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 195, i32 21 }
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.45 = private constant [35 x i8] c"../drivers/net/netdevsim/ethtool.c\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 197, i32 21 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @nsim_ethtool_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nsim_ethtool_init(ptr noundef %ns) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ns, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @nsim_ethtool_ops, ptr %ethtool_ops, align 16
  %rx_max_pending.i = getelementptr inbounds %struct.netdevsim, ptr %ns, i32 0, i32 18, i32 5, i32 1
  %3 = ptrtoint ptr %rx_max_pending.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4096, ptr %rx_max_pending.i, align 4
  %rx_jumbo_max_pending.i = getelementptr inbounds %struct.netdevsim, ptr %ns, i32 0, i32 18, i32 5, i32 3
  %4 = ptrtoint ptr %rx_jumbo_max_pending.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4096, ptr %rx_jumbo_max_pending.i, align 4
  %rx_mini_max_pending.i = getelementptr inbounds %struct.netdevsim, ptr %ns, i32 0, i32 18, i32 5, i32 2
  %5 = ptrtoint ptr %rx_mini_max_pending.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4096, ptr %rx_mini_max_pending.i, align 4
  %tx_max_pending.i = getelementptr inbounds %struct.netdevsim, ptr %ns, i32 0, i32 18, i32 5, i32 4
  %6 = ptrtoint ptr %tx_max_pending.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4096, ptr %tx_max_pending.i, align 4
  %ethtool1 = getelementptr inbounds %struct.netdevsim, ptr %ns, i32 0, i32 18
  %fec2 = getelementptr inbounds %struct.netdevsim, ptr %ns, i32 0, i32 18, i32 6, i32 2
  %7 = ptrtoint ptr %fec2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %fec2, align 4
  %active_fec = getelementptr inbounds %struct.netdevsim, ptr %ns, i32 0, i32 18, i32 6, i32 1
  %8 = ptrtoint ptr %active_fec to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %active_fec, align 4
  %nsim_bus_dev = getelementptr inbounds %struct.netdevsim, ptr %ns, i32 0, i32 6
  %9 = ptrtoint ptr %nsim_bus_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %nsim_bus_dev, align 8
  %num_queues = getelementptr inbounds %struct.nsim_bus_dev, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %num_queues to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_queues, align 4
  %channels = getelementptr inbounds %struct.netdevsim, ptr %ns, i32 0, i32 18, i32 2
  %13 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %channels, align 4
  %nsim_dev_port = getelementptr inbounds %struct.netdevsim, ptr %ns, i32 0, i32 2
  %14 = ptrtoint ptr %nsim_dev_port to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %nsim_dev_port, align 8
  %ddir = getelementptr inbounds %struct.nsim_dev_port, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %ddir to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ddir, align 4
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str, ptr noundef %17) #6
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.1, i16 noundef zeroext 384, ptr noundef %call, ptr noundef %ethtool1) #6
  %set_err = getelementptr inbounds %struct.netdevsim, ptr %ns, i32 0, i32 18, i32 1
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.2, i16 noundef zeroext 384, ptr noundef %call, ptr noundef %set_err) #6
  %call8 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.3, ptr noundef %call) #6
  %report_stats_rx = getelementptr inbounds %struct.netdevsim, ptr %ns, i32 0, i32 18, i32 3, i32 2
  tail call void @debugfs_create_bool(ptr noundef nonnull @.str.4, i16 noundef zeroext 384, ptr noundef %call8, ptr noundef %report_stats_rx) #6
  %report_stats_tx = getelementptr inbounds %struct.netdevsim, ptr %ns, i32 0, i32 18, i32 3, i32 3
  tail call void @debugfs_create_bool(ptr noundef nonnull @.str.5, i16 noundef zeroext 384, ptr noundef %call8, ptr noundef %report_stats_tx) #6
  %call12 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.6, ptr noundef %call) #6
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.7, i16 noundef zeroext 384, ptr noundef %call12, ptr noundef %rx_max_pending.i) #6
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.8, i16 noundef zeroext 384, ptr noundef %call12, ptr noundef %rx_jumbo_max_pending.i) #6
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.9, i16 noundef zeroext 384, ptr noundef %call12, ptr noundef %rx_mini_max_pending.i) #6
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.10, i16 noundef zeroext 384, ptr noundef %call12, ptr noundef %tx_max_pending.i) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_bool(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nsim_get_coalesce(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %coal, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %coalesce = getelementptr i8, ptr %dev, i32 3948
  %0 = call ptr @memcpy(ptr %coal, ptr %coalesce, i32 92)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nsim_set_coalesce(ptr nocapture noundef writeonly %dev, ptr nocapture noundef readonly %coal, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %coalesce = getelementptr i8, ptr %dev, i32 3948
  %0 = call ptr @memcpy(ptr %coalesce, ptr %coal, i32 92)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @nsim_get_ringparam(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %ring, ptr nocapture noundef readnone %kernel_ring, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ring1 = getelementptr i8, ptr %dev, i32 4040
  %0 = call ptr @memcpy(ptr %ring, ptr %ring1, i32 36)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nsim_set_ringparam(ptr nocapture noundef writeonly %dev, ptr nocapture noundef readonly %ring, ptr nocapture noundef readnone %kernel_ring, ptr nocapture noundef readnone %extack) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 5
  %0 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_pending, align 4
  %rx_pending2 = getelementptr i8, ptr %dev, i32 4060
  %2 = ptrtoint ptr %rx_pending2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %rx_pending2, align 4
  %rx_jumbo_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 7
  %3 = ptrtoint ptr %rx_jumbo_pending to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rx_jumbo_pending, align 4
  %rx_jumbo_pending5 = getelementptr i8, ptr %dev, i32 4068
  %5 = ptrtoint ptr %rx_jumbo_pending5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %rx_jumbo_pending5, align 4
  %rx_mini_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 6
  %6 = ptrtoint ptr %rx_mini_pending to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_mini_pending, align 4
  %rx_mini_pending8 = getelementptr i8, ptr %dev, i32 4064
  %8 = ptrtoint ptr %rx_mini_pending8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %rx_mini_pending8, align 4
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 8
  %9 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_pending, align 4
  %tx_pending11 = getelementptr i8, ptr %dev, i32 4072
  %11 = ptrtoint ptr %tx_pending11 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %tx_pending11, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @nsim_get_pause_stats(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %pause_stats) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %report_stats_rx = getelementptr i8, ptr %dev, i32 3946
  %0 = ptrtoint ptr %report_stats_rx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %report_stats_rx, align 2, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %rx_pause_frames = getelementptr inbounds %struct.ethtool_pause_stats, ptr %pause_stats, i32 0, i32 1
  %2 = ptrtoint ptr %rx_pause_frames to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 1, ptr %rx_pause_frames, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %report_stats_tx = getelementptr i8, ptr %dev, i32 3947
  %3 = ptrtoint ptr %report_stats_tx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %report_stats_tx, align 1, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool3.not = icmp eq i8 %4, 0
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %pause_stats to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 2, ptr %pause_stats, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @nsim_get_pauseparam(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %pause) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 1
  %0 = ptrtoint ptr %autoneg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %autoneg, align 4
  %pauseparam = getelementptr i8, ptr %dev, i32 3944
  %1 = ptrtoint ptr %pauseparam to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %pauseparam, align 4, !range !33
  %3 = zext i8 %2 to i32
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 2
  %4 = ptrtoint ptr %rx_pause to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %rx_pause, align 4
  %tx = getelementptr i8, ptr %dev, i32 3945
  %5 = ptrtoint ptr %tx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %tx, align 1, !range !33
  %7 = zext i8 %6 to i32
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  %8 = ptrtoint ptr %tx_pause to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %tx_pause, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nsim_set_pauseparam(ptr nocapture noundef writeonly %dev, ptr nocapture noundef readonly %pause) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 1
  %0 = ptrtoint ptr %autoneg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %autoneg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 2
  %2 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1 = icmp ne i32 %3, 0
  %pauseparam = getelementptr i8, ptr %dev, i32 3944
  %frombool = zext i1 %tobool1 to i8
  %4 = ptrtoint ptr %pauseparam to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool, ptr %pauseparam, align 4
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  %5 = ptrtoint ptr %tx_pause to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2 = icmp ne i32 %6, 0
  %tx = getelementptr i8, ptr %dev, i32 3945
  %frombool5 = zext i1 %tobool2 to i8
  %7 = ptrtoint ptr %tx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %frombool5, ptr %tx, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @nsim_get_channels(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %ch) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %nsim_bus_dev = getelementptr i8, ptr %dev, i32 2368
  %0 = ptrtoint ptr %nsim_bus_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nsim_bus_dev, align 8
  %num_queues = getelementptr inbounds %struct.nsim_bus_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %num_queues to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_queues, align 4
  %max_combined = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 4
  %4 = ptrtoint ptr %max_combined to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %max_combined, align 4
  %channels = getelementptr i8, ptr %dev, i32 3940
  %5 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %channels, align 4
  %combined_count = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 8
  %7 = ptrtoint ptr %combined_count to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %combined_count, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsim_set_channels(ptr noundef %dev, ptr nocapture noundef readonly %ch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %combined_count = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 8
  %0 = ptrtoint ptr %combined_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %combined_count, align 4
  %call2 = tail call i32 @netif_set_real_num_queues(ptr noundef %dev, i32 noundef %1, i32 noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %combined_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %combined_count, align 4
  %channels = getelementptr i8, ptr %dev, i32 3940
  %4 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %channels, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call2
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nsim_get_fecparam(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %fecparam) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ethtool = getelementptr i8, ptr %dev, i32 3932
  %0 = ptrtoint ptr %ethtool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ethtool, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sub = sub i32 0, %1
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %fec = getelementptr i8, ptr %dev, i32 4076
  %2 = call ptr @memcpy(ptr %fecparam, ptr %fec, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %sub, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nsim_set_fecparam(ptr nocapture noundef %dev, ptr nocapture noundef readonly %fecparam) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %set_err = getelementptr i8, ptr %dev, i32 3936
  %0 = ptrtoint ptr %set_err to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %set_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sub = sub i32 0, %1
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %fec4 = getelementptr i8, ptr %dev, i32 4076
  %2 = call ptr @memcpy(ptr %fec4, ptr %fecparam, i32 16)
  %fec5 = getelementptr inbounds %struct.ethtool_fecparam, ptr %fecparam, i32 0, i32 2
  %3 = ptrtoint ptr %fec5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fec5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp = icmp eq i32 %4, 2
  %.op = or i32 %4, 1
  %5 = tail call i32 @llvm.ctlz.i32(i32 %.op, i1 true), !range !34
  %.op22.op = xor i32 %5, 31
  %.op22.op.op = shl nuw i32 1, %.op22.op
  %shl = select i1 %cmp, i32 4, i32 %.op22.op.op
  %active_fec = getelementptr i8, ptr %dev, i32 4080
  %6 = ptrtoint ptr %active_fec to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %shl, ptr %active_fec, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %sub, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_real_num_queues(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/netdevsim/ethtool.c", i32 179, i32 31}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/netdevsim/ethtool.c", i32 181, i32 21}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/netdevsim/ethtool.c", i32 182, i32 21}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/netdevsim/ethtool.c", i32 184, i32 27}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/netdevsim/ethtool.c", i32 185, i32 22}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/netdevsim/ethtool.c", i32 187, i32 22}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/netdevsim/ethtool.c", i32 190, i32 27}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/netdevsim/ethtool.c", i32 191, i32 21}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/netdevsim/ethtool.c", i32 193, i32 21}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/netdevsim/ethtool.c", i32 195, i32 21}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/netdevsim/ethtool.c", i32 197, i32 21}
!22 = !{ptr @nsim_ethtool_ops, !23, !"nsim_ethtool_ops", i1 false, i1 false}
!23 = !{!"../drivers/net/netdevsim/ethtool.c", i32 143, i32 33}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{i8 0, i8 2}
!34 = !{i32 0, i32 32}
