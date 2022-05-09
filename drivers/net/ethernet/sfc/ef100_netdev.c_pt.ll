; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/sfc/ef100_netdev.c_pt.bc'
source_filename = "../drivers/net/ethernet/sfc/ef100_netdev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.efx_nic = type { [16 x i8], %struct.list_head, ptr, %struct.list_head, ptr, i32, ptr, i32, i8, ptr, [16 x i8], %struct.work_struct, i32, ptr, i32, i32, i32, i32, i8, i8, i32, i32, i32, i32, i32, [32 x ptr], [32 x %struct.efx_msi_context], [2 x ptr], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.efx_rss_context, %struct.mutex, i32, i32, i32, i8, i8, %struct.efx_buffer, i32, i32, %struct.delayed_work, %struct.list_head, ptr, ptr, %struct.mutex, %struct.work_struct, i8, i8, i8, ptr, i64, i16, %struct.efx_buffer, i64, i64, i8, i32, ptr, %struct.mdio_if_info, i32, i32, [3 x i32], i32, %struct.efx_link_state, i32, i8, %union.efx_multicast_hash, i8, i32, %struct.atomic_t, i32, i64, ptr, ptr, %struct.rw_semaphore, ptr, %struct.mutex, i32, [8 x %struct.efx_async_filter_insertion], %struct.spinlock, ptr, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, ptr, i8, ptr, i8, %struct.notifier_block, i32, i32, %struct.delayed_work, %struct.spinlock, i32, %struct.spinlock, %struct.atomic_t, [60 x i8] }
%struct.efx_msi_context = type { ptr, i32, [22 x i8] }
%struct.efx_rss_context = type { %struct.list_head, i32, i32, i8, [40 x i8], [128 x i32] }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.efx_buffer = type { ptr, i32, i32 }
%struct.mdio_if_info = type { i32, i32, i32, ptr, ptr, ptr }
%struct.efx_link_state = type { i8, i8, i8, i32 }
%union.efx_multicast_hash = type { [2 x %union.efx_oword] }
%union.efx_oword = type { [2 x i64] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.efx_async_filter_insertion = type { ptr, %struct.efx_filter_spec, %struct.work_struct, i16, i32 }
%struct.efx_filter_spec = type { i32, i32, i16, i16, [6 x i8], [6 x i8], i16, i8, [4 x i32], [4 x i32], i16, i16, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.128, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.145, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.128 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.145 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.127, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.127 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
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
%struct.efx_channel = type { ptr, i32, ptr, i8, i8, i32, i32, ptr, %struct.napi_struct, i32, %struct.efx_special_buffer, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.delayed_work, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.efx_rx_queue, [4 x %struct.efx_tx_queue], [8 x ptr], i32, i32, i32, [84 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.efx_special_buffer = type { %struct.efx_buffer, i32, i32 }
%struct.efx_rx_queue = type { ptr, i32, ptr, %struct.efx_special_buffer, i32, i8, i8, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, [92 x i8], %struct.xdp_rxq_info, i8, [127 x i8] }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.efx_tx_queue = type { ptr, i32, i32, i32, i32, i8, ptr, ptr, ptr, ptr, %struct.efx_special_buffer, i32, ptr, i32, i8, i8, i8, [53 x i8], i32, i32, i32, i32, i32, i32, i32, [100 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, [72 x i8], i32, %struct.atomic_t, [120 x i8] }

@ef100_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @ef100_net_open, ptr @ef100_net_stop, ptr @ef100_hard_start_xmit, ptr null, ptr null, ptr null, ptr @efx_set_rx_mode, ptr @efx_set_mac_address, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @efx_change_mtu, ptr null, ptr @efx_watchdog, ptr @efx_net_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @efx_filter_rfs, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @efx_set_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @efx_get_phys_port_id, ptr null, ptr @efx_get_phys_port_name, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@ef100_ethtool_ops = external dso_local constant %struct.ethtool_ops, align 4
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"could not register net dev\0A\00", [36 x i8] zeroinitializer }, align 32
@ef100_net_open.__UNIQUE_ID_ddebug527 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 27, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sfc\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ef100_net_open\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/net/ethernet/sfc/ef100_netdev.c\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"opening device on CPU %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"device is disabled due to earlier errors\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"could not extend memory BAR to %x\0A\00", [61 x i8] zeroinitializer }, align 32
@ef100_net_stop.__UNIQUE_ID_ddebug526 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.7, ptr @.str.3, ptr @.str.8, i8 0, i8 21, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ef100_net_stop\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"closing on CPU %d\0A\00", [45 x i8] zeroinitializer }, align 32
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"ef100_netdev_ops\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 216, i32 36 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 282, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 110, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant [41 x i8] c"../drivers/net/ethernet/sfc/efx_common.h\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 68, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 66, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.37 = private constant [43 x i8] c"../drivers/net/ethernet/sfc/ef100_netdev.c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 84, i32 2 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @ef100_netdev_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ef100_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ef100_netdev_event(ptr noundef %this, i32 noundef %event, ptr nocapture noundef readonly %ptr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %this, i32 -3948
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %cmp = icmp eq ptr %add.ptr.i, %add.ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %event)
  %cmp2 = icmp eq i32 %event, 11
  %or.cond = and i1 %cmp2, %cmp
  br i1 %or.cond, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %net_dev.i = getelementptr i8, ptr %this, i32 -1520
  %2 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net_dev.i, align 4
  %call.i = tail call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %3) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ef100_register_netdev(ptr noundef %efx) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %net_dev1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %0 = ptrtoint ptr %net_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net_dev1, align 4
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 115
  %2 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 500, ptr %watchdog_timeo, align 4
  %pci_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 4
  %3 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pci_dev, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 46
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  %irq2 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 64
  %7 = ptrtoint ptr %irq2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %irq2, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 16
  %8 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @ef100_netdev_ops, ptr %netdev_ops, align 8
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 30
  %9 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 68, ptr %min_mtu, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 31
  %10 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 9216, ptr %max_mtu, align 4
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 44
  %11 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @ef100_ethtool_ops, ptr %ethtool_ops, align 16
  tail call void @rtnl_lock() #8
  %call = tail call i32 @dev_alloc_name(ptr noundef %1, ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.fail_locked_crit_edge, label %if.end

entry.fail_locked_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail_locked

if.end:                                           ; preds = %entry
  %12 = ptrtoint ptr %net_dev1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %net_dev1, align 4
  %call.i = tail call ptr @strcpy(ptr noundef %efx, ptr noundef %13) #11
  %call3 = tail call i32 @register_netdevice(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.end.fail_locked_crit_edge

if.end.fail_locked_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail_locked

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @netif_carrier_off(ptr noundef %1) #8
  %state = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 23
  %14 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %state, align 32
  tail call void @rtnl_unlock() #8
  tail call void @efx_init_mcdi_logging(ptr noundef %efx) #8
  br label %cleanup

fail_locked:                                      ; preds = %if.end.fail_locked_crit_edge, %entry.fail_locked_crit_edge
  %rc.0 = phi i32 [ %call, %entry.fail_locked_crit_edge ], [ %call3, %if.end.fail_locked_crit_edge ]
  tail call void @rtnl_unlock() #8
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %15 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %msg_enable, align 4
  %and = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %fail_locked.cleanup_crit_edge, label %if.then7

fail_locked.cleanup_crit_edge:                    ; preds = %fail_locked
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then7:                                         ; preds = %fail_locked
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %net_dev1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %net_dev1, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %18, ptr noundef nonnull @.str) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %fail_locked.cleanup_crit_edge, %if.end5
  %retval.0 = phi i32 [ 0, %if.end5 ], [ %rc.0, %if.then7 ], [ %rc.0, %fail_locked.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_alloc_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_init_mcdi_logging(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ef100_unregister_netdev(ptr noundef %efx) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %net_dev.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %0 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net_dev.i, align 4
  %reg_state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 121
  %2 = ptrtoint ptr %reg_state.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i = load i8, ptr %reg_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load.i)
  %cmp.i.not = icmp eq i8 %bf.load.i, 1
  br i1 %cmp.i.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @efx_fini_mcdi_logging(ptr noundef %efx) #8
  %state = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 23
  %3 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %state, align 32
  %4 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net_dev.i, align 4
  tail call void @unregister_netdev(ptr noundef %5) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_fini_mcdi_logging(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ef100_net_open(ptr noundef %net_dev) #2 align 64 {
entry:
  %allocated_vis = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %allocated_vis) #8
  %0 = ptrtoint ptr %allocated_vis to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %allocated_vis, align 4, !annotation !28
  %net_dev.i = getelementptr i8, ptr %net_dev, i32 4732
  %1 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %net_dev.i, align 4
  %call.i = tail call ptr @strcpy(ptr noundef %add.ptr.i, ptr noundef %2) #11
  %msg_enable = getelementptr i8, ptr %net_dev, i32 2460
  %3 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %msg_enable, align 4
  %and = and i32 %4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.body1

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end10

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef100_net_open.__UNIQUE_ID_ddebug527, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef100_net_open, %if.then6)) #8
          to label %do.end10 [label %if.then6], !srcloc !29

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #10
  %5 = tail call i32 @llvm.read_register.i32(metadata !18) #8
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef100_net_open.__UNIQUE_ID_ddebug527, ptr noundef %net_dev, ptr noundef nonnull @.str.4, i32 noundef %8) #8
  br label %do.end10

