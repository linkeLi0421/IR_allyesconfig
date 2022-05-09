; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/sfc/efx_common.c_pt.bc'
source_filename = "../drivers/net/ethernet/sfc/efx_common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.172 }
%union.anon.172 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.pci_error_handlers = type { ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.efx_nic_type = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i8, i8, i8, i32, i32, i64, i32, i32, i32, i32 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.179, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.200, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.179 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.200 = type { ptr }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.201, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.201 = type { ptr }
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
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.efx_mcdi_iface = type { ptr, i32, i32, %struct.wait_queue_head, %struct.spinlock, i8, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.list_head, %struct.timer_list, ptr, i8, i32, i32, %struct.wait_queue_head }

@__param_str_debug = internal constant [10 x i8] c"sfc.debug\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } { i32 8439, [28 x i8] zeroinitializer }, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.172 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype647 = internal constant [24 x i8] c"sfc.parmtype=debug:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_debug648 = internal constant [56 x i8] c"sfc.parm=debug:Bitmapped debugging message enable value\00", section ".modinfo", align 1
@efx_reset_type_max = dso_local constant { i32, [28 x i8] } { i32 15, [28 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"INVISIBLE\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RECOVER_OR_ALL\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ALL\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"WORLD\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"RECOVER_OR_DISABLE\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DATAPATH\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MC_BIST\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DISABLE\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TX_WATCHDOG\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"INT_ERROR\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DMA_ERROR\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TX_SKIP\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MC_FAILURE\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MCDI_TIMEOUT (FLR)\00", [45 x i8] zeroinitializer }, align 32
@efx_reset_type_names = dso_local constant { [15 x ptr], [36 x i8] } { [15 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr null, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], [36 x i8] zeroinitializer }, align 32
@efx_loopback_mode_max = dso_local constant { i32, [28 x i8] } { i32 27, [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NONE\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"GMAC\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"XGMII\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"XGXS\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"XAUI\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"GMII\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SGMII\00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"XGBR\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"XFI\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"XAUI_FAR\00", [23 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GMII_FAR\00", [23 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SGMII_FAR\00", [22 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"XFI_FAR\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"GPHY\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PHYXS\00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PCS\00", [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PMA/PMD\00", [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"XPORT\00", [26 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"XGMII_WS\00", [23 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"XAUI_WS\00", [24 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"XAUI_WS_FAR\00", [20 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"XAUI_WS_NEAR\00", [19 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GMII_WS\00", [24 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"XFI_WS\00", [25 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"XFI_WS_FAR\00", [21 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PHYXS_WS\00", [23 x i8] zeroinitializer }, align 32
@efx_loopback_mode_names = dso_local constant { [27 x ptr], [52 x i8] } { [27 x ptr] [ptr @.str.14, ptr @.str.5, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39], [52 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sfc_reset\00", [22 x i8] zeroinitializer }, align 32
@reset_workqueue = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@efx_create_reset_workqueue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.44, i32 117, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013Failed to create reset workqueue\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"efx_create_reset_workqueue\00", [37 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/net/ethernet/sfc/efx_common.c\00", [58 x i8] zeroinitializer }, align 32
@efx_create_reset_workqueue._entry_ptr = internal global ptr @efx_create_reset_workqueue._entry, section ".printk_index", align 4
@.str.45 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"invalid ethernet MAC address requested: %pM\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"link up at %uMbps %s-duplex (MTU %d)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"full\00", [27 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"half\00", [27 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"link down\0A\00", [21 x i8] zeroinitializer }, align 32
@efx_change_mtu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.50 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Requested MTU of %d too big for XDP (max: %d)\0A\00", [49 x i8] zeroinitializer }, align 32
@efx_change_mtu.__UNIQUE_ID_ddebug649 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.52, ptr @.str.53, ptr @.str.44, ptr @.str.54, i8 0, i8 75, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sfc\00", [28 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"efx_change_mtu\00", [17 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"changing MTU to %d\0A\00", [44 x i8] zeroinitializer }, align 32
@efx_start_all.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.55 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@efx_stop_all.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@efx_reconfigure_port.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@efx_reset_down.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.56 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"TX stuck with port_enabled=%d: resetting channels\0A\00", [45 x i8] zeroinitializer }, align 32
@efx_reset_up.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.57 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to initialise NIC\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"could not restore PHY settings\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"failed to restore vswitching rc=%d; VFs may not function\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"resetting (%s)\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"(invalid)\00", [22 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to reset hardware\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"has been disabled\0A\00", [45 x i8] zeroinitializer }, align 32
@efx_reset.__UNIQUE_ID_ddebug656 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.52, ptr @.str.64, ptr @.str.44, ptr @.str.65, i8 0, i8 -40, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"efx_reset\00", [22 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"reset complete\0A\00", [16 x i8] zeroinitializer }, align 32
@efx_schedule_reset.__UNIQUE_ID_ddebug658 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.52, ptr @.str.66, ptr @.str.44, ptr @.str.67, i8 0, i8 -28, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"efx_schedule_reset\00", [45 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"recovering: skip scheduling %s reset\0A\00", [58 x i8] zeroinitializer }, align 32
@efx_schedule_reset.__UNIQUE_ID_ddebug659 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.52, ptr @.str.66, ptr @.str.44, ptr @.str.68, i8 0, i8 -24, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"scheduling %s reset\0A\00", [43 x i8] zeroinitializer }, align 32
@efx_schedule_reset.__UNIQUE_ID_ddebug660 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.52, ptr @.str.66, ptr @.str.44, ptr @.str.69, i8 0, i8 -22, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"scheduling %s reset for %s\0A\00", [36 x i8] zeroinitializer }, align 32
@efx_init_struct.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.70 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&efx->biu_lock\00", [17 x i8] zeroinitializer }, align 32
@efx_init_struct.__key.71 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.72 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&efx->reset_work)\00", [60 x i8] zeroinitializer }, align 32
@efx_init_struct.__key.73 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.74 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"(work_completion)(&(&efx->monitor_work)->work)\00", [49 x i8] zeroinitializer }, align 32
@efx_init_struct.__key.75 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.76 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&(&efx->monitor_work)->timer\00", [35 x i8] zeroinitializer }, align 32
@efx_init_struct.__key.77 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.78 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&efx->rss_lock\00", [17 x i8] zeroinitializer }, align 32
@efx_init_struct.__key.79 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.80 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&efx->stats_lock\00", [47 x i8] zeroinitializer }, align 32
@efx_init_struct.__key.81 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.82 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&efx->mac_lock\00", [17 x i8] zeroinitializer }, align 32
@efx_init_struct.__key.83 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.84 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&efx->filter_sem\00", [47 x i8] zeroinitializer }, align 32
@efx_init_struct.__key.85 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.86 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&efx->rps_mutex\00", [16 x i8] zeroinitializer }, align 32
@efx_init_struct.__key.87 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.88 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&efx->rps_hash_lock\00", [44 x i8] zeroinitializer }, align 32
@efx_init_struct.__key.89 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.90 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&efx->mac_work)\00", [62 x i8] zeroinitializer }, align 32
@efx_init_struct.__key.91 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.92 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&efx->flush_wq\00", [17 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sfc%s\00", [26 x i8] zeroinitializer }, align 32
@efx_init_io.__UNIQUE_ID_ddebug663 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.52, ptr @.str.94, ptr @.str.44, ptr @.str.95, i8 1, i8 14, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"efx_init_io\00", [20 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"initialising I/O bar=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to enable PCI device\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"could not find a suitable DMA mask\0A\00", [60 x i8] zeroinitializer }, align 32
@efx_init_io.__UNIQUE_ID_ddebug664 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.52, ptr @.str.94, ptr @.str.44, ptr @.str.98, i8 1, i8 18, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"using DMA mask %llx\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"ERROR: No BAR%d mapping from the BIOS. Try pci=realloc on the kernel command line\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"request for memory BAR[%d] failed\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"could not map memory BAR[%d] at %llx+%x\0A\00", [55 x i8] zeroinitializer }, align 32
@efx_init_io.__UNIQUE_ID_ddebug665 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.52, ptr @.str.94, ptr @.str.44, ptr @.str.102, i8 1, i8 26, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.102 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"memory BAR[%d] at %llx+%x (virtual %p)\0A\00", [56 x i8] zeroinitializer }, align 32
@efx_fini_io.__UNIQUE_ID_ddebug666 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.52, ptr @.str.103, ptr @.str.44, ptr @.str.104, i8 1, i8 30, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.103 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"efx_fini_io\00", [20 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"shutting down I/O\0A\00", [45 x i8] zeroinitializer }, align 32
@dev_attr_mcdi_logging = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.116, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mcdi_logging_show, ptr @mcdi_logging_store }, [36 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to init net dev attributes\0A\00", [61 x i8] zeroinitializer }, align 32
@efx_err_handlers = dso_local constant { %struct.pci_error_handlers, [40 x i8] } { %struct.pci_error_handlers { ptr @efx_io_error_detected, ptr null, ptr @efx_io_slot_reset, ptr null, ptr null, ptr @efx_io_resume }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"p%u\00", [28 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"device is disabled due to earlier errors\0A\00", [54 x i8] zeroinitializer }, align 32
@efx_start_port.__UNIQUE_ID_ddebug654 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.52, ptr @.str.108, ptr @.str.44, ptr @.str.109, i8 0, i8 121, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"efx_start_port\00", [17 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"start port\0A\00", [20 x i8] zeroinitializer }, align 32
@efx_start_datapath.__UNIQUE_ID_ddebug652 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.52, ptr @.str.110, ptr @.str.44, ptr @.str.111, i8 0, i8 100, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.110 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"efx_start_datapath\00", [45 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"RX buf len=%u; page order=%u batch=%u\0A\00", [57 x i8] zeroinitializer }, align 32
@efx_start_datapath.__UNIQUE_ID_ddebug653 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.52, ptr @.str.110, ptr @.str.44, ptr @.str.112, i8 0, i8 102, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.112 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"RX buf len=%u step=%u bpp=%u; page batch=%u\0A\00", [51 x i8] zeroinitializer }, align 32
@efx_stop_port.__UNIQUE_ID_ddebug655 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.52, ptr @.str.113, ptr @.str.44, ptr @.str.114, i8 0, i8 126, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.113 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"efx_stop_port\00", [18 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"stop port\0A\00", [21 x i8] zeroinitializer }, align 32
@efx_stop_port.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@efx_stop_datapath.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.115 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Warning: No MC reboot after BIST mode\0A\00", [57 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.116 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mcdi_logging\00", [19 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Cannot re-enable PCI device after reset.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"efx_reset failed after PCI error (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@efx_io_resume.__UNIQUE_ID_ddebug667 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.52, ptr @.str.120, ptr @.str.44, ptr @.str.121, i8 1, i8 63, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.120 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"efx_io_resume\00", [18 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Done resetting and resuming IO after PCI error.\0A\00", [47 x i8] zeroinitializer }, align 32
@efx_can_encap_offloads.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 14]
@__sancov_gen_cov_switch_values.122 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 5]
@__sancov_gen_cov_switch_values.123 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.124 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.125 = internal global [4 x i64] [i64 2, i64 8, i64 17, i64 47]
@___asan_gen_.126 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 28, i32 21 }
@___asan_gen_.129 = private unnamed_addr constant [19 x i8] c"efx_reset_type_max\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 54, i32 20 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 56, i32 36 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 58, i32 36 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 57, i32 36 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 59, i32 36 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 60, i32 36 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 61, i32 36 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 62, i32 26 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 63, i32 36 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 64, i32 36 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 65, i32 36 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 66, i32 36 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 67, i32 36 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 68, i32 36 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 69, i32 30 }
@___asan_gen_.174 = private unnamed_addr constant [21 x i8] c"efx_reset_type_names\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 55, i32 19 }
@___asan_gen_.177 = private unnamed_addr constant [22 x i8] c"efx_loopback_mode_max\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 76, i32 20 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 78, i32 21 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 80, i32 21 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 81, i32 21 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 82, i32 21 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 83, i32 21 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 84, i32 21 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 85, i32 21 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 86, i32 21 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 87, i32 20 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 88, i32 24 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 89, i32 24 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 90, i32 25 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 91, i32 23 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 92, i32 21 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 93, i32 21 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 94, i32 20 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 95, i32 22 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 96, i32 21 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 97, i32 24 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 98, i32 23 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 99, i32 28 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 100, i32 28 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 101, i32 23 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 102, i32 22 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 103, i32 26 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 104, i32 24 }
@___asan_gen_.258 = private unnamed_addr constant [24 x i8] c"efx_loopback_mode_names\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 77, i32 19 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 115, i32 20 }
@___asan_gen_.267 = private unnamed_addr constant [16 x i8] c"reset_workqueue\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 111, i32 33 }
@___asan_gen_.270 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 117, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 177, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 265, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 270, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 295, i32 6 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 297, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 303, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 530, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 728, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 753, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 764, i32 4 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 775, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 817, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 829, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 863, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 866, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 912, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 929, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 934, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 989, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 993, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 994, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1011, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1013, i32 2 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1017, i32 2 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1018, i32 2 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1020, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1021, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1027, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1028, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1041, i32 61 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1081, i32 2 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1085, i32 3 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1094, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1098, i32 2 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1103, i32 3 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1112, i32 3 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1120, i32 3 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1126, i32 2 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1145, i32 2 }
@___asan_gen_.465 = private unnamed_addr constant [22 x i8] c"dev_attr_mcdi_logging\00", align 1
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1193, i32 3 }
@___asan_gen_.471 = private unnamed_addr constant [17 x i8] c"efx_err_handlers\00", align 1
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1289, i32 33 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1393, i32 26 }
@___asan_gen_.478 = private unnamed_addr constant [41 x i8] c"../drivers/net/ethernet/sfc/efx_common.h\00", align 1
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 68, i32 3 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 485, i32 2 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 400, i32 3 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 405, i32 3 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 504, i32 2 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 672, i32 2 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1186, i32 8 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1171, i32 35 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1250, i32 3 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1271, i32 3 }
@___asan_gen_.519 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.520 = private constant [41 x i8] c"../drivers/net/ethernet/sfc/efx_common.c\00", align 1
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1275, i32 3 }
@llvm.compiler.used = appending global [136 x ptr] [ptr @__UNIQUE_ID_debug648, ptr @__UNIQUE_ID_debugtype647, ptr @__param_debug, ptr @efx_create_reset_workqueue._entry, ptr @efx_create_reset_workqueue._entry_ptr, ptr @debug, ptr @efx_reset_type_max, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @efx_reset_type_names, ptr @efx_loopback_mode_max, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @efx_loopback_mode_names, ptr @.str.40, ptr @.str.41, ptr @reset_workqueue, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @efx_init_struct.__key, ptr @.str.70, ptr @efx_init_struct.__key.71, ptr @.str.72, ptr @efx_init_struct.__key.73, ptr @.str.74, ptr @efx_init_struct.__key.75, ptr @.str.76, ptr @efx_init_struct.__key.77, ptr @.str.78, ptr @efx_init_struct.__key.79, ptr @.str.80, ptr @efx_init_struct.__key.81, ptr @.str.82, ptr @efx_init_struct.__key.83, ptr @.str.84, ptr @efx_init_struct.__key.85, ptr @.str.86, ptr @efx_init_struct.__key.87, ptr @.str.88, ptr @efx_init_struct.__key.89, ptr @.str.90, ptr @efx_init_struct.__key.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @dev_attr_mcdi_logging, ptr @.str.105, ptr @efx_err_handlers, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121], section "llvm.metadata"
@0 = internal global [132 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_reset_type_max to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_reset_type_names to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_loopback_mode_max to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_loopback_mode_names to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset_workqueue to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_create_reset_workqueue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_init_struct.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_init_struct.__key.71 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_init_struct.__key.73 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_init_struct.__key.75 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_init_struct.__key.77 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_init_struct.__key.79 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_init_struct.__key.81 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_init_struct.__key.83 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_init_struct.__key.85 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_init_struct.__key.87 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_init_struct.__key.89 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_init_struct.__key.91 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_mcdi_logging to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_err_handlers to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_create_reset_workqueue() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.40, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull @.str.41) #16
  store ptr %call, ptr @reset_workqueue, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #19
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_queue_reset_work(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @reset_workqueue, align 4
  %reset_work = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 11
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %reset_work) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_flush_reset_workqueue(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %reset_work = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 11
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %reset_work) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_destroy_reset_workqueue() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @reset_workqueue, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @destroy_workqueue(ptr noundef nonnull %0) #16
  store ptr null, ptr @reset_workqueue, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_mac_reconfigure(ptr noundef %efx, i1 noundef zeroext %mtu_only) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 4
  %reconfigure_mac = getelementptr inbounds %struct.efx_nic_type, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %reconfigure_mac to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reconfigure_mac, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %filter_sem = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 108
  tail call void @down_read(ptr noundef %filter_sem) #16
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %type, align 4
  %reconfigure_mac2 = getelementptr inbounds %struct.efx_nic_type, ptr %5, i32 0, i32 29
  %6 = ptrtoint ptr %reconfigure_mac2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reconfigure_mac2, align 4
  %call = tail call i32 %7(ptr noundef %efx, i1 noundef zeroext %mtu_only) #16
  tail call void @up_read(ptr noundef %filter_sem) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_set_mac_address(ptr noundef %net_dev, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  %old_addr = alloca [6 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %data, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %old_addr) #16
  %0 = getelementptr inbounds [6 x i8], ptr %old_addr, i32 0, i32 4
  %1 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %sa_data, align 4
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not.i = icmp eq i32 %3, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

is_valid_ether_addr.exit:                         ; preds = %entry
  %add.ptr.i.i = getelementptr %struct.sockaddr, ptr %data, i32 0, i32 1, i32 4
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %5 to i32
  %or.i.i = or i32 %2, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.do.body_crit_edge, label %if.end4

is_valid_ether_addr.exit.do.body_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

do.body:                                          ; preds = %is_valid_ether_addr.exit.do.body_crit_edge, %entry.do.body_crit_edge
  %msg_enable = getelementptr i8, ptr %net_dev, i32 2460
  %6 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msg_enable, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %if.then2

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %net_dev3 = getelementptr i8, ptr %net_dev, i32 4732
  %8 = ptrtoint ptr %net_dev3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net_dev3, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %9, ptr noundef nonnull @.str.45, ptr noundef %sa_data) #19
  br label %cleanup

if.end4:                                          ; preds = %is_valid_ether_addr.exit
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %net_dev, i32 0, i32 86
  %10 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_addr, align 64
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %14 = ptrtoint ptr %old_addr to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %old_addr, align 4
  %add.ptr.i34 = getelementptr i8, ptr %11, i32 4
  %15 = ptrtoint ptr %add.ptr.i34 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %add.ptr.i34, align 2
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %0, align 4
  tail call void @dev_addr_mod(ptr noundef %net_dev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #16
  %type = getelementptr i8, ptr %net_dev, i32 2348
  %18 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %type, align 4
  %set_mac_address = getelementptr inbounds %struct.efx_nic_type, ptr %19, i32 0, i32 112
  %20 = ptrtoint ptr %set_mac_address to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %set_mac_address, align 8
  %tobool6.not = icmp eq ptr %21, null
  br i1 %tobool6.not, label %if.end4.if.end15_crit_edge, label %if.then7

if.end4.if.end15_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15

if.then7:                                         ; preds = %if.end4
  %call10 = tail call i32 %21(ptr noundef %add.ptr.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then7.if.end15_crit_edge, label %if.then12

if.then7.if.end15_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15

if.then12:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #18
  call void @dev_addr_mod(ptr noundef %net_dev, i32 noundef 0, ptr noundef nonnull %old_addr, i32 noundef 6) #16
  br label %cleanup

if.end15:                                         ; preds = %if.then7.if.end15_crit_edge, %if.end4.if.end15_crit_edge
  %mac_lock = getelementptr i8, ptr %net_dev, i32 4592
  tail call void @mutex_lock_nested(ptr noundef %mac_lock, i32 noundef 0) #16
  %22 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %type, align 4
  %reconfigure_mac.i = getelementptr inbounds %struct.efx_nic_type, ptr %23, i32 0, i32 29
  %24 = ptrtoint ptr %reconfigure_mac.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reconfigure_mac.i, align 4
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %if.end15.efx_mac_reconfigure.exit_crit_edge, label %if.then.i

if.end15.efx_mac_reconfigure.exit_crit_edge:      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  br label %efx_mac_reconfigure.exit

if.then.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  %filter_sem.i = getelementptr i8, ptr %net_dev, i32 4920
  tail call void @down_read(ptr noundef %filter_sem.i) #16
  %26 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %type, align 4
  %reconfigure_mac2.i = getelementptr inbounds %struct.efx_nic_type, ptr %27, i32 0, i32 29
  %28 = ptrtoint ptr %reconfigure_mac2.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reconfigure_mac2.i, align 4
  %call.i = tail call i32 %29(ptr noundef %add.ptr.i, i1 noundef zeroext false) #16
  tail call void @up_read(ptr noundef %filter_sem.i) #16
  br label %efx_mac_reconfigure.exit

efx_mac_reconfigure.exit:                         ; preds = %if.then.i, %if.end15.efx_mac_reconfigure.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mac_lock) #16
  br label %cleanup

cleanup:                                          ; preds = %efx_mac_reconfigure.exit, %if.then12, %if.then2, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.then12 ], [ 0, %efx_mac_reconfigure.exit ], [ -99, %if.then2 ], [ -99, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %old_addr) #16
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_set_rx_mode(ptr noundef %net_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %port_enabled = getelementptr i8, ptr %net_dev, i32 4728
  %0 = ptrtoint ptr %port_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %port_enabled, align 8, !range !282
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %workqueue = getelementptr i8, ptr %net_dev, i32 2360
  %2 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %workqueue, align 8
  %mac_work = getelementptr i8, ptr %net_dev, i32 4684
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %mac_work) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_set_features(ptr noundef %net_dev, i64 noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %features = getelementptr inbounds %struct.net_device, ptr %net_dev, i32 0, i32 23
  %0 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %features, align 16
  %neg = and i64 %data, 274877906944
  %and = xor i64 %neg, 274877906944
  %and1 = and i64 %and, %1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1)
  %tobool.not = icmp eq i64 %and1, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

if.then:                                          ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %type = getelementptr i8, ptr %net_dev, i32 2348
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type, align 4
  %filter_clear_rx = getelementptr inbounds %struct.efx_nic_type, ptr %3, i32 0, i32 80
  %4 = ptrtoint ptr %filter_clear_rx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %filter_clear_rx, align 8
  %call2 = tail call i32 %5(ptr noundef %add.ptr.i, i32 noundef 2) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then.if.end5_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %6 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %features, align 16
  %xor = xor i64 %7, %data
  %and7 = and i64 %xor, 8796093022720
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7)
  %tobool8.not = icmp eq i64 %and7, 0
  br i1 %tobool8.not, label %if.end5.cleanup_crit_edge, label %if.then9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then9:                                         ; preds = %if.end5
  %port_enabled.i = getelementptr i8, ptr %net_dev, i32 4728
  %8 = ptrtoint ptr %port_enabled.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %port_enabled.i, align 8, !range !282
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %if.then9.cleanup_crit_edge, label %if.then.i

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then.i:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #18
  %workqueue.i = getelementptr i8, ptr %net_dev, i32 2360
  %10 = ptrtoint ptr %workqueue.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %workqueue.i, align 8
  %mac_work.i = getelementptr i8, ptr %net_dev, i32 4684
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %11, ptr noundef %mac_work.i) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ 0, %if.then9.cleanup_crit_edge ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_link_status_changed(ptr nocapture noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %link_state1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 97
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %0 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net_dev, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %link_state1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %link_state1, align 4, !range !282
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %8 = trunc i32 %7 to i8
  %9 = lshr i8 %8, 2
  %10 = and i8 %9, 1
  %11 = xor i8 %10, 1
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %11)
  %cmp.not = icmp eq i8 %5, %11
  br i1 %cmp.not, label %if.end.if.end13_crit_edge, label %if.then6

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

if.then6:                                         ; preds = %if.end
  %n_link_state_changes = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 98
  %12 = ptrtoint ptr %n_link_state_changes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %n_link_state_changes, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %n_link_state_changes, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool8.not = icmp eq i8 %5, 0
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @netif_carrier_on(ptr noundef %1) #16
  br label %if.end13

if.else:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @netif_carrier_off(ptr noundef %1) #16
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then9, %if.end.if.end13_crit_edge
  %14 = ptrtoint ptr %link_state1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %link_state1, align 4, !range !282
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool15.not = icmp eq i8 %15, 0
  %msg_enable26 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %16 = ptrtoint ptr %msg_enable26 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %msg_enable26, align 4
  %and27 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool15.not, label %do.body25, label %do.body

do.body:                                          ; preds = %if.end13
  br i1 %tobool28.not, label %do.body.cleanup_crit_edge, label %if.then18

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %18 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %net_dev, align 4
  %speed = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 97, i32 3
  %20 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %speed, align 4
  %fd = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 97, i32 1
  %22 = ptrtoint ptr %fd to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %fd, align 1, !range !282
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool20.not = icmp eq i8 %23, 0
  %cond = select i1 %tobool20.not, ptr @.str.48, ptr @.str.47
  %mtu = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 20
  %24 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mtu, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %19, ptr noundef nonnull @.str.46, i32 noundef %21, ptr noundef nonnull %cond, i32 noundef %25) #19
  br label %cleanup

do.body25:                                        ; preds = %if.end13
  br i1 %tobool28.not, label %do.body25.cleanup_crit_edge, label %if.then29

do.body25.cleanup_crit_edge:                      ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then29:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #18
  %26 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %27, ptr noundef nonnull @.str.49) #19
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %do.body25.cleanup_crit_edge, %if.then18, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @efx_xdp_max_mtu(ptr nocapture noundef readonly %efx) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_prefix_size = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 59
  %0 = ptrtoint ptr %rx_prefix_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_prefix_size, align 4
  %type = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type, align 4
  %rx_buffer_padding = getelementptr inbounds %struct.efx_nic_type, ptr %3, i32 0, i32 128
  %4 = ptrtoint ptr %rx_buffer_padding to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_buffer_padding, align 4
  %rx_ip_align = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 52
  %6 = ptrtoint ptr %rx_ip_align to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_ip_align, align 16
  %8 = add i32 %1, %5
  %9 = add i32 %8, %7
  %sub = sub i32 3544, %9
  ret i32 %sub
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_change_mtu(ptr noundef %net_dev, i32 noundef %new_mtu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %state.i = getelementptr i8, ptr %net_dev, i32 2464
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state.i, align 32
  %2 = and i32 %1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %switch.i = icmp eq i32 %2, 2
  br i1 %switch.i, label %do.body.i, label %do.body

do.body.i:                                        ; preds = %entry
  %msg_enable.i = getelementptr i8, ptr %net_dev, i32 2460
  %3 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.cleanup_crit_edge, label %if.then3.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %net_dev.i = getelementptr i8, ptr %net_dev, i32 4732
  %5 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %net_dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %6, ptr noundef nonnull @.str.107) #19
  br label %cleanup

do.body:                                          ; preds = %entry
  %call2 = tail call zeroext i1 @lockdep_rtnl_is_held() #16
  br i1 %call2, label %do.body.do.end_crit_edge, label %land.lhs.true

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true:                                    ; preds = %do.body
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true5

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b62 = load i1, ptr @efx_change_mtu.__warned, align 1
  br i1 %.b62, label %land.lhs.true5.do.end_crit_edge, label %if.then7

land.lhs.true5.do.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.then7:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @efx_change_mtu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.44, i32 noundef 295, ptr noundef nonnull @.str.50) #16
  br label %do.end

do.end:                                           ; preds = %if.then7, %land.lhs.true5.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.body.do.end_crit_edge
  %xdp_prog = getelementptr i8, ptr %net_dev, i32 4916
  %7 = ptrtoint ptr %xdp_prog to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %xdp_prog, align 4
  %tobool9.not = icmp eq ptr %8, null
  br i1 %tobool9.not, label %do.end.do.body22_crit_edge, label %land.lhs.true10

do.end.do.body22_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body22

land.lhs.true10:                                  ; preds = %do.end
  %rx_prefix_size.i = getelementptr i8, ptr %net_dev, i32 3756
  %9 = ptrtoint ptr %rx_prefix_size.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rx_prefix_size.i, align 4
  %type.i = getelementptr i8, ptr %net_dev, i32 2348
  %11 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %type.i, align 4
  %rx_buffer_padding.i = getelementptr inbounds %struct.efx_nic_type, ptr %12, i32 0, i32 128
  %13 = ptrtoint ptr %rx_buffer_padding.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rx_buffer_padding.i, align 4
  %rx_ip_align.i = getelementptr i8, ptr %net_dev, i32 3728
  %15 = ptrtoint ptr %rx_ip_align.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rx_ip_align.i, align 16
  %17 = add i32 %10, %14
  %18 = add i32 %17, %16
  %sub.i = sub i32 3544, %18
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %new_mtu)
  %cmp = icmp ult i32 %sub.i, %new_mtu
  br i1 %cmp, label %do.body13, label %land.lhs.true10.do.body22_crit_edge

land.lhs.true10.do.body22_crit_edge:              ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body22

do.body13:                                        ; preds = %land.lhs.true10
  %msg_enable = getelementptr i8, ptr %net_dev, i32 2460
  %19 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %msg_enable, align 4
  %and = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %do.body13.cleanup_crit_edge, label %if.then15

do.body13.cleanup_crit_edge:                      ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then15:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #18
  %net_dev16 = getelementptr i8, ptr %net_dev, i32 4732
  %21 = ptrtoint ptr %net_dev16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %net_dev16, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %22, ptr noundef nonnull @.str.51, i32 noundef %new_mtu, i32 noundef %sub.i) #19
  br label %cleanup

do.body22:                                        ; preds = %land.lhs.true10.do.body22_crit_edge, %do.end.do.body22_crit_edge
  %msg_enable23 = getelementptr i8, ptr %net_dev, i32 2460
  %23 = ptrtoint ptr %msg_enable23 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %msg_enable23, align 4
  %and24 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %do.body22.do.end40_crit_edge, label %do.body27

do.body22.do.end40_crit_edge:                     ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end40

do.body27:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_change_mtu.__UNIQUE_ID_ddebug649, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_change_mtu, %if.then33)) #16
          to label %do.end40 [label %if.then33], !srcloc !283

if.then33:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #18
  %net_dev34 = getelementptr i8, ptr %net_dev, i32 4732
  %25 = ptrtoint ptr %net_dev34 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %net_dev34, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_change_mtu.__UNIQUE_ID_ddebug649, ptr noundef %26, ptr noundef nonnull @.str.54, i32 noundef %new_mtu) #16
  br label %do.end40

do.end40:                                         ; preds = %if.then33, %do.body27, %do.body22.do.end40_crit_edge
  %net_dev.i69 = getelementptr i8, ptr %net_dev, i32 4732
  %27 = ptrtoint ptr %net_dev.i69 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %net_dev.i69, align 4
  tail call fastcc void @local_bh_disable() #16
  tail call void @netif_tx_lock(ptr noundef %28) #16
  tail call void @netif_device_detach(ptr noundef %28) #16
  tail call void @netif_tx_unlock(ptr noundef %28) #16
  tail call fastcc void @local_bh_enable() #16
  tail call void @efx_stop_all(ptr noundef %add.ptr.i)
  %mac_lock = getelementptr i8, ptr %net_dev, i32 4592
  tail call void @mutex_lock_nested(ptr noundef %mac_lock, i32 noundef 0) #16
  %mtu = getelementptr inbounds %struct.net_device, ptr %net_dev, i32 0, i32 20
  %29 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %new_mtu, ptr %mtu, align 4
  %type.i70 = getelementptr i8, ptr %net_dev, i32 2348
  %30 = ptrtoint ptr %type.i70 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %type.i70, align 4
  %reconfigure_mac.i = getelementptr inbounds %struct.efx_nic_type, ptr %31, i32 0, i32 29
  %32 = ptrtoint ptr %reconfigure_mac.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reconfigure_mac.i, align 4
  %tobool.not.i71 = icmp eq ptr %33, null
  br i1 %tobool.not.i71, label %do.end40.efx_mac_reconfigure.exit_crit_edge, label %if.then.i

do.end40.efx_mac_reconfigure.exit_crit_edge:      ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #18
  br label %efx_mac_reconfigure.exit

if.then.i:                                        ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #18
  %filter_sem.i = getelementptr i8, ptr %net_dev, i32 4920
  tail call void @down_read(ptr noundef %filter_sem.i) #16
  %34 = ptrtoint ptr %type.i70 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %type.i70, align 4
  %reconfigure_mac2.i = getelementptr inbounds %struct.efx_nic_type, ptr %35, i32 0, i32 29
  %36 = ptrtoint ptr %reconfigure_mac2.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %reconfigure_mac2.i, align 4
  %call.i = tail call i32 %37(ptr noundef %add.ptr.i, i1 noundef zeroext true) #16
  tail call void @up_read(ptr noundef %filter_sem.i) #16
  br label %efx_mac_reconfigure.exit

efx_mac_reconfigure.exit:                         ; preds = %if.then.i, %do.end40.efx_mac_reconfigure.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mac_lock) #16
  tail call void @efx_start_all(ptr noundef %add.ptr.i)
  %38 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %state.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %39)
  %cmp.not.i = icmp eq i32 %39, 2
  br i1 %cmp.not.i, label %efx_mac_reconfigure.exit.cleanup_crit_edge, label %land.lhs.true.i

efx_mac_reconfigure.exit.cleanup_crit_edge:       ; preds = %efx_mac_reconfigure.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true.i:                                  ; preds = %efx_mac_reconfigure.exit
  %reset_pending.i = getelementptr i8, ptr %net_dev, i32 2468
  %40 = ptrtoint ptr %reset_pending.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %reset_pending.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i73 = icmp eq i32 %41, 0
  br i1 %tobool.not.i73, label %if.then.i75, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then.i75:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  %42 = ptrtoint ptr %net_dev.i69 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %net_dev.i69, align 4
  tail call void @netif_device_attach(ptr noundef %43) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then.i75, %land.lhs.true.i.cleanup_crit_edge, %efx_mac_reconfigure.exit.cleanup_crit_edge, %if.then15, %do.body13.cleanup_crit_edge, %if.then3.i, %do.body.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then15 ], [ -22, %do.body13.cleanup_crit_edge ], [ 0, %efx_mac_reconfigure.exit.cleanup_crit_edge ], [ 0, %land.lhs.true.i.cleanup_crit_edge ], [ 0, %if.then.i75 ], [ -5, %do.body.i.cleanup_crit_edge ], [ -5, %if.then3.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_stop_all(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 23
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 32
  %.off = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %if.then, label %entry.do.end46_crit_edge

entry.do.end46_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end46

if.then:                                          ; preds = %entry
  %call = tail call i32 @rtnl_is_locked() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %if.then.do.end46_crit_edge

if.then.do.end46_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end46

land.rhs:                                         ; preds = %if.then
  %.b115 = load i1, ptr @efx_stop_all.__already_done, align 1
  br i1 %.b115, label %land.rhs.do.end46_crit_edge, label %if.then14, !prof !284

land.rhs.do.end46_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end46

if.then14:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @efx_stop_all.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 570, i32 noundef 9, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.44, i32 noundef 570) #16
  br label %do.end46

do.end46:                                         ; preds = %if.then14, %land.rhs.do.end46_crit_edge, %if.then.do.end46_crit_edge, %entry.do.end46_crit_edge
  %port_enabled = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 80
  %2 = ptrtoint ptr %port_enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %port_enabled, align 8, !range !282
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool47.not = icmp eq i8 %3, 0
  br i1 %tobool47.not, label %do.end46.return_crit_edge, label %if.end49

do.end46.return_crit_edge:                        ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end49:                                         ; preds = %do.end46
  %type = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %type, align 4
  %update_stats = getelementptr inbounds %struct.efx_nic_type, ptr %5, i32 0, i32 21
  %6 = ptrtoint ptr %update_stats to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %update_stats, align 4
  %tobool50.not = icmp eq ptr %7, null
  br i1 %tobool50.not, label %if.end49.if.end58_crit_edge, label %if.then51

if.end49.if.end58_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end58

if.then51:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #18
  %pull_stats = getelementptr inbounds %struct.efx_nic_type, ptr %5, i32 0, i32 24
  %8 = ptrtoint ptr %pull_stats to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pull_stats, align 8
  tail call void %9(ptr noundef %efx) #16
  %stats_lock = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 133
  tail call void @_raw_spin_lock_bh(ptr noundef %stats_lock) #16
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %type, align 4
  %update_stats54 = getelementptr inbounds %struct.efx_nic_type, ptr %11, i32 0, i32 21
  %12 = ptrtoint ptr %update_stats54 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %update_stats54, align 4
  %call55 = tail call i32 %13(ptr noundef %efx, ptr noundef null, ptr noundef null) #16
  tail call void @_raw_spin_unlock_bh(ptr noundef %stats_lock) #16
  %14 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %type, align 4
  %stop_stats = getelementptr inbounds %struct.efx_nic_type, ptr %15, i32 0, i32 25
  %16 = ptrtoint ptr %stop_stats to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %stop_stats, align 4
  tail call void %17(ptr noundef %efx) #16
  br label %if.end58

if.end58:                                         ; preds = %if.then51, %if.end49.if.end58_crit_edge
  tail call fastcc void @efx_stop_port(ptr noundef %efx)
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %18 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %net_dev, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end58.if.end86_crit_edge, label %land.rhs61

if.end58.if.end86_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end86

land.rhs61:                                       ; preds = %if.end58
  %22 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %state.i, align 4
  %24 = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.i117.not = icmp eq i32 %24, 0
  br i1 %tobool.i117.not, label %land.rhs61.if.end86_crit_edge, label %do.end80, !prof !284

land.rhs61.if.end86_crit_edge:                    ; preds = %land.rhs61
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end86

do.end80:                                         ; preds = %land.rhs61
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 594, i32 noundef 9, ptr noundef null) #16
  br label %if.end86

if.end86:                                         ; preds = %do.end80, %land.rhs61.if.end86_crit_edge, %if.end58.if.end86_crit_edge
  %25 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %net_dev, align 4
  tail call fastcc void @local_bh_disable() #16
  %27 = tail call i32 @llvm.read_register.i32(metadata !272) #16
  %and.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i to ptr
  %cpu1.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %cpu1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cpu1.i, align 4
  %tx_global_lock.i = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 108
  tail call void @_raw_spin_lock(ptr noundef %tx_global_lock.i) #16
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 104
  %31 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp13.not.i = icmp eq i32 %32, 0
  br i1 %cmp13.not.i, label %if.end86.netif_tx_disable.exit_crit_edge, label %for.body.lr.ph.i