do.end10:                                         ; preds = %if.then6, %do.body1, %entry.do.end10_crit_edge
  %state.i = getelementptr i8, ptr %net_dev, i32 2464
  %9 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state.i, align 32
  %11 = and i32 %10, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %switch.i = icmp eq i32 %11, 2
  br i1 %switch.i, label %do.body.i, label %if.end14

do.body.i:                                        ; preds = %do.end10
  %12 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %msg_enable, align 4
  %and.i97 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i97)
  %tobool.not.i = icmp eq i32 %and.i97, 0
  br i1 %tobool.not.i, label %do.body.i.fail_crit_edge, label %if.then3.i

do.body.i.fail_crit_edge:                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.then3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %net_dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %15, ptr noundef nonnull @.str.5) #12
  br label %fail

if.end14:                                         ; preds = %do.end10
  %call15 = tail call i32 @efx_probe_interrupts(ptr noundef %add.ptr.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.fail_crit_edge

if.end14.fail_crit_edge:                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.end18:                                         ; preds = %if.end14
  %call19 = tail call i32 @efx_set_channels(ptr noundef %add.ptr.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end18.fail_crit_edge

if.end18.fail_crit_edge:                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.end22:                                         ; preds = %if.end18
  %call23 = tail call i32 @efx_mcdi_free_vis(ptr noundef %add.ptr.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end22.fail_crit_edge

if.end22.fail_crit_edge:                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.end26:                                         ; preds = %if.end22
  %call27 = call fastcc i32 @ef100_alloc_vis(ptr noundef %add.ptr.i, ptr noundef nonnull %allocated_vis)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end26.fail_crit_edge

if.end26.fail_crit_edge:                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.end30:                                         ; preds = %if.end26
  %call31 = call i32 @efx_probe_channels(ptr noundef %add.ptr.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end34:                                         ; preds = %if.end30
  %16 = ptrtoint ptr %allocated_vis to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %allocated_vis, align 4
  %call35 = call fastcc i32 @ef100_remap_bar(ptr noundef %add.ptr.i, i32 noundef %17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end34.fail_crit_edge

if.end34.fail_crit_edge:                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.end38:                                         ; preds = %if.end34
  call void @efx_init_napi(ptr noundef %add.ptr.i) #8
  %call39 = call i32 @efx_probe_filters(ptr noundef %add.ptr.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end38.fail_crit_edge

if.end38.fail_crit_edge:                          ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.end42:                                         ; preds = %if.end38
  %call43 = call i32 @efx_nic_init_interrupt(ptr noundef %add.ptr.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %if.end42.fail_crit_edge

if.end42.fail_crit_edge:                          ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.end46:                                         ; preds = %if.end42
  call void @efx_set_interrupt_affinity(ptr noundef %add.ptr.i) #8
  %call47 = call i32 @efx_enable_interrupts(ptr noundef %add.ptr.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %if.end46.fail_crit_edge

if.end46.fail_crit_edge:                          ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.end50:                                         ; preds = %if.end46
  %call51 = call i32 @efx_mcdi_poll_reboot(ptr noundef %add.ptr.i) #8
  %call52 = call i32 @efx_mcdi_mac_init_stats(ptr noundef %add.ptr.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %if.end50.fail_crit_edge

if.end50.fail_crit_edge:                          ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.end55:                                         ; preds = %if.end50
  call void @efx_start_all(ptr noundef %add.ptr.i) #8
  %mac_lock = getelementptr i8, ptr %net_dev, i32 4592
  call void @mutex_lock_nested(ptr noundef %mac_lock, i32 noundef 0) #8
  %call56 = call zeroext i1 @efx_mcdi_phy_poll(ptr noundef %add.ptr.i) #8
  br i1 %call56, label %if.then57, label %if.end55.if.end58_crit_edge

if.end55.if.end58_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.then57:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  call void @efx_link_status_changed(ptr noundef %add.ptr.i) #8
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %if.end55.if.end58_crit_edge
  call void @mutex_unlock(ptr noundef %mac_lock) #8
  br label %cleanup

fail:                                             ; preds = %if.end50.fail_crit_edge, %if.end46.fail_crit_edge, %if.end42.fail_crit_edge, %if.end38.fail_crit_edge, %if.end34.fail_crit_edge, %if.end26.fail_crit_edge, %if.end22.fail_crit_edge, %if.end18.fail_crit_edge, %if.end14.fail_crit_edge, %if.then3.i, %do.body.i.fail_crit_edge
  %rc.0 = phi i32 [ %call15, %if.end14.fail_crit_edge ], [ %call19, %if.end18.fail_crit_edge ], [ %call23, %if.end22.fail_crit_edge ], [ %call27, %if.end26.fail_crit_edge ], [ %call35, %if.end34.fail_crit_edge ], [ %call39, %if.end38.fail_crit_edge ], [ %call43, %if.end42.fail_crit_edge ], [ %call47, %if.end46.fail_crit_edge ], [ %call52, %if.end50.fail_crit_edge ], [ -5, %do.body.i.fail_crit_edge ], [ -5, %if.then3.i ]
  %call60 = call i32 @ef100_net_stop(ptr noundef %net_dev)
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end58, %if.end30.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %fail ], [ 0, %if.end58 ], [ %call31, %if.end30.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %allocated_vis) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ef100_net_stop(ptr noundef %net_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %net_dev, i32 2460
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end11_crit_edge, label %do.body1

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end11

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef100_net_stop.__UNIQUE_ID_ddebug526, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef100_net_stop, %if.then6)) #8
          to label %do.end11 [label %if.then6], !srcloc !29

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #10
  %net_dev7 = getelementptr i8, ptr %net_dev, i32 4732
  %2 = ptrtoint ptr %net_dev7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net_dev7, align 4
  %4 = tail call i32 @llvm.read_register.i32(metadata !18) #8
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef100_net_stop.__UNIQUE_ID_ddebug526, ptr noundef %3, ptr noundef nonnull @.str.8, i32 noundef %7) #8
  br label %do.end11

do.end11:                                         ; preds = %if.then6, %do.body1, %entry.do.end11_crit_edge
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %net_dev, i32 0, i32 103
  %8 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %9, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #8
  tail call void @efx_stop_all(ptr noundef %add.ptr.i) #8
  tail call void @efx_mcdi_mac_fini_stats(ptr noundef %add.ptr.i) #8
  tail call void @efx_disable_interrupts(ptr noundef %add.ptr.i) #8
  tail call void @efx_clear_interrupt_affinity(ptr noundef %add.ptr.i) #8
  tail call void @efx_nic_fini_interrupt(ptr noundef %add.ptr.i) #8
  tail call void @efx_remove_filters(ptr noundef %add.ptr.i) #8
  tail call void @efx_fini_napi(ptr noundef %add.ptr.i) #8
  tail call void @efx_remove_channels(ptr noundef %add.ptr.i) #8
  %call12 = tail call i32 @efx_mcdi_free_vis(ptr noundef %add.ptr.i) #8
  tail call void @efx_remove_interrupts(ptr noundef %add.ptr.i) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ef100_hard_start_xmit(ptr noundef %skb, ptr nocapture noundef %net_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %0 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %queue_mapping.i, align 8
  %conv = zext i16 %1 to i32
  %tx_channel_offset.i = getelementptr i8, ptr %net_dev, i32 3700
  %2 = ptrtoint ptr %tx_channel_offset.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_channel_offset.i, align 4
  %add.i = add i32 %3, %conv
  %arrayidx.i = getelementptr %struct.efx_nic, ptr %add.ptr.i, i32 0, i32 25, i32 %add.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %n_channels = getelementptr i8, ptr %net_dev, i32 3688
  %6 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %n_tx_channels = getelementptr i8, ptr %net_dev, i32 3704
  %8 = ptrtoint ptr %n_tx_channels to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n_tx_channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not = icmp eq i32 %9, 0
  %tobool5.not = icmp eq ptr %5, null
  %or.cond = select i1 %tobool3.not, i1 true, i1 %tobool5.not
  br i1 %or.cond, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %net_dev, i32 0, i32 103
  %10 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %11, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #8
  br label %err

if.end:                                           ; preds = %lor.lhs.false
  %tx_queue6 = getelementptr inbounds %struct.efx_channel, ptr %5, i32 0, i32 46
  %call7 = tail call i32 @ef100_enqueue_skb(ptr noundef %tx_queue6, ptr noundef %skb) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp eq i32 %call7, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end.err_crit_edge

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err:                                              ; preds = %if.end.err_crit_edge, %if.then
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %net_dev, i32 0, i32 36, i32 7
  %12 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_dropped, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %tx_dropped, align 4
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_set_rx_mode(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_set_mac_address(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_change_mtu(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_watchdog(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_net_stats(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_filter_rfs(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_set_features(ptr noundef, i64 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_get_phys_port_id(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_get_phys_port_name(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_probe_interrupts(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_set_channels(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_free_vis(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ef100_alloc_vis(ptr noundef %efx, ptr noundef %allocated_vis) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %n_tx_channels = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 46
  %0 = ptrtoint ptr %n_tx_channels to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n_tx_channels, align 8
  %n_extra_tx_channels = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 47
  %2 = ptrtoint ptr %n_extra_tx_channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_extra_tx_channels, align 4
  %add = add i32 %3, %1
  %n_rx_channels = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 43
  %4 = ptrtoint ptr %n_rx_channels to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_rx_channels, align 4
  %n_xdp_channels = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 49
  %6 = ptrtoint ptr %n_xdp_channels to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_xdp_channels, align 4
  %xdp_tx_per_channel = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 51
  %8 = ptrtoint ptr %xdp_tx_per_channel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %xdp_tx_per_channel, align 4
  %mul = mul i32 %9, %7
  %add1 = add i32 %add, %mul
  %10 = tail call i32 @llvm.umax.i32(i32 %5, i32 %add1)
  %call = tail call i32 @efx_mcdi_alloc_vis(ptr noundef %efx, i32 noundef %10, i32 noundef %10, ptr noundef null, ptr noundef %allocated_vis) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_probe_channels(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ef100_remap_bar(ptr nocapture noundef %efx, i32 noundef %max_vis) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %max_vis1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 40
  %0 = ptrtoint ptr %max_vis1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %max_vis, ptr %max_vis1, align 32
  %vi_stride = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 14
  %1 = ptrtoint ptr %vi_stride to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %vi_stride, align 128
  %mul = mul i32 %2, %max_vis
  %add = add i32 %mul, 4095
  %and = and i32 %add, -4096
  %membase_phys = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 12
  %3 = ptrtoint ptr %membase_phys to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %membase_phys, align 8
  %call = tail call ptr @ioremap(i32 noundef %4, i32 noundef %and) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body, label %if.end5

do.body:                                          ; preds = %entry
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %5 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %msg_enable, align 4
  %and2 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %do.body.cleanup_crit_edge, label %if.then4

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %7 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %8, ptr noundef nonnull @.str.6, i32 noundef %and) #12
  br label %cleanup

if.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %membase6 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 13
  %9 = ptrtoint ptr %membase6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase6, align 4
  tail call void @iounmap(ptr noundef %10) #8
  %11 = ptrtoint ptr %membase6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call, ptr %membase6, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -12, %if.then4 ], [ -12, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_init_napi(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_probe_filters(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_nic_init_interrupt(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_set_interrupt_affinity(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_enable_interrupts(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_poll_reboot(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_mac_init_stats(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_start_all(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @efx_mcdi_phy_poll(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_link_status_changed(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_alloc_vis(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_stop_all(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_mcdi_mac_fini_stats(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_disable_interrupts(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_clear_interrupt_affinity(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_nic_fini_interrupt(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_remove_filters(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_fini_napi(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_remove_channels(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_remove_interrupts(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ef100_enqueue_skb(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin nounwind }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !14, !16, !17}
!llvm.named.register.sp = !{!18}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/sfc/ef100_netdev.c", i32 282, i32 2}
!2 = !{ptr @ef100_netdev_ops, !3, !"ef100_netdev_ops", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/sfc/ef100_netdev.c", i32 216, i32 36}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/sfc/ef100_netdev.c", i32 110, i32 2}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @ef100_net_open.__UNIQUE_ID_ddebug527, !5, !"__UNIQUE_ID_ddebug527", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/sfc/efx_common.h", i32 68, i32 3}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/sfc/ef100_netdev.c", i32 66, i32 3}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/sfc/ef100_netdev.c", i32 84, i32 2}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @ef100_net_stop.__UNIQUE_ID_ddebug526, !15, !"__UNIQUE_ID_ddebug526", i1 false, i1 false}
!18 = !{!"sp"}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{!"auto-init"}
!29 = !{i64 2149109909, i64 2149109914, i64 2149109927, i64 2149109971, i64 2149110005, i64 2149110026}