if.end86.netif_tx_disable.exit_crit_edge:         ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #18
  br label %netif_tx_disable.exit

for.body.lr.ph.i:                                 ; preds = %if.end86
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 103
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %33 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %_tx.i.i, align 128
  %_xmit_lock.i.i = getelementptr %struct.netdev_queue, ptr %34, i32 %i.014.i, i32 10
  tail call void @_raw_spin_lock(ptr noundef %_xmit_lock.i.i) #16
  %xmit_lock_owner.i.i = getelementptr %struct.netdev_queue, ptr %34, i32 %i.014.i, i32 11
  %35 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile i32 %30, ptr %xmit_lock_owner.i.i, align 4
  %state.i.i = getelementptr %struct.netdev_queue, ptr %34, i32 %i.014.i, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #16
  %36 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile i32 -1, ptr %xmit_lock_owner.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %_xmit_lock.i.i) #16
  %inc.i = add nuw i32 %i.014.i, 1
  %37 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %38
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.netif_tx_disable.exit_crit_edge

for.body.i.netif_tx_disable.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %netif_tx_disable.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

netif_tx_disable.exit:                            ; preds = %for.body.i.netif_tx_disable.exit_crit_edge, %if.end86.netif_tx_disable.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %tx_global_lock.i) #16
  tail call fastcc void @local_bh_enable() #16
  %39 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %state, align 32
  %.off.i = add i32 %40, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 3
  br i1 %switch.i, label %if.then.i, label %netif_tx_disable.exit.do.body47.i_crit_edge

netif_tx_disable.exit.do.body47.i_crit_edge:      ; preds = %netif_tx_disable.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body47.i

if.then.i:                                        ; preds = %netif_tx_disable.exit
  %call.i = tail call i32 @rtnl_is_locked() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %if.then.i.do.body47.i_crit_edge

if.then.i.do.body47.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body47.i

land.rhs.i:                                       ; preds = %if.then.i
  %.b72.i = load i1, ptr @efx_stop_datapath.__already_done, align 1
  br i1 %.b72.i, label %land.rhs.i.do.body47.i_crit_edge, label %if.then14.i, !prof !284

land.rhs.i.do.body47.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body47.i

if.then14.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @efx_stop_datapath.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 445, i32 noundef 9, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.44, i32 noundef 445) #16
  br label %do.body47.i

do.body47.i:                                      ; preds = %if.then14.i, %land.rhs.i.do.body47.i_crit_edge, %if.then.i.do.body47.i_crit_edge, %netif_tx_disable.exit.do.body47.i_crit_edge
  %41 = ptrtoint ptr %port_enabled to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %port_enabled, align 8, !range !282
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool48.not.i = icmp eq i8 %42, 0
  br i1 %tobool48.not.i, label %efx_stop_datapath.exit, label %do.body56.i, !prof !284

do.body56.i:                                      ; preds = %do.body47.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/sfc/efx_common.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 446, 0\0A.popsection", ""() #16, !srcloc !285
  unreachable

efx_stop_datapath.exit:                           ; preds = %do.body47.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @efx_ptp_stop_datapath(ptr noundef %efx) #16
  tail call void @efx_stop_channels(ptr noundef %efx) #16
  br label %return

return:                                           ; preds = %efx_stop_datapath.exit, %do.end46.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_start_all(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 23
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 32
  %.off = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %if.then, label %entry.do.end65_crit_edge

entry.do.end65_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end65

if.then:                                          ; preds = %entry
  %call = tail call i32 @rtnl_is_locked() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %if.then.do.body47_crit_edge

if.then.do.body47_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body47

land.rhs:                                         ; preds = %if.then
  %.b111 = load i1, ptr @efx_start_all.__already_done, align 1
  br i1 %.b111, label %land.rhs.do.body47_crit_edge, label %if.then14, !prof !284

land.rhs.do.body47_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body47

if.then14:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @efx_start_all.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 530, i32 noundef 9, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.44, i32 noundef 530) #16
  br label %do.body47

do.body47:                                        ; preds = %if.then14, %land.rhs.do.body47_crit_edge, %if.then.do.body47_crit_edge
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pr = load i32, ptr %state, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr)
  %cmp49 = icmp eq i32 %.pr, 2
  br i1 %cmp49, label %do.body57, label %do.body47.do.end65_crit_edge, !prof !286

do.body47.do.end65_crit_edge:                     ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end65

do.body57:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/sfc/efx_common.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 531, 0\0A.popsection", ""() #16, !srcloc !287
  unreachable

do.end65:                                         ; preds = %do.body47.do.end65_crit_edge, %entry.do.end65_crit_edge
  %port_enabled = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 80
  %3 = ptrtoint ptr %port_enabled to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %port_enabled, align 8, !range !282
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool66.not = icmp eq i8 %4, 0
  br i1 %tobool66.not, label %lor.lhs.false67, label %do.end65.if.end85_crit_edge

do.end65.if.end85_crit_edge:                      ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end85

lor.lhs.false67:                                  ; preds = %do.end65
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %5 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %net_dev, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %lor.lhs.false67.if.end85_crit_edge, label %lor.lhs.false69

lor.lhs.false67.if.end85_crit_edge:               ; preds = %lor.lhs.false67
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end85

lor.lhs.false69:                                  ; preds = %lor.lhs.false67
  %reset_pending = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 24
  %9 = ptrtoint ptr %reset_pending to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reset_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool70.not = icmp eq i32 %10, 0
  br i1 %tobool70.not, label %if.end72, label %lor.lhs.false69.if.end85_crit_edge

lor.lhs.false69.if.end85_crit_edge:               ; preds = %lor.lhs.false69
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end85

if.end72:                                         ; preds = %lor.lhs.false69
  tail call fastcc void @efx_start_port(ptr noundef %efx)
  tail call fastcc void @efx_start_datapath(ptr noundef %efx)
  %type.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  %11 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %type.i, align 4
  %monitor.i = getelementptr inbounds %struct.efx_nic_type, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %monitor.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %monitor.i, align 8
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.end72.efx_start_monitor.exit_crit_edge, label %if.then.i

if.end72.efx_start_monitor.exit_crit_edge:        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #18
  br label %efx_start_monitor.exit

if.then.i:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #18
  %workqueue.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 9
  %15 = ptrtoint ptr %workqueue.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %workqueue.i, align 8
  %monitor_work.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 130
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %16, ptr noundef %monitor_work.i, i32 noundef 100) #16
  br label %efx_start_monitor.exit

efx_start_monitor.exit:                           ; preds = %if.then.i, %if.end72.efx_start_monitor.exit_crit_edge
  %mac_lock = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 78
  tail call void @mutex_lock_nested(ptr noundef %mac_lock, i32 noundef 0) #16
  %call73 = tail call zeroext i1 @efx_mcdi_phy_poll(ptr noundef %efx) #16
  br i1 %call73, label %if.then74, label %efx_start_monitor.exit.if.end75_crit_edge

efx_start_monitor.exit.if.end75_crit_edge:        ; preds = %efx_start_monitor.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end75

if.then74:                                        ; preds = %efx_start_monitor.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @efx_link_status_changed(ptr noundef %efx)
  br label %if.end75

if.end75:                                         ; preds = %if.then74, %efx_start_monitor.exit.if.end75_crit_edge
  tail call void @mutex_unlock(ptr noundef %mac_lock) #16
  %17 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %type.i, align 4
  %start_stats = getelementptr inbounds %struct.efx_nic_type, ptr %18, i32 0, i32 23
  %19 = ptrtoint ptr %start_stats to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %start_stats, align 4
  %tobool77.not = icmp eq ptr %20, null
  br i1 %tobool77.not, label %if.end75.if.end85_crit_edge, label %if.then78

if.end75.if.end85_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end85

if.then78:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #18
  tail call void %20(ptr noundef %efx) #16
  %21 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %type.i, align 4
  %pull_stats = getelementptr inbounds %struct.efx_nic_type, ptr %22, i32 0, i32 24
  %23 = ptrtoint ptr %pull_stats to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pull_stats, align 8
  tail call void %24(ptr noundef %efx) #16
  %stats_lock = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 133
  tail call void @_raw_spin_lock_bh(ptr noundef %stats_lock) #16
  %25 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %type.i, align 4
  %update_stats = getelementptr inbounds %struct.efx_nic_type, ptr %26, i32 0, i32 21
  %27 = ptrtoint ptr %update_stats to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %update_stats, align 4
  %call83 = tail call i32 %28(ptr noundef %efx, ptr noundef null, ptr noundef null) #16
  tail call void @_raw_spin_unlock_bh(ptr noundef %stats_lock) #16
  br label %if.end85

if.end85:                                         ; preds = %if.then78, %if.end75.if.end85_crit_edge, %lor.lhs.false69.if.end85_crit_edge, %lor.lhs.false67.if.end85_crit_edge, %do.end65.if.end85_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_start_monitor(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 4
  %monitor = getelementptr inbounds %struct.efx_nic_type, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %monitor to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %monitor, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %workqueue = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 9
  %4 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %workqueue, align 8
  %monitor_work = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 130
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %5, ptr noundef %monitor_work, i32 noundef 100) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @efx_link_clear_advertising(ptr nocapture noundef %efx) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %link_advertising = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 95
  %0 = call ptr @memset(ptr %link_advertising, i32 0, i32 12)
  %wanted_fc = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 101
  %1 = ptrtoint ptr %wanted_fc to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %wanted_fc, align 8
  %3 = and i8 %2, -4
  store i8 %3, ptr %wanted_fc, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @efx_link_set_wanted_fc(ptr nocapture noundef %efx, i8 noundef zeroext %wanted_fc) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %wanted_fc1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 101
  %0 = ptrtoint ptr %wanted_fc1 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %wanted_fc, ptr %wanted_fc1, align 8
  %link_advertising = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 95
  %1 = ptrtoint ptr %link_advertising to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %link_advertising, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end16_crit_edge, label %if.then

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16

if.then:                                          ; preds = %entry
  %conv = zext i8 %wanted_fc to i32
  %and = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  %and8 = and i32 %2, -24577
  %masksel = select i1 %tobool2.not, i32 0, i32 24576
  %storemerge = or i32 %and8, %masksel
  %3 = ptrtoint ptr %link_advertising to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %storemerge, ptr %link_advertising, align 4
  %and10 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.then.if.end16_crit_edge, label %if.then12

if.then.if.end16_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16

if.then12:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %xor = xor i32 %storemerge, 16384
  %4 = ptrtoint ptr %link_advertising to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %xor, ptr %link_advertising, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.then.if.end16_crit_edge, %entry.if.end16_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @efx_start_port(ptr noundef %efx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  %and = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body8_crit_edge, label %do.body1

entry.do.body8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body8

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_start_port.__UNIQUE_ID_ddebug654, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_start_port, %if.then5)) #16
          to label %do.body8 [label %if.then5], !srcloc !283

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #18
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %2 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_start_port.__UNIQUE_ID_ddebug654, ptr noundef %3, ptr noundef nonnull @.str.109) #16
  br label %do.body8

do.body8:                                         ; preds = %if.then5, %do.body1, %entry.do.body8_crit_edge
  %port_enabled = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 80
  %4 = ptrtoint ptr %port_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %port_enabled, align 8, !range !282
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool9.not = icmp eq i8 %5, 0
  br i1 %tobool9.not, label %do.end22, label %do.body17, !prof !284

do.body17:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/sfc/efx_common.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 486, 0\0A.popsection", ""() #16, !srcloc !288
  unreachable

do.end22:                                         ; preds = %do.body8
  %mac_lock = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 78
  tail call void @mutex_lock_nested(ptr noundef %mac_lock, i32 noundef 0) #16
  %6 = ptrtoint ptr %port_enabled to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %port_enabled, align 8
  %type.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  %7 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %type.i, align 4
  %reconfigure_mac.i = getelementptr inbounds %struct.efx_nic_type, ptr %8, i32 0, i32 29
  %9 = ptrtoint ptr %reconfigure_mac.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reconfigure_mac.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %do.end22.efx_mac_reconfigure.exit_crit_edge, label %if.then.i

do.end22.efx_mac_reconfigure.exit_crit_edge:      ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #18
  br label %efx_mac_reconfigure.exit

if.then.i:                                        ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #18
  %filter_sem.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 108
  tail call void @down_read(ptr noundef %filter_sem.i) #16
  %11 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %type.i, align 4
  %reconfigure_mac2.i = getelementptr inbounds %struct.efx_nic_type, ptr %12, i32 0, i32 29
  %13 = ptrtoint ptr %reconfigure_mac2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reconfigure_mac2.i, align 4
  %call.i = tail call i32 %14(ptr noundef %efx, i1 noundef zeroext false) #16
  tail call void @up_read(ptr noundef %filter_sem.i) #16
  br label %efx_mac_reconfigure.exit

efx_mac_reconfigure.exit:                         ; preds = %if.then.i, %do.end22.efx_mac_reconfigure.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mac_lock) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @efx_start_datapath(ptr noundef %efx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %0 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net_dev, align 4
  %features = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %features, align 16
  %rx_scatter = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 63
  %4 = ptrtoint ptr %rx_scatter to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rx_scatter, align 4, !range !282
  %rx_prefix_size = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 59
  %6 = ptrtoint ptr %rx_prefix_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_prefix_size, align 4
  %mtu = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 20
  %8 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mtu, align 4
  %add5 = add i32 %9, 45
  %and = and i32 %add5, -8
  %add6 = add i32 %and, %7
  %type = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %type, align 4
  %rx_buffer_padding = getelementptr inbounds %struct.efx_nic_type, ptr %11, i32 0, i32 128
  %12 = ptrtoint ptr %rx_buffer_padding to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_buffer_padding, align 4
  %add7 = add i32 %add6, %13
  %rx_dma_len = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 53
  %14 = ptrtoint ptr %rx_dma_len to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add7, ptr %rx_dma_len, align 4
  %rx_ip_align = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 52
  %15 = ptrtoint ptr %rx_ip_align to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rx_ip_align, align 16
  %add8 = add i32 %16, 256
  %add10 = add i32 %add8, %add7
  %add11 = add i32 %add10, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %add11)
  %cmp = icmp ult i32 %add11, 4097
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %always_rx_scatter = getelementptr inbounds %struct.efx_nic_type, ptr %11, i32 0, i32 130
  %17 = ptrtoint ptr %always_rx_scatter to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %always_rx_scatter, align 1, !range !282
  %19 = ptrtoint ptr %rx_scatter to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %rx_scatter, align 4
  br label %if.end28

if.else:                                          ; preds = %entry
  %can_rx_scatter = getelementptr inbounds %struct.efx_nic_type, ptr %11, i32 0, i32 129
  %20 = ptrtoint ptr %can_rx_scatter to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %can_rx_scatter, align 8, !range !282
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool17.not = icmp eq i8 %21, 0
  br i1 %tobool17.not, label %if.else25, label %do.end21

do.end21:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %22 = ptrtoint ptr %rx_scatter to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %rx_scatter, align 4
  %23 = ptrtoint ptr %rx_dma_len to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1792, ptr %rx_dma_len, align 4
  br label %if.end28

if.else25:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %24 = ptrtoint ptr %rx_scatter to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %rx_scatter, align 4
  %sub.i = add nuw i32 %add10, 255
  %shr.i = lshr i32 %sub.i, 12
  %25 = tail call i32 @llvm.ctlz.i32(i32 %shr.i, i1 true) #16, !range !289
  %sub.i.i = sub nuw nsw i32 32, %25
  br label %if.end28

if.end28:                                         ; preds = %if.else25, %do.end21, %if.then
  %.sink = phi i32 [ 0, %do.end21 ], [ 0, %if.then ], [ %sub.i.i, %if.else25 ]
  %rx_buffer_order24 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 54
  %26 = ptrtoint ptr %rx_buffer_order24 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %.sink, ptr %rx_buffer_order24, align 8
  tail call void @efx_rx_config_page_split(ptr noundef %efx) #16
  %rx_buffer_order29 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 54
  %27 = ptrtoint ptr %rx_buffer_order29 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rx_buffer_order29, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool30.not = icmp eq i32 %28, 0
  %msg_enable54 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %29 = ptrtoint ptr %msg_enable54 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %msg_enable54, align 4
  %and55 = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool30.not, label %do.body53, label %do.body32

do.body32:                                        ; preds = %if.end28
  br i1 %tobool56.not, label %do.body32.if.end80_crit_edge, label %do.body36

do.body32.if.end80_crit_edge:                     ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end80

do.body36:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_start_datapath.__UNIQUE_ID_ddebug652, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_start_datapath, %if.then42)) #16
          to label %if.end80 [label %if.then42], !srcloc !283

if.then42:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #18
  %31 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %net_dev, align 4
  %33 = ptrtoint ptr %rx_dma_len to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rx_dma_len, align 4
  %35 = ptrtoint ptr %rx_buffer_order29 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rx_buffer_order29, align 8
  %rx_pages_per_batch = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 58
  %37 = ptrtoint ptr %rx_pages_per_batch to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rx_pages_per_batch, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_start_datapath.__UNIQUE_ID_ddebug652, ptr noundef %32, ptr noundef nonnull @.str.111, i32 noundef %34, i32 noundef %36, i32 noundef %38) #16
  br label %if.end80

do.body53:                                        ; preds = %if.end28
  br i1 %tobool56.not, label %do.body53.if.end80_crit_edge, label %do.body58

do.body53.if.end80_crit_edge:                     ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end80

do.body58:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_start_datapath.__UNIQUE_ID_ddebug653, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_start_datapath, %if.then70)) #16
          to label %if.end80 [label %if.then70], !srcloc !283

if.then70:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #18
  %39 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %net_dev, align 4
  %41 = ptrtoint ptr %rx_dma_len to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rx_dma_len, align 4
  %rx_page_buf_step = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 56
  %43 = ptrtoint ptr %rx_page_buf_step to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rx_page_buf_step, align 32
  %rx_bufs_per_page = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 57
  %45 = ptrtoint ptr %rx_bufs_per_page to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rx_bufs_per_page, align 4
  %rx_pages_per_batch73 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 58
  %47 = ptrtoint ptr %rx_pages_per_batch73 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rx_pages_per_batch73, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_start_datapath.__UNIQUE_ID_ddebug653, ptr noundef %40, ptr noundef nonnull @.str.112, i32 noundef %42, i32 noundef %44, i32 noundef %46, i32 noundef %48) #16
  br label %if.end80

if.end80:                                         ; preds = %if.then70, %do.body58, %do.body53.if.end80_crit_edge, %if.then42, %do.body36, %do.body32.if.end80_crit_edge
  %49 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %net_dev, align 4
  %features82 = getelementptr inbounds %struct.net_device, ptr %50, i32 0, i32 23
  %51 = ptrtoint ptr %features82 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %features82, align 16
  %hw_features = getelementptr inbounds %struct.net_device, ptr %50, i32 0, i32 24
  %53 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %hw_features, align 8
  %or = or i64 %54, %52
  store i64 %or, ptr %hw_features, align 8
  %fixed_features = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 84
  %55 = ptrtoint ptr %fixed_features to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %fixed_features, align 128
  %neg = xor i64 %56, -1
  %57 = load ptr, ptr %net_dev, align 4
  %hw_features85 = getelementptr inbounds %struct.net_device, ptr %57, i32 0, i32 24
  %58 = ptrtoint ptr %hw_features85 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %hw_features85, align 8
  %and86 = and i64 %59, %neg
  store i64 %and86, ptr %hw_features85, align 8
  %60 = load i64, ptr %fixed_features, align 128
  %61 = load ptr, ptr %net_dev, align 4
  %features89 = getelementptr inbounds %struct.net_device, ptr %61, i32 0, i32 23
  %62 = ptrtoint ptr %features89 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %features89, align 16
  %or90 = or i64 %63, %60
  store i64 %or90, ptr %features89, align 16
  %64 = load ptr, ptr %net_dev, align 4
  %features92 = getelementptr inbounds %struct.net_device, ptr %64, i32 0, i32 23
  %65 = ptrtoint ptr %features92 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %features92, align 16
  call void @__sanitizer_cov_trace_cmp8(i64 %66, i64 %3)
  %cmp93.not = icmp eq i64 %66, %3
  br i1 %cmp93.not, label %if.end80.if.end96_crit_edge, label %if.then94

if.end80.if.end96_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end96

if.then94:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @netdev_features_change(ptr noundef %64) #16
  br label %if.end96

if.end96:                                         ; preds = %if.then94, %if.end80.if.end96_crit_edge
  %67 = ptrtoint ptr %rx_scatter to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %rx_scatter, align 4, !range !282
  call void @__sanitizer_cov_trace_cmp1(i8 %68, i8 %5)
  %cmp101.not = icmp eq i8 %68, %5
  br i1 %cmp101.not, label %if.end96.if.end108_crit_edge, label %land.lhs.true

if.end96.if.end108_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end108

land.lhs.true:                                    ; preds = %if.end96
  %69 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %type, align 4
  %filter_update_rx_scatter = getelementptr inbounds %struct.efx_nic_type, ptr %70, i32 0, i32 76
  %71 = ptrtoint ptr %filter_update_rx_scatter to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %filter_update_rx_scatter, align 8
  %tobool104.not = icmp eq ptr %72, null
  br i1 %tobool104.not, label %land.lhs.true.if.end108_crit_edge, label %if.then105

land.lhs.true.if.end108_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end108

if.then105:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  tail call void %72(ptr noundef %efx) #16
  br label %if.end108

if.end108:                                        ; preds = %if.then105, %land.lhs.true.if.end108_crit_edge, %if.end96.if.end108_crit_edge
  %txq_entries = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 32
  %73 = ptrtoint ptr %txq_entries to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %txq_entries, align 64
  %call109 = tail call i32 @efx_tx_max_skb_descs(ptr noundef %efx) #16
  %sub = sub i32 %74, %call109
  %txq_stop_thresh = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 33
  %75 = ptrtoint ptr %txq_stop_thresh to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %sub, ptr %txq_stop_thresh, align 4
  %div167 = lshr i32 %sub, 1
  %txq_wake_thresh = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 34
  %76 = ptrtoint ptr %txq_wake_thresh to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %div167, ptr %txq_wake_thresh, align 8
  tail call void @efx_start_channels(ptr noundef %efx) #16
  tail call void @efx_ptp_start_datapath(ptr noundef %efx) #16
  %77 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %net_dev, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %78, i32 0, i32 6
  %79 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %state.i, align 4
  %81 = and i32 %80, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool.i.not = icmp eq i32 %81, 0
  br i1 %tobool.i.not, label %if.end108.if.end115_crit_edge, label %if.then113

if.end108.if.end115_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end115

if.then113:                                       ; preds = %if.end108
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %78, i32 0, i32 104
  %82 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp4.not.i = icmp eq i32 %83, 0
  br i1 %cmp4.not.i, label %if.then113.if.end115_crit_edge, label %for.body.lr.ph.i

if.then113.if.end115_crit_edge:                   ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end115

for.body.lr.ph.i:                                 ; preds = %if.then113
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %78, i32 0, i32 103
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.05.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %84 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %_tx.i.i, align 128
  %arrayidx.i.i = getelementptr %struct.netdev_queue, ptr %85, i32 %i.05.i
  tail call void @netif_tx_wake_queue(ptr noundef %arrayidx.i.i) #16
  %inc.i = add nuw i32 %i.05.i, 1
  %86 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %87
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end115_crit_edge

for.body.i.if.end115_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end115

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

if.end115:                                        ; preds = %for.body.i.if.end115_crit_edge, %if.then113.if.end115_crit_edge, %if.end108.if.end115_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @efx_mcdi_phy_poll(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @efx_stop_port(ptr noundef %efx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body8_crit_edge, label %do.body1

entry.do.body8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body8

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_stop_port.__UNIQUE_ID_ddebug655, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_stop_port, %if.then5)) #16
          to label %do.body8 [label %if.then5], !srcloc !283

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #18
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %2 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_stop_port.__UNIQUE_ID_ddebug655, ptr noundef %3, ptr noundef nonnull @.str.114) #16
  br label %do.body8

do.body8:                                         ; preds = %if.then5, %do.body1, %entry.do.body8_crit_edge
  %state = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 23
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 32
  %.off = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %if.then14, label %do.body8.do.end69_crit_edge

do.body8.do.end69_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end69

if.then14:                                        ; preds = %do.body8
  %call15 = tail call i32 @rtnl_is_locked() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.rhs, label %if.then14.do.end69_crit_edge

if.then14.do.end69_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end69

land.rhs:                                         ; preds = %if.then14
  %.b89 = load i1, ptr @efx_stop_port.__already_done, align 1
  br i1 %.b89, label %land.rhs.do.end69_crit_edge, label %if.then34, !prof !284

land.rhs.do.end69_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end69

if.then34:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @efx_stop_port.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 506, i32 noundef 9, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.44, i32 noundef 506) #16
  br label %do.end69

do.end69:                                         ; preds = %if.then34, %land.rhs.do.end69_crit_edge, %if.then14.do.end69_crit_edge, %do.body8.do.end69_crit_edge
  %mac_lock = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 78
  tail call void @mutex_lock_nested(ptr noundef %mac_lock, i32 noundef 0) #16
  %port_enabled = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 80
  %6 = ptrtoint ptr %port_enabled to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %port_enabled, align 8
  tail call void @mutex_unlock(ptr noundef %mac_lock) #16
  %net_dev71 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %7 = ptrtoint ptr %net_dev71 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %net_dev71, align 4
  %nested_level.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 73
  %9 = ptrtoint ptr %nested_level.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %nested_level.i, align 1
  tail call fastcc void @local_bh_disable() #16
  %addr_list_lock.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 63
  %conv.i = zext i8 %10 to i32
  tail call void @_raw_spin_lock_nested(ptr noundef %addr_list_lock.i, i32 noundef %conv.i) #16
  %11 = ptrtoint ptr %net_dev71 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %net_dev71, align 4
  %addr_list_lock.i90 = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 63
  tail call void @_raw_spin_unlock_bh(ptr noundef %addr_list_lock.i90) #16
  %monitor_work = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 130
  %call73 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %monitor_work) #16
  tail call void @efx_selftest_async_cancel(ptr noundef %efx) #16
  %mac_work = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 79
  %call74 = tail call zeroext i1 @cancel_work_sync(ptr noundef %mac_work) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_net_stats(ptr noundef %net_dev, ptr noundef %stats) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %stats_lock = getelementptr i8, ptr %net_dev, i32 6420
  tail call void @_raw_spin_lock_bh(ptr noundef %stats_lock) #16
  %type.i = getelementptr i8, ptr %net_dev, i32 2348
  %0 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type.i, align 4
  %update_stats_atomic.i = getelementptr inbounds %struct.efx_nic_type, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %update_stats_atomic.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %update_stats_atomic.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.efx_nic_update_stats_atomic.exit_crit_edge

entry.efx_nic_update_stats_atomic.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %efx_nic_update_stats_atomic.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %update_stats.i = getelementptr inbounds %struct.efx_nic_type, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %update_stats.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %update_stats.i, align 4
  br label %efx_nic_update_stats_atomic.exit

efx_nic_update_stats_atomic.exit:                 ; preds = %if.end.i, %entry.efx_nic_update_stats_atomic.exit_crit_edge
  %.sink.i = phi ptr [ %5, %if.end.i ], [ %3, %entry.efx_nic_update_stats_atomic.exit_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %call4.i = tail call i32 %.sink.i(ptr noundef %add.ptr.i, ptr noundef null, ptr noundef %stats) #16
  tail call void @_raw_spin_unlock_bh(ptr noundef %stats_lock) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__efx_reconfigure_port(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_lock = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 78
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %mac_lock) #16
  br i1 %call, label %entry.if.end_crit_edge, label %do.end, !prof !284

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 622, i32 noundef 9, ptr noundef null) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %phy_mode20 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 94
  %0 = ptrtoint ptr %phy_mode20 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phy_mode20, align 16
  %loopback_mode = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 104
  %2 = ptrtoint ptr %loopback_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %loopback_mode, align 4
  %and25 = and i32 %1, -2
  %4 = lshr i32 66600958, %3
  %5 = and i32 %4, 1
  %storemerge = or i32 %5, %and25
  store i32 %storemerge, ptr %phy_mode20, align 16
  %type = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %type, align 4
  %reconfigure_port = getelementptr inbounds %struct.efx_nic_type, ptr %7, i32 0, i32 27
  %8 = ptrtoint ptr %reconfigure_port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reconfigure_port, align 4
  %tobool27.not = icmp eq ptr %9, null
  br i1 %tobool27.not, label %if.end.if.end36_crit_edge, label %if.end32

if.end.if.end36_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end36

if.end32:                                         ; preds = %if.end
  %call31 = tail call i32 %9(ptr noundef %efx) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool33.not = icmp eq i32 %call31, 0
  br i1 %tobool33.not, label %if.end32.if.end36_crit_edge, label %if.then34

if.end32.if.end36_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end36

if.then34:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #18
  %10 = ptrtoint ptr %phy_mode20 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %1, ptr %phy_mode20, align 16
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end32.if.end36_crit_edge, %if.end.if.end36_crit_edge
  %rc.049 = phi i32 [ %call31, %if.then34 ], [ 0, %if.end32.if.end36_crit_edge ], [ 0, %if.end.if.end36_crit_edge ]
  ret i32 %rc.049
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_reconfigure_port(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 23
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 32
  %.off = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %if.then, label %entry.do.end46_crit_edge

entry.do.end46_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end46

if.then:                                          ; preds = %entry
  %call = tail call i32 @rtnl_is_locked() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %if.then.do.end46_crit_edge

if.then.do.end46_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end46

land.rhs:                                         ; preds = %if.then
  %.b56 = load i1, ptr @efx_reconfigure_port.__already_done, align 1
  br i1 %.b56, label %land.rhs.do.end46_crit_edge, label %if.then14, !prof !284

land.rhs.do.end46_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end46

if.then14:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @efx_reconfigure_port.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 647, i32 noundef 9, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.44, i32 noundef 647) #16
  br label %do.end46

do.end46:                                         ; preds = %if.then14, %land.rhs.do.end46_crit_edge, %if.then.do.end46_crit_edge, %entry.do.end46_crit_edge
  %mac_lock = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 78
  tail call void @mutex_lock_nested(ptr noundef %mac_lock, i32 noundef 0) #16
  %call.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %mac_lock) #16
  br i1 %call.i, label %do.end46.if.end.i_crit_edge, label %do.end.i, !prof !284

do.end46.if.end.i_crit_edge:                      ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

do.end.i:                                         ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 622, i32 noundef 9, ptr noundef null) #16
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %do.end46.if.end.i_crit_edge
  %phy_mode20.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 94
  %2 = ptrtoint ptr %phy_mode20.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phy_mode20.i, align 16
  %loopback_mode.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 104
  %4 = ptrtoint ptr %loopback_mode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %loopback_mode.i, align 4
  %and25.i = and i32 %3, -2
  %6 = lshr i32 66600958, %5
  %7 = and i32 %6, 1
  %storemerge.i = or i32 %7, %and25.i
  store i32 %storemerge.i, ptr %phy_mode20.i, align 16
  %type.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  %8 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %type.i, align 4
  %reconfigure_port.i = getelementptr inbounds %struct.efx_nic_type, ptr %9, i32 0, i32 27
  %10 = ptrtoint ptr %reconfigure_port.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reconfigure_port.i, align 4
  %tobool27.not.i = icmp eq ptr %11, null
  br i1 %tobool27.not.i, label %if.end.i.__efx_reconfigure_port.exit_crit_edge, label %if.end32.i

if.end.i.__efx_reconfigure_port.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__efx_reconfigure_port.exit

if.end32.i:                                       ; preds = %if.end.i
  %call31.i = tail call i32 %11(ptr noundef %efx) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool33.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool33.not.i, label %if.end32.i.__efx_reconfigure_port.exit_crit_edge, label %if.then34.i

if.end32.i.__efx_reconfigure_port.exit_crit_edge: ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__efx_reconfigure_port.exit

if.then34.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #18
  %12 = ptrtoint ptr %phy_mode20.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %3, ptr %phy_mode20.i, align 16
  br label %__efx_reconfigure_port.exit

__efx_reconfigure_port.exit:                      ; preds = %if.then34.i, %if.end32.i.__efx_reconfigure_port.exit_crit_edge, %if.end.i.__efx_reconfigure_port.exit_crit_edge
  %rc.049.i = phi i32 [ %call31.i, %if.then34.i ], [ 0, %if.end32.i.__efx_reconfigure_port.exit_crit_edge ], [ 0, %if.end.i.__efx_reconfigure_port.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mac_lock) #16
  ret i32 %rc.049.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @efx_try_recovery(ptr nocapture readnone %efx) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_reset_down(ptr noundef %efx, i32 noundef %method) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 23
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 32
  %.off = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %if.then, label %entry.do.end46_crit_edge

entry.do.end46_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end46

if.then:                                          ; preds = %entry
  %call = tail call i32 @rtnl_is_locked() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %if.then.do.end46_crit_edge

if.then.do.end46_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end46

land.rhs:                                         ; preds = %if.then
  %.b64 = load i1, ptr @efx_reset_down.__already_done, align 1
  br i1 %.b64, label %land.rhs.do.end46_crit_edge, label %if.then14, !prof !284

land.rhs.do.end46_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end46

if.then14:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @efx_reset_down.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 709, i32 noundef 9, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.44, i32 noundef 709) #16
  br label %do.end46

do.end46:                                         ; preds = %if.then14, %land.rhs.do.end46_crit_edge, %if.then.do.end46_crit_edge, %entry.do.end46_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %method)
  %cmp47 = icmp eq i32 %method, 14
  br i1 %cmp47, label %if.then48, label %do.end46.if.end49_crit_edge

do.end46.if.end49_crit_edge:                      ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end49

if.then48:                                        ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #18
  %type = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type, align 4
  %prepare_flr = getelementptr inbounds %struct.efx_nic_type, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %prepare_flr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prepare_flr, align 8
  tail call void %5(ptr noundef %efx) #16
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %do.end46.if.end49_crit_edge
  tail call void @efx_stop_all(ptr noundef %efx)
  tail call void @efx_disable_interrupts(ptr noundef %efx) #16
  %mac_lock = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 78
  tail call void @mutex_lock_nested(ptr noundef %mac_lock, i32 noundef 0) #16
  %filter_sem = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 108
  tail call void @down_write(ptr noundef %filter_sem) #16
  %rss_lock = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 65
  tail call void @mutex_lock_nested(ptr noundef %rss_lock, i32 noundef 0) #16
  %type50 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  %6 = ptrtoint ptr %type50 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %type50, align 4
  %fini = getelementptr inbounds %struct.efx_nic_type, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %fini to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fini, align 4
  tail call void %9(ptr noundef %efx) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_disable_interrupts(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_watchdog(ptr noundef %net_dev, i32 noundef %txqueue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %net_dev, i32 2460
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  %and = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %net_dev1 = getelementptr i8, ptr %net_dev, i32 4732
  %2 = ptrtoint ptr %net_dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net_dev1, align 4
  %port_enabled = getelementptr i8, ptr %net_dev, i32 4728
  %4 = ptrtoint ptr %port_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %port_enabled, align 8, !range !282
  %6 = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.56, i32 noundef %6) #19
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  tail call void @efx_schedule_reset(ptr noundef %add.ptr.i, i32 noundef 9)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_schedule_reset(ptr noundef %efx, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 23
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp eq i32 %1, 3
  br i1 %cmp, label %do.body, label %if.end11

do.body:                                          ; preds = %entry
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.body2

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.body2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_schedule_reset.__UNIQUE_ID_ddebug658, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_schedule_reset, %if.then6)) #16
          to label %cleanup [label %if.then6], !srcloc !283

if.then6:                                         ; preds = %do.body2
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %4 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net_dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %type)
  %cmp7 = icmp ult i32 %type, 15
  br i1 %cmp7, label %cond.true, label %if.then6.cond.end_crit_edge

if.then6.cond.end_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end

cond.true:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx = getelementptr [15 x ptr], ptr @efx_reset_type_names, i32 0, i32 %type
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then6.cond.end_crit_edge
  %cond = phi ptr [ %7, %cond.true ], [ @.str.61, %if.then6.cond.end_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_schedule_reset.__UNIQUE_ID_ddebug658, ptr noundef %5, ptr noundef nonnull @.str.67, ptr noundef %cond) #16
  br label %cleanup

if.end11:                                         ; preds = %entry
  %8 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %sw.default [
    i32 0, label %if.end11.sw.bb_crit_edge
    i32 2, label %if.end11.sw.bb_crit_edge126
    i32 1, label %if.end11.sw.bb_crit_edge127
    i32 3, label %if.end11.sw.bb_crit_edge128
    i32 7, label %if.end11.sw.bb_crit_edge129
    i32 4, label %if.end11.sw.bb_crit_edge130
    i32 5, label %if.end11.sw.bb_crit_edge131
    i32 6, label %if.end11.sw.bb_crit_edge132
    i32 14, label %if.end11.sw.bb_crit_edge133
  ]

if.end11.sw.bb_crit_edge133:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb

if.end11.sw.bb_crit_edge132:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb

if.end11.sw.bb_crit_edge131:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb

if.end11.sw.bb_crit_edge130:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb

if.end11.sw.bb_crit_edge129:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb

if.end11.sw.bb_crit_edge128:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb

if.end11.sw.bb_crit_edge127:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb

if.end11.sw.bb_crit_edge126:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb

if.end11.sw.bb_crit_edge:                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb

sw.bb:                                            ; preds = %if.end11.sw.bb_crit_edge, %if.end11.sw.bb_crit_edge126, %if.end11.sw.bb_crit_edge127, %if.end11.sw.bb_crit_edge128, %if.end11.sw.bb_crit_edge129, %if.end11.sw.bb_crit_edge130, %if.end11.sw.bb_crit_edge131, %if.end11.sw.bb_crit_edge132, %if.end11.sw.bb_crit_edge133
  %msg_enable13 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %9 = ptrtoint ptr %msg_enable13 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %msg_enable13, align 4
  %and14 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %sw.bb.sw.epilog_crit_edge, label %do.body17

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

do.body17:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_schedule_reset.__UNIQUE_ID_ddebug659, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_schedule_reset, %cond.end35)) #16
          to label %sw.epilog [label %cond.end35], !srcloc !283

cond.end35:                                       ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #18
  %net_dev30 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %11 = ptrtoint ptr %net_dev30 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %net_dev30, align 4
  %arrayidx33 = getelementptr [15 x ptr], ptr @efx_reset_type_names, i32 0, i32 %type
  %13 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx33, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_schedule_reset.__UNIQUE_ID_ddebug659, ptr noundef %12, ptr noundef nonnull @.str.68, ptr noundef %14) #16
  br label %sw.epilog

sw.default:                                       ; preds = %if.end11
  %type43 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  %15 = ptrtoint ptr %type43 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %type43, align 4
  %map_reset_reason = getelementptr inbounds %struct.efx_nic_type, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %map_reset_reason to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %map_reset_reason, align 4
  %call44 = tail call i32 %18(i32 noundef %type) #16
  %msg_enable46 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %19 = ptrtoint ptr %msg_enable46 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %msg_enable46, align 4
  %and47 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %sw.default.sw.epilog_crit_edge, label %do.body50

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

do.body50:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_schedule_reset.__UNIQUE_ID_ddebug660, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_schedule_reset, %if.then62)) #16
          to label %sw.epilog [label %if.then62], !srcloc !283

if.then62:                                        ; preds = %do.body50
  %net_dev63 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %21 = ptrtoint ptr %net_dev63 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %net_dev63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %call44)
  %cmp64 = icmp ult i32 %call44, 15
  br i1 %cmp64, label %cond.true65, label %if.then62.cond.end68_crit_edge

if.then62.cond.end68_crit_edge:                   ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end68

cond.true65:                                      ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx66 = getelementptr [15 x ptr], ptr @efx_reset_type_names, i32 0, i32 %call44
  %23 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx66, align 4
  br label %cond.end68

cond.end68:                                       ; preds = %cond.true65, %if.then62.cond.end68_crit_edge
  %cond69 = phi ptr [ %24, %cond.true65 ], [ @.str.61, %if.then62.cond.end68_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %type)
  %cmp70 = icmp ult i32 %type, 15
  br i1 %cmp70, label %cond.true71, label %cond.end68.cond.end74_crit_edge

cond.end68.cond.end74_crit_edge:                  ; preds = %cond.end68
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end74

cond.true71:                                      ; preds = %cond.end68
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx72 = getelementptr [15 x ptr], ptr @efx_reset_type_names, i32 0, i32 %type
  %25 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx72, align 4
  br label %cond.end74

cond.end74:                                       ; preds = %cond.true71, %cond.end68.cond.end74_crit_edge
  %cond75 = phi ptr [ %26, %cond.true71 ], [ @.str.61, %cond.end68.cond.end74_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_schedule_reset.__UNIQUE_ID_ddebug660, ptr noundef %22, ptr noundef nonnull @.str.69, ptr noundef %cond69, ptr noundef %cond75) #16
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.end74, %do.body50, %sw.default.sw.epilog_crit_edge, %cond.end35, %do.body17, %sw.bb.sw.epilog_crit_edge
  %method.0 = phi i32 [ %call44, %cond.end74 ], [ %call44, %sw.default.sw.epilog_crit_edge ], [ %type, %cond.end35 ], [ %type, %sw.bb.sw.epilog_crit_edge ], [ %type, %do.body17 ], [ %call44, %do.body50 ]
  %reset_pending = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 24
  tail call void @_set_bit(i32 noundef %method.0, ptr noundef %reset_pending) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !290
  %27 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %state, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp93.not = icmp eq i32 %28, 1
  br i1 %cmp93.not, label %if.end95, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end95:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @efx_mcdi_mode_poll(ptr noundef %efx) #16
  %29 = load ptr, ptr @reset_workqueue, align 4
  %reset_work.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %29, ptr noundef %reset_work.i) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end95, %sw.epilog.cleanup_crit_edge, %cond.end, %do.body2, %do.body.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_reset_up(ptr noundef %efx, i32 noundef %method, i1 noundef zeroext %ok) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 23
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 32
  %.off = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %if.then, label %entry.do.end47_crit_edge

entry.do.end47_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end47

if.then:                                          ; preds = %entry
  %call = tail call i32 @rtnl_is_locked() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %if.then.do.end47_crit_edge

if.then.do.end47_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end47

land.rhs:                                         ; preds = %if.then
  %.b177 = load i1, ptr @efx_reset_up.__already_done, align 1
  br i1 %.b177, label %land.rhs.do.end47_crit_edge, label %if.then15, !prof !284

land.rhs.do.end47_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end47

if.then15:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @efx_reset_up.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 745, i32 noundef 9, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.44, i32 noundef 745) #16
  br label %do.end47

do.end47:                                         ; preds = %if.then15, %land.rhs.do.end47_crit_edge, %if.then.do.end47_crit_edge, %entry.do.end47_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %method)
  %cmp48 = icmp eq i32 %method, 14
  br i1 %cmp48, label %if.then49, label %do.end47.if.end50_crit_edge

do.end47.if.end50_crit_edge:                      ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end50

if.then49:                                        ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #18
  %type = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type, align 4
  %finish_flr = getelementptr inbounds %struct.efx_nic_type, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %finish_flr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %finish_flr, align 4
  tail call void %5(ptr noundef %efx) #16
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %do.end47.if.end50_crit_edge
  %type51 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  %6 = ptrtoint ptr %type51 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %type51, align 4
  %init = getelementptr inbounds %struct.efx_nic_type, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init, align 4
  %call52 = tail call i32 %9(ptr noundef %efx) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end61, label %do.body55

do.body55:                                        ; preds = %if.end50
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %10 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %msg_enable, align 4
  %and = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool56.not = icmp eq i32 %and, 0
  br i1 %tobool56.not, label %do.body55.fail_crit_edge, label %if.then57

do.body55.fail_crit_edge:                         ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #18
  br label %fail

if.then57:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #18
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %12 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %13, ptr noundef nonnull @.str.57) #19
  br label %fail

if.end61:                                         ; preds = %if.end50
  br i1 %ok, label %if.end64, label %if.end61.fail_crit_edge

if.end61.fail_crit_edge:                          ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #18
  br label %fail

if.end64:                                         ; preds = %if.end61
  %port_initialized = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 82
  %14 = ptrtoint ptr %port_initialized to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %port_initialized, align 2, !range !282
  %.fr = freeze i8 %15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.fr)
  %tobool65.not = icmp eq i8 %.fr, 0
  br i1 %tobool65.not, label %if.end64.if.end85_crit_edge, label %switch.early.test

if.end64.if.end85_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end85

switch.early.test:                                ; preds = %if.end64
  %16 = zext i32 %method to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.122)
  switch i32 %method, label %if.then69 [
    i32 5, label %switch.early.test.if.end85_crit_edge
    i32 0, label %switch.early.test.if.end85_crit_edge179
  ]

switch.early.test.if.end85_crit_edge179:          ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end85

switch.early.test.if.end85_crit_edge:             ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end85

if.then69:                                        ; preds = %switch.early.test
  %call70 = tail call i32 @efx_mcdi_port_reconfigure(ptr noundef %efx) #16
  %17 = zext i32 %call70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.123)
  switch i32 %call70, label %do.body75 [
    i32 0, label %if.then69.if.end85_crit_edge
    i32 -1, label %if.then69.if.end85_crit_edge180
  ]

if.then69.if.end85_crit_edge180:                  ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end85

if.then69.if.end85_crit_edge:                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end85

do.body75:                                        ; preds = %if.then69
  %msg_enable76 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %18 = ptrtoint ptr %msg_enable76 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %msg_enable76, align 4
  %and77 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %do.body75.if.end85_crit_edge, label %if.then79

do.body75.if.end85_crit_edge:                     ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end85

if.then79:                                        ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #18
  %net_dev80 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %20 = ptrtoint ptr %net_dev80 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %net_dev80, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %21, ptr noundef nonnull @.str.58) #19
  br label %if.end85

if.end85:                                         ; preds = %if.then79, %do.body75.if.end85_crit_edge, %if.then69.if.end85_crit_edge, %if.then69.if.end85_crit_edge180, %switch.early.test.if.end85_crit_edge, %switch.early.test.if.end85_crit_edge179, %if.end64.if.end85_crit_edge
  %call86 = tail call i32 @efx_enable_interrupts(ptr noundef %efx) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end89, label %if.end85.fail_crit_edge

if.end85.fail_crit_edge:                          ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #18
  br label %fail

if.end89:                                         ; preds = %if.end85
  %22 = ptrtoint ptr %type51 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %type51, align 4
  %vswitching_restore = getelementptr inbounds %struct.efx_nic_type, ptr %23, i32 0, i32 109
  %24 = ptrtoint ptr %vswitching_restore to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vswitching_restore, align 4
  %call91 = tail call i32 %25(ptr noundef %efx) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end89.if.end103_crit_edge, label %do.body94

if.end89.if.end103_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end103

do.body94:                                        ; preds = %if.end89
  %msg_enable95 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %26 = ptrtoint ptr %msg_enable95 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %msg_enable95, align 4
  %and96 = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %do.body94.if.end103_crit_edge, label %if.then98

do.body94.if.end103_crit_edge:                    ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end103

if.then98:                                        ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #18
  %net_dev99 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %28 = ptrtoint ptr %net_dev99 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %net_dev99, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %29, ptr noundef nonnull @.str.59, i32 noundef %call91) #19
  br label %if.end103

if.end103:                                        ; preds = %if.then98, %do.body94.if.end103_crit_edge, %if.end89.if.end103_crit_edge
  %30 = ptrtoint ptr %type51 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %type51, align 4
  %rx_restore_rss_contexts = getelementptr inbounds %struct.efx_nic_type, ptr %31, i32 0, i32 58
  %32 = ptrtoint ptr %rx_restore_rss_contexts to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rx_restore_rss_contexts, align 8
  %tobool105.not = icmp eq ptr %33, null
  br i1 %tobool105.not, label %if.end103.if.end109_crit_edge, label %if.then106

if.end103.if.end109_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end109

if.then106:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #18
  tail call void %33(ptr noundef %efx) #16
  br label %if.end109

if.end109:                                        ; preds = %if.then106, %if.end103.if.end109_crit_edge
  %rss_lock = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 65
  tail call void @mutex_unlock(ptr noundef %rss_lock) #16
  %34 = ptrtoint ptr %type51 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %type51, align 4
  %filter_table_restore = getelementptr inbounds %struct.efx_nic_type, ptr %35, i32 0, i32 74
  %36 = ptrtoint ptr %filter_table_restore to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %filter_table_restore, align 8
  tail call void %37(ptr noundef %efx) #16
  %filter_sem = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 108
  tail call void @up_write(ptr noundef %filter_sem) #16
  %38 = ptrtoint ptr %type51 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %type51, align 4
  %sriov_reset = getelementptr inbounds %struct.efx_nic_type, ptr %39, i32 0, i32 101
  %40 = ptrtoint ptr %sriov_reset to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sriov_reset, align 4
  %tobool112.not = icmp eq ptr %41, null
  br i1 %tobool112.not, label %if.end109.if.end116_crit_edge, label %if.then113

if.end109.if.end116_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end116

if.then113:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #18
  tail call void %41(ptr noundef %efx) #16
  br label %if.end116

if.end116:                                        ; preds = %if.then113, %if.end109.if.end116_crit_edge
  %mac_lock = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 78
  tail call void @mutex_unlock(ptr noundef %mac_lock) #16
  tail call void @efx_start_all(ptr noundef %efx)
  %42 = ptrtoint ptr %type51 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %type51, align 4
  %udp_tnl_push_ports = getelementptr inbounds %struct.efx_nic_type, ptr %43, i32 0, i32 114
  %44 = ptrtoint ptr %udp_tnl_push_ports to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %udp_tnl_push_ports, align 8
  %tobool118.not = icmp eq ptr %45, null
  br i1 %tobool118.not, label %if.end116.cleanup_crit_edge, label %if.then119

if.end116.cleanup_crit_edge:                      ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then119:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #18
  %call122 = tail call i32 %45(ptr noundef %efx) #16
  br label %cleanup

fail:                                             ; preds = %if.end85.fail_crit_edge, %if.end61.fail_crit_edge, %if.then57, %do.body55.fail_crit_edge
  %rc.0 = phi i32 [ %call52, %if.then57 ], [ %call52, %do.body55.fail_crit_edge ], [ %call86, %if.end85.fail_crit_edge ], [ 0, %if.end61.fail_crit_edge ]
  %port_initialized124 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 82
  %46 = ptrtoint ptr %port_initialized124 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %port_initialized124, align 2
  %rss_lock125 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 65
  tail call void @mutex_unlock(ptr noundef %rss_lock125) #16
  %filter_sem126 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 108
  tail call void @up_write(ptr noundef %filter_sem126) #16
  %mac_lock127 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 78
  tail call void @mutex_unlock(ptr noundef %mac_lock127) #16
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.then119, %if.end116.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %fail ], [ 0, %if.then119 ], [ 0, %if.end116.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_port_reconfigure(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_enable_interrupts(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_reset(ptr noundef %efx, i32 noundef %method) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.then:                                          ; preds = %entry
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %2 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net_dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %method)
  %cmp = icmp ult i32 %method, 15
  br i1 %cmp, label %cond.true, label %if.then.cond.end_crit_edge

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end

cond.true:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx = getelementptr [15 x ptr], ptr @efx_reset_type_names, i32 0, i32 %method
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then.cond.end_crit_edge
  %cond = phi ptr [ %5, %cond.true ], [ @.str.61, %if.then.cond.end_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %3, ptr noundef nonnull @.str.60, ptr noundef %cond) #19
  br label %do.end

do.end:                                           ; preds = %cond.end, %entry.do.end_crit_edge
  %net_dev.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %6 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net_dev.i, align 4
  tail call fastcc void @local_bh_disable() #16
  tail call void @netif_tx_lock(ptr noundef %7) #16
  tail call void @netif_device_detach(ptr noundef %7) #16
  tail call void @netif_tx_unlock(ptr noundef %7) #16
  tail call fastcc void @local_bh_enable() #16
  %type.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  %8 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %type.i, align 4
  %revision.i = getelementptr inbounds %struct.efx_nic_type, ptr %9, i32 0, i32 118
  %10 = ptrtoint ptr %revision.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %revision.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %11)
  %cmp1.not = icmp eq i32 %11, 5
  br i1 %cmp1.not, label %do.end.if.end3_crit_edge, label %if.then2

do.end.if.end3_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end3

if.then2:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @efx_reset_down(ptr noundef %efx, i32 noundef %method)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %do.end.if.end3_crit_edge
  %12 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %type.i, align 4
  %reset = getelementptr inbounds %struct.efx_nic_type, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reset, align 4
  %call4 = tail call i32 %15(ptr noundef %efx, i32 noundef %method) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end16, label %do.body7

do.body7:                                         ; preds = %if.end3
  %16 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %msg_enable, align 4
  %and9 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %do.body7.lor.end_crit_edge, label %if.then11

do.body7.lor.end_crit_edge:                       ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.end

if.then11:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #18
  %18 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %net_dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %19, ptr noundef nonnull @.str.62) #19
  br label %lor.end

if.end16:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %method)
  %cmp17 = icmp ult i32 %method, 8
  br i1 %cmp17, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  %shl.neg = shl nsw i32 -2, %method
  %reset_pending = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 24
  br label %if.end21

if.else:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  %reset_pending20 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 24
  %rem.i = and i32 %method, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %method, 5
  %add.ptr.i = getelementptr i32, ptr %reset_pending20, i32 %div2.i
  %neg.i = xor i32 %shl.i, -1
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then18
  %add.ptr.i.sink111 = phi ptr [ %add.ptr.i, %if.else ], [ %reset_pending, %if.then18 ]
  %neg.i.sink = phi i32 [ %neg.i, %if.else ], [ %shl.neg, %if.then18 ]
  %20 = ptrtoint ptr %add.ptr.i.sink111 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr.i.sink111, align 4
  %and.i = and i32 %21, %neg.i.sink
  store i32 %and.i, ptr %add.ptr.i.sink111, align 4
  %pci_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 4
  %22 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pci_dev, align 4
  tail call void @pci_set_master(ptr noundef %23) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %method)
  %cmp23 = icmp eq i32 %method, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %method)
  %cmp24 = icmp eq i32 %method, 4
  %spec.select106 = or i1 %cmp23, %cmp24
  br label %lor.end

lor.end:                                          ; preds = %if.end21, %if.then11, %do.body7.lor.end_crit_edge
  %24 = phi i1 [ true, %if.then11 ], [ true, %do.body7.lor.end_crit_edge ], [ %spec.select106, %if.end21 ]
  %25 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %type.i, align 4
  %revision.i108 = getelementptr inbounds %struct.efx_nic_type, ptr %26, i32 0, i32 118
  %27 = ptrtoint ptr %revision.i108 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %revision.i108, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %28)
  %cmp26.not = icmp eq i32 %28, 5
  br i1 %cmp26.not, label %lor.end.if.end30_crit_edge, label %if.then27

lor.end.if.end30_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end30

if.then27:                                        ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #18
  %lnot = xor i1 %24, true
  %call29 = tail call i32 @efx_reset_up(ptr noundef %efx, i32 noundef %method, i1 noundef zeroext %lnot)
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %lor.end.if.end30_crit_edge
  %rc2.0 = phi i32 [ %call29, %if.then27 ], [ 0, %lor.end.if.end30_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc2.0)
  %tobool31.not = icmp eq i32 %rc2.0, 0
  %not.tobool31.not = xor i1 %tobool31.not, true
  %disabled.0.off0 = or i1 %24, %not.tobool31.not
  br i1 %disabled.0.off0, label %if.then38, label %do.body50

if.then38:                                        ; preds = %if.end30
  %29 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %net_dev.i, align 4
  tail call void @dev_close(ptr noundef %30) #16
  %31 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %msg_enable, align 4
  %and42 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.then38.do.end48_crit_edge, label %if.then44

if.then38.do.end48_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end48

if.then44:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #18
  %33 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %net_dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %34, ptr noundef nonnull @.str.63) #19
  br label %do.end48

do.end48:                                         ; preds = %if.then44, %if.then38.do.end48_crit_edge
  %state = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 23
  %35 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 2, ptr %state, align 32
  br label %if.end70

do.body50:                                        ; preds = %if.end30
  %36 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %msg_enable, align 4
  %and52 = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %do.body50.do.end69_crit_edge, label %do.body55

do.body50.do.end69_crit_edge:                     ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end69

do.body55:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_reset.__UNIQUE_ID_ddebug656, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_reset, %if.then62)) #16
          to label %do.end69 [label %if.then62], !srcloc !283

if.then62:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #18
  %38 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %net_dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_reset.__UNIQUE_ID_ddebug656, ptr noundef %39, ptr noundef nonnull @.str.65) #16
  br label %do.end69

do.end69:                                         ; preds = %if.then62, %do.body55, %do.body50.do.end69_crit_edge
  %state.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 23
  %40 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %state.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %41)
  %cmp.not.i = icmp eq i32 %41, 2
  br i1 %cmp.not.i, label %do.end69.if.end70_crit_edge, label %land.lhs.true.i

do.end69.if.end70_crit_edge:                      ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end70

land.lhs.true.i:                                  ; preds = %do.end69
  %reset_pending.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 24
  %42 = ptrtoint ptr %reset_pending.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %reset_pending.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i = icmp eq i32 %43, 0
  br i1 %tobool.not.i, label %if.then.i, label %land.lhs.true.i.if.end70_crit_edge

land.lhs.true.i.if.end70_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end70

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  %44 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %net_dev.i, align 4
  tail call void @netif_device_attach(ptr noundef %45) #16
  br label %if.end70

if.end70:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end70_crit_edge, %do.end69.if.end70_crit_edge, %do.end48
  %spec.select = select i1 %tobool5.not, i32 %rc2.0, i32 %call4
  %rc.0 = select i1 %tobool31.not, i32 %call4, i32 %spec.select
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_mcdi_mode_poll(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @efx_port_dummy_op_int(ptr nocapture noundef readnone %efx) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @efx_port_dummy_op_void(ptr nocapture noundef %efx) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_init_struct(ptr noundef %efx, ptr noundef %pci_dev, ptr noundef %net_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %node = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 1
  %0 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %node, ptr %node, align 4
  %prev.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %node, ptr %prev.i, align 4
  %secondary_list = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 3
  %2 = ptrtoint ptr %secondary_list to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %secondary_list, ptr %secondary_list, align 4
  %prev.i161 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %prev.i161 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %secondary_list, ptr %prev.i161, align 4
  %biu_lock = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 131
  tail call void @__raw_spin_lock_init(ptr noundef %biu_lock, ptr noundef nonnull @.str.70, ptr noundef nonnull @efx_init_struct.__key, i16 noundef signext 3) #16
  %mtd_list = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 75
  %4 = ptrtoint ptr %mtd_list to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %mtd_list, ptr %mtd_list, align 4
  %prev.i162 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 75, i32 1
  %5 = ptrtoint ptr %prev.i162 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %mtd_list, ptr %prev.i162, align 4
  %reset_work = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 11
  tail call void @__init_work(ptr noundef %reset_work, i32 noundef 0) #16
  %6 = ptrtoint ptr %reset_work to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -64, ptr %reset_work, align 4
  %lockdep_map = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 11, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.72, ptr noundef nonnull @efx_init_struct.__key.71, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %entry5 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 11, i32 1
  %7 = ptrtoint ptr %entry5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %entry5, ptr %entry5, align 4
  %prev.i163 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 11, i32 1, i32 1
  %8 = ptrtoint ptr %prev.i163 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %entry5, ptr %prev.i163, align 4
  %func = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 11, i32 2
  %9 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @efx_reset_work, ptr %func, align 4
  %monitor_work = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 130
  tail call void @__init_work(ptr noundef %monitor_work, i32 noundef 0) #16
  %10 = ptrtoint ptr %monitor_work to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -64, ptr %monitor_work, align 128
  %lockdep_map18 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 130, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map18, ptr noundef nonnull @.str.74, ptr noundef nonnull @efx_init_struct.__key.73, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %entry21 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 130, i32 0, i32 1
  %11 = ptrtoint ptr %entry21 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %entry21, ptr %entry21, align 4
  %prev.i164 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 130, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %prev.i164 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %entry21, ptr %prev.i164, align 4
  %func24 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 130, i32 0, i32 2
  %13 = ptrtoint ptr %func24 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @efx_monitor, ptr %func24, align 4
  %timer = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 130, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.76, ptr noundef nonnull @efx_init_struct.__key.75) #16
  tail call void @efx_selftest_async_init(ptr noundef %efx) #16
  %pci_dev33 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 4
  %14 = ptrtoint ptr %pci_dev33 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %pci_dev, ptr %pci_dev33, align 4
  %15 = load i32, ptr @debug, align 4
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %16 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %msg_enable, align 4
  %state = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 23
  %17 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %state, align 32
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44, i32 3
  %18 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.pci_name.exit_crit_edge

entry.pci_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %21, %if.end.i.i ], [ %19, %entry.pci_name.exit_crit_edge ]
  %call35 = tail call i32 @strlcpy(ptr noundef %efx, ptr noundef %retval.0.i.i, i32 noundef 16) #16
  %net_dev36 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %22 = ptrtoint ptr %net_dev36 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %net_dev, ptr %net_dev36, align 4
  %type = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  %23 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %type, align 4
  %rx_prefix_size = getelementptr inbounds %struct.efx_nic_type, ptr %24, i32 0, i32 125
  %25 = ptrtoint ptr %rx_prefix_size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rx_prefix_size, align 8
  %rx_prefix_size37 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 59
  %27 = ptrtoint ptr %rx_prefix_size37 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %rx_prefix_size37, align 4
  %add = add i32 %26, 2
  %rem = and i32 %add, 3
  %rx_ip_align = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 52
  %28 = ptrtoint ptr %rx_ip_align to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %rem, ptr %rx_ip_align, align 16
  %rx_hash_offset = getelementptr inbounds %struct.efx_nic_type, ptr %24, i32 0, i32 126
  %29 = ptrtoint ptr %rx_hash_offset to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rx_hash_offset, align 4
  %31 = load i32, ptr %rx_prefix_size, align 8
  %sub = sub i32 %30, %31
  %rx_packet_hash_offset = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 60
  %32 = ptrtoint ptr %rx_packet_hash_offset to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %sub, ptr %rx_packet_hash_offset, align 16
  %rx_ts_offset = getelementptr inbounds %struct.efx_nic_type, ptr %24, i32 0, i32 127
  %33 = ptrtoint ptr %rx_ts_offset to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rx_ts_offset, align 8
  %35 = load i32, ptr %rx_prefix_size, align 8
  %sub45 = sub i32 %34, %35
  %rx_packet_ts_offset = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 62
  %36 = ptrtoint ptr %rx_packet_ts_offset to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %sub45, ptr %rx_packet_ts_offset, align 8
  %rss_context = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 64
  %37 = ptrtoint ptr %rss_context to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %rss_context, ptr %rss_context, align 4
  %prev.i165 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 64, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i165 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %rss_context, ptr %prev.i165, align 4
  %context_id = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 64, i32 1
  %39 = ptrtoint ptr %context_id to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %context_id, align 8
  %rss_lock = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 65
  tail call void @__mutex_init(ptr noundef %rss_lock, ptr noundef nonnull @.str.78, ptr noundef nonnull @efx_init_struct.__key.77) #16
  %vport_id = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 66
  %40 = ptrtoint ptr %vport_id to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 16777216, ptr %vport_id, align 8
  %stats_lock = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 133
  tail call void @__raw_spin_lock_init(ptr noundef %stats_lock, ptr noundef nonnull @.str.80, ptr noundef nonnull @efx_init_struct.__key.79, i16 noundef signext 3) #16
  %vi_stride = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 14
  %41 = ptrtoint ptr %vi_stride to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 8192, ptr %vi_stride, align 128
  %num_mac_stats = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 85
  %42 = ptrtoint ptr %num_mac_stats to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 97, ptr %num_mac_stats, align 8
  %mac_lock = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 78
  tail call void @__mutex_init(ptr noundef %mac_lock, ptr noundef nonnull @.str.82, ptr noundef nonnull @efx_init_struct.__key.81) #16
  %filter_sem = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 108
  tail call void @__init_rwsem(ptr noundef %filter_sem, ptr noundef nonnull @.str.84, ptr noundef nonnull @efx_init_struct.__key.83) #16
  %rps_mutex = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 110
  tail call void @__mutex_init(ptr noundef %rps_mutex, ptr noundef nonnull @.str.86, ptr noundef nonnull @efx_init_struct.__key.85) #16
  %rps_hash_lock = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 113
  tail call void @__raw_spin_lock_init(ptr noundef %rps_hash_lock, ptr noundef nonnull @.str.88, ptr noundef nonnull @efx_init_struct.__key.87, i16 noundef signext 3) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %43 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %43, i32 noundef 3520, i32 noundef 2048) #20
  %rps_hash_table = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 114
  %44 = ptrtoint ptr %rps_hash_table to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call7.i.i.i, ptr %rps_hash_table, align 8
  %dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 92, i32 3
  %45 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %net_dev, ptr %dev, align 4
  %mac_work = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 79
  tail call void @__init_work(ptr noundef %mac_work, i32 noundef 0) #16
  %46 = ptrtoint ptr %mac_work to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -64, ptr %mac_work, align 4
  %lockdep_map77 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 79, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map77, ptr noundef nonnull @.str.90, ptr noundef nonnull @efx_init_struct.__key.89, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %entry79 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 79, i32 1
  %47 = ptrtoint ptr %entry79 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %entry79, ptr %entry79, align 4
  %prev.i166 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 79, i32 1, i32 1
  %48 = ptrtoint ptr %prev.i166 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %entry79, ptr %prev.i166, align 4
  %func81 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 79, i32 2
  %49 = ptrtoint ptr %func81 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @efx_mac_work, ptr %func81, align 4
  %flush_wq = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 119
  tail call void @__init_waitqueue_head(ptr noundef %flush_wq, ptr noundef nonnull @.str.92, ptr noundef nonnull @efx_init_struct.__key.91) #16
  %tx_queues_per_channel = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 48
  %50 = ptrtoint ptr %tx_queues_per_channel to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %tx_queues_per_channel, align 128
  %rxq_entries = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 31
  %51 = ptrtoint ptr %rxq_entries to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1024, ptr %rxq_entries, align 4
  %txq_entries = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 32
  %52 = ptrtoint ptr %txq_entries to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1024, ptr %txq_entries, align 64
  %mem_bar = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 128
  %53 = ptrtoint ptr %mem_bar to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -1, ptr %mem_bar, align 8
  %call87 = tail call i32 @efx_init_channels(ptr noundef %efx) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool.not = icmp eq i32 %call87, 0
  br i1 %tobool.not, label %if.end, label %pci_name.exit.fail_crit_edge

pci_name.exit.fail_crit_edge:                     ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %fail

if.end:                                           ; preds = %pci_name.exit
  %workqueue_name = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 10
  %54 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i168 = icmp eq ptr %55, null
  br i1 %tobool.not.i.i168, label %if.end.i.i170, label %if.end.pci_name.exit172_crit_edge

if.end.pci_name.exit172_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %pci_name.exit172

if.end.i.i170:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %dev.i169 = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44
  %56 = ptrtoint ptr %dev.i169 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev.i169, align 4
  br label %pci_name.exit172

pci_name.exit172:                                 ; preds = %if.end.i.i170, %if.end.pci_name.exit172_crit_edge
  %retval.0.i.i171 = phi ptr [ %57, %if.end.i.i170 ], [ %55, %if.end.pci_name.exit172_crit_edge ]
  %call90 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %workqueue_name, i32 noundef 16, ptr noundef nonnull @.str.93, ptr noundef %retval.0.i.i171)
  %call93 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.40, i32 noundef 917514, i32 noundef 1, ptr noundef %workqueue_name) #16
  %workqueue = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 9
  %58 = ptrtoint ptr %workqueue to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call93, ptr %workqueue, align 8
  %tobool95.not = icmp eq ptr %call93, null
  br i1 %tobool95.not, label %pci_name.exit172.fail_crit_edge, label %pci_name.exit172.cleanup_crit_edge

pci_name.exit172.cleanup_crit_edge:               ; preds = %pci_name.exit172
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

pci_name.exit172.fail_crit_edge:                  ; preds = %pci_name.exit172
  call void @__sanitizer_cov_trace_pc() #18
  br label %fail

fail:                                             ; preds = %pci_name.exit172.fail_crit_edge, %pci_name.exit.fail_crit_edge
  %rc.0 = phi i32 [ %call87, %pci_name.exit.fail_crit_edge ], [ -12, %pci_name.exit172.fail_crit_edge ]
  %59 = ptrtoint ptr %rps_hash_table to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rps_hash_table, align 8
  tail call void @kfree(ptr noundef %60) #16
  tail call void @efx_fini_channels(ptr noundef %efx) #16
  %vpd_sn.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 125
  %61 = ptrtoint ptr %vpd_sn.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %vpd_sn.i, align 4
  tail call void @kfree(ptr noundef %62) #16
  %workqueue.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 9
  %63 = ptrtoint ptr %workqueue.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %workqueue.i, align 8
  %tobool.not.i = icmp eq ptr %64, null
  br i1 %tobool.not.i, label %fail.cleanup_crit_edge, label %if.then.i

fail.cleanup_crit_edge:                           ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then.i:                                        ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @destroy_workqueue(ptr noundef nonnull %64) #16
  %65 = ptrtoint ptr %workqueue.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %workqueue.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %fail.cleanup_crit_edge, %pci_name.exit172.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %pci_name.exit172.cleanup_crit_edge ], [ %rc.0, %fail.cleanup_crit_edge ], [ %rc.0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @efx_reset_work(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %data, i32 -76
  %reset_pending = getelementptr i8, ptr %data, i32 88
  %0 = ptrtoint ptr %reset_pending to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %reset_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  %2 = tail call i32 @llvm.ctlz.i32(i32 %1, i1 true) #16, !range !289
  %sub.i.op = xor i32 %2, 31
  %sub = select i1 %tobool.not.i, i32 -1, i32 %sub.i.op
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %sub)
  %cond = icmp eq i32 %sub, 6
  br i1 %cond, label %entry.for.body.i_crit_edge, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.08.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %call.i = tail call i32 @efx_mcdi_poll_reboot(ptr noundef %add.ptr) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i24 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i24, label %if.end.i, label %for.body.i.efx_wait_for_bist_end.exit_crit_edge

for.body.i.efx_wait_for_bist_end.exit_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %efx_wait_for_bist_end.exit

if.end.i:                                         ; preds = %for.body.i
  tail call void @msleep(i32 noundef 100) #16
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond.not.i, label %do.body.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

do.body.i:                                        ; preds = %if.end.i
  %msg_enable.i = getelementptr i8, ptr %data, i32 80
  %3 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %do.body.i.efx_wait_for_bist_end.exit_crit_edge, label %if.then2.i

do.body.i.efx_wait_for_bist_end.exit_crit_edge:   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %efx_wait_for_bist_end.exit

if.then2.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %net_dev.i = getelementptr i8, ptr %data, i32 2352
  %5 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %net_dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %6, ptr noundef nonnull @.str.115) #19
  br label %efx_wait_for_bist_end.exit

efx_wait_for_bist_end.exit:                       ; preds = %if.then2.i, %do.body.i.efx_wait_for_bist_end.exit_crit_edge, %for.body.i.efx_wait_for_bist_end.exit_crit_edge
  %mc_bist_for_other_fn.i = getelementptr i8, ptr %data, i32 2349
  %7 = ptrtoint ptr %mc_bist_for_other_fn.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %mc_bist_for_other_fn.i, align 1
  br label %if.end6

if.end6:                                          ; preds = %efx_wait_for_bist_end.exit, %entry.if.end6_crit_edge
  br i1 %tobool.not.i, label %if.end6.cleanup_crit_edge, label %if.end9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  tail call void @rtnl_lock() #16
  %state = getelementptr i8, ptr %data, i32 84
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp10 = icmp eq i32 %9, 1
  br i1 %cmp10, label %if.then11, label %if.end9.if.end13_crit_edge

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  %call12 = tail call i32 @efx_reset(ptr noundef %add.ptr, i32 noundef %sub)
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end9.if.end13_crit_edge
  tail call void @rtnl_unlock() #16
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end6.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @efx_monitor(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %data, i32 -3968
  %type = getelementptr i8, ptr %data, i32 -3924
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 4
  %monitor = getelementptr inbounds %struct.efx_nic_type, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %monitor to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %monitor, align 8
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %do.body3, label %do.end8, !prof !286

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/sfc/efx_common.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 333, 0\0A.popsection", ""() #16, !srcloc !291
  unreachable

do.end8:                                          ; preds = %entry
  %mac_lock = getelementptr i8, ptr %data, i32 -1680
  %call = tail call i32 @mutex_trylock(ptr noundef %mac_lock) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool9.not = icmp eq i32 %call, 0
  br i1 %tobool9.not, label %do.end8.if.end20_crit_edge, label %if.then10

do.end8.if.end20_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end20

if.then10:                                        ; preds = %do.end8
  %port_enabled = getelementptr i8, ptr %data, i32 -1544
  %4 = ptrtoint ptr %port_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %port_enabled, align 8, !range !282
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool11.not = icmp eq i8 %5, 0
  br i1 %tobool11.not, label %if.then10.if.end18_crit_edge, label %land.lhs.true

if.then10.if.end18_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18

land.lhs.true:                                    ; preds = %if.then10
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %type, align 4
  %monitor13 = getelementptr inbounds %struct.efx_nic_type, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %monitor13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %monitor13, align 8
  %tobool14.not = icmp eq ptr %9, null
  br i1 %tobool14.not, label %land.lhs.true.if.end18_crit_edge, label %if.then15

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  tail call void %9(ptr noundef %add.ptr) #16
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %land.lhs.true.if.end18_crit_edge, %if.then10.if.end18_crit_edge
  tail call void @mutex_unlock(ptr noundef %mac_lock) #16
  br label %if.end20

if.end20:                                         ; preds = %if.end18, %do.end8.if.end20_crit_edge
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %type, align 4
  %monitor.i = getelementptr inbounds %struct.efx_nic_type, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %monitor.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %monitor.i, align 8
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end20.efx_start_monitor.exit_crit_edge, label %if.then.i

if.end20.efx_start_monitor.exit_crit_edge:        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  br label %efx_start_monitor.exit

if.then.i:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  %workqueue.i = getelementptr i8, ptr %data, i32 -3912
  %14 = ptrtoint ptr %workqueue.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %workqueue.i, align 8
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %15, ptr noundef %data, i32 noundef 100) #16
  br label %efx_start_monitor.exit

efx_start_monitor.exit:                           ; preds = %if.then.i, %if.end20.efx_start_monitor.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_selftest_async_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @efx_mac_work(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_lock = getelementptr i8, ptr %data, i32 -92
  tail call void @mutex_lock_nested(ptr noundef %mac_lock, i32 noundef 0) #16
  %port_enabled = getelementptr i8, ptr %data, i32 44
  %0 = ptrtoint ptr %port_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %port_enabled, align 8, !range !282
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  %type.i = getelementptr i8, ptr %data, i32 -2336
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type.i, align 4
  %reconfigure_mac.i = getelementptr inbounds %struct.efx_nic_type, ptr %3, i32 0, i32 29
  %4 = ptrtoint ptr %reconfigure_mac.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reconfigure_mac.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr = getelementptr i8, ptr %data, i32 -2380
  %filter_sem.i = getelementptr i8, ptr %data, i32 236
  tail call void @down_read(ptr noundef %filter_sem.i) #16
  %6 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %type.i, align 4
  %reconfigure_mac2.i = getelementptr inbounds %struct.efx_nic_type, ptr %7, i32 0, i32 29
  %8 = ptrtoint ptr %reconfigure_mac2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reconfigure_mac2.i, align 4
  %call.i = tail call i32 %9(ptr noundef %add.ptr, i1 noundef zeroext false) #16
  tail call void @up_read(ptr noundef %filter_sem.i) #16
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mac_lock) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_init_channels(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_fini_struct(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %rps_hash_table = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 114
  %0 = ptrtoint ptr %rps_hash_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rps_hash_table, align 8
  tail call void @kfree(ptr noundef %1) #16
  tail call void @efx_fini_channels(ptr noundef %efx) #16
  %vpd_sn = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 125
  %2 = ptrtoint ptr %vpd_sn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vpd_sn, align 4
  tail call void @kfree(ptr noundef %3) #16
  %workqueue = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 9
  %4 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %workqueue, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @destroy_workqueue(ptr noundef nonnull %5) #16
  %6 = ptrtoint ptr %workqueue to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %workqueue, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_fini_channels(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_init_io(ptr nocapture noundef %efx, i32 noundef %bar, i32 noundef %dma_mask, i32 noundef %mem_map_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %pci_dev1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 4
  %0 = ptrtoint ptr %pci_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_dev1, align 4
  %mem_bar = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 128
  %2 = ptrtoint ptr %mem_bar to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %mem_bar, align 8
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %3 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %msg_enable, align 4
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body2

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end9

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_init_io.__UNIQUE_ID_ddebug663, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_init_io, %if.then6)) #16
          to label %do.end9 [label %if.then6], !srcloc !283

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #18
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %5 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_init_io.__UNIQUE_ID_ddebug663, ptr noundef %6, ptr noundef nonnull @.str.95, i32 noundef %bar) #16
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %do.body2, %entry.do.end9_crit_edge
  %call10 = tail call i32 @pci_enable_device(ptr noundef %1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end22, label %do.body13

do.body13:                                        ; preds = %do.end9
  %7 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %msg_enable, align 4
  %and15 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %do.body13.cleanup_crit_edge, label %if.then17

do.body13.cleanup_crit_edge:                      ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then17:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #18
  %net_dev18 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %9 = ptrtoint ptr %net_dev18 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %net_dev18, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %10, ptr noundef nonnull @.str.96) #19
  br label %cleanup

if.end22:                                         ; preds = %do.end9
  tail call void @pci_set_master(ptr noundef %1) #16
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %conv = zext i32 %dma_mask to i64
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef %conv) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %do.body36, label %do.body26

do.body26:                                        ; preds = %if.end22
  %11 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %msg_enable, align 4
  %and28 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %do.body26.fail2_crit_edge, label %if.then30

do.body26.fail2_crit_edge:                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #18
  br label %fail2

if.then30:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #18
  %net_dev31 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %13 = ptrtoint ptr %net_dev31 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %net_dev31, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %14, ptr noundef nonnull @.str.97) #19
  br label %fail2

do.body36:                                        ; preds = %if.end22
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef %conv) #16
  %15 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %msg_enable, align 4
  %and38 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %do.body36.do.end61_crit_edge, label %do.body41

do.body36.do.end61_crit_edge:                     ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end61

do.body41:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_init_io.__UNIQUE_ID_ddebug664, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_init_io, %if.then53)) #16
          to label %do.end61 [label %if.then53], !srcloc !283

if.then53:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #18
  %net_dev54 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %17 = ptrtoint ptr %net_dev54 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %net_dev54, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_init_io.__UNIQUE_ID_ddebug664, ptr noundef %18, ptr noundef nonnull @.str.98, i64 noundef %conv) #16
  br label %do.end61

do.end61:                                         ; preds = %if.then53, %do.body41, %do.body36.do.end61_crit_edge
  %19 = ptrtoint ptr %pci_dev1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pci_dev1, align 4
  %arrayidx = getelementptr %struct.pci_dev, ptr %20, i32 0, i32 47, i32 %bar
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 8
  %membase_phys = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 12
  %23 = ptrtoint ptr %membase_phys to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %membase_phys, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool64.not = icmp eq i32 %22, 0
  br i1 %tobool64.not, label %do.body66, label %if.end75

do.body66:                                        ; preds = %do.end61
  %24 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %msg_enable, align 4
  %and68 = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %do.body66.fail3_crit_edge, label %if.then70

do.body66.fail3_crit_edge:                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #18
  br label %fail3

if.then70:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #18
  %net_dev71 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %26 = ptrtoint ptr %net_dev71 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %net_dev71, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %27, ptr noundef nonnull @.str.99, i32 noundef %bar) #19
  br label %fail3

if.end75:                                         ; preds = %do.end61
  %call76 = tail call i32 @pci_request_region(ptr noundef %1, i32 noundef %bar, ptr noundef nonnull @.str.52) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end88, label %do.body79

do.body79:                                        ; preds = %if.end75
  %28 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %msg_enable, align 4
  %and81 = and i32 %29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %do.body79.fail3_crit_edge, label %if.then83

do.body79.fail3_crit_edge:                        ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #18
  br label %fail3

if.then83:                                        ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #18
  %net_dev84 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %30 = ptrtoint ptr %net_dev84 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %net_dev84, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %31, ptr noundef nonnull @.str.100, i32 noundef %bar) #19
  br label %fail3

if.end88:                                         ; preds = %if.end75
  %32 = ptrtoint ptr %mem_bar to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %bar, ptr %mem_bar, align 8
  %33 = ptrtoint ptr %membase_phys to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %membase_phys, align 8
  %call91 = tail call ptr @ioremap(i32 noundef %34, i32 noundef %mem_map_size) #16
  %membase = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 13
  %35 = ptrtoint ptr %membase to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call91, ptr %membase, align 4
  %tobool93.not = icmp eq ptr %call91, null
  %36 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %msg_enable, align 4
  %and97 = and i32 %37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool93.not, label %do.body95, label %do.body107

do.body95:                                        ; preds = %if.end88
  br i1 %tobool98.not, label %do.body95.do.end105_crit_edge, label %if.then99

do.body95.do.end105_crit_edge:                    ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end105

if.then99:                                        ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #18
  %net_dev100 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %38 = ptrtoint ptr %net_dev100 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %net_dev100, align 4
  %40 = ptrtoint ptr %membase_phys to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %membase_phys, align 8
  %conv102 = zext i32 %41 to i64
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %39, ptr noundef nonnull @.str.101, i32 noundef %bar, i64 noundef %conv102, i32 noundef %mem_map_size) #19
  br label %do.end105

do.end105:                                        ; preds = %if.then99, %do.body95.do.end105_crit_edge
  %42 = ptrtoint ptr %pci_dev1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pci_dev1, align 4
  tail call void @pci_release_region(ptr noundef %43, i32 noundef %bar) #16
  br label %fail3

do.body107:                                       ; preds = %if.end88
  br i1 %tobool98.not, label %do.body107.cleanup_crit_edge, label %do.body112

do.body107.cleanup_crit_edge:                     ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.body112:                                       ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_init_io.__UNIQUE_ID_ddebug665, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_init_io, %if.then124)) #16
          to label %cleanup [label %if.then124], !srcloc !283

if.then124:                                       ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #18
  %net_dev125 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %44 = ptrtoint ptr %net_dev125 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %net_dev125, align 4
  %46 = ptrtoint ptr %membase_phys to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %membase_phys, align 8
  %conv127 = zext i32 %47 to i64
  %48 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %membase, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_init_io.__UNIQUE_ID_ddebug665, ptr noundef %45, ptr noundef nonnull @.str.102, i32 noundef %bar, i64 noundef %conv127, i32 noundef %mem_map_size, ptr noundef %49) #16
  br label %cleanup

fail3:                                            ; preds = %do.end105, %if.then83, %do.body79.fail3_crit_edge, %if.then70, %do.body66.fail3_crit_edge
  %rc.0 = phi i32 [ -12, %do.end105 ], [ -19, %if.then70 ], [ -19, %do.body66.fail3_crit_edge ], [ -5, %if.then83 ], [ -5, %do.body79.fail3_crit_edge ]
  %50 = ptrtoint ptr %membase_phys to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %membase_phys, align 8
  br label %fail2

fail2:                                            ; preds = %fail3, %if.then30, %do.body26.fail2_crit_edge
  %rc.1 = phi i32 [ %call.i, %if.then30 ], [ %call.i, %do.body26.fail2_crit_edge ], [ %rc.0, %fail3 ]
  %51 = ptrtoint ptr %pci_dev1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pci_dev1, align 4
  tail call void @pci_disable_device(ptr noundef %52) #16
  br label %cleanup

cleanup:                                          ; preds = %fail2, %if.then124, %do.body112, %do.body107.cleanup_crit_edge, %if.then17, %do.body13.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then124 ], [ 0, %do.body107.cleanup_crit_edge ], [ %call10, %if.then17 ], [ %call10, %do.body13.cleanup_crit_edge ], [ %rc.1, %fail2 ], [ 0, %do.body112 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_region(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_region(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_fini_io(ptr nocapture noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.body1

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end7

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_fini_io.__UNIQUE_ID_ddebug666, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_fini_io, %if.then5)) #16
          to label %do.end7 [label %if.then5], !srcloc !283

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #18
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %2 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_fini_io.__UNIQUE_ID_ddebug666, ptr noundef %3, ptr noundef nonnull @.str.104) #16
  br label %do.end7

do.end7:                                          ; preds = %if.then5, %do.body1, %entry.do.end7_crit_edge
  %membase = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 13
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase, align 4
  %tobool8.not = icmp eq ptr %5, null
  br i1 %tobool8.not, label %do.end7.if.end12_crit_edge, label %if.then9

do.end7.if.end12_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

if.then9:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @iounmap(ptr noundef nonnull %5) #16
  %6 = ptrtoint ptr %membase to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %membase, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %do.end7.if.end12_crit_edge
  %membase_phys = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 12
  %7 = ptrtoint ptr %membase_phys to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %membase_phys, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool13.not = icmp eq i32 %8, 0
  br i1 %tobool13.not, label %if.end12.if.end17_crit_edge, label %if.then14

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end17

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  %pci_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 4
  %9 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pci_dev, align 4
  %mem_bar = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 128
  %11 = ptrtoint ptr %mem_bar to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mem_bar, align 8
  tail call void @pci_release_region(ptr noundef %10, i32 noundef %12) #16
  %13 = ptrtoint ptr %membase_phys to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %membase_phys, align 8
  %14 = ptrtoint ptr %mem_bar to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %mem_bar, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end12.if.end17_crit_edge
  %pci_dev18 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 4
  %15 = ptrtoint ptr %pci_dev18 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pci_dev18, align 4
  %call19 = tail call i32 @pci_vfs_assigned(ptr noundef %16) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then21, label %if.end17.if.end23_crit_edge

if.end17.if.end23_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end23

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  %17 = ptrtoint ptr %pci_dev18 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pci_dev18, align 4
  tail call void @pci_disable_device(ptr noundef %18) #16
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end17.if.end23_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_vfs_assigned(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_init_mcdi_logging(ptr nocapture noundef readonly %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %pci_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 4
  %0 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %call = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_mcdi_logging) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %do.body

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end3

do.body:                                          ; preds = %entry
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.body.if.end3_crit_edge, label %if.then2

do.body.if.end3_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end3

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %4 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %5, ptr noundef nonnull @.str.105) #19
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %do.body.if.end3_crit_edge, %entry.if.end3_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_fini_mcdi_logging(ptr nocapture noundef readonly %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %pci_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 4
  %0 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_mcdi_logging) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_io_error_detected(ptr noundef %pdev, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %state)
  %cmp = icmp eq i32 %state, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @rtnl_lock() #16
  %state1 = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state1, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp2.not = icmp eq i32 %3, 2
  br i1 %cmp2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %4 = ptrtoint ptr %state1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 3, ptr %state1, align 32
  %reset_pending = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 24
  %5 = ptrtoint ptr %reset_pending to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %reset_pending, align 4
  %net_dev.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 83
  %6 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net_dev.i, align 4
  tail call fastcc void @local_bh_disable() #16
  tail call void @netif_tx_lock(ptr noundef %7) #16
  tail call void @netif_device_detach(ptr noundef %7) #16
  tail call void @netif_tx_unlock(ptr noundef %7) #16
  tail call fastcc void @local_bh_enable() #16
  tail call void @efx_stop_all(ptr noundef %1)
  tail call void @efx_disable_interrupts(ptr noundef %1) #16
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %status.0 = phi i32 [ 3, %if.then3 ], [ 5, %if.end.if.end5_crit_edge ]
  tail call void @rtnl_unlock() #16
  tail call void @pci_disable_device(ptr noundef %pdev) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.0, %if.end5 ], [ 4, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_io_slot_reset(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @pci_enable_device(ptr noundef %pdev) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %do.body

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

do.body:                                          ; preds = %entry
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 4
  %and = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %do.body.if.end4_crit_edge, label %if.then3

do.body.if.end4_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 83
  %4 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %5, ptr noundef nonnull @.str.118) #19
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %do.body.if.end4_crit_edge, %entry.if.end4_crit_edge
  %status.0 = phi i32 [ 5, %entry.if.end4_crit_edge ], [ 4, %if.then3 ], [ 4, %do.body.if.end4_crit_edge ]
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @efx_io_resume(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @rtnl_lock() #16
  %state = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @efx_reset(ptr noundef %1, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.else, label %do.body

do.body:                                          ; preds = %if.end
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable, align 4
  %and = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %do.body.out_crit_edge, label %if.then4

do.body.out_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 83
  %6 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %7, ptr noundef nonnull @.str.119, i32 noundef %call1) #19
  br label %out

if.else:                                          ; preds = %if.end
  %8 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %state, align 32
  %msg_enable8 = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 22
  %9 = ptrtoint ptr %msg_enable8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %msg_enable8, align 4
  %and9 = and i32 %10, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.else.out_crit_edge, label %do.body12

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

do.body12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_io_resume.__UNIQUE_ID_ddebug667, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_io_resume, %if.then17)) #16
          to label %out [label %if.then17], !srcloc !283

if.then17:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #18
  %net_dev18 = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 83
  %11 = ptrtoint ptr %net_dev18 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %net_dev18, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_io_resume.__UNIQUE_ID_ddebug667, ptr noundef %12, ptr noundef nonnull @.str.121) #16
  br label %out

out:                                              ; preds = %if.then17, %do.body12, %if.else.out_crit_edge, %if.then4, %do.body.out_crit_edge, %entry.out_crit_edge
  tail call void @rtnl_unlock() #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @efx_features_check(ptr nocapture noundef readonly %skb, ptr noundef %dev, i64 noundef %features) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %encapsulation = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %0 = ptrtoint ptr %encapsulation to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %encapsulation, align 8
  %1 = and i16 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.if.end15_crit_edge, label %if.then

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15

if.then:                                          ; preds = %entry
  %and = and i64 %features, 34359672832
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool1.not = icmp eq i64 %and, 0
  br i1 %tobool1.not, label %if.then.if.end6_crit_edge, label %if.then2

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %2 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i.i, align 8
  %inner_transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 15
  %4 = ptrtoint ptr %inner_transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %inner_transport_header.i.i, align 2
  %conv.i.i = zext i16 %5 to i32
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %conv.i.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 208, i32 %sub.ptr.sub.i)
  %cmp = icmp sgt i32 %sub.ptr.sub.i, 208
  %and5 = and i64 %features, -34359672833
  %spec.select = select i1 %cmp, i64 %and5, i64 %features
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %if.then.if.end6_crit_edge
  %features.addr.0 = phi i64 [ %features, %if.then.if.end6_crit_edge ], [ %spec.select, %if.then2 ]
  %and7 = and i64 %features.addr.0, 34359672858
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7)
  %tobool8.not = icmp eq i64 %and7, 0
  br i1 %tobool8.not, label %if.end6.if.end15_crit_edge, label %if.then9

if.end6.if.end15_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15

if.then9:                                         ; preds = %if.end6
  %type.i = getelementptr i8, ptr %dev, i32 2348
  %8 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %type.i, align 4
  %udp_tnl_has_port.i = getelementptr inbounds %struct.efx_nic_type, ptr %9, i32 0, i32 115
  %10 = ptrtoint ptr %udp_tnl_has_port.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %udp_tnl_has_port.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.then9
  %.b86.i = load i1, ptr @efx_can_encap_offloads.__already_done, align 1
  br i1 %.b86.i, label %land.rhs.i.efx_can_encap_offloads.exit.thread_crit_edge, label %if.then.i, !prof !284

land.rhs.i.efx_can_encap_offloads.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %efx_can_encap_offloads.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @efx_can_encap_offloads.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 1308, i32 noundef 9, ptr noundef null) #16
  br label %efx_can_encap_offloads.exit.thread

if.end39.i:                                       ; preds = %if.then9
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %12 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %protocol.i, align 8
  %14 = zext i16 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.124)
  switch i16 %13, label %if.end39.i.efx_can_encap_offloads.exit.thread_crit_edge [
    i16 2048, label %sw.bb.i
    i16 -31011, label %sw.bb41.i
  ]

if.end39.i.efx_can_encap_offloads.exit.thread_crit_edge: ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %efx_can_encap_offloads.exit.thread

sw.bb.i:                                          ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #18
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %15 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %17 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %18 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %16, i32 %conv.i.i.i
  %protocol40.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 6
  br label %sw.epilog.i

sw.bb41.i:                                        ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #18
  %head.i.i88.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %19 = ptrtoint ptr %head.i.i88.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %head.i.i88.i, align 8
  %network_header.i.i89.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %21 = ptrtoint ptr %network_header.i.i89.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %network_header.i.i89.i, align 4
  %conv.i.i90.i = zext i16 %22 to i32
  %add.ptr.i.i91.i = getelementptr i8, ptr %20, i32 %conv.i.i90.i
  %nexthdr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i91.i, i32 0, i32 3
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb41.i, %sw.bb.i
  %ipproto.0.in.i = phi ptr [ %nexthdr.i, %sw.bb41.i ], [ %protocol40.i, %sw.bb.i ]
  %23 = ptrtoint ptr %ipproto.0.in.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %ipproto.085.i = load i8, ptr %ipproto.0.in.i, align 1
  %24 = zext i8 %ipproto.085.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.125)
  switch i8 %ipproto.085.i, label %sw.epilog.i.efx_can_encap_offloads.exit.thread_crit_edge [
    i8 47, label %sw.bb44.i
    i8 17, label %sw.bb65.i
  ]

sw.epilog.i.efx_can_encap_offloads.exit.thread_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %efx_can_encap_offloads.exit.thread

sw.bb44.i:                                        ; preds = %sw.epilog.i
  %inner_protocol_type.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %25 = ptrtoint ptr %inner_protocol_type.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %bf.load.i = load i32, ptr %inner_protocol_type.i, align 2
  %26 = and i32 %bf.load.i, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.not.i = icmp eq i32 %26, 0
  br i1 %cmp.not.i, label %if.end48.i, label %sw.bb44.i.efx_can_encap_offloads.exit.thread_crit_edge

sw.bb44.i.efx_can_encap_offloads.exit.thread_crit_edge: ; preds = %sw.bb44.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %efx_can_encap_offloads.exit.thread

if.end48.i:                                       ; preds = %sw.bb44.i
  %27 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 14
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %27, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 25944, i16 %29)
  %cmp50.not.i = icmp eq i16 %29, 25944
  br i1 %cmp50.not.i, label %if.end53.i, label %if.end48.i.efx_can_encap_offloads.exit.thread_crit_edge

if.end48.i.efx_can_encap_offloads.exit.thread_crit_edge: ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %efx_can_encap_offloads.exit.thread

if.end53.i:                                       ; preds = %if.end48.i
  %head.i.i23 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %30 = ptrtoint ptr %head.i.i23 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %head.i.i23, align 8
  %inner_mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 17
  %32 = ptrtoint ptr %inner_mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %inner_mac_header.i.i, align 2
  %conv.i.i24 = zext i16 %33 to i32
  %add.ptr.i.i25 = getelementptr i8, ptr %31, i32 %conv.i.i24
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %34 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %transport_header.i.i, align 2
  %conv.i93.i = zext i16 %35 to i32
  %add.ptr.i94.i = getelementptr i8, ptr %31, i32 %conv.i93.i
  %sub.ptr.lhs.cast.i26 = ptrtoint ptr %add.ptr.i.i25 to i32
  %sub.ptr.rhs.cast.i27 = ptrtoint ptr %add.ptr.i94.i to i32
  %sub.ptr.sub.i28 = sub i32 %sub.ptr.lhs.cast.i26, %sub.ptr.rhs.cast.i27
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.ptr.sub.i28)
  %cmp56.not.i = icmp eq i32 %sub.ptr.sub.i28, 8
  br i1 %cmp56.not.i, label %efx_can_encap_offloads.exit, label %if.end53.i.efx_can_encap_offloads.exit.thread_crit_edge

if.end53.i.efx_can_encap_offloads.exit.thread_crit_edge: ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %efx_can_encap_offloads.exit.thread

sw.bb65.i:                                        ; preds = %sw.epilog.i
  %head.i.i99.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %36 = ptrtoint ptr %head.i.i99.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %head.i.i99.i, align 8
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %38 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i100.i = zext i16 %39 to i32
  %add.ptr.i.i101.i = getelementptr i8, ptr %37, i32 %conv.i.i100.i
  %dest.i = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i101.i, i32 0, i32 1
  %40 = ptrtoint ptr %dest.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %dest.i, align 2
  %call69.i = tail call zeroext i1 %11(ptr noundef %add.ptr.i, i16 noundef zeroext %41) #16
  %and1231 = and i64 %features.addr.0, -34359672859
  br i1 %call69.i, label %sw.bb65.i._crit_edge, label %sw.bb65.i.if.end15_crit_edge

sw.bb65.i.if.end15_crit_edge:                     ; preds = %sw.bb65.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15

sw.bb65.i._crit_edge:                             ; preds = %sw.bb65.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %45

efx_can_encap_offloads.exit.thread:               ; preds = %if.end53.i.efx_can_encap_offloads.exit.thread_crit_edge, %if.end48.i.efx_can_encap_offloads.exit.thread_crit_edge, %sw.bb44.i.efx_can_encap_offloads.exit.thread_crit_edge, %sw.epilog.i.efx_can_encap_offloads.exit.thread_crit_edge, %if.end39.i.efx_can_encap_offloads.exit.thread_crit_edge, %if.then.i, %land.rhs.i.efx_can_encap_offloads.exit.thread_crit_edge
  %and1230 = and i64 %features.addr.0, -34359672859
  br label %if.end15

efx_can_encap_offloads.exit:                      ; preds = %if.end53.i
  %42 = ptrtoint ptr %add.ptr.i94.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 2)
  %43 = load i16, ptr %add.ptr.i94.i, align 1
  %44 = and i16 %43, -28672
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %tobool62.not.i = icmp eq i16 %44, 0
  %and12 = and i64 %features.addr.0, -34359672859
  br i1 %tobool62.not.i, label %efx_can_encap_offloads.exit._crit_edge, label %efx_can_encap_offloads.exit.if.end15_crit_edge

efx_can_encap_offloads.exit.if.end15_crit_edge:   ; preds = %efx_can_encap_offloads.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15

efx_can_encap_offloads.exit._crit_edge:           ; preds = %efx_can_encap_offloads.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %45

45:                                               ; preds = %efx_can_encap_offloads.exit._crit_edge, %sw.bb65.i._crit_edge
  br label %if.end15

if.end15:                                         ; preds = %45, %efx_can_encap_offloads.exit.if.end15_crit_edge, %efx_can_encap_offloads.exit.thread, %sw.bb65.i.if.end15_crit_edge, %if.end6.if.end15_crit_edge, %entry.if.end15_crit_edge
  %features.addr.1 = phi i64 [ %features.addr.0, %if.end6.if.end15_crit_edge ], [ %features, %entry.if.end15_crit_edge ], [ %features.addr.0, %45 ], [ %and12, %efx_can_encap_offloads.exit.if.end15_crit_edge ], [ %and1230, %efx_can_encap_offloads.exit.thread ], [ %and1231, %sw.bb65.i.if.end15_crit_edge ]
  ret i64 %features.addr.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_get_phys_port_id(ptr noundef %net_dev, ptr noundef %ppid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr i8, ptr %net_dev, i32 2348
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 4
  %get_phys_port_id = getelementptr inbounds %struct.efx_nic_type, ptr %1, i32 0, i32 97
  %2 = ptrtoint ptr %get_phys_port_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_phys_port_id, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %call3 = tail call i32 %3(ptr noundef %add.ptr.i, ptr noundef %ppid) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_get_phys_port_name(ptr nocapture noundef readonly %net_dev, ptr nocapture noundef writeonly %name, i32 noundef %len) local_unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %port_num = getelementptr i8, ptr %net_dev, i32 2344
  %0 = ptrtoint ptr %port_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port_num, align 8
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef %len, ptr noundef nonnull @.str.106, i32 noundef %1)
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %len)
  %cmp.not = icmp ult i32 %call1, %len
  %. = select i1 %cmp.not, i32 0, i32 -22
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_rx_config_page_split(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_features_change(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_tx_max_skb_descs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_start_channels(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_ptp_start_datapath(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_selftest_async_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_ptp_stop_datapath(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_stop_channels(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_poll_reboot(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcdi_logging_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mcdi.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 77
  %2 = ptrtoint ptr %mcdi.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mcdi.i, align 4
  %logging_enabled = getelementptr inbounds %struct.efx_mcdi_iface, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %logging_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %logging_enabled, align 4, !range !282
  %6 = zext i8 %5 to i32
  %call2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.117, i32 noundef %6) #16
  ret i32 %call2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mcdi_logging_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef returned %count) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mcdi.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 77
  %2 = ptrtoint ptr %mcdi.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mcdi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp.not = icmp eq i32 %count, 0
  br i1 %cmp.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %5)
  %cmp2 = icmp ne i8 %5, 48
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %6 = phi i1 [ false, %entry.land.end_crit_edge ], [ %cmp2, %land.rhs ]
  %frombool = zext i1 %6 to i8
  %logging_enabled = getelementptr inbounds %struct.efx_mcdi_iface, ptr %3, i32 0, i32 16
  %7 = ptrtoint ptr %logging_enabled to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %frombool, ptr %logging_enabled, align 4
  ret i32 %count
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 132)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 132)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind readonly }
attributes #14 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !96, !98, !99, !100, !101, !102, !104, !106, !107, !108, !110, !112, !113, !115, !117, !118, !119, !120, !122, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !142, !144, !146, !148, !149, !150, !152, !153, !154, !156, !157, !159, !160, !162, !163, !165, !166, !168, !169, !170, !171, !173, !174, !176, !177, !179, !180, !182, !183, !185, !186, !188, !189, !191, !192, !194, !195, !197, !199, !200, !201, !203, !205, !207, !208, !210, !212, !214, !216, !217, !219, !220, !221, !223, !225, !227, !229, !230, !232, !234, !236, !238, !239, !240, !242, !243, !244, !246, !247, !249, !250, !251, !253, !255, !257, !259, !260, !262, !264, !266, !268, !269, !270}
!llvm.named.register.sp = !{!272}
!llvm.module.flags = !{!273, !274, !275, !276, !277, !278, !279, !280}
!llvm.ident = !{!281}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 32, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype647, !1, !"__UNIQUE_ID_debugtype647", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug648, !4, !"__UNIQUE_ID_debug648", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 33, i32 1}
!5 = !{ptr @efx_reset_type_max, !6, !"efx_reset_type_max", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 54, i32 20}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 56, i32 36}
!9 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 58, i32 36}
!11 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 57, i32 36}
!13 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 59, i32 36}
!15 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 60, i32 36}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 61, i32 36}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 62, i32 26}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 63, i32 36}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 64, i32 36}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 65, i32 36}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 66, i32 36}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 67, i32 36}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 68, i32 36}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 69, i32 30}
!35 = !{ptr @efx_reset_type_names, !36, !"efx_reset_type_names", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 55, i32 19}
!37 = !{ptr @efx_loopback_mode_max, !38, !"efx_loopback_mode_max", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 76, i32 20}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 78, i32 21}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 80, i32 21}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 81, i32 21}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 82, i32 21}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 83, i32 21}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 84, i32 21}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 85, i32 21}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 86, i32 21}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 87, i32 20}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 88, i32 24}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 89, i32 24}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 90, i32 25}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 91, i32 23}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 92, i32 21}
!67 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 93, i32 21}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 94, i32 20}
!71 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 95, i32 22}
!73 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 96, i32 21}
!75 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 97, i32 24}
!77 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 98, i32 23}
!79 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 99, i32 28}
!81 = !{ptr @.str.35, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 100, i32 28}
!83 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 101, i32 23}
!85 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 102, i32 22}
!87 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 103, i32 26}
!89 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 104, i32 24}
!91 = !{ptr @efx_loopback_mode_names, !92, !"efx_loopback_mode_names", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 77, i32 19}
!93 = !{ptr @.str.40, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 115, i32 20}
!95 = !{ptr @.str.41, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.42, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 117, i32 3}
!98 = !{ptr @.str.43, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.44, !97, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @efx_create_reset_workqueue._entry, !97, !"_entry", i1 false, i1 false}
!101 = !{ptr @efx_create_reset_workqueue._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.45, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 177, i32 3}
!104 = !{ptr @.str.46, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 265, i32 3}
!106 = !{ptr @.str.47, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.48, !105, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.49, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 270, i32 3}
!110 = distinct !{null, !111, !"__warned", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 295, i32 6}
!112 = !{ptr @.str.50, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.51, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 297, i32 3}
!115 = !{ptr @.str.52, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 303, i32 2}
!117 = !{ptr @.str.53, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.54, !116, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @efx_change_mtu.__UNIQUE_ID_ddebug649, !116, !"__UNIQUE_ID_ddebug649", i1 false, i1 false}
!120 = distinct !{null, !121, !"__already_done", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 530, i32 2}
!122 = !{ptr @.str.55, !121, !"<string literal>", i1 false, i1 false}
!123 = distinct !{null, !124, !"__already_done", i1 false, i1 false}
!124 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 570, i32 2}
!125 = distinct !{null, !126, !"__already_done", i1 false, i1 false}
!126 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 647, i32 2}
!127 = distinct !{null, !128, !"__already_done", i1 false, i1 false}
!128 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 709, i32 2}
!129 = !{ptr @.str.56, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 728, i32 2}
!131 = distinct !{null, !132, !"__already_done", i1 false, i1 false}
!132 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 745, i32 2}
!133 = !{ptr @.str.57, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 753, i32 3}
!135 = !{ptr @.str.58, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 764, i32 4}
!137 = !{ptr @.str.59, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 775, i32 3}
!139 = !{ptr @.str.60, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 817, i32 2}
!141 = !{ptr @.str.61, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.62, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 829, i32 3}
!144 = !{ptr @.str.63, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 863, i32 3}
!146 = !{ptr @.str.64, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 866, i32 3}
!148 = !{ptr @.str.65, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @efx_reset.__UNIQUE_ID_ddebug656, !147, !"__UNIQUE_ID_ddebug656", i1 false, i1 false}
!150 = !{ptr @.str.66, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 912, i32 3}
!152 = !{ptr @.str.67, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @efx_schedule_reset.__UNIQUE_ID_ddebug658, !151, !"__UNIQUE_ID_ddebug658", i1 false, i1 false}
!154 = !{ptr @.str.68, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 929, i32 3}
!156 = !{ptr @efx_schedule_reset.__UNIQUE_ID_ddebug659, !155, !"__UNIQUE_ID_ddebug659", i1 false, i1 false}
!157 = !{ptr @.str.69, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 934, i32 3}
!159 = !{ptr @efx_schedule_reset.__UNIQUE_ID_ddebug660, !158, !"__UNIQUE_ID_ddebug660", i1 false, i1 false}
!160 = !{ptr @efx_init_struct.__key, !161, !"__key", i1 false, i1 false}
!161 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 989, i32 2}
!162 = !{ptr @.str.70, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @efx_init_struct.__key.71, !164, !"__key", i1 false, i1 false}
!164 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 993, i32 2}
!165 = !{ptr @.str.72, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @efx_init_struct.__key.73, !167, !"__key", i1 false, i1 false}
!167 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 994, i32 2}
!168 = !{ptr @.str.74, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @efx_init_struct.__key.75, !167, !"__key", i1 false, i1 false}
!170 = !{ptr @.str.76, !167, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @efx_init_struct.__key.77, !172, !"__key", i1 false, i1 false}
!172 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 1011, i32 2}
!173 = !{ptr @.str.78, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @efx_init_struct.__key.79, !175, !"__key", i1 false, i1 false}
!175 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 1013, i32 2}
!176 = !{ptr @.str.80, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @efx_init_struct.__key.81, !178, !"__key", i1 false, i1 false}
!178 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 1017, i32 2}
!179 = !{ptr @.str.82, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @efx_init_struct.__key.83, !181, !"__key", i1 false, i1 false}
!181 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 1018, i32 2}
!182 = !{ptr @.str.84, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @efx_init_struct.__key.85, !184, !"__key", i1 false, i1 false}
!184 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 1020, i32 2}
!185 = !{ptr @.str.86, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @efx_init_struct.__key.87, !187, !"__key", i1 false, i1 false}
!187 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 1021, i32 2}
!188 = !{ptr @.str.88, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @efx_init_struct.__key.89, !190, !"__key", i1 false, i1 false}
!190 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 1027, i32 2}
!191 = !{ptr @.str.90, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @efx_init_struct.__key.91, !193, !"__key", i1 false, i1 false}
!193 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 1028, i32 2}
!194 = !{ptr @.str.92, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @.str.93, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 1041, i32 61}
!197 = !{ptr @.str.94, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 1081, i32 2}
!199 = !{ptr @.str.95, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @efx_init_io.__UNIQUE_ID_ddebug663, !198, !"__UNIQUE_ID_ddebug663", i1 false, i1 false}
!201 = !{ptr @.str.96, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 1085, i32 3}
!203 = !{ptr @.str.97, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 1094, i32 3}
!205 = !{ptr @.str.98, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 1098, i32 2}
!207 = !{ptr @efx_init_io.__UNIQUE_ID_ddebug664, !206, !"__UNIQUE_ID_ddebug664", i1 false, i1 false}
!208 = !{ptr @.str.99, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 1103, i32 3}
!210 = !{ptr @.str.100, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 1112, i32 3}
!212 = !{ptr @.str.101, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 1120, i32 3}
!214 = !{ptr @.str.102, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 1126, i32 2}
!216 = !{ptr @efx_init_io.__UNIQUE_ID_ddebug665, !215, !"__UNIQUE_ID_ddebug665", i1 false, i1 false}
!217 = !{ptr @.str.103, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 1145, i32 2}
!219 = !{ptr @.str.104, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @efx_fini_io.__UNIQUE_ID_ddebug666, !218, !"__UNIQUE_ID_ddebug666", i1 false, i1 false}
!221 = !{ptr @.str.105, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 1193, i32 3}
!223 = !{ptr @efx_err_handlers, !224, !"efx_err_handlers", i1 false, i1 false}
!224 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 1289, i32 33}
!225 = !{ptr @.str.106, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 1393, i32 26}
!227 = !{ptr @reset_workqueue, !228, !"reset_workqueue", i1 false, i1 false}
!228 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 111, i32 33}
!229 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!230 = !{ptr @debug, !231, !"debug", i1 false, i1 false}
!231 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 28, i32 21}
!232 = !{ptr @.str.107, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/net/ethernet/sfc/efx_common.h", i32 68, i32 3}
!234 = distinct !{null, !235, !"efx_monitor_interval", i1 false, i1 false}
!235 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 43, i32 21}
!236 = !{ptr @.str.108, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 485, i32 2}
!238 = !{ptr @.str.109, !237, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @efx_start_port.__UNIQUE_ID_ddebug654, !237, !"__UNIQUE_ID_ddebug654", i1 false, i1 false}
!240 = !{ptr @.str.110, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 400, i32 3}
!242 = !{ptr @.str.111, !241, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @efx_start_datapath.__UNIQUE_ID_ddebug652, !241, !"__UNIQUE_ID_ddebug652", i1 false, i1 false}
!244 = !{ptr @.str.112, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 405, i32 3}
!246 = !{ptr @efx_start_datapath.__UNIQUE_ID_ddebug653, !245, !"__UNIQUE_ID_ddebug653", i1 false, i1 false}
!247 = !{ptr @.str.113, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 504, i32 2}
!249 = !{ptr @.str.114, !248, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @efx_stop_port.__UNIQUE_ID_ddebug655, !248, !"__UNIQUE_ID_ddebug655", i1 false, i1 false}
!251 = distinct !{null, !252, !"__already_done", i1 false, i1 false}
!252 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 506, i32 2}
!253 = distinct !{null, !254, !"__already_done", i1 false, i1 false}
!254 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 445, i32 2}
!255 = !{ptr @.str.115, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 672, i32 2}
!257 = !{ptr @.str.116, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 1186, i32 8}
!259 = !{ptr @dev_attr_mcdi_logging, !258, !"dev_attr_mcdi_logging", i1 false, i1 false}
!260 = !{ptr @.str.117, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 1171, i32 35}
!262 = !{ptr @.str.118, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 1250, i32 3}
!264 = !{ptr @.str.119, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 1271, i32 3}
!266 = !{ptr @.str.120, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 1275, i32 3}
!268 = !{ptr @.str.121, !267, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @efx_io_resume.__UNIQUE_ID_ddebug667, !267, !"__UNIQUE_ID_ddebug667", i1 false, i1 false}
!270 = distinct !{null, !271, !"__already_done", i1 false, i1 false}
!271 = !{!"../drivers/net/ethernet/sfc/efx_common.c", i32 1308, i32 6}
!272 = !{!"sp"}
!273 = !{i32 1, !"wchar_size", i32 2}
!274 = !{i32 1, !"min_enum_size", i32 4}
!275 = !{i32 8, !"branch-target-enforcement", i32 0}
!276 = !{i32 8, !"sign-return-address", i32 0}
!277 = !{i32 8, !"sign-return-address-all", i32 0}
!278 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!279 = !{i32 7, !"uwtable", i32 1}
!280 = !{i32 7, !"frame-pointer", i32 2}
!281 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!282 = !{i8 0, i8 2}
!283 = !{i64 2149141580, i64 2149141585, i64 2149141598, i64 2149141642, i64 2149141676, i64 2149141697}
!284 = !{!"branch_weights", i32 2000, i32 1}
!285 = !{i64 2160744885, i64 2160745387, i64 2160744922, i64 2160744978, i64 2160745012, i64 2160745036, i64 2160745077, i64 2160745098, i64 2160745126, i64 2160745160}
!286 = !{!"branch_weights", i32 1, i32 2000}
!287 = !{i64 2160757108, i64 2160757610, i64 2160757145, i64 2160757201, i64 2160757235, i64 2160757259, i64 2160757300, i64 2160757321, i64 2160757349, i64 2160757383}
!288 = !{i64 2160749662, i64 2160750164, i64 2160749699, i64 2160749755, i64 2160749789, i64 2160749813, i64 2160749854, i64 2160749875, i64 2160749903, i64 2160749937}
!289 = !{i32 0, i32 33}
!290 = !{i64 2160790584}
!291 = !{i64 2160730218, i64 2160730720, i64 2160730255, i64 2160730311, i64 2160730345, i64 2160730369, i64 2160730410, i64 2160730431, i64 2160730459, i64 2160730493}
