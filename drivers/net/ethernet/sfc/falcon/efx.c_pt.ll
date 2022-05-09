; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/sfc/falcon/efx.c_pt.bc'
source_filename = "../drivers/net/ethernet/sfc/falcon/efx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.125 }
%union.anon.125 = type { ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_error_handlers = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ef4_nic_type = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i8, i8, i32, i32, i64, i32 }
%struct.ef4_phy_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ef4_channel_type = type { ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.cpumask = type { [1 x i32] }
%struct.cpu_topology = type { i32, i32, i32, i32, i32, %struct.cpumask, %struct.cpumask, %struct.cpumask, %struct.cpumask }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.ef4_nic = type { [16 x i8], %struct.list_head, ptr, %struct.list_head, ptr, i32, ptr, i32, i8, ptr, [16 x i8], %struct.work_struct, i32, ptr, i32, i32, i32, i8, i32, i32, i32, i32, i32, [32 x ptr], [32 x %struct.ef4_msi_context], [2 x ptr], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [40 x i8], [128 x i32], i8, i32, i32, i8, %struct.ef4_buffer, i32, i32, %struct.delayed_work, %struct.list_head, ptr, %struct.mutex, %struct.work_struct, i8, i8, i8, ptr, i64, %struct.ef4_buffer, i64, i64, i8, i32, ptr, ptr, %struct.mdio_if_info, i32, i32, %struct.ef4_link_state, i32, i8, %union.ef4_multicast_hash, i8, i32, %struct.atomic_t, i32, i64, ptr, %struct.rw_semaphore, %struct.spinlock, ptr, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, ptr, [32 x i8], %struct.delayed_work, %struct.spinlock, i32, %struct.spinlock, %struct.atomic_t, [60 x i8] }
%struct.ef4_msi_context = type { ptr, i32, [22 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ef4_buffer = type { ptr, i32, i32 }
%struct.mdio_if_info = type { i32, i32, i32, ptr, ptr, ptr }
%struct.ef4_link_state = type { i8, i8, i8, i32 }
%union.ef4_multicast_hash = type { [2 x %union.ef4_oword] }
%union.ef4_oword = type { [2 x i64] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ef4_channel = type { ptr, i32, ptr, i8, i8, i32, i32, ptr, %struct.napi_struct, i32, %struct.ef4_special_buffer, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ef4_rx_queue, [120 x i8], [4 x %struct.ef4_tx_queue] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.ef4_special_buffer = type { %struct.ef4_buffer, i32, i32 }
%struct.ef4_rx_queue = type { ptr, i32, ptr, %struct.ef4_special_buffer, i32, i8, i8, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32 }
%struct.ef4_tx_queue = type { ptr, i32, ptr, ptr, ptr, ptr, %struct.ef4_special_buffer, i32, i8, i32, ptr, [68 x i8], i32, i32, i32, i32, i32, [108 x i8], i32, i32, i32, i32, i8, i32, i32, [100 x i8], i32, %struct.atomic_t, [120 x i8] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.132, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.149, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.132 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.149 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.152, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.152 = type { ptr }
%struct.msix_entry = type { i32, i16 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.ifreq = type { %union.anon.133, %union.anon.134 }
%union.anon.133 = type { [16 x i8] }
%union.anon.134 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }

@ef4_loopback_mode_max = dso_local constant { i32, [28 x i8] } { i32 27, [28 x i8] zeroinitializer }, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NONE\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DATAPATH\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"GMAC\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"XGMII\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"XGXS\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"XAUI\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"GMII\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SGMII\00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"XGBR\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"XFI\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"XAUI_FAR\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GMII_FAR\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SGMII_FAR\00", [22 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"XFI_FAR\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"GPHY\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PHYXS\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PCS\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PMA/PMD\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"XPORT\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"XGMII_WS\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"XAUI_WS\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"XAUI_WS_FAR\00", [20 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"XAUI_WS_NEAR\00", [19 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GMII_WS\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"XFI_WS\00", [25 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"XFI_WS_FAR\00", [21 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PHYXS_WS\00", [23 x i8] zeroinitializer }, align 32
@ef4_loopback_mode_names = dso_local constant { [27 x ptr], [52 x i8] } { [27 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], [52 x i8] zeroinitializer }, align 32
@ef4_reset_type_max = dso_local constant { i32, [28 x i8] } { i32 13, [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"INVISIBLE\00", [22 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RECOVER_OR_ALL\00", [17 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ALL\00", [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"WORLD\00", [26 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"RECOVER_OR_DISABLE\00", [45 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DISABLE\00", [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TX_WATCHDOG\00", [20 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"INT_ERROR\00", [22 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RX_RECOVERY\00", [20 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DMA_ERROR\00", [22 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TX_SKIP\00", [24 x i8] zeroinitializer }, align 32
@ef4_reset_type_names = dso_local constant { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.1, ptr @.str.32, ptr null, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], [44 x i8] zeroinitializer }, align 32
@__param_str_ef4_separate_tx_channels = internal constant [36 x i8] c"sfc_falcon.ef4_separate_tx_channels\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@ef4_separate_tx_channels = dso_local global { i8, [31 x i8] } zeroinitializer, align 32
@__param_ef4_separate_tx_channels = internal constant %struct.kernel_param { ptr @__param_str_ef4_separate_tx_channels, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.125 { ptr @ef4_separate_tx_channels } }, section "__param", align 4
@__UNIQUE_ID_ef4_separate_tx_channelstype522 = internal constant [50 x i8] c"sfc_falcon.parmtype=ef4_separate_tx_channels:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_ef4_separate_tx_channels523 = internal constant [77 x i8] c"sfc_falcon.parm=ef4_separate_tx_channels:Use separate channels for TX and RX\00", section ".modinfo", align 1
@__param_str_rss_cpus = internal constant [20 x i8] c"sfc_falcon.rss_cpus\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@rss_cpus = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_rss_cpus = internal constant %struct.kernel_param { ptr @__param_str_rss_cpus, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.125 { ptr @rss_cpus } }, section "__param", align 4
@__UNIQUE_ID_rss_cpustype524 = internal constant [34 x i8] c"sfc_falcon.parmtype=rss_cpus:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_rss_cpus525 = internal constant [72 x i8] c"sfc_falcon.parm=rss_cpus:Number of CPUs to use for Receive-Side Scaling\00", section ".modinfo", align 1
@__param_str_phy_flash_cfg = internal constant [25 x i8] c"sfc_falcon.phy_flash_cfg\00", align 1
@phy_flash_cfg = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_phy_flash_cfg = internal constant %struct.kernel_param { ptr @__param_str_phy_flash_cfg, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.125 { ptr @phy_flash_cfg } }, section "__param", align 4
@__UNIQUE_ID_phy_flash_cfgtype526 = internal constant [39 x i8] c"sfc_falcon.parmtype=phy_flash_cfg:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_phy_flash_cfg527 = internal constant [67 x i8] c"sfc_falcon.parm=phy_flash_cfg:Set PHYs into reflash mode initially\00", section ".modinfo", align 1
@__param_str_irq_adapt_low_thresh = internal constant [32 x i8] c"sfc_falcon.irq_adapt_low_thresh\00", align 1
@irq_adapt_low_thresh = internal global { i32, [28 x i8] } { i32 8000, [28 x i8] zeroinitializer }, align 32
@__param_irq_adapt_low_thresh = internal constant %struct.kernel_param { ptr @__param_str_irq_adapt_low_thresh, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.125 { ptr @irq_adapt_low_thresh } }, section "__param", align 4
@__UNIQUE_ID_irq_adapt_low_threshtype528 = internal constant [46 x i8] c"sfc_falcon.parmtype=irq_adapt_low_thresh:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_irq_adapt_low_thresh529 = internal constant [81 x i8] c"sfc_falcon.parm=irq_adapt_low_thresh:Threshold score for reducing IRQ moderation\00", section ".modinfo", align 1
@__param_str_irq_adapt_high_thresh = internal constant [33 x i8] c"sfc_falcon.irq_adapt_high_thresh\00", align 1
@irq_adapt_high_thresh = internal global { i32, [28 x i8] } { i32 16000, [28 x i8] zeroinitializer }, align 32
@__param_irq_adapt_high_thresh = internal constant %struct.kernel_param { ptr @__param_str_irq_adapt_high_thresh, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.125 { ptr @irq_adapt_high_thresh } }, section "__param", align 4
@__UNIQUE_ID_irq_adapt_high_threshtype530 = internal constant [47 x i8] c"sfc_falcon.parmtype=irq_adapt_high_thresh:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_irq_adapt_high_thresh531 = internal constant [84 x i8] c"sfc_falcon.parm=irq_adapt_high_thresh:Threshold score for increasing IRQ moderation\00", section ".modinfo", align 1
@__param_str_debug = internal constant [17 x i8] c"sfc_falcon.debug\00", align 1
@debug = internal global { i32, [28 x i8] } { i32 8439, [28 x i8] zeroinitializer }, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.125 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype532 = internal constant [31 x i8] c"sfc_falcon.parmtype=debug:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_debug533 = internal constant [63 x i8] c"sfc_falcon.parm=debug:Bitmapped debugging message enable value\00", section ".modinfo", align 1
@ef4_start_eventq.__UNIQUE_ID_ddebug538 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, i8 0, i8 94, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sfc_falcon\00", [21 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ef4_start_eventq\00", [47 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/net/ethernet/sfc/falcon/efx.c\00", [58 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"chan %d start event queue\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"unable to restart interrupts on channel reallocation\0A\00", [42 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.43 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"link up at %uMbps %s-duplex (MTU %d)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"full\00", [27 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"half\00", [27 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"link down\0A\00", [21 x i8] zeroinitializer }, align 32
@ef4_reconfigure_port.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.47 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@ef4_init_irq_moderation.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.48 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Channels are shared. RX and TX IRQ moderation must be equal\0A\00", [35 x i8] zeroinitializer }, align 32
@ef4_net_open.__UNIQUE_ID_ddebug583 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.49, ptr @.str.40, ptr @.str.50, i8 2, i8 3, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ef4_net_open\00", [19 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"opening device on CPU %d\0A\00", [38 x i8] zeroinitializer }, align 32
@ef4_net_stop.__UNIQUE_ID_ddebug584 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.51, ptr @.str.40, ptr @.str.52, i8 2, i8 9, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ef4_net_stop\00", [19 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"closing on CPU %d\0A\00", [45 x i8] zeroinitializer }, align 32
@ef4_reset_down.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ef4_reset_up.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.53 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to initialise NIC\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"could not restore PHY settings\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"resetting (%s)\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"(invalid)\00", [22 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to reset hardware\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"has been disabled\0A\00", [45 x i8] zeroinitializer }, align 32
@ef4_reset.__UNIQUE_ID_ddebug586 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.59, ptr @.str.40, ptr @.str.60, i8 2, i8 106, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ef4_reset\00", [22 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"reset complete\0A\00", [16 x i8] zeroinitializer }, align 32
@ef4_schedule_reset.__UNIQUE_ID_ddebug588 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.61, ptr @.str.40, ptr @.str.62, i8 2, i8 123, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ef4_schedule_reset\00", [45 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"recovering: skip scheduling %s reset\0A\00", [58 x i8] zeroinitializer }, align 32
@ef4_schedule_reset.__UNIQUE_ID_ddebug589 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.61, ptr @.str.40, ptr @.str.63, i8 2, i8 127, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"scheduling %s reset\0A\00", [43 x i8] zeroinitializer }, align 32
@ef4_schedule_reset.__UNIQUE_ID_ddebug590 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.61, ptr @.str.40, ptr @.str.64, i8 2, i8 -128, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"scheduling %s reset for %s\0A\00", [36 x i8] zeroinitializer }, align 32
@reset_workqueue = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_str_interrupt_mode = internal constant [26 x i8] c"sfc_falcon.interrupt_mode\00", align 1
@interrupt_mode = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_interrupt_mode = internal constant %struct.kernel_param { ptr @__param_str_interrupt_mode, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.125 { ptr @interrupt_mode } }, section "__param", align 4
@__UNIQUE_ID_interrupt_modetype598 = internal constant [40 x i8] c"sfc_falcon.parmtype=interrupt_mode:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_interrupt_mode599 = internal constant [73 x i8] c"sfc_falcon.parm=interrupt_mode:Interrupt mode (0=>MSIX 1=>MSI 2=>legacy)\00", section ".modinfo", align 1
@ef4_exit_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.40, i32 3215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016Solarflare Falcon driver unloading\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ef4_exit_module\00", [16 x i8] zeroinitializer }, align 32
@ef4_exit_module._entry_ptr = internal global ptr @ef4_exit_module._entry, section ".printk_index", align 4
@ef4_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.38, ptr @ef4_pci_table, ptr @ef4_pci_probe, ptr @ef4_pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ef4_err_handlers, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ef4_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@ef4_netdev_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @ef4_netdev_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@__initcall__kmod_sfc_falcon__600_3223_ef4_init_module6 = internal global ptr @ef4_init_module, section ".initcall6.init", align 4
@__exitcall_ef4_exit_module = internal global ptr @ef4_exit_module, section ".exitcall.exit", align 4
@__UNIQUE_ID_author601 = internal constant [88 x i8] c"sfc_falcon.author=Solarflare Communications and Michael Brown <mbrown@fensystems.co.uk>\00", section ".modinfo", align 1
@__UNIQUE_ID_description602 = internal constant [56 x i8] c"sfc_falcon.description=Solarflare Falcon network driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file603 = internal constant [59 x i8] c"sfc_falcon.file=drivers/net/ethernet/sfc/falcon/sfc-falcon\00", section ".modinfo", align 1
@__UNIQUE_ID_license604 = internal constant [23 x i8] c"sfc_falcon.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version605 = internal constant [23 x i8] c"sfc_falcon.version=4.1\00", section ".modinfo", align 1
@.str.67 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"4.1\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.67, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.38, ptr @.str.68 }, section "__modver", align 4
@.str.69 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"device is disabled due to earlier errors\0A\00", [54 x i8] zeroinitializer }, align 32
@ef4_probe_channel.__UNIQUE_ID_ddebug541 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.70, ptr @.str.40, ptr @.str.71, i8 0, i8 125, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ef4_probe_channel\00", [46 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"creating channel %d\0A\00", [43 x i8] zeroinitializer }, align 32
@ef4_probe_eventq.__UNIQUE_ID_ddebug534 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.72, ptr @.str.40, ptr @.str.73, i8 0, i8 85, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ef4_probe_eventq\00", [47 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"chan %d create event queue\0A\00", [36 x i8] zeroinitializer }, align 32
@ef4_remove_channel.__UNIQUE_ID_ddebug547 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.74, ptr @.str.40, ptr @.str.75, i8 0, i8 -70, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ef4_remove_channel\00", [45 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"destroy chan %d\0A\00", [47 x i8] zeroinitializer }, align 32
@ef4_remove_eventq.__UNIQUE_ID_ddebug540 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.76, ptr @.str.40, ptr @.str.77, i8 0, i8 103, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ef4_remove_eventq\00", [46 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"chan %d remove event queue\0A\00", [36 x i8] zeroinitializer }, align 32
@ef4_init_eventq.__UNIQUE_ID_ddebug537 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.78, ptr @.str.40, ptr @.str.79, i8 0, i8 90, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ef4_init_eventq\00", [16 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"chan %d init event queue\0A\00", [38 x i8] zeroinitializer }, align 32
@ef4_fini_eventq.__UNIQUE_ID_ddebug539 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.80, ptr @.str.40, ptr @.str.81, i8 0, i8 100, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ef4_fini_eventq\00", [16 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"chan %d fini event queue\0A\00", [38 x i8] zeroinitializer }, align 32
@ef4_start_all.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ef4_start_port.__UNIQUE_ID_ddebug556 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.82, ptr @.str.40, ptr @.str.83, i8 1, i8 14, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ef4_start_port\00", [17 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"start port\0A\00", [20 x i8] zeroinitializer }, align 32
@ef4_start_datapath.__UNIQUE_ID_ddebug544 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.84, ptr @.str.40, ptr @.str.85, i8 0, i8 -98, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ef4_start_datapath\00", [45 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"RX buf len=%u; page order=%u batch=%u\0A\00", [57 x i8] zeroinitializer }, align 32
@ef4_start_datapath.__UNIQUE_ID_ddebug545 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.84, ptr @.str.40, ptr @.str.86, i8 0, i8 -97, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"RX buf len=%u step=%u bpp=%u; page batch=%u\0A\00", [51 x i8] zeroinitializer }, align 32
@ef4_stop_all.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ef4_stop_port.__UNIQUE_ID_ddebug557 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.87, ptr @.str.40, ptr @.str.88, i8 1, i8 19, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ef4_stop_port\00", [18 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"stop port\0A\00", [21 x i8] zeroinitializer }, align 32
@ef4_stop_port.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ef4_stop_datapath.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.89 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Resetting to recover from flush failure\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to flush queues\0A\00", [40 x i8] zeroinitializer }, align 32
@ef4_stop_datapath.__UNIQUE_ID_ddebug546 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.91, ptr @.str.40, ptr @.str.92, i8 0, i8 -74, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ef4_stop_datapath\00", [46 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"successfully flushed all queues\0A\00", [63 x i8] zeroinitializer }, align 32
@ef4_pci_table = internal constant { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 6436, i32 1795, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @falcon_a1_nic_type to i32), i32 0 }, %struct.pci_device_id { i32 6436, i32 1808, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @falcon_b0_nic_type to i32), i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@ef4_err_handlers = internal constant { %struct.pci_error_handlers, [40 x i8] } { %struct.pci_error_handlers { ptr @ef4_io_error_detected, ptr null, ptr @ef4_io_slot_reset, ptr null, ptr null, ptr @ef4_io_resume }, [40 x i8] zeroinitializer }, align 32
@ef4_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ef4_pm_suspend, ptr @ef4_pm_resume, ptr @ef4_pm_freeze, ptr @ef4_pm_thaw, ptr @ef4_pm_poweroff, ptr @ef4_pm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@falcon_a1_nic_type = external dso_local constant %struct.ef4_nic_type, align 8
@falcon_b0_nic_type = external dso_local constant %struct.ef4_nic_type, align 8
@.str.93 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Solarflare NIC detected\0A\00", [39 x i8] zeroinitializer }, align 32
@ef4_pci_probe.__UNIQUE_ID_ddebug595 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.94, ptr @.str.40, ptr @.str.95, i8 2, i8 -37, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ef4_pci_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"initialisation successful\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to create MTDs (%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"PCIE error reporting unavailable (%d).\0A\00", [56 x i8] zeroinitializer }, align 32
@ef4_pci_probe.__UNIQUE_ID_ddebug596 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.94, ptr @.str.40, ptr @.str.98, i8 2, i8 -30, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"initialisation failed. rc=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@ef4_init_struct.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.99 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&efx->biu_lock\00", [17 x i8] zeroinitializer }, align 32
@ef4_init_struct.__key.100 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.101 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&efx->reset_work)\00", [60 x i8] zeroinitializer }, align 32
@ef4_init_struct.__key.102 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.103 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"(work_completion)(&(&efx->monitor_work)->work)\00", [49 x i8] zeroinitializer }, align 32
@ef4_init_struct.__key.104 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.105 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&(&efx->monitor_work)->timer\00", [35 x i8] zeroinitializer }, align 32
@ef4_init_struct.__key.106 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.107 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"(work_completion)(&(&efx->selftest_work)->work)\00", [48 x i8] zeroinitializer }, align 32
@ef4_init_struct.__key.108 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.109 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&(&efx->selftest_work)->timer\00", [34 x i8] zeroinitializer }, align 32
@ef4_init_struct.__key.110 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.111 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&efx->stats_lock\00", [47 x i8] zeroinitializer }, align 32
@ef4_init_struct.__key.112 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.113 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&efx->mac_lock\00", [17 x i8] zeroinitializer }, align 32
@ef4_dummy_phy_operations = internal constant { %struct.ef4_phy_operations, [40 x i8] } { %struct.ef4_phy_operations { ptr null, ptr @ef4_port_dummy_op_int, ptr @ef4_port_dummy_op_void, ptr null, ptr @ef4_port_dummy_op_int, ptr @ef4_port_dummy_op_poll, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ef4_init_struct.__key.114 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.115 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&efx->mac_work)\00", [62 x i8] zeroinitializer }, align 32
@ef4_init_struct.__key.116 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.117 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&efx->flush_wq\00", [17 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sfc%s\00", [26 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@ef4_default_channel_type = internal constant { %struct.ef4_channel_type, [36 x i8] } { %struct.ef4_channel_type { ptr null, ptr @ef4_channel_dummy_op_int, ptr @ef4_channel_dummy_op_void, ptr @ef4_get_channel_name, ptr @ef4_copy_channel, ptr null, i8 0 }, [36 x i8] zeroinitializer }, align 32
@ef4_alloc_channel.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.120 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"(&rx_queue->slow_fill)\00", [41 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.121 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.122 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"-rx\00", [28 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"-tx\00", [28 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s%s-%d\00", [24 x i8] zeroinitializer }, align 32
@ef4_copy_channel.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ef4_probe_vpd_strings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.126, ptr @.str.40, i32 2790, ptr @.str.127, ptr @.str.128 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Unable to read VPD\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ef4_probe_vpd_strings\00", [42 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ef4_probe_vpd_strings._entry_ptr = internal global ptr @ef4_probe_vpd_strings._entry, section ".printk_index", align 4
@.str.129 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"PN\00", [29 x i8] zeroinitializer }, align 32
@ef4_probe_vpd_strings._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.126, ptr @.str.40, i32 2797, ptr @.str.127, ptr @.str.128 }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Part number not found or incomplete\0A\00", [59 x i8] zeroinitializer }, align 32
@ef4_probe_vpd_strings._entry_ptr.132 = internal global ptr @ef4_probe_vpd_strings._entry.130, section ".printk_index", align 4
@ef4_probe_vpd_strings._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.126, ptr @.str.40, i32 2799, ptr @.str.135, ptr @.str.128 }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Part Number : %.*s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ef4_probe_vpd_strings._entry_ptr.136 = internal global ptr @ef4_probe_vpd_strings._entry.133, section ".printk_index", align 4
@.str.137 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"SN\00", [29 x i8] zeroinitializer }, align 32
@ef4_probe_vpd_strings._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.126, ptr @.str.40, i32 2804, ptr @.str.127, ptr @.str.128 }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Serial number not found or incomplete\0A\00", [57 x i8] zeroinitializer }, align 32
@ef4_probe_vpd_strings._entry_ptr.140 = internal global ptr @ef4_probe_vpd_strings._entry.138, section ".printk_index", align 4
@ef4_init_io.__UNIQUE_ID_ddebug565 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.141, ptr @.str.40, ptr @.str.142, i8 1, i8 50, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.141 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ef4_init_io\00", [20 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"initialising I/O\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to enable PCI device\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"could not find a suitable DMA mask\0A\00", [60 x i8] zeroinitializer }, align 32
@ef4_init_io.__UNIQUE_ID_ddebug566 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.141, ptr @.str.40, ptr @.str.145, i8 1, i8 57, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.145 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"using DMA mask %llx\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sfc\00", [28 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"request for memory BAR failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"could not map memory BAR at %llx+%x\0A\00", [59 x i8] zeroinitializer }, align 32
@ef4_init_io.__UNIQUE_ID_ddebug567 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.141, ptr @.str.40, ptr @.str.149, i8 1, i8 62, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.149 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"memory BAR at %llx+%x (virtual %p)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to initialise port\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to create NIC\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to create port\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to create filter tables\0A\00", [32 x i8] zeroinitializer }, align 32
@ef4_probe_nic.__UNIQUE_ID_ddebug580 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.154, ptr @.str.40, ptr @.str.155, i8 1, i8 -108, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.154 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ef4_probe_nic\00", [18 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"creating NIC\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Insufficient resources to allocate any channels\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"could not enable MSI-X\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"WARNING: Insufficient MSI-X vectors available (%d < %u).\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"WARNING: Performance may be reduced.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"could not enable MSI\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"RSS disabled due to allocation failure\0A\00", [56 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_topology = external dso_local global [4 x %struct.cpu_topology], align 4
@ef4_wanted_parallelism.__UNIQUE_ID_ddebug569 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.162, ptr @.str.40, ptr @.str.163, i8 1, i8 81, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.162 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ef4_wanted_parallelism\00", [41 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Reducing number of rx queues from %u to %u.\0A\00", [51 x i8] zeroinitializer }, align 32
@ef4_probe_port.__UNIQUE_ID_ddebug554 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.165, ptr @.str.40, ptr @.str.166, i8 1, i8 2, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.165 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ef4_probe_port\00", [17 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"create port\0A\00", [19 x i8] zeroinitializer }, align 32
@ef4_probe_filters.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.167 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&efx->filter_lock\00", [46 x i8] zeroinitializer }, align 32
@ef4_probe_filters.__key.168 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.169 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&efx->filter_sem\00", [47 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to create channel %d\0A\00", [35 x i8] zeroinitializer }, align 32
@ef4_remove_port.__UNIQUE_ID_ddebug559 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.171, ptr @.str.40, ptr @.str.172, i8 1, i8 27, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.171 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ef4_remove_port\00", [16 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"destroying port\0A\00", [47 x i8] zeroinitializer }, align 32
@ef4_remove_nic.__UNIQUE_ID_ddebug581 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.173, ptr @.str.40, ptr @.str.174, i8 1, i8 -93, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.173 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ef4_remove_nic\00", [17 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"destroying NIC\0A\00", [16 x i8] zeroinitializer }, align 32
@ef4_init_port.__UNIQUE_ID_ddebug555 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.175, ptr @.str.40, ptr @.str.176, i8 1, i8 7, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.175 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ef4_init_port\00", [18 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"init port\0A\00", [21 x i8] zeroinitializer }, align 32
@ef4_fini_port.__UNIQUE_ID_ddebug558 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.177, ptr @.str.40, ptr @.str.178, i8 1, i8 24, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.177 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ef4_fini_port\00", [18 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"shut down port\0A\00", [16 x i8] zeroinitializer }, align 32
@ef4_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @ef4_net_open, ptr @ef4_net_stop, ptr @ef4_hard_start_xmit, ptr null, ptr null, ptr null, ptr @ef4_set_rx_mode, ptr @ef4_set_mac_address, ptr @eth_validate_addr, ptr null, ptr @ef4_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @ef4_change_mtu, ptr null, ptr @ef4_watchdog, ptr @ef4_net_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ef4_setup_tc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ef4_filter_rfs, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ef4_set_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@ef4_ethtool_ops = external dso_local constant %struct.ethtool_ops, align 4
@.str.179 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"aborting probe due to scheduled reset\0A\00", [57 x i8] zeroinitializer }, align 32
@dev_attr_phy_type = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.191, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @phy_type_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to init net dev attributes\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"could not register net dev\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"invalid ethernet MAC address requested: %pM\0A\00", [51 x i8] zeroinitializer }, align 32
@ef4_change_mtu.__UNIQUE_ID_ddebug585 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.183, ptr @.str.40, ptr @.str.184, i8 2, i8 20, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.183 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ef4_change_mtu\00", [17 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"changing MTU to %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"TX stuck with port_enabled=%d: resetting channels\0A\00", [45 x i8] zeroinitializer }, align 32
@ef4_associate.__UNIQUE_ID_ddebug560 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.186, ptr @.str.40, ptr @.str.187, i8 1, i8 34, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.186 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ef4_associate\00", [18 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"adding to primary list\0A\00", [40 x i8] zeroinitializer }, align 32
@ef4_primary_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @ef4_primary_list, ptr @ef4_primary_list }, [24 x i8] zeroinitializer }, align 32
@ef4_unassociated_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @ef4_unassociated_list, ptr @ef4_unassociated_list }, [24 x i8] zeroinitializer }, align 32
@ef4_associate.__UNIQUE_ID_ddebug561 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.186, ptr @.str.40, ptr @.str.188, i8 1, i8 37, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.188 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"moving to secondary list of %s %s\0A\00", [61 x i8] zeroinitializer }, align 32
@ef4_associate.__UNIQUE_ID_ddebug562 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.186, ptr @.str.40, ptr @.str.189, i8 1, i8 40, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.189 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"adding to secondary list of %s %s\0A\00", [61 x i8] zeroinitializer }, align 32
@ef4_associate.__UNIQUE_ID_ddebug563 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.186, ptr @.str.40, ptr @.str.190, i8 1, i8 43, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.190 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"adding to unassociated list\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"phy_type\00", [23 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@ef4_dissociate.__UNIQUE_ID_ddebug564 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.193, ptr @.str.40, ptr @.str.194, i8 1, i8 46, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.193 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ef4_dissociate\00", [17 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"moving to unassociated list\0A\00", [35 x i8] zeroinitializer }, align 32
@ef4_fini_io.__UNIQUE_ID_ddebug568 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.195, ptr @.str.40, ptr @.str.196, i8 1, i8 67, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.195 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ef4_fini_io\00", [20 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"shutting down I/O\0A\00", [45 x i8] zeroinitializer }, align 32
@ef4_pci_remove.__UNIQUE_ID_ddebug594 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.197, ptr @.str.40, ptr @.str.198, i8 2, i8 -76, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.197 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ef4_pci_remove\00", [17 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"shutdown successful\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Cannot re-enable PCI device after reset.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ef4_reset failed after PCI error (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@ef4_io_resume.__UNIQUE_ID_ddebug597 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.201, ptr @.str.40, ptr @.str.202, i8 3, i8 18, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.201 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ef4_io_resume\00", [18 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Done resetting and resuming IO after PCI error.\0A\00", [47 x i8] zeroinitializer }, align 32
@ef4_init_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.203, ptr @.str.204, ptr @.str.40, i32 3187, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016Solarflare Falcon driver v4.1\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ef4_init_module\00", [16 x i8] zeroinitializer }, align 32
@ef4_init_module._entry_ptr = internal global ptr @ef4_init_module._entry, section ".printk_index", align 4
@.str.205 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sfc_reset\00", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 5]
@__sancov_gen_cov_switch_values.206 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 5]
@__sancov_gen_cov_switch_values.207 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.208 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.209 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@__sancov_gen_cov_switch_values.210 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.211 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@___asan_gen_.212 = private unnamed_addr constant [22 x i8] c"ef4_loopback_mode_max\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 37, i32 20 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 39, i32 21 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 40, i32 21 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 41, i32 21 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 42, i32 21 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 43, i32 21 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 44, i32 21 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 45, i32 21 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 46, i32 21 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 47, i32 21 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 48, i32 20 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 49, i32 24 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 50, i32 24 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 51, i32 25 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 52, i32 23 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 53, i32 21 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 54, i32 21 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 55, i32 20 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 56, i32 22 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 57, i32 21 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 58, i32 24 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 59, i32 23 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 60, i32 28 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 61, i32 28 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 62, i32 23 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 63, i32 22 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 64, i32 26 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 65, i32 24 }
@___asan_gen_.296 = private unnamed_addr constant [24 x i8] c"ef4_loopback_mode_names\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 38, i32 19 }
@___asan_gen_.299 = private unnamed_addr constant [19 x i8] c"ef4_reset_type_max\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 68, i32 20 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 70, i32 36 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 72, i32 36 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 71, i32 36 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 73, i32 36 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 74, i32 36 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 76, i32 36 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 77, i32 36 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 78, i32 36 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 79, i32 36 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 80, i32 36 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 81, i32 36 }
@___asan_gen_.335 = private unnamed_addr constant [21 x i8] c"ef4_reset_type_names\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 69, i32 19 }
@___asan_gen_.338 = private unnamed_addr constant [25 x i8] c"ef4_separate_tx_channels\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 110, i32 6 }
@___asan_gen_.341 = private unnamed_addr constant [9 x i8] c"rss_cpus\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 163, i32 21 }
@___asan_gen_.344 = private unnamed_addr constant [14 x i8] c"phy_flash_cfg\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 167, i32 13 }
@___asan_gen_.347 = private unnamed_addr constant [21 x i8] c"irq_adapt_low_thresh\00", align 1
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 171, i32 17 }
@___asan_gen_.350 = private unnamed_addr constant [22 x i8] c"irq_adapt_high_thresh\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 176, i32 17 }
@___asan_gen_.353 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 181, i32 17 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 376, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 850, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 923, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 928, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 1006, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 1920, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 2060, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 2086, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 2380, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 2394, i32 4 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 2430, i32 2 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 2438, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 2470, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 2473, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 2540, i32 3 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 2555, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 2560, i32 3 }
@___asan_gen_.437 = private unnamed_addr constant [16 x i8] c"reset_workqueue\00", align 1
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 88, i32 33 }
@___asan_gen_.440 = private unnamed_addr constant [15 x i8] c"interrupt_mode\00", align 1
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 154, i32 21 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 3215, i32 2 }
@___asan_gen_.452 = private unnamed_addr constant [15 x i8] c"ef4_pci_driver\00", align 1
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 3164, i32 26 }
@___asan_gen_.455 = private unnamed_addr constant [20 x i8] c"ef4_netdev_notifier\00", align 1
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 2248, i32 30 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 3231, i32 1 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 218, i32 3 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 499, i32 2 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 341, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 744, i32 2 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 411, i32 2 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 361, i32 2 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 402, i32 2 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 1083, i32 2 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 630, i32 3 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 635, i32 3 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 1102, i32 2 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 721, i32 3 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 725, i32 3 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 727, i32 3 }
@___asan_gen_.536 = private unnamed_addr constant [14 x i8] c"ef4_pci_table\00", align 1
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 2585, i32 35 }
@___asan_gen_.539 = private unnamed_addr constant [17 x i8] c"ef4_err_handlers\00", align 1
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 3158, i32 40 }
@___asan_gen_.542 = private unnamed_addr constant [11 x i8] c"ef4_pm_ops\00", align 1
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 3064, i32 32 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 2893, i32 2 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 2926, i32 2 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 2933, i32 3 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 2938, i32 3 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 2952, i32 2 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 2639, i32 2 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 2643, i32 2 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 2644, i32 2 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 2645, i32 2 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 2659, i32 2 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 2660, i32 2 }
@___asan_gen_.611 = private unnamed_addr constant [25 x i8] c"ef4_dummy_phy_operations\00", align 1
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 2615, i32 40 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 2663, i32 2 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 2664, i32 2 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 2679, i32 61 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 2681, i32 19 }
@___asan_gen_.632 = private unnamed_addr constant [25 x i8] c"ef4_default_channel_type\00", align 1
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 874, i32 38 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 449, i32 2 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 538, i32 10 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 540, i32 10 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 542, i32 10 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 545, i32 21 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 488, i32 2 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 2790, i32 3 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 2795, i32 11 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 2797, i32 3 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 2799, i32 3 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 2802, i32 11 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 2804, i32 3 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 1225, i32 2 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 1231, i32 3 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 1249, i32 3 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 1253, i32 2 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 1257, i32 40 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 1259, i32 3 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 1266, i32 3 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 1272, i32 2 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 2835, i32 3 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 1765, i32 3 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 1771, i32 3 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 1784, i32 3 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 1618, i32 2 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 1627, i32 4 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 1387, i32 4 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 1390, i32 4 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 1393, i32 4 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 1429, i32 4 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 1330, i32 4 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 1348, i32 3 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 1032, i32 2 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 1688, i32 2 }
@___asan_gen_.779 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 1689, i32 2 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 574, i32 4 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 1135, i32 2 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 1678, i32 2 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 1052, i32 2 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 1121, i32 2 }
@___asan_gen_.812 = private unnamed_addr constant [15 x i8] c"ef4_netdev_ops\00", align 1
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 2211, i32 36 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 2283, i32 3 }
@___asan_gen_.818 = private unnamed_addr constant [18 x i8] c"dev_attr_phy_type\00", align 1
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 2313, i32 3 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 2326, i32 2 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 2153, i32 3 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 2129, i32 2 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 2111, i32 2 }
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 1163, i32 3 }
@___asan_gen_.845 = private unnamed_addr constant [17 x i8] c"ef4_primary_list\00", align 1
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 1146, i32 8 }
@___asan_gen_.848 = private unnamed_addr constant [22 x i8] c"ef4_unassociated_list\00", align 1
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 1147, i32 8 }
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 1170, i32 5 }
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 1184, i32 5 }
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 1195, i32 3 }
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 2258, i32 8 }
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 2256, i32 22 }
@___asan_gen_.871 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 1210, i32 3 }
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 1293, i32 2 }
@___asan_gen_.883 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 2770, i32 2 }
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 3119, i32 3 }
@___asan_gen_.889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 3140, i32 3 }
@___asan_gen_.895 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 3144, i32 3 }
@___asan_gen_.896 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.904 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 3187, i32 2 }
@___asan_gen_.905 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.906 = private constant [41 x i8] c"../drivers/net/ethernet/sfc/falcon/efx.c\00", align 1
@___asan_gen_.907 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.906, i32 3193, i32 20 }
@llvm.compiler.used = appending global [268 x ptr] [ptr @__UNIQUE_ID_author601, ptr @__UNIQUE_ID_debug533, ptr @__UNIQUE_ID_debugtype532, ptr @__UNIQUE_ID_description602, ptr @__UNIQUE_ID_ef4_separate_tx_channels523, ptr @__UNIQUE_ID_ef4_separate_tx_channelstype522, ptr @__UNIQUE_ID_file603, ptr @__UNIQUE_ID_interrupt_mode599, ptr @__UNIQUE_ID_interrupt_modetype598, ptr @__UNIQUE_ID_irq_adapt_high_thresh531, ptr @__UNIQUE_ID_irq_adapt_high_threshtype530, ptr @__UNIQUE_ID_irq_adapt_low_thresh529, ptr @__UNIQUE_ID_irq_adapt_low_threshtype528, ptr @__UNIQUE_ID_license604, ptr @__UNIQUE_ID_phy_flash_cfg527, ptr @__UNIQUE_ID_phy_flash_cfgtype526, ptr @__UNIQUE_ID_rss_cpus525, ptr @__UNIQUE_ID_rss_cpustype524, ptr @__UNIQUE_ID_version605, ptr @__exitcall_ef4_exit_module, ptr @__initcall__kmod_sfc_falcon__600_3223_ef4_init_module6, ptr @__modver_attr, ptr @__param_debug, ptr @__param_ef4_separate_tx_channels, ptr @__param_interrupt_mode, ptr @__param_irq_adapt_high_thresh, ptr @__param_irq_adapt_low_thresh, ptr @__param_phy_flash_cfg, ptr @__param_rss_cpus, ptr @ef4_exit_module, ptr @ef4_exit_module._entry, ptr @ef4_exit_module._entry_ptr, ptr @ef4_init_module._entry, ptr @ef4_init_module._entry_ptr, ptr @ef4_probe_vpd_strings._entry, ptr @ef4_probe_vpd_strings._entry.130, ptr @ef4_probe_vpd_strings._entry.133, ptr @ef4_probe_vpd_strings._entry.138, ptr @ef4_probe_vpd_strings._entry_ptr, ptr @ef4_probe_vpd_strings._entry_ptr.132, ptr @ef4_probe_vpd_strings._entry_ptr.136, ptr @ef4_probe_vpd_strings._entry_ptr.140, ptr @ef4_loopback_mode_max, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @ef4_loopback_mode_names, ptr @ef4_reset_type_max, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @ef4_reset_type_names, ptr @ef4_separate_tx_channels, ptr @rss_cpus, ptr @phy_flash_cfg, ptr @irq_adapt_low_thresh, ptr @irq_adapt_high_thresh, ptr @debug, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @reset_workqueue, ptr @interrupt_mode, ptr @.str.65, ptr @.str.66, ptr @ef4_pci_driver, ptr @ef4_netdev_notifier, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @ef4_pci_table, ptr @ef4_err_handlers, ptr @ef4_pm_ops, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @ef4_init_struct.__key, ptr @.str.99, ptr @ef4_init_struct.__key.100, ptr @.str.101, ptr @ef4_init_struct.__key.102, ptr @.str.103, ptr @ef4_init_struct.__key.104, ptr @.str.105, ptr @ef4_init_struct.__key.106, ptr @.str.107, ptr @ef4_init_struct.__key.108, ptr @.str.109, ptr @ef4_init_struct.__key.110, ptr @.str.111, ptr @ef4_init_struct.__key.112, ptr @.str.113, ptr @ef4_dummy_phy_operations, ptr @ef4_init_struct.__key.114, ptr @.str.115, ptr @ef4_init_struct.__key.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @ef4_default_channel_type, ptr @ef4_alloc_channel.__key, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @ef4_copy_channel.__key, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.131, ptr @.str.134, ptr @.str.135, ptr @.str.137, ptr @.str.139, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.165, ptr @.str.166, ptr @ef4_probe_filters.__key, ptr @.str.167, ptr @ef4_probe_filters.__key.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @ef4_netdev_ops, ptr @.str.179, ptr @dev_attr_phy_type, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @ef4_primary_list, ptr @ef4_unassociated_list, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205], section "llvm.metadata"
@0 = internal global [232 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ef4_loopback_mode_max to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ef4_loopback_mode_names to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ef4_reset_type_max to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ef4_reset_type_names to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ef4_separate_tx_channels to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rss_cpus to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_flash_cfg to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_adapt_low_thresh to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_adapt_high_thresh to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset_workqueue to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @interrupt_mode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ef4_exit_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ef4_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ef4_netdev_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ef4_pci_table to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ef4_err_handlers to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ef4_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ef4_init_struct.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ef4_init_struct.__key.100 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ef4_init_struct.__key.102 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ef4_init_struct.__key.104 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ef4_init_struct.__key.106 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ef4_init_struct.__key.108 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ef4_init_struct.__key.110 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ef4_init_struct.__key.112 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ef4_dummy_phy_operations to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ef4_init_struct.__key.114 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ef4_init_struct.__key.116 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ef4_default_channel_type to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ef4_alloc_channel.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ef4_copy_channel.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ef4_probe_vpd_strings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ef4_probe_vpd_strings._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ef4_probe_vpd_strings._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ef4_probe_vpd_strings._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ef4_probe_filters.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ef4_probe_filters.__key.168 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ef4_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_phy_type to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ef4_primary_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ef4_unassociated_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ef4_init_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ef4_start_eventq(ptr noundef %channel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 128
  %msg_enable = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 8
  %and = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body1

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end9

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_start_eventq.__UNIQUE_ID_ddebug538, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_start_eventq, %if.then5)) #22
          to label %do.end9 [label %if.then5], !srcloc !536

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #24
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %channel, align 128
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %5, i32 0, i32 69
  %6 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net_dev, align 4
  %channel7 = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 1
  %8 = ptrtoint ptr %channel7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel7, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_start_eventq.__UNIQUE_ID_ddebug538, ptr noundef %7, ptr noundef nonnull @.str.41, i32 noundef %9) #22
  br label %do.end9

do.end9:                                          ; preds = %if.then5, %do.body1, %entry.do.end9_crit_edge
  %enabled = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 4
  %10 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %enabled, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !537
  %napi_str = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 8
  tail call void @napi_enable(ptr noundef %napi_str) #22
  %11 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %channel, align 128
  %type.i = getelementptr inbounds %struct.ef4_nic, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %type.i, align 4
  %ev_read_ack.i = getelementptr inbounds %struct.ef4_nic_type, ptr %14, i32 0, i32 56
  %15 = ptrtoint ptr %ev_read_ack.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ev_read_ack.i, align 8
  tail call void %16(ptr noundef %channel) #22
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ef4_stop_eventq(ptr noundef %channel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 4
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 1, !range !538
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %napi_str = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 8
  tail call void @napi_disable(ptr noundef %napi_str) #22
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %enabled, align 1
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ef4_realloc_channels(ptr noundef %efx, i32 noundef %rxq_entries, i32 noundef %txq_entries) local_unnamed_addr #0 align 64 {
entry:
  %other_channel = alloca [32 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %other_channel) #22
  %0 = call ptr @memset(ptr %other_channel, i32 255, i32 128)
  %state.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 21
  %1 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state.i, align 4
  %3 = and i32 %2, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %switch.i = icmp eq i32 %3, 2
  br i1 %switch.i, label %do.body.i, label %if.end

do.body.i:                                        ; preds = %entry
  %msg_enable.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %4 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable.i, align 8
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.cleanup170_crit_edge, label %if.then3.i

do.body.i.cleanup170_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup170

if.then3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #24
  %net_dev.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %6 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net_dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %7, ptr noundef nonnull @.str.69) #25
  br label %cleanup170

if.end:                                           ; preds = %entry
  %channel1 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 23
  %8 = ptrtoint ptr %channel1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %channel1, align 4
  %tobool2.not300 = icmp eq ptr %9, null
  br i1 %tobool2.not300, label %if.end.for.end60_crit_edge, label %for.body.lr.ph

if.end.for.end60_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end60

for.body.lr.ph:                                   ; preds = %if.end
  %n_channels = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 36
  %10 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n_channels, align 4
  br label %for.body

for.body:                                         ; preds = %cond.end58.for.body_crit_edge, %for.body.lr.ph
  %channel.0302 = phi ptr [ %9, %for.body.lr.ph ], [ %52, %cond.end58.for.body_crit_edge ]
  %next_buffer_table.0301 = phi i32 [ 0, %for.body.lr.ph ], [ %next_buffer_table.5, %cond.end58.for.body_crit_edge ]
  %type = getelementptr inbounds %struct.ef4_channel, ptr %channel.0302, i32 0, i32 2
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %type, align 8
  %copy = getelementptr inbounds %struct.ef4_channel_type, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %copy to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %copy, align 4
  %tobool3.not = icmp eq ptr %15, null
  br i1 %tobool3.not, label %if.end5, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end5:                                          ; preds = %for.body
  %index = getelementptr inbounds %struct.ef4_channel, ptr %channel.0302, i32 0, i32 10, i32 1
  %16 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %index, align 4
  %entries = getelementptr inbounds %struct.ef4_channel, ptr %channel.0302, i32 0, i32 10, i32 2
  %18 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %entries, align 4
  %add = add i32 %19, %17
  %20 = tail call i32 @llvm.umax.i32(i32 %next_buffer_table.0301, i32 %add)
  %core_index.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.0302, i32 0, i32 30, i32 1
  %21 = ptrtoint ptr %core_index.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %core_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.i = icmp slt i32 %22, 0
  %rx_queue9 = getelementptr inbounds %struct.ef4_channel, ptr %channel.0302, i32 0, i32 30
  %tobool11.not290 = icmp eq ptr %rx_queue9, null
  %or.cond = select i1 %cmp.i, i1 true, i1 %tobool11.not290
  br i1 %or.cond, label %if.end5.if.end23_crit_edge, label %for.body12

if.end5.if.end23_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end23

for.body12:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #24
  %index13 = getelementptr inbounds %struct.ef4_channel, ptr %channel.0302, i32 0, i32 30, i32 3, i32 1
  %23 = ptrtoint ptr %index13 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %index13, align 4
  %entries15 = getelementptr inbounds %struct.ef4_channel, ptr %channel.0302, i32 0, i32 30, i32 3, i32 2
  %25 = ptrtoint ptr %entries15 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %entries15, align 4
  %add16 = add i32 %26, %24
  %27 = tail call i32 @llvm.umax.i32(i32 %20, i32 %add16)
  br label %if.end23

if.end23:                                         ; preds = %for.body12, %if.end5.if.end23_crit_edge
  %next_buffer_table.2 = phi i32 [ %20, %if.end5.if.end23_crit_edge ], [ %27, %for.body12 ]
  %channel1.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.0302, i32 0, i32 1
  %28 = ptrtoint ptr %channel1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %channel1.i, align 4
  %30 = ptrtoint ptr %channel.0302 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %channel.0302, align 128
  %tx_channel_offset.i = getelementptr inbounds %struct.ef4_nic, ptr %31, i32 0, i32 39
  %32 = ptrtoint ptr %tx_channel_offset.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tx_channel_offset.i, align 32
  %sub.i = sub i32 %29, %33
  %n_tx_channels.i = getelementptr inbounds %struct.ef4_nic, ptr %31, i32 0, i32 40
  %34 = ptrtoint ptr %n_tx_channels.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %n_tx_channels.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %35)
  %cmp.i275 = icmp ult i32 %sub.i, %35
  br i1 %cmp.i275, label %if.else26, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.else26:                                        ; preds = %if.end23
  %tx_queue27 = getelementptr inbounds %struct.ef4_channel, ptr %channel.0302, i32 0, i32 32
  %add.ptr = getelementptr %struct.ef4_channel, ptr %channel.0302, i32 1
  %cmp31293 = icmp ult ptr %tx_queue27, %add.ptr
  br i1 %cmp31293, label %if.else26.land.rhs_crit_edge, label %if.else26.cleanup_crit_edge

if.else26.cleanup_crit_edge:                      ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.else26.land.rhs_crit_edge:                     ; preds = %if.else26
  br label %land.rhs

land.rhs:                                         ; preds = %for.body33.land.rhs_crit_edge, %if.else26.land.rhs_crit_edge
  %tx_queue.0296 = phi ptr [ %incdec.ptr, %for.body33.land.rhs_crit_edge ], [ %tx_queue27, %if.else26.land.rhs_crit_edge ]
  %next_buffer_table.3294 = phi i32 [ %48, %for.body33.land.rhs_crit_edge ], [ %next_buffer_table.2, %if.else26.land.rhs_crit_edge ]
  %36 = ptrtoint ptr %tx_queue.0296 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tx_queue.0296, align 128
  %net_dev.i276 = getelementptr inbounds %struct.ef4_nic, ptr %37, i32 0, i32 69
  %38 = ptrtoint ptr %net_dev.i276 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %net_dev.i276, align 4
  %num_tc.i = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 140
  %40 = ptrtoint ptr %num_tc.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %num_tc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %41)
  %cmp.i277 = icmp slt i16 %41, 2
  br i1 %cmp.i277, label %ef4_tx_queue_used.exit, label %land.rhs.for.body33_crit_edge

land.rhs.for.body33_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body33

ef4_tx_queue_used.exit:                           ; preds = %land.rhs
  %queue.i = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue.0296, i32 0, i32 1
  %42 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %queue.i, align 4
  %and.i278 = and i32 %43, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i278)
  %tobool.i = icmp eq i32 %and.i278, 0
  br i1 %tobool.i, label %ef4_tx_queue_used.exit.for.body33_crit_edge, label %ef4_tx_queue_used.exit.cleanup_crit_edge

ef4_tx_queue_used.exit.cleanup_crit_edge:         ; preds = %ef4_tx_queue_used.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

ef4_tx_queue_used.exit.for.body33_crit_edge:      ; preds = %ef4_tx_queue_used.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body33

for.body33:                                       ; preds = %ef4_tx_queue_used.exit.for.body33_crit_edge, %land.rhs.for.body33_crit_edge
  %index34 = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue.0296, i32 0, i32 6, i32 1
  %44 = ptrtoint ptr %index34 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %index34, align 4
  %entries36 = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue.0296, i32 0, i32 6, i32 2
  %46 = ptrtoint ptr %entries36 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %entries36, align 8
  %add37 = add i32 %47, %45
  %48 = tail call i32 @llvm.umax.i32(i32 %next_buffer_table.3294, i32 %add37)
  %incdec.ptr = getelementptr %struct.ef4_tx_queue, ptr %tx_queue.0296, i32 1
  %cmp31 = icmp ult ptr %incdec.ptr, %add.ptr
  br i1 %cmp31, label %for.body33.land.rhs_crit_edge, label %for.body33.cleanup_crit_edge

for.body33.cleanup_crit_edge:                     ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

for.body33.land.rhs_crit_edge:                    ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #24
  br label %land.rhs

cleanup:                                          ; preds = %for.body33.cleanup_crit_edge, %ef4_tx_queue_used.exit.cleanup_crit_edge, %if.else26.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %next_buffer_table.5 = phi i32 [ %next_buffer_table.0301, %for.body.cleanup_crit_edge ], [ %next_buffer_table.2, %if.end23.cleanup_crit_edge ], [ %next_buffer_table.2, %if.else26.cleanup_crit_edge ], [ %next_buffer_table.3294, %ef4_tx_queue_used.exit.cleanup_crit_edge ], [ %48, %for.body33.cleanup_crit_edge ]
  %channel49 = getelementptr inbounds %struct.ef4_channel, ptr %channel.0302, i32 0, i32 1
  %49 = ptrtoint ptr %channel49 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %channel49, align 4
  %add50 = add i32 %50, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add50, i32 %11)
  %cmp51 = icmp ult i32 %add50, %11
  br i1 %cmp51, label %cond.end58, label %cleanup.for.end60_crit_edge

cleanup.for.end60_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end60

cond.end58:                                       ; preds = %cleanup
  %arrayidx56 = getelementptr %struct.ef4_nic, ptr %efx, i32 0, i32 23, i32 %add50
  %51 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx56, align 4
  %tobool2.not = icmp eq ptr %52, null
  br i1 %tobool2.not, label %cond.end58.for.end60_crit_edge, label %cond.end58.for.body_crit_edge

cond.end58.for.body_crit_edge:                    ; preds = %cond.end58
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body

cond.end58.for.end60_crit_edge:                   ; preds = %cond.end58
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end60

for.end60:                                        ; preds = %cond.end58.for.end60_crit_edge, %cleanup.for.end60_crit_edge, %if.end.for.end60_crit_edge
  %next_buffer_table.0.lcssa = phi i32 [ 0, %if.end.for.end60_crit_edge ], [ %next_buffer_table.5, %cond.end58.for.end60_crit_edge ], [ %next_buffer_table.5, %cleanup.for.end60_crit_edge ]
  %net_dev.i279 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %53 = ptrtoint ptr %net_dev.i279 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %net_dev.i279, align 4
  tail call fastcc void @local_bh_disable() #22
  tail call void @netif_tx_lock(ptr noundef %54) #22
  tail call void @netif_device_detach(ptr noundef %54) #22
  tail call void @netif_tx_unlock(ptr noundef %54) #22
  tail call fastcc void @local_bh_enable() #22
  tail call fastcc void @ef4_stop_all(ptr noundef %efx)
  tail call fastcc void @ef4_soft_disable_interrupts(ptr noundef %efx)
  %55 = call ptr @memset(ptr %other_channel, i32 0, i32 128)
  %n_channels63 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 36
  %56 = ptrtoint ptr %n_channels63 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %n_channels63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp64306.not = icmp eq i32 %57, 0
  br i1 %cmp64306.not, label %for.end81.thread, label %for.end60.for.body65_crit_edge

for.end60.for.body65_crit_edge:                   ; preds = %for.end60
  br label %for.body65

for.end81.thread:                                 ; preds = %for.end60
  call void @__sanitizer_cov_trace_pc() #24
  %rxq_entries82319 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 26
  %58 = ptrtoint ptr %rxq_entries82319 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rxq_entries82319, align 4
  %txq_entries83320 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 27
  %60 = ptrtoint ptr %txq_entries83320 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %txq_entries83320, align 16
  store i32 %rxq_entries, ptr %rxq_entries82319, align 4
  store i32 %txq_entries, ptr %txq_entries83320, align 16
  br label %for.end98thread-pre-split

for.body65:                                       ; preds = %if.end78.for.body65_crit_edge, %for.end60.for.body65_crit_edge
  %i.0307 = phi i32 [ %inc, %if.end78.for.body65_crit_edge ], [ 0, %for.end60.for.body65_crit_edge ]
  %arrayidx67 = getelementptr %struct.ef4_nic, ptr %efx, i32 0, i32 23, i32 %i.0307
  %62 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx67, align 4
  %type68 = getelementptr inbounds %struct.ef4_channel, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %type68 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %type68, align 8
  %copy69 = getelementptr inbounds %struct.ef4_channel_type, ptr %65, i32 0, i32 4
  %66 = ptrtoint ptr %copy69 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %copy69, align 4
  %tobool70.not = icmp eq ptr %67, null
  br i1 %tobool70.not, label %for.body65.if.end75_crit_edge, label %if.then71

for.body65.if.end75_crit_edge:                    ; preds = %for.body65
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end75

if.then71:                                        ; preds = %for.body65
  call void @__sanitizer_cov_trace_pc() #24
  %call74 = tail call ptr %67(ptr noundef %63) #22
  br label %if.end75

if.end75:                                         ; preds = %if.then71, %for.body65.if.end75_crit_edge
  %channel.1 = phi ptr [ %call74, %if.then71 ], [ %63, %for.body65.if.end75_crit_edge ]
  %tobool76.not = icmp eq ptr %channel.1, null
  br i1 %tobool76.not, label %if.end75.outthread-pre-split_crit_edge, label %if.end78

if.end75.outthread-pre-split_crit_edge:           ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #24
  br label %outthread-pre-split

if.end78:                                         ; preds = %if.end75
  %arrayidx79 = getelementptr [32 x ptr], ptr %other_channel, i32 0, i32 %i.0307
  %68 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %channel.1, ptr %arrayidx79, align 4
  %inc = add nuw i32 %i.0307, 1
  %69 = ptrtoint ptr %n_channels63 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %n_channels63, align 4
  %cmp64 = icmp ult i32 %inc, %70
  br i1 %cmp64, label %if.end78.for.body65_crit_edge, label %for.end81

if.end78.for.body65_crit_edge:                    ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body65

for.end81:                                        ; preds = %if.end78
  %rxq_entries82 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 26
  %71 = ptrtoint ptr %rxq_entries82 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %rxq_entries82, align 4
  %txq_entries83 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 27
  %73 = ptrtoint ptr %txq_entries83 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %txq_entries83, align 16
  store i32 %rxq_entries, ptr %rxq_entries82, align 4
  store i32 %txq_entries, ptr %txq_entries83, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp88308.not = icmp eq i32 %70, 0
  br i1 %cmp88308.not, label %for.end81.for.end98thread-pre-split_crit_edge, label %for.end81.do.body_crit_edge

for.end81.do.body_crit_edge:                      ; preds = %for.end81
  br label %do.body

for.end81.for.end98thread-pre-split_crit_edge:    ; preds = %for.end81
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end98thread-pre-split

do.body:                                          ; preds = %do.body.do.body_crit_edge, %for.end81.do.body_crit_edge
  %i.1309 = phi i32 [ %inc97, %do.body.do.body_crit_edge ], [ 0, %for.end81.do.body_crit_edge ]
  %arrayidx91 = getelementptr %struct.ef4_nic, ptr %efx, i32 0, i32 23, i32 %i.1309
  %75 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx91, align 4
  %arrayidx92 = getelementptr [32 x ptr], ptr %other_channel, i32 0, i32 %i.1309
  %77 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx92, align 4
  store ptr %78, ptr %arrayidx91, align 4
  store ptr %76, ptr %arrayidx92, align 4
  %inc97 = add nuw i32 %i.1309, 1
  %79 = ptrtoint ptr %n_channels63 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %n_channels63, align 4
  %cmp88 = icmp ult i32 %inc97, %80
  br i1 %cmp88, label %do.body.do.body_crit_edge, label %do.body.for.end98_crit_edge

do.body.for.end98_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end98

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body

for.end98thread-pre-split:                        ; preds = %for.end81.for.end98thread-pre-split_crit_edge, %for.end81.thread
  %.ph = phi i32 [ %74, %for.end81.for.end98thread-pre-split_crit_edge ], [ %61, %for.end81.thread ]
  %txq_entries83323.ph = phi ptr [ %txq_entries83, %for.end81.for.end98thread-pre-split_crit_edge ], [ %txq_entries83320, %for.end81.thread ]
  %.ph324 = phi i32 [ %72, %for.end81.for.end98thread-pre-split_crit_edge ], [ %59, %for.end81.thread ]
  %rxq_entries82322.ph = phi ptr [ %rxq_entries82, %for.end81.for.end98thread-pre-split_crit_edge ], [ %rxq_entries82319, %for.end81.thread ]
  %81 = ptrtoint ptr %n_channels63 to i32
  call void @__asan_load4_noabort(i32 %81)
  %.pr = load i32, ptr %n_channels63, align 4
  br label %for.end98

for.end98:                                        ; preds = %for.end98thread-pre-split, %do.body.for.end98_crit_edge
  %82 = phi i32 [ %.pr, %for.end98thread-pre-split ], [ %80, %do.body.for.end98_crit_edge ]
  %83 = phi i32 [ %.ph, %for.end98thread-pre-split ], [ %74, %do.body.for.end98_crit_edge ]
  %txq_entries83323 = phi ptr [ %txq_entries83323.ph, %for.end98thread-pre-split ], [ %txq_entries83, %do.body.for.end98_crit_edge ]
  %84 = phi i32 [ %.ph324, %for.end98thread-pre-split ], [ %72, %do.body.for.end98_crit_edge ]
  %rxq_entries82322 = phi ptr [ %rxq_entries82322.ph, %for.end98thread-pre-split ], [ %rxq_entries82, %do.body.for.end98_crit_edge ]
  %next_buffer_table99 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 33
  %85 = ptrtoint ptr %next_buffer_table99 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %next_buffer_table.0.lcssa, ptr %next_buffer_table99, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp102310.not = icmp eq i32 %82, 0
  br i1 %cmp102310.not, label %for.end98.outthread-pre-split_crit_edge, label %for.end98.for.body103_crit_edge

for.end98.for.body103_crit_edge:                  ; preds = %for.end98
  br label %for.body103

for.end98.outthread-pre-split_crit_edge:          ; preds = %for.end98
  call void @__sanitizer_cov_trace_pc() #24
  br label %outthread-pre-split

for.body103:                                      ; preds = %for.inc117.for.body103_crit_edge, %for.end98.for.body103_crit_edge
  %i.2311 = phi i32 [ %inc118, %for.inc117.for.body103_crit_edge ], [ 0, %for.end98.for.body103_crit_edge ]
  %arrayidx105 = getelementptr %struct.ef4_nic, ptr %efx, i32 0, i32 23, i32 %i.2311
  %86 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx105, align 4
  %type106 = getelementptr inbounds %struct.ef4_channel, ptr %87, i32 0, i32 2
  %88 = ptrtoint ptr %type106 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %type106, align 8
  %copy107 = getelementptr inbounds %struct.ef4_channel_type, ptr %89, i32 0, i32 4
  %90 = ptrtoint ptr %copy107 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %copy107, align 4
  %tobool108.not = icmp eq ptr %91, null
  br i1 %tobool108.not, label %for.body103.for.inc117_crit_edge, label %if.end110

for.body103.for.inc117_crit_edge:                 ; preds = %for.body103
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc117

if.end110:                                        ; preds = %for.body103
  %call111 = tail call fastcc i32 @ef4_probe_channel(ptr noundef %87)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %if.end114, label %rollback

if.end114:                                        ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #24
  %92 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx105, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %93, align 128
  %net_dev.i280 = getelementptr inbounds %struct.ef4_nic, ptr %95, i32 0, i32 69
  %96 = ptrtoint ptr %net_dev.i280 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %net_dev.i280, align 4
  %napi_dev.i = getelementptr inbounds %struct.ef4_channel, ptr %93, i32 0, i32 7
  %98 = ptrtoint ptr %napi_dev.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %97, ptr %napi_dev.i, align 8
  %napi_str.i = getelementptr inbounds %struct.ef4_channel, ptr %93, i32 0, i32 8
  tail call void @netif_napi_add(ptr noundef %97, ptr noundef %napi_str.i, ptr noundef nonnull @ef4_poll, i32 noundef 64) #22
  br label %for.inc117

for.inc117:                                       ; preds = %if.end114, %for.body103.for.inc117_crit_edge
  %inc118 = add nuw i32 %i.2311, 1
  %99 = ptrtoint ptr %n_channels63 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %n_channels63, align 4
  %cmp102 = icmp ult i32 %inc118, %100
  br i1 %cmp102, label %for.inc117.for.body103_crit_edge, label %for.inc117.out_crit_edge

for.inc117.out_crit_edge:                         ; preds = %for.inc117
  call void @__sanitizer_cov_trace_pc() #24
  br label %out

for.inc117.for.body103_crit_edge:                 ; preds = %for.inc117
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body103

outthread-pre-split:                              ; preds = %for.end98.outthread-pre-split_crit_edge, %if.end75.outthread-pre-split_crit_edge
  %rc.2.ph = phi i32 [ 0, %for.end98.outthread-pre-split_crit_edge ], [ -12, %if.end75.outthread-pre-split_crit_edge ]
  %101 = ptrtoint ptr %n_channels63 to i32
  call void @__asan_load4_noabort(i32 %101)
  %.pr325 = load i32, ptr %n_channels63, align 4
  br label %out

out:                                              ; preds = %do.body157.out_crit_edge, %outthread-pre-split, %for.inc117.out_crit_edge
  %102 = phi i32 [ %.pr325, %outthread-pre-split ], [ %129, %do.body157.out_crit_edge ], [ %100, %for.inc117.out_crit_edge ]
  %rc.2 = phi i32 [ %rc.2.ph, %outthread-pre-split ], [ %call111, %do.body157.out_crit_edge ], [ 0, %for.inc117.out_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %cmp122314.not = icmp eq i32 %102, 0
  br i1 %cmp122314.not, label %out.for.end133_crit_edge, label %out.for.body123_crit_edge

out.for.body123_crit_edge:                        ; preds = %out
  br label %for.body123

out.for.end133_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end133

for.body123:                                      ; preds = %for.inc131.for.body123_crit_edge, %out.for.body123_crit_edge
  %i.3315 = phi i32 [ %inc132, %for.inc131.for.body123_crit_edge ], [ 0, %out.for.body123_crit_edge ]
  %arrayidx124 = getelementptr [32 x ptr], ptr %other_channel, i32 0, i32 %i.3315
  %103 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %arrayidx124, align 4
  %tobool125.not = icmp eq ptr %104, null
  br i1 %tobool125.not, label %for.body123.for.inc131_crit_edge, label %land.lhs.true

for.body123.for.inc131_crit_edge:                 ; preds = %for.body123
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc131

land.lhs.true:                                    ; preds = %for.body123
  %type126 = getelementptr inbounds %struct.ef4_channel, ptr %104, i32 0, i32 2
  %105 = ptrtoint ptr %type126 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %type126, align 8
  %copy127 = getelementptr inbounds %struct.ef4_channel_type, ptr %106, i32 0, i32 4
  %107 = ptrtoint ptr %copy127 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %copy127, align 4
  %tobool128.not = icmp eq ptr %108, null
  br i1 %tobool128.not, label %land.lhs.true.for.inc131_crit_edge, label %if.then129

land.lhs.true.for.inc131_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc131

if.then129:                                       ; preds = %land.lhs.true
  %napi_dev.i281 = getelementptr inbounds %struct.ef4_channel, ptr %104, i32 0, i32 7
  %109 = ptrtoint ptr %napi_dev.i281 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %napi_dev.i281, align 8
  %tobool.not.i282 = icmp eq ptr %110, null
  br i1 %tobool.not.i282, label %if.then129.ef4_fini_napi_channel.exit_crit_edge, label %if.then.i

if.then129.ef4_fini_napi_channel.exit_crit_edge:  ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #24
  br label %ef4_fini_napi_channel.exit

if.then.i:                                        ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #24
  %napi_str.i283 = getelementptr inbounds %struct.ef4_channel, ptr %104, i32 0, i32 8
  tail call void @__netif_napi_del(ptr noundef %napi_str.i283) #22
  tail call void @synchronize_net() #22
  br label %ef4_fini_napi_channel.exit

ef4_fini_napi_channel.exit:                       ; preds = %if.then.i, %if.then129.ef4_fini_napi_channel.exit_crit_edge
  %111 = ptrtoint ptr %napi_dev.i281 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr null, ptr %napi_dev.i281, align 8
  tail call fastcc void @ef4_remove_channel(ptr noundef nonnull %104)
  tail call void @kfree(ptr noundef nonnull %104) #22
  br label %for.inc131

for.inc131:                                       ; preds = %ef4_fini_napi_channel.exit, %land.lhs.true.for.inc131_crit_edge, %for.body123.for.inc131_crit_edge
  %inc132 = add nuw i32 %i.3315, 1
  %112 = ptrtoint ptr %n_channels63 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %n_channels63, align 4
  %cmp122 = icmp ult i32 %inc132, %113
  br i1 %cmp122, label %for.inc131.for.body123_crit_edge, label %for.inc131.for.end133_crit_edge

for.inc131.for.end133_crit_edge:                  ; preds = %for.inc131
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end133

for.inc131.for.body123_crit_edge:                 ; preds = %for.inc131
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body123

for.end133:                                       ; preds = %rollback.for.end133_crit_edge, %for.inc131.for.end133_crit_edge, %out.for.end133_crit_edge
  %rc.2328 = phi i32 [ %rc.2, %out.for.end133_crit_edge ], [ %call111, %rollback.for.end133_crit_edge ], [ %rc.2, %for.inc131.for.end133_crit_edge ]
  %call134 = tail call fastcc i32 @ef4_soft_enable_interrupts(ptr noundef %efx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %if.else148, label %if.then136

if.then136:                                       ; preds = %for.end133
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.2328)
  %tobool137.not = icmp eq i32 %rc.2328, 0
  %call134.rc.2 = select i1 %tobool137.not, i32 %call134, i32 %rc.2328
  %msg_enable = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %114 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %msg_enable, align 8
  %and = and i32 %115, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool143.not = icmp eq i32 %and, 0
  br i1 %tobool143.not, label %if.then136.do.end147_crit_edge, label %if.then144

if.then136.do.end147_crit_edge:                   ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end147

if.then144:                                       ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #24
  %116 = ptrtoint ptr %net_dev.i279 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %net_dev.i279, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %117, ptr noundef nonnull @.str.42) #25
  br label %do.end147

do.end147:                                        ; preds = %if.then144, %if.then136.do.end147_crit_edge
  tail call void @ef4_schedule_reset(ptr noundef %efx, i32 noundef 6)
  br label %cleanup170

if.else148:                                       ; preds = %for.end133
  call void @__sanitizer_cov_trace_pc() #24
  tail call fastcc void @ef4_start_all(ptr noundef %efx)
  %118 = ptrtoint ptr %net_dev.i279 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %net_dev.i279, align 4
  tail call void @netif_device_attach(ptr noundef %119) #22
  br label %cleanup170

rollback:                                         ; preds = %if.end110
  %120 = ptrtoint ptr %rxq_entries82322 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %84, ptr %rxq_entries82322, align 4
  %121 = ptrtoint ptr %txq_entries83323 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %83, ptr %txq_entries83323, align 16
  %122 = ptrtoint ptr %n_channels63 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %n_channels63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %cmp155312.not = icmp eq i32 %123, 0
  br i1 %cmp155312.not, label %rollback.for.end133_crit_edge, label %rollback.do.body157_crit_edge

rollback.do.body157_crit_edge:                    ; preds = %rollback
  br label %do.body157

rollback.for.end133_crit_edge:                    ; preds = %rollback
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end133

do.body157:                                       ; preds = %do.body157.do.body157_crit_edge, %rollback.do.body157_crit_edge
  %i.4313 = phi i32 [ %inc168, %do.body157.do.body157_crit_edge ], [ 0, %rollback.do.body157_crit_edge ]
  %arrayidx160 = getelementptr %struct.ef4_nic, ptr %efx, i32 0, i32 23, i32 %i.4313
  %124 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %arrayidx160, align 4
  %arrayidx161 = getelementptr [32 x ptr], ptr %other_channel, i32 0, i32 %i.4313
  %126 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %arrayidx161, align 4
  store ptr %127, ptr %arrayidx160, align 4
  store ptr %125, ptr %arrayidx161, align 4
  %inc168 = add nuw i32 %i.4313, 1
  %128 = ptrtoint ptr %n_channels63 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %n_channels63, align 4
  %cmp155 = icmp ult i32 %inc168, %129
  br i1 %cmp155, label %do.body157.do.body157_crit_edge, label %do.body157.out_crit_edge

do.body157.out_crit_edge:                         ; preds = %do.body157
  call void @__sanitizer_cov_trace_pc() #24
  br label %out

do.body157.do.body157_crit_edge:                  ; preds = %do.body157
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body157

cleanup170:                                       ; preds = %if.else148, %do.end147, %if.then3.i, %do.body.i.cleanup170_crit_edge
  %retval.0 = phi i32 [ %call134.rc.2, %do.end147 ], [ %rc.2328, %if.else148 ], [ -5, %do.body.i.cleanup170_crit_edge ], [ -5, %if.then3.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %other_channel) #22
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ef4_stop_all(ptr noundef %efx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 21
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %.off = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %if.then, label %entry.do.end46_crit_edge

entry.do.end46_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end46

if.then:                                          ; preds = %entry
  %call = tail call i32 @rtnl_is_locked() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %if.then.do.end46_crit_edge

if.then.do.end46_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end46

land.rhs:                                         ; preds = %if.then
  %.b109 = load i1, ptr @ef4_stop_all.__already_done, align 1
  br i1 %.b109, label %land.rhs.do.end46_crit_edge, label %if.then14, !prof !539

land.rhs.do.end46_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end46

if.then14:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @ef4_stop_all.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 1846, i32 noundef 9, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.40, i32 noundef 1846) #22
  br label %do.end46

do.end46:                                         ; preds = %if.then14, %land.rhs.do.end46_crit_edge, %if.then.do.end46_crit_edge, %entry.do.end46_crit_edge
  %port_enabled = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 66
  %2 = ptrtoint ptr %port_enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %port_enabled, align 8, !range !538
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool47.not = icmp eq i8 %3, 0
  br i1 %tobool47.not, label %do.end46.return_crit_edge, label %if.end49

do.end46.return_crit_edge:                        ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #24
  br label %return

if.end49:                                         ; preds = %do.end46
  %type = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 6
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %type, align 4
  %pull_stats = getelementptr inbounds %struct.ef4_nic_type, ptr %5, i32 0, i32 22
  %6 = ptrtoint ptr %pull_stats to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pull_stats, align 8
  tail call void %7(ptr noundef %efx) #22
  %stats_lock = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 105
  tail call void @_raw_spin_lock_bh(ptr noundef %stats_lock) #22
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %type, align 4
  %update_stats = getelementptr inbounds %struct.ef4_nic_type, ptr %9, i32 0, i32 20
  %10 = ptrtoint ptr %update_stats to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %update_stats, align 8
  %call51 = tail call i32 %11(ptr noundef %efx, ptr noundef null, ptr noundef null) #22
  tail call void @_raw_spin_unlock_bh(ptr noundef %stats_lock) #22
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %type, align 4
  %stop_stats = getelementptr inbounds %struct.ef4_nic_type, ptr %13, i32 0, i32 23
  %14 = ptrtoint ptr %stop_stats to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %stop_stats, align 4
  tail call void %15(ptr noundef %efx) #22
  tail call fastcc void @ef4_stop_port(ptr noundef %efx)
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %16 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %net_dev, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end49.if.end81_crit_edge, label %land.rhs56

if.end49.if.end81_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end81

land.rhs56:                                       ; preds = %if.end49
  %20 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %state.i, align 4
  %22 = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.i111.not = icmp eq i32 %22, 0
  br i1 %tobool.i111.not, label %land.rhs56.if.end81_crit_edge, label %do.end75, !prof !539

land.rhs56.if.end81_crit_edge:                    ; preds = %land.rhs56
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end81

do.end75:                                         ; preds = %land.rhs56
  call void @__sanitizer_cov_trace_pc() #24
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 1867, i32 noundef 9, ptr noundef null) #22
  br label %if.end81

if.end81:                                         ; preds = %do.end75, %land.rhs56.if.end81_crit_edge, %if.end49.if.end81_crit_edge
  %23 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %net_dev, align 4
  tail call fastcc void @local_bh_disable() #22
  %25 = tail call i32 @llvm.read_register.i32(metadata !526) #22
  %and.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i to ptr
  %cpu1.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %cpu1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cpu1.i, align 4
  %tx_global_lock.i = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 108
  tail call void @_raw_spin_lock(ptr noundef %tx_global_lock.i) #22
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 104
  %29 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp13.not.i = icmp eq i32 %30, 0
  br i1 %cmp13.not.i, label %if.end81.netif_tx_disable.exit_crit_edge, label %for.body.lr.ph.i

if.end81.netif_tx_disable.exit_crit_edge:         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #24
  br label %netif_tx_disable.exit

for.body.lr.ph.i:                                 ; preds = %if.end81
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 103
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %31 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %_tx.i.i, align 128
  %_xmit_lock.i.i = getelementptr %struct.netdev_queue, ptr %32, i32 %i.014.i, i32 10
  tail call void @_raw_spin_lock(ptr noundef %_xmit_lock.i.i) #22
  %xmit_lock_owner.i.i = getelementptr %struct.netdev_queue, ptr %32, i32 %i.014.i, i32 11
  %33 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile i32 %28, ptr %xmit_lock_owner.i.i, align 4
  %state.i.i = getelementptr %struct.netdev_queue, ptr %32, i32 %i.014.i, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #22
  %34 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile i32 -1, ptr %xmit_lock_owner.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %_xmit_lock.i.i) #22
  %inc.i = add nuw i32 %i.014.i, 1
  %35 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %36
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.netif_tx_disable.exit_crit_edge

for.body.i.netif_tx_disable.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %netif_tx_disable.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body.i

netif_tx_disable.exit:                            ; preds = %for.body.i.netif_tx_disable.exit_crit_edge, %if.end81.netif_tx_disable.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %tx_global_lock.i) #22
  tail call fastcc void @local_bh_enable() #22
  tail call fastcc void @ef4_stop_datapath(ptr noundef %efx)
  br label %return

return:                                           ; preds = %netif_tx_disable.exit, %do.end46.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ef4_soft_disable_interrupts(ptr nocapture noundef %efx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 21
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end:                                           ; preds = %entry
  %irq_soft_enabled = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 57
  %2 = ptrtoint ptr %irq_soft_enabled to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %irq_soft_enabled, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !540
  %legacy_irq = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 7
  %3 = ptrtoint ptr %legacy_irq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %legacy_irq, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @synchronize_irq(i32 noundef %4) #22
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %channel7 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 23
  %5 = ptrtoint ptr %channel7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %channel7, align 4
  %tobool8.not37 = icmp eq ptr %6, null
  br i1 %tobool8.not37, label %if.end6.cleanup_crit_edge, label %for.body.lr.ph

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end6
  %n_channels = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 36
  br label %for.body

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %for.body.lr.ph
  %channel.038 = phi ptr [ %6, %for.body.lr.ph ], [ %40, %cond.end.for.body_crit_edge ]
  %irq = getelementptr inbounds %struct.ef4_channel, ptr %channel.038, i32 0, i32 5
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool9.not = icmp eq i32 %8, 0
  br i1 %tobool9.not, label %for.body.if.end12_crit_edge, label %if.then10

for.body.if.end12_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end12

if.then10:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @synchronize_irq(i32 noundef %8) #22
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %for.body.if.end12_crit_edge
  %enabled.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.038, i32 0, i32 4
  %9 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %enabled.i, align 1, !range !538
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %if.end12.ef4_stop_eventq.exit_crit_edge, label %if.end.i

if.end12.ef4_stop_eventq.exit_crit_edge:          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #24
  br label %ef4_stop_eventq.exit

if.end.i:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #24
  %napi_str.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.038, i32 0, i32 8
  tail call void @napi_disable(ptr noundef %napi_str.i) #22
  %11 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %enabled.i, align 1
  br label %ef4_stop_eventq.exit

ef4_stop_eventq.exit:                             ; preds = %if.end.i, %if.end12.ef4_stop_eventq.exit_crit_edge
  %type = getelementptr inbounds %struct.ef4_channel, ptr %channel.038, i32 0, i32 2
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %type, align 8
  %keep_eventq = getelementptr inbounds %struct.ef4_channel_type, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %keep_eventq to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %keep_eventq, align 4, !range !538
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool13.not = icmp eq i8 %15, 0
  br i1 %tobool13.not, label %if.then14, label %ef4_stop_eventq.exit.for.inc_crit_edge

ef4_stop_eventq.exit.for.inc_crit_edge:           ; preds = %ef4_stop_eventq.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc

if.then14:                                        ; preds = %ef4_stop_eventq.exit
  %eventq_init.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.038, i32 0, i32 3
  %16 = ptrtoint ptr %eventq_init.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %eventq_init.i, align 4, !range !538
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i36 = icmp eq i8 %17, 0
  br i1 %tobool.not.i36, label %if.then14.for.inc_crit_edge, label %do.body.i

if.then14.for.inc_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc

do.body.i:                                        ; preds = %if.then14
  %18 = ptrtoint ptr %channel.038 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %channel.038, align 128
  %msg_enable.i = getelementptr inbounds %struct.ef4_nic, ptr %19, i32 0, i32 20
  %20 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %msg_enable.i, align 8
  %and.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %do.body.i.do.end12.i_crit_edge, label %do.body3.i

do.body.i.do.end12.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end12.i

do.body3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_fini_eventq.__UNIQUE_ID_ddebug539, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_soft_disable_interrupts, %if.then7.i)) #22
          to label %do.end12.i [label %if.then7.i], !srcloc !536

if.then7.i:                                       ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #24
  %22 = ptrtoint ptr %channel.038 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %channel.038, align 128
  %net_dev.i = getelementptr inbounds %struct.ef4_nic, ptr %23, i32 0, i32 69
  %24 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %net_dev.i, align 4
  %channel9.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.038, i32 0, i32 1
  %26 = ptrtoint ptr %channel9.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %channel9.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_fini_eventq.__UNIQUE_ID_ddebug539, ptr noundef %25, ptr noundef nonnull @.str.81, i32 noundef %27) #22
  br label %do.end12.i

do.end12.i:                                       ; preds = %if.then7.i, %do.body3.i, %do.body.i.do.end12.i_crit_edge
  %28 = ptrtoint ptr %channel.038 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %channel.038, align 128
  %type.i.i = getelementptr inbounds %struct.ef4_nic, ptr %29, i32 0, i32 6
  %30 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %type.i.i, align 4
  %ev_fini.i.i = getelementptr inbounds %struct.ef4_nic_type, ptr %31, i32 0, i32 53
  %32 = ptrtoint ptr %ev_fini.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ev_fini.i.i, align 4
  tail call void %33(ptr noundef nonnull %channel.038) #22
  %34 = ptrtoint ptr %eventq_init.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %eventq_init.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %do.end12.i, %if.then14.for.inc_crit_edge, %ef4_stop_eventq.exit.for.inc_crit_edge
  %channel16 = getelementptr inbounds %struct.ef4_channel, ptr %channel.038, i32 0, i32 1
  %35 = ptrtoint ptr %channel16 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %channel16, align 4
  %add = add i32 %36, 1
  %37 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %n_channels, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %38)
  %cmp17 = icmp ult i32 %add, %38
  br i1 %cmp17, label %cond.end, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

cond.end:                                         ; preds = %for.inc
  %arrayidx21 = getelementptr %struct.ef4_nic, ptr %efx, i32 0, i32 23, i32 %add
  %39 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx21, align 4
  %tobool8.not = icmp eq ptr %40, null
  br i1 %tobool8.not, label %cond.end.cleanup_crit_edge, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

cleanup:                                          ; preds = %cond.end.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ef4_probe_channel(ptr noundef %channel) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 128
  %msg_enable = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 8
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.body1

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end10

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_probe_channel.__UNIQUE_ID_ddebug541, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_probe_channel, %if.then5)) #22
          to label %do.end10 [label %if.then5], !srcloc !536

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #24
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %channel, align 128
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %5, i32 0, i32 69
  %6 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net_dev, align 4
  %channel7 = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 1
  %8 = ptrtoint ptr %channel7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel7, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_probe_channel.__UNIQUE_ID_ddebug541, ptr noundef %7, ptr noundef nonnull @.str.71, i32 noundef %9) #22
  br label %do.end10

do.end10:                                         ; preds = %if.then5, %do.body1, %entry.do.end10_crit_edge
  %type = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 2
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %type, align 8
  %pre_probe = getelementptr inbounds %struct.ef4_channel_type, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %pre_probe to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pre_probe, align 4
  %call11 = tail call i32 %13(ptr noundef %channel) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %do.end10.fail_crit_edge

do.end10.fail_crit_edge:                          ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #24
  br label %fail

if.end14:                                         ; preds = %do.end10
  %14 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %channel, align 128
  %msg_enable.i = getelementptr inbounds %struct.ef4_nic, ptr %15, i32 0, i32 20
  %16 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %msg_enable.i, align 8
  %and.i = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end14.cond.false48.i_crit_edge, label %do.body2.i

if.end14.cond.false48.i_crit_edge:                ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #24
  br label %cond.false48.i

do.body2.i:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_probe_eventq.__UNIQUE_ID_ddebug534, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_probe_channel, %if.then6.i)) #22
          to label %cond.false48.i [label %if.then6.i], !srcloc !536

if.then6.i:                                       ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #24
  %net_dev.i = getelementptr inbounds %struct.ef4_nic, ptr %15, i32 0, i32 69
  %18 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %net_dev.i, align 4
  %channel7.i = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 1
  %20 = ptrtoint ptr %channel7.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %channel7.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_probe_eventq.__UNIQUE_ID_ddebug534, ptr noundef %19, ptr noundef nonnull @.str.73, i32 noundef %21) #22
  br label %cond.false48.i

cond.false48.i:                                   ; preds = %if.then6.i, %do.body2.i, %if.end14.cond.false48.i_crit_edge
  %txq_entries.i = getelementptr inbounds %struct.ef4_nic, ptr %15, i32 0, i32 27
  %22 = ptrtoint ptr %txq_entries.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %txq_entries.i, align 16
  %rxq_entries.i = getelementptr inbounds %struct.ef4_nic, ptr %15, i32 0, i32 26
  %24 = ptrtoint ptr %rxq_entries.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rxq_entries.i, align 4
  %add.i = add i32 %23, %25
  %sub.i88.i = add i32 %add.i, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i88.i)
  %tobool.not.i.i.i.i = icmp eq i32 %sub.i88.i, 0
  br i1 %tobool.not.i.i.i.i, label %cond.false48.i.ef4_probe_eventq.exit_crit_edge, label %cond.end54.i

cond.false48.i.ef4_probe_eventq.exit_crit_edge:   ; preds = %cond.false48.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %ef4_probe_eventq.exit

cond.end54.i:                                     ; preds = %cond.false48.i
  call void @__sanitizer_cov_trace_pc() #24
  %26 = tail call i32 @llvm.ctlz.i32(i32 %sub.i88.i, i1 true) #22, !range !541
  %sub.i.i.i.i = sub nuw nsw i32 32, %26
  %cond55.i = shl nuw i32 1, %sub.i.i.i.i
  %27 = tail call i32 @llvm.umax.i32(i32 %cond55.i, i32 512) #22
  %phi.bo.i = add i32 %27, -1
  br label %ef4_probe_eventq.exit

ef4_probe_eventq.exit:                            ; preds = %cond.end54.i, %cond.false48.i.ef4_probe_eventq.exit_crit_edge
  %28 = phi i32 [ 511, %cond.false48.i.ef4_probe_eventq.exit_crit_edge ], [ %phi.bo.i, %cond.end54.i ]
  %eventq_mask.i = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 11
  %29 = ptrtoint ptr %eventq_mask.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %eventq_mask.i, align 8
  %30 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %channel, align 128
  %type.i.i = getelementptr inbounds %struct.ef4_nic, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %type.i.i, align 4
  %ev_probe.i.i = getelementptr inbounds %struct.ef4_nic_type, ptr %33, i32 0, i32 51
  %34 = ptrtoint ptr %ev_probe.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ev_probe.i.i, align 4
  %call.i.i = tail call i32 %35(ptr noundef %channel) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool16.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool16.not, label %if.end18, label %ef4_probe_eventq.exit.fail_crit_edge

ef4_probe_eventq.exit.fail_crit_edge:             ; preds = %ef4_probe_eventq.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %fail

if.end18:                                         ; preds = %ef4_probe_eventq.exit
  %channel1.i = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 1
  %36 = ptrtoint ptr %channel1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %channel1.i, align 4
  %38 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %channel, align 128
  %tx_channel_offset.i = getelementptr inbounds %struct.ef4_nic, ptr %39, i32 0, i32 39
  %40 = ptrtoint ptr %tx_channel_offset.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tx_channel_offset.i, align 32
  %sub.i65 = sub i32 %37, %41
  %n_tx_channels.i = getelementptr inbounds %struct.ef4_nic, ptr %39, i32 0, i32 40
  %42 = ptrtoint ptr %n_tx_channels.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %n_tx_channels.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i65, i32 %43)
  %cmp.i66 = icmp ult i32 %sub.i65, %43
  br i1 %cmp.i66, label %if.else, label %if.end18.if.end29_crit_edge

if.end18.if.end29_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end29

if.else:                                          ; preds = %if.end18
  %tx_queue21 = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 32
  %add.ptr = getelementptr %struct.ef4_channel, ptr %channel, i32 1
  %cmp73 = icmp ult ptr %tx_queue21, %add.ptr
  br i1 %cmp73, label %if.else.land.rhs_crit_edge, label %if.else.if.end29_crit_edge

if.else.if.end29_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end29

if.else.land.rhs_crit_edge:                       ; preds = %if.else
  br label %land.rhs

for.cond:                                         ; preds = %for.body
  %incdec.ptr = getelementptr %struct.ef4_tx_queue, ptr %tx_queue.074, i32 1
  %cmp = icmp ult ptr %incdec.ptr, %add.ptr
  br i1 %cmp, label %for.cond.land.rhs_crit_edge, label %for.cond.if.end29_crit_edge

for.cond.if.end29_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end29

for.cond.land.rhs_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #24
  br label %land.rhs

land.rhs:                                         ; preds = %for.cond.land.rhs_crit_edge, %if.else.land.rhs_crit_edge
  %tx_queue.074 = phi ptr [ %incdec.ptr, %for.cond.land.rhs_crit_edge ], [ %tx_queue21, %if.else.land.rhs_crit_edge ]
  %44 = ptrtoint ptr %tx_queue.074 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tx_queue.074, align 128
  %net_dev.i67 = getelementptr inbounds %struct.ef4_nic, ptr %45, i32 0, i32 69
  %46 = ptrtoint ptr %net_dev.i67 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %net_dev.i67, align 4
  %num_tc.i = getelementptr inbounds %struct.net_device, ptr %47, i32 0, i32 140
  %48 = ptrtoint ptr %num_tc.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %num_tc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %49)
  %cmp.i68 = icmp slt i16 %49, 2
  br i1 %cmp.i68, label %ef4_tx_queue_used.exit, label %land.rhs.for.body_crit_edge

land.rhs.for.body_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body

ef4_tx_queue_used.exit:                           ; preds = %land.rhs
  %queue.i = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue.074, i32 0, i32 1
  %50 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %queue.i, align 4
  %and.i69 = and i32 %51, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i69)
  %tobool.i = icmp eq i32 %and.i69, 0
  br i1 %tobool.i, label %ef4_tx_queue_used.exit.for.body_crit_edge, label %ef4_tx_queue_used.exit.if.end29_crit_edge

ef4_tx_queue_used.exit.if.end29_crit_edge:        ; preds = %ef4_tx_queue_used.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end29

ef4_tx_queue_used.exit.for.body_crit_edge:        ; preds = %ef4_tx_queue_used.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body

for.body:                                         ; preds = %ef4_tx_queue_used.exit.for.body_crit_edge, %land.rhs.for.body_crit_edge
  %call25 = tail call i32 @ef4_probe_tx_queue(ptr noundef %tx_queue.074) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %for.cond, label %for.body.fail_crit_edge

for.body.fail_crit_edge:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %fail

if.end29:                                         ; preds = %ef4_tx_queue_used.exit.if.end29_crit_edge, %for.cond.if.end29_crit_edge, %if.else.if.end29_crit_edge, %if.end18.if.end29_crit_edge
  %core_index.i = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 30, i32 1
  %52 = ptrtoint ptr %core_index.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %core_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %53)
  %cmp.i70 = icmp sgt i32 %53, -1
  br i1 %cmp.i70, label %if.else32, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.else32:                                        ; preds = %if.end29
  %rx_queue33 = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 30
  br label %for.cond34

for.cond34:                                       ; preds = %for.body36.for.cond34_crit_edge, %if.else32
  %rx_queue.0 = phi ptr [ %rx_queue33, %if.else32 ], [ null, %for.body36.for.cond34_crit_edge ]
  %tobool35.not = icmp eq ptr %rx_queue.0, null
  br i1 %tobool35.not, label %for.cond34.cleanup_crit_edge, label %for.body36

for.cond34.cleanup_crit_edge:                     ; preds = %for.cond34
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

for.body36:                                       ; preds = %for.cond34
  %call37 = tail call i32 @ef4_probe_rx_queue(ptr noundef nonnull %rx_queue.0) #22
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %for.body36.for.cond34_crit_edge, label %for.body36.fail_crit_edge

for.body36.fail_crit_edge:                        ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #24
  br label %fail

for.body36.for.cond34_crit_edge:                  ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.cond34

fail:                                             ; preds = %for.body36.fail_crit_edge, %for.body.fail_crit_edge, %ef4_probe_eventq.exit.fail_crit_edge, %do.end10.fail_crit_edge
  %rc.0 = phi i32 [ %call11, %do.end10.fail_crit_edge ], [ %call.i.i, %ef4_probe_eventq.exit.fail_crit_edge ], [ %call37, %for.body36.fail_crit_edge ], [ %call25, %for.body.fail_crit_edge ]
  tail call fastcc void @ef4_remove_channel(ptr noundef %channel)
  br label %cleanup

cleanup:                                          ; preds = %fail, %for.cond34.cleanup_crit_edge, %if.end29.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %fail ], [ 0, %if.end29.cleanup_crit_edge ], [ 0, %for.cond34.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ef4_remove_channel(ptr noundef %channel) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 128
  %msg_enable = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 8
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.body1

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end10

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_remove_channel.__UNIQUE_ID_ddebug547, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_remove_channel, %if.then5)) #22
          to label %do.end10 [label %if.then5], !srcloc !536

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #24
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %channel, align 128
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %5, i32 0, i32 69
  %6 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net_dev, align 4
  %channel7 = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 1
  %8 = ptrtoint ptr %channel7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel7, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_remove_channel.__UNIQUE_ID_ddebug547, ptr noundef %7, ptr noundef nonnull @.str.75, i32 noundef %9) #22
  br label %do.end10

do.end10:                                         ; preds = %if.then5, %do.body1, %entry.do.end10_crit_edge
  %core_index.i = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 30, i32 1
  %10 = ptrtoint ptr %core_index.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %core_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp.i = icmp sgt i32 %11, -1
  br i1 %cmp.i, label %if.else, label %do.end10.if.end15_crit_edge

do.end10.if.end15_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end15

if.else:                                          ; preds = %do.end10
  %rx_queue13 = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 30
  %tobool14.not42 = icmp eq ptr %rx_queue13, null
  br i1 %tobool14.not42, label %if.else.if.end15_crit_edge, label %for.body

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end15

for.body:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @ef4_remove_rx_queue(ptr noundef nonnull %rx_queue13) #22
  br label %if.end15

if.end15:                                         ; preds = %for.body, %if.else.if.end15_crit_edge, %do.end10.if.end15_crit_edge
  %channel1.i = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 1
  %12 = ptrtoint ptr %channel1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %channel1.i, align 4
  %14 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %channel, align 128
  %tx_channel_offset.i = getelementptr inbounds %struct.ef4_nic, ptr %15, i32 0, i32 39
  %16 = ptrtoint ptr %tx_channel_offset.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_channel_offset.i, align 32
  %sub.i = sub i32 %13, %17
  %n_tx_channels.i = getelementptr inbounds %struct.ef4_nic, ptr %15, i32 0, i32 40
  %18 = ptrtoint ptr %n_tx_channels.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %n_tx_channels.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %19)
  %cmp.i40 = icmp ult i32 %sub.i, %19
  br i1 %cmp.i40, label %if.else18, label %if.end15.if.end26_crit_edge

if.end15.if.end26_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end26

if.else18:                                        ; preds = %if.end15
  %tx_queue19 = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 32
  %add.ptr = getelementptr %struct.ef4_channel, ptr %channel, i32 1
  %cmp44 = icmp ult ptr %tx_queue19, %add.ptr
  br i1 %cmp44, label %if.else18.for.body23_crit_edge, label %if.else18.if.end26_crit_edge

if.else18.if.end26_crit_edge:                     ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end26

if.else18.for.body23_crit_edge:                   ; preds = %if.else18
  br label %for.body23

for.body23:                                       ; preds = %for.body23.for.body23_crit_edge, %if.else18.for.body23_crit_edge
  %tx_queue.045 = phi ptr [ %incdec.ptr, %for.body23.for.body23_crit_edge ], [ %tx_queue19, %if.else18.for.body23_crit_edge ]
  tail call void @ef4_remove_tx_queue(ptr noundef %tx_queue.045) #22
  %incdec.ptr = getelementptr %struct.ef4_tx_queue, ptr %tx_queue.045, i32 1
  %cmp = icmp ult ptr %incdec.ptr, %add.ptr
  br i1 %cmp, label %for.body23.for.body23_crit_edge, label %for.body23.if.end26_crit_edge

for.body23.if.end26_crit_edge:                    ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end26

for.body23.for.body23_crit_edge:                  ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body23

if.end26:                                         ; preds = %for.body23.if.end26_crit_edge, %if.else18.if.end26_crit_edge, %if.end15.if.end26_crit_edge
  %20 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %channel, align 128
  %msg_enable.i = getelementptr inbounds %struct.ef4_nic, ptr %21, i32 0, i32 20
  %22 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %msg_enable.i, align 8
  %and.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end26.ef4_remove_eventq.exit_crit_edge, label %do.body1.i

if.end26.ef4_remove_eventq.exit_crit_edge:        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #24
  br label %ef4_remove_eventq.exit

do.body1.i:                                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_remove_eventq.__UNIQUE_ID_ddebug540, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_remove_channel, %if.then5.i)) #22
          to label %ef4_remove_eventq.exit [label %if.then5.i], !srcloc !536

if.then5.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #24
  %24 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %channel, align 128
  %net_dev.i = getelementptr inbounds %struct.ef4_nic, ptr %25, i32 0, i32 69
  %26 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %net_dev.i, align 4
  %28 = ptrtoint ptr %channel1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %channel1.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_remove_eventq.__UNIQUE_ID_ddebug540, ptr noundef %27, ptr noundef nonnull @.str.77, i32 noundef %29) #22
  br label %ef4_remove_eventq.exit

ef4_remove_eventq.exit:                           ; preds = %if.then5.i, %do.body1.i, %if.end26.ef4_remove_eventq.exit_crit_edge
  %30 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %channel, align 128
  %type.i.i = getelementptr inbounds %struct.ef4_nic, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %type.i.i, align 4
  %ev_remove.i.i = getelementptr inbounds %struct.ef4_nic_type, ptr %33, i32 0, i32 54
  %34 = ptrtoint ptr %ev_remove.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ev_remove.i.i, align 8
  tail call void %35(ptr noundef %channel) #22
  %type = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 2
  %36 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %type, align 8
  %post_remove = getelementptr inbounds %struct.ef4_channel_type, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %post_remove to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %post_remove, align 4
  tail call void %39(ptr noundef %channel) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ef4_soft_enable_interrupts(ptr nocapture noundef %efx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 21
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %do.body2, label %do.end7, !prof !542

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/sfc/falcon/efx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1468, 0\0A.popsection", ""() #22, !srcloc !543
  unreachable

do.end7:                                          ; preds = %entry
  %irq_soft_enabled = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 57
  %2 = ptrtoint ptr %irq_soft_enabled to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %irq_soft_enabled, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !544
  %channel14 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 23
  %3 = ptrtoint ptr %channel14 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %channel14, align 4
  %tobool15.not96 = icmp eq ptr %4, null
  br i1 %tobool15.not96, label %do.end7.cleanup_crit_edge, label %for.body.lr.ph

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end7
  %n_channels = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 36
  br label %for.body

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %for.body.lr.ph
  %channel.097 = phi ptr [ %4, %for.body.lr.ph ], [ %51, %cond.end.for.body_crit_edge ]
  %type = getelementptr inbounds %struct.ef4_channel, ptr %channel.097, i32 0, i32 2
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %type, align 8
  %keep_eventq = getelementptr inbounds %struct.ef4_channel_type, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %keep_eventq to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %keep_eventq, align 4, !range !538
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool16.not = icmp eq i8 %8, 0
  br i1 %tobool16.not, label %if.then17, label %for.body.if.end21_crit_edge

for.body.if.end21_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end21

if.then17:                                        ; preds = %for.body
  %9 = ptrtoint ptr %channel.097 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %channel.097, align 128
  %msg_enable.i = getelementptr inbounds %struct.ef4_nic, ptr %10, i32 0, i32 20
  %11 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %msg_enable.i, align 8
  %and.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then17.do.end13.i_crit_edge, label %do.body3.i

if.then17.do.end13.i_crit_edge:                   ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end13.i

do.body3.i:                                       ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_init_eventq.__UNIQUE_ID_ddebug537, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_soft_enable_interrupts, %if.then7.i)) #22
          to label %do.end13.i [label %if.then7.i], !srcloc !536

if.then7.i:                                       ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #24
  %net_dev.i = getelementptr inbounds %struct.ef4_nic, ptr %10, i32 0, i32 69
  %13 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %net_dev.i, align 4
  %channel8.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.097, i32 0, i32 1
  %15 = ptrtoint ptr %channel8.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %channel8.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_init_eventq.__UNIQUE_ID_ddebug537, ptr noundef %14, ptr noundef nonnull @.str.79, i32 noundef %16) #22
  br label %do.end13.i

do.end13.i:                                       ; preds = %if.then7.i, %do.body3.i, %if.then17.do.end13.i_crit_edge
  %17 = ptrtoint ptr %channel.097 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %channel.097, align 128
  %type.i.i = getelementptr inbounds %struct.ef4_nic, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %type.i.i, align 4
  %ev_init.i.i = getelementptr inbounds %struct.ef4_nic_type, ptr %20, i32 0, i32 52
  %21 = ptrtoint ptr %ev_init.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ev_init.i.i, align 8
  %call.i.i = tail call i32 %22(ptr noundef nonnull %channel.097) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i, label %ef4_init_eventq.exit.thread, label %fail

ef4_init_eventq.exit.thread:                      ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #24
  %type.i = getelementptr inbounds %struct.ef4_nic, ptr %10, i32 0, i32 6
  %23 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %type.i, align 4
  %push_irq_moderation.i = getelementptr inbounds %struct.ef4_nic_type, ptr %24, i32 0, i32 25
  %25 = ptrtoint ptr %push_irq_moderation.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %push_irq_moderation.i, align 4
  tail call void %26(ptr noundef nonnull %channel.097) #22
  %eventq_read_ptr.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.097, i32 0, i32 12
  %27 = ptrtoint ptr %eventq_read_ptr.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %eventq_read_ptr.i, align 4
  %eventq_init.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.097, i32 0, i32 3
  %28 = ptrtoint ptr %eventq_init.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %eventq_init.i, align 4
  br label %if.end21

if.end21:                                         ; preds = %ef4_init_eventq.exit.thread, %for.body.if.end21_crit_edge
  %29 = ptrtoint ptr %channel.097 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %channel.097, align 128
  %msg_enable.i78 = getelementptr inbounds %struct.ef4_nic, ptr %30, i32 0, i32 20
  %31 = ptrtoint ptr %msg_enable.i78 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %msg_enable.i78, align 8
  %and.i79 = and i32 %32, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i79)
  %tobool.not.i80 = icmp eq i32 %and.i79, 0
  br i1 %tobool.not.i80, label %if.end21.ef4_start_eventq.exit_crit_edge, label %do.body1.i

if.end21.ef4_start_eventq.exit_crit_edge:         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #24
  br label %ef4_start_eventq.exit

do.body1.i:                                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_start_eventq.__UNIQUE_ID_ddebug538, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_soft_enable_interrupts, %if.then5.i)) #22
          to label %ef4_start_eventq.exit [label %if.then5.i], !srcloc !536

if.then5.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #24
  %33 = ptrtoint ptr %channel.097 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %channel.097, align 128
  %net_dev.i81 = getelementptr inbounds %struct.ef4_nic, ptr %34, i32 0, i32 69
  %35 = ptrtoint ptr %net_dev.i81 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %net_dev.i81, align 4
  %channel7.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.097, i32 0, i32 1
  %37 = ptrtoint ptr %channel7.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %channel7.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_start_eventq.__UNIQUE_ID_ddebug538, ptr noundef %36, ptr noundef nonnull @.str.41, i32 noundef %38) #22
  br label %ef4_start_eventq.exit

ef4_start_eventq.exit:                            ; preds = %if.then5.i, %do.body1.i, %if.end21.ef4_start_eventq.exit_crit_edge
  %enabled.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.097, i32 0, i32 4
  %39 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %enabled.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !537
  %napi_str.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.097, i32 0, i32 8
  tail call void @napi_enable(ptr noundef %napi_str.i) #22
  %40 = ptrtoint ptr %channel.097 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %channel.097, align 128
  %type.i.i82 = getelementptr inbounds %struct.ef4_nic, ptr %41, i32 0, i32 6
  %42 = ptrtoint ptr %type.i.i82 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %type.i.i82, align 4
  %ev_read_ack.i.i = getelementptr inbounds %struct.ef4_nic_type, ptr %43, i32 0, i32 56
  %44 = ptrtoint ptr %ev_read_ack.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ev_read_ack.i.i, align 8
  tail call void %45(ptr noundef nonnull %channel.097) #22
  %channel22 = getelementptr inbounds %struct.ef4_channel, ptr %channel.097, i32 0, i32 1
  %46 = ptrtoint ptr %channel22 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %channel22, align 4
  %add = add i32 %47, 1
  %48 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %n_channels, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %49)
  %cmp23 = icmp ult i32 %add, %49
  br i1 %cmp23, label %cond.end, label %ef4_start_eventq.exit.cleanup_crit_edge

ef4_start_eventq.exit.cleanup_crit_edge:          ; preds = %ef4_start_eventq.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

cond.end:                                         ; preds = %ef4_start_eventq.exit
  %arrayidx27 = getelementptr %struct.ef4_nic, ptr %efx, i32 0, i32 23, i32 %add
  %50 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx27, align 4
  %tobool15.not = icmp eq ptr %51, null
  br i1 %tobool15.not, label %cond.end.cleanup_crit_edge, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

fail:                                             ; preds = %do.end13.i
  %52 = ptrtoint ptr %channel14 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %channel14, align 4
  %tobool31.not99 = icmp eq ptr %53, null
  %cmp33100 = icmp eq ptr %53, %channel.097
  %or.cond101 = select i1 %tobool31.not99, i1 true, i1 %cmp33100
  br i1 %or.cond101, label %fail.cleanup_crit_edge, label %fail.if.end35_crit_edge

fail.if.end35_crit_edge:                          ; preds = %fail
  br label %if.end35

fail.cleanup_crit_edge:                           ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end35:                                         ; preds = %cond.end52.if.end35_crit_edge, %fail.if.end35_crit_edge
  %channel.1102 = phi ptr [ %85, %cond.end52.if.end35_crit_edge ], [ %53, %fail.if.end35_crit_edge ]
  %enabled.i83 = getelementptr inbounds %struct.ef4_channel, ptr %channel.1102, i32 0, i32 4
  %54 = ptrtoint ptr %enabled.i83 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %enabled.i83, align 1, !range !538
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool.not.i84 = icmp eq i8 %55, 0
  br i1 %tobool.not.i84, label %if.end35.ef4_stop_eventq.exit_crit_edge, label %if.end.i

if.end35.ef4_stop_eventq.exit_crit_edge:          ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #24
  br label %ef4_stop_eventq.exit

if.end.i:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #24
  %napi_str.i85 = getelementptr inbounds %struct.ef4_channel, ptr %channel.1102, i32 0, i32 8
  tail call void @napi_disable(ptr noundef %napi_str.i85) #22
  %56 = ptrtoint ptr %enabled.i83 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %enabled.i83, align 1
  br label %ef4_stop_eventq.exit

ef4_stop_eventq.exit:                             ; preds = %if.end.i, %if.end35.ef4_stop_eventq.exit_crit_edge
  %type36 = getelementptr inbounds %struct.ef4_channel, ptr %channel.1102, i32 0, i32 2
  %57 = ptrtoint ptr %type36 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %type36, align 8
  %keep_eventq37 = getelementptr inbounds %struct.ef4_channel_type, ptr %58, i32 0, i32 6
  %59 = ptrtoint ptr %keep_eventq37 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %keep_eventq37, align 4, !range !538
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool38.not = icmp eq i8 %60, 0
  br i1 %tobool38.not, label %if.then39, label %ef4_stop_eventq.exit.for.inc41_crit_edge

ef4_stop_eventq.exit.for.inc41_crit_edge:         ; preds = %ef4_stop_eventq.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc41

if.then39:                                        ; preds = %ef4_stop_eventq.exit
  %eventq_init.i86 = getelementptr inbounds %struct.ef4_channel, ptr %channel.1102, i32 0, i32 3
  %61 = ptrtoint ptr %eventq_init.i86 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %eventq_init.i86, align 4, !range !538
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool.not.i87 = icmp eq i8 %62, 0
  br i1 %tobool.not.i87, label %if.then39.for.inc41_crit_edge, label %do.body.i

if.then39.for.inc41_crit_edge:                    ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc41

do.body.i:                                        ; preds = %if.then39
  %63 = ptrtoint ptr %channel.1102 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %channel.1102, align 128
  %msg_enable.i88 = getelementptr inbounds %struct.ef4_nic, ptr %64, i32 0, i32 20
  %65 = ptrtoint ptr %msg_enable.i88 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %msg_enable.i88, align 8
  %and.i89 = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i89)
  %tobool1.not.i = icmp eq i32 %and.i89, 0
  br i1 %tobool1.not.i, label %do.body.i.do.end12.i_crit_edge, label %do.body3.i90

do.body.i.do.end12.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end12.i

do.body3.i90:                                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_fini_eventq.__UNIQUE_ID_ddebug539, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_soft_enable_interrupts, %if.then7.i92)) #22
          to label %do.end12.i [label %if.then7.i92], !srcloc !536

if.then7.i92:                                     ; preds = %do.body3.i90
  call void @__sanitizer_cov_trace_pc() #24
  %67 = ptrtoint ptr %channel.1102 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %channel.1102, align 128
  %net_dev.i91 = getelementptr inbounds %struct.ef4_nic, ptr %68, i32 0, i32 69
  %69 = ptrtoint ptr %net_dev.i91 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %net_dev.i91, align 4
  %channel9.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.1102, i32 0, i32 1
  %71 = ptrtoint ptr %channel9.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %channel9.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_fini_eventq.__UNIQUE_ID_ddebug539, ptr noundef %70, ptr noundef nonnull @.str.81, i32 noundef %72) #22
  br label %do.end12.i

do.end12.i:                                       ; preds = %if.then7.i92, %do.body3.i90, %do.body.i.do.end12.i_crit_edge
  %73 = ptrtoint ptr %channel.1102 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %channel.1102, align 128
  %type.i.i93 = getelementptr inbounds %struct.ef4_nic, ptr %74, i32 0, i32 6
  %75 = ptrtoint ptr %type.i.i93 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %type.i.i93, align 4
  %ev_fini.i.i = getelementptr inbounds %struct.ef4_nic_type, ptr %76, i32 0, i32 53
  %77 = ptrtoint ptr %ev_fini.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ev_fini.i.i, align 4
  tail call void %78(ptr noundef nonnull %channel.1102) #22
  %79 = ptrtoint ptr %eventq_init.i86 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %eventq_init.i86, align 4
  br label %for.inc41

for.inc41:                                        ; preds = %do.end12.i, %if.then39.for.inc41_crit_edge, %ef4_stop_eventq.exit.for.inc41_crit_edge
  %channel42 = getelementptr inbounds %struct.ef4_channel, ptr %channel.1102, i32 0, i32 1
  %80 = ptrtoint ptr %channel42 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %channel42, align 4
  %add43 = add i32 %81, 1
  %82 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %n_channels, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add43, i32 %83)
  %cmp45 = icmp ult i32 %add43, %83
  br i1 %cmp45, label %cond.end52, label %for.inc41.cleanup_crit_edge

for.inc41.cleanup_crit_edge:                      ; preds = %for.inc41
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

cond.end52:                                       ; preds = %for.inc41
  %arrayidx50 = getelementptr %struct.ef4_nic, ptr %efx, i32 0, i32 23, i32 %add43
  %84 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx50, align 4
  %tobool31.not = icmp eq ptr %85, null
  %cmp33 = icmp eq ptr %85, %channel.097
  %or.cond = select i1 %tobool31.not, i1 true, i1 %cmp33
  br i1 %or.cond, label %cond.end52.cleanup_crit_edge, label %cond.end52.if.end35_crit_edge

cond.end52.if.end35_crit_edge:                    ; preds = %cond.end52
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end35

cond.end52.cleanup_crit_edge:                     ; preds = %cond.end52
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

cleanup:                                          ; preds = %cond.end52.cleanup_crit_edge, %for.inc41.cleanup_crit_edge, %fail.cleanup_crit_edge, %cond.end.cleanup_crit_edge, %ef4_start_eventq.exit.cleanup_crit_edge, %do.end7.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %fail.cleanup_crit_edge ], [ 0, %do.end7.cleanup_crit_edge ], [ %call.i.i, %cond.end52.cleanup_crit_edge ], [ %call.i.i, %for.inc41.cleanup_crit_edge ], [ 0, %cond.end.cleanup_crit_edge ], [ 0, %ef4_start_eventq.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ef4_schedule_reset(ptr noundef %efx, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 21
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp eq i32 %1, 3
  br i1 %cmp, label %do.body, label %if.end11

do.body:                                          ; preds = %entry
  %msg_enable = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 8
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.body2

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

do.body2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_schedule_reset.__UNIQUE_ID_ddebug588, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_schedule_reset, %if.then6)) #22
          to label %cleanup [label %if.then6], !srcloc !536

if.then6:                                         ; preds = %do.body2
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %4 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net_dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %type)
  %cmp7 = icmp ult i32 %type, 13
  br i1 %cmp7, label %cond.true, label %if.then6.cond.end_crit_edge

if.then6.cond.end_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #24
  br label %cond.end

cond.true:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #24
  %arrayidx = getelementptr [13 x ptr], ptr @ef4_reset_type_names, i32 0, i32 %type
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then6.cond.end_crit_edge
  %cond = phi ptr [ %7, %cond.true ], [ @.str.56, %if.then6.cond.end_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_schedule_reset.__UNIQUE_ID_ddebug588, ptr noundef %5, ptr noundef nonnull @.str.62, ptr noundef %cond) #22
  br label %cleanup

if.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %type)
  %switch = icmp ult i32 %type, 7
  br i1 %switch, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.end11
  %msg_enable13 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %8 = ptrtoint ptr %msg_enable13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_enable13, align 8
  %and14 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %sw.bb.sw.epilog_crit_edge, label %do.body17

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.epilog

do.body17:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_schedule_reset.__UNIQUE_ID_ddebug589, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_schedule_reset, %cond.end35)) #22
          to label %sw.epilog [label %cond.end35], !srcloc !536

cond.end35:                                       ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #24
  %net_dev30 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %10 = ptrtoint ptr %net_dev30 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net_dev30, align 4
  %arrayidx33 = getelementptr [13 x ptr], ptr @ef4_reset_type_names, i32 0, i32 %type
  %12 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx33, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_schedule_reset.__UNIQUE_ID_ddebug589, ptr noundef %11, ptr noundef nonnull @.str.63, ptr noundef %13) #22
  br label %sw.epilog

sw.default:                                       ; preds = %if.end11
  %type43 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 6
  %14 = ptrtoint ptr %type43 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %type43, align 4
  %map_reset_reason = getelementptr inbounds %struct.ef4_nic_type, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %map_reset_reason to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %map_reset_reason, align 8
  %call44 = tail call i32 %17(i32 noundef %type) #22
  %msg_enable46 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %18 = ptrtoint ptr %msg_enable46 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %msg_enable46, align 8
  %and47 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %sw.default.sw.epilog_crit_edge, label %do.body50

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.epilog

do.body50:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_schedule_reset.__UNIQUE_ID_ddebug590, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_schedule_reset, %if.then62)) #22
          to label %sw.epilog [label %if.then62], !srcloc !536

if.then62:                                        ; preds = %do.body50
  %net_dev63 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %20 = ptrtoint ptr %net_dev63 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %net_dev63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %call44)
  %cmp64 = icmp ult i32 %call44, 13
  br i1 %cmp64, label %cond.true65, label %if.then62.cond.end68_crit_edge

if.then62.cond.end68_crit_edge:                   ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #24
  br label %cond.end68

cond.true65:                                      ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #24
  %arrayidx66 = getelementptr [13 x ptr], ptr @ef4_reset_type_names, i32 0, i32 %call44
  %22 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx66, align 4
  br label %cond.end68

cond.end68:                                       ; preds = %cond.true65, %if.then62.cond.end68_crit_edge
  %cond69 = phi ptr [ %23, %cond.true65 ], [ @.str.56, %if.then62.cond.end68_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %type)
  %cmp70 = icmp ult i32 %type, 13
  br i1 %cmp70, label %cond.true71, label %cond.end68.cond.end74_crit_edge

cond.end68.cond.end74_crit_edge:                  ; preds = %cond.end68
  call void @__sanitizer_cov_trace_pc() #24
  br label %cond.end74

cond.true71:                                      ; preds = %cond.end68
  call void @__sanitizer_cov_trace_pc() #24
  %arrayidx72 = getelementptr [13 x ptr], ptr @ef4_reset_type_names, i32 0, i32 %type
  %24 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx72, align 4
  br label %cond.end74

cond.end74:                                       ; preds = %cond.true71, %cond.end68.cond.end74_crit_edge
  %cond75 = phi ptr [ %25, %cond.true71 ], [ @.str.56, %cond.end68.cond.end74_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_schedule_reset.__UNIQUE_ID_ddebug590, ptr noundef %21, ptr noundef nonnull @.str.64, ptr noundef %cond69, ptr noundef %cond75) #22
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.end74, %do.body50, %sw.default.sw.epilog_crit_edge, %cond.end35, %do.body17, %sw.bb.sw.epilog_crit_edge
  %method.0 = phi i32 [ %call44, %cond.end74 ], [ %call44, %sw.default.sw.epilog_crit_edge ], [ %type, %cond.end35 ], [ %type, %sw.bb.sw.epilog_crit_edge ], [ %type, %do.body17 ], [ %call44, %do.body50 ]
  %reset_pending = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 22
  tail call void @_set_bit(i32 noundef %method.0, ptr noundef %reset_pending) #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !545
  %26 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp93.not = icmp eq i32 %27, 1
  br i1 %cmp93.not, label %if.end95, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end95:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #24
  %28 = load ptr, ptr @reset_workqueue, align 4
  %reset_work = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 11
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %28, ptr noundef %reset_work) #22
  br label %cleanup

cleanup:                                          ; preds = %if.end95, %sw.epilog.cleanup_crit_edge, %cond.end, %do.body2, %do.body.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ef4_start_all(ptr noundef %efx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 21
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %.off = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %if.then, label %entry.do.end65_crit_edge

entry.do.end65_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end65

if.then:                                          ; preds = %entry
  %call = tail call i32 @rtnl_is_locked() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %if.then.do.body47_crit_edge

if.then.do.body47_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body47

land.rhs:                                         ; preds = %if.then
  %.b103 = load i1, ptr @ef4_start_all.__already_done, align 1
  br i1 %.b103, label %land.rhs.do.body47_crit_edge, label %if.then14, !prof !539

land.rhs.do.body47_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body47

if.then14:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @ef4_start_all.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 1815, i32 noundef 9, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.40, i32 noundef 1815) #22
  br label %do.body47

do.body47:                                        ; preds = %if.then14, %land.rhs.do.body47_crit_edge, %if.then.do.body47_crit_edge
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pr = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr)
  %cmp49 = icmp eq i32 %.pr, 2
  br i1 %cmp49, label %do.body57, label %do.body47.do.end65_crit_edge, !prof !542

do.body47.do.end65_crit_edge:                     ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end65

do.body57:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #24
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/sfc/falcon/efx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1816, 0\0A.popsection", ""() #22, !srcloc !546
  unreachable

do.end65:                                         ; preds = %do.body47.do.end65_crit_edge, %entry.do.end65_crit_edge
  %port_enabled = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 66
  %3 = ptrtoint ptr %port_enabled to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %port_enabled, align 8, !range !538
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool66.not = icmp eq i8 %4, 0
  br i1 %tobool66.not, label %lor.lhs.false67, label %do.end65.return_crit_edge

do.end65.return_crit_edge:                        ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #24
  br label %return

lor.lhs.false67:                                  ; preds = %do.end65
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
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
  br i1 %tobool.i.not, label %lor.lhs.false67.return_crit_edge, label %lor.lhs.false69

lor.lhs.false67.return_crit_edge:                 ; preds = %lor.lhs.false67
  call void @__sanitizer_cov_trace_pc() #24
  br label %return

lor.lhs.false69:                                  ; preds = %lor.lhs.false67
  %reset_pending = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 22
  %9 = ptrtoint ptr %reset_pending to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reset_pending, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool70.not = icmp eq i32 %10, 0
  br i1 %tobool70.not, label %if.end72, label %lor.lhs.false69.return_crit_edge

lor.lhs.false69.return_crit_edge:                 ; preds = %lor.lhs.false69
  call void @__sanitizer_cov_trace_pc() #24
  br label %return

if.end72:                                         ; preds = %lor.lhs.false69
  tail call fastcc void @ef4_start_port(ptr noundef %efx)
  tail call fastcc void @ef4_start_datapath(ptr noundef %efx)
  %type = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 6
  %11 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %type, align 4
  %monitor = getelementptr inbounds %struct.ef4_nic_type, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %monitor to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %monitor, align 4
  %cmp73.not = icmp eq ptr %14, null
  br i1 %cmp73.not, label %if.end72.if.end76_crit_edge, label %if.then74

if.end72.if.end76_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end76

if.then74:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #24
  %workqueue = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 9
  %15 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %workqueue, align 8
  %monitor_work = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 102
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %16, ptr noundef %monitor_work, i32 noundef 100) #22
  br label %if.end76

if.end76:                                         ; preds = %if.then74, %if.end72.if.end76_crit_edge
  %17 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %type, align 4
  %start_stats = getelementptr inbounds %struct.ef4_nic_type, ptr %18, i32 0, i32 21
  %19 = ptrtoint ptr %start_stats to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %start_stats, align 4
  tail call void %20(ptr noundef %efx) #22
  %21 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %type, align 4
  %pull_stats = getelementptr inbounds %struct.ef4_nic_type, ptr %22, i32 0, i32 22
  %23 = ptrtoint ptr %pull_stats to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pull_stats, align 8
  tail call void %24(ptr noundef %efx) #22
  %stats_lock = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 105
  tail call void @_raw_spin_lock_bh(ptr noundef %stats_lock) #22
  %25 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %type, align 4
  %update_stats = getelementptr inbounds %struct.ef4_nic_type, ptr %26, i32 0, i32 20
  %27 = ptrtoint ptr %update_stats to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %update_stats, align 8
  %call80 = tail call i32 %28(ptr noundef %efx, ptr noundef null, ptr noundef null) #22
  tail call void @_raw_spin_unlock_bh(ptr noundef %stats_lock) #22
  br label %return

return:                                           ; preds = %if.end76, %lor.lhs.false69.return_crit_edge, %lor.lhs.false67.return_crit_edge, %do.end65.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ef4_schedule_slow_fill(ptr noundef %rx_queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %slow_fill = getelementptr inbounds %struct.ef4_rx_queue, ptr %rx_queue, i32 0, i32 24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, 10
  %call1 = tail call i32 @mod_timer(ptr noundef %slow_fill, i32 noundef %add) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ef4_channel_dummy_op_int(ptr nocapture readnone %channel) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ef4_channel_dummy_op_void(ptr nocapture %channel) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ef4_link_status_changed(ptr nocapture noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %link_state1 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 81
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
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
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %link_state1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %link_state1, align 4, !range !538
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
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end13

if.then6:                                         ; preds = %if.end
  %n_link_state_changes = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 82
  %12 = ptrtoint ptr %n_link_state_changes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %n_link_state_changes, align 64
  %inc = add i32 %13, 1
  store i32 %inc, ptr %n_link_state_changes, align 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool8.not = icmp eq i8 %5, 0
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @netif_carrier_on(ptr noundef %1) #22
  br label %if.end13

if.else:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @netif_carrier_off(ptr noundef %1) #22
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then9, %if.end.if.end13_crit_edge
  %14 = ptrtoint ptr %link_state1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %link_state1, align 4, !range !538
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool15.not = icmp eq i8 %15, 0
  %msg_enable26 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %16 = ptrtoint ptr %msg_enable26 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %msg_enable26, align 8
  %and27 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool15.not, label %do.body25, label %do.body

do.body:                                          ; preds = %if.end13
  br i1 %tobool28.not, label %do.body.cleanup_crit_edge, label %if.then18

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.then18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #24
  %18 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %net_dev, align 4
  %speed = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 81, i32 3
  %20 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %speed, align 4
  %fd = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 81, i32 1
  %22 = ptrtoint ptr %fd to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %fd, align 1, !range !538
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool20.not = icmp eq i8 %23, 0
  %cond = select i1 %tobool20.not, ptr @.str.45, ptr @.str.44
  %mtu = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 20
  %24 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mtu, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %19, ptr noundef nonnull @.str.43, i32 noundef %21, ptr noundef nonnull %cond, i32 noundef %25) #25
  br label %cleanup

do.body25:                                        ; preds = %if.end13
  br i1 %tobool28.not, label %do.body25.cleanup_crit_edge, label %if.then29

do.body25.cleanup_crit_edge:                      ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.then29:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #24
  %26 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %27, ptr noundef nonnull @.str.46) #25
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %do.body25.cleanup_crit_edge, %if.then18, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ef4_link_set_advertising(ptr nocapture noundef %efx, i32 noundef %advertising) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %link_advertising = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 80
  %0 = ptrtoint ptr %link_advertising to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %advertising, ptr %link_advertising, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %advertising)
  %tobool.not = icmp eq i32 %advertising, 0
  br i1 %tobool.not, label %entry.if.end15_crit_edge, label %if.then

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end15

if.then:                                          ; preds = %entry
  %and = and i32 %advertising, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  %wanted_fc4 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 85
  %1 = ptrtoint ptr %wanted_fc4 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %wanted_fc4, align 8
  %3 = and i8 %2, -4
  %masksel = select i1 %tobool1.not, i8 0, i8 3
  %.sink = or i8 %3, %masksel
  store i8 %.sink, ptr %wanted_fc4, align 8
  %and8 = and i32 %advertising, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.then.if.end15_crit_edge, label %if.then10

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end15

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  %wanted_fc11 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 85
  %4 = ptrtoint ptr %wanted_fc11 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %wanted_fc11, align 8
  %6 = xor i8 %5, 1
  store i8 %6, ptr %wanted_fc11, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then10, %if.then.if.end15_crit_edge, %entry.if.end15_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ef4_link_set_wanted_fc(ptr nocapture noundef %efx, i8 noundef zeroext %wanted_fc) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %wanted_fc1 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 85
  %0 = ptrtoint ptr %wanted_fc1 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %wanted_fc, ptr %wanted_fc1, align 8
  %link_advertising = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 80
  %1 = ptrtoint ptr %link_advertising to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %link_advertising, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %if.then

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end13

if.then:                                          ; preds = %entry
  %conv = zext i8 %wanted_fc to i32
  %and = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  %and6 = and i32 %2, -24577
  %masksel = select i1 %tobool2.not, i32 0, i32 24576
  %storemerge = or i32 %and6, %masksel
  %3 = ptrtoint ptr %link_advertising to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %storemerge, ptr %link_advertising, align 4
  %and8 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.then.if.end13_crit_edge, label %if.then10

if.then.if.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end13

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  %xor = xor i32 %storemerge, 16384
  %4 = ptrtoint ptr %link_advertising to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %xor, ptr %link_advertising, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.then.if.end13_crit_edge, %entry.if.end13_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ef4_mac_reconfigure(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %filter_sem = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 91
  tail call void @down_read(ptr noundef %filter_sem) #22
  %type = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 6
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 4
  %reconfigure_mac = getelementptr inbounds %struct.ef4_nic_type, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %reconfigure_mac to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reconfigure_mac, align 8
  %call = tail call i32 %3(ptr noundef %efx) #22
  tail call void @up_read(ptr noundef %filter_sem) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__ef4_reconfigure_port(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_lock = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 64
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %mac_lock) #22
  br i1 %call, label %entry.if.end_crit_edge, label %do.end, !prof !539

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 983, i32 noundef 9, ptr noundef null) #22
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %phy_mode20 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 79
  %0 = ptrtoint ptr %phy_mode20 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phy_mode20, align 16
  %loopback_mode = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 88
  %2 = ptrtoint ptr %loopback_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %loopback_mode, align 4
  %and25 = and i32 %1, -2
  %4 = lshr i32 66600958, %3
  %5 = and i32 %4, 1
  %storemerge = or i32 %5, %and25
  store i32 %storemerge, ptr %phy_mode20, align 16
  %type = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 6
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %type, align 4
  %reconfigure_port = getelementptr inbounds %struct.ef4_nic_type, ptr %7, i32 0, i32 26
  %8 = ptrtoint ptr %reconfigure_port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reconfigure_port, align 8
  %call27 = tail call i32 %9(ptr noundef %efx) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end.if.end31_crit_edge, label %if.then29

if.end.if.end31_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end31

if.then29:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  %10 = ptrtoint ptr %phy_mode20 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %1, ptr %phy_mode20, align 16
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end.if.end31_crit_edge
  ret i32 %call27
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ef4_reconfigure_port(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 21
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %.off = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %if.then, label %entry.do.end46_crit_edge

entry.do.end46_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end46

if.then:                                          ; preds = %entry
  %call = tail call i32 @rtnl_is_locked() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %if.then.do.end46_crit_edge

if.then.do.end46_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end46

land.rhs:                                         ; preds = %if.then
  %.b56 = load i1, ptr @ef4_reconfigure_port.__already_done, align 1
  br i1 %.b56, label %land.rhs.do.end46_crit_edge, label %if.then14, !prof !539

land.rhs.do.end46_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end46

if.then14:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @ef4_reconfigure_port.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 1006, i32 noundef 9, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.40, i32 noundef 1006) #22
  br label %do.end46

do.end46:                                         ; preds = %if.then14, %land.rhs.do.end46_crit_edge, %if.then.do.end46_crit_edge, %entry.do.end46_crit_edge
  %mac_lock = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 64
  tail call void @mutex_lock_nested(ptr noundef %mac_lock, i32 noundef 0) #22
  %call.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %mac_lock) #22
  br i1 %call.i, label %do.end46.if.end.i_crit_edge, label %do.end.i, !prof !539

do.end46.if.end.i_crit_edge:                      ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end.i

do.end.i:                                         ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #24
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 983, i32 noundef 9, ptr noundef null) #22
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %do.end46.if.end.i_crit_edge
  %phy_mode20.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 79
  %2 = ptrtoint ptr %phy_mode20.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phy_mode20.i, align 16
  %loopback_mode.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 88
  %4 = ptrtoint ptr %loopback_mode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %loopback_mode.i, align 4
  %and25.i = and i32 %3, -2
  %6 = lshr i32 66600958, %5
  %7 = and i32 %6, 1
  %storemerge.i = or i32 %7, %and25.i
  store i32 %storemerge.i, ptr %phy_mode20.i, align 16
  %type.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 6
  %8 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %type.i, align 4
  %reconfigure_port.i = getelementptr inbounds %struct.ef4_nic_type, ptr %9, i32 0, i32 26
  %10 = ptrtoint ptr %reconfigure_port.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reconfigure_port.i, align 8
  %call27.i = tail call i32 %11(ptr noundef %efx) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %if.end.i.__ef4_reconfigure_port.exit_crit_edge, label %if.then29.i

if.end.i.__ef4_reconfigure_port.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %__ef4_reconfigure_port.exit

if.then29.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #24
  %12 = ptrtoint ptr %phy_mode20.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %3, ptr %phy_mode20.i, align 16
  br label %__ef4_reconfigure_port.exit

__ef4_reconfigure_port.exit:                      ; preds = %if.then29.i, %if.end.i.__ef4_reconfigure_port.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mac_lock) #22
  ret i32 %call27.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ef4_set_default_rx_indir_table(ptr nocapture noundef %efx) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %rss_spread = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 38
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.05 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %0 = ptrtoint ptr %rss_spread to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rss_spread, align 4
  %rem.i = urem i32 %i.05, %1
  %arrayidx = getelementptr %struct.ef4_nic, ptr %efx, i32 0, i32 53, i32 %i.05
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %rem.i, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ef4_usecs_to_ticks(ptr nocapture noundef readonly %efx, i32 noundef %usecs) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %usecs)
  %cmp = icmp eq i32 %usecs, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %return

if.end:                                           ; preds = %entry
  %mul = mul i32 %usecs, 1000
  %timer_quantum_ns = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 15
  %0 = ptrtoint ptr %timer_quantum_ns to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %timer_quantum_ns, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %1)
  %cmp1 = icmp ult i32 %mul, %1
  br i1 %cmp1, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  %div = udiv i32 %mul, %1
  br label %return

return:                                           ; preds = %if.end3, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %div, %if.end3 ], [ 0, %entry.return_crit_edge ], [ 1, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ef4_ticks_to_usecs(ptr nocapture noundef readonly %efx, i32 noundef %ticks) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %timer_quantum_ns = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 15
  %0 = ptrtoint ptr %timer_quantum_ns to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %timer_quantum_ns, align 4
  %mul = mul i32 %1, %ticks
  %sub = add i32 %mul, 999
  %div = udiv i32 %sub, 1000
  ret i32 %div
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ef4_init_irq_moderation(ptr nocapture noundef %efx, i32 noundef %tx_usecs, i32 noundef %rx_usecs, i1 noundef zeroext %rx_adaptive, i1 noundef zeroext %rx_may_override_tx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %rx_adaptive to i8
  %state = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 21
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %.off = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %if.then, label %entry.do.end48_crit_edge

entry.do.end48_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end48

if.then:                                          ; preds = %entry
  %call = tail call i32 @rtnl_is_locked() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %if.then.do.end48_crit_edge

if.then.do.end48_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end48

land.rhs:                                         ; preds = %if.then
  %.b109 = load i1, ptr @ef4_init_irq_moderation.__already_done, align 1
  br i1 %.b109, label %land.rhs.do.end48_crit_edge, label %if.then16, !prof !539

land.rhs.do.end48_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end48

if.then16:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @ef4_init_irq_moderation.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 1911, i32 noundef 9, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.40, i32 noundef 1911) #22
  br label %do.end48

do.end48:                                         ; preds = %if.then16, %land.rhs.do.end48_crit_edge, %if.then.do.end48_crit_edge, %entry.do.end48_crit_edge
  %timer_max_ns = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 16
  %2 = ptrtoint ptr %timer_max_ns to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %timer_max_ns, align 8
  %div = udiv i32 %3, 1000
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %tx_usecs)
  %cmp49 = icmp ult i32 %div, %tx_usecs
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %rx_usecs)
  %cmp51 = icmp ult i32 %div, %rx_usecs
  %or.cond = or i1 %cmp49, %cmp51
  br i1 %or.cond, label %do.end48.cleanup_crit_edge, label %if.end53

do.end48.cleanup_crit_edge:                       ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end53:                                         ; preds = %do.end48
  call void @__sanitizer_cov_trace_cmp4(i32 %tx_usecs, i32 %rx_usecs)
  %cmp54.not = icmp eq i32 %tx_usecs, %rx_usecs
  br i1 %cmp54.not, label %if.end53.if.end65_crit_edge, label %land.lhs.true

if.end53.if.end65_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end65

land.lhs.true:                                    ; preds = %if.end53
  %tx_channel_offset = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 39
  %4 = ptrtoint ptr %tx_channel_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_channel_offset, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp55 = icmp ne i32 %5, 0
  %brmerge = or i1 %cmp55, %rx_may_override_tx
  br i1 %brmerge, label %land.lhs.true.if.end65_crit_edge, label %do.body59

land.lhs.true.if.end65_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end65

do.body59:                                        ; preds = %land.lhs.true
  %msg_enable = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %6 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msg_enable, align 8
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool60.not = icmp eq i32 %and, 0
  br i1 %tobool60.not, label %do.body59.cleanup_crit_edge, label %if.then61

do.body59.cleanup_crit_edge:                      ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.then61:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #24
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %8 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %9, ptr noundef nonnull @.str.48) #25
  br label %cleanup

if.end65:                                         ; preds = %land.lhs.true.if.end65_crit_edge, %if.end53.if.end65_crit_edge
  %irq_rx_adaptive = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 17
  %10 = ptrtoint ptr %irq_rx_adaptive to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %frombool, ptr %irq_rx_adaptive, align 4
  %irq_rx_moderation_us = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 19
  %11 = ptrtoint ptr %irq_rx_moderation_us to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %rx_usecs, ptr %irq_rx_moderation_us, align 4
  %channel68 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 23
  %12 = ptrtoint ptr %channel68 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %channel68, align 4
  %tobool69.not111 = icmp eq ptr %13, null
  br i1 %tobool69.not111, label %if.end65.cleanup_crit_edge, label %for.body.lr.ph

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end65
  %n_channels = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 36
  br label %for.body

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %for.body.lr.ph
  %channel.0112 = phi ptr [ %13, %for.body.lr.ph ], [ %30, %cond.end.for.body_crit_edge ]
  %core_index.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.0112, i32 0, i32 30, i32 1
  %14 = ptrtoint ptr %core_index.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %core_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp.i = icmp sgt i32 %15, -1
  br i1 %cmp.i, label %for.body.for.inc.sink.split_crit_edge, label %if.else

for.body.for.inc.sink.split_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc.sink.split

if.else:                                          ; preds = %for.body
  %channel1.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.0112, i32 0, i32 1
  %16 = ptrtoint ptr %channel1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %channel1.i, align 4
  %18 = ptrtoint ptr %channel.0112 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %channel.0112, align 128
  %tx_channel_offset.i = getelementptr inbounds %struct.ef4_nic, ptr %19, i32 0, i32 39
  %20 = ptrtoint ptr %tx_channel_offset.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_channel_offset.i, align 32
  %sub.i = sub i32 %17, %21
  %n_tx_channels.i = getelementptr inbounds %struct.ef4_nic, ptr %19, i32 0, i32 40
  %22 = ptrtoint ptr %n_tx_channels.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %n_tx_channels.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %23)
  %cmp.i110 = icmp ult i32 %sub.i, %23
  br i1 %cmp.i110, label %if.else.for.inc.sink.split_crit_edge, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc

if.else.for.inc.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %if.else.for.inc.sink.split_crit_edge, %for.body.for.inc.sink.split_crit_edge
  %rx_usecs.sink = phi i32 [ %rx_usecs, %for.body.for.inc.sink.split_crit_edge ], [ %tx_usecs, %if.else.for.inc.sink.split_crit_edge ]
  %irq_moderation_us = getelementptr inbounds %struct.ef4_channel, ptr %channel.0112, i32 0, i32 6
  %24 = ptrtoint ptr %irq_moderation_us to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %rx_usecs.sink, ptr %irq_moderation_us, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.else.for.inc_crit_edge
  %channel77 = getelementptr inbounds %struct.ef4_channel, ptr %channel.0112, i32 0, i32 1
  %25 = ptrtoint ptr %channel77 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %channel77, align 4
  %add = add i32 %26, 1
  %27 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %n_channels, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %28)
  %cmp78 = icmp ult i32 %add, %28
  br i1 %cmp78, label %cond.end, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

cond.end:                                         ; preds = %for.inc
  %arrayidx82 = getelementptr %struct.ef4_nic, ptr %efx, i32 0, i32 23, i32 %add
  %29 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx82, align 4
  %tobool69.not = icmp eq ptr %30, null
  br i1 %tobool69.not, label %cond.end.cleanup_crit_edge, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

cleanup:                                          ; preds = %cond.end.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %if.end65.cleanup_crit_edge, %if.then61, %do.body59.cleanup_crit_edge, %do.end48.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end48.cleanup_crit_edge ], [ -22, %if.then61 ], [ -22, %do.body59.cleanup_crit_edge ], [ 0, %if.end65.cleanup_crit_edge ], [ 0, %cond.end.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ef4_get_irq_moderation(ptr nocapture noundef readonly %efx, ptr nocapture noundef writeonly %tx_usecs, ptr nocapture noundef writeonly %rx_usecs, ptr nocapture noundef writeonly %rx_adaptive) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_rx_adaptive = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 17
  %0 = ptrtoint ptr %irq_rx_adaptive to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %irq_rx_adaptive, align 4, !range !538
  %2 = ptrtoint ptr %rx_adaptive to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %rx_adaptive, align 1
  %irq_rx_moderation_us = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 19
  %3 = ptrtoint ptr %irq_rx_moderation_us to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq_rx_moderation_us, align 4
  %5 = ptrtoint ptr %rx_usecs to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %rx_usecs, align 4
  %tx_channel_offset = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 39
  %6 = ptrtoint ptr %tx_channel_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_channel_offset, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %arrayidx = getelementptr %struct.ef4_nic, ptr %efx, i32 0, i32 23, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %irq_moderation_us = getelementptr inbounds %struct.ef4_channel, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %irq_moderation_us to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq_moderation_us, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %storemerge = phi i32 [ %11, %if.else ], [ %4, %entry.if.end_crit_edge ]
  %12 = ptrtoint ptr %tx_usecs to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %storemerge, ptr %tx_usecs, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ef4_net_open(ptr noundef %net_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %msg_enable = getelementptr i8, ptr %net_dev, i32 2456
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  %and = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end11_crit_edge, label %do.body1

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end11

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_net_open.__UNIQUE_ID_ddebug583, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_net_open, %if.then6)) #22
          to label %do.end11 [label %if.then6], !srcloc !536

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #24
  %net_dev7 = getelementptr i8, ptr %net_dev, i32 4572
  %2 = ptrtoint ptr %net_dev7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net_dev7, align 4
  %4 = tail call i32 @llvm.read_register.i32(metadata !526) #22
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_net_open.__UNIQUE_ID_ddebug583, ptr noundef %3, ptr noundef nonnull @.str.50, i32 noundef %7) #22
  br label %do.end11

do.end11:                                         ; preds = %if.then6, %do.body1, %entry.do.end11_crit_edge
  %state.i = getelementptr i8, ptr %net_dev, i32 2460
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state.i, align 4
  %10 = and i32 %9, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %switch.i = icmp eq i32 %10, 2
  br i1 %switch.i, label %do.body.i, label %if.end15

do.body.i:                                        ; preds = %do.end11
  %11 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %msg_enable, align 8
  %and.i28 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i28)
  %tobool.not.i = icmp eq i32 %and.i28, 0
  br i1 %tobool.not.i, label %do.body.i.cleanup_crit_edge, label %if.then3.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.then3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #24
  %net_dev.i = getelementptr i8, ptr %net_dev, i32 4572
  %13 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %net_dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %14, ptr noundef nonnull @.str.69) #25
  br label %cleanup

if.end15:                                         ; preds = %do.end11
  %phy_mode = getelementptr i8, ptr %net_dev, i32 4656
  %15 = ptrtoint ptr %phy_mode to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %phy_mode, align 16
  %and16 = and i32 %16, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @ef4_link_status_changed(ptr noundef %add.ptr.i)
  tail call fastcc void @ef4_start_all(ptr noundef %add.ptr.i)
  tail call void @ef4_selftest_async_start(ptr noundef %add.ptr.i) #22
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end15.cleanup_crit_edge, %if.then3.i, %do.body.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end19 ], [ -16, %if.end15.cleanup_crit_edge ], [ -5, %do.body.i.cleanup_crit_edge ], [ -5, %if.then3.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef4_selftest_async_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ef4_net_stop(ptr noundef %net_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %net_dev, i32 2456
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end11_crit_edge, label %do.body1

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end11

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_net_stop.__UNIQUE_ID_ddebug584, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_net_stop, %if.then6)) #22
          to label %do.end11 [label %if.then6], !srcloc !536

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #24
  %net_dev7 = getelementptr i8, ptr %net_dev, i32 4572
  %2 = ptrtoint ptr %net_dev7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net_dev7, align 4
  %4 = tail call i32 @llvm.read_register.i32(metadata !526) #22
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_net_stop.__UNIQUE_ID_ddebug584, ptr noundef %3, ptr noundef nonnull @.str.52, i32 noundef %7) #22
  br label %do.end11

do.end11:                                         ; preds = %if.then6, %do.body1, %entry.do.end11_crit_edge
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  tail call fastcc void @ef4_stop_all(ptr noundef %add.ptr.i)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ef4_reset_down(ptr noundef %efx, i32 noundef %method) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 21
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %.off = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %if.then, label %entry.do.end46_crit_edge

entry.do.end46_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end46

if.then:                                          ; preds = %entry
  %call = tail call i32 @rtnl_is_locked() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %if.then.do.end46_crit_edge

if.then.do.end46_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end46

land.rhs:                                         ; preds = %if.then
  %.b67 = load i1, ptr @ef4_reset_down.__already_done, align 1
  br i1 %.b67, label %land.rhs.do.end46_crit_edge, label %if.then14, !prof !539

land.rhs.do.end46_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end46

if.then14:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @ef4_reset_down.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 2354, i32 noundef 9, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.40, i32 noundef 2354) #22
  br label %do.end46

do.end46:                                         ; preds = %if.then14, %land.rhs.do.end46_crit_edge, %if.then.do.end46_crit_edge, %entry.do.end46_crit_edge
  tail call fastcc void @ef4_stop_all(ptr noundef %efx)
  tail call fastcc void @ef4_disable_interrupts(ptr noundef %efx)
  %mac_lock = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 64
  tail call void @mutex_lock_nested(ptr noundef %mac_lock, i32 noundef 0) #22
  %port_initialized = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 68
  %2 = ptrtoint ptr %port_initialized to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %port_initialized, align 2, !range !538
  %.fr = freeze i8 %3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.fr)
  %tobool47.not = icmp eq i8 %.fr, 0
  br i1 %tobool47.not, label %do.end46.if.end52_crit_edge, label %switch.early.test

do.end46.if.end52_crit_edge:                      ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end52

switch.early.test:                                ; preds = %do.end46
  %4 = zext i32 %method to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %method, label %if.then51 [
    i32 5, label %switch.early.test.if.end52_crit_edge
    i32 0, label %switch.early.test.if.end52_crit_edge69
  ]

switch.early.test.if.end52_crit_edge69:           ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end52

switch.early.test.if.end52_crit_edge:             ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end52

if.then51:                                        ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #24
  %phy_op = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 76
  %5 = ptrtoint ptr %phy_op to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %phy_op, align 16
  %fini = getelementptr inbounds %struct.ef4_phy_operations, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %fini to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fini, align 4
  tail call void %8(ptr noundef %efx) #22
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %switch.early.test.if.end52_crit_edge, %switch.early.test.if.end52_crit_edge69, %do.end46.if.end52_crit_edge
  %type = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 6
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %type, align 4
  %fini53 = getelementptr inbounds %struct.ef4_nic_type, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %fini53 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fini53, align 8
  tail call void %12(ptr noundef %efx) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ef4_disable_interrupts(ptr noundef %efx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @ef4_soft_disable_interrupts(ptr noundef %efx)
  %channel1 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 23
  %0 = ptrtoint ptr %channel1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel1, align 4
  %tobool.not18 = icmp eq ptr %1, null
  br i1 %tobool.not18, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %n_channels = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 36
  br label %for.body

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %for.body.lr.ph
  %channel.019 = phi ptr [ %1, %for.body.lr.ph ], [ %30, %cond.end.for.body_crit_edge ]
  %type = getelementptr inbounds %struct.ef4_channel, ptr %channel.019, i32 0, i32 2
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type, align 8
  %keep_eventq = getelementptr inbounds %struct.ef4_channel_type, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %keep_eventq to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %keep_eventq, align 4, !range !538
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc

if.then:                                          ; preds = %for.body
  %eventq_init.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.019, i32 0, i32 3
  %6 = ptrtoint ptr %eventq_init.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %eventq_init.i, align 4, !range !538
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.then.for.inc_crit_edge, label %do.body.i

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc

do.body.i:                                        ; preds = %if.then
  %8 = ptrtoint ptr %channel.019 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %channel.019, align 128
  %msg_enable.i = getelementptr inbounds %struct.ef4_nic, ptr %9, i32 0, i32 20
  %10 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %msg_enable.i, align 8
  %and.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %do.body.i.do.end12.i_crit_edge, label %do.body3.i

do.body.i.do.end12.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end12.i

do.body3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_fini_eventq.__UNIQUE_ID_ddebug539, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_disable_interrupts, %if.then7.i)) #22
          to label %do.end12.i [label %if.then7.i], !srcloc !536

if.then7.i:                                       ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #24
  %12 = ptrtoint ptr %channel.019 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %channel.019, align 128
  %net_dev.i = getelementptr inbounds %struct.ef4_nic, ptr %13, i32 0, i32 69
  %14 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %net_dev.i, align 4
  %channel9.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.019, i32 0, i32 1
  %16 = ptrtoint ptr %channel9.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %channel9.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_fini_eventq.__UNIQUE_ID_ddebug539, ptr noundef %15, ptr noundef nonnull @.str.81, i32 noundef %17) #22
  br label %do.end12.i

do.end12.i:                                       ; preds = %if.then7.i, %do.body3.i, %do.body.i.do.end12.i_crit_edge
  %18 = ptrtoint ptr %channel.019 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %channel.019, align 128
  %type.i.i = getelementptr inbounds %struct.ef4_nic, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %type.i.i, align 4
  %ev_fini.i.i = getelementptr inbounds %struct.ef4_nic_type, ptr %21, i32 0, i32 53
  %22 = ptrtoint ptr %ev_fini.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ev_fini.i.i, align 4
  tail call void %23(ptr noundef nonnull %channel.019) #22
  %24 = ptrtoint ptr %eventq_init.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %eventq_init.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %do.end12.i, %if.then.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %channel3 = getelementptr inbounds %struct.ef4_channel, ptr %channel.019, i32 0, i32 1
  %25 = ptrtoint ptr %channel3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %channel3, align 4
  %add = add i32 %26, 1
  %27 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %n_channels, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %28)
  %cmp = icmp ult i32 %add, %28
  br i1 %cmp, label %cond.end, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

cond.end:                                         ; preds = %for.inc
  %arrayidx7 = getelementptr %struct.ef4_nic, ptr %efx, i32 0, i32 23, i32 %add
  %29 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx7, align 4
  %tobool.not = icmp eq ptr %30, null
  br i1 %tobool.not, label %cond.end.for.end_crit_edge, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

for.end:                                          ; preds = %cond.end.for.end_crit_edge, %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %type8 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 6
  %31 = ptrtoint ptr %type8 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %type8, align 4
  %irq_disable_non_ev = getelementptr inbounds %struct.ef4_nic_type, ptr %32, i32 0, i32 37
  %33 = ptrtoint ptr %irq_disable_non_ev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %irq_disable_non_ev, align 4
  tail call void %34(ptr noundef %efx) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ef4_reset_up(ptr noundef %efx, i32 noundef %method, i1 noundef zeroext %ok) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 21
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %.off = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %if.then, label %entry.do.end47_crit_edge

entry.do.end47_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end47

if.then:                                          ; preds = %entry
  %call = tail call i32 @rtnl_is_locked() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %if.then.do.end47_crit_edge

if.then.do.end47_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end47

land.rhs:                                         ; preds = %if.then
  %.b124 = load i1, ptr @ef4_reset_up.__already_done, align 1
  br i1 %.b124, label %land.rhs.do.end47_crit_edge, label %if.then15, !prof !539

land.rhs.do.end47_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end47

if.then15:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @ef4_reset_up.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 2375, i32 noundef 9, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.40, i32 noundef 2375) #22
  br label %do.end47

do.end47:                                         ; preds = %if.then15, %land.rhs.do.end47_crit_edge, %if.then.do.end47_crit_edge, %entry.do.end47_crit_edge
  %type = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 6
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type, align 4
  %init = getelementptr inbounds %struct.ef4_nic_type, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init, align 8
  %call48 = tail call i32 %5(ptr noundef %efx) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end57, label %do.body51

do.body51:                                        ; preds = %do.end47
  %msg_enable = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %6 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msg_enable, align 8
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool52.not = icmp eq i32 %and, 0
  br i1 %tobool52.not, label %do.body51.fail_crit_edge, label %if.then53

do.body51.fail_crit_edge:                         ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #24
  br label %fail

if.then53:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #24
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %8 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %9, ptr noundef nonnull @.str.53) #25
  br label %fail

if.end57:                                         ; preds = %do.end47
  br i1 %ok, label %if.end60, label %if.end57.fail_crit_edge

if.end57.fail_crit_edge:                          ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #24
  br label %fail

if.end60:                                         ; preds = %if.end57
  %port_initialized = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 68
  %10 = ptrtoint ptr %port_initialized to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %port_initialized, align 2, !range !538
  %.fr = freeze i8 %11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.fr)
  %tobool61.not = icmp eq i8 %.fr, 0
  br i1 %tobool61.not, label %if.end60.if.end87_crit_edge, label %switch.early.test

if.end60.if.end87_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end87

switch.early.test:                                ; preds = %if.end60
  %12 = zext i32 %method to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.206)
  switch i32 %method, label %if.then65 [
    i32 5, label %switch.early.test.if.end87_crit_edge
    i32 0, label %switch.early.test.if.end87_crit_edge126
  ]

switch.early.test.if.end87_crit_edge126:          ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end87

switch.early.test.if.end87_crit_edge:             ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end87

if.then65:                                        ; preds = %switch.early.test
  %phy_op = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 76
  %13 = ptrtoint ptr %phy_op to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %phy_op, align 16
  %init66 = getelementptr inbounds %struct.ef4_phy_operations, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %init66 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init66, align 4
  %call67 = tail call i32 %16(ptr noundef %efx) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end70, label %if.then65.fail_crit_edge

if.then65.fail_crit_edge:                         ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #24
  br label %fail

if.end70:                                         ; preds = %if.then65
  %17 = ptrtoint ptr %phy_op to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %phy_op, align 16
  %reconfigure = getelementptr inbounds %struct.ef4_phy_operations, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %reconfigure to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reconfigure, align 4
  %call72 = tail call i32 %20(ptr noundef %efx) #22
  %21 = zext i32 %call72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.207)
  switch i32 %call72, label %do.body77 [
    i32 0, label %if.end70.if.end87_crit_edge
    i32 -1, label %if.end70.if.end87_crit_edge127
  ]

if.end70.if.end87_crit_edge127:                   ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end87

if.end70.if.end87_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end87

do.body77:                                        ; preds = %if.end70
  %msg_enable78 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %22 = ptrtoint ptr %msg_enable78 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %msg_enable78, align 8
  %and79 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %do.body77.if.end87_crit_edge, label %if.then81

do.body77.if.end87_crit_edge:                     ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end87

if.then81:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #24
  %net_dev82 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %24 = ptrtoint ptr %net_dev82 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %net_dev82, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %25, ptr noundef nonnull @.str.54) #25
  br label %if.end87

if.end87:                                         ; preds = %if.then81, %do.body77.if.end87_crit_edge, %if.end70.if.end87_crit_edge, %if.end70.if.end87_crit_edge127, %switch.early.test.if.end87_crit_edge, %switch.early.test.if.end87_crit_edge126, %if.end60.if.end87_crit_edge
  %call88 = tail call fastcc i32 @ef4_enable_interrupts(ptr noundef %efx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.end91, label %if.end87.fail_crit_edge

if.end87.fail_crit_edge:                          ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #24
  br label %fail

if.end91:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #24
  %filter_sem = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 91
  tail call void @down_read(ptr noundef %filter_sem) #22
  tail call void @down_read(ptr noundef %filter_sem) #22
  %26 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %type, align 4
  %filter_table_restore.i = getelementptr inbounds %struct.ef4_nic_type, ptr %27, i32 0, i32 59
  %28 = ptrtoint ptr %filter_table_restore.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %filter_table_restore.i, align 4
  tail call void %29(ptr noundef %efx) #22
  tail call void @up_read(ptr noundef %filter_sem) #22
  tail call void @up_read(ptr noundef %filter_sem) #22
  %mac_lock = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 64
  tail call void @mutex_unlock(ptr noundef %mac_lock) #22
  tail call fastcc void @ef4_start_all(ptr noundef %efx)
  br label %cleanup

fail:                                             ; preds = %if.end87.fail_crit_edge, %if.then65.fail_crit_edge, %if.end57.fail_crit_edge, %if.then53, %do.body51.fail_crit_edge
  %rc.0 = phi i32 [ %call48, %if.then53 ], [ %call48, %do.body51.fail_crit_edge ], [ %call67, %if.then65.fail_crit_edge ], [ %call88, %if.end87.fail_crit_edge ], [ 0, %if.end57.fail_crit_edge ]
  %port_initialized93 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 68
  %30 = ptrtoint ptr %port_initialized93 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %port_initialized93, align 2
  %mac_lock94 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 64
  tail call void @mutex_unlock(ptr noundef %mac_lock94) #22
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end91
  %retval.0 = phi i32 [ %rc.0, %fail ], [ 0, %if.end91 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ef4_enable_interrupts(ptr noundef %efx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 21
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %do.body2, label %do.end7, !prof !542

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/sfc/falcon/efx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1524, 0\0A.popsection", ""() #22, !srcloc !547
  unreachable

do.end7:                                          ; preds = %entry
  %eeh_disabled_legacy_irq = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 8
  %2 = ptrtoint ptr %eeh_disabled_legacy_irq to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %eeh_disabled_legacy_irq, align 4, !range !538
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool8.not = icmp eq i8 %3, 0
  br i1 %tobool8.not, label %do.end7.if.end11_crit_edge, label %if.then9

do.end7.if.end11_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end11

if.then9:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #24
  %legacy_irq = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 7
  %4 = ptrtoint ptr %legacy_irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %legacy_irq, align 16
  tail call void @enable_irq(i32 noundef %5) #22
  %6 = ptrtoint ptr %eeh_disabled_legacy_irq to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %eeh_disabled_legacy_irq, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %do.end7.if.end11_crit_edge
  %type = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 6
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %type, align 4
  %irq_enable_master = getelementptr inbounds %struct.ef4_nic_type, ptr %8, i32 0, i32 35
  %9 = ptrtoint ptr %irq_enable_master to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %irq_enable_master, align 4
  tail call void %10(ptr noundef %efx) #22
  %channel12 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 23
  %11 = ptrtoint ptr %channel12 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %channel12, align 4
  %tobool13.not98 = icmp eq ptr %12, null
  br i1 %tobool13.not98, label %if.end11.for.end_crit_edge, label %for.body.lr.ph

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end11
  %n_channels = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 36
  br label %for.body

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %for.body.lr.ph
  %channel.099 = phi ptr [ %12, %for.body.lr.ph ], [ %42, %cond.end.for.body_crit_edge ]
  %type14 = getelementptr inbounds %struct.ef4_channel, ptr %channel.099, i32 0, i32 2
  %13 = ptrtoint ptr %type14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %type14, align 8
  %keep_eventq = getelementptr inbounds %struct.ef4_channel_type, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %keep_eventq to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %keep_eventq, align 4, !range !538
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool15.not = icmp eq i8 %16, 0
  br i1 %tobool15.not, label %for.body.for.inc_crit_edge, label %if.then16

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc

if.then16:                                        ; preds = %for.body
  %17 = ptrtoint ptr %channel.099 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %channel.099, align 128
  %msg_enable.i = getelementptr inbounds %struct.ef4_nic, ptr %18, i32 0, i32 20
  %19 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %msg_enable.i, align 8
  %and.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then16.do.end13.i_crit_edge, label %do.body3.i

if.then16.do.end13.i_crit_edge:                   ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end13.i

do.body3.i:                                       ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_init_eventq.__UNIQUE_ID_ddebug537, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_enable_interrupts, %if.then7.i)) #22
          to label %do.end13.i [label %if.then7.i], !srcloc !536

if.then7.i:                                       ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #24
  %net_dev.i = getelementptr inbounds %struct.ef4_nic, ptr %18, i32 0, i32 69
  %21 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %net_dev.i, align 4
  %channel8.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.099, i32 0, i32 1
  %23 = ptrtoint ptr %channel8.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %channel8.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_init_eventq.__UNIQUE_ID_ddebug537, ptr noundef %22, ptr noundef nonnull @.str.79, i32 noundef %24) #22
  br label %do.end13.i

do.end13.i:                                       ; preds = %if.then7.i, %do.body3.i, %if.then16.do.end13.i_crit_edge
  %25 = ptrtoint ptr %channel.099 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %channel.099, align 128
  %type.i.i = getelementptr inbounds %struct.ef4_nic, ptr %26, i32 0, i32 6
  %27 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %type.i.i, align 4
  %ev_init.i.i = getelementptr inbounds %struct.ef4_nic_type, ptr %28, i32 0, i32 52
  %29 = ptrtoint ptr %ev_init.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ev_init.i.i, align 8
  %call.i.i = tail call i32 %30(ptr noundef nonnull %channel.099) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i, label %ef4_init_eventq.exit.thread, label %do.end13.i.fail_crit_edge

do.end13.i.fail_crit_edge:                        ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %fail

ef4_init_eventq.exit.thread:                      ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #24
  %type.i = getelementptr inbounds %struct.ef4_nic, ptr %18, i32 0, i32 6
  %31 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %type.i, align 4
  %push_irq_moderation.i = getelementptr inbounds %struct.ef4_nic_type, ptr %32, i32 0, i32 25
  %33 = ptrtoint ptr %push_irq_moderation.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %push_irq_moderation.i, align 4
  tail call void %34(ptr noundef nonnull %channel.099) #22
  %eventq_read_ptr.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.099, i32 0, i32 12
  %35 = ptrtoint ptr %eventq_read_ptr.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %eventq_read_ptr.i, align 4
  %eventq_init.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.099, i32 0, i32 3
  %36 = ptrtoint ptr %eventq_init.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %eventq_init.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %ef4_init_eventq.exit.thread, %for.body.for.inc_crit_edge
  %channel21 = getelementptr inbounds %struct.ef4_channel, ptr %channel.099, i32 0, i32 1
  %37 = ptrtoint ptr %channel21 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %channel21, align 4
  %add = add i32 %38, 1
  %39 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %n_channels, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %40)
  %cmp22 = icmp ult i32 %add, %40
  br i1 %cmp22, label %cond.end, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

cond.end:                                         ; preds = %for.inc
  %arrayidx26 = getelementptr %struct.ef4_nic, ptr %efx, i32 0, i32 23, i32 %add
  %41 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx26, align 4
  %tobool13.not = icmp eq ptr %42, null
  br i1 %tobool13.not, label %cond.end.for.end_crit_edge, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

for.end:                                          ; preds = %cond.end.for.end_crit_edge, %for.inc.for.end_crit_edge, %if.end11.for.end_crit_edge
  %call27 = tail call fastcc i32 @ef4_soft_enable_interrupts(ptr noundef %efx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %for.end.cleanup_crit_edge, label %for.end.fail_crit_edge

for.end.fail_crit_edge:                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %fail

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

fail:                                             ; preds = %for.end.fail_crit_edge, %do.end13.i.fail_crit_edge
  %channel.097 = phi ptr [ null, %for.end.fail_crit_edge ], [ %channel.099, %do.end13.i.fail_crit_edge ]
  %rc.0 = phi i32 [ %call27, %for.end.fail_crit_edge ], [ %call.i.i, %do.end13.i.fail_crit_edge ]
  %43 = ptrtoint ptr %channel12 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %channel12, align 4
  %tobool34.not101 = icmp eq ptr %44, null
  %cmp36102 = icmp eq ptr %44, %channel.097
  %or.cond103 = select i1 %tobool34.not101, i1 true, i1 %cmp36102
  br i1 %or.cond103, label %fail.for.end57_crit_edge, label %if.end38.lr.ph

fail.for.end57_crit_edge:                         ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end57

if.end38.lr.ph:                                   ; preds = %fail
  %n_channels47 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 36
  br label %if.end38

if.end38:                                         ; preds = %cond.end55.if.end38_crit_edge, %if.end38.lr.ph
  %channel.1104 = phi ptr [ %44, %if.end38.lr.ph ], [ %73, %cond.end55.if.end38_crit_edge ]
  %type39 = getelementptr inbounds %struct.ef4_channel, ptr %channel.1104, i32 0, i32 2
  %45 = ptrtoint ptr %type39 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %type39, align 8
  %keep_eventq40 = getelementptr inbounds %struct.ef4_channel_type, ptr %46, i32 0, i32 6
  %47 = ptrtoint ptr %keep_eventq40 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %keep_eventq40, align 4, !range !538
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool41.not = icmp eq i8 %48, 0
  br i1 %tobool41.not, label %if.end38.for.inc44_crit_edge, label %if.then42

if.end38.for.inc44_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc44

if.then42:                                        ; preds = %if.end38
  %eventq_init.i88 = getelementptr inbounds %struct.ef4_channel, ptr %channel.1104, i32 0, i32 3
  %49 = ptrtoint ptr %eventq_init.i88 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %eventq_init.i88, align 4, !range !538
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i89 = icmp eq i8 %50, 0
  br i1 %tobool.not.i89, label %if.then42.for.inc44_crit_edge, label %do.body.i

if.then42.for.inc44_crit_edge:                    ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc44

do.body.i:                                        ; preds = %if.then42
  %51 = ptrtoint ptr %channel.1104 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %channel.1104, align 128
  %msg_enable.i90 = getelementptr inbounds %struct.ef4_nic, ptr %52, i32 0, i32 20
  %53 = ptrtoint ptr %msg_enable.i90 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %msg_enable.i90, align 8
  %and.i91 = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i91)
  %tobool1.not.i = icmp eq i32 %and.i91, 0
  br i1 %tobool1.not.i, label %do.body.i.do.end12.i_crit_edge, label %do.body3.i92

do.body.i.do.end12.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end12.i

do.body3.i92:                                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_fini_eventq.__UNIQUE_ID_ddebug539, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_enable_interrupts, %if.then7.i94)) #22
          to label %do.end12.i [label %if.then7.i94], !srcloc !536

if.then7.i94:                                     ; preds = %do.body3.i92
  call void @__sanitizer_cov_trace_pc() #24
  %55 = ptrtoint ptr %channel.1104 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %channel.1104, align 128
  %net_dev.i93 = getelementptr inbounds %struct.ef4_nic, ptr %56, i32 0, i32 69
  %57 = ptrtoint ptr %net_dev.i93 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %net_dev.i93, align 4
  %channel9.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.1104, i32 0, i32 1
  %59 = ptrtoint ptr %channel9.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %channel9.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_fini_eventq.__UNIQUE_ID_ddebug539, ptr noundef %58, ptr noundef nonnull @.str.81, i32 noundef %60) #22
  br label %do.end12.i

do.end12.i:                                       ; preds = %if.then7.i94, %do.body3.i92, %do.body.i.do.end12.i_crit_edge
  %61 = ptrtoint ptr %channel.1104 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %channel.1104, align 128
  %type.i.i95 = getelementptr inbounds %struct.ef4_nic, ptr %62, i32 0, i32 6
  %63 = ptrtoint ptr %type.i.i95 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %type.i.i95, align 4
  %ev_fini.i.i = getelementptr inbounds %struct.ef4_nic_type, ptr %64, i32 0, i32 53
  %65 = ptrtoint ptr %ev_fini.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ev_fini.i.i, align 4
  tail call void %66(ptr noundef nonnull %channel.1104) #22
  %67 = ptrtoint ptr %eventq_init.i88 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %eventq_init.i88, align 4
  br label %for.inc44

for.inc44:                                        ; preds = %do.end12.i, %if.then42.for.inc44_crit_edge, %if.end38.for.inc44_crit_edge
  %channel45 = getelementptr inbounds %struct.ef4_channel, ptr %channel.1104, i32 0, i32 1
  %68 = ptrtoint ptr %channel45 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %channel45, align 4
  %add46 = add i32 %69, 1
  %70 = ptrtoint ptr %n_channels47 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %n_channels47, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add46, i32 %71)
  %cmp48 = icmp ult i32 %add46, %71
  br i1 %cmp48, label %cond.end55, label %for.inc44.for.end57_crit_edge

for.inc44.for.end57_crit_edge:                    ; preds = %for.inc44
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end57

cond.end55:                                       ; preds = %for.inc44
  %arrayidx53 = getelementptr %struct.ef4_nic, ptr %efx, i32 0, i32 23, i32 %add46
  %72 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx53, align 4
  %tobool34.not = icmp eq ptr %73, null
  %cmp36 = icmp eq ptr %73, %channel.097
  %or.cond = select i1 %tobool34.not, i1 true, i1 %cmp36
  br i1 %or.cond, label %cond.end55.for.end57_crit_edge, label %cond.end55.if.end38_crit_edge

cond.end55.if.end38_crit_edge:                    ; preds = %cond.end55
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end38

cond.end55.for.end57_crit_edge:                   ; preds = %cond.end55
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end57

for.end57:                                        ; preds = %cond.end55.for.end57_crit_edge, %for.inc44.for.end57_crit_edge, %fail.for.end57_crit_edge
  %74 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %type, align 4
  %irq_disable_non_ev = getelementptr inbounds %struct.ef4_nic_type, ptr %75, i32 0, i32 37
  %76 = ptrtoint ptr %irq_disable_non_ev to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %irq_disable_non_ev, align 4
  tail call void %77(ptr noundef %efx) #22
  br label %cleanup

cleanup:                                          ; preds = %for.end57, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %for.end57 ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ef4_reset(ptr noundef %efx, i32 noundef %method) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end

if.then:                                          ; preds = %entry
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %2 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net_dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %method)
  %cmp = icmp ult i32 %method, 13
  br i1 %cmp, label %cond.true, label %if.then.cond.end_crit_edge

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  br label %cond.end

cond.true:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  %arrayidx = getelementptr [13 x ptr], ptr @ef4_reset_type_names, i32 0, i32 %method
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then.cond.end_crit_edge
  %cond = phi ptr [ %5, %cond.true ], [ @.str.56, %if.then.cond.end_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %3, ptr noundef nonnull @.str.55, ptr noundef %cond) #25
  br label %do.end

do.end:                                           ; preds = %cond.end, %entry.do.end_crit_edge
  %net_dev.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %6 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net_dev.i, align 4
  tail call fastcc void @local_bh_disable() #22
  tail call void @netif_tx_lock(ptr noundef %7) #22
  tail call void @netif_device_detach(ptr noundef %7) #22
  tail call void @netif_tx_unlock(ptr noundef %7) #22
  tail call fastcc void @local_bh_enable() #22
  tail call void @ef4_reset_down(ptr noundef %efx, i32 noundef %method)
  %type = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 6
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %type, align 4
  %reset = getelementptr inbounds %struct.ef4_nic_type, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reset, align 8
  %call = tail call i32 %11(ptr noundef %efx, i32 noundef %method) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end12, label %do.body3

do.body3:                                         ; preds = %do.end
  %12 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %msg_enable, align 8
  %and5 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %do.body3.lor.end_crit_edge, label %if.then7

do.body3.lor.end_crit_edge:                       ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #24
  br label %lor.end

if.then7:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #24
  %14 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %net_dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %15, ptr noundef nonnull @.str.57) #25
  br label %lor.end

if.end12:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %method)
  %cmp13 = icmp ult i32 %method, 7
  br i1 %cmp13, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #24
  %shl.neg = shl nsw i32 -2, %method
  %reset_pending = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 22
  %16 = ptrtoint ptr %reset_pending to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %reset_pending, align 32
  %and15 = and i32 %17, %shl.neg
  store i32 %and15, ptr %reset_pending, align 32
  br label %if.end17

if.else:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #24
  %reset_pending16 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 22
  %rem.i = and i32 %method, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %method, 5
  %add.ptr.i = getelementptr i32, ptr %reset_pending16, i32 %div2.i
  %neg.i = xor i32 %shl.i, -1
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i, align 4
  %and.i = and i32 %19, %neg.i
  store i32 %and.i, ptr %add.ptr.i, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then14
  %pci_dev = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 4
  %20 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pci_dev, align 4
  tail call void @pci_set_master(ptr noundef %21) #22
  %22 = and i32 %method, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %22)
  %23 = icmp eq i32 %22, 4
  br label %lor.end

lor.end:                                          ; preds = %if.end17, %if.then7, %do.body3.lor.end_crit_edge
  %24 = phi i1 [ true, %if.then7 ], [ true, %do.body3.lor.end_crit_edge ], [ %23, %if.end17 ]
  %lnot = xor i1 %24, true
  %call22 = tail call i32 @ef4_reset_up(ptr noundef %efx, i32 noundef %method, i1 noundef zeroext %lnot)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  %not.tobool23.not = xor i1 %tobool23.not, true
  %disabled.0.off0 = or i1 %24, %not.tobool23.not
  br i1 %disabled.0.off0, label %if.then30, label %do.body42

if.then30:                                        ; preds = %lor.end
  %25 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %net_dev.i, align 4
  tail call void @dev_close(ptr noundef %26) #22
  %27 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %msg_enable, align 8
  %and34 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.then30.do.end40_crit_edge, label %if.then36

if.then30.do.end40_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end40

if.then36:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #24
  %29 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %net_dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %30, ptr noundef nonnull @.str.58) #25
  br label %do.end40

do.end40:                                         ; preds = %if.then36, %if.then30.do.end40_crit_edge
  %state = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 21
  %31 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 2, ptr %state, align 4
  br label %if.end63

do.body42:                                        ; preds = %lor.end
  %32 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %msg_enable, align 8
  %and44 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %do.body42.do.end61_crit_edge, label %do.body47

do.body42.do.end61_crit_edge:                     ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end61

do.body47:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_reset.__UNIQUE_ID_ddebug586, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_reset, %if.then54)) #22
          to label %do.end61 [label %if.then54], !srcloc !536

if.then54:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #24
  %34 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %net_dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_reset.__UNIQUE_ID_ddebug586, ptr noundef %35, ptr noundef nonnull @.str.60) #22
  br label %do.end61

do.end61:                                         ; preds = %if.then54, %do.body47, %do.body42.do.end61_crit_edge
  %36 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %net_dev.i, align 4
  tail call void @netif_device_attach(ptr noundef %37) #22
  br label %if.end63

if.end63:                                         ; preds = %do.end61, %do.end40
  %spec.select = select i1 %tobool1.not, i32 %call22, i32 %call
  %rc.0 = select i1 %tobool23.not, i32 %call, i32 %spec.select
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ef4_try_recovery(ptr nocapture readnone %efx) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ef4_port_dummy_op_int(ptr nocapture readnone %efx) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ef4_port_dummy_op_void(ptr nocapture %efx) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ef4_update_sw_stats(ptr noundef %efx, ptr nocapture noundef writeonly %stats) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %channel1 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 23
  %0 = ptrtoint ptr %channel1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel1, align 4
  %tobool.not21 = icmp eq ptr %1, null
  br i1 %tobool.not21, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %n_channels = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 36
  %2 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_channels, align 4
  br label %for.body

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %for.body.lr.ph
  %channel.023 = phi ptr [ %1, %for.body.lr.ph ], [ %9, %cond.end.for.body_crit_edge ]
  %n_rx_nodesc_trunc.022 = phi i64 [ 0, %for.body.lr.ph ], [ %add, %cond.end.for.body_crit_edge ]
  %n_rx_nodesc_trunc2 = getelementptr inbounds %struct.ef4_channel, ptr %channel.023, i32 0, i32 25
  %4 = ptrtoint ptr %n_rx_nodesc_trunc2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_rx_nodesc_trunc2, align 16
  %conv = zext i32 %5 to i64
  %add = add i64 %n_rx_nodesc_trunc.022, %conv
  %channel3 = getelementptr inbounds %struct.ef4_channel, ptr %channel.023, i32 0, i32 1
  %6 = ptrtoint ptr %channel3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel3, align 4
  %add4 = add i32 %7, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add4, i32 %3)
  %cmp = icmp ult i32 %add4, %3
  br i1 %cmp, label %cond.end, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

cond.end:                                         ; preds = %for.body
  %arrayidx9 = getelementptr %struct.ef4_nic, ptr %efx, i32 0, i32 23, i32 %add4
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx9, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %cond.end.for.end_crit_edge, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

for.end:                                          ; preds = %cond.end.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %n_rx_nodesc_trunc.0.lcssa = phi i64 [ 0, %entry.for.end_crit_edge ], [ %add, %cond.end.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  %arrayidx10 = getelementptr i64, ptr %stats, i32 1
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %n_rx_nodesc_trunc.0.lcssa, ptr %arrayidx10, align 8
  %n_rx_noskb_drops = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 106
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %n_rx_noskb_drops, i32 noundef 4) #22
  %11 = ptrtoint ptr %n_rx_noskb_drops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %n_rx_noskb_drops, align 4
  %conv11 = sext i32 %12 to i64
  %13 = ptrtoint ptr %stats to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv11, ptr %stats, align 8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ef4_exit_module() #9 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65) #25
  tail call void @pci_unregister_driver(ptr noundef nonnull @ef4_pci_driver) #22
  %0 = load ptr, ptr @reset_workqueue, align 4
  tail call void @destroy_workqueue(ptr noundef %0) #22
  %call1 = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @ef4_netdev_notifier) #22
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ef4_init_module() #9 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.203) #25
  %call1 = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @ef4_netdev_notifier) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.119, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull @.str.205) #22
  store ptr %call2, ptr @reset_workqueue, align 4
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.err_reset_crit_edge, label %if.end5

if.end.err_reset_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %err_reset

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @__pci_register_driver(ptr noundef nonnull @ef4_pci_driver, ptr noundef null, ptr noundef nonnull @.str.38) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %err_pci, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

err_pci:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #24
  %0 = load ptr, ptr @reset_workqueue, align 4
  tail call void @destroy_workqueue(ptr noundef %0) #22
  br label %err_reset

err_reset:                                        ; preds = %err_pci, %if.end.err_reset_crit_edge
  %rc.0 = phi i32 [ %call6, %err_pci ], [ -12, %if.end.err_reset_crit_edge ]
  %call9 = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @ef4_netdev_notifier) #22
  br label %cleanup

cleanup:                                          ; preds = %err_reset, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5.cleanup_crit_edge ], [ %call1, %entry.cleanup_crit_edge ], [ %rc.0, %err_reset ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ef4_probe_tx_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ef4_probe_rx_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef4_remove_rx_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef4_remove_tx_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ef4_start_port(ptr noundef %efx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  %and = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body8_crit_edge, label %do.body1

entry.do.body8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body8

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_start_port.__UNIQUE_ID_ddebug556, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_start_port, %if.then5)) #22
          to label %do.body8 [label %if.then5], !srcloc !536

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #24
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %2 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_start_port.__UNIQUE_ID_ddebug556, ptr noundef %3, ptr noundef nonnull @.str.83) #22
  br label %do.body8

do.body8:                                         ; preds = %if.then5, %do.body1, %entry.do.body8_crit_edge
  %port_enabled = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 66
  %4 = ptrtoint ptr %port_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %port_enabled, align 8, !range !538
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool9.not = icmp eq i8 %5, 0
  br i1 %tobool9.not, label %do.end22, label %do.body17, !prof !539

do.body17:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #24
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/sfc/falcon/efx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1084, 0\0A.popsection", ""() #22, !srcloc !548
  unreachable

do.end22:                                         ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #24
  %mac_lock = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 64
  tail call void @mutex_lock_nested(ptr noundef %mac_lock, i32 noundef 0) #22
  %6 = ptrtoint ptr %port_enabled to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %port_enabled, align 8
  %filter_sem.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 91
  tail call void @down_read(ptr noundef %filter_sem.i) #22
  %type.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 6
  %7 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %type.i, align 4
  %reconfigure_mac.i = getelementptr inbounds %struct.ef4_nic_type, ptr %8, i32 0, i32 28
  %9 = ptrtoint ptr %reconfigure_mac.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reconfigure_mac.i, align 8
  %call.i = tail call i32 %10(ptr noundef %efx) #22
  tail call void @up_read(ptr noundef %filter_sem.i) #22
  tail call void @mutex_unlock(ptr noundef %mac_lock) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ef4_start_datapath(ptr noundef %efx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %0 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net_dev, align 4
  %features = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %features, align 16
  %rx_scatter = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 54
  %4 = ptrtoint ptr %rx_scatter to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rx_scatter, align 4, !range !538
  %rx_prefix_size = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 48
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
  %type = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 6
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %type, align 4
  %rx_buffer_padding = getelementptr inbounds %struct.ef4_nic_type, ptr %11, i32 0, i32 89
  %12 = ptrtoint ptr %rx_buffer_padding to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_buffer_padding, align 4
  %add7 = add i32 %add6, %13
  %rx_dma_len = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 42
  %14 = ptrtoint ptr %rx_dma_len to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add7, ptr %rx_dma_len, align 4
  %rx_ip_align = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 41
  %15 = ptrtoint ptr %rx_ip_align to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rx_ip_align, align 8
  %add8 = add i32 %16, 128
  %add10 = add i32 %add8, %add7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %add10)
  %cmp = icmp ult i32 %add10, 4097
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %always_rx_scatter = getelementptr inbounds %struct.ef4_nic_type, ptr %11, i32 0, i32 91
  %17 = ptrtoint ptr %always_rx_scatter to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %always_rx_scatter, align 1, !range !538
  %19 = ptrtoint ptr %rx_scatter to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %rx_scatter, align 4
  br label %if.end27

if.else:                                          ; preds = %entry
  %can_rx_scatter = getelementptr inbounds %struct.ef4_nic_type, ptr %11, i32 0, i32 90
  %20 = ptrtoint ptr %can_rx_scatter to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %can_rx_scatter, align 8, !range !538
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool16.not = icmp eq i8 %21, 0
  br i1 %tobool16.not, label %if.else24, label %do.end20

do.end20:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #24
  %22 = ptrtoint ptr %rx_scatter to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %rx_scatter, align 4
  %23 = ptrtoint ptr %rx_dma_len to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1792, ptr %rx_dma_len, align 4
  br label %if.end27

if.else24:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #24
  %24 = ptrtoint ptr %rx_scatter to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %rx_scatter, align 4
  %sub.i = add i32 %add10, -1
  %shr.i = lshr i32 %sub.i, 12
  %25 = tail call i32 @llvm.ctlz.i32(i32 %shr.i, i1 true) #22, !range !541
  %sub.i.i = sub nuw nsw i32 32, %25
  br label %if.end27

if.end27:                                         ; preds = %if.else24, %do.end20, %if.then
  %.sink = phi i32 [ 0, %do.end20 ], [ 0, %if.then ], [ %sub.i.i, %if.else24 ]
  %rx_buffer_order23 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 43
  %26 = ptrtoint ptr %rx_buffer_order23 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %.sink, ptr %rx_buffer_order23, align 16
  tail call void @ef4_rx_config_page_split(ptr noundef %efx) #22
  %rx_buffer_order28 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 43
  %27 = ptrtoint ptr %rx_buffer_order28 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rx_buffer_order28, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool29.not = icmp eq i32 %28, 0
  %msg_enable53 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %29 = ptrtoint ptr %msg_enable53 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %msg_enable53, align 8
  %and54 = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool29.not, label %do.body52, label %do.body31

do.body31:                                        ; preds = %if.end27
  br i1 %tobool55.not, label %do.body31.if.end79_crit_edge, label %do.body35

do.body31.if.end79_crit_edge:                     ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end79

do.body35:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_start_datapath.__UNIQUE_ID_ddebug544, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_start_datapath, %if.then41)) #22
          to label %if.end79 [label %if.then41], !srcloc !536

if.then41:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #24
  %31 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %net_dev, align 4
  %33 = ptrtoint ptr %rx_dma_len to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rx_dma_len, align 4
  %35 = ptrtoint ptr %rx_buffer_order28 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rx_buffer_order28, align 16
  %rx_pages_per_batch = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 47
  %37 = ptrtoint ptr %rx_pages_per_batch to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rx_pages_per_batch, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_start_datapath.__UNIQUE_ID_ddebug544, ptr noundef %32, ptr noundef nonnull @.str.85, i32 noundef %34, i32 noundef %36, i32 noundef %38) #22
  br label %if.end79

do.body52:                                        ; preds = %if.end27
  br i1 %tobool55.not, label %do.body52.if.end79_crit_edge, label %do.body57

do.body52.if.end79_crit_edge:                     ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end79

do.body57:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_start_datapath.__UNIQUE_ID_ddebug545, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_start_datapath, %if.then69)) #22
          to label %if.end79 [label %if.then69], !srcloc !536

if.then69:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #24
  %39 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %net_dev, align 4
  %41 = ptrtoint ptr %rx_dma_len to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rx_dma_len, align 4
  %rx_page_buf_step = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 45
  %43 = ptrtoint ptr %rx_page_buf_step to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rx_page_buf_step, align 8
  %rx_bufs_per_page = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 46
  %45 = ptrtoint ptr %rx_bufs_per_page to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rx_bufs_per_page, align 4
  %rx_pages_per_batch72 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 47
  %47 = ptrtoint ptr %rx_pages_per_batch72 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rx_pages_per_batch72, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_start_datapath.__UNIQUE_ID_ddebug545, ptr noundef %40, ptr noundef nonnull @.str.86, i32 noundef %42, i32 noundef %44, i32 noundef %46, i32 noundef %48) #22
  br label %if.end79

if.end79:                                         ; preds = %if.then69, %do.body57, %do.body52.if.end79_crit_edge, %if.then41, %do.body35, %do.body31.if.end79_crit_edge
  %49 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %net_dev, align 4
  %features81 = getelementptr inbounds %struct.net_device, ptr %50, i32 0, i32 23
  %51 = ptrtoint ptr %features81 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %features81, align 16
  %hw_features = getelementptr inbounds %struct.net_device, ptr %50, i32 0, i32 24
  %53 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %hw_features, align 8
  %or = or i64 %54, %52
  store i64 %or, ptr %hw_features, align 8
  %fixed_features = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 70
  %55 = ptrtoint ptr %fixed_features to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %fixed_features, align 32
  %neg = xor i64 %56, -1
  %57 = load ptr, ptr %net_dev, align 4
  %hw_features84 = getelementptr inbounds %struct.net_device, ptr %57, i32 0, i32 24
  %58 = ptrtoint ptr %hw_features84 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %hw_features84, align 8
  %and85 = and i64 %59, %neg
  store i64 %and85, ptr %hw_features84, align 8
  %60 = load i64, ptr %fixed_features, align 32
  %61 = load ptr, ptr %net_dev, align 4
  %features88 = getelementptr inbounds %struct.net_device, ptr %61, i32 0, i32 23
  %62 = ptrtoint ptr %features88 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %features88, align 16
  %or89 = or i64 %63, %60
  store i64 %or89, ptr %features88, align 16
  %64 = load ptr, ptr %net_dev, align 4
  %features91 = getelementptr inbounds %struct.net_device, ptr %64, i32 0, i32 23
  %65 = ptrtoint ptr %features91 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %features91, align 16
  call void @__sanitizer_cov_trace_cmp8(i64 %66, i64 %3)
  %cmp92.not = icmp eq i64 %66, %3
  br i1 %cmp92.not, label %if.end79.if.end95_crit_edge, label %if.then93

if.end79.if.end95_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end95

if.then93:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @netdev_features_change(ptr noundef %64) #22
  br label %if.end95

if.end95:                                         ; preds = %if.then93, %if.end79.if.end95_crit_edge
  %67 = ptrtoint ptr %rx_scatter to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %rx_scatter, align 4, !range !538
  call void @__sanitizer_cov_trace_cmp1(i8 %68, i8 %5)
  %cmp100.not = icmp eq i8 %68, %5
  br i1 %cmp100.not, label %if.end95.if.end104_crit_edge, label %if.then102

if.end95.if.end104_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end104

if.then102:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #24
  %69 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %type, align 4
  %filter_update_rx_scatter = getelementptr inbounds %struct.ef4_nic_type, ptr %70, i32 0, i32 61
  %71 = ptrtoint ptr %filter_update_rx_scatter to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %filter_update_rx_scatter, align 4
  tail call void %72(ptr noundef %efx) #22
  br label %if.end104

if.end104:                                        ; preds = %if.then102, %if.end95.if.end104_crit_edge
  %txq_entries = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 27
  %73 = ptrtoint ptr %txq_entries to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %txq_entries, align 16
  %call105 = tail call i32 @ef4_tx_max_skb_descs(ptr noundef %efx) #22
  %sub = sub i32 %74, %call105
  %txq_stop_thresh = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 28
  %75 = ptrtoint ptr %txq_stop_thresh to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %sub, ptr %txq_stop_thresh, align 4
  %div247 = lshr i32 %sub, 1
  %txq_wake_thresh = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 29
  %76 = ptrtoint ptr %txq_wake_thresh to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %div247, ptr %txq_wake_thresh, align 8
  %channel107 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 23
  %77 = ptrtoint ptr %channel107 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %channel107, align 4
  %tobool108.not270 = icmp eq ptr %78, null
  br i1 %tobool108.not270, label %if.end104.for.end172_crit_edge, label %for.body.lr.ph

if.end104.for.end172_crit_edge:                   ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end172

for.body.lr.ph:                                   ; preds = %if.end104
  %active_queues = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 96
  %n_channels = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 36
  br label %for.body

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %for.body.lr.ph
  %channel.0271 = phi ptr [ %78, %for.body.lr.ph ], [ %126, %cond.end.for.body_crit_edge ]
  %channel1.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.0271, i32 0, i32 1
  %79 = ptrtoint ptr %channel1.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %channel1.i, align 4
  %81 = ptrtoint ptr %channel.0271 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %channel.0271, align 128
  %tx_channel_offset.i = getelementptr inbounds %struct.ef4_nic, ptr %82, i32 0, i32 39
  %83 = ptrtoint ptr %tx_channel_offset.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %tx_channel_offset.i, align 32
  %sub.i253 = sub i32 %80, %84
  %n_tx_channels.i = getelementptr inbounds %struct.ef4_nic, ptr %82, i32 0, i32 40
  %85 = ptrtoint ptr %n_tx_channels.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %n_tx_channels.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i253, i32 %86)
  %cmp.i = icmp ult i32 %sub.i253, %86
  br i1 %cmp.i, label %if.else111, label %for.body.if.end121_crit_edge

for.body.if.end121_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end121

if.else111:                                       ; preds = %for.body
  %tx_queue112 = getelementptr inbounds %struct.ef4_channel, ptr %channel.0271, i32 0, i32 32
  %add.ptr = getelementptr %struct.ef4_channel, ptr %channel.0271, i32 1
  %cmp116265 = icmp ult ptr %tx_queue112, %add.ptr
  br i1 %cmp116265, label %if.else111.land.rhs_crit_edge, label %if.else111.if.end121_crit_edge

if.else111.if.end121_crit_edge:                   ; preds = %if.else111
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end121

if.else111.land.rhs_crit_edge:                    ; preds = %if.else111
  br label %land.rhs

land.rhs:                                         ; preds = %for.body120.land.rhs_crit_edge, %if.else111.land.rhs_crit_edge
  %tx_queue.0266 = phi ptr [ %incdec.ptr, %for.body120.land.rhs_crit_edge ], [ %tx_queue112, %if.else111.land.rhs_crit_edge ]
  %87 = ptrtoint ptr %tx_queue.0266 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %tx_queue.0266, align 128
  %net_dev.i = getelementptr inbounds %struct.ef4_nic, ptr %88, i32 0, i32 69
  %89 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %net_dev.i, align 4
  %num_tc.i = getelementptr inbounds %struct.net_device, ptr %90, i32 0, i32 140
  %91 = ptrtoint ptr %num_tc.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %num_tc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %92)
  %cmp.i254 = icmp slt i16 %92, 2
  br i1 %cmp.i254, label %ef4_tx_queue_used.exit, label %land.rhs.for.body120_crit_edge

land.rhs.for.body120_crit_edge:                   ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body120

ef4_tx_queue_used.exit:                           ; preds = %land.rhs
  %queue.i = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue.0266, i32 0, i32 1
  %93 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %queue.i, align 4
  %and.i = and i32 %94, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp eq i32 %and.i, 0
  br i1 %tobool.i, label %ef4_tx_queue_used.exit.for.body120_crit_edge, label %ef4_tx_queue_used.exit.if.end121_crit_edge

ef4_tx_queue_used.exit.if.end121_crit_edge:       ; preds = %ef4_tx_queue_used.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end121

ef4_tx_queue_used.exit.for.body120_crit_edge:     ; preds = %ef4_tx_queue_used.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body120

for.body120:                                      ; preds = %ef4_tx_queue_used.exit.for.body120_crit_edge, %land.rhs.for.body120_crit_edge
  tail call void @ef4_init_tx_queue(ptr noundef %tx_queue.0266) #22
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_queues, i32 noundef 4) #22
  tail call void @llvm.prefetch.p0(ptr %active_queues, i32 1, i32 3, i32 1) #22
  %95 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active_queues, ptr %active_queues, i32 1, ptr elementtype(i32) %active_queues) #22, !srcloc !549
  %incdec.ptr = getelementptr %struct.ef4_tx_queue, ptr %tx_queue.0266, i32 1
  %cmp116 = icmp ult ptr %incdec.ptr, %add.ptr
  br i1 %cmp116, label %for.body120.land.rhs_crit_edge, label %for.body120.if.end121_crit_edge

for.body120.if.end121_crit_edge:                  ; preds = %for.body120
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end121

for.body120.land.rhs_crit_edge:                   ; preds = %for.body120
  call void @__sanitizer_cov_trace_pc() #24
  br label %land.rhs

if.end121:                                        ; preds = %for.body120.if.end121_crit_edge, %ef4_tx_queue_used.exit.if.end121_crit_edge, %if.else111.if.end121_crit_edge, %for.body.if.end121_crit_edge
  %core_index.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.0271, i32 0, i32 30, i32 1
  %96 = ptrtoint ptr %core_index.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %core_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %97)
  %cmp.i255 = icmp sgt i32 %97, -1
  br i1 %cmp.i255, label %if.else124, label %if.end121.if.end132_crit_edge

if.end121.if.end132_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end132

if.else124:                                       ; preds = %if.end121
  %rx_queue125 = getelementptr inbounds %struct.ef4_channel, ptr %channel.0271, i32 0, i32 30
  %tobool127.not268 = icmp eq ptr %rx_queue125, null
  br i1 %tobool127.not268, label %if.else124.if.end132_crit_edge, label %for.body128.lr.ph

if.else124.if.end132_crit_edge:                   ; preds = %if.else124
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end132

for.body128.lr.ph:                                ; preds = %if.else124
  %enabled.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.0271, i32 0, i32 4
  %napi_str.i260 = getelementptr inbounds %struct.ef4_channel, ptr %channel.0271, i32 0, i32 8
  tail call void @ef4_init_rx_queue(ptr noundef nonnull %rx_queue125) #22
  %call.i.i252 = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_queues, i32 noundef 4) #22
  tail call void @llvm.prefetch.p0(ptr %active_queues, i32 1, i32 3, i32 1) #22
  %98 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active_queues, ptr %active_queues, i32 1, ptr elementtype(i32) %active_queues) #22, !srcloc !549
  %99 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %enabled.i, align 1, !range !538
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool.not.i = icmp eq i8 %100, 0
  br i1 %tobool.not.i, label %for.body128.lr.ph.ef4_stop_eventq.exit_crit_edge, label %if.end.i

for.body128.lr.ph.ef4_stop_eventq.exit_crit_edge: ; preds = %for.body128.lr.ph
  call void @__sanitizer_cov_trace_pc() #24
  br label %ef4_stop_eventq.exit

if.end.i:                                         ; preds = %for.body128.lr.ph
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @napi_disable(ptr noundef %napi_str.i260) #22
  %101 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 0, ptr %enabled.i, align 1
  br label %ef4_stop_eventq.exit

ef4_stop_eventq.exit:                             ; preds = %if.end.i, %for.body128.lr.ph.ef4_stop_eventq.exit_crit_edge
  tail call void @ef4_fast_push_rx_descriptors(ptr noundef nonnull %rx_queue125, i1 noundef zeroext false) #22
  %102 = ptrtoint ptr %channel.0271 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %channel.0271, align 128
  %msg_enable.i = getelementptr inbounds %struct.ef4_nic, ptr %103, i32 0, i32 20
  %104 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %msg_enable.i, align 8
  %and.i256 = and i32 %105, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i256)
  %tobool.not.i257 = icmp eq i32 %and.i256, 0
  br i1 %tobool.not.i257, label %ef4_stop_eventq.exit.ef4_start_eventq.exit_crit_edge, label %do.body1.i

ef4_stop_eventq.exit.ef4_start_eventq.exit_crit_edge: ; preds = %ef4_stop_eventq.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %ef4_start_eventq.exit

do.body1.i:                                       ; preds = %ef4_stop_eventq.exit
  call void @__sanitizer_cov_trace_pc() #24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_start_eventq.__UNIQUE_ID_ddebug538, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_start_datapath, %if.then5.i)) #22
          to label %ef4_start_eventq.exit [label %if.then5.i], !srcloc !536

if.then5.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #24
  %106 = ptrtoint ptr %channel.0271 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %channel.0271, align 128
  %net_dev.i258 = getelementptr inbounds %struct.ef4_nic, ptr %107, i32 0, i32 69
  %108 = ptrtoint ptr %net_dev.i258 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %net_dev.i258, align 4
  %110 = ptrtoint ptr %channel1.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %channel1.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_start_eventq.__UNIQUE_ID_ddebug538, ptr noundef %109, ptr noundef nonnull @.str.41, i32 noundef %111) #22
  br label %ef4_start_eventq.exit

ef4_start_eventq.exit:                            ; preds = %if.then5.i, %do.body1.i, %ef4_stop_eventq.exit.ef4_start_eventq.exit_crit_edge
  %112 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 1, ptr %enabled.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !537
  tail call void @napi_enable(ptr noundef %napi_str.i260) #22
  %113 = ptrtoint ptr %channel.0271 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %channel.0271, align 128
  %type.i.i = getelementptr inbounds %struct.ef4_nic, ptr %114, i32 0, i32 6
  %115 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %type.i.i, align 4
  %ev_read_ack.i.i = getelementptr inbounds %struct.ef4_nic_type, ptr %116, i32 0, i32 56
  %117 = ptrtoint ptr %ev_read_ack.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %ev_read_ack.i.i, align 8
  tail call void %118(ptr noundef nonnull %channel.0271) #22
  br label %if.end132

if.end132:                                        ; preds = %ef4_start_eventq.exit, %if.else124.if.end132_crit_edge, %if.end121.if.end132_crit_edge
  %rx_pkt_n_frags = getelementptr inbounds %struct.ef4_channel, ptr %channel.0271, i32 0, i32 28
  %119 = ptrtoint ptr %rx_pkt_n_frags to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %rx_pkt_n_frags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool133.not = icmp eq i32 %120, 0
  br i1 %tobool133.not, label %if.end132.if.end155_crit_edge, label %do.end149, !prof !539

if.end132.if.end155_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end155

do.end149:                                        ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #24
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 678, i32 noundef 9, ptr noundef null) #22
  br label %if.end155

if.end155:                                        ; preds = %do.end149, %if.end132.if.end155_crit_edge
  %121 = ptrtoint ptr %channel1.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %channel1.i, align 4
  %add165 = add i32 %122, 1
  %123 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %n_channels, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add165, i32 %124)
  %cmp166 = icmp ult i32 %add165, %124
  br i1 %cmp166, label %cond.end, label %if.end155.for.end172_crit_edge

if.end155.for.end172_crit_edge:                   ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end172

cond.end:                                         ; preds = %if.end155
  %arrayidx171 = getelementptr %struct.ef4_nic, ptr %efx, i32 0, i32 23, i32 %add165
  %125 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %arrayidx171, align 4
  %tobool108.not = icmp eq ptr %126, null
  br i1 %tobool108.not, label %cond.end.for.end172_crit_edge, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body

cond.end.for.end172_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end172

for.end172:                                       ; preds = %cond.end.for.end172_crit_edge, %if.end155.for.end172_crit_edge, %if.end104.for.end172_crit_edge
  %127 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %net_dev, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %128, i32 0, i32 6
  %129 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load volatile i32, ptr %state.i, align 4
  %131 = and i32 %130, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %tobool.i261.not = icmp eq i32 %131, 0
  br i1 %tobool.i261.not, label %for.end172.if.end177_crit_edge, label %if.then175

for.end172.if.end177_crit_edge:                   ; preds = %for.end172
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end177

if.then175:                                       ; preds = %for.end172
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %128, i32 0, i32 104
  %132 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %cmp4.not.i = icmp eq i32 %133, 0
  br i1 %cmp4.not.i, label %if.then175.if.end177_crit_edge, label %for.body.lr.ph.i

if.then175.if.end177_crit_edge:                   ; preds = %if.then175
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end177

for.body.lr.ph.i:                                 ; preds = %if.then175
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %128, i32 0, i32 103
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.05.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %134 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %_tx.i.i, align 128
  %arrayidx.i.i = getelementptr %struct.netdev_queue, ptr %135, i32 %i.05.i
  tail call void @netif_tx_wake_queue(ptr noundef %arrayidx.i.i) #22
  %inc.i = add nuw i32 %i.05.i, 1
  %136 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i262 = icmp ult i32 %inc.i, %137
  br i1 %cmp.i262, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end177_crit_edge

for.body.i.if.end177_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end177

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body.i

if.end177:                                        ; preds = %for.body.i.if.end177_crit_edge, %if.then175.if.end177_crit_edge, %for.end172.if.end177_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef4_rx_config_page_split(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_features_change(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ef4_tx_max_skb_descs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef4_init_tx_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef4_init_rx_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef4_fast_push_rx_descriptors(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ef4_stop_port(ptr noundef %efx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body8_crit_edge, label %do.body1

entry.do.body8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body8

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_stop_port.__UNIQUE_ID_ddebug557, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_stop_port, %if.then5)) #22
          to label %do.body8 [label %if.then5], !srcloc !536

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #24
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %2 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_stop_port.__UNIQUE_ID_ddebug557, ptr noundef %3, ptr noundef nonnull @.str.88) #22
  br label %do.body8

do.body8:                                         ; preds = %if.then5, %do.body1, %entry.do.body8_crit_edge
  %state = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 21
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  %.off = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %if.then14, label %do.body8.do.end69_crit_edge

do.body8.do.end69_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end69

if.then14:                                        ; preds = %do.body8
  %call15 = tail call i32 @rtnl_is_locked() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.rhs, label %if.then14.do.end69_crit_edge

if.then14.do.end69_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end69

land.rhs:                                         ; preds = %if.then14
  %.b89 = load i1, ptr @ef4_stop_port.__already_done, align 1
  br i1 %.b89, label %land.rhs.do.end69_crit_edge, label %if.then34, !prof !539

land.rhs.do.end69_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end69

if.then34:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @ef4_stop_port.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 1104, i32 noundef 9, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.40, i32 noundef 1104) #22
  br label %do.end69

do.end69:                                         ; preds = %if.then34, %land.rhs.do.end69_crit_edge, %if.then14.do.end69_crit_edge, %do.body8.do.end69_crit_edge
  %mac_lock = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 64
  tail call void @mutex_lock_nested(ptr noundef %mac_lock, i32 noundef 0) #22
  %port_enabled = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 66
  %6 = ptrtoint ptr %port_enabled to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %port_enabled, align 8
  tail call void @mutex_unlock(ptr noundef %mac_lock) #22
  %net_dev71 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %7 = ptrtoint ptr %net_dev71 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %net_dev71, align 4
  %nested_level.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 73
  %9 = ptrtoint ptr %nested_level.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %nested_level.i, align 1
  tail call fastcc void @local_bh_disable() #22
  %addr_list_lock.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 63
  %conv.i = zext i8 %10 to i32
  tail call void @_raw_spin_lock_nested(ptr noundef %addr_list_lock.i, i32 noundef %conv.i) #22
  %11 = ptrtoint ptr %net_dev71 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %net_dev71, align 4
  %addr_list_lock.i90 = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 63
  tail call void @_raw_spin_unlock_bh(ptr noundef %addr_list_lock.i90) #22
  %monitor_work = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 102
  %call73 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %monitor_work) #22
  tail call void @ef4_selftest_async_cancel(ptr noundef %efx) #22
  %mac_work = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 65
  %call74 = tail call zeroext i1 @cancel_work_sync(ptr noundef %mac_work) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ef4_stop_datapath(ptr noundef %efx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 21
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %.off = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %if.then, label %entry.do.body47_crit_edge

entry.do.body47_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body47

if.then:                                          ; preds = %entry
  %call = tail call i32 @rtnl_is_locked() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %if.then.do.body47_crit_edge

if.then.do.body47_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body47

land.rhs:                                         ; preds = %if.then
  %.b243 = load i1, ptr @ef4_stop_datapath.__already_done, align 1
  br i1 %.b243, label %land.rhs.do.body47_crit_edge, label %if.then14, !prof !539

land.rhs.do.body47_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body47

if.then14:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @ef4_stop_datapath.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 692, i32 noundef 9, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.40, i32 noundef 692) #22
  br label %do.body47

do.body47:                                        ; preds = %if.then14, %land.rhs.do.body47_crit_edge, %if.then.do.body47_crit_edge, %entry.do.body47_crit_edge
  %port_enabled = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 66
  %2 = ptrtoint ptr %port_enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %port_enabled, align 8, !range !538
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool48.not = icmp eq i8 %3, 0
  br i1 %tobool48.not, label %do.end64, label %do.body56, !prof !539

do.body56:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #24
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/sfc/falcon/efx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 693, 0\0A.popsection", ""() #22, !srcloc !550
  unreachable

do.end64:                                         ; preds = %do.body47
  %channel65 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 23
  %4 = ptrtoint ptr %channel65 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %channel65, align 4
  %tobool66.not255 = icmp eq ptr %5, null
  br i1 %tobool66.not255, label %do.end64.for.end103_crit_edge, label %for.body.lr.ph

do.end64.for.end103_crit_edge:                    ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end103

for.body.lr.ph:                                   ; preds = %do.end64
  %n_channels = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 36
  br label %for.body

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %for.body.lr.ph
  %channel.0256 = phi ptr [ %5, %for.body.lr.ph ], [ %14, %cond.end.for.body_crit_edge ]
  %core_index.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.0256, i32 0, i32 30, i32 1
  %6 = ptrtoint ptr %core_index.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %core_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i = icmp slt i32 %7, 0
  %rx_queue69 = getelementptr inbounds %struct.ef4_channel, ptr %channel.0256, i32 0, i32 30
  %tobool71.not253 = icmp eq ptr %rx_queue69, null
  %or.cond = select i1 %cmp.i, i1 true, i1 %tobool71.not253
  br i1 %or.cond, label %for.body.for.inc74_crit_edge, label %for.body72

for.body.for.inc74_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc74

for.body72:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  %refill_enabled = getelementptr inbounds %struct.ef4_channel, ptr %channel.0256, i32 0, i32 30, i32 5
  %8 = ptrtoint ptr %refill_enabled to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %refill_enabled, align 4
  br label %for.inc74

for.inc74:                                        ; preds = %for.body72, %for.body.for.inc74_crit_edge
  %channel75 = getelementptr inbounds %struct.ef4_channel, ptr %channel.0256, i32 0, i32 1
  %9 = ptrtoint ptr %channel75 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %channel75, align 4
  %add = add i32 %10, 1
  %11 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %n_channels, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %12)
  %cmp76 = icmp ult i32 %add, %12
  br i1 %cmp76, label %cond.end, label %for.inc74.for.end81_crit_edge

for.inc74.for.end81_crit_edge:                    ; preds = %for.inc74
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end81

cond.end:                                         ; preds = %for.inc74
  %arrayidx80 = getelementptr %struct.ef4_nic, ptr %efx, i32 0, i32 23, i32 %add
  %13 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx80, align 4
  %tobool66.not = icmp eq ptr %14, null
  br i1 %tobool66.not, label %cond.end.for.end81_crit_edge, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body

cond.end.for.end81_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end81

for.end81:                                        ; preds = %cond.end.for.end81_crit_edge, %for.inc74.for.end81_crit_edge
  %15 = ptrtoint ptr %channel65 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr = load ptr, ptr %channel65, align 4
  %tobool85.not258 = icmp eq ptr %.pr, null
  br i1 %tobool85.not258, label %for.end81.for.end103_crit_edge, label %for.body86.lr.ph

for.end81.for.end103_crit_edge:                   ; preds = %for.end81
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end103

for.body86.lr.ph:                                 ; preds = %for.end81
  %n_channels93 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 36
  br label %for.body86

for.body86:                                       ; preds = %cond.end101.for.body86_crit_edge, %for.body86.lr.ph
  %channel.1259 = phi ptr [ %.pr, %for.body86.lr.ph ], [ %43, %cond.end101.for.body86_crit_edge ]
  %core_index.i244 = getelementptr inbounds %struct.ef4_channel, ptr %channel.1259, i32 0, i32 30, i32 1
  %16 = ptrtoint ptr %core_index.i244 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %core_index.i244, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp.i245 = icmp sgt i32 %17, -1
  br i1 %cmp.i245, label %if.then88, label %for.body86.for.inc90_crit_edge

for.body86.for.inc90_crit_edge:                   ; preds = %for.body86
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc90

if.then88:                                        ; preds = %for.body86
  %enabled.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.1259, i32 0, i32 4
  %18 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %enabled.i, align 1, !range !538
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i, label %if.then88.ef4_stop_eventq.exit_crit_edge, label %if.end.i

if.then88.ef4_stop_eventq.exit_crit_edge:         ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #24
  br label %ef4_stop_eventq.exit

if.end.i:                                         ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #24
  %napi_str.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.1259, i32 0, i32 8
  tail call void @napi_disable(ptr noundef %napi_str.i) #22
  %20 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %enabled.i, align 1
  br label %ef4_stop_eventq.exit

ef4_stop_eventq.exit:                             ; preds = %if.end.i, %if.then88.ef4_stop_eventq.exit_crit_edge
  %21 = ptrtoint ptr %channel.1259 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %channel.1259, align 128
  %msg_enable.i = getelementptr inbounds %struct.ef4_nic, ptr %22, i32 0, i32 20
  %23 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %msg_enable.i, align 8
  %and.i = and i32 %24, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i246 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i246, label %ef4_stop_eventq.exit.ef4_start_eventq.exit_crit_edge, label %do.body1.i

ef4_stop_eventq.exit.ef4_start_eventq.exit_crit_edge: ; preds = %ef4_stop_eventq.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %ef4_start_eventq.exit

do.body1.i:                                       ; preds = %ef4_stop_eventq.exit
  call void @__sanitizer_cov_trace_pc() #24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_start_eventq.__UNIQUE_ID_ddebug538, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_stop_datapath, %if.then5.i)) #22
          to label %ef4_start_eventq.exit [label %if.then5.i], !srcloc !536

if.then5.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #24
  %25 = ptrtoint ptr %channel.1259 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %channel.1259, align 128
  %net_dev.i = getelementptr inbounds %struct.ef4_nic, ptr %26, i32 0, i32 69
  %27 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %net_dev.i, align 4
  %channel7.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.1259, i32 0, i32 1
  %29 = ptrtoint ptr %channel7.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %channel7.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_start_eventq.__UNIQUE_ID_ddebug538, ptr noundef %28, ptr noundef nonnull @.str.41, i32 noundef %30) #22
  br label %ef4_start_eventq.exit

ef4_start_eventq.exit:                            ; preds = %if.then5.i, %do.body1.i, %ef4_stop_eventq.exit.ef4_start_eventq.exit_crit_edge
  %31 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %enabled.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !537
  %napi_str.i248 = getelementptr inbounds %struct.ef4_channel, ptr %channel.1259, i32 0, i32 8
  tail call void @napi_enable(ptr noundef %napi_str.i248) #22
  %32 = ptrtoint ptr %channel.1259 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %channel.1259, align 128
  %type.i.i = getelementptr inbounds %struct.ef4_nic, ptr %33, i32 0, i32 6
  %34 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %type.i.i, align 4
  %ev_read_ack.i.i = getelementptr inbounds %struct.ef4_nic_type, ptr %35, i32 0, i32 56
  %36 = ptrtoint ptr %ev_read_ack.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ev_read_ack.i.i, align 8
  tail call void %37(ptr noundef nonnull %channel.1259) #22
  br label %for.inc90

for.inc90:                                        ; preds = %ef4_start_eventq.exit, %for.body86.for.inc90_crit_edge
  %channel91 = getelementptr inbounds %struct.ef4_channel, ptr %channel.1259, i32 0, i32 1
  %38 = ptrtoint ptr %channel91 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %channel91, align 4
  %add92 = add i32 %39, 1
  %40 = ptrtoint ptr %n_channels93 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %n_channels93, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add92, i32 %41)
  %cmp94 = icmp ult i32 %add92, %41
  br i1 %cmp94, label %cond.end101, label %for.inc90.for.end103_crit_edge

for.inc90.for.end103_crit_edge:                   ; preds = %for.inc90
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end103

cond.end101:                                      ; preds = %for.inc90
  %arrayidx99 = getelementptr %struct.ef4_nic, ptr %efx, i32 0, i32 23, i32 %add92
  %42 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx99, align 4
  %tobool85.not = icmp eq ptr %43, null
  br i1 %tobool85.not, label %cond.end101.for.end103_crit_edge, label %cond.end101.for.body86_crit_edge

cond.end101.for.body86_crit_edge:                 ; preds = %cond.end101
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body86

cond.end101.for.end103_crit_edge:                 ; preds = %cond.end101
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end103

for.end103:                                       ; preds = %cond.end101.for.end103_crit_edge, %for.inc90.for.end103_crit_edge, %for.end81.for.end103_crit_edge, %do.end64.for.end103_crit_edge
  %type = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 6
  %44 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %type, align 4
  %fini_dmaq = getelementptr inbounds %struct.ef4_nic_type, ptr %45, i32 0, i32 14
  %46 = ptrtoint ptr %fini_dmaq to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %fini_dmaq, align 8
  %call104 = tail call i32 %47(ptr noundef %efx) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %do.body128, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.end103
  %48 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %type, align 4
  %revision.i = getelementptr inbounds %struct.ef4_nic_type, ptr %49, i32 0, i32 79
  %50 = ptrtoint ptr %revision.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %revision.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %51)
  %cmp107 = icmp slt i32 %51, 3
  %msg_enable = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %52 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %msg_enable, align 8
  %and = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool110.not = icmp eq i32 %and, 0
  br i1 %cmp107, label %do.body109, label %do.body118.critedge

do.body109:                                       ; preds = %land.lhs.true
  br i1 %tobool110.not, label %do.body109.do.end114_crit_edge, label %if.then111

do.body109.do.end114_crit_edge:                   ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end114

if.then111:                                       ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #24
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %54 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %55, ptr noundef nonnull @.str.89) #25
  br label %do.end114

do.end114:                                        ; preds = %if.then111, %do.body109.do.end114_crit_edge
  tail call void @ef4_schedule_reset(ptr noundef %efx, i32 noundef 2)
  br label %if.end153

do.body118.critedge:                              ; preds = %land.lhs.true
  br i1 %tobool110.not, label %do.body118.critedge.if.end153_crit_edge, label %if.then122

do.body118.critedge.if.end153_crit_edge:          ; preds = %do.body118.critedge
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end153

if.then122:                                       ; preds = %do.body118.critedge
  call void @__sanitizer_cov_trace_pc() #24
  %net_dev123 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %56 = ptrtoint ptr %net_dev123 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %net_dev123, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %57, ptr noundef nonnull @.str.90) #25
  br label %if.end153

do.body128:                                       ; preds = %for.end103
  %msg_enable129 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %58 = ptrtoint ptr %msg_enable129 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %msg_enable129, align 8
  %and130 = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and130)
  %tobool131.not = icmp eq i32 %and130, 0
  br i1 %tobool131.not, label %do.body128.if.end153_crit_edge, label %do.body133

do.body128.if.end153_crit_edge:                   ; preds = %do.body128
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end153

do.body133:                                       ; preds = %do.body128
  call void @__sanitizer_cov_trace_pc() #24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_stop_datapath.__UNIQUE_ID_ddebug546, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_stop_datapath, %if.then144)) #22
          to label %if.end153 [label %if.then144], !srcloc !536

if.then144:                                       ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #24
  %net_dev145 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %60 = ptrtoint ptr %net_dev145 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %net_dev145, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_stop_datapath.__UNIQUE_ID_ddebug546, ptr noundef %61, ptr noundef nonnull @.str.92) #22
  br label %if.end153

if.end153:                                        ; preds = %if.then144, %do.body133, %do.body128.if.end153_crit_edge, %if.then122, %do.body118.critedge.if.end153_crit_edge, %do.end114
  %62 = ptrtoint ptr %channel65 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %channel65, align 4
  %tobool157.not265 = icmp eq ptr %63, null
  br i1 %tobool157.not265, label %if.end153.for.end194_crit_edge, label %for.body158.lr.ph

if.end153.for.end194_crit_edge:                   ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end194

for.body158.lr.ph:                                ; preds = %if.end153
  %n_channels184 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 36
  br label %for.body158

for.body158:                                      ; preds = %cond.end192.for.body158_crit_edge, %for.body158.lr.ph
  %channel.2266 = phi ptr [ %63, %for.body158.lr.ph ], [ %79, %cond.end192.for.body158_crit_edge ]
  %core_index.i249 = getelementptr inbounds %struct.ef4_channel, ptr %channel.2266, i32 0, i32 30, i32 1
  %64 = ptrtoint ptr %core_index.i249 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %core_index.i249, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %65)
  %cmp.i250 = icmp sgt i32 %65, -1
  br i1 %cmp.i250, label %if.else161, label %for.body158.if.end168_crit_edge

for.body158.if.end168_crit_edge:                  ; preds = %for.body158
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end168

if.else161:                                       ; preds = %for.body158
  %rx_queue162 = getelementptr inbounds %struct.ef4_channel, ptr %channel.2266, i32 0, i32 30
  %tobool164.not261 = icmp eq ptr %rx_queue162, null
  br i1 %tobool164.not261, label %if.else161.if.end168_crit_edge, label %for.body165

if.else161.if.end168_crit_edge:                   ; preds = %if.else161
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end168

for.body165:                                      ; preds = %if.else161
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @ef4_fini_rx_queue(ptr noundef nonnull %rx_queue162) #22
  br label %if.end168

if.end168:                                        ; preds = %for.body165, %if.else161.if.end168_crit_edge, %for.body158.if.end168_crit_edge
  %channel1.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.2266, i32 0, i32 1
  %66 = ptrtoint ptr %channel1.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %channel1.i, align 4
  %68 = ptrtoint ptr %channel.2266 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %channel.2266, align 128
  %tx_channel_offset.i = getelementptr inbounds %struct.ef4_nic, ptr %69, i32 0, i32 39
  %70 = ptrtoint ptr %tx_channel_offset.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %tx_channel_offset.i, align 32
  %sub.i = sub i32 %67, %71
  %n_tx_channels.i = getelementptr inbounds %struct.ef4_nic, ptr %69, i32 0, i32 40
  %72 = ptrtoint ptr %n_tx_channels.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %n_tx_channels.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %73)
  %cmp.i251 = icmp ult i32 %sub.i, %73
  br i1 %cmp.i251, label %if.else171, label %if.end168.for.inc181_crit_edge

if.end168.for.inc181_crit_edge:                   ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc181

if.else171:                                       ; preds = %if.end168
  %tx_queue172 = getelementptr inbounds %struct.ef4_channel, ptr %channel.2266, i32 0, i32 32
  %add.ptr = getelementptr %struct.ef4_channel, ptr %channel.2266, i32 1
  %cmp176263 = icmp ult ptr %tx_queue172, %add.ptr
  br i1 %cmp176263, label %if.else171.for.body177_crit_edge, label %if.else171.for.inc181_crit_edge

if.else171.for.inc181_crit_edge:                  ; preds = %if.else171
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc181

if.else171.for.body177_crit_edge:                 ; preds = %if.else171
  br label %for.body177

for.body177:                                      ; preds = %for.body177.for.body177_crit_edge, %if.else171.for.body177_crit_edge
  %tx_queue.0264 = phi ptr [ %incdec.ptr, %for.body177.for.body177_crit_edge ], [ %tx_queue172, %if.else171.for.body177_crit_edge ]
  tail call void @ef4_fini_tx_queue(ptr noundef %tx_queue.0264) #22
  %incdec.ptr = getelementptr %struct.ef4_tx_queue, ptr %tx_queue.0264, i32 1
  %cmp176 = icmp ult ptr %incdec.ptr, %add.ptr
  br i1 %cmp176, label %for.body177.for.body177_crit_edge, label %for.body177.for.inc181_crit_edge

for.body177.for.inc181_crit_edge:                 ; preds = %for.body177
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc181

for.body177.for.body177_crit_edge:                ; preds = %for.body177
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body177

for.inc181:                                       ; preds = %for.body177.for.inc181_crit_edge, %if.else171.for.inc181_crit_edge, %if.end168.for.inc181_crit_edge
  %74 = ptrtoint ptr %channel1.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %channel1.i, align 4
  %add183 = add i32 %75, 1
  %76 = ptrtoint ptr %n_channels184 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %n_channels184, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add183, i32 %77)
  %cmp185 = icmp ult i32 %add183, %77
  br i1 %cmp185, label %cond.end192, label %for.inc181.for.end194_crit_edge

for.inc181.for.end194_crit_edge:                  ; preds = %for.inc181
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end194

cond.end192:                                      ; preds = %for.inc181
  %arrayidx190 = getelementptr %struct.ef4_nic, ptr %efx, i32 0, i32 23, i32 %add183
  %78 = ptrtoint ptr %arrayidx190 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx190, align 4
  %tobool157.not = icmp eq ptr %79, null
  br i1 %tobool157.not, label %cond.end192.for.end194_crit_edge, label %cond.end192.for.body158_crit_edge

cond.end192.for.body158_crit_edge:                ; preds = %cond.end192
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body158

cond.end192.for.end194_crit_edge:                 ; preds = %cond.end192
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end194

for.end194:                                       ; preds = %cond.end192.for.end194_crit_edge, %for.inc181.for.end194_crit_edge, %if.end153.for.end194_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef4_selftest_async_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef4_fini_rx_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef4_fini_tx_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ef4_poll(ptr noundef %napi, i32 noundef %budget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -32
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 128
  %enabled.i = getelementptr i8, ptr %napi, i32 -19
  %2 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled.i, align 1, !range !538
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.ef4_process_channel.exit_crit_edge, label %if.end.i, !prof !542

entry.ef4_process_channel.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %ef4_process_channel.exit

if.end.i:                                         ; preds = %entry
  %channel1.i.i = getelementptr i8, ptr %napi, i32 -28
  %4 = ptrtoint ptr %channel1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel1.i.i, align 4
  %tx_channel_offset.i.i = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 39
  %6 = ptrtoint ptr %tx_channel_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_channel_offset.i.i, align 32
  %sub.i.i = sub i32 %5, %7
  %n_tx_channels.i.i = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 40
  %8 = ptrtoint ptr %n_tx_channels.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n_tx_channels.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %9)
  %cmp.i.i = icmp ult i32 %sub.i.i, %9
  br i1 %cmp.i.i, label %if.else.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end9.i

if.else.i:                                        ; preds = %if.end.i
  %tx_queue5.i = getelementptr i8, ptr %napi, i32 608
  %add.ptr.i = getelementptr i8, ptr %napi, i32 2656
  %cmp79.i = icmp ult ptr %tx_queue5.i, %add.ptr.i
  br i1 %cmp79.i, label %if.else.i.land.rhs.i_crit_edge, label %if.else.i.if.end9.i_crit_edge

if.else.i.if.end9.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end9.i

if.else.i.land.rhs.i_crit_edge:                   ; preds = %if.else.i
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.body.i.land.rhs.i_crit_edge, %if.else.i.land.rhs.i_crit_edge
  %tx_queue.080.i = phi ptr [ %incdec.ptr.i, %for.body.i.land.rhs.i_crit_edge ], [ %tx_queue5.i, %if.else.i.land.rhs.i_crit_edge ]
  %10 = ptrtoint ptr %tx_queue.080.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tx_queue.080.i, align 128
  %net_dev.i.i = getelementptr inbounds %struct.ef4_nic, ptr %11, i32 0, i32 69
  %12 = ptrtoint ptr %net_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %net_dev.i.i, align 4
  %num_tc.i.i = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 140
  %14 = ptrtoint ptr %num_tc.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %num_tc.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %15)
  %cmp.i63.i = icmp slt i16 %15, 2
  br i1 %cmp.i63.i, label %ef4_tx_queue_used.exit.i, label %land.rhs.i.for.body.i_crit_edge

land.rhs.i.for.body.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body.i

ef4_tx_queue_used.exit.i:                         ; preds = %land.rhs.i
  %queue.i.i = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue.080.i, i32 0, i32 1
  %16 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %queue.i.i, align 4
  %and.i.i = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.i, label %ef4_tx_queue_used.exit.i.for.body.i_crit_edge, label %ef4_tx_queue_used.exit.i.if.end9.i_crit_edge

ef4_tx_queue_used.exit.i.if.end9.i_crit_edge:     ; preds = %ef4_tx_queue_used.exit.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end9.i

ef4_tx_queue_used.exit.i.for.body.i_crit_edge:    ; preds = %ef4_tx_queue_used.exit.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body.i

for.body.i:                                       ; preds = %ef4_tx_queue_used.exit.i.for.body.i_crit_edge, %land.rhs.i.for.body.i_crit_edge
  %pkts_compl.i = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue.080.i, i32 0, i32 16
  %18 = ptrtoint ptr %pkts_compl.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %pkts_compl.i, align 16
  %bytes_compl.i = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue.080.i, i32 0, i32 15
  %19 = ptrtoint ptr %bytes_compl.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %bytes_compl.i, align 4
  %incdec.ptr.i = getelementptr %struct.ef4_tx_queue, ptr %tx_queue.080.i, i32 1
  %cmp.i = icmp ult ptr %incdec.ptr.i, %add.ptr.i
  br i1 %cmp.i, label %for.body.i.land.rhs.i_crit_edge, label %for.body.i.if.end9.i_crit_edge

for.body.i.if.end9.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end9.i

for.body.i.land.rhs.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %land.rhs.i

if.end9.i:                                        ; preds = %for.body.i.if.end9.i_crit_edge, %ef4_tx_queue_used.exit.i.if.end9.i_crit_edge, %if.else.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr, align 128
  %type.i.i = getelementptr inbounds %struct.ef4_nic, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %type.i.i, align 4
  %ev_process.i.i = getelementptr inbounds %struct.ef4_nic_type, ptr %23, i32 0, i32 55
  %24 = ptrtoint ptr %ev_process.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ev_process.i.i, align 4
  %call.i.i = tail call i32 %25(ptr noundef %add.ptr, i32 noundef %budget) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool11.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool11.not.i, label %if.end9.i.if.end15.i_crit_edge, label %land.lhs.true.i

if.end9.i.if.end15.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end15.i

land.lhs.true.i:                                  ; preds = %if.end9.i
  %core_index.i.i = getelementptr i8, ptr %napi, i32 328
  %26 = ptrtoint ptr %core_index.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %core_index.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %cmp.i64.i = icmp sgt i32 %27, -1
  br i1 %cmp.i64.i, label %if.then13.i, label %land.lhs.true.i.if.end15.i_crit_edge

land.lhs.true.i.if.end15.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end15.i

if.then13.i:                                      ; preds = %land.lhs.true.i
  %rx_queue.i.i = getelementptr i8, ptr %napi, i32 324
  %rx_pkt_n_frags.i.i = getelementptr i8, ptr %napi, i32 316
  %28 = ptrtoint ptr %rx_pkt_n_frags.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rx_pkt_n_frags.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i.i, label %if.then13.i.ef4_rx_flush_packet.exit.i_crit_edge, label %if.then.i.i

if.then13.i.ef4_rx_flush_packet.exit.i_crit_edge: ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %ef4_rx_flush_packet.exit.i

if.then.i.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @__ef4_rx_packet(ptr noundef %add.ptr) #22
  br label %ef4_rx_flush_packet.exit.i

ef4_rx_flush_packet.exit.i:                       ; preds = %if.then.i.i, %if.then13.i.ef4_rx_flush_packet.exit.i_crit_edge
  tail call void @ef4_fast_push_rx_descriptors(ptr noundef %rx_queue.i.i, i1 noundef zeroext true) #22
  br label %if.end15.i

if.end15.i:                                       ; preds = %ef4_rx_flush_packet.exit.i, %land.lhs.true.i.if.end15.i_crit_edge, %if.end9.i.if.end15.i_crit_edge
  %30 = ptrtoint ptr %channel1.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %channel1.i.i, align 4
  %32 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr, align 128
  %tx_channel_offset.i66.i = getelementptr inbounds %struct.ef4_nic, ptr %33, i32 0, i32 39
  %34 = ptrtoint ptr %tx_channel_offset.i66.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tx_channel_offset.i66.i, align 32
  %sub.i67.i = sub i32 %31, %35
  %n_tx_channels.i68.i = getelementptr inbounds %struct.ef4_nic, ptr %33, i32 0, i32 40
  %36 = ptrtoint ptr %n_tx_channels.i68.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %n_tx_channels.i68.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i67.i, i32 %37)
  %cmp.i69.i = icmp ult i32 %sub.i67.i, %37
  br i1 %cmp.i69.i, label %if.else18.i, label %if.end15.i.ef4_process_channel.exit_crit_edge

if.end15.i.ef4_process_channel.exit_crit_edge:    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %ef4_process_channel.exit

if.else18.i:                                      ; preds = %if.end15.i
  %tx_queue19.i = getelementptr i8, ptr %napi, i32 608
  %add.ptr24.i = getelementptr i8, ptr %napi, i32 2656
  %cmp2582.i = icmp ult ptr %tx_queue19.i, %add.ptr24.i
  br i1 %cmp2582.i, label %if.else18.i.land.rhs26.i_crit_edge, label %if.else18.i.ef4_process_channel.exit_crit_edge

if.else18.i.ef4_process_channel.exit_crit_edge:   ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %ef4_process_channel.exit

if.else18.i.land.rhs26.i_crit_edge:               ; preds = %if.else18.i
  br label %land.rhs26.i

land.rhs26.i:                                     ; preds = %for.inc36.i.land.rhs26.i_crit_edge, %if.else18.i.land.rhs26.i_crit_edge
  %tx_queue.183.i = phi ptr [ %incdec.ptr37.i, %for.inc36.i.land.rhs26.i_crit_edge ], [ %tx_queue19.i, %if.else18.i.land.rhs26.i_crit_edge ]
  %38 = ptrtoint ptr %tx_queue.183.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tx_queue.183.i, align 128
  %net_dev.i70.i = getelementptr inbounds %struct.ef4_nic, ptr %39, i32 0, i32 69
  %40 = ptrtoint ptr %net_dev.i70.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %net_dev.i70.i, align 4
  %num_tc.i71.i = getelementptr inbounds %struct.net_device, ptr %41, i32 0, i32 140
  %42 = ptrtoint ptr %num_tc.i71.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %num_tc.i71.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %43)
  %cmp.i72.i = icmp slt i16 %43, 2
  br i1 %cmp.i72.i, label %ef4_tx_queue_used.exit77.i, label %land.rhs26.i.for.body29.i_crit_edge

land.rhs26.i.for.body29.i_crit_edge:              ; preds = %land.rhs26.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body29.i

ef4_tx_queue_used.exit77.i:                       ; preds = %land.rhs26.i
  %queue.i73.i = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue.183.i, i32 0, i32 1
  %44 = ptrtoint ptr %queue.i73.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %queue.i73.i, align 4
  %and.i74.i = and i32 %45, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i74.i)
  %tobool.i75.i = icmp eq i32 %and.i74.i, 0
  br i1 %tobool.i75.i, label %ef4_tx_queue_used.exit77.i.for.body29.i_crit_edge, label %ef4_tx_queue_used.exit77.i.ef4_process_channel.exit_crit_edge

ef4_tx_queue_used.exit77.i.ef4_process_channel.exit_crit_edge: ; preds = %ef4_tx_queue_used.exit77.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %ef4_process_channel.exit

ef4_tx_queue_used.exit77.i.for.body29.i_crit_edge: ; preds = %ef4_tx_queue_used.exit77.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body29.i

for.body29.i:                                     ; preds = %ef4_tx_queue_used.exit77.i.for.body29.i_crit_edge, %land.rhs26.i.for.body29.i_crit_edge
  %bytes_compl30.i = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue.183.i, i32 0, i32 15
  %46 = ptrtoint ptr %bytes_compl30.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %bytes_compl30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool31.not.i = icmp eq i32 %47, 0
  br i1 %tobool31.not.i, label %for.body29.i.for.inc36.i_crit_edge, label %if.then32.i

for.body29.i.for.inc36.i_crit_edge:               ; preds = %for.body29.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc36.i

if.then32.i:                                      ; preds = %for.body29.i
  %core_txq.i = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue.183.i, i32 0, i32 3
  %48 = ptrtoint ptr %core_txq.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %core_txq.i, align 4
  %dql.i.i = getelementptr inbounds %struct.netdev_queue, ptr %49, i32 0, i32 15
  tail call void @dql_completed(ptr noundef %dql.i.i, i32 noundef %47) #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !551
  %adj_limit.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %49, i32 0, i32 15, i32 1
  %50 = ptrtoint ptr %adj_limit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %adj_limit.i.i.i, align 4
  %52 = ptrtoint ptr %dql.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %dql.i.i, align 128
  %sub.i.i.i = sub i32 %51, %53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp.i78.i = icmp slt i32 %sub.i.i.i, 0
  br i1 %cmp.i78.i, label %if.then32.i.for.inc36.i_crit_edge, label %if.end14.i.i, !prof !542

if.then32.i.for.inc36.i_crit_edge:                ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc36.i

if.end14.i.i:                                     ; preds = %if.then32.i
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %49, i32 0, i32 13
  %call15.i.i = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %state.i.i) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i)
  %tobool16.not.i.i = icmp eq i32 %call15.i.i, 0
  br i1 %tobool16.not.i.i, label %if.end14.i.i.for.inc36.i_crit_edge, label %if.then17.i.i

if.end14.i.i.for.inc36.i_crit_edge:               ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc36.i

if.then17.i.i:                                    ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @netif_schedule_queue(ptr noundef %49) #22
  br label %for.inc36.i

for.inc36.i:                                      ; preds = %if.then17.i.i, %if.end14.i.i.for.inc36.i_crit_edge, %if.then32.i.for.inc36.i_crit_edge, %for.body29.i.for.inc36.i_crit_edge
  %incdec.ptr37.i = getelementptr %struct.ef4_tx_queue, ptr %tx_queue.183.i, i32 1
  %cmp25.i = icmp ult ptr %incdec.ptr37.i, %add.ptr24.i
  br i1 %cmp25.i, label %for.inc36.i.land.rhs26.i_crit_edge, label %for.inc36.i.ef4_process_channel.exit_crit_edge

for.inc36.i.ef4_process_channel.exit_crit_edge:   ; preds = %for.inc36.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %ef4_process_channel.exit

for.inc36.i.land.rhs26.i_crit_edge:               ; preds = %for.inc36.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %land.rhs26.i

ef4_process_channel.exit:                         ; preds = %for.inc36.i.ef4_process_channel.exit_crit_edge, %ef4_tx_queue_used.exit77.i.ef4_process_channel.exit_crit_edge, %if.else18.i.ef4_process_channel.exit_crit_edge, %if.end15.i.ef4_process_channel.exit_crit_edge, %entry.ef4_process_channel.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.ef4_process_channel.exit_crit_edge ], [ %call.i.i, %if.end15.i.ef4_process_channel.exit_crit_edge ], [ %call.i.i, %if.else18.i.ef4_process_channel.exit_crit_edge ], [ %call.i.i, %for.inc36.i.ef4_process_channel.exit_crit_edge ], [ %call.i.i, %ef4_tx_queue_used.exit77.i.ef4_process_channel.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %budget)
  %cmp = icmp slt i32 %retval.0.i, %budget
  br i1 %cmp, label %if.then, label %ef4_process_channel.exit.if.end10_crit_edge

ef4_process_channel.exit.if.end10_crit_edge:      ; preds = %ef4_process_channel.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end10

if.then:                                          ; preds = %ef4_process_channel.exit
  %core_index.i = getelementptr i8, ptr %napi, i32 328
  %54 = ptrtoint ptr %core_index.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %core_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %55)
  %cmp.i22 = icmp sgt i32 %55, -1
  br i1 %cmp.i22, label %land.lhs.true, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %irq_rx_adaptive = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 17
  %56 = ptrtoint ptr %irq_rx_adaptive to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %irq_rx_adaptive, align 4, !range !538
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.not = icmp eq i8 %57, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true4

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %irq_count = getelementptr i8, ptr %napi, i32 260
  %58 = ptrtoint ptr %irq_count to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %irq_count, align 4
  %inc = add i32 %59, 1
  store i32 %inc, ptr %irq_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %inc)
  %cmp5 = icmp eq i32 %inc, 1000
  br i1 %cmp5, label %if.then8, label %land.lhs.true4.if.end_crit_edge, !prof !542

land.lhs.true4.if.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

if.then8:                                         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #24
  tail call fastcc void @ef4_update_irq_mod(ptr noundef %1, ptr noundef %add.ptr)
  br label %if.end

if.end:                                           ; preds = %if.then8, %land.lhs.true4.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  %rfs_filters_added.i = getelementptr i8, ptr %napi, i32 268
  %60 = ptrtoint ptr %rfs_filters_added.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rfs_filters_added.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 59, i32 %61)
  %cmp.i23 = icmp ugt i32 %61, 59
  br i1 %cmp.i23, label %land.lhs.true.i24, label %if.end.ef4_filter_rfs_expire.exit_crit_edge

if.end.ef4_filter_rfs_expire.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %ef4_filter_rfs_expire.exit

land.lhs.true.i24:                                ; preds = %if.end
  %62 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %add.ptr, align 128
  %call.i = tail call zeroext i1 @__ef4_filter_rfs_expire(ptr noundef %63, i32 noundef 100) #22
  br i1 %call.i, label %if.then.i, label %land.lhs.true.i24.ef4_filter_rfs_expire.exit_crit_edge

land.lhs.true.i24.ef4_filter_rfs_expire.exit_crit_edge: ; preds = %land.lhs.true.i24
  call void @__sanitizer_cov_trace_pc() #24
  br label %ef4_filter_rfs_expire.exit

if.then.i:                                        ; preds = %land.lhs.true.i24
  call void @__sanitizer_cov_trace_pc() #24
  %64 = ptrtoint ptr %rfs_filters_added.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rfs_filters_added.i, align 4
  %sub.i = add i32 %65, -60
  store i32 %sub.i, ptr %rfs_filters_added.i, align 4
  br label %ef4_filter_rfs_expire.exit

ef4_filter_rfs_expire.exit:                       ; preds = %if.then.i, %land.lhs.true.i24.ef4_filter_rfs_expire.exit_crit_edge, %if.end.ef4_filter_rfs_expire.exit_crit_edge
  %call9 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %retval.0.i) #22
  %66 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %add.ptr, align 128
  %type.i = getelementptr inbounds %struct.ef4_nic, ptr %67, i32 0, i32 6
  %68 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %type.i, align 4
  %ev_read_ack.i = getelementptr inbounds %struct.ef4_nic_type, ptr %69, i32 0, i32 56
  %70 = ptrtoint ptr %ev_read_ack.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ev_read_ack.i, align 8
  tail call void %71(ptr noundef %add.ptr) #22
  br label %if.end10

if.end10:                                         ; preds = %ef4_filter_rfs_expire.exit, %ef4_process_channel.exit.if.end10_crit_edge
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ef4_update_irq_mod(ptr nocapture noundef readonly %efx, ptr noundef %channel) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_mod_step_us = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 18
  %0 = ptrtoint ptr %irq_mod_step_us to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq_mod_step_us, align 16
  %irq_mod_score = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 15
  %2 = ptrtoint ptr %irq_mod_score to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq_mod_score, align 8
  %4 = load i32, ptr @irq_adapt_low_thresh, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %4)
  %cmp = icmp ult i32 %3, %4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %irq_moderation_us = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 6
  %5 = ptrtoint ptr %irq_moderation_us to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq_moderation_us, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %1)
  %cmp1 = icmp ugt i32 %6, %1
  br i1 %cmp1, label %if.then2, label %if.then.if.end15_crit_edge

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end15

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  %sub = sub i32 %6, %1
  %7 = ptrtoint ptr %irq_moderation_us to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %sub, ptr %irq_moderation_us, align 4
  br label %if.end15.sink.split

if.else:                                          ; preds = %entry
  %8 = load i32, ptr @irq_adapt_high_thresh, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %8)
  %cmp5 = icmp ugt i32 %3, %8
  br i1 %cmp5, label %if.then6, label %if.else.if.end15_crit_edge

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end15

if.then6:                                         ; preds = %if.else
  %irq_moderation_us7 = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 6
  %9 = ptrtoint ptr %irq_moderation_us7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq_moderation_us7, align 4
  %irq_rx_moderation_us = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 19
  %11 = ptrtoint ptr %irq_rx_moderation_us to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq_rx_moderation_us, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp8 = icmp ult i32 %10, %12
  br i1 %cmp8, label %if.then9, label %if.then6.if.end15_crit_edge

if.then6.if.end15_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end15

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #24
  %add = add i32 %10, %1
  %13 = ptrtoint ptr %irq_moderation_us7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add, ptr %irq_moderation_us7, align 4
  br label %if.end15.sink.split

if.end15.sink.split:                              ; preds = %if.then9, %if.then2
  %type11 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 6
  %14 = ptrtoint ptr %type11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %type11, align 4
  %push_irq_moderation12 = getelementptr inbounds %struct.ef4_nic_type, ptr %15, i32 0, i32 25
  %16 = ptrtoint ptr %push_irq_moderation12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %push_irq_moderation12, align 4
  tail call void %17(ptr noundef %channel) #22
  br label %if.end15

if.end15:                                         ; preds = %if.end15.sink.split, %if.then6.if.end15_crit_edge, %if.else.if.end15_crit_edge, %if.then.if.end15_crit_edge
  %irq_count = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 14
  %18 = ptrtoint ptr %irq_count to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %irq_count, align 4
  %19 = ptrtoint ptr %irq_mod_score to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %irq_mod_score, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ef4_rx_packet(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_completed(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_schedule_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__ef4_filter_rfs_expire(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ef4_pci_probe(ptr noundef %pci_dev, ptr nocapture noundef readonly %entry1) #0 align 64 {
entry:
  %vpd_size.i = alloca i32, align 4
  %kw_len.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @alloc_etherdev_mqs(i32 noundef 2944, i32 noundef 64, i32 noundef 32) #22
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %call, i32 2304
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %entry1, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %2 = inttoptr i32 %1 to ptr
  %type = getelementptr i8, ptr %call, i32 2348
  %3 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %type, align 4
  %fixed_features = getelementptr i8, ptr %call, i32 4576
  %4 = ptrtoint ptr %fixed_features to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %fixed_features, align 32
  %or = or i64 %5, 32
  store i64 %or, ptr %fixed_features, align 32
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr.i, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44
  %parent = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 133, i32 1
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev, ptr %parent, align 8
  %node.i = getelementptr i8, ptr %call, i32 2320
  %8 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %node.i, ptr %node.i, align 4
  %prev.i.i = getelementptr i8, ptr %call, i32 2324
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %node.i, ptr %prev.i.i, align 4
  %secondary_list.i = getelementptr i8, ptr %call, i32 2332
  %10 = ptrtoint ptr %secondary_list.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %secondary_list.i, ptr %secondary_list.i, align 4
  %prev.i185.i = getelementptr i8, ptr %call, i32 2336
  %11 = ptrtoint ptr %prev.i185.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %secondary_list.i, ptr %prev.i185.i, align 4
  %biu_lock.i = getelementptr i8, ptr %call, i32 5092
  tail call void @__raw_spin_lock_init(ptr noundef %biu_lock.i, ptr noundef nonnull @.str.99, ptr noundef nonnull @ef4_init_struct.__key, i16 noundef signext 3) #22
  %mtd_list.i = getelementptr i8, ptr %call, i32 4420
  %12 = ptrtoint ptr %mtd_list.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %mtd_list.i, ptr %mtd_list.i, align 4
  %prev.i186.i = getelementptr i8, ptr %call, i32 4424
  %13 = ptrtoint ptr %prev.i186.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %mtd_list.i, ptr %prev.i186.i, align 4
  %reset_work.i = getelementptr i8, ptr %call, i32 2380
  tail call void @__init_work(ptr noundef %reset_work.i, i32 noundef 0) #22
  %14 = ptrtoint ptr %reset_work.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -64, ptr %reset_work.i, align 4
  %lockdep_map.i = getelementptr i8, ptr %call, i32 2396
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.101, ptr noundef nonnull @ef4_init_struct.__key.100, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #22
  %entry5.i = getelementptr i8, ptr %call, i32 2384
  %15 = ptrtoint ptr %entry5.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %entry5.i, ptr %entry5.i, align 4
  %prev.i187.i = getelementptr i8, ptr %call, i32 2388
  %16 = ptrtoint ptr %prev.i187.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %entry5.i, ptr %prev.i187.i, align 4
  %func.i = getelementptr i8, ptr %call, i32 2392
  %17 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @ef4_reset_work, ptr %func.i, align 4
  %monitor_work.i = getelementptr i8, ptr %call, i32 4992
  tail call void @__init_work(ptr noundef %monitor_work.i, i32 noundef 0) #22
  %18 = ptrtoint ptr %monitor_work.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -64, ptr %monitor_work.i, align 128
  %lockdep_map18.i = getelementptr i8, ptr %call, i32 5008
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map18.i, ptr noundef nonnull @.str.103, ptr noundef nonnull @ef4_init_struct.__key.102, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #22
  %entry21.i = getelementptr i8, ptr %call, i32 4996
  %19 = ptrtoint ptr %entry21.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %entry21.i, ptr %entry21.i, align 4
  %prev.i188.i = getelementptr i8, ptr %call, i32 5000
  %20 = ptrtoint ptr %prev.i188.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %entry21.i, ptr %prev.i188.i, align 4
  %func24.i = getelementptr i8, ptr %call, i32 5004
  %21 = ptrtoint ptr %func24.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @ef4_monitor, ptr %func24.i, align 4
  %timer.i = getelementptr i8, ptr %call, i32 5036
  tail call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.105, ptr noundef nonnull @ef4_init_struct.__key.104) #22
  %selftest_work.i = getelementptr i8, ptr %call, i32 4320
  tail call void @__init_work(ptr noundef %selftest_work.i, i32 noundef 0) #22
  %22 = ptrtoint ptr %selftest_work.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -64, ptr %selftest_work.i, align 32
  %lockdep_map43.i = getelementptr i8, ptr %call, i32 4336
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map43.i, ptr noundef nonnull @.str.107, ptr noundef nonnull @ef4_init_struct.__key.106, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #22
  %entry46.i = getelementptr i8, ptr %call, i32 4324
  %23 = ptrtoint ptr %entry46.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %entry46.i, ptr %entry46.i, align 4
  %prev.i189.i = getelementptr i8, ptr %call, i32 4328
  %24 = ptrtoint ptr %prev.i189.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %entry46.i, ptr %prev.i189.i, align 4
  %func49.i = getelementptr i8, ptr %call, i32 4332
  %25 = ptrtoint ptr %func49.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @ef4_selftest_async_work, ptr %func49.i, align 4
  %timer54.i = getelementptr i8, ptr %call, i32 4364
  tail call void @init_timer_key(ptr noundef %timer54.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.109, ptr noundef nonnull @ef4_init_struct.__key.108) #22
  %pci_dev59.i = getelementptr i8, ptr %call, i32 2340
  %26 = ptrtoint ptr %pci_dev59.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %pci_dev, ptr %pci_dev59.i, align 4
  %27 = load i32, ptr @debug, align 4
  %msg_enable.i = getelementptr i8, ptr %call, i32 2456
  %28 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %msg_enable.i, align 8
  %state.i = getelementptr i8, ptr %call, i32 2460
  %29 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %state.i, align 4
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44, i32 3
  %30 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %31, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end.pci_name.exit.i_crit_edge

if.end.pci_name.exit.i_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %pci_name.exit.i

if.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  br label %pci_name.exit.i

pci_name.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.pci_name.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %33, %if.end.i.i.i ], [ %31, %if.end.pci_name.exit.i_crit_edge ]
  %call61.i = tail call i32 @strlcpy(ptr noundef %add.ptr.i, ptr noundef %retval.0.i.i.i, i32 noundef 16) #22
  %net_dev62.i = getelementptr i8, ptr %call, i32 4572
  %34 = ptrtoint ptr %net_dev62.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call, ptr %net_dev62.i, align 4
  %35 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %type, align 4
  %rx_prefix_size.i = getelementptr inbounds %struct.ef4_nic_type, ptr %36, i32 0, i32 86
  %37 = ptrtoint ptr %rx_prefix_size.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rx_prefix_size.i, align 8
  %rx_prefix_size63.i = getelementptr i8, ptr %call, i32 3716
  %39 = ptrtoint ptr %rx_prefix_size63.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %rx_prefix_size63.i, align 4
  %add.i = add i32 %38, 2
  %rem.i = and i32 %add.i, 3
  %rx_ip_align.i = getelementptr i8, ptr %call, i32 3688
  %40 = ptrtoint ptr %rx_ip_align.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %rem.i, ptr %rx_ip_align.i, align 8
  %rx_hash_offset.i = getelementptr inbounds %struct.ef4_nic_type, ptr %36, i32 0, i32 87
  %41 = ptrtoint ptr %rx_hash_offset.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rx_hash_offset.i, align 4
  %43 = load i32, ptr %rx_prefix_size.i, align 8
  %sub.i = sub i32 %42, %43
  %rx_packet_hash_offset.i = getelementptr i8, ptr %call, i32 3720
  %44 = ptrtoint ptr %rx_packet_hash_offset.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %sub.i, ptr %rx_packet_hash_offset.i, align 8
  %rx_ts_offset.i = getelementptr inbounds %struct.ef4_nic_type, ptr %36, i32 0, i32 88
  %45 = ptrtoint ptr %rx_ts_offset.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rx_ts_offset.i, align 8
  %47 = load i32, ptr %rx_prefix_size.i, align 8
  %sub71.i = sub i32 %46, %47
  %rx_packet_ts_offset.i = getelementptr i8, ptr %call, i32 3728
  %48 = ptrtoint ptr %rx_packet_ts_offset.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %sub71.i, ptr %rx_packet_ts_offset.i, align 16
  %stats_lock.i = getelementptr i8, ptr %call, i32 5140
  tail call void @__raw_spin_lock_init(ptr noundef %stats_lock.i, ptr noundef nonnull @.str.111, ptr noundef nonnull @ef4_init_struct.__key.110, i16 noundef signext 3) #22
  %mac_lock.i = getelementptr i8, ptr %call, i32 4432
  tail call void @__mutex_init(ptr noundef %mac_lock.i, ptr noundef nonnull @.str.113, ptr noundef nonnull @ef4_init_struct.__key.112) #22
  %phy_op.i = getelementptr i8, ptr %call, i32 4624
  %49 = ptrtoint ptr %phy_op.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @ef4_dummy_phy_operations, ptr %phy_op.i, align 16
  %dev.i = getelementptr i8, ptr %call, i32 4644
  %50 = ptrtoint ptr %dev.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call, ptr %dev.i, align 4
  %mac_work.i = getelementptr i8, ptr %call, i32 4524
  tail call void @__init_work(ptr noundef %mac_work.i, i32 noundef 0) #22
  %51 = ptrtoint ptr %mac_work.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -64, ptr %mac_work.i, align 4
  %lockdep_map85.i = getelementptr i8, ptr %call, i32 4540
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map85.i, ptr noundef nonnull @.str.115, ptr noundef nonnull @ef4_init_struct.__key.114, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #22
  %entry87.i = getelementptr i8, ptr %call, i32 4528
  %52 = ptrtoint ptr %entry87.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %entry87.i, ptr %entry87.i, align 4
  %prev.i190.i = getelementptr i8, ptr %call, i32 4532
  %53 = ptrtoint ptr %prev.i190.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %entry87.i, ptr %prev.i190.i, align 4
  %func89.i = getelementptr i8, ptr %call, i32 4536
  %54 = ptrtoint ptr %func89.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @ef4_mac_work, ptr %func89.i, align 4
  %flush_wq.i = getelementptr i8, ptr %call, i32 4904
  tail call void @__init_waitqueue_head(ptr noundef %flush_wq.i, ptr noundef nonnull @.str.117, ptr noundef nonnull @ef4_init_struct.__key.116) #22
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %pci_name.exit.i
  %i.0202.i = phi i32 [ 0, %pci_name.exit.i ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %55 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %55, i32 noundef 3520, i32 noundef 2688) #26
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %ef4_alloc_channel.exit.thread.i, label %if.end.i

ef4_alloc_channel.exit.thread.i:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #24
  %arrayidx200.i = getelementptr %struct.ef4_nic, ptr %add.ptr.i, i32 0, i32 23, i32 %i.0202.i
  %56 = ptrtoint ptr %arrayidx200.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %arrayidx200.i, align 4
  br label %for.body.i.i.preheader

if.end.i:                                         ; preds = %for.body.i
  %57 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %add.ptr.i, ptr %call7.i.i.i.i, align 128
  %channel2.i.i = getelementptr inbounds %struct.ef4_channel, ptr %call7.i.i.i.i, i32 0, i32 1
  %58 = ptrtoint ptr %channel2.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %i.0202.i, ptr %channel2.i.i, align 4
  %type.i.i = getelementptr inbounds %struct.ef4_channel, ptr %call7.i.i.i.i, i32 0, i32 2
  %59 = ptrtoint ptr %type.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @ef4_default_channel_type, ptr %type.i.i, align 8
  %mul.i.i = shl nuw nsw i32 %i.0202.i, 2
  %arrayidx.i.i = getelementptr %struct.ef4_channel, ptr %call7.i.i.i.i, i32 0, i32 32, i32 0
  %60 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %add.ptr.i, ptr %arrayidx.i.i, align 128
  %queue.i.i = getelementptr %struct.ef4_channel, ptr %call7.i.i.i.i, i32 0, i32 32, i32 0, i32 1
  %61 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %mul.i.i, ptr %queue.i.i, align 4
  %channel5.i.i = getelementptr %struct.ef4_channel, ptr %call7.i.i.i.i, i32 0, i32 32, i32 0, i32 2
  %62 = ptrtoint ptr %channel5.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call7.i.i.i.i, ptr %channel5.i.i, align 8
  %arrayidx.1.i.i = getelementptr %struct.ef4_channel, ptr %call7.i.i.i.i, i32 0, i32 32, i32 1
  %63 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %add.ptr.i, ptr %arrayidx.1.i.i, align 128
  %add.1.i.i = or i32 %mul.i.i, 1
  %queue.1.i.i = getelementptr %struct.ef4_channel, ptr %call7.i.i.i.i, i32 0, i32 32, i32 1, i32 1
  %64 = ptrtoint ptr %queue.1.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %add.1.i.i, ptr %queue.1.i.i, align 4
  %channel5.1.i.i = getelementptr %struct.ef4_channel, ptr %call7.i.i.i.i, i32 0, i32 32, i32 1, i32 2
  %65 = ptrtoint ptr %channel5.1.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call7.i.i.i.i, ptr %channel5.1.i.i, align 8
  %arrayidx.2.i.i = getelementptr %struct.ef4_channel, ptr %call7.i.i.i.i, i32 0, i32 32, i32 2
  %66 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %add.ptr.i, ptr %arrayidx.2.i.i, align 128
  %add.2.i.i = or i32 %mul.i.i, 2
  %queue.2.i.i = getelementptr %struct.ef4_channel, ptr %call7.i.i.i.i, i32 0, i32 32, i32 2, i32 1
  %67 = ptrtoint ptr %queue.2.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %add.2.i.i, ptr %queue.2.i.i, align 4
  %channel5.2.i.i = getelementptr %struct.ef4_channel, ptr %call7.i.i.i.i, i32 0, i32 32, i32 2, i32 2
  %68 = ptrtoint ptr %channel5.2.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call7.i.i.i.i, ptr %channel5.2.i.i, align 8
  %arrayidx.3.i.i = getelementptr %struct.ef4_channel, ptr %call7.i.i.i.i, i32 0, i32 32, i32 3
  %69 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %add.ptr.i, ptr %arrayidx.3.i.i, align 128
  %add.3.i.i = or i32 %mul.i.i, 3
  %queue.3.i.i = getelementptr %struct.ef4_channel, ptr %call7.i.i.i.i, i32 0, i32 32, i32 3, i32 1
  %70 = ptrtoint ptr %queue.3.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %add.3.i.i, ptr %queue.3.i.i, align 4
  %channel5.3.i.i = getelementptr %struct.ef4_channel, ptr %call7.i.i.i.i, i32 0, i32 32, i32 3, i32 2
  %71 = ptrtoint ptr %channel5.3.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call7.i.i.i.i, ptr %channel5.3.i.i, align 8
  %rx_queue6.i.i = getelementptr inbounds %struct.ef4_channel, ptr %call7.i.i.i.i, i32 0, i32 30
  %72 = ptrtoint ptr %rx_queue6.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %add.ptr.i, ptr %rx_queue6.i.i, align 4
  %slow_fill.i.i = getelementptr inbounds %struct.ef4_channel, ptr %call7.i.i.i.i, i32 0, i32 30, i32 24
  tail call void @init_timer_key(ptr noundef %slow_fill.i.i, ptr noundef nonnull @ef4_rx_slow_fill, i32 noundef 0, ptr noundef nonnull @.str.120, ptr noundef nonnull @ef4_alloc_channel.__key) #22
  %arrayidx.i = getelementptr %struct.ef4_nic, ptr %add.ptr.i, i32 0, i32 23, i32 %i.0202.i
  %73 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call7.i.i.i.i, ptr %arrayidx.i, align 4
  %arrayidx98.i = getelementptr %struct.ef4_nic, ptr %add.ptr.i, i32 0, i32 24, i32 %i.0202.i
  %74 = ptrtoint ptr %arrayidx98.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %add.ptr.i, ptr %arrayidx98.i, align 4
  %index.i = getelementptr %struct.ef4_nic, ptr %add.ptr.i, i32 0, i32 24, i32 %i.0202.i, i32 1
  %75 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %i.0202.i, ptr %index.i, align 4
  %inc.i = add nuw nsw i32 %i.0202.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.end.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body.i

for.end.i:                                        ; preds = %if.end.i
  %76 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %type, align 4
  %max_interrupt_mode.i = getelementptr inbounds %struct.ef4_nic_type, ptr %77, i32 0, i32 92
  %78 = ptrtoint ptr %max_interrupt_mode.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %max_interrupt_mode.i, align 4
  %80 = load i32, ptr @interrupt_mode, align 4
  %81 = tail call i32 @llvm.umax.i32(i32 %79, i32 %80) #22
  %interrupt_mode.i = getelementptr i8, ptr %call, i32 2432
  %82 = ptrtoint ptr %interrupt_mode.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %interrupt_mode.i, align 128
  %workqueue_name.i = getelementptr i8, ptr %call, i32 2364
  %83 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i192.i = icmp eq ptr %84, null
  br i1 %tobool.not.i.i192.i, label %if.end.i.i194.i, label %for.end.i.pci_name.exit196.i_crit_edge

for.end.i.pci_name.exit196.i_crit_edge:           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %pci_name.exit196.i

if.end.i.i194.i:                                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #24
  %85 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev, align 4
  br label %pci_name.exit196.i

pci_name.exit196.i:                               ; preds = %if.end.i.i194.i, %for.end.i.pci_name.exit196.i_crit_edge
  %retval.0.i.i195.i = phi ptr [ %86, %if.end.i.i194.i ], [ %84, %for.end.i.pci_name.exit196.i_crit_edge ]
  %call106.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %workqueue_name.i, i32 noundef 16, ptr noundef nonnull @.str.118, ptr noundef %retval.0.i.i195.i) #22
  %call109.i = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.119, i32 noundef 917514, i32 noundef 1, ptr noundef %workqueue_name.i) #22
  %workqueue.i = getelementptr i8, ptr %call, i32 2360
  %87 = ptrtoint ptr %workqueue.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call109.i, ptr %workqueue.i, align 8
  %tobool111.not.i = icmp eq ptr %call109.i, null
  br i1 %tobool111.not.i, label %pci_name.exit196.i.for.body.i.i.preheader_crit_edge, label %do.body

pci_name.exit196.i.for.body.i.i.preheader_crit_edge: ; preds = %pci_name.exit196.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body.i.i.preheader

for.body.i.i.preheader:                           ; preds = %pci_name.exit196.i.for.body.i.i.preheader_crit_edge, %ef4_alloc_channel.exit.thread.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.i.i.preheader
  %i.09.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.i.preheader ]
  %arrayidx.i197.i = getelementptr %struct.ef4_nic, ptr %add.ptr.i, i32 0, i32 23, i32 %i.09.i.i
  %88 = ptrtoint ptr %arrayidx.i197.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx.i197.i, align 4
  tail call void @kfree(ptr noundef %89) #22
  %inc.i.i = add nuw nsw i32 %i.09.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 32
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i
  %vpd_sn.i.i = getelementptr i8, ptr %call, i32 4956
  %90 = ptrtoint ptr %vpd_sn.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %vpd_sn.i.i, align 4
  tail call void @kfree(ptr noundef %91) #22
  %workqueue.i.i = getelementptr i8, ptr %call, i32 2360
  %92 = ptrtoint ptr %workqueue.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %workqueue.i.i, align 8
  %tobool.not.i198.i = icmp eq ptr %93, null
  br i1 %tobool.not.i198.i, label %for.end.i.i.if.end105_crit_edge, label %if.then.i.i

for.end.i.i.if.end105_crit_edge:                  ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end105

if.then.i.i:                                      ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @destroy_workqueue(ptr noundef nonnull %93) #22
  %94 = ptrtoint ptr %workqueue.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr null, ptr %workqueue.i.i, align 8
  br label %if.end105

do.body:                                          ; preds = %pci_name.exit196.i
  %95 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %msg_enable.i, align 8
  %and = and i32 %96, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %do.body.do.end_crit_edge, label %if.then9

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #24
  %97 = ptrtoint ptr %net_dev62.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %net_dev62.i, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %98, ptr noundef nonnull @.str.93) #25
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body.do.end_crit_edge
  %99 = ptrtoint ptr %pci_dev59.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %pci_dev59.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vpd_size.i) #22
  %101 = ptrtoint ptr %vpd_size.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 -1, ptr %vpd_size.i, align 4, !annotation !552
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %kw_len.i) #22
  %102 = ptrtoint ptr %kw_len.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 -1, ptr %kw_len.i, align 4, !annotation !552
  %call.i = call ptr @pci_vpd_alloc(ptr noundef %100, ptr noundef nonnull %vpd_size.i) #22
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %if.end.i194

do.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #24
  %dev2.i = getelementptr inbounds %struct.pci_dev, ptr %100, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev2.i, ptr noundef nonnull @.str.125) #25
  br label %ef4_probe_vpd_strings.exit

if.end.i194:                                      ; preds = %do.end
  %103 = ptrtoint ptr %vpd_size.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %vpd_size.i, align 4
  %call3.i = call i32 @pci_vpd_find_ro_info_keyword(ptr noundef %call.i, i32 noundef %104, ptr noundef nonnull @.str.129, ptr noundef nonnull %kw_len.i) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp slt i32 %call3.i, 0
  %dev8.i = getelementptr inbounds %struct.pci_dev, ptr %100, i32 0, i32 44
  br i1 %cmp.i, label %do.end7.i, label %do.end11.i

do.end7.i:                                        ; preds = %if.end.i194
  call void @__sanitizer_cov_trace_pc() #24
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev8.i, ptr noundef nonnull @.str.131) #25
  br label %if.end13.i

do.end11.i:                                       ; preds = %if.end.i194
  call void @__sanitizer_cov_trace_pc() #24
  %105 = ptrtoint ptr %kw_len.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %kw_len.i, align 4
  %add.ptr.i195 = getelementptr i8, ptr %call.i, i32 %call3.i
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev8.i, ptr noundef nonnull @.str.134, i32 noundef %106, ptr noundef %add.ptr.i195) #25
  br label %if.end13.i

if.end13.i:                                       ; preds = %do.end11.i, %do.end7.i
  %107 = ptrtoint ptr %vpd_size.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %vpd_size.i, align 4
  %call14.i = call i32 @pci_vpd_find_ro_info_keyword(ptr noundef %call.i, i32 noundef %108, ptr noundef nonnull @.str.137, ptr noundef nonnull %kw_len.i) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp15.i = icmp slt i32 %call14.i, 0
  br i1 %cmp15.i, label %do.end19.i, label %if.else21.i

do.end19.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #24
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev8.i, ptr noundef nonnull @.str.139) #25
  br label %if.end24.i

if.else21.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #24
  %add.ptr22.i = getelementptr i8, ptr %call.i, i32 %call14.i
  %109 = ptrtoint ptr %kw_len.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %kw_len.i, align 4
  %call23.i = call ptr @kmemdup_nul(ptr noundef %add.ptr22.i, i32 noundef %110, i32 noundef 3264) #22
  %vpd_sn.i = getelementptr i8, ptr %call, i32 4956
  %111 = ptrtoint ptr %vpd_sn.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %call23.i, ptr %vpd_sn.i, align 4
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.else21.i, %do.end19.i
  call void @kfree(ptr noundef %call.i) #22
  br label %ef4_probe_vpd_strings.exit

ef4_probe_vpd_strings.exit:                       ; preds = %if.end24.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %kw_len.i) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vpd_size.i) #22
  %call12 = call fastcc i32 @ef4_init_io(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %ef4_probe_vpd_strings.exit.fail2_crit_edge

ef4_probe_vpd_strings.exit.fail2_crit_edge:       ; preds = %ef4_probe_vpd_strings.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %fail2

if.end15:                                         ; preds = %ef4_probe_vpd_strings.exit
  %call16 = call fastcc i32 @ef4_pci_probe_main(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.fail3_crit_edge

if.end15.fail3_crit_edge:                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #24
  br label %fail3

if.end19:                                         ; preds = %if.end15
  %112 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %type, align 4
  %offload_features = getelementptr inbounds %struct.ef4_nic_type, ptr %113, i32 0, i32 94
  %114 = ptrtoint ptr %offload_features to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %offload_features, align 8
  %features = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 23
  %116 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %features, align 16
  %or22 = or i64 %115, %117
  %or23 = or i64 %or22, 1099511627777
  %vlan_features = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 26
  %118 = ptrtoint ptr %vlan_features to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %vlan_features, align 8
  %or24 = or i64 %119, 1099511627817
  store i64 %or24, ptr %vlan_features, align 8
  %120 = ptrtoint ptr %fixed_features to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %fixed_features, align 32
  %neg = xor i64 %121, -1
  %and27 = and i64 %or23, %neg
  %hw_features = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 24
  %122 = ptrtoint ptr %hw_features to i32
  call void @__asan_store8_noabort(i32 %122)
  store i64 %and27, ptr %hw_features, align 8
  %and29 = and i64 %or23, -513
  %or32 = or i64 %121, %and29
  store i64 %or32, ptr %features, align 16
  %123 = ptrtoint ptr %net_dev62.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %net_dev62.i, align 4
  %watchdog_timeo.i = getelementptr inbounds %struct.net_device, ptr %124, i32 0, i32 115
  %125 = ptrtoint ptr %watchdog_timeo.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 500, ptr %watchdog_timeo.i, align 4
  %126 = ptrtoint ptr %pci_dev59.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %pci_dev59.i, align 4
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %127, i32 0, i32 46
  %128 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %irq.i, align 4
  %irq2.i = getelementptr inbounds %struct.net_device, ptr %124, i32 0, i32 64
  %130 = ptrtoint ptr %irq2.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %129, ptr %irq2.i, align 4
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %124, i32 0, i32 16
  %131 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr @ef4_netdev_ops, ptr %netdev_ops.i, align 8
  %ethtool_ops.i = getelementptr inbounds %struct.net_device, ptr %124, i32 0, i32 44
  %132 = ptrtoint ptr %ethtool_ops.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr @ef4_ethtool_ops, ptr %ethtool_ops.i, align 16
  %gso_max_segs.i.i = getelementptr inbounds %struct.net_device, ptr %124, i32 0, i32 138
  %133 = ptrtoint ptr %gso_max_segs.i.i to i32
  call void @__asan_store2_noabort(i32 %133)
  store volatile i16 100, ptr %gso_max_segs.i.i, align 4
  %min_mtu.i = getelementptr inbounds %struct.net_device, ptr %124, i32 0, i32 30
  %134 = ptrtoint ptr %min_mtu.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 68, ptr %min_mtu.i, align 8
  %max_mtu.i = getelementptr inbounds %struct.net_device, ptr %124, i32 0, i32 31
  %135 = ptrtoint ptr %max_mtu.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 9216, ptr %max_mtu.i, align 4
  call void @rtnl_lock() #22
  %136 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 1, ptr %state.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !553
  %reset_pending.i = getelementptr i8, ptr %call, i32 2464
  %137 = ptrtoint ptr %reset_pending.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %reset_pending.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %tobool.not.i = icmp eq i32 %138, 0
  br i1 %tobool.not.i, label %if.end12.i, label %do.body6.i

do.body6.i:                                       ; preds = %if.end19
  %139 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %msg_enable.i, align 8
  %and.i = and i32 %140, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool7.not.i, label %do.body6.i.fail_locked.i_crit_edge, label %if.then8.i

do.body6.i.fail_locked.i_crit_edge:               ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %fail_locked.i

if.then8.i:                                       ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #24
  %141 = ptrtoint ptr %net_dev62.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %net_dev62.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %142, ptr noundef nonnull @.str.179) #25
  br label %fail_locked.i

if.end12.i:                                       ; preds = %if.end19
  %call.i199 = call i32 @dev_alloc_name(ptr noundef %124, ptr noundef %124) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i199)
  %cmp.i200 = icmp slt i32 %call.i199, 0
  br i1 %cmp.i200, label %if.end12.i.fail_locked.i_crit_edge, label %if.end14.i

if.end12.i.fail_locked.i_crit_edge:               ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %fail_locked.i

if.end14.i:                                       ; preds = %if.end12.i
  %143 = ptrtoint ptr %net_dev62.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %net_dev62.i, align 4
  %call.i.i = call ptr @strcpy(ptr noundef %add.ptr.i, ptr noundef %144) #27
  call void @ef4_mtd_rename(ptr noundef %add.ptr.i) #22
  %channel1.i.i.i = getelementptr i8, ptr %call, i32 2468
  %145 = ptrtoint ptr %channel1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %channel1.i.i.i, align 4
  %tobool.not17.i.i.i = icmp eq ptr %146, null
  br i1 %tobool.not17.i.i.i, label %if.end14.i.ef4_update_name.exit.i_crit_edge, label %for.body.lr.ph.i.i.i

if.end14.i.ef4_update_name.exit.i_crit_edge:      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %ef4_update_name.exit.i

for.body.lr.ph.i.i.i:                             ; preds = %if.end14.i
  %n_channels.i.i.i = getelementptr i8, ptr %call, i32 3668
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %cond.end.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %channel.018.i.i.i = phi ptr [ %146, %for.body.lr.ph.i.i.i ], [ %158, %cond.end.i.i.i.for.body.i.i.i_crit_edge ]
  %type.i.i.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.018.i.i.i, i32 0, i32 2
  %147 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %type.i.i.i, align 8
  %get_name.i.i.i = getelementptr inbounds %struct.ef4_channel_type, ptr %148, i32 0, i32 3
  %149 = ptrtoint ptr %get_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %get_name.i.i.i, align 4
  %channel2.i.i.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.018.i.i.i, i32 0, i32 1
  %151 = ptrtoint ptr %channel2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %channel2.i.i.i, align 4
  %name.i.i.i = getelementptr %struct.ef4_nic, ptr %add.ptr.i, i32 0, i32 24, i32 %152, i32 2
  call void %150(ptr noundef nonnull %channel.018.i.i.i, ptr noundef %name.i.i.i, i32 noundef 22) #22
  %153 = ptrtoint ptr %channel2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %channel2.i.i.i, align 4
  %add.i.i.i = add i32 %154, 1
  %155 = ptrtoint ptr %n_channels.i.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %n_channels.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %156)
  %cmp.i.i.i = icmp ult i32 %add.i.i.i, %156
  br i1 %cmp.i.i.i, label %cond.end.i.i.i, label %for.body.i.i.i.ef4_update_name.exit.i_crit_edge

for.body.i.i.i.ef4_update_name.exit.i_crit_edge:  ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %ef4_update_name.exit.i

cond.end.i.i.i:                                   ; preds = %for.body.i.i.i
  %arrayidx8.i.i.i = getelementptr %struct.ef4_nic, ptr %add.ptr.i, i32 0, i32 23, i32 %add.i.i.i
  %157 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %arrayidx8.i.i.i, align 4
  %tobool.not.i.i.i201 = icmp eq ptr %158, null
  br i1 %tobool.not.i.i.i201, label %cond.end.i.i.i.ef4_update_name.exit.i_crit_edge, label %cond.end.i.i.i.for.body.i.i.i_crit_edge

cond.end.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %cond.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body.i.i.i

cond.end.i.i.i.ef4_update_name.exit.i_crit_edge:  ; preds = %cond.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %ef4_update_name.exit.i

ef4_update_name.exit.i:                           ; preds = %cond.end.i.i.i.ef4_update_name.exit.i_crit_edge, %for.body.i.i.i.ef4_update_name.exit.i_crit_edge, %if.end14.i.ef4_update_name.exit.i_crit_edge
  call void @netif_carrier_off(ptr noundef %124) #22
  %call15.i = call i32 @register_netdevice(ptr noundef %124) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end18.i, label %ef4_update_name.exit.i.fail_locked.i_crit_edge

ef4_update_name.exit.i.fail_locked.i_crit_edge:   ; preds = %ef4_update_name.exit.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %fail_locked.i

if.end18.i:                                       ; preds = %ef4_update_name.exit.i
  %159 = ptrtoint ptr %channel1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %channel1.i.i.i, align 4
  %tobool20.not110.i = icmp eq ptr %160, null
  br i1 %tobool20.not110.i, label %if.end18.i.for.end39.i_crit_edge, label %for.body.lr.ph.i

if.end18.i.for.end39.i_crit_edge:                 ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end39.i

for.body.lr.ph.i:                                 ; preds = %if.end18.i
  %n_channels.i = getelementptr i8, ptr %call, i32 3668
  br label %for.body.i203

for.body.i203:                                    ; preds = %cond.end.i.for.body.i203_crit_edge, %for.body.lr.ph.i
  %channel.0111.i = phi ptr [ %160, %for.body.lr.ph.i ], [ %182, %cond.end.i.for.body.i203_crit_edge ]
  %channel1.i.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.0111.i, i32 0, i32 1
  %161 = ptrtoint ptr %channel1.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %channel1.i.i, align 4
  %163 = ptrtoint ptr %channel.0111.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %channel.0111.i, align 128
  %tx_channel_offset.i.i = getelementptr inbounds %struct.ef4_nic, ptr %164, i32 0, i32 39
  %165 = ptrtoint ptr %tx_channel_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %tx_channel_offset.i.i, align 32
  %sub.i.i = sub i32 %162, %166
  %n_tx_channels.i.i = getelementptr inbounds %struct.ef4_nic, ptr %164, i32 0, i32 40
  %167 = ptrtoint ptr %n_tx_channels.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %n_tx_channels.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %168)
  %cmp.i.i202 = icmp ult i32 %sub.i.i, %168
  br i1 %cmp.i.i202, label %if.else.i, label %for.body.i203.if.end31.i_crit_edge

for.body.i203.if.end31.i_crit_edge:               ; preds = %for.body.i203
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end31.i

if.else.i:                                        ; preds = %for.body.i203
  %tx_queue23.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.0111.i, i32 0, i32 32
  %add.ptr.i204 = getelementptr %struct.ef4_channel, ptr %channel.0111.i, i32 1
  %cmp28107.i = icmp ult ptr %tx_queue23.i, %add.ptr.i204
  br i1 %cmp28107.i, label %if.else.i.land.rhs.i_crit_edge, label %if.else.i.if.end31.i_crit_edge

if.else.i.if.end31.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end31.i

if.else.i.land.rhs.i_crit_edge:                   ; preds = %if.else.i
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.body30.i.land.rhs.i_crit_edge, %if.else.i.land.rhs.i_crit_edge
  %tx_queue.0108.i = phi ptr [ %incdec.ptr.i, %for.body30.i.land.rhs.i_crit_edge ], [ %tx_queue23.i, %if.else.i.land.rhs.i_crit_edge ]
  %169 = ptrtoint ptr %tx_queue.0108.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %tx_queue.0108.i, align 128
  %net_dev.i105.i = getelementptr inbounds %struct.ef4_nic, ptr %170, i32 0, i32 69
  %171 = ptrtoint ptr %net_dev.i105.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %net_dev.i105.i, align 4
  %num_tc.i.i = getelementptr inbounds %struct.net_device, ptr %172, i32 0, i32 140
  %173 = ptrtoint ptr %num_tc.i.i to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %num_tc.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %174)
  %cmp.i106.i = icmp slt i16 %174, 2
  br i1 %cmp.i106.i, label %ef4_tx_queue_used.exit.i, label %land.rhs.i.for.body30.i_crit_edge

land.rhs.i.for.body30.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body30.i

ef4_tx_queue_used.exit.i:                         ; preds = %land.rhs.i
  %queue.i.i205 = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue.0108.i, i32 0, i32 1
  %175 = ptrtoint ptr %queue.i.i205 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %queue.i.i205, align 4
  %and.i.i = and i32 %176, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.i, label %ef4_tx_queue_used.exit.i.for.body30.i_crit_edge, label %ef4_tx_queue_used.exit.i.if.end31.i_crit_edge

ef4_tx_queue_used.exit.i.if.end31.i_crit_edge:    ; preds = %ef4_tx_queue_used.exit.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end31.i

ef4_tx_queue_used.exit.i.for.body30.i_crit_edge:  ; preds = %ef4_tx_queue_used.exit.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body30.i

for.body30.i:                                     ; preds = %ef4_tx_queue_used.exit.i.for.body30.i_crit_edge, %land.rhs.i.for.body30.i_crit_edge
  call void @ef4_init_tx_queue_core_txq(ptr noundef %tx_queue.0108.i) #22
  %incdec.ptr.i = getelementptr %struct.ef4_tx_queue, ptr %tx_queue.0108.i, i32 1
  %cmp28.i = icmp ult ptr %incdec.ptr.i, %add.ptr.i204
  br i1 %cmp28.i, label %for.body30.i.land.rhs.i_crit_edge, label %for.body30.i.if.end31.i_crit_edge

for.body30.i.if.end31.i_crit_edge:                ; preds = %for.body30.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end31.i

for.body30.i.land.rhs.i_crit_edge:                ; preds = %for.body30.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %land.rhs.i

if.end31.i:                                       ; preds = %for.body30.i.if.end31.i_crit_edge, %ef4_tx_queue_used.exit.i.if.end31.i_crit_edge, %if.else.i.if.end31.i_crit_edge, %for.body.i203.if.end31.i_crit_edge
  %177 = ptrtoint ptr %channel1.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %channel1.i.i, align 4
  %add.i206 = add i32 %178, 1
  %179 = ptrtoint ptr %n_channels.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %n_channels.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i206, i32 %180)
  %cmp34.i = icmp ult i32 %add.i206, %180
  br i1 %cmp34.i, label %cond.end.i, label %if.end31.i.for.end39.i_crit_edge

if.end31.i.for.end39.i_crit_edge:                 ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end39.i

cond.end.i:                                       ; preds = %if.end31.i
  %arrayidx38.i = getelementptr %struct.ef4_nic, ptr %add.ptr.i, i32 0, i32 23, i32 %add.i206
  %181 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %arrayidx38.i, align 4
  %tobool20.not.i = icmp eq ptr %182, null
  br i1 %tobool20.not.i, label %cond.end.i.for.end39.i_crit_edge, label %cond.end.i.for.body.i203_crit_edge

cond.end.i.for.body.i203_crit_edge:               ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body.i203

cond.end.i.for.end39.i_crit_edge:                 ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end39.i

for.end39.i:                                      ; preds = %cond.end.i.for.end39.i_crit_edge, %if.end31.i.for.end39.i_crit_edge, %if.end18.i.for.end39.i_crit_edge
  call fastcc void @ef4_associate(ptr noundef %add.ptr.i) #22
  call void @rtnl_unlock() #22
  %183 = ptrtoint ptr %pci_dev59.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %pci_dev59.i, align 4
  %dev.i207 = getelementptr inbounds %struct.pci_dev, ptr %184, i32 0, i32 44
  %call41.i = call i32 @device_create_file(ptr noundef %dev.i207, ptr noundef nonnull @dev_attr_phy_type) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool42.not.i = icmp eq i32 %call41.i, 0
  %185 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %msg_enable.i, align 8
  br i1 %tobool42.not.i, label %do.body37, label %do.body44.i

do.body44.i:                                      ; preds = %for.end39.i
  %and46.i = and i32 %186, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i)
  %tobool47.not.i = icmp eq i32 %and46.i, 0
  br i1 %tobool47.not.i, label %do.body44.i.fail_registered.i_crit_edge, label %if.then48.i

do.body44.i.fail_registered.i_crit_edge:          ; preds = %do.body44.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %fail_registered.i

if.then48.i:                                      ; preds = %do.body44.i
  call void @__sanitizer_cov_trace_pc() #24
  %187 = ptrtoint ptr %net_dev62.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %net_dev62.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %188, ptr noundef nonnull @.str.180) #25
  br label %fail_registered.i

fail_registered.i:                                ; preds = %if.then48.i, %do.body44.i.fail_registered.i_crit_edge
  call void @rtnl_lock() #22
  call fastcc void @ef4_dissociate(ptr noundef %add.ptr.i) #22
  call void @unregister_netdevice_queue(ptr noundef %124, ptr noundef null) #22
  br label %fail_locked.i

fail_locked.i:                                    ; preds = %fail_registered.i, %ef4_update_name.exit.i.fail_locked.i_crit_edge, %if.end12.i.fail_locked.i_crit_edge, %if.then8.i, %do.body6.i.fail_locked.i_crit_edge
  %rc.0.i = phi i32 [ %call.i199, %if.end12.i.fail_locked.i_crit_edge ], [ %call15.i, %ef4_update_name.exit.i.fail_locked.i_crit_edge ], [ %call41.i, %fail_registered.i ], [ -5, %if.then8.i ], [ -5, %do.body6.i.fail_locked.i_crit_edge ]
  %189 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 0, ptr %state.i, align 4
  call void @rtnl_unlock() #22
  %190 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %msg_enable.i, align 8
  %and57.i = and i32 %191, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57.i)
  %tobool58.not.i = icmp eq i32 %and57.i, 0
  br i1 %tobool58.not.i, label %fail_locked.i.fail4_crit_edge, label %if.then59.i

fail_locked.i.fail4_crit_edge:                    ; preds = %fail_locked.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %fail4

if.then59.i:                                      ; preds = %fail_locked.i
  call void @__sanitizer_cov_trace_pc() #24
  %192 = ptrtoint ptr %net_dev62.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %net_dev62.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %193, ptr noundef nonnull @.str.181) #25
  br label %fail4

do.body37:                                        ; preds = %for.end39.i
  %and39 = and i32 %186, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %do.body37.do.end54_crit_edge, label %do.body42

do.body37.do.end54_crit_edge:                     ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end54

do.body42:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_pci_probe.__UNIQUE_ID_ddebug595, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_pci_probe, %if.then47)) #22
          to label %do.end54 [label %if.then47], !srcloc !536

if.then47:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #24
  %194 = ptrtoint ptr %net_dev62.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %net_dev62.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_pci_probe.__UNIQUE_ID_ddebug595, ptr noundef %195, ptr noundef nonnull @.str.95) #22
  br label %do.end54

do.end54:                                         ; preds = %if.then47, %do.body42, %do.body37.do.end54_crit_edge
  call void @rtnl_lock() #22
  %196 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %type, align 4
  %mtd_probe.i = getelementptr inbounds %struct.ef4_nic_type, ptr %197, i32 0, i32 71
  %198 = ptrtoint ptr %mtd_probe.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %mtd_probe.i, align 4
  %call.i210 = call i32 %199(ptr noundef %add.ptr.i) #22
  call void @rtnl_unlock() #22
  %200 = zext i32 %call.i210 to i64
  call void @__sanitizer_cov_trace_switch(i64 %200, ptr @__sancov_gen_cov_switch_values.208)
  switch i32 %call.i210, label %do.body58 [
    i32 0, label %do.end54.if.end67_crit_edge
    i32 -1, label %do.end54.if.end67_crit_edge237
  ]

do.end54.if.end67_crit_edge237:                   ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end67

do.end54.if.end67_crit_edge:                      ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end67

do.body58:                                        ; preds = %do.end54
  %201 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %msg_enable.i, align 8
  %and60 = and i32 %202, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %do.body58.if.end67_crit_edge, label %if.then62

do.body58.if.end67_crit_edge:                     ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end67

if.then62:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #24
  %203 = ptrtoint ptr %net_dev62.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %net_dev62.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %204, ptr noundef nonnull @.str.96, i32 noundef %call.i210) #25
  br label %if.end67

if.end67:                                         ; preds = %if.then62, %do.body58.if.end67_crit_edge, %do.end54.if.end67_crit_edge, %do.end54.if.end67_crit_edge237
  %call68 = call i32 @pci_enable_pcie_error_reporting(ptr noundef %pci_dev) #22
  %205 = zext i32 %call68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %205, ptr @__sancov_gen_cov_switch_values.209)
  switch i32 %call68, label %do.body73 [
    i32 0, label %if.end67.cleanup_crit_edge
    i32 -22, label %if.end67.cleanup_crit_edge238
  ]

if.end67.cleanup_crit_edge238:                    ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

do.body73:                                        ; preds = %if.end67
  %206 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %msg_enable.i, align 8
  %and75 = and i32 %207, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %do.body73.cleanup_crit_edge, label %if.then77

do.body73.cleanup_crit_edge:                      ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.then77:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #24
  %208 = ptrtoint ptr %net_dev62.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %net_dev62.i, align 4
  call void (ptr, ptr, ...) @netdev_notice(ptr noundef %209, ptr noundef nonnull @.str.97, i32 noundef %call68) #25
  br label %cleanup

fail4:                                            ; preds = %if.then59.i, %fail_locked.i.fail4_crit_edge
  call fastcc void @ef4_pci_remove_main(ptr noundef %add.ptr.i)
  br label %fail3

fail3:                                            ; preds = %fail4, %if.end15.fail3_crit_edge
  %rc.0 = phi i32 [ %call16, %if.end15.fail3_crit_edge ], [ %rc.0.i, %fail4 ]
  call fastcc void @ef4_fini_io(ptr noundef %add.ptr.i)
  br label %fail2

fail2:                                            ; preds = %fail3, %ef4_probe_vpd_strings.exit.fail2_crit_edge
  %rc.1 = phi i32 [ %call12, %ef4_probe_vpd_strings.exit.fail2_crit_edge ], [ %rc.0, %fail3 ]
  br label %for.body.i214

for.body.i214:                                    ; preds = %for.body.i214.for.body.i214_crit_edge, %fail2
  %i.09.i = phi i32 [ 0, %fail2 ], [ %inc.i212, %for.body.i214.for.body.i214_crit_edge ]
  %arrayidx.i211 = getelementptr %struct.ef4_nic, ptr %add.ptr.i, i32 0, i32 23, i32 %i.09.i
  %210 = ptrtoint ptr %arrayidx.i211 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %arrayidx.i211, align 4
  call void @kfree(ptr noundef %211) #22
  %inc.i212 = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i213 = icmp eq i32 %inc.i212, 32
  br i1 %exitcond.not.i213, label %for.end.i218, label %for.body.i214.for.body.i214_crit_edge

for.body.i214.for.body.i214_crit_edge:            ; preds = %for.body.i214
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body.i214

for.end.i218:                                     ; preds = %for.body.i214
  %vpd_sn.i215 = getelementptr i8, ptr %call, i32 4956
  %212 = ptrtoint ptr %vpd_sn.i215 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %vpd_sn.i215, align 4
  call void @kfree(ptr noundef %213) #22
  %214 = ptrtoint ptr %workqueue.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %workqueue.i, align 8
  %tobool.not.i217 = icmp eq ptr %215, null
  br i1 %tobool.not.i217, label %for.end.i218.fail1_crit_edge, label %if.then.i

for.end.i218.fail1_crit_edge:                     ; preds = %for.end.i218
  call void @__sanitizer_cov_trace_pc() #24
  br label %fail1

if.then.i:                                        ; preds = %for.end.i218
  call void @__sanitizer_cov_trace_pc() #24
  call void @destroy_workqueue(ptr noundef nonnull %215) #22
  %216 = ptrtoint ptr %workqueue.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr null, ptr %workqueue.i, align 8
  br label %fail1

fail1:                                            ; preds = %if.then.i, %for.end.i218.fail1_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.1)
  %cmp83 = icmp sgt i32 %rc.1, 0
  br i1 %cmp83, label %do.end99, label %fail1.if.end105_crit_edge, !prof !542

fail1.if.end105_crit_edge:                        ; preds = %fail1
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end105

do.end99:                                         ; preds = %fail1
  call void @__sanitizer_cov_trace_pc() #24
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 2951, i32 noundef 9, ptr noundef null) #22
  br label %if.end105

if.end105:                                        ; preds = %do.end99, %fail1.if.end105_crit_edge, %if.then.i.i, %for.end.i.i.if.end105_crit_edge
  %rc.2228 = phi i32 [ %rc.1, %do.end99 ], [ %rc.1, %fail1.if.end105_crit_edge ], [ -12, %if.then.i.i ], [ -12, %for.end.i.i.if.end105_crit_edge ]
  %217 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %msg_enable.i, align 8
  %and115 = and i32 %218, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115)
  %tobool116.not = icmp eq i32 %and115, 0
  br i1 %tobool116.not, label %if.end105.do.end137_crit_edge, label %do.body118

if.end105.do.end137_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end137

do.body118:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_pci_probe.__UNIQUE_ID_ddebug596, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_pci_probe, %if.then130)) #22
          to label %do.end137 [label %if.then130], !srcloc !536

if.then130:                                       ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #24
  %219 = ptrtoint ptr %net_dev62.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %net_dev62.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_pci_probe.__UNIQUE_ID_ddebug596, ptr noundef %220, ptr noundef nonnull @.str.98, i32 noundef %rc.2228) #22
  br label %do.end137

do.end137:                                        ; preds = %if.then130, %do.body118, %if.end105.do.end137_crit_edge
  call void @free_netdev(ptr noundef nonnull %call) #22
  br label %cleanup

cleanup:                                          ; preds = %do.end137, %if.then77, %do.body73.cleanup_crit_edge, %if.end67.cleanup_crit_edge, %if.end67.cleanup_crit_edge238, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.2228, %do.end137 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end67.cleanup_crit_edge ], [ 0, %if.end67.cleanup_crit_edge238 ], [ 0, %do.body73.cleanup_crit_edge ], [ 0, %if.then77 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ef4_pci_remove(ptr noundef %pci_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @rtnl_lock() #22
  tail call fastcc void @ef4_dissociate(ptr noundef nonnull %1)
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 69
  %2 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net_dev, align 4
  tail call void @dev_close(ptr noundef %3) #22
  tail call fastcc void @ef4_disable_interrupts(ptr noundef nonnull %1)
  %state = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %state, align 4
  tail call void @rtnl_unlock() #22
  %5 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %net_dev, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end.ef4_unregister_netdev.exit_crit_edge, label %do.body.i

if.end.ef4_unregister_netdev.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %ef4_unregister_netdev.exit

do.body.i:                                        ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 2304
  %cmp.not.i = icmp eq ptr %add.ptr.i.i, %1
  br i1 %cmp.not.i, label %do.end9.i, label %do.body5.i, !prof !539

do.body5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #24
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/sfc/falcon/efx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2335, 0\0A.popsection", ""() #22, !srcloc !554
  unreachable

do.end9.i:                                        ; preds = %do.body.i
  %reg_state.i.i = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 121
  %7 = ptrtoint ptr %reg_state.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load.i.i = load i8, ptr %reg_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load.i.i)
  %cmp.i.not.i = icmp eq i8 %bf.load.i.i, 1
  br i1 %cmp.i.not.i, label %if.then12.i, label %do.end9.i.ef4_unregister_netdev.exit_crit_edge

do.end9.i.ef4_unregister_netdev.exit_crit_edge:   ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %ef4_unregister_netdev.exit

if.then12.i:                                      ; preds = %do.end9.i
  %pci_dev.i = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pci_dev.i, align 4
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44, i32 3
  %10 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then12.i.pci_name.exit.i_crit_edge

if.then12.i.pci_name.exit.i_crit_edge:            ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %pci_name.exit.i

if.end.i.i.i:                                     ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #24
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %12 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i.i, align 4
  br label %pci_name.exit.i

pci_name.exit.i:                                  ; preds = %if.end.i.i.i, %if.then12.i.pci_name.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %13, %if.end.i.i.i ], [ %11, %if.then12.i.pci_name.exit.i_crit_edge ]
  %call14.i = tail call i32 @strlcpy(ptr noundef nonnull %1, ptr noundef %retval.0.i.i.i, i32 noundef 16) #22
  %14 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pci_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  tail call void @device_remove_file(ptr noundef %dev.i, ptr noundef nonnull @dev_attr_phy_type) #22
  %16 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %net_dev, align 4
  tail call void @unregister_netdev(ptr noundef %17) #22
  br label %ef4_unregister_netdev.exit

ef4_unregister_netdev.exit:                       ; preds = %pci_name.exit.i, %do.end9.i.ef4_unregister_netdev.exit_crit_edge, %if.end.ef4_unregister_netdev.exit_crit_edge
  tail call void @ef4_mtd_remove(ptr noundef nonnull %1) #22
  tail call fastcc void @ef4_pci_remove_main(ptr noundef nonnull %1)
  tail call fastcc void @ef4_fini_io(ptr noundef nonnull %1)
  %msg_enable = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 20
  %18 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %msg_enable, align 8
  %and = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %ef4_unregister_netdev.exit.for.body.i_crit_edge, label %do.body3

ef4_unregister_netdev.exit.for.body.i_crit_edge:  ; preds = %ef4_unregister_netdev.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body.i

do.body3:                                         ; preds = %ef4_unregister_netdev.exit
  call void @__sanitizer_cov_trace_pc() #24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_pci_remove.__UNIQUE_ID_ddebug594, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_pci_remove, %if.then8)) #22
          to label %for.body.i [label %if.then8], !srcloc !536

if.then8:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #24
  %20 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_pci_remove.__UNIQUE_ID_ddebug594, ptr noundef %21, ptr noundef nonnull @.str.198) #22
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then8, %do.body3, %ef4_unregister_netdev.exit.for.body.i_crit_edge
  %i.09.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %do.body3 ], [ 0, %if.then8 ], [ 0, %ef4_unregister_netdev.exit.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ef4_nic, ptr %1, i32 0, i32 23, i32 %i.09.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i, align 4
  tail call void @kfree(ptr noundef %23) #22
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %vpd_sn.i = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 100
  %24 = ptrtoint ptr %vpd_sn.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vpd_sn.i, align 4
  tail call void @kfree(ptr noundef %25) #22
  %workqueue.i = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 9
  %26 = ptrtoint ptr %workqueue.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %workqueue.i, align 8
  %tobool.not.i29 = icmp eq ptr %27, null
  br i1 %tobool.not.i29, label %for.end.i.ef4_fini_struct.exit_crit_edge, label %if.then.i

for.end.i.ef4_fini_struct.exit_crit_edge:         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %ef4_fini_struct.exit

if.then.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @destroy_workqueue(ptr noundef nonnull %27) #22
  %28 = ptrtoint ptr %workqueue.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %workqueue.i, align 8
  br label %ef4_fini_struct.exit

ef4_fini_struct.exit:                             ; preds = %if.then.i, %for.end.i.ef4_fini_struct.exit_crit_edge
  %29 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %net_dev, align 4
  tail call void @free_netdev(ptr noundef %30) #22
  %call15 = tail call i32 @pci_disable_pcie_error_reporting(ptr noundef %pci_dev) #22
  br label %cleanup

cleanup:                                          ; preds = %ef4_fini_struct.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ef4_init_io(ptr noundef %efx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %pci_dev1 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 4
  %0 = ptrtoint ptr %pci_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_dev1, align 4
  %type = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 6
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type, align 4
  %max_dma_mask = getelementptr inbounds %struct.ef4_nic_type, ptr %3, i32 0, i32 85
  %4 = ptrtoint ptr %max_dma_mask to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %max_dma_mask, align 8
  %mem_map_size3 = getelementptr inbounds %struct.ef4_nic_type, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %mem_map_size3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mem_map_size3, align 4
  %call = tail call i32 %7(ptr noundef %efx) #22
  %msg_enable = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %8 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_enable, align 8
  %and = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end12_crit_edge, label %do.body4

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end12

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_init_io.__UNIQUE_ID_ddebug565, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_init_io, %if.then9)) #22
          to label %do.end12 [label %if.then9], !srcloc !536

if.then9:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #24
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %10 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_init_io.__UNIQUE_ID_ddebug565, ptr noundef %11, ptr noundef nonnull @.str.142) #22
  br label %do.end12

do.end12:                                         ; preds = %if.then9, %do.body4, %entry.do.end12_crit_edge
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %type, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %call14 = tail call i32 @pci_enable_device(ptr noundef %1) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end26, label %do.body17

do.body17:                                        ; preds = %do.end12
  %16 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %msg_enable, align 8
  %and19 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %do.body17.cleanup_crit_edge, label %if.then21

do.body17.cleanup_crit_edge:                      ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.then21:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #24
  %net_dev22 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %18 = ptrtoint ptr %net_dev22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %net_dev22, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %19, ptr noundef nonnull @.str.143) #25
  br label %cleanup

if.end26:                                         ; preds = %do.end12
  tail call void @pci_set_master(ptr noundef %1) #22
  %20 = and i64 %5, 2147483648
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %20)
  %cmp195.not = icmp eq i64 %20, 0
  br i1 %cmp195.not, label %if.end26.do.body46_crit_edge, label %while.body.lr.ph

if.end26.do.body46_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body46

while.body.lr.ph:                                 ; preds = %if.end26
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %conv28 = and i64 %5, 4294967295
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef %conv28) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %while.end.thread, label %do.body36

while.end.thread:                                 ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #24
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef %conv28) #22
  br label %do.body46

do.body36:                                        ; preds = %while.body.lr.ph
  %21 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %msg_enable, align 8
  %and38 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %do.body36.fail2_crit_edge, label %if.then40

do.body36.fail2_crit_edge:                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #24
  br label %fail2

if.then40:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #24
  %net_dev41 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %23 = ptrtoint ptr %net_dev41 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %net_dev41, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %24, ptr noundef nonnull @.str.144) #25
  br label %fail2

do.body46:                                        ; preds = %while.end.thread, %if.end26.do.body46_crit_edge
  %25 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %msg_enable, align 8
  %and48 = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %do.body46.do.end71_crit_edge, label %do.body51

do.body46.do.end71_crit_edge:                     ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end71

do.body51:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_init_io.__UNIQUE_ID_ddebug566, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_init_io, %if.then63)) #22
          to label %do.end71 [label %if.then63], !srcloc !536

if.then63:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #24
  %net_dev64 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %27 = ptrtoint ptr %net_dev64 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %net_dev64, align 4
  %conv65 = and i64 %5, 4294967295
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_init_io.__UNIQUE_ID_ddebug566, ptr noundef %28, ptr noundef nonnull @.str.145, i64 noundef %conv65) #22
  br label %do.end71

do.end71:                                         ; preds = %if.then63, %do.body51, %do.body46.do.end71_crit_edge
  %29 = ptrtoint ptr %pci_dev1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pci_dev1, align 4
  %arrayidx = getelementptr %struct.pci_dev, ptr %30, i32 0, i32 47, i32 %15
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx, align 8
  %membase_phys = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 12
  %33 = ptrtoint ptr %membase_phys to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %membase_phys, align 8
  %call73 = tail call i32 @pci_request_region(ptr noundef %1, i32 noundef %15, ptr noundef nonnull @.str.146) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end85, label %do.body76

do.body76:                                        ; preds = %do.end71
  %34 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %msg_enable, align 8
  %and78 = and i32 %35, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %do.body76.fail3_crit_edge, label %if.then80

do.body76.fail3_crit_edge:                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #24
  br label %fail3

if.then80:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #24
  %net_dev81 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %36 = ptrtoint ptr %net_dev81 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %net_dev81, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %37, ptr noundef nonnull @.str.147) #25
  br label %fail3

if.end85:                                         ; preds = %do.end71
  %38 = ptrtoint ptr %membase_phys to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %membase_phys, align 8
  %call87 = tail call ptr @ioremap(i32 noundef %39, i32 noundef %call) #22
  %membase = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 13
  %40 = ptrtoint ptr %membase to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call87, ptr %membase, align 4
  %tobool89.not = icmp eq ptr %call87, null
  %41 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %msg_enable, align 8
  %and93 = and i32 %42, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %tobool94.not = icmp eq i32 %and93, 0
  br i1 %tobool89.not, label %do.body91, label %do.body103

do.body91:                                        ; preds = %if.end85
  br i1 %tobool94.not, label %do.body91.do.end101_crit_edge, label %if.then95

do.body91.do.end101_crit_edge:                    ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end101

if.then95:                                        ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #24
  %net_dev96 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %43 = ptrtoint ptr %net_dev96 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %net_dev96, align 4
  %45 = ptrtoint ptr %membase_phys to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %membase_phys, align 8
  %conv98 = zext i32 %46 to i64
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %44, ptr noundef nonnull @.str.148, i64 noundef %conv98, i32 noundef %call) #25
  br label %do.end101

do.end101:                                        ; preds = %if.then95, %do.body91.do.end101_crit_edge
  %47 = ptrtoint ptr %pci_dev1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pci_dev1, align 4
  tail call void @pci_release_region(ptr noundef %48, i32 noundef %15) #22
  br label %fail3

do.body103:                                       ; preds = %if.end85
  br i1 %tobool94.not, label %do.body103.cleanup_crit_edge, label %do.body108

do.body103.cleanup_crit_edge:                     ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

do.body108:                                       ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_init_io.__UNIQUE_ID_ddebug567, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_init_io, %if.then120)) #22
          to label %cleanup [label %if.then120], !srcloc !536

if.then120:                                       ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #24
  %net_dev121 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %49 = ptrtoint ptr %net_dev121 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %net_dev121, align 4
  %51 = ptrtoint ptr %membase_phys to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %membase_phys, align 8
  %conv123 = zext i32 %52 to i64
  %53 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %membase, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_init_io.__UNIQUE_ID_ddebug567, ptr noundef %50, ptr noundef nonnull @.str.149, i64 noundef %conv123, i32 noundef %call, ptr noundef %54) #22
  br label %cleanup

fail3:                                            ; preds = %do.end101, %if.then80, %do.body76.fail3_crit_edge
  %rc.2 = phi i32 [ -12, %do.end101 ], [ -5, %if.then80 ], [ -5, %do.body76.fail3_crit_edge ]
  %55 = ptrtoint ptr %membase_phys to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %membase_phys, align 8
  br label %fail2

fail2:                                            ; preds = %fail3, %if.then40, %do.body36.fail2_crit_edge
  %rc.3 = phi i32 [ %call.i, %if.then40 ], [ %call.i, %do.body36.fail2_crit_edge ], [ %rc.2, %fail3 ]
  %56 = ptrtoint ptr %pci_dev1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pci_dev1, align 4
  tail call void @pci_disable_device(ptr noundef %57) #22
  br label %cleanup

cleanup:                                          ; preds = %fail2, %if.then120, %do.body108, %do.body103.cleanup_crit_edge, %if.then21, %do.body17.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then120 ], [ 0, %do.body103.cleanup_crit_edge ], [ %call14, %if.then21 ], [ %call14, %do.body17.cleanup_crit_edge ], [ %rc.3, %fail2 ], [ 0, %do.body108 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ef4_pci_probe_main(ptr noundef %efx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ef4_probe_all(ptr noundef %efx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end:                                           ; preds = %entry
  %channel1.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 23
  %0 = ptrtoint ptr %channel1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel1.i, align 4
  %tobool.not12.i = icmp eq ptr %1, null
  br i1 %tobool.not12.i, label %if.end.ef4_init_napi.exit_crit_edge, label %for.body.lr.ph.i

if.end.ef4_init_napi.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %ef4_init_napi.exit

for.body.lr.ph.i:                                 ; preds = %if.end
  %n_channels.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 36
  br label %for.body.i

for.body.i:                                       ; preds = %cond.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %channel.013.i = phi ptr [ %1, %for.body.lr.ph.i ], [ %12, %cond.end.i.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %channel.013.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channel.013.i, align 128
  %net_dev.i.i = getelementptr inbounds %struct.ef4_nic, ptr %3, i32 0, i32 69
  %4 = ptrtoint ptr %net_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net_dev.i.i, align 4
  %napi_dev.i.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.013.i, i32 0, i32 7
  %6 = ptrtoint ptr %napi_dev.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %napi_dev.i.i, align 8
  %napi_str.i.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.013.i, i32 0, i32 8
  tail call void @netif_napi_add(ptr noundef %5, ptr noundef %napi_str.i.i, ptr noundef nonnull @ef4_poll, i32 noundef 64) #22
  %channel2.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.013.i, i32 0, i32 1
  %7 = ptrtoint ptr %channel2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %channel2.i, align 4
  %add.i = add i32 %8, 1
  %9 = ptrtoint ptr %n_channels.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %n_channels.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %10)
  %cmp.i = icmp ult i32 %add.i, %10
  br i1 %cmp.i, label %cond.end.i, label %for.body.i.ef4_init_napi.exit_crit_edge

for.body.i.ef4_init_napi.exit_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %ef4_init_napi.exit

cond.end.i:                                       ; preds = %for.body.i
  %arrayidx6.i = getelementptr %struct.ef4_nic, ptr %efx, i32 0, i32 23, i32 %add.i
  %11 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx6.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %cond.end.i.ef4_init_napi.exit_crit_edge, label %cond.end.i.for.body.i_crit_edge

cond.end.i.for.body.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body.i

cond.end.i.ef4_init_napi.exit_crit_edge:          ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %ef4_init_napi.exit

ef4_init_napi.exit:                               ; preds = %cond.end.i.ef4_init_napi.exit_crit_edge, %for.body.i.ef4_init_napi.exit_crit_edge, %if.end.ef4_init_napi.exit_crit_edge
  %type = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 6
  %13 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %type, align 4
  %init = getelementptr inbounds %struct.ef4_nic_type, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init, align 8
  %call1 = tail call i32 %16(ptr noundef %efx) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end7, label %do.body

do.body:                                          ; preds = %ef4_init_napi.exit
  %msg_enable = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %17 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %msg_enable, align 8
  %and = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %do.body.fail3_crit_edge, label %if.then5

do.body.fail3_crit_edge:                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %fail3

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #24
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %19 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %20, ptr noundef nonnull @.str.53) #25
  br label %fail3

if.end7:                                          ; preds = %ef4_init_napi.exit
  %call8 = tail call fastcc i32 @ef4_init_port(ptr noundef %efx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end20, label %do.body11

do.body11:                                        ; preds = %if.end7
  %msg_enable12 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %21 = ptrtoint ptr %msg_enable12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %msg_enable12, align 8
  %and13 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %do.body11.fail4_crit_edge, label %if.then15

do.body11.fail4_crit_edge:                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #24
  br label %fail4

if.then15:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #24
  %net_dev16 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %23 = ptrtoint ptr %net_dev16 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %net_dev16, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %24, ptr noundef nonnull @.str.150) #25
  br label %fail4

if.end20:                                         ; preds = %if.end7
  %call21 = tail call i32 @ef4_nic_init_interrupt(ptr noundef %efx) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end20.fail5_crit_edge

if.end20.fail5_crit_edge:                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #24
  br label %fail5

if.end24:                                         ; preds = %if.end20
  %call25 = tail call fastcc i32 @ef4_enable_interrupts(ptr noundef %efx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end24.cleanup_crit_edge, label %fail6

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

fail6:                                            ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @ef4_nic_fini_interrupt(ptr noundef %efx) #22
  br label %fail5

fail5:                                            ; preds = %fail6, %if.end20.fail5_crit_edge
  %rc.0 = phi i32 [ %call21, %if.end20.fail5_crit_edge ], [ %call25, %fail6 ]
  %msg_enable.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %25 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %msg_enable.i, align 8
  %and.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i51 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i51, label %fail5.do.end7.i_crit_edge, label %do.body1.i

fail5.do.end7.i_crit_edge:                        ; preds = %fail5
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end7.i

do.body1.i:                                       ; preds = %fail5
  call void @__sanitizer_cov_trace_pc() #24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_fini_port.__UNIQUE_ID_ddebug558, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_pci_probe_main, %if.then5.i)) #22
          to label %do.end7.i [label %if.then5.i], !srcloc !536

if.then5.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #24
  %net_dev.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %27 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %net_dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_fini_port.__UNIQUE_ID_ddebug558, ptr noundef %28, ptr noundef nonnull @.str.178) #22
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then5.i, %do.body1.i, %fail5.do.end7.i_crit_edge
  %port_initialized.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 68
  %29 = ptrtoint ptr %port_initialized.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %port_initialized.i, align 2, !range !538
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool8.not.i = icmp eq i8 %30, 0
  br i1 %tobool8.not.i, label %do.end7.i.fail4_crit_edge, label %if.end10.i

do.end7.i.fail4_crit_edge:                        ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %fail4

if.end10.i:                                       ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #24
  %phy_op.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 76
  %31 = ptrtoint ptr %phy_op.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %phy_op.i, align 16
  %fini.i = getelementptr inbounds %struct.ef4_phy_operations, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %fini.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fini.i, align 4
  tail call void %34(ptr noundef %efx) #22
  %35 = ptrtoint ptr %port_initialized.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %port_initialized.i, align 2
  %link_state.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 81
  %36 = ptrtoint ptr %link_state.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %link_state.i, align 8
  tail call void @ef4_link_status_changed(ptr noundef %efx) #22
  br label %fail4

fail4:                                            ; preds = %if.end10.i, %do.end7.i.fail4_crit_edge, %if.then15, %do.body11.fail4_crit_edge
  %rc.1 = phi i32 [ %call8, %if.then15 ], [ %call8, %do.body11.fail4_crit_edge ], [ %rc.0, %do.end7.i.fail4_crit_edge ], [ %rc.0, %if.end10.i ]
  %37 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %type, align 4
  %fini = getelementptr inbounds %struct.ef4_nic_type, ptr %38, i32 0, i32 6
  %39 = ptrtoint ptr %fini to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %fini, align 8
  tail call void %40(ptr noundef %efx) #22
  br label %fail3

fail3:                                            ; preds = %fail4, %if.then5, %do.body.fail3_crit_edge
  %rc.2 = phi i32 [ %call1, %if.then5 ], [ %call1, %do.body.fail3_crit_edge ], [ %rc.1, %fail4 ]
  %41 = ptrtoint ptr %channel1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %channel1.i, align 4
  %tobool.not12.i53 = icmp eq ptr %42, null
  br i1 %tobool.not12.i53, label %fail3.ef4_fini_napi.exit_crit_edge, label %for.body.lr.ph.i55

fail3.ef4_fini_napi.exit_crit_edge:               ; preds = %fail3
  call void @__sanitizer_cov_trace_pc() #24
  br label %ef4_fini_napi.exit

for.body.lr.ph.i55:                               ; preds = %fail3
  %n_channels.i54 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 36
  br label %for.body.i58

for.body.i58:                                     ; preds = %cond.end.i65.for.body.i58_crit_edge, %for.body.lr.ph.i55
  %channel.013.i56 = phi ptr [ %42, %for.body.lr.ph.i55 ], [ %51, %cond.end.i65.for.body.i58_crit_edge ]
  %napi_dev.i.i57 = getelementptr inbounds %struct.ef4_channel, ptr %channel.013.i56, i32 0, i32 7
  %43 = ptrtoint ptr %napi_dev.i.i57 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %napi_dev.i.i57, align 8
  %tobool.not.i.i = icmp eq ptr %44, null
  br i1 %tobool.not.i.i, label %for.body.i58.ef4_fini_napi_channel.exit.i_crit_edge, label %if.then.i.i

for.body.i58.ef4_fini_napi_channel.exit.i_crit_edge: ; preds = %for.body.i58
  call void @__sanitizer_cov_trace_pc() #24
  br label %ef4_fini_napi_channel.exit.i

if.then.i.i:                                      ; preds = %for.body.i58
  call void @__sanitizer_cov_trace_pc() #24
  %napi_str.i.i59 = getelementptr inbounds %struct.ef4_channel, ptr %channel.013.i56, i32 0, i32 8
  tail call void @__netif_napi_del(ptr noundef %napi_str.i.i59) #22
  tail call void @synchronize_net() #22
  br label %ef4_fini_napi_channel.exit.i

ef4_fini_napi_channel.exit.i:                     ; preds = %if.then.i.i, %for.body.i58.ef4_fini_napi_channel.exit.i_crit_edge
  %45 = ptrtoint ptr %napi_dev.i.i57 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %napi_dev.i.i57, align 8
  %channel2.i60 = getelementptr inbounds %struct.ef4_channel, ptr %channel.013.i56, i32 0, i32 1
  %46 = ptrtoint ptr %channel2.i60 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %channel2.i60, align 4
  %add.i61 = add i32 %47, 1
  %48 = ptrtoint ptr %n_channels.i54 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %n_channels.i54, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i61, i32 %49)
  %cmp.i62 = icmp ult i32 %add.i61, %49
  br i1 %cmp.i62, label %cond.end.i65, label %ef4_fini_napi_channel.exit.i.ef4_fini_napi.exit_crit_edge

ef4_fini_napi_channel.exit.i.ef4_fini_napi.exit_crit_edge: ; preds = %ef4_fini_napi_channel.exit.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %ef4_fini_napi.exit

cond.end.i65:                                     ; preds = %ef4_fini_napi_channel.exit.i
  %arrayidx6.i63 = getelementptr %struct.ef4_nic, ptr %efx, i32 0, i32 23, i32 %add.i61
  %50 = ptrtoint ptr %arrayidx6.i63 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx6.i63, align 4
  %tobool.not.i64 = icmp eq ptr %51, null
  br i1 %tobool.not.i64, label %cond.end.i65.ef4_fini_napi.exit_crit_edge, label %cond.end.i65.for.body.i58_crit_edge

cond.end.i65.for.body.i58_crit_edge:              ; preds = %cond.end.i65
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body.i58

cond.end.i65.ef4_fini_napi.exit_crit_edge:        ; preds = %cond.end.i65
  call void @__sanitizer_cov_trace_pc() #24
  br label %ef4_fini_napi.exit

ef4_fini_napi.exit:                               ; preds = %cond.end.i65.ef4_fini_napi.exit_crit_edge, %ef4_fini_napi_channel.exit.i.ef4_fini_napi.exit_crit_edge, %fail3.ef4_fini_napi.exit_crit_edge
  tail call fastcc void @ef4_remove_all(ptr noundef %efx)
  br label %cleanup

cleanup:                                          ; preds = %ef4_fini_napi.exit, %if.end24.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end24.cleanup_crit_edge ], [ %call, %entry.cleanup_crit_edge ], [ %rc.2, %ef4_fini_napi.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_pcie_error_reporting(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ef4_pci_remove_main(ptr noundef %efx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 21
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %do.body2, label %do.end5, !prof !542

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/sfc/falcon/efx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2732, 0\0A.popsection", ""() #22, !srcloc !555
  unreachable

do.end5:                                          ; preds = %entry
  %reset_work = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 11
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %reset_work) #22
  tail call fastcc void @ef4_disable_interrupts(ptr noundef %efx)
  tail call void @ef4_nic_fini_interrupt(ptr noundef %efx) #22
  %msg_enable.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %2 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable.i, align 8
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end5.do.end7.i_crit_edge, label %do.body1.i

do.end5.do.end7.i_crit_edge:                      ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end7.i

do.body1.i:                                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_fini_port.__UNIQUE_ID_ddebug558, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_pci_remove_main, %if.then5.i)) #22
          to label %do.end7.i [label %if.then5.i], !srcloc !536

if.then5.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #24
  %net_dev.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %4 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net_dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_fini_port.__UNIQUE_ID_ddebug558, ptr noundef %5, ptr noundef nonnull @.str.178) #22
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then5.i, %do.body1.i, %do.end5.do.end7.i_crit_edge
  %port_initialized.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 68
  %6 = ptrtoint ptr %port_initialized.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %port_initialized.i, align 2, !range !538
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool8.not.i = icmp eq i8 %7, 0
  br i1 %tobool8.not.i, label %do.end7.i.ef4_fini_port.exit_crit_edge, label %if.end10.i

do.end7.i.ef4_fini_port.exit_crit_edge:           ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %ef4_fini_port.exit

if.end10.i:                                       ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #24
  %phy_op.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 76
  %8 = ptrtoint ptr %phy_op.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy_op.i, align 16
  %fini.i = getelementptr inbounds %struct.ef4_phy_operations, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %fini.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fini.i, align 4
  tail call void %11(ptr noundef %efx) #22
  %12 = ptrtoint ptr %port_initialized.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %port_initialized.i, align 2
  %link_state.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 81
  %13 = ptrtoint ptr %link_state.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %link_state.i, align 8
  tail call void @ef4_link_status_changed(ptr noundef %efx) #22
  br label %ef4_fini_port.exit

ef4_fini_port.exit:                               ; preds = %if.end10.i, %do.end7.i.ef4_fini_port.exit_crit_edge
  %type = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 6
  %14 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %type, align 4
  %fini = getelementptr inbounds %struct.ef4_nic_type, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %fini to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fini, align 8
  tail call void %17(ptr noundef %efx) #22
  %channel1.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 23
  %18 = ptrtoint ptr %channel1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %channel1.i, align 4
  %tobool.not12.i = icmp eq ptr %19, null
  br i1 %tobool.not12.i, label %ef4_fini_port.exit.ef4_fini_napi.exit_crit_edge, label %for.body.lr.ph.i

ef4_fini_port.exit.ef4_fini_napi.exit_crit_edge:  ; preds = %ef4_fini_port.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %ef4_fini_napi.exit

for.body.lr.ph.i:                                 ; preds = %ef4_fini_port.exit
  %n_channels.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 36
  br label %for.body.i

for.body.i:                                       ; preds = %cond.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %channel.013.i = phi ptr [ %19, %for.body.lr.ph.i ], [ %28, %cond.end.i.for.body.i_crit_edge ]
  %napi_dev.i.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.013.i, i32 0, i32 7
  %20 = ptrtoint ptr %napi_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %napi_dev.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i, label %for.body.i.ef4_fini_napi_channel.exit.i_crit_edge, label %if.then.i.i

for.body.i.ef4_fini_napi_channel.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %ef4_fini_napi_channel.exit.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #24
  %napi_str.i.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.013.i, i32 0, i32 8
  tail call void @__netif_napi_del(ptr noundef %napi_str.i.i) #22
  tail call void @synchronize_net() #22
  br label %ef4_fini_napi_channel.exit.i

ef4_fini_napi_channel.exit.i:                     ; preds = %if.then.i.i, %for.body.i.ef4_fini_napi_channel.exit.i_crit_edge
  %22 = ptrtoint ptr %napi_dev.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %napi_dev.i.i, align 8
  %channel2.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.013.i, i32 0, i32 1
  %23 = ptrtoint ptr %channel2.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %channel2.i, align 4
  %add.i = add i32 %24, 1
  %25 = ptrtoint ptr %n_channels.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %n_channels.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %26)
  %cmp.i = icmp ult i32 %add.i, %26
  br i1 %cmp.i, label %cond.end.i, label %ef4_fini_napi_channel.exit.i.ef4_fini_napi.exit_crit_edge

ef4_fini_napi_channel.exit.i.ef4_fini_napi.exit_crit_edge: ; preds = %ef4_fini_napi_channel.exit.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %ef4_fini_napi.exit

cond.end.i:                                       ; preds = %ef4_fini_napi_channel.exit.i
  %arrayidx6.i = getelementptr %struct.ef4_nic, ptr %efx, i32 0, i32 23, i32 %add.i
  %27 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx6.i, align 4
  %tobool.not.i14 = icmp eq ptr %28, null
  br i1 %tobool.not.i14, label %cond.end.i.ef4_fini_napi.exit_crit_edge, label %cond.end.i.for.body.i_crit_edge

cond.end.i.for.body.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body.i

cond.end.i.ef4_fini_napi.exit_crit_edge:          ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %ef4_fini_napi.exit

ef4_fini_napi.exit:                               ; preds = %cond.end.i.ef4_fini_napi.exit_crit_edge, %ef4_fini_napi_channel.exit.i.ef4_fini_napi.exit_crit_edge, %ef4_fini_port.exit.ef4_fini_napi.exit_crit_edge
  tail call fastcc void @ef4_remove_all(ptr noundef %efx)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ef4_fini_io(ptr nocapture noundef %efx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.body1

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end8

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_fini_io.__UNIQUE_ID_ddebug568, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_fini_io, %if.then5)) #22
          to label %do.end8 [label %if.then5], !srcloc !536

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #24
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %2 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_fini_io.__UNIQUE_ID_ddebug568, ptr noundef %3, ptr noundef nonnull @.str.196) #22
  br label %do.end8

do.end8:                                          ; preds = %if.then5, %do.body1, %entry.do.end8_crit_edge
  %membase = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 13
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase, align 4
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %do.end8.if.end13_crit_edge, label %if.then10

do.end8.if.end13_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end13

if.then10:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @iounmap(ptr noundef nonnull %5) #22
  %6 = ptrtoint ptr %membase to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %membase, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %do.end8.if.end13_crit_edge
  %membase_phys = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 12
  %7 = ptrtoint ptr %membase_phys to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %membase_phys, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool14.not = icmp eq i32 %8, 0
  br i1 %tobool14.not, label %if.end13.if.end17_crit_edge, label %if.then15

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end17

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #24
  %type = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 6
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %type, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 8
  %pci_dev = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 4
  %13 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pci_dev, align 4
  tail call void @pci_release_region(ptr noundef %14, i32 noundef %12) #22
  %15 = ptrtoint ptr %membase_phys to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %membase_phys, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end13.if.end17_crit_edge
  %pci_dev18 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 4
  %16 = ptrtoint ptr %pci_dev18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pci_dev18, align 4
  %call19 = tail call i32 @pci_vfs_assigned(ptr noundef %17) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then21, label %if.end17.if.end23_crit_edge

if.end17.if.end23_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end23

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #24
  %18 = ptrtoint ptr %pci_dev18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pci_dev18, align 4
  tail call void @pci_disable_device(ptr noundef %19) #22
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end17.if.end23_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ef4_reset_work(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %data, i32 -76
  %reset_pending = getelementptr i8, ptr %data, i32 84
  %0 = ptrtoint ptr %reset_pending to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %reset_pending, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  %2 = tail call i32 @llvm.ctlz.i32(i32 %1, i1 true) #22, !range !541
  %sub.i.op = xor i32 %2, 31
  %sub = select i1 %tobool.not.i, i32 -1, i32 %sub.i.op
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end6

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end6:                                          ; preds = %entry
  tail call void @rtnl_lock() #22
  %state = getelementptr i8, ptr %data, i32 80
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp7 = icmp eq i32 %4, 1
  br i1 %cmp7, label %if.then8, label %if.end6.if.end10_crit_edge

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end10

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #24
  %call9 = tail call i32 @ef4_reset(ptr noundef %add.ptr, i32 noundef %sub)
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end6.if.end10_crit_edge
  tail call void @rtnl_unlock() #22
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ef4_monitor(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %data, i32 -2688
  %type = getelementptr i8, ptr %data, i32 -2644
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 4
  %monitor = getelementptr inbounds %struct.ef4_nic_type, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %monitor to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %monitor, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %do.body3, label %do.end8, !prof !542

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/sfc/falcon/efx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1972, 0\0A.popsection", ""() #22, !srcloc !556
  unreachable

do.end8:                                          ; preds = %entry
  %mac_lock = getelementptr i8, ptr %data, i32 -560
  %call = tail call i32 @mutex_trylock(ptr noundef %mac_lock) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool9.not = icmp eq i32 %call, 0
  br i1 %tobool9.not, label %do.end8.if.end17_crit_edge, label %if.then10

do.end8.if.end17_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end17

if.then10:                                        ; preds = %do.end8
  %port_enabled = getelementptr i8, ptr %data, i32 -424
  %4 = ptrtoint ptr %port_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %port_enabled, align 8, !range !538
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool11.not = icmp eq i8 %5, 0
  br i1 %tobool11.not, label %if.then10.if.end15_crit_edge, label %if.then12

if.then10.if.end15_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end15

if.then12:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #24
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %type, align 4
  %monitor14 = getelementptr inbounds %struct.ef4_nic_type, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %monitor14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %monitor14, align 4
  tail call void %9(ptr noundef %add.ptr) #22
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.then10.if.end15_crit_edge
  tail call void @mutex_unlock(ptr noundef %mac_lock) #22
  br label %if.end17

if.end17:                                         ; preds = %if.end15, %do.end8.if.end17_crit_edge
  %workqueue = getelementptr i8, ptr %data, i32 -2632
  %10 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %workqueue, align 8
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %11, ptr noundef %data, i32 noundef 100) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef4_selftest_async_work(ptr noundef) #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ef4_mac_work(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_lock = getelementptr i8, ptr %data, i32 -92
  tail call void @mutex_lock_nested(ptr noundef %mac_lock, i32 noundef 0) #22
  %port_enabled = getelementptr i8, ptr %data, i32 44
  %0 = ptrtoint ptr %port_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %port_enabled, align 8, !range !538
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %add.ptr = getelementptr i8, ptr %data, i32 -2220
  %filter_sem.i = getelementptr i8, ptr %data, i32 216
  tail call void @down_read(ptr noundef %filter_sem.i) #22
  %type.i = getelementptr i8, ptr %data, i32 -2176
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type.i, align 4
  %reconfigure_mac.i = getelementptr inbounds %struct.ef4_nic_type, ptr %3, i32 0, i32 28
  %4 = ptrtoint ptr %reconfigure_mac.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reconfigure_mac.i, align 8
  %call.i = tail call i32 %5(ptr noundef %add.ptr) #22
  tail call void @up_read(ptr noundef %filter_sem.i) #22
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mac_lock) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @ef4_port_dummy_op_poll(ptr nocapture noundef readnone %efx) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 false
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef4_rx_slow_fill(ptr noundef) #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ef4_get_channel_name(ptr nocapture noundef readonly %channel, ptr nocapture noundef writeonly %buf, i32 noundef %len) #18 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 128
  %channel2 = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 1
  %2 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel2, align 4
  %tx_channel_offset = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 39
  %4 = ptrtoint ptr %tx_channel_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_channel_offset, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp5 = icmp ult i32 %3, %5
  %spec.select = select i1 %cmp5, ptr @.str.122, ptr @.str.123
  %type.0 = select i1 %cmp, ptr @.str.121, ptr %spec.select
  %6 = select i1 %cmp, i1 true, i1 %cmp5
  %spec.select17 = select i1 %6, i32 0, i32 %5
  %number.0 = sub i32 %3, %spec.select17
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @.str.124, ptr noundef %1, ptr noundef nonnull %type.0, i32 noundef %number.0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ef4_copy_channel(ptr nocapture noundef readonly %old_channel) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 2688) #26
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = call ptr @memcpy(ptr %call7.i, ptr %old_channel, i32 2688)
  %napi_dev = getelementptr inbounds %struct.ef4_channel, ptr %call7.i, i32 0, i32 7
  %2 = ptrtoint ptr %napi_dev to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %napi_dev, align 8
  %napi_hash_node = getelementptr inbounds %struct.ef4_channel, ptr %call7.i, i32 0, i32 8, i32 14
  %3 = ptrtoint ptr %napi_hash_node to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %napi_hash_node, align 8
  %pprev.i = getelementptr inbounds %struct.ef4_channel, ptr %call7.i, i32 0, i32 8, i32 14, i32 1
  %4 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %pprev.i, align 4
  %napi_id = getelementptr inbounds %struct.ef4_channel, ptr %call7.i, i32 0, i32 8, i32 15
  %5 = ptrtoint ptr %napi_id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %napi_id, align 8
  %state = getelementptr inbounds %struct.ef4_channel, ptr %call7.i, i32 0, i32 8, i32 1
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %state, align 8
  %eventq = getelementptr inbounds %struct.ef4_channel, ptr %call7.i, i32 0, i32 10
  %7 = call ptr @memset(ptr %eventq, i32 0, i32 20)
  %channel4 = getelementptr %struct.ef4_channel, ptr %call7.i, i32 0, i32 32, i32 0, i32 2
  %8 = ptrtoint ptr %channel4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %channel4, align 8
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  %10 = ptrtoint ptr %channel4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i, ptr %channel4, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  %buffer = getelementptr %struct.ef4_channel, ptr %call7.i, i32 0, i32 32, i32 0, i32 4
  %11 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %buffer, align 16
  %txd = getelementptr %struct.ef4_channel, ptr %call7.i, i32 0, i32 32, i32 0, i32 6
  %12 = call ptr @memset(ptr %txd, i32 0, i32 20)
  %channel4.1 = getelementptr %struct.ef4_channel, ptr %call7.i, i32 0, i32 32, i32 1, i32 2
  %13 = ptrtoint ptr %channel4.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %channel4.1, align 8
  %tobool5.not.1 = icmp eq ptr %14, null
  br i1 %tobool5.not.1, label %if.end8.if.end8.1_crit_edge, label %if.then6.1

if.end8.if.end8.1_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end8.1

if.then6.1:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #24
  %15 = ptrtoint ptr %channel4.1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i, ptr %channel4.1, align 8
  br label %if.end8.1

if.end8.1:                                        ; preds = %if.then6.1, %if.end8.if.end8.1_crit_edge
  %buffer.1 = getelementptr %struct.ef4_channel, ptr %call7.i, i32 0, i32 32, i32 1, i32 4
  %16 = ptrtoint ptr %buffer.1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %buffer.1, align 16
  %txd.1 = getelementptr %struct.ef4_channel, ptr %call7.i, i32 0, i32 32, i32 1, i32 6
  %17 = call ptr @memset(ptr %txd.1, i32 0, i32 20)
  %channel4.2 = getelementptr %struct.ef4_channel, ptr %call7.i, i32 0, i32 32, i32 2, i32 2
  %18 = ptrtoint ptr %channel4.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %channel4.2, align 8
  %tobool5.not.2 = icmp eq ptr %19, null
  br i1 %tobool5.not.2, label %if.end8.1.if.end8.2_crit_edge, label %if.then6.2

if.end8.1.if.end8.2_crit_edge:                    ; preds = %if.end8.1
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end8.2

if.then6.2:                                       ; preds = %if.end8.1
  call void @__sanitizer_cov_trace_pc() #24
  %20 = ptrtoint ptr %channel4.2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i, ptr %channel4.2, align 8
  br label %if.end8.2

if.end8.2:                                        ; preds = %if.then6.2, %if.end8.1.if.end8.2_crit_edge
  %buffer.2 = getelementptr %struct.ef4_channel, ptr %call7.i, i32 0, i32 32, i32 2, i32 4
  %21 = ptrtoint ptr %buffer.2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %buffer.2, align 16
  %txd.2 = getelementptr %struct.ef4_channel, ptr %call7.i, i32 0, i32 32, i32 2, i32 6
  %22 = call ptr @memset(ptr %txd.2, i32 0, i32 20)
  %channel4.3 = getelementptr %struct.ef4_channel, ptr %call7.i, i32 0, i32 32, i32 3, i32 2
  %23 = ptrtoint ptr %channel4.3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %channel4.3, align 8
  %tobool5.not.3 = icmp eq ptr %24, null
  br i1 %tobool5.not.3, label %if.end8.2.if.end8.3_crit_edge, label %if.then6.3

if.end8.2.if.end8.3_crit_edge:                    ; preds = %if.end8.2
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end8.3

if.then6.3:                                       ; preds = %if.end8.2
  call void @__sanitizer_cov_trace_pc() #24
  %25 = ptrtoint ptr %channel4.3 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call7.i, ptr %channel4.3, align 8
  br label %if.end8.3

if.end8.3:                                        ; preds = %if.then6.3, %if.end8.2.if.end8.3_crit_edge
  %buffer.3 = getelementptr %struct.ef4_channel, ptr %call7.i, i32 0, i32 32, i32 3, i32 4
  %26 = ptrtoint ptr %buffer.3 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %buffer.3, align 16
  %txd.3 = getelementptr %struct.ef4_channel, ptr %call7.i, i32 0, i32 32, i32 3, i32 6
  %27 = call ptr @memset(ptr %txd.3, i32 0, i32 20)
  %buffer10 = getelementptr inbounds %struct.ef4_channel, ptr %call7.i, i32 0, i32 30, i32 2
  %slow_fill = getelementptr inbounds %struct.ef4_channel, ptr %call7.i, i32 0, i32 30, i32 24
  %28 = call ptr @memset(ptr %buffer10, i32 0, i32 24)
  tail call void @init_timer_key(ptr noundef %slow_fill, ptr noundef nonnull @ef4_rx_slow_fill, i32 noundef 0, ptr noundef nonnull @.str.120, ptr noundef nonnull @ef4_copy_channel.__key) #22
  br label %cleanup

cleanup:                                          ; preds = %if.end8.3, %entry.cleanup_crit_edge
  ret ptr %call7.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_vpd_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_vpd_find_ro_info_keyword(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup_nul(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_region(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_region(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ef4_probe_all(ptr noundef %efx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ef4_probe_nic(ptr noundef %efx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %msg_enable.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %0 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable.i, align 8
  %and.i = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.end3, label %do.body

do.body:                                          ; preds = %entry
  br i1 %tobool.not.i, label %do.body.cleanup_crit_edge, label %if.then2

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #24
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %2 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.151) #25
  br label %cleanup

if.end3:                                          ; preds = %entry
  br i1 %tobool.not.i, label %if.end3.do.end8.i_crit_edge, label %do.body1.i

if.end3.do.end8.i_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end8.i

do.body1.i:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_probe_port.__UNIQUE_ID_ddebug554, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_probe_all, %if.then5.i)) #22
          to label %do.end8.i [label %if.then5.i], !srcloc !536

if.then5.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #24
  %net_dev.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %4 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net_dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_probe_port.__UNIQUE_ID_ddebug554, ptr noundef %5, ptr noundef nonnull @.str.166) #22
  br label %do.end8.i

do.end8.i:                                        ; preds = %if.then5.i, %do.body1.i, %if.end3.do.end8.i_crit_edge
  %6 = load i8, ptr @phy_flash_cfg, align 1, !range !538
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool9.not.i = icmp eq i8 %6, 0
  br i1 %tobool9.not.i, label %do.end8.i.if.end11.i_crit_edge, label %if.then10.i

do.end8.i.if.end11.i_crit_edge:                   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end11.i

if.then10.i:                                      ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #24
  %phy_mode.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 79
  %7 = ptrtoint ptr %phy_mode.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 8, ptr %phy_mode.i, align 16
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then10.i, %do.end8.i.if.end11.i_crit_edge
  %type.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 6
  %8 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %type.i, align 4
  %probe_port.i = getelementptr inbounds %struct.ef4_nic_type, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %probe_port.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %probe_port.i, align 4
  %call12.i = tail call i32 %11(ptr noundef %efx) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %do.end19, label %do.body7

do.body7:                                         ; preds = %if.end11.i
  %12 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %msg_enable.i, align 8
  %and9 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %do.body7.fail2_crit_edge, label %if.then11

do.body7.fail2_crit_edge:                         ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #24
  br label %fail2

if.then11:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #24
  %net_dev12 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %14 = ptrtoint ptr %net_dev12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %net_dev12, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %15, ptr noundef nonnull @.str.152) #25
  br label %fail2

do.end19:                                         ; preds = %if.end11.i
  %net_dev16.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %16 = ptrtoint ptr %net_dev16.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %net_dev16.i, align 4
  %perm_addr.i = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 54
  tail call void @dev_addr_mod(ptr noundef %17, i32 noundef 0, ptr noundef %perm_addr.i, i32 noundef 6) #22
  %call20 = tail call i32 @ef4_tx_max_skb_descs(ptr noundef %efx) #22
  %mul = shl i32 %call20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %mul)
  %cmp = icmp ugt i32 %mul, 1024
  br i1 %cmp, label %do.end32, label %if.end47, !prof !542

do.end32:                                         ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #24
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 1776, i32 noundef 9, ptr noundef null) #22
  br label %fail3

if.end47:                                         ; preds = %do.end19
  %txq_entries = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 27
  %18 = ptrtoint ptr %txq_entries to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1024, ptr %txq_entries, align 16
  %rxq_entries = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 26
  %19 = ptrtoint ptr %rxq_entries to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1024, ptr %rxq_entries, align 4
  %filter_lock.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 92
  tail call void @__raw_spin_lock_init(ptr noundef %filter_lock.i, ptr noundef nonnull @.str.167, ptr noundef nonnull @ef4_probe_filters.__key, i16 noundef signext 3) #22
  %filter_sem.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 91
  tail call void @__init_rwsem(ptr noundef %filter_sem.i, ptr noundef nonnull @.str.169, ptr noundef nonnull @ef4_probe_filters.__key.168) #22
  %mac_lock.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 64
  tail call void @mutex_lock_nested(ptr noundef %mac_lock.i, i32 noundef 0) #22
  tail call void @down_write(ptr noundef %filter_sem.i) #22
  %20 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %type.i, align 4
  %filter_table_probe.i = getelementptr inbounds %struct.ef4_nic_type, ptr %21, i32 0, i32 58
  %22 = ptrtoint ptr %filter_table_probe.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %filter_table_probe.i, align 8
  %call5.i = tail call i32 %23(ptr noundef %efx) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i86 = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i86, label %if.end.i, label %if.end47.ef4_probe_filters.exit_crit_edge

if.end47.ef4_probe_filters.exit_crit_edge:        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #24
  br label %ef4_probe_filters.exit

if.end.i:                                         ; preds = %if.end47
  %24 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %type.i, align 4
  %offload_features.i = getelementptr inbounds %struct.ef4_nic_type, ptr %25, i32 0, i32 94
  %26 = ptrtoint ptr %offload_features.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %offload_features.i, align 8
  %and.i87 = and i64 %27, 274877906944
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i87)
  %tobool7.not.i = icmp eq i64 %and.i87, 0
  br i1 %tobool7.not.i, label %if.end.i.ef4_probe_filters.exit_crit_edge, label %if.then8.i

if.end.i.ef4_probe_filters.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %ef4_probe_filters.exit

if.then8.i:                                       ; preds = %if.end.i
  %channel9.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 23
  %28 = ptrtoint ptr %channel9.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %channel9.i, align 4
  %tobool10.not99.i = icmp eq ptr %29, null
  br i1 %tobool10.not99.i, label %if.then8.i.if.end54.i_crit_edge, label %for.body.lr.ph.i

if.then8.i.if.end54.i_crit_edge:                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end54.i

for.body.lr.ph.i:                                 ; preds = %if.then8.i
  %n_channels.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 36
  br label %for.body.i

for.body.i:                                       ; preds = %cond.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %success.0102.i = phi i32 [ 1, %for.body.lr.ph.i ], [ %success.1.i, %cond.end.i.for.body.i_crit_edge ]
  %channel.0100.i = phi ptr [ %29, %for.body.lr.ph.i ], [ %55, %cond.end.i.for.body.i_crit_edge ]
  %30 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %type.i, align 4
  %max_rx_ip_filters.i = getelementptr inbounds %struct.ef4_nic_type, ptr %31, i32 0, i32 95
  %32 = ptrtoint ptr %max_rx_ip_filters.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %max_rx_ip_filters.i, align 8
  %34 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %33, i32 4) #22
  %35 = extractvalue { i32, i1 } %34, 1
  br i1 %35, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !542

kcalloc.exit.thread.i:                            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #24
  %rps_flow_id94.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.0100.i, i32 0, i32 17
  %36 = ptrtoint ptr %rps_flow_id94.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %rps_flow_id94.i, align 16
  br label %for.inc23.i

if.end7.i.i.i:                                    ; preds = %for.body.i
  %37 = extractvalue { i32, i1 } %34, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %37, i32 noundef 3520) #28
  %rps_flow_id.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.0100.i, i32 0, i32 17
  %38 = ptrtoint ptr %rps_flow_id.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call8.i.i.i, ptr %rps_flow_id.i, align 16
  %tobool14.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool14.not.i, label %if.end7.i.i.i.for.inc23.i_crit_edge, label %for.cond16.preheader.i

if.end7.i.i.i.for.inc23.i_crit_edge:              ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc23.i

for.cond16.preheader.i:                           ; preds = %if.end7.i.i.i
  %39 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %type.i, align 4
  %max_rx_ip_filters1896.i = getelementptr inbounds %struct.ef4_nic_type, ptr %40, i32 0, i32 95
  %41 = ptrtoint ptr %max_rx_ip_filters1896.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %max_rx_ip_filters1896.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp97.not.i = icmp eq i32 %42, 0
  br i1 %cmp97.not.i, label %for.cond16.preheader.i.for.inc23.i_crit_edge, label %for.cond16.preheader.i.for.body19.i_crit_edge

for.cond16.preheader.i.for.body19.i_crit_edge:    ; preds = %for.cond16.preheader.i
  br label %for.body19.i

for.cond16.preheader.i.for.inc23.i_crit_edge:     ; preds = %for.cond16.preheader.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc23.i

for.body19.i:                                     ; preds = %for.body19.i.for.body19.i_crit_edge, %for.cond16.preheader.i.for.body19.i_crit_edge
  %i.098.i = phi i32 [ %inc.i, %for.body19.i.for.body19.i_crit_edge ], [ 0, %for.cond16.preheader.i.for.body19.i_crit_edge ]
  %43 = ptrtoint ptr %rps_flow_id.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rps_flow_id.i, align 16
  %arrayidx21.i = getelementptr i32, ptr %44, i32 %i.098.i
  %45 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -1, ptr %arrayidx21.i, align 4
  %inc.i = add nuw i32 %i.098.i, 1
  %46 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %type.i, align 4
  %max_rx_ip_filters18.i = getelementptr inbounds %struct.ef4_nic_type, ptr %47, i32 0, i32 95
  %48 = ptrtoint ptr %max_rx_ip_filters18.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %max_rx_ip_filters18.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %49
  br i1 %cmp.i, label %for.body19.i.for.body19.i_crit_edge, label %for.body19.i.for.inc23.i_crit_edge

for.body19.i.for.inc23.i_crit_edge:               ; preds = %for.body19.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc23.i

for.body19.i.for.body19.i_crit_edge:              ; preds = %for.body19.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body19.i

for.inc23.i:                                      ; preds = %for.body19.i.for.inc23.i_crit_edge, %for.cond16.preheader.i.for.inc23.i_crit_edge, %if.end7.i.i.i.for.inc23.i_crit_edge, %kcalloc.exit.thread.i
  %success.1.i = phi i32 [ 0, %if.end7.i.i.i.for.inc23.i_crit_edge ], [ 0, %kcalloc.exit.thread.i ], [ %success.0102.i, %for.cond16.preheader.i.for.inc23.i_crit_edge ], [ %success.0102.i, %for.body19.i.for.inc23.i_crit_edge ]
  %channel24.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.0100.i, i32 0, i32 1
  %50 = ptrtoint ptr %channel24.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %channel24.i, align 4
  %add.i = add i32 %51, 1
  %52 = ptrtoint ptr %n_channels.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %n_channels.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %53)
  %cmp25.i = icmp ult i32 %add.i, %53
  br i1 %cmp25.i, label %cond.end.i, label %for.inc23.i.for.end30.i_crit_edge

for.inc23.i.for.end30.i_crit_edge:                ; preds = %for.inc23.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end30.i

cond.end.i:                                       ; preds = %for.inc23.i
  %arrayidx29.i = getelementptr %struct.ef4_nic, ptr %efx, i32 0, i32 23, i32 %add.i
  %54 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx29.i, align 4
  %tobool10.not.i = icmp eq ptr %55, null
  br i1 %tobool10.not.i, label %cond.end.i.for.end30.i_crit_edge, label %cond.end.i.for.body.i_crit_edge

cond.end.i.for.body.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body.i

cond.end.i.for.end30.i_crit_edge:                 ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end30.i

for.end30.i:                                      ; preds = %cond.end.i.for.end30.i_crit_edge, %for.inc23.i.for.end30.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %success.1.i)
  %tobool31.not.i = icmp eq i32 %success.1.i, 0
  br i1 %tobool31.not.i, label %if.then32.i, label %for.end30.i.if.end54.i_crit_edge

for.end30.i.if.end54.i_crit_edge:                 ; preds = %for.end30.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end54.i

if.then32.i:                                      ; preds = %for.end30.i
  %56 = ptrtoint ptr %channel9.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %channel9.i, align 4
  %tobool36.not103.i = icmp eq ptr %57, null
  br i1 %tobool36.not103.i, label %if.then32.i.for.end52.i_crit_edge, label %if.then32.i.for.body37.i_crit_edge

if.then32.i.for.body37.i_crit_edge:               ; preds = %if.then32.i
  br label %for.body37.i

if.then32.i.for.end52.i_crit_edge:                ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end52.i

for.body37.i:                                     ; preds = %cond.end50.i.for.body37.i_crit_edge, %if.then32.i.for.body37.i_crit_edge
  %channel.1104.i = phi ptr [ %65, %cond.end50.i.for.body37.i_crit_edge ], [ %57, %if.then32.i.for.body37.i_crit_edge ]
  %rps_flow_id38.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.1104.i, i32 0, i32 17
  %58 = ptrtoint ptr %rps_flow_id38.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %rps_flow_id38.i, align 16
  tail call void @kfree(ptr noundef %59) #22
  %channel40.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.1104.i, i32 0, i32 1
  %60 = ptrtoint ptr %channel40.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %channel40.i, align 4
  %add41.i = add i32 %61, 1
  %62 = ptrtoint ptr %n_channels.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %n_channels.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add41.i, i32 %63)
  %cmp43.i = icmp ult i32 %add41.i, %63
  br i1 %cmp43.i, label %cond.end50.i, label %for.body37.i.for.end52.i_crit_edge

for.body37.i.for.end52.i_crit_edge:               ; preds = %for.body37.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end52.i

cond.end50.i:                                     ; preds = %for.body37.i
  %arrayidx48.i = getelementptr %struct.ef4_nic, ptr %efx, i32 0, i32 23, i32 %add41.i
  %64 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx48.i, align 4
  %tobool36.not.i = icmp eq ptr %65, null
  br i1 %tobool36.not.i, label %cond.end50.i.for.end52.i_crit_edge, label %cond.end50.i.for.body37.i_crit_edge

cond.end50.i.for.body37.i_crit_edge:              ; preds = %cond.end50.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body37.i

cond.end50.i.for.end52.i_crit_edge:               ; preds = %cond.end50.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end52.i

for.end52.i:                                      ; preds = %cond.end50.i.for.end52.i_crit_edge, %for.body37.i.for.end52.i_crit_edge, %if.then32.i.for.end52.i_crit_edge
  %66 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %type.i, align 4
  %filter_table_remove.i = getelementptr inbounds %struct.ef4_nic_type, ptr %67, i32 0, i32 60
  %68 = ptrtoint ptr %filter_table_remove.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %filter_table_remove.i, align 8
  tail call void %69(ptr noundef %efx) #22
  br label %ef4_probe_filters.exit

if.end54.i:                                       ; preds = %for.end30.i.if.end54.i_crit_edge, %if.then8.i.if.end54.i_crit_edge
  %rps_expire_channel.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 94
  %70 = ptrtoint ptr %rps_expire_channel.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %rps_expire_channel.i, align 4
  %rps_expire_index.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 95
  %71 = ptrtoint ptr %rps_expire_index.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %rps_expire_index.i, align 8
  br label %ef4_probe_filters.exit

ef4_probe_filters.exit:                           ; preds = %if.end54.i, %for.end52.i, %if.end.i.ef4_probe_filters.exit_crit_edge, %if.end47.ef4_probe_filters.exit_crit_edge
  %rc.1.i = phi i32 [ %call5.i, %if.end47.ef4_probe_filters.exit_crit_edge ], [ 0, %if.end.i.ef4_probe_filters.exit_crit_edge ], [ 0, %if.end54.i ], [ -12, %for.end52.i ]
  tail call void @up_write(ptr noundef %filter_sem.i) #22
  tail call void @mutex_unlock(ptr noundef %mac_lock.i) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.1.i)
  %tobool49.not = icmp eq i32 %rc.1.i, 0
  br i1 %tobool49.not, label %if.end60, label %do.body51

do.body51:                                        ; preds = %ef4_probe_filters.exit
  %72 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %msg_enable.i, align 8
  %and53 = and i32 %73, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %do.body51.fail3_crit_edge, label %if.then55

do.body51.fail3_crit_edge:                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #24
  br label %fail3

if.then55:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #24
  %74 = ptrtoint ptr %net_dev16.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %net_dev16.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %75, ptr noundef nonnull @.str.153) #25
  br label %fail3

if.end60:                                         ; preds = %ef4_probe_filters.exit
  %next_buffer_table.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 33
  %76 = ptrtoint ptr %next_buffer_table.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %next_buffer_table.i, align 8
  %n_channels.i88 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 36
  %77 = ptrtoint ptr %n_channels.i88 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %n_channels.i88, align 4
  %sub.i = add i32 %78, -1
  %arrayidx.i = getelementptr %struct.ef4_nic, ptr %efx, i32 0, i32 23, i32 %sub.i
  %79 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not37.i = icmp eq ptr %80, null
  br i1 %tobool.not37.i, label %if.end60.for.end.i_crit_edge, label %if.end60.for.body.i89_crit_edge

if.end60.for.body.i89_crit_edge:                  ; preds = %if.end60
  br label %for.body.i89

if.end60.for.end.i_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end.i

for.body.i89:                                     ; preds = %cond.end.i94.for.body.i89_crit_edge, %if.end60.for.body.i89_crit_edge
  %channel.038.i = phi ptr [ %90, %cond.end.i94.for.body.i89_crit_edge ], [ %80, %if.end60.for.body.i89_crit_edge ]
  %call.i = tail call fastcc i32 @ef4_probe_channel(ptr noundef nonnull %channel.038.i) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %for.inc.i, label %do.body.i

do.body.i:                                        ; preds = %for.body.i89
  %81 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %msg_enable.i, align 8
  %and.i91 = and i32 %82, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i91)
  %tobool3.not.i = icmp eq i32 %and.i91, 0
  br i1 %tobool3.not.i, label %do.body.i.fail.i_crit_edge, label %if.then4.i

do.body.i.fail.i_crit_edge:                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %fail.i

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #24
  %83 = ptrtoint ptr %net_dev16.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %net_dev16.i, align 4
  %channel5.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.038.i, i32 0, i32 1
  %85 = ptrtoint ptr %channel5.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %channel5.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %84, ptr noundef nonnull @.str.170, i32 noundef %86) #25
  br label %fail.i

for.inc.i:                                        ; preds = %for.body.i89
  %channel7.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.038.i, i32 0, i32 1
  %87 = ptrtoint ptr %channel7.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %channel7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool8.not.i = icmp eq i32 %88, 0
  br i1 %tobool8.not.i, label %for.inc.i.for.end.i_crit_edge, label %cond.end.i94

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end.i

cond.end.i94:                                     ; preds = %for.inc.i
  %sub11.i = add i32 %88, -1
  %arrayidx12.i = getelementptr %struct.ef4_nic, ptr %efx, i32 0, i32 23, i32 %sub11.i
  %89 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx12.i, align 4
  %tobool.not.i93 = icmp eq ptr %90, null
  br i1 %tobool.not.i93, label %cond.end.i94.for.end.i_crit_edge, label %cond.end.i94.for.body.i89_crit_edge

cond.end.i94.for.body.i89_crit_edge:              ; preds = %cond.end.i94
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body.i89

cond.end.i94.for.end.i_crit_edge:                 ; preds = %cond.end.i94
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end.i

for.end.i:                                        ; preds = %cond.end.i94.for.end.i_crit_edge, %for.inc.i.for.end.i_crit_edge, %if.end60.for.end.i_crit_edge
  %channel1.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 23
  %91 = ptrtoint ptr %channel1.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %channel1.i.i, align 4
  %tobool.not17.i.i = icmp eq ptr %92, null
  br i1 %tobool.not17.i.i, label %for.end.i.cleanup_crit_edge, label %for.end.i.for.body.i.i_crit_edge

for.end.i.for.body.i.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body.i.i

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

for.body.i.i:                                     ; preds = %cond.end.i.i.for.body.i.i_crit_edge, %for.end.i.for.body.i.i_crit_edge
  %channel.018.i.i = phi ptr [ %104, %cond.end.i.i.for.body.i.i_crit_edge ], [ %92, %for.end.i.for.body.i.i_crit_edge ]
  %type.i.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.018.i.i, i32 0, i32 2
  %93 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %type.i.i, align 8
  %get_name.i.i = getelementptr inbounds %struct.ef4_channel_type, ptr %94, i32 0, i32 3
  %95 = ptrtoint ptr %get_name.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %get_name.i.i, align 4
  %channel2.i.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.018.i.i, i32 0, i32 1
  %97 = ptrtoint ptr %channel2.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %channel2.i.i, align 4
  %name.i.i = getelementptr %struct.ef4_nic, ptr %efx, i32 0, i32 24, i32 %98, i32 2
  tail call void %96(ptr noundef nonnull %channel.018.i.i, ptr noundef %name.i.i, i32 noundef 22) #22
  %99 = ptrtoint ptr %channel2.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %channel2.i.i, align 4
  %add.i.i = add i32 %100, 1
  %101 = ptrtoint ptr %n_channels.i88 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %n_channels.i88, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %102)
  %cmp.i.i = icmp ult i32 %add.i.i, %102
  br i1 %cmp.i.i, label %cond.end.i.i, label %for.body.i.i.cleanup_crit_edge

for.body.i.i.cleanup_crit_edge:                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

cond.end.i.i:                                     ; preds = %for.body.i.i
  %arrayidx8.i.i = getelementptr %struct.ef4_nic, ptr %efx, i32 0, i32 23, i32 %add.i.i
  %103 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %arrayidx8.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %104, null
  br i1 %tobool.not.i.i, label %cond.end.i.i.cleanup_crit_edge, label %cond.end.i.i.for.body.i.i_crit_edge

cond.end.i.i.for.body.i.i_crit_edge:              ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body.i.i

cond.end.i.i.cleanup_crit_edge:                   ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

fail.i:                                           ; preds = %if.then4.i, %do.body.i.fail.i_crit_edge
  %channel1.i26.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 23
  %105 = ptrtoint ptr %channel1.i26.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %channel1.i26.i, align 4
  %tobool.not12.i.i = icmp eq ptr %106, null
  br i1 %tobool.not12.i.i, label %fail.i.ef4_remove_filters.exit_crit_edge, label %fail.i.for.body.i32.i_crit_edge

fail.i.for.body.i32.i_crit_edge:                  ; preds = %fail.i
  br label %for.body.i32.i

fail.i.ef4_remove_filters.exit_crit_edge:         ; preds = %fail.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %ef4_remove_filters.exit

for.body.i32.i:                                   ; preds = %cond.end.i34.i.for.body.i32.i_crit_edge, %fail.i.for.body.i32.i_crit_edge
  %channel.013.i.i = phi ptr [ %112, %cond.end.i34.i.for.body.i32.i_crit_edge ], [ %106, %fail.i.for.body.i32.i_crit_edge ]
  tail call fastcc void @ef4_remove_channel(ptr noundef nonnull %channel.013.i.i) #22
  %channel2.i29.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.013.i.i, i32 0, i32 1
  %107 = ptrtoint ptr %channel2.i29.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %channel2.i29.i, align 4
  %add.i30.i = add i32 %108, 1
  %109 = ptrtoint ptr %n_channels.i88 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %n_channels.i88, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i30.i, i32 %110)
  %cmp.i31.i = icmp ult i32 %add.i30.i, %110
  br i1 %cmp.i31.i, label %cond.end.i34.i, label %for.body.i32.i.fail5_crit_edge

for.body.i32.i.fail5_crit_edge:                   ; preds = %for.body.i32.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %fail5

cond.end.i34.i:                                   ; preds = %for.body.i32.i
  %arrayidx6.i.i = getelementptr %struct.ef4_nic, ptr %efx, i32 0, i32 23, i32 %add.i30.i
  %111 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %arrayidx6.i.i, align 4
  %tobool.not.i33.i = icmp eq ptr %112, null
  br i1 %tobool.not.i33.i, label %cond.end.i34.i.fail5_crit_edge, label %cond.end.i34.i.for.body.i32.i_crit_edge

cond.end.i34.i.for.body.i32.i_crit_edge:          ; preds = %cond.end.i34.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body.i32.i

cond.end.i34.i.fail5_crit_edge:                   ; preds = %cond.end.i34.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %fail5

fail5:                                            ; preds = %cond.end.i34.i.fail5_crit_edge, %for.body.i32.i.fail5_crit_edge
  %113 = ptrtoint ptr %channel1.i26.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %.pr = load ptr, ptr %channel1.i26.i, align 4
  %tobool.not17.i = icmp eq ptr %.pr, null
  br i1 %tobool.not17.i, label %fail5.ef4_remove_filters.exit_crit_edge, label %fail5.for.body.i100_crit_edge

fail5.for.body.i100_crit_edge:                    ; preds = %fail5
  br label %for.body.i100

fail5.ef4_remove_filters.exit_crit_edge:          ; preds = %fail5
  call void @__sanitizer_cov_trace_pc() #24
  br label %ef4_remove_filters.exit

for.body.i100:                                    ; preds = %cond.end.i102.for.body.i100_crit_edge, %fail5.for.body.i100_crit_edge
  %channel.018.i = phi ptr [ %121, %cond.end.i102.for.body.i100_crit_edge ], [ %.pr, %fail5.for.body.i100_crit_edge ]
  %rps_flow_id.i97 = getelementptr inbounds %struct.ef4_channel, ptr %channel.018.i, i32 0, i32 17
  %114 = ptrtoint ptr %rps_flow_id.i97 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %rps_flow_id.i97, align 16
  tail call void @kfree(ptr noundef %115) #22
  %channel2.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.018.i, i32 0, i32 1
  %116 = ptrtoint ptr %channel2.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %channel2.i, align 4
  %add.i98 = add i32 %117, 1
  %118 = ptrtoint ptr %n_channels.i88 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %n_channels.i88, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i98, i32 %119)
  %cmp.i99 = icmp ult i32 %add.i98, %119
  br i1 %cmp.i99, label %cond.end.i102, label %for.body.i100.ef4_remove_filters.exit_crit_edge

for.body.i100.ef4_remove_filters.exit_crit_edge:  ; preds = %for.body.i100
  call void @__sanitizer_cov_trace_pc() #24
  br label %ef4_remove_filters.exit

cond.end.i102:                                    ; preds = %for.body.i100
  %arrayidx6.i = getelementptr %struct.ef4_nic, ptr %efx, i32 0, i32 23, i32 %add.i98
  %120 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %arrayidx6.i, align 4
  %tobool.not.i101 = icmp eq ptr %121, null
  br i1 %tobool.not.i101, label %cond.end.i102.ef4_remove_filters.exit_crit_edge, label %cond.end.i102.for.body.i100_crit_edge

cond.end.i102.for.body.i100_crit_edge:            ; preds = %cond.end.i102
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body.i100

cond.end.i102.ef4_remove_filters.exit_crit_edge:  ; preds = %cond.end.i102
  call void @__sanitizer_cov_trace_pc() #24
  br label %ef4_remove_filters.exit

ef4_remove_filters.exit:                          ; preds = %cond.end.i102.ef4_remove_filters.exit_crit_edge, %for.body.i100.ef4_remove_filters.exit_crit_edge, %fail5.ef4_remove_filters.exit_crit_edge, %fail.i.ef4_remove_filters.exit_crit_edge
  tail call void @down_write(ptr noundef %filter_sem.i) #22
  %122 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %type.i, align 4
  %filter_table_remove.i105 = getelementptr inbounds %struct.ef4_nic_type, ptr %123, i32 0, i32 60
  %124 = ptrtoint ptr %filter_table_remove.i105 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %filter_table_remove.i105, align 8
  tail call void %125(ptr noundef %efx) #22
  tail call void @up_write(ptr noundef %filter_sem.i) #22
  br label %fail3

fail3:                                            ; preds = %ef4_remove_filters.exit, %if.then55, %do.body51.fail3_crit_edge, %do.end32
  %rc.0 = phi i32 [ -22, %do.end32 ], [ %rc.1.i, %if.then55 ], [ %rc.1.i, %do.body51.fail3_crit_edge ], [ %call.i, %ef4_remove_filters.exit ]
  %126 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %msg_enable.i, align 8
  %and.i108 = and i32 %127, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i108)
  %tobool.not.i109 = icmp eq i32 %and.i108, 0
  br i1 %tobool.not.i109, label %fail3.ef4_remove_port.exit_crit_edge, label %do.body1.i110

fail3.ef4_remove_port.exit_crit_edge:             ; preds = %fail3
  call void @__sanitizer_cov_trace_pc() #24
  br label %ef4_remove_port.exit

do.body1.i110:                                    ; preds = %fail3
  call void @__sanitizer_cov_trace_pc() #24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_remove_port.__UNIQUE_ID_ddebug559, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_probe_all, %if.then5.i112)) #22
          to label %ef4_remove_port.exit [label %if.then5.i112], !srcloc !536

if.then5.i112:                                    ; preds = %do.body1.i110
  call void @__sanitizer_cov_trace_pc() #24
  %128 = ptrtoint ptr %net_dev16.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %net_dev16.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_remove_port.__UNIQUE_ID_ddebug559, ptr noundef %129, ptr noundef nonnull @.str.172) #22
  br label %ef4_remove_port.exit

ef4_remove_port.exit:                             ; preds = %if.then5.i112, %do.body1.i110, %fail3.ef4_remove_port.exit_crit_edge
  %130 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %type.i, align 4
  %remove_port.i = getelementptr inbounds %struct.ef4_nic_type, ptr %131, i32 0, i32 12
  %132 = ptrtoint ptr %remove_port.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %remove_port.i, align 8
  tail call void %133(ptr noundef %efx) #22
  br label %fail2

fail2:                                            ; preds = %ef4_remove_port.exit, %if.then11, %do.body7.fail2_crit_edge
  %rc.1 = phi i32 [ %call12.i, %if.then11 ], [ %call12.i, %do.body7.fail2_crit_edge ], [ %rc.0, %ef4_remove_port.exit ]
  %134 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %msg_enable.i, align 8
  %and.i115 = and i32 %135, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i115)
  %tobool.not.i116 = icmp eq i32 %and.i115, 0
  br i1 %tobool.not.i116, label %fail2.do.end7.i_crit_edge, label %do.body1.i117

fail2.do.end7.i_crit_edge:                        ; preds = %fail2
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end7.i

do.body1.i117:                                    ; preds = %fail2
  call void @__sanitizer_cov_trace_pc() #24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_remove_nic.__UNIQUE_ID_ddebug581, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_probe_all, %if.then5.i119)) #22
          to label %do.end7.i [label %if.then5.i119], !srcloc !536

if.then5.i119:                                    ; preds = %do.body1.i117
  call void @__sanitizer_cov_trace_pc() #24
  %net_dev.i118 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %136 = ptrtoint ptr %net_dev.i118 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %net_dev.i118, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_remove_nic.__UNIQUE_ID_ddebug581, ptr noundef %137, ptr noundef nonnull @.str.174) #22
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then5.i119, %do.body1.i117, %fail2.do.end7.i_crit_edge
  %channel1.i.i120 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 23
  %138 = ptrtoint ptr %channel1.i.i120 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %channel1.i.i120, align 4
  %tobool.not16.i.i = icmp eq ptr %139, null
  br i1 %tobool.not16.i.i, label %do.end7.i.ef4_remove_nic.exit_crit_edge, label %for.body.lr.ph.i.i

do.end7.i.ef4_remove_nic.exit_crit_edge:          ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %ef4_remove_nic.exit

for.body.lr.ph.i.i:                               ; preds = %do.end7.i
  %n_channels.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 36
  br label %for.body.i.i124

for.body.i.i124:                                  ; preds = %cond.end.i.i127.for.body.i.i124_crit_edge, %for.body.lr.ph.i.i
  %channel.017.i.i = phi ptr [ %139, %for.body.lr.ph.i.i ], [ %146, %cond.end.i.i127.for.body.i.i124_crit_edge ]
  %irq.i.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.017.i.i, i32 0, i32 5
  %140 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 0, ptr %irq.i.i, align 16
  %channel2.i.i121 = getelementptr inbounds %struct.ef4_channel, ptr %channel.017.i.i, i32 0, i32 1
  %141 = ptrtoint ptr %channel2.i.i121 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %channel2.i.i121, align 4
  %add.i.i122 = add i32 %142, 1
  %143 = ptrtoint ptr %n_channels.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %n_channels.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i122, i32 %144)
  %cmp.i.i123 = icmp ult i32 %add.i.i122, %144
  br i1 %cmp.i.i123, label %cond.end.i.i127, label %for.body.i.i124.ef4_remove_nic.exit_crit_edge

for.body.i.i124.ef4_remove_nic.exit_crit_edge:    ; preds = %for.body.i.i124
  call void @__sanitizer_cov_trace_pc() #24
  br label %ef4_remove_nic.exit

cond.end.i.i127:                                  ; preds = %for.body.i.i124
  %arrayidx6.i.i125 = getelementptr %struct.ef4_nic, ptr %efx, i32 0, i32 23, i32 %add.i.i122
  %145 = ptrtoint ptr %arrayidx6.i.i125 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %arrayidx6.i.i125, align 4
  %tobool.not.i.i126 = icmp eq ptr %146, null
  br i1 %tobool.not.i.i126, label %cond.end.i.i127.ef4_remove_nic.exit_crit_edge, label %cond.end.i.i127.for.body.i.i124_crit_edge

cond.end.i.i127.for.body.i.i124_crit_edge:        ; preds = %cond.end.i.i127
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body.i.i124

cond.end.i.i127.ef4_remove_nic.exit_crit_edge:    ; preds = %cond.end.i.i127
  call void @__sanitizer_cov_trace_pc() #24
  br label %ef4_remove_nic.exit

ef4_remove_nic.exit:                              ; preds = %cond.end.i.i127.ef4_remove_nic.exit_crit_edge, %for.body.i.i124.ef4_remove_nic.exit_crit_edge, %do.end7.i.ef4_remove_nic.exit_crit_edge
  %pci_dev.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 4
  %147 = ptrtoint ptr %pci_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %pci_dev.i.i, align 4
  tail call void @pci_disable_msi(ptr noundef %148) #22
  %149 = ptrtoint ptr %pci_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %pci_dev.i.i, align 4
  tail call void @pci_disable_msix(ptr noundef %150) #22
  %legacy_irq.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 7
  %151 = ptrtoint ptr %legacy_irq.i.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 0, ptr %legacy_irq.i.i, align 16
  %152 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %type.i, align 4
  %remove.i = getelementptr inbounds %struct.ef4_nic_type, ptr %153, i32 0, i32 3
  %154 = ptrtoint ptr %remove.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %remove.i, align 4
  tail call void %155(ptr noundef %efx) #22
  br label %cleanup

cleanup:                                          ; preds = %ef4_remove_nic.exit, %cond.end.i.i.cleanup_crit_edge, %for.body.i.i.cleanup_crit_edge, %for.end.i.cleanup_crit_edge, %if.then2, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then2 ], [ %call, %do.body.cleanup_crit_edge ], [ %rc.1, %ef4_remove_nic.exit ], [ 0, %for.end.i.cleanup_crit_edge ], [ 0, %for.body.i.i.cleanup_crit_edge ], [ 0, %cond.end.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ef4_init_port(ptr noundef %efx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.body1

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end8

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_init_port.__UNIQUE_ID_ddebug555, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_init_port, %if.then5)) #22
          to label %do.end8 [label %if.then5], !srcloc !536

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #24
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %2 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_init_port.__UNIQUE_ID_ddebug555, ptr noundef %3, ptr noundef nonnull @.str.176) #22
  br label %do.end8

do.end8:                                          ; preds = %if.then5, %do.body1, %entry.do.end8_crit_edge
  %mac_lock = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 64
  tail call void @mutex_lock_nested(ptr noundef %mac_lock, i32 noundef 0) #22
  %phy_op = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 76
  %4 = ptrtoint ptr %phy_op to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy_op, align 16
  %init = getelementptr inbounds %struct.ef4_phy_operations, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init, align 4
  %call9 = tail call i32 %7(ptr noundef %efx) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %do.end8.cleanup_crit_edge

do.end8.cleanup_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end12:                                         ; preds = %do.end8
  %port_initialized = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 68
  %8 = ptrtoint ptr %port_initialized to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %port_initialized, align 2
  %filter_sem.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 91
  tail call void @down_read(ptr noundef %filter_sem.i) #22
  %type.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 6
  %9 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %type.i, align 4
  %reconfigure_mac.i = getelementptr inbounds %struct.ef4_nic_type, ptr %10, i32 0, i32 28
  %11 = ptrtoint ptr %reconfigure_mac.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reconfigure_mac.i, align 8
  %call.i = tail call i32 %12(ptr noundef %efx) #22
  tail call void @up_read(ptr noundef %filter_sem.i) #22
  %13 = ptrtoint ptr %phy_op to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %phy_op, align 16
  %reconfigure = getelementptr inbounds %struct.ef4_phy_operations, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %reconfigure to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reconfigure, align 4
  %call14 = tail call i32 %16(ptr noundef %efx) #22
  %17 = zext i32 %call14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.210)
  switch i32 %call14, label %fail2 [
    i32 0, label %if.end12.cleanup_crit_edge
    i32 -1, label %if.end12.cleanup_crit_edge37
  ]

if.end12.cleanup_crit_edge37:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

fail2:                                            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #24
  %18 = ptrtoint ptr %phy_op to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %phy_op, align 16
  %fini = getelementptr inbounds %struct.ef4_phy_operations, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %fini to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fini, align 4
  tail call void %21(ptr noundef %efx) #22
  br label %cleanup

cleanup:                                          ; preds = %fail2, %if.end12.cleanup_crit_edge, %if.end12.cleanup_crit_edge37, %do.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge37 ], [ %call9, %do.end8.cleanup_crit_edge ], [ %call14, %fail2 ]
  tail call void @mutex_unlock(ptr noundef %mac_lock) #22
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ef4_nic_init_interrupt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef4_nic_fini_interrupt(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ef4_remove_all(ptr noundef %efx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %channel1.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 23
  %0 = ptrtoint ptr %channel1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel1.i, align 4
  %tobool.not12.i = icmp eq ptr %1, null
  br i1 %tobool.not12.i, label %entry.ef4_remove_filters.exit_crit_edge, label %for.body.lr.ph.i

entry.ef4_remove_filters.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %ef4_remove_filters.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %n_channels.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 36
  br label %for.body.i

for.body.i:                                       ; preds = %cond.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %channel.013.i = phi ptr [ %1, %for.body.lr.ph.i ], [ %7, %cond.end.i.for.body.i_crit_edge ]
  tail call fastcc void @ef4_remove_channel(ptr noundef nonnull %channel.013.i) #22
  %channel2.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.013.i, i32 0, i32 1
  %2 = ptrtoint ptr %channel2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel2.i, align 4
  %add.i = add i32 %3, 1
  %4 = ptrtoint ptr %n_channels.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_channels.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %5)
  %cmp.i = icmp ult i32 %add.i, %5
  br i1 %cmp.i, label %cond.end.i, label %for.body.i.ef4_remove_channels.exit_crit_edge

for.body.i.ef4_remove_channels.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %ef4_remove_channels.exit

cond.end.i:                                       ; preds = %for.body.i
  %arrayidx6.i = getelementptr %struct.ef4_nic, ptr %efx, i32 0, i32 23, i32 %add.i
  %6 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx6.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %cond.end.i.ef4_remove_channels.exit_crit_edge, label %cond.end.i.for.body.i_crit_edge

cond.end.i.for.body.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body.i

cond.end.i.ef4_remove_channels.exit_crit_edge:    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %ef4_remove_channels.exit

ef4_remove_channels.exit:                         ; preds = %cond.end.i.ef4_remove_channels.exit_crit_edge, %for.body.i.ef4_remove_channels.exit_crit_edge
  %8 = ptrtoint ptr %channel1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr = load ptr, ptr %channel1.i, align 4
  %tobool.not17.i = icmp eq ptr %.pr, null
  br i1 %tobool.not17.i, label %ef4_remove_channels.exit.ef4_remove_filters.exit_crit_edge, label %ef4_remove_channels.exit.for.body.i10_crit_edge

ef4_remove_channels.exit.for.body.i10_crit_edge:  ; preds = %ef4_remove_channels.exit
  br label %for.body.i10

ef4_remove_channels.exit.ef4_remove_filters.exit_crit_edge: ; preds = %ef4_remove_channels.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %ef4_remove_filters.exit

for.body.i10:                                     ; preds = %cond.end.i13.for.body.i10_crit_edge, %ef4_remove_channels.exit.for.body.i10_crit_edge
  %channel.018.i = phi ptr [ %16, %cond.end.i13.for.body.i10_crit_edge ], [ %.pr, %ef4_remove_channels.exit.for.body.i10_crit_edge ]
  %rps_flow_id.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.018.i, i32 0, i32 17
  %9 = ptrtoint ptr %rps_flow_id.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rps_flow_id.i, align 16
  tail call void @kfree(ptr noundef %10) #22
  %channel2.i7 = getelementptr inbounds %struct.ef4_channel, ptr %channel.018.i, i32 0, i32 1
  %11 = ptrtoint ptr %channel2.i7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %channel2.i7, align 4
  %add.i8 = add i32 %12, 1
  %13 = ptrtoint ptr %n_channels.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %n_channels.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i8, i32 %14)
  %cmp.i9 = icmp ult i32 %add.i8, %14
  br i1 %cmp.i9, label %cond.end.i13, label %for.body.i10.ef4_remove_filters.exit_crit_edge

for.body.i10.ef4_remove_filters.exit_crit_edge:   ; preds = %for.body.i10
  call void @__sanitizer_cov_trace_pc() #24
  br label %ef4_remove_filters.exit

cond.end.i13:                                     ; preds = %for.body.i10
  %arrayidx6.i11 = getelementptr %struct.ef4_nic, ptr %efx, i32 0, i32 23, i32 %add.i8
  %15 = ptrtoint ptr %arrayidx6.i11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx6.i11, align 4
  %tobool.not.i12 = icmp eq ptr %16, null
  br i1 %tobool.not.i12, label %cond.end.i13.ef4_remove_filters.exit_crit_edge, label %cond.end.i13.for.body.i10_crit_edge

cond.end.i13.for.body.i10_crit_edge:              ; preds = %cond.end.i13
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body.i10

cond.end.i13.ef4_remove_filters.exit_crit_edge:   ; preds = %cond.end.i13
  call void @__sanitizer_cov_trace_pc() #24
  br label %ef4_remove_filters.exit

ef4_remove_filters.exit:                          ; preds = %cond.end.i13.ef4_remove_filters.exit_crit_edge, %for.body.i10.ef4_remove_filters.exit_crit_edge, %ef4_remove_channels.exit.ef4_remove_filters.exit_crit_edge, %entry.ef4_remove_filters.exit_crit_edge
  %filter_sem.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 91
  tail call void @down_write(ptr noundef %filter_sem.i) #22
  %type.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 6
  %17 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %type.i, align 4
  %filter_table_remove.i = getelementptr inbounds %struct.ef4_nic_type, ptr %18, i32 0, i32 60
  %19 = ptrtoint ptr %filter_table_remove.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %filter_table_remove.i, align 8
  tail call void %20(ptr noundef %efx) #22
  tail call void @up_write(ptr noundef %filter_sem.i) #22
  %msg_enable.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %21 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %msg_enable.i, align 8
  %and.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i14 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i14, label %ef4_remove_filters.exit.ef4_remove_port.exit_crit_edge, label %do.body1.i

ef4_remove_filters.exit.ef4_remove_port.exit_crit_edge: ; preds = %ef4_remove_filters.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %ef4_remove_port.exit

do.body1.i:                                       ; preds = %ef4_remove_filters.exit
  call void @__sanitizer_cov_trace_pc() #24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_remove_port.__UNIQUE_ID_ddebug559, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_remove_all, %if.then5.i)) #22
          to label %ef4_remove_port.exit [label %if.then5.i], !srcloc !536

if.then5.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #24
  %net_dev.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %23 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %net_dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_remove_port.__UNIQUE_ID_ddebug559, ptr noundef %24, ptr noundef nonnull @.str.172) #22
  br label %ef4_remove_port.exit

ef4_remove_port.exit:                             ; preds = %if.then5.i, %do.body1.i, %ef4_remove_filters.exit.ef4_remove_port.exit_crit_edge
  %25 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %type.i, align 4
  %remove_port.i = getelementptr inbounds %struct.ef4_nic_type, ptr %26, i32 0, i32 12
  %27 = ptrtoint ptr %remove_port.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %remove_port.i, align 8
  tail call void %28(ptr noundef %efx) #22
  %29 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %msg_enable.i, align 8
  %and.i17 = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i17)
  %tobool.not.i18 = icmp eq i32 %and.i17, 0
  br i1 %tobool.not.i18, label %ef4_remove_port.exit.do.end7.i_crit_edge, label %do.body1.i19

ef4_remove_port.exit.do.end7.i_crit_edge:         ; preds = %ef4_remove_port.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end7.i

do.body1.i19:                                     ; preds = %ef4_remove_port.exit
  call void @__sanitizer_cov_trace_pc() #24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_remove_nic.__UNIQUE_ID_ddebug581, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_remove_all, %if.then5.i21)) #22
          to label %do.end7.i [label %if.then5.i21], !srcloc !536

if.then5.i21:                                     ; preds = %do.body1.i19
  call void @__sanitizer_cov_trace_pc() #24
  %net_dev.i20 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %31 = ptrtoint ptr %net_dev.i20 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %net_dev.i20, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_remove_nic.__UNIQUE_ID_ddebug581, ptr noundef %32, ptr noundef nonnull @.str.174) #22
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then5.i21, %do.body1.i19, %ef4_remove_port.exit.do.end7.i_crit_edge
  %33 = ptrtoint ptr %channel1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %channel1.i, align 4
  %tobool.not16.i.i = icmp eq ptr %34, null
  br i1 %tobool.not16.i.i, label %do.end7.i.ef4_remove_nic.exit_crit_edge, label %for.body.lr.ph.i.i

do.end7.i.ef4_remove_nic.exit_crit_edge:          ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %ef4_remove_nic.exit

for.body.lr.ph.i.i:                               ; preds = %do.end7.i
  %n_channels.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 36
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %cond.end.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %channel.017.i.i = phi ptr [ %34, %for.body.lr.ph.i.i ], [ %41, %cond.end.i.i.for.body.i.i_crit_edge ]
  %irq.i.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.017.i.i, i32 0, i32 5
  %35 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %irq.i.i, align 16
  %channel2.i.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.017.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %channel2.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %channel2.i.i, align 4
  %add.i.i = add i32 %37, 1
  %38 = ptrtoint ptr %n_channels.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %n_channels.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %39)
  %cmp.i.i = icmp ult i32 %add.i.i, %39
  br i1 %cmp.i.i, label %cond.end.i.i, label %for.body.i.i.ef4_remove_nic.exit_crit_edge

for.body.i.i.ef4_remove_nic.exit_crit_edge:       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %ef4_remove_nic.exit

cond.end.i.i:                                     ; preds = %for.body.i.i
  %arrayidx6.i.i = getelementptr %struct.ef4_nic, ptr %efx, i32 0, i32 23, i32 %add.i.i
  %40 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx6.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %41, null
  br i1 %tobool.not.i.i, label %cond.end.i.i.ef4_remove_nic.exit_crit_edge, label %cond.end.i.i.for.body.i.i_crit_edge

cond.end.i.i.for.body.i.i_crit_edge:              ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body.i.i

cond.end.i.i.ef4_remove_nic.exit_crit_edge:       ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %ef4_remove_nic.exit

ef4_remove_nic.exit:                              ; preds = %cond.end.i.i.ef4_remove_nic.exit_crit_edge, %for.body.i.i.ef4_remove_nic.exit_crit_edge, %do.end7.i.ef4_remove_nic.exit_crit_edge
  %pci_dev.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 4
  %42 = ptrtoint ptr %pci_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pci_dev.i.i, align 4
  tail call void @pci_disable_msi(ptr noundef %43) #22
  %44 = ptrtoint ptr %pci_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pci_dev.i.i, align 4
  tail call void @pci_disable_msix(ptr noundef %45) #22
  %legacy_irq.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 7
  %46 = ptrtoint ptr %legacy_irq.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %legacy_irq.i.i, align 16
  %47 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %type.i, align 4
  %remove.i = getelementptr inbounds %struct.ef4_nic_type, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %remove.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %remove.i, align 4
  tail call void %50(ptr noundef %efx) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ef4_probe_nic(ptr noundef %efx) unnamed_addr #0 align 64 {
entry:
  %xentries.i = alloca [32 x %struct.msix_entry], align 4
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.body1

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end8

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_probe_nic.__UNIQUE_ID_ddebug580, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_probe_nic, %if.then5)) #22
          to label %do.end8 [label %if.then5], !srcloc !536

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #24
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %2 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_probe_nic.__UNIQUE_ID_ddebug580, ptr noundef %3, ptr noundef nonnull @.str.155) #22
  br label %do.end8

do.end8:                                          ; preds = %if.then5, %do.body1, %entry.do.end8_crit_edge
  %type = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 6
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %type, align 4
  %probe = getelementptr inbounds %struct.ef4_nic_type, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %probe to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %probe, align 8
  %call9 = tail call i32 %7(ptr noundef %efx) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %do.body13.preheader, label %do.end8.cleanup_crit_edge

do.end8.cleanup_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

do.body13.preheader:                              ; preds = %do.end8
  %max_channels = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 34
  %8 = ptrtoint ptr %max_channels to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool14.not124 = icmp eq i32 %9, 0
  br i1 %tobool14.not124, label %do.body13.preheader.do.body17_crit_edge, label %lor.lhs.false.lr.ph

do.body13.preheader.do.body17_crit_edge:          ; preds = %do.body13.preheader
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body17

lor.lhs.false.lr.ph:                              ; preds = %do.body13.preheader
  %max_tx_channels = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 35
  %arrayidx.i = getelementptr %struct.ef4_nic, ptr %efx, i32 0, i32 25, i32 0
  %arrayidx.1.i = getelementptr %struct.ef4_nic, ptr %efx, i32 0, i32 25, i32 1
  %interrupt_mode.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 14
  %pci_dev.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 4
  %net_dev32.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %n_channels50.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 36
  %10 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 40
  %11 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 37
  %arrayidx.i4.i = getelementptr %struct.ef4_nic, ptr %efx, i32 0, i32 23, i32 0
  %legacy_irq.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 7
  %rss_spread.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 38
  %tx_channel_offset.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 39
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %ef4_remove_interrupts.exit.lor.lhs.false_crit_edge, %lor.lhs.false.lr.ph
  %12 = ptrtoint ptr %max_tx_channels to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_tx_channels, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool15.not = icmp eq i32 %13, 0
  br i1 %tobool15.not, label %lor.lhs.false.do.body17_crit_edge, label %if.end26

lor.lhs.false.do.body17_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body17

do.body17:                                        ; preds = %ef4_remove_interrupts.exit.do.body17_crit_edge, %lor.lhs.false.do.body17_crit_edge, %do.body13.preheader.do.body17_crit_edge
  %14 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %msg_enable, align 8
  %and19 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %do.body17.fail1_crit_edge, label %if.then21

do.body17.fail1_crit_edge:                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #24
  br label %fail1

if.then21:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #24
  %net_dev22 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %16 = ptrtoint ptr %net_dev22 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %net_dev22, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %17, ptr noundef nonnull @.str.156) #25
  br label %fail1

if.end26:                                         ; preds = %lor.lhs.false
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp ne ptr %19, null
  %inc.i = zext i1 %tobool.not.i to i32
  %20 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool.not.1.i = icmp ne ptr %21, null
  %inc.1.i = zext i1 %tobool.not.1.i to i32
  %spec.select.1.i = add nuw nsw i32 %inc.1.i, %inc.i
  %22 = ptrtoint ptr %interrupt_mode.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %interrupt_mode.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp2.i = icmp eq i32 %23, 0
  br i1 %cmp2.i, label %if.then3.i, label %if.end26.if.end103.i_crit_edge

if.end26.if.end103.i_crit_edge:                   ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end103.i

if.then3.i:                                       ; preds = %if.end26
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %xentries.i) #22
  %24 = call ptr @memset(ptr %xentries.i, i32 255, i32 256)
  %call.i = call fastcc i32 @ef4_wanted_parallelism(ptr noundef %efx) #22
  %25 = load i8, ptr @ef4_separate_tx_channels, align 1, !range !538
  %26 = zext i8 %25 to i32
  %spec.select2.i = shl i32 %call.i, %26
  %add.i = add i32 %spec.select2.i, %spec.select.1.i
  %27 = ptrtoint ptr %max_channels to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %max_channels, align 4
  %29 = call i32 @llvm.umin.i32(i32 %add.i, i32 %28) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp912.not.i = icmp eq i32 %29, 0
  br i1 %cmp912.not.i, label %if.then3.i.for.end15.i_crit_edge, label %if.then3.i.for.body10.i_crit_edge

if.then3.i.for.body10.i_crit_edge:                ; preds = %if.then3.i
  br label %for.body10.i

if.then3.i.for.end15.i_crit_edge:                 ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end15.i

for.body10.i:                                     ; preds = %for.body10.i.for.body10.i_crit_edge, %if.then3.i.for.body10.i_crit_edge
  %i.113.i = phi i32 [ %inc14.i, %for.body10.i.for.body10.i_crit_edge ], [ 0, %if.then3.i.for.body10.i_crit_edge ]
  %conv.i = trunc i32 %i.113.i to i16
  %entry12.i = getelementptr [32 x %struct.msix_entry], ptr %xentries.i, i32 0, i32 %i.113.i, i32 1
  %30 = ptrtoint ptr %entry12.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv.i, ptr %entry12.i, align 4
  %inc14.i = add nuw i32 %i.113.i, 1
  %exitcond.not.i = icmp eq i32 %inc14.i, %29
  br i1 %exitcond.not.i, label %for.body10.i.for.end15.i_crit_edge, label %for.body10.i.for.body10.i_crit_edge

for.body10.i.for.body10.i_crit_edge:              ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body10.i

for.body10.i.for.end15.i_crit_edge:               ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end15.i

for.end15.i:                                      ; preds = %for.body10.i.for.end15.i_crit_edge, %if.then3.i.for.end15.i_crit_edge
  %31 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pci_dev.i, align 4
  %call16.i = call i32 @pci_enable_msix_range(ptr noundef %32, ptr noundef nonnull %xentries.i, i32 noundef 1, i32 noundef %29) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp17.i = icmp slt i32 %call16.i, 0
  br i1 %cmp17.i, label %if.then19.i, label %if.else.i

if.then19.i:                                      ; preds = %for.end15.i
  %33 = ptrtoint ptr %interrupt_mode.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %interrupt_mode.i, align 128
  %34 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %msg_enable, align 8
  %and.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool21.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool21.not.i, label %if.then19.i.if.end102.i_crit_edge, label %if.then22.i

if.then19.i.if.end102.i_crit_edge:                ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end102.i

if.then22.i:                                      ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #24
  %36 = ptrtoint ptr %net_dev32.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %net_dev32.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %37, ptr noundef nonnull @.str.157) #25
  br label %if.end102.i

if.else.i:                                        ; preds = %for.end15.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call16.i, i32 %29)
  %cmp24.i = icmp ult i32 %call16.i, %29
  br i1 %cmp24.i, label %do.body27.i, label %if.else.i.if.end46.i_crit_edge

if.else.i.if.end46.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end46.i

do.body27.i:                                      ; preds = %if.else.i
  %38 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %msg_enable, align 8
  %and29.i = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  br i1 %tobool30.not.i, label %do.body27.i.do.body36.i_crit_edge, label %if.then31.i

do.body27.i.do.body36.i_crit_edge:                ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body36.i

if.then31.i:                                      ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #24
  %40 = ptrtoint ptr %net_dev32.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %net_dev32.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %41, ptr noundef nonnull @.str.158, i32 noundef %call16.i, i32 noundef %29) #25
  br label %do.body36.i

do.body36.i:                                      ; preds = %if.then31.i, %do.body27.i.do.body36.i_crit_edge
  %42 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %msg_enable, align 8
  %and38.i = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i)
  %tobool39.not.i = icmp eq i32 %and38.i, 0
  br i1 %tobool39.not.i, label %do.body36.i.if.end46.i_crit_edge, label %if.then40.i

do.body36.i.if.end46.i_crit_edge:                 ; preds = %do.body36.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end46.i

if.then40.i:                                      ; preds = %do.body36.i
  call void @__sanitizer_cov_trace_pc() #24
  %44 = ptrtoint ptr %net_dev32.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %net_dev32.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %45, ptr noundef nonnull @.str.159) #25
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.then40.i, %do.body36.i.if.end46.i_crit_edge, %if.else.i.if.end46.i_crit_edge
  %n_channels.1.i = phi i32 [ %29, %if.else.i.if.end46.i_crit_edge ], [ %call16.i, %if.then40.i ], [ %call16.i, %do.body36.i.if.end46.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp47.not.i = icmp eq i32 %call16.i, 0
  br i1 %cmp47.not.i, label %if.end46.i.if.end102.i_crit_edge, label %if.then49.i

if.end46.i.if.end102.i_crit_edge:                 ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end102.i

if.then49.i:                                      ; preds = %if.end46.i
  %46 = ptrtoint ptr %n_channels50.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %n_channels.1.i, ptr %n_channels50.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %n_channels.1.i, i32 %spec.select.1.i)
  %cmp51.i = icmp ugt i32 %n_channels.1.i, %spec.select.1.i
  %sub.i = select i1 %cmp51.i, i32 %spec.select.1.i, i32 0
  %spec.select3.i = sub i32 %n_channels.1.i, %sub.i
  %47 = load i8, ptr @ef4_separate_tx_channels, align 1, !range !538
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool55.not.i = icmp eq i8 %47, 0
  br i1 %tobool55.not.i, label %if.else80.i, label %if.then56.i

if.then56.i:                                      ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %spec.select3.i)
  %cmp58.i = icmp ugt i32 %spec.select3.i, 3
  %div1.i = lshr i32 %spec.select3.i, 1
  %cond63.i = select i1 %cmp58.i, i32 %div1.i, i32 1
  %48 = ptrtoint ptr %max_tx_channels to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %max_tx_channels, align 16
  %50 = call i32 @llvm.umin.i32(i32 %cond63.i, i32 %49) #22
  %sub72.i = sub i32 %spec.select3.i, %50
  %51 = call i32 @llvm.umax.i32(i32 %sub72.i, i32 1) #22
  br label %if.end91.i

if.else80.i:                                      ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #24
  %52 = ptrtoint ptr %max_tx_channels to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %max_tx_channels, align 16
  %54 = call i32 @llvm.umin.i32(i32 %spec.select3.i, i32 %53) #22
  br label %if.end91.i

if.end91.i:                                       ; preds = %if.else80.i, %if.then56.i
  %.sink19.i = phi i32 [ %54, %if.else80.i ], [ %50, %if.then56.i ]
  %.sink.i = phi i32 [ %spec.select3.i, %if.else80.i ], [ %51, %if.then56.i ]
  %55 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %.sink19.i, ptr %10, align 4
  %56 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %.sink.i, ptr %11, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_channels.1.i)
  %cmp9414.not.i = icmp eq i32 %n_channels.1.i, 0
  br i1 %cmp9414.not.i, label %if.end91.i.if.end102.i_crit_edge, label %if.end91.i.for.body96.i_crit_edge

if.end91.i.for.body96.i_crit_edge:                ; preds = %if.end91.i
  br label %for.body96.i

if.end91.i.if.end102.i_crit_edge:                 ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end102.i

for.body96.i:                                     ; preds = %for.body96.i.for.body96.i_crit_edge, %if.end91.i.for.body96.i_crit_edge
  %i.215.i = phi i32 [ %inc100.i, %for.body96.i.for.body96.i_crit_edge ], [ 0, %if.end91.i.for.body96.i_crit_edge ]
  %arrayidx97.i = getelementptr [32 x %struct.msix_entry], ptr %xentries.i, i32 0, i32 %i.215.i
  %57 = ptrtoint ptr %arrayidx97.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx97.i, align 4
  %arrayidx.i.i = getelementptr %struct.ef4_nic, ptr %efx, i32 0, i32 23, i32 %i.215.i
  %59 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx.i.i, align 4
  %irq.i = getelementptr inbounds %struct.ef4_channel, ptr %60, i32 0, i32 5
  %61 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %58, ptr %irq.i, align 16
  %inc100.i = add nuw i32 %i.215.i, 1
  %62 = ptrtoint ptr %n_channels50.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %n_channels50.i, align 4
  %cmp94.i = icmp ult i32 %inc100.i, %63
  br i1 %cmp94.i, label %for.body96.i.for.body96.i_crit_edge, label %for.body96.i.if.end102.i_crit_edge

for.body96.i.if.end102.i_crit_edge:               ; preds = %for.body96.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end102.i

for.body96.i.for.body96.i_crit_edge:              ; preds = %for.body96.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body96.i

if.end102.i:                                      ; preds = %for.body96.i.if.end102.i_crit_edge, %if.end91.i.if.end102.i_crit_edge, %if.end46.i.if.end102.i_crit_edge, %if.then22.i, %if.then19.i.if.end102.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %xentries.i) #22
  %64 = ptrtoint ptr %interrupt_mode.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %.pr.i = load i32, ptr %interrupt_mode.i, align 128
  br label %if.end103.i

if.end103.i:                                      ; preds = %if.end102.i, %if.end26.if.end103.i_crit_edge
  %65 = phi i32 [ %.pr.i, %if.end102.i ], [ %23, %if.end26.if.end103.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %65)
  %cmp105.i = icmp eq i32 %65, 1
  br i1 %cmp105.i, label %if.then107.i, label %if.end103.i.if.end132.i_crit_edge

if.end103.i.if.end132.i_crit_edge:                ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end132.i

if.then107.i:                                     ; preds = %if.end103.i
  %66 = ptrtoint ptr %n_channels50.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1, ptr %n_channels50.i, align 4
  %67 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 1, ptr %11, align 8
  %68 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 1, ptr %10, align 4
  %69 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pci_dev.i, align 4
  %call112.i = call i32 @pci_enable_msi(ptr noundef %70) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112.i)
  %cmp113.i = icmp eq i32 %call112.i, 0
  br i1 %cmp113.i, label %if.then115.i, label %do.body121.i

if.then115.i:                                     ; preds = %if.then107.i
  call void @__sanitizer_cov_trace_pc() #24
  %71 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pci_dev.i, align 4
  %irq117.i = getelementptr inbounds %struct.pci_dev, ptr %72, i32 0, i32 46
  %73 = ptrtoint ptr %irq117.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %irq117.i, align 4
  %75 = ptrtoint ptr %arrayidx.i4.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx.i4.i, align 4
  %irq119.i = getelementptr inbounds %struct.ef4_channel, ptr %76, i32 0, i32 5
  %77 = ptrtoint ptr %irq119.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %74, ptr %irq119.i, align 16
  br label %if.end132.i

do.body121.i:                                     ; preds = %if.then107.i
  %78 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %msg_enable, align 8
  %and123.i = and i32 %79, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and123.i)
  %tobool124.not.i = icmp eq i32 %and123.i, 0
  br i1 %tobool124.not.i, label %do.body121.i.if.end132.thread.i_crit_edge, label %if.then125.i

do.body121.i.if.end132.thread.i_crit_edge:        ; preds = %do.body121.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end132.thread.i

if.then125.i:                                     ; preds = %do.body121.i
  call void @__sanitizer_cov_trace_pc() #24
  %80 = ptrtoint ptr %net_dev32.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %net_dev32.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %81, ptr noundef nonnull @.str.160) #25
  br label %if.end132.thread.i

if.end132.thread.i:                               ; preds = %if.then125.i, %do.body121.i.if.end132.thread.i_crit_edge
  %82 = ptrtoint ptr %interrupt_mode.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 2, ptr %interrupt_mode.i, align 128
  br label %if.then136.i

if.end132.i:                                      ; preds = %if.then115.i, %if.end103.i.if.end132.i_crit_edge
  %83 = ptrtoint ptr %interrupt_mode.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %.pr8.i = load i32, ptr %interrupt_mode.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr8.i)
  %cmp134.i = icmp eq i32 %.pr8.i, 2
  br i1 %cmp134.i, label %if.end132.i.if.then136.i_crit_edge, label %if.end132.i.if.end146.i_crit_edge

if.end132.i.if.end146.i_crit_edge:                ; preds = %if.end132.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end146.i

if.end132.i.if.then136.i_crit_edge:               ; preds = %if.end132.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then136.i

if.then136.i:                                     ; preds = %if.end132.i.if.then136.i_crit_edge, %if.end132.thread.i
  %84 = load i8, ptr @ef4_separate_tx_channels, align 1, !range !538
  %narrow.i = add nuw nsw i8 %84, 1
  %add140.i = zext i8 %narrow.i to i32
  %85 = ptrtoint ptr %n_channels50.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %add140.i, ptr %n_channels50.i, align 4
  %86 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 1, ptr %11, align 8
  %87 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 1, ptr %10, align 4
  %88 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %pci_dev.i, align 4
  %irq145.i = getelementptr inbounds %struct.pci_dev, ptr %89, i32 0, i32 46
  %90 = ptrtoint ptr %irq145.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %irq145.i, align 4
  %92 = ptrtoint ptr %legacy_irq.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %legacy_irq.i, align 16
  br label %if.end146.i

if.end146.i:                                      ; preds = %if.then136.i, %if.end132.i.if.end146.i_crit_edge
  %93 = ptrtoint ptr %n_channels50.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %n_channels50.i, align 4
  %95 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx.i, align 4
  %tobool154.not.i = icmp eq ptr %96, null
  br i1 %tobool154.not.i, label %if.end146.i.for.inc171.i_crit_edge, label %if.end156.i

if.end146.i.for.inc171.i_crit_edge:               ; preds = %if.end146.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc171.i

if.end156.i:                                      ; preds = %if.end146.i
  %97 = ptrtoint ptr %interrupt_mode.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %interrupt_mode.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp158.not.i = icmp eq i32 %98, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %94, i32 %spec.select.1.i)
  %cmp161.not.i = icmp ugt i32 %94, %spec.select.1.i
  %or.cond = select i1 %cmp158.not.i, i1 %cmp161.not.i, i1 false
  br i1 %or.cond, label %if.else166.i, label %if.then163.i

if.then163.i:                                     ; preds = %if.end156.i
  call void @__sanitizer_cov_trace_pc() #24
  %99 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %96, align 4
  call void %100(ptr noundef %efx) #22
  br label %for.inc171.i

if.else166.i:                                     ; preds = %if.end156.i
  call void @__sanitizer_cov_trace_pc() #24
  %dec.i = add i32 %94, -1
  %arrayidx.i5.i = getelementptr %struct.ef4_nic, ptr %efx, i32 0, i32 23, i32 %dec.i
  %101 = ptrtoint ptr %arrayidx.i5.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %arrayidx.i5.i, align 4
  %type.i = getelementptr inbounds %struct.ef4_channel, ptr %102, i32 0, i32 2
  %103 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %96, ptr %type.i, align 8
  br label %for.inc171.i

for.inc171.i:                                     ; preds = %if.else166.i, %if.then163.i, %if.end146.i.for.inc171.i_crit_edge
  %j.1.i = phi i32 [ %94, %if.then163.i ], [ %dec.i, %if.else166.i ], [ %94, %if.end146.i.for.inc171.i_crit_edge ]
  %104 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool154.not.1.i = icmp eq ptr %105, null
  br i1 %tobool154.not.1.i, label %for.inc171.i.ef4_probe_interrupts.exit_crit_edge, label %if.end156.1.i

for.inc171.i.ef4_probe_interrupts.exit_crit_edge: ; preds = %for.inc171.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %ef4_probe_interrupts.exit

if.end156.1.i:                                    ; preds = %for.inc171.i
  %106 = ptrtoint ptr %interrupt_mode.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %interrupt_mode.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %cmp158.not.1.i = icmp eq i32 %107, 0
  br i1 %cmp158.not.1.i, label %lor.lhs.false.1.i, label %if.end156.1.i.if.then163.1.i_crit_edge

if.end156.1.i.if.then163.1.i_crit_edge:           ; preds = %if.end156.1.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then163.1.i

lor.lhs.false.1.i:                                ; preds = %if.end156.1.i
  %108 = ptrtoint ptr %n_channels50.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %n_channels50.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %109, i32 %spec.select.1.i)
  %cmp161.not.1.i = icmp ugt i32 %109, %spec.select.1.i
  br i1 %cmp161.not.1.i, label %if.else166.1.i, label %lor.lhs.false.1.i.if.then163.1.i_crit_edge

lor.lhs.false.1.i.if.then163.1.i_crit_edge:       ; preds = %lor.lhs.false.1.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then163.1.i

if.then163.1.i:                                   ; preds = %lor.lhs.false.1.i.if.then163.1.i_crit_edge, %if.end156.1.i.if.then163.1.i_crit_edge
  %110 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %105, align 4
  call void %111(ptr noundef %efx) #22
  br label %ef4_probe_interrupts.exit

if.else166.1.i:                                   ; preds = %lor.lhs.false.1.i
  call void @__sanitizer_cov_trace_pc() #24
  %dec.1.i = add i32 %j.1.i, -1
  %arrayidx.i5.1.i = getelementptr %struct.ef4_nic, ptr %efx, i32 0, i32 23, i32 %dec.1.i
  %112 = ptrtoint ptr %arrayidx.i5.1.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %arrayidx.i5.1.i, align 4
  %type.1.i = getelementptr inbounds %struct.ef4_channel, ptr %113, i32 0, i32 2
  %114 = ptrtoint ptr %type.1.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %105, ptr %type.1.i, align 8
  br label %ef4_probe_interrupts.exit

ef4_probe_interrupts.exit:                        ; preds = %if.else166.1.i, %if.then163.1.i, %for.inc171.i.ef4_probe_interrupts.exit_crit_edge
  %115 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %11, align 8
  %117 = ptrtoint ptr %rss_spread.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %rss_spread.i, align 4
  %118 = load i8, ptr @ef4_separate_tx_channels, align 1, !range !538
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %tobool.not.i83 = icmp eq i8 %118, 0
  br i1 %tobool.not.i83, label %ef4_probe_interrupts.exit.cond.end.i_crit_edge, label %cond.true.i

ef4_probe_interrupts.exit.cond.end.i_crit_edge:   ; preds = %ef4_probe_interrupts.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %cond.end.i

cond.true.i:                                      ; preds = %ef4_probe_interrupts.exit
  call void @__sanitizer_cov_trace_pc() #24
  %119 = ptrtoint ptr %n_channels50.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %n_channels50.i, align 4
  %121 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %10, align 4
  %sub.i84 = sub i32 %120, %122
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %ef4_probe_interrupts.exit.cond.end.i_crit_edge
  %cond.i = phi i32 [ %sub.i84, %cond.true.i ], [ 0, %ef4_probe_interrupts.exit.cond.end.i_crit_edge ]
  %123 = ptrtoint ptr %tx_channel_offset.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %cond.i, ptr %tx_channel_offset.i, align 32
  %124 = ptrtoint ptr %arrayidx.i4.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %arrayidx.i4.i, align 4
  %tobool2.not55.i = icmp eq ptr %125, null
  br i1 %tobool2.not55.i, label %cond.end.i.ef4_set_channels.exit_crit_edge, label %cond.end.i.for.body.i_crit_edge

cond.end.i.for.body.i_crit_edge:                  ; preds = %cond.end.i
  br label %for.body.i

cond.end.i.ef4_set_channels.exit_crit_edge:       ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %ef4_set_channels.exit

for.body.i:                                       ; preds = %cond.end29.i.for.body.i_crit_edge, %cond.end.i.for.body.i_crit_edge
  %channel.056.i = phi ptr [ %155, %cond.end29.i.for.body.i_crit_edge ], [ %125, %cond.end.i.for.body.i_crit_edge ]
  %channel3.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.056.i, i32 0, i32 1
  %126 = ptrtoint ptr %channel3.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %channel3.i, align 4
  %128 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %11, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %127, i32 %129)
  %cmp.i = icmp ult i32 %127, %129
  %spec.select.i = select i1 %cmp.i, i32 %127, i32 -1
  %130 = getelementptr inbounds %struct.ef4_channel, ptr %channel.056.i, i32 0, i32 30, i32 1
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %spec.select.i, ptr %130, align 4
  %132 = ptrtoint ptr %channel.056.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %channel.056.i, align 128
  %tx_channel_offset.i.i = getelementptr inbounds %struct.ef4_nic, ptr %133, i32 0, i32 39
  %134 = ptrtoint ptr %tx_channel_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %tx_channel_offset.i.i, align 32
  %sub.i.i = sub i32 %127, %135
  %n_tx_channels.i.i = getelementptr inbounds %struct.ef4_nic, ptr %133, i32 0, i32 40
  %136 = ptrtoint ptr %n_tx_channels.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %n_tx_channels.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %137)
  %cmp.i.i = icmp ult i32 %sub.i.i, %137
  br i1 %cmp.i.i, label %if.else8.i, label %for.body.i.for.inc19.i_crit_edge

for.body.i.for.inc19.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc19.i

if.else8.i:                                       ; preds = %for.body.i
  %tx_queue9.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.056.i, i32 0, i32 32
  %add.ptr.i = getelementptr %struct.ef4_channel, ptr %channel.056.i, i32 1
  %cmp1352.i = icmp ult ptr %tx_queue9.i, %add.ptr.i
  br i1 %cmp1352.i, label %if.else8.i.land.rhs.i_crit_edge, label %if.else8.i.for.inc19.i_crit_edge

if.else8.i.for.inc19.i_crit_edge:                 ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc19.i

if.else8.i.land.rhs.i_crit_edge:                  ; preds = %if.else8.i
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.body15.i.land.rhs.i_crit_edge, %if.else8.i.land.rhs.i_crit_edge
  %tx_queue.053.i = phi ptr [ %incdec.ptr.i, %for.body15.i.land.rhs.i_crit_edge ], [ %tx_queue9.i, %if.else8.i.land.rhs.i_crit_edge ]
  %138 = ptrtoint ptr %tx_queue.053.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %tx_queue.053.i, align 128
  %net_dev.i.i = getelementptr inbounds %struct.ef4_nic, ptr %139, i32 0, i32 69
  %140 = ptrtoint ptr %net_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %net_dev.i.i, align 4
  %num_tc.i.i = getelementptr inbounds %struct.net_device, ptr %141, i32 0, i32 140
  %142 = ptrtoint ptr %num_tc.i.i to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %num_tc.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %143)
  %cmp.i51.i = icmp slt i16 %143, 2
  br i1 %cmp.i51.i, label %ef4_tx_queue_used.exit.i, label %land.rhs.i.for.body15.i_crit_edge

land.rhs.i.for.body15.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body15.i

ef4_tx_queue_used.exit.i:                         ; preds = %land.rhs.i
  %queue.i.i = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue.053.i, i32 0, i32 1
  %144 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %queue.i.i, align 4
  %and.i.i = and i32 %145, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.i, label %ef4_tx_queue_used.exit.i.for.body15.i_crit_edge, label %ef4_tx_queue_used.exit.i.for.inc19.i_crit_edge

ef4_tx_queue_used.exit.i.for.inc19.i_crit_edge:   ; preds = %ef4_tx_queue_used.exit.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc19.i

ef4_tx_queue_used.exit.i.for.body15.i_crit_edge:  ; preds = %ef4_tx_queue_used.exit.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body15.i

for.body15.i:                                     ; preds = %ef4_tx_queue_used.exit.i.for.body15.i_crit_edge, %land.rhs.i.for.body15.i_crit_edge
  %146 = ptrtoint ptr %tx_channel_offset.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %tx_channel_offset.i, align 32
  %mul.neg.i = mul i32 %147, -4
  %queue.i = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue.053.i, i32 0, i32 1
  %148 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %queue.i, align 4
  %sub17.i = add i32 %mul.neg.i, %149
  store i32 %sub17.i, ptr %queue.i, align 4
  %incdec.ptr.i = getelementptr %struct.ef4_tx_queue, ptr %tx_queue.053.i, i32 1
  %cmp13.i = icmp ult ptr %incdec.ptr.i, %add.ptr.i
  br i1 %cmp13.i, label %for.body15.i.land.rhs.i_crit_edge, label %for.body15.i.for.inc19.i_crit_edge

for.body15.i.for.inc19.i_crit_edge:               ; preds = %for.body15.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc19.i

for.body15.i.land.rhs.i_crit_edge:                ; preds = %for.body15.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %land.rhs.i

for.inc19.i:                                      ; preds = %for.body15.i.for.inc19.i_crit_edge, %ef4_tx_queue_used.exit.i.for.inc19.i_crit_edge, %if.else8.i.for.inc19.i_crit_edge, %for.body.i.for.inc19.i_crit_edge
  %150 = ptrtoint ptr %channel3.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %channel3.i, align 4
  %add.i85 = add i32 %151, 1
  %152 = ptrtoint ptr %n_channels50.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %n_channels50.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i85, i32 %153)
  %cmp22.i = icmp ult i32 %add.i85, %153
  br i1 %cmp22.i, label %cond.end29.i, label %for.inc19.i.ef4_set_channels.exit_crit_edge

for.inc19.i.ef4_set_channels.exit_crit_edge:      ; preds = %for.inc19.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %ef4_set_channels.exit

cond.end29.i:                                     ; preds = %for.inc19.i
  %arrayidx27.i = getelementptr %struct.ef4_nic, ptr %efx, i32 0, i32 23, i32 %add.i85
  %154 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %arrayidx27.i, align 4
  %tobool2.not.i = icmp eq ptr %155, null
  br i1 %tobool2.not.i, label %cond.end29.i.ef4_set_channels.exit_crit_edge, label %cond.end29.i.for.body.i_crit_edge

cond.end29.i.for.body.i_crit_edge:                ; preds = %cond.end29.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body.i

cond.end29.i.ef4_set_channels.exit_crit_edge:     ; preds = %cond.end29.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %ef4_set_channels.exit

ef4_set_channels.exit:                            ; preds = %cond.end29.i.ef4_set_channels.exit_crit_edge, %for.inc19.i.ef4_set_channels.exit_crit_edge, %cond.end.i.ef4_set_channels.exit_crit_edge
  %156 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %type, align 4
  %dimension_resources = getelementptr inbounds %struct.ef4_nic_type, ptr %157, i32 0, i32 5
  %158 = ptrtoint ptr %dimension_resources to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %dimension_resources, align 4
  %call32 = call i32 %159(ptr noundef %efx) #22
  %160 = zext i32 %call32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %160, ptr @__sancov_gen_cov_switch_values.211)
  switch i32 %call32, label %fail2 [
    i32 -11, label %if.then37
    i32 0, label %do.end41.critedge
  ]

if.then37:                                        ; preds = %ef4_set_channels.exit
  %161 = ptrtoint ptr %arrayidx.i4.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %arrayidx.i4.i, align 4
  %tobool.not16.i = icmp eq ptr %162, null
  br i1 %tobool.not16.i, label %if.then37.ef4_remove_interrupts.exit_crit_edge, label %if.then37.for.body.i92_crit_edge

if.then37.for.body.i92_crit_edge:                 ; preds = %if.then37
  br label %for.body.i92

if.then37.ef4_remove_interrupts.exit_crit_edge:   ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #24
  br label %ef4_remove_interrupts.exit

for.body.i92:                                     ; preds = %cond.end.i94.for.body.i92_crit_edge, %if.then37.for.body.i92_crit_edge
  %channel.017.i = phi ptr [ %169, %cond.end.i94.for.body.i92_crit_edge ], [ %162, %if.then37.for.body.i92_crit_edge ]
  %irq.i89 = getelementptr inbounds %struct.ef4_channel, ptr %channel.017.i, i32 0, i32 5
  %163 = ptrtoint ptr %irq.i89 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 0, ptr %irq.i89, align 16
  %channel2.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.017.i, i32 0, i32 1
  %164 = ptrtoint ptr %channel2.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %channel2.i, align 4
  %add.i90 = add i32 %165, 1
  %166 = ptrtoint ptr %n_channels50.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %n_channels50.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i90, i32 %167)
  %cmp.i91 = icmp ult i32 %add.i90, %167
  br i1 %cmp.i91, label %cond.end.i94, label %for.body.i92.ef4_remove_interrupts.exit_crit_edge

for.body.i92.ef4_remove_interrupts.exit_crit_edge: ; preds = %for.body.i92
  call void @__sanitizer_cov_trace_pc() #24
  br label %ef4_remove_interrupts.exit

cond.end.i94:                                     ; preds = %for.body.i92
  %arrayidx6.i = getelementptr %struct.ef4_nic, ptr %efx, i32 0, i32 23, i32 %add.i90
  %168 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %arrayidx6.i, align 4
  %tobool.not.i93 = icmp eq ptr %169, null
  br i1 %tobool.not.i93, label %cond.end.i94.ef4_remove_interrupts.exit_crit_edge, label %cond.end.i94.for.body.i92_crit_edge

cond.end.i94.for.body.i92_crit_edge:              ; preds = %cond.end.i94
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body.i92

cond.end.i94.ef4_remove_interrupts.exit_crit_edge: ; preds = %cond.end.i94
  call void @__sanitizer_cov_trace_pc() #24
  br label %ef4_remove_interrupts.exit

ef4_remove_interrupts.exit:                       ; preds = %cond.end.i94.ef4_remove_interrupts.exit_crit_edge, %for.body.i92.ef4_remove_interrupts.exit_crit_edge, %if.then37.ef4_remove_interrupts.exit_crit_edge
  %170 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %pci_dev.i, align 4
  call void @pci_disable_msi(ptr noundef %171) #22
  %172 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %pci_dev.i, align 4
  call void @pci_disable_msix(ptr noundef %173) #22
  %174 = ptrtoint ptr %legacy_irq.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 0, ptr %legacy_irq.i, align 16
  %175 = ptrtoint ptr %max_channels to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %max_channels, align 4
  %tobool14.not = icmp eq i32 %176, 0
  br i1 %tobool14.not, label %ef4_remove_interrupts.exit.do.body17_crit_edge, label %ef4_remove_interrupts.exit.lor.lhs.false_crit_edge

ef4_remove_interrupts.exit.lor.lhs.false_crit_edge: ; preds = %ef4_remove_interrupts.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %lor.lhs.false

ef4_remove_interrupts.exit.do.body17_crit_edge:   ; preds = %ef4_remove_interrupts.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body17

do.end41.critedge:                                ; preds = %ef4_set_channels.exit
  %177 = ptrtoint ptr %n_channels50.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %n_channels50.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %178)
  %cmp42 = icmp ugt i32 %178, 1
  br i1 %cmp42, label %if.then43, label %do.end41.critedge.for.body.i101.preheader_crit_edge

do.end41.critedge.for.body.i101.preheader_crit_edge: ; preds = %do.end41.critedge
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body.i101.preheader

if.then43:                                        ; preds = %do.end41.critedge
  call void @__sanitizer_cov_trace_pc() #24
  %rx_hash_key = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 52
  call void @netdev_rss_key_fill(ptr noundef %rx_hash_key, i32 noundef 40) #22
  br label %for.body.i101.preheader

for.body.i101.preheader:                          ; preds = %if.then43, %do.end41.critedge.for.body.i101.preheader_crit_edge
  br label %for.body.i101

for.body.i101:                                    ; preds = %for.body.i101.for.body.i101_crit_edge, %for.body.i101.preheader
  %i.05.i = phi i32 [ %inc.i99, %for.body.i101.for.body.i101_crit_edge ], [ 0, %for.body.i101.preheader ]
  %179 = ptrtoint ptr %rss_spread.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %rss_spread.i, align 4
  %rem.i.i = urem i32 %i.05.i, %180
  %arrayidx.i98 = getelementptr %struct.ef4_nic, ptr %efx, i32 0, i32 53, i32 %i.05.i
  %181 = ptrtoint ptr %arrayidx.i98 to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %rem.i.i, ptr %arrayidx.i98, align 4
  %inc.i99 = add nuw nsw i32 %i.05.i, 1
  %exitcond.not.i100 = icmp eq i32 %inc.i99, 128
  br i1 %exitcond.not.i100, label %ef4_set_default_rx_indir_table.exit, label %for.body.i101.for.body.i101_crit_edge

for.body.i101.for.body.i101_crit_edge:            ; preds = %for.body.i101
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body.i101

ef4_set_default_rx_indir_table.exit:              ; preds = %for.body.i101
  call void @__sanitizer_cov_trace_pc() #24
  %182 = ptrtoint ptr %net_dev32.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %net_dev32.i, align 4
  %184 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %10, align 4
  %call46 = call i32 @netif_set_real_num_tx_queues(ptr noundef %183, i32 noundef %185) #22
  %186 = ptrtoint ptr %net_dev32.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %net_dev32.i, align 4
  %188 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %11, align 8
  %call48 = call i32 @netif_set_real_num_rx_queues(ptr noundef %187, i32 noundef %189) #22
  %timer_quantum_ns = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 15
  %190 = ptrtoint ptr %timer_quantum_ns to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %timer_quantum_ns, align 4
  %sub = add i32 %191, 999
  %div = udiv i32 %sub, 1000
  %irq_mod_step_us = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 18
  %192 = ptrtoint ptr %irq_mod_step_us to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %div, ptr %irq_mod_step_us, align 16
  %call49 = call i32 @ef4_init_irq_moderation(ptr noundef %efx, i32 noundef 150, i32 noundef 60, i1 noundef zeroext true, i1 noundef zeroext true)
  br label %cleanup

fail2:                                            ; preds = %ef4_set_channels.exit
  %193 = ptrtoint ptr %arrayidx.i4.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %arrayidx.i4.i, align 4
  %tobool.not16.i103 = icmp eq ptr %194, null
  br i1 %tobool.not16.i103, label %fail2.ef4_remove_interrupts.exit117_crit_edge, label %fail2.for.body.i111_crit_edge

fail2.for.body.i111_crit_edge:                    ; preds = %fail2
  br label %for.body.i111

fail2.ef4_remove_interrupts.exit117_crit_edge:    ; preds = %fail2
  call void @__sanitizer_cov_trace_pc() #24
  br label %ef4_remove_interrupts.exit117

for.body.i111:                                    ; preds = %cond.end.i114.for.body.i111_crit_edge, %fail2.for.body.i111_crit_edge
  %channel.017.i106 = phi ptr [ %201, %cond.end.i114.for.body.i111_crit_edge ], [ %194, %fail2.for.body.i111_crit_edge ]
  %irq.i107 = getelementptr inbounds %struct.ef4_channel, ptr %channel.017.i106, i32 0, i32 5
  %195 = ptrtoint ptr %irq.i107 to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 0, ptr %irq.i107, align 16
  %channel2.i108 = getelementptr inbounds %struct.ef4_channel, ptr %channel.017.i106, i32 0, i32 1
  %196 = ptrtoint ptr %channel2.i108 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %channel2.i108, align 4
  %add.i109 = add i32 %197, 1
  %198 = ptrtoint ptr %n_channels50.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %n_channels50.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i109, i32 %199)
  %cmp.i110 = icmp ult i32 %add.i109, %199
  br i1 %cmp.i110, label %cond.end.i114, label %for.body.i111.ef4_remove_interrupts.exit117_crit_edge

for.body.i111.ef4_remove_interrupts.exit117_crit_edge: ; preds = %for.body.i111
  call void @__sanitizer_cov_trace_pc() #24
  br label %ef4_remove_interrupts.exit117

cond.end.i114:                                    ; preds = %for.body.i111
  %arrayidx6.i112 = getelementptr %struct.ef4_nic, ptr %efx, i32 0, i32 23, i32 %add.i109
  %200 = ptrtoint ptr %arrayidx6.i112 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %arrayidx6.i112, align 4
  %tobool.not.i113 = icmp eq ptr %201, null
  br i1 %tobool.not.i113, label %cond.end.i114.ef4_remove_interrupts.exit117_crit_edge, label %cond.end.i114.for.body.i111_crit_edge

cond.end.i114.for.body.i111_crit_edge:            ; preds = %cond.end.i114
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body.i111

cond.end.i114.ef4_remove_interrupts.exit117_crit_edge: ; preds = %cond.end.i114
  call void @__sanitizer_cov_trace_pc() #24
  br label %ef4_remove_interrupts.exit117

ef4_remove_interrupts.exit117:                    ; preds = %cond.end.i114.ef4_remove_interrupts.exit117_crit_edge, %for.body.i111.ef4_remove_interrupts.exit117_crit_edge, %fail2.ef4_remove_interrupts.exit117_crit_edge
  %202 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %pci_dev.i, align 4
  call void @pci_disable_msi(ptr noundef %203) #22
  %204 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %pci_dev.i, align 4
  call void @pci_disable_msix(ptr noundef %205) #22
  %206 = ptrtoint ptr %legacy_irq.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 0, ptr %legacy_irq.i, align 16
  br label %fail1

fail1:                                            ; preds = %ef4_remove_interrupts.exit117, %if.then21, %do.body17.fail1_crit_edge
  %rc.0 = phi i32 [ %call32, %ef4_remove_interrupts.exit117 ], [ -28, %if.then21 ], [ -28, %do.body17.fail1_crit_edge ]
  %207 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %type, align 4
  %remove = getelementptr inbounds %struct.ef4_nic_type, ptr %208, i32 0, i32 3
  %209 = ptrtoint ptr %remove to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %remove, align 4
  call void %210(ptr noundef %efx) #22
  br label %cleanup

cleanup:                                          ; preds = %fail1, %ef4_set_default_rx_indir_table.exit, %do.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %fail1 ], [ 0, %ef4_set_default_rx_indir_table.exit ], [ %call9, %do.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_rss_key_fill(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_real_num_tx_queues(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_real_num_rx_queues(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ef4_wanted_parallelism(ptr nocapture noundef readonly %efx) unnamed_addr #0 align 64 {
entry:
  %thread_mask = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %thread_mask) #22
  %0 = ptrtoint ptr %thread_mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %thread_mask, align 4, !annotation !552
  %1 = load i32, ptr @rss_cpus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end13_crit_edge

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end13

if.else:                                          ; preds = %entry
  %call = call zeroext i1 @zalloc_cpumask_var(ptr noundef nonnull %thread_mask, i32 noundef 3264) #22
  br i1 %call, label %for.cond.preheader, label %do.body, !prof !539

for.cond.preheader:                               ; preds = %if.else
  %call870 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #29
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call870, i32 %2)
  %cmp71 = icmp ult i32 %call870, %2
  br i1 %cmp71, label %for.cond.preheader.cpumask_test_cpu.exit_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

for.cond.preheader.cpumask_test_cpu.exit_crit_edge: ; preds = %for.cond.preheader
  br label %cpumask_test_cpu.exit

do.body:                                          ; preds = %if.else
  %msg_enable = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %3 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %msg_enable, align 8
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %do.body.cleanup_crit_edge, label %if.then6

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #24
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %5 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %net_dev, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %6, ptr noundef nonnull @.str.161) #25
  br label %cleanup

cpumask_test_cpu.exit:                            ; preds = %if.end12.cpumask_test_cpu.exit_crit_edge, %for.cond.preheader.cpumask_test_cpu.exit_crit_edge
  %call873 = phi i32 [ %call8, %if.end12.cpumask_test_cpu.exit_crit_edge ], [ %call870, %for.cond.preheader.cpumask_test_cpu.exit_crit_edge ]
  %count.072 = phi i32 [ %count.1, %if.end12.cpumask_test_cpu.exit_crit_edge ], [ 0, %for.cond.preheader.cpumask_test_cpu.exit_crit_edge ]
  %7 = ptrtoint ptr %thread_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %thread_mask, align 4
  %div3.i.i = lshr i32 %call873, 5
  %arrayidx.i.i = getelementptr i32, ptr %8, i32 %div3.i.i
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %call873, 31
  %11 = shl nuw i32 1, %and.i.i
  %12 = and i32 %10, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool10.not = icmp eq i32 %12, 0
  br i1 %tobool10.not, label %if.else.i.i, label %cpumask_test_cpu.exit.if.end12_crit_edge

cpumask_test_cpu.exit.if.end12_crit_edge:         ; preds = %cpumask_test_cpu.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end12

if.else.i.i:                                      ; preds = %cpumask_test_cpu.exit
  call void @__sanitizer_cov_trace_pc() #24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %13 = load i32, ptr @nr_cpu_ids, align 4
  %thread_sibling = getelementptr [4 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %call873, i32 5
  %14 = ptrtoint ptr %thread_mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %thread_mask, align 4
  %inc = add i32 %count.072, 1
  call void @__bitmap_or(ptr noundef %15, ptr noundef %15, ptr noundef %thread_sibling, i32 noundef %13) #22
  br label %if.end12

if.end12:                                         ; preds = %if.else.i.i, %cpumask_test_cpu.exit.if.end12_crit_edge
  %count.1 = phi i32 [ %count.072, %cpumask_test_cpu.exit.if.end12_crit_edge ], [ %inc, %if.else.i.i ]
  %call8 = call i32 @cpumask_next(i32 noundef %call873, ptr noundef nonnull @__cpu_online_mask) #29
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %16 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call8, %16
  br i1 %cmp, label %if.end12.cpumask_test_cpu.exit_crit_edge, label %if.end12.for.end_crit_edge

if.end12.for.end_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

if.end12.cpumask_test_cpu.exit_crit_edge:         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #24
  br label %cpumask_test_cpu.exit

for.end:                                          ; preds = %if.end12.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %count.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %count.1, %if.end12.for.end_crit_edge ]
  %17 = ptrtoint ptr %thread_mask to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %thread_mask, align 4
  call void @free_cpumask_var(ptr noundef %18) #22
  br label %if.end13

if.end13:                                         ; preds = %for.end, %entry.if.end13_crit_edge
  %count.2 = phi i32 [ %count.0.lcssa, %for.end ], [ %1, %entry.if.end13_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %count.2)
  %cmp14 = icmp ugt i32 %count.2, 32
  br i1 %cmp14, label %do.body16, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

do.body16:                                        ; preds = %if.end13
  %19 = load i32, ptr @rss_cpus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool17.not = icmp eq i32 %19, 0
  %msg_enable20 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %20 = ptrtoint ptr %msg_enable20 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %msg_enable20, align 8
  %and21 = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool17.not, label %do.body19, label %do.body42

do.body19:                                        ; preds = %do.body16
  br i1 %tobool22.not, label %do.body19.cleanup_crit_edge, label %do.body24

do.body19.cleanup_crit_edge:                      ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

do.body24:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_wanted_parallelism.__UNIQUE_ID_ddebug569, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_wanted_parallelism, %if.then33)) #22
          to label %cleanup [label %if.then33], !srcloc !536

if.then33:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #24
  %net_dev34 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %22 = ptrtoint ptr %net_dev34 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %net_dev34, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_wanted_parallelism.__UNIQUE_ID_ddebug569, ptr noundef %23, ptr noundef nonnull @.str.163, i32 noundef %count.2, i32 noundef 32) #22
  br label %cleanup

do.body42:                                        ; preds = %do.body16
  br i1 %tobool22.not, label %do.body42.cleanup_crit_edge, label %if.then46

do.body42.cleanup_crit_edge:                      ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.then46:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #24
  %net_dev47 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %24 = ptrtoint ptr %net_dev47 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %net_dev47, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %25, ptr noundef nonnull @.str.163, i32 noundef %count.2, i32 noundef 32) #25
  br label %cleanup

cleanup:                                          ; preds = %if.then46, %do.body42.cleanup_crit_edge, %if.then33, %do.body24, %do.body19.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.then6, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then6 ], [ 1, %do.body.cleanup_crit_edge ], [ %count.2, %if.end13.cleanup_crit_edge ], [ 32, %do.body42.cleanup_crit_edge ], [ 32, %if.then46 ], [ 32, %do.body19.cleanup_crit_edge ], [ 32, %if.then33 ], [ 32, %do.body24 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %thread_mask) #22
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msix_range(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @zalloc_cpumask_var(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #19

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_cpumask_var(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_or(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_msi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_msix(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_alloc_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef4_init_tx_queue_core_txq(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ef4_associate(ptr noundef %efx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %primary = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 2
  %0 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %primary, align 8
  %cmp = icmp eq ptr %1, %efx
  br i1 %cmp, label %do.body, label %for.cond61.preheader

for.cond61.preheader:                             ; preds = %entry
  %.pn223 = load ptr, ptr @ef4_primary_list, align 4
  %cmp63.not224 = icmp eq ptr %.pn223, @ef4_primary_list
  br i1 %cmp63.not224, label %for.cond61.preheader.do.body110_crit_edge, label %for.body66.lr.ph

for.cond61.preheader.do.body110_crit_edge:        ; preds = %for.cond61.preheader
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body110

for.body66.lr.ph:                                 ; preds = %for.cond61.preheader
  %type.i189 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 6
  %2 = ptrtoint ptr %type.i189 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type.i189, align 4
  %vpd_sn.i192 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 100
  br label %for.body66

do.body:                                          ; preds = %entry
  %msg_enable = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %4 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable, align 8
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end9_crit_edge, label %do.body2

do.body.do.end9_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end9

do.body2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_associate.__UNIQUE_ID_ddebug560, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_associate, %if.then6)) #22
          to label %do.end9 [label %if.then6], !srcloc !536

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #24
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %6 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_associate.__UNIQUE_ID_ddebug560, ptr noundef %7, ptr noundef nonnull @.str.187) #22
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %do.body2, %do.body.do.end9_crit_edge
  %node = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 1
  %8 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @ef4_primary_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %8, ptr noundef nonnull @ef4_primary_list) #22
  br i1 %call.i.i, label %if.end.i.i, label %do.end9.list_add_tail.exit_crit_edge

do.end9.list_add_tail.exit_crit_edge:             ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #24
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #24
  store ptr %node, ptr getelementptr inbounds (%struct.list_head, ptr @ef4_primary_list, i32 0, i32 1), align 4
  %9 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @ef4_primary_list, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %8, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %node, ptr %8, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.end9.list_add_tail.exit_crit_edge
  %12 = load ptr, ptr @ef4_unassociated_list, align 4
  %cmp17.not227 = icmp eq ptr %12, @ef4_unassociated_list
  br i1 %cmp17.not227, label %list_add_tail.exit.cleanup_crit_edge, label %for.body.lr.ph

list_add_tail.exit.cleanup_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

for.body.lr.ph:                                   ; preds = %list_add_tail.exit
  %type.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 6
  %vpd_sn.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 100
  %pci_dev = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 4
  %net_dev43 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %secondary_list = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 3
  %prev.i184 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 3, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn170.in228 = phi ptr [ %12, %for.body.lr.ph ], [ %.pn170230, %for.inc.for.body_crit_edge ]
  %13 = ptrtoint ptr %.pn170.in228 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn170230 = load ptr, ptr %.pn170.in228, align 16
  %14 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %type.i, align 4
  %type1.i = getelementptr i8, ptr %.pn170.in228, i32 28
  %16 = ptrtoint ptr %type1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %type1.i, align 4
  %cmp.i = icmp eq ptr %15, %17
  br i1 %cmp.i, label %land.lhs.true.i, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc

land.lhs.true.i:                                  ; preds = %for.body
  %18 = ptrtoint ptr %vpd_sn.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vpd_sn.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %land.lhs.true.i.for.inc_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %vpd_sn3.i = getelementptr i8, ptr %.pn170.in228, i32 2636
  %20 = ptrtoint ptr %vpd_sn3.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vpd_sn3.i, align 4
  %tobool4.not.i = icmp eq ptr %21, null
  br i1 %tobool4.not.i, label %land.lhs.true2.i.for.inc_crit_edge, label %ef4_same_controller.exit

land.lhs.true2.i.for.inc_crit_edge:               ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc

ef4_same_controller.exit:                         ; preds = %land.lhs.true2.i
  %call.i = tail call i32 @strcmp(ptr noundef nonnull %19, ptr noundef nonnull %21) #27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool7.not.i, label %if.then21, label %ef4_same_controller.exit.for.inc_crit_edge

ef4_same_controller.exit.for.inc_crit_edge:       ; preds = %ef4_same_controller.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc

if.then21:                                        ; preds = %ef4_same_controller.exit
  %call.i.i181 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn170.in228) #22
  br i1 %call.i.i181, label %if.end.i.i182, label %if.then21.list_del.exit_crit_edge

if.then21.list_del.exit_crit_edge:                ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #24
  br label %list_del.exit

if.end.i.i182:                                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #24
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn170.in228, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i, align 4
  %24 = ptrtoint ptr %.pn170.in228 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %.pn170.in228, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i182, %if.then21.list_del.exit_crit_edge
  %28 = ptrtoint ptr %.pn170.in228 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn170.in228, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn170.in228, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %msg_enable24 = getelementptr i8, ptr %.pn170.in228, i32 136
  %30 = ptrtoint ptr %msg_enable24 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %msg_enable24, align 8
  %and25 = and i32 %31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %list_del.exit.do.end49_crit_edge, label %do.body28

list_del.exit.do.end49_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end49

do.body28:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_associate.__UNIQUE_ID_ddebug561, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_associate, %if.then40)) #22
          to label %do.end49 [label %if.then40], !srcloc !536

if.then40:                                        ; preds = %do.body28
  %net_dev41 = getelementptr i8, ptr %.pn170.in228, i32 2252
  %32 = ptrtoint ptr %net_dev41 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %net_dev41, align 4
  %34 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pci_dev, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44, i32 3
  %36 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %37, null
  br i1 %tobool.not.i.i, label %if.end.i.i183, label %if.then40.pci_name.exit_crit_edge

if.then40.pci_name.exit_crit_edge:                ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #24
  br label %pci_name.exit

if.end.i.i183:                                    ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #24
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  %38 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i183, %if.then40.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %39, %if.end.i.i183 ], [ %37, %if.then40.pci_name.exit_crit_edge ]
  %40 = ptrtoint ptr %net_dev43 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %net_dev43, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_associate.__UNIQUE_ID_ddebug561, ptr noundef %33, ptr noundef nonnull @.str.188, ptr noundef %retval.0.i.i, ptr noundef %41) #22
  br label %do.end49

do.end49:                                         ; preds = %pci_name.exit, %do.body28, %list_del.exit.do.end49_crit_edge
  %42 = ptrtoint ptr %prev.i184 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i184, align 4
  %call.i.i185 = tail call zeroext i1 @__list_add_valid(ptr noundef %.pn170.in228, ptr noundef %43, ptr noundef %secondary_list) #22
  br i1 %call.i.i185, label %if.end.i.i187, label %do.end49.list_add_tail.exit188_crit_edge

do.end49.list_add_tail.exit188_crit_edge:         ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #24
  br label %list_add_tail.exit188

if.end.i.i187:                                    ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #24
  %44 = ptrtoint ptr %prev.i184 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %.pn170.in228, ptr %prev.i184, align 4
  %45 = ptrtoint ptr %.pn170.in228 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %secondary_list, ptr %.pn170.in228, align 4
  %46 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev.i, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %.pn170.in228, ptr %43, align 4
  br label %list_add_tail.exit188

list_add_tail.exit188:                            ; preds = %if.end.i.i187, %do.end49.list_add_tail.exit188_crit_edge
  %primary51 = getelementptr i8, ptr %.pn170.in228, i32 8
  %48 = ptrtoint ptr %primary51 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %efx, ptr %primary51, align 8
  br label %for.inc

for.inc:                                          ; preds = %list_add_tail.exit188, %ef4_same_controller.exit.for.inc_crit_edge, %land.lhs.true2.i.for.inc_crit_edge, %land.lhs.true.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp17.not = icmp eq ptr %.pn170230, @ef4_unassociated_list
  br i1 %cmp17.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

for.body66:                                       ; preds = %for.cond61.backedge.for.body66_crit_edge, %for.body66.lr.ph
  %.pn225 = phi ptr [ %.pn223, %for.body66.lr.ph ], [ %.pn, %for.cond61.backedge.for.body66_crit_edge ]
  %type1.i190 = getelementptr i8, ptr %.pn225, i32 28
  %49 = ptrtoint ptr %type1.i190 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %type1.i190, align 4
  %cmp.i191 = icmp eq ptr %3, %50
  br i1 %cmp.i191, label %land.lhs.true.i194, label %for.body66.for.cond61.backedge_crit_edge

for.body66.for.cond61.backedge_crit_edge:         ; preds = %for.body66
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.cond61.backedge

land.lhs.true.i194:                               ; preds = %for.body66
  %51 = ptrtoint ptr %vpd_sn.i192 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %vpd_sn.i192, align 4
  %tobool.not.i193 = icmp eq ptr %52, null
  br i1 %tobool.not.i193, label %land.lhs.true.i194.for.cond61.backedge_crit_edge, label %land.lhs.true2.i197

land.lhs.true.i194.for.cond61.backedge_crit_edge: ; preds = %land.lhs.true.i194
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.cond61.backedge

land.lhs.true2.i197:                              ; preds = %land.lhs.true.i194
  %vpd_sn3.i195 = getelementptr i8, ptr %.pn225, i32 2636
  %53 = ptrtoint ptr %vpd_sn3.i195 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %vpd_sn3.i195, align 4
  %tobool4.not.i196 = icmp eq ptr %54, null
  br i1 %tobool4.not.i196, label %land.lhs.true2.i197.for.cond61.backedge_crit_edge, label %land.rhs.i200

land.lhs.true2.i197.for.cond61.backedge_crit_edge: ; preds = %land.lhs.true2.i197
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.cond61.backedge

land.rhs.i200:                                    ; preds = %land.lhs.true2.i197
  %call.i198 = tail call i32 @strcmp(ptr noundef nonnull %52, ptr noundef nonnull %54) #27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i198)
  %tobool7.not.i199 = icmp eq i32 %call.i198, 0
  br i1 %tobool7.not.i199, label %do.body69, label %land.rhs.i200.for.cond61.backedge_crit_edge

land.rhs.i200.for.cond61.backedge_crit_edge:      ; preds = %land.rhs.i200
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.cond61.backedge

for.cond61.backedge:                              ; preds = %land.rhs.i200.for.cond61.backedge_crit_edge, %land.lhs.true2.i197.for.cond61.backedge_crit_edge, %land.lhs.true.i194.for.cond61.backedge_crit_edge, %for.body66.for.cond61.backedge_crit_edge
  %55 = ptrtoint ptr %.pn225 to i32
  call void @__asan_load4_noabort(i32 %55)
  %.pn = load ptr, ptr %.pn225, align 4
  %cmp63.not = icmp eq ptr %.pn, @ef4_primary_list
  br i1 %cmp63.not, label %for.cond61.backedge.do.body110_crit_edge, label %for.cond61.backedge.for.body66_crit_edge

for.cond61.backedge.for.body66_crit_edge:         ; preds = %for.cond61.backedge
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body66

for.cond61.backedge.do.body110_crit_edge:         ; preds = %for.cond61.backedge
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body110

do.body69:                                        ; preds = %land.rhs.i200
  %other.1.le = getelementptr i8, ptr %.pn225, i32 -16
  %msg_enable70 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %56 = ptrtoint ptr %msg_enable70 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %msg_enable70, align 8
  %and71 = and i32 %57, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %do.body69.do.end98_crit_edge, label %do.body74

do.body69.do.end98_crit_edge:                     ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end98

do.body74:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_associate.__UNIQUE_ID_ddebug562, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_associate, %if.then86)) #22
          to label %do.end98 [label %if.then86], !srcloc !536

if.then86:                                        ; preds = %do.body74
  %net_dev87 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %58 = ptrtoint ptr %net_dev87 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %net_dev87, align 4
  %pci_dev88 = getelementptr i8, ptr %.pn225, i32 20
  %60 = ptrtoint ptr %pci_dev88 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pci_dev88, align 4
  %init_name.i.i202 = getelementptr inbounds %struct.pci_dev, ptr %61, i32 0, i32 44, i32 3
  %62 = ptrtoint ptr %init_name.i.i202 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %init_name.i.i202, align 8
  %tobool.not.i.i203 = icmp eq ptr %63, null
  br i1 %tobool.not.i.i203, label %if.end.i.i205, label %if.then86.pci_name.exit207_crit_edge

if.then86.pci_name.exit207_crit_edge:             ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #24
  br label %pci_name.exit207

if.end.i.i205:                                    ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #24
  %dev.i204 = getelementptr inbounds %struct.pci_dev, ptr %61, i32 0, i32 44
  %64 = ptrtoint ptr %dev.i204 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev.i204, align 4
  br label %pci_name.exit207

pci_name.exit207:                                 ; preds = %if.end.i.i205, %if.then86.pci_name.exit207_crit_edge
  %retval.0.i.i206 = phi ptr [ %65, %if.end.i.i205 ], [ %63, %if.then86.pci_name.exit207_crit_edge ]
  %net_dev90 = getelementptr i8, ptr %.pn225, i32 2252
  %66 = ptrtoint ptr %net_dev90 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %net_dev90, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_associate.__UNIQUE_ID_ddebug562, ptr noundef %59, ptr noundef nonnull @.str.189, ptr noundef %retval.0.i.i206, ptr noundef %67) #22
  br label %do.end98

do.end98:                                         ; preds = %pci_name.exit207, %do.body74, %do.body69.do.end98_crit_edge
  %node99 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 1
  %secondary_list100 = getelementptr i8, ptr %.pn225, i32 12
  %prev.i208 = getelementptr i8, ptr %.pn225, i32 16
  %68 = ptrtoint ptr %prev.i208 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %prev.i208, align 4
  %call.i.i209 = tail call zeroext i1 @__list_add_valid(ptr noundef %node99, ptr noundef %69, ptr noundef %secondary_list100) #22
  br i1 %call.i.i209, label %if.end.i.i211, label %do.end98.list_add_tail.exit212_crit_edge

do.end98.list_add_tail.exit212_crit_edge:         ; preds = %do.end98
  call void @__sanitizer_cov_trace_pc() #24
  br label %list_add_tail.exit212

if.end.i.i211:                                    ; preds = %do.end98
  call void @__sanitizer_cov_trace_pc() #24
  %70 = ptrtoint ptr %prev.i208 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %node99, ptr %prev.i208, align 4
  %71 = ptrtoint ptr %node99 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %secondary_list100, ptr %node99, align 4
  %prev3.i.i210 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 1, i32 1
  %72 = ptrtoint ptr %prev3.i.i210 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %69, ptr %prev3.i.i210, align 4
  %73 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %node99, ptr %69, align 4
  br label %list_add_tail.exit212

list_add_tail.exit212:                            ; preds = %if.end.i.i211, %do.end98.list_add_tail.exit212_crit_edge
  %74 = ptrtoint ptr %primary to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %other.1.le, ptr %primary, align 8
  br label %cleanup

do.body110:                                       ; preds = %for.cond61.backedge.do.body110_crit_edge, %for.cond61.preheader.do.body110_crit_edge
  %msg_enable111 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %75 = ptrtoint ptr %msg_enable111 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %msg_enable111, align 8
  %and112 = and i32 %76, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112)
  %tobool113.not = icmp eq i32 %and112, 0
  br i1 %tobool113.not, label %do.body110.do.end134_crit_edge, label %do.body115

do.body110.do.end134_crit_edge:                   ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end134

do.body115:                                       ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_associate.__UNIQUE_ID_ddebug563, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_associate, %if.then127)) #22
          to label %do.end134 [label %if.then127], !srcloc !536

if.then127:                                       ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #24
  %net_dev128 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %77 = ptrtoint ptr %net_dev128 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %net_dev128, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_associate.__UNIQUE_ID_ddebug563, ptr noundef %78, ptr noundef nonnull @.str.190) #22
  br label %do.end134

do.end134:                                        ; preds = %if.then127, %do.body115, %do.body110.do.end134_crit_edge
  %node135 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 1
  %79 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @ef4_unassociated_list, i32 0, i32 1), align 4
  %call.i.i213 = tail call zeroext i1 @__list_add_valid(ptr noundef %node135, ptr noundef %79, ptr noundef nonnull @ef4_unassociated_list) #22
  br i1 %call.i.i213, label %if.end.i.i215, label %do.end134.cleanup_crit_edge

do.end134.cleanup_crit_edge:                      ; preds = %do.end134
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end.i.i215:                                    ; preds = %do.end134
  call void @__sanitizer_cov_trace_pc() #24
  store ptr %node135, ptr getelementptr inbounds (%struct.list_head, ptr @ef4_unassociated_list, i32 0, i32 1), align 4
  %80 = ptrtoint ptr %node135 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @ef4_unassociated_list, ptr %node135, align 4
  %prev3.i.i214 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 1, i32 1
  %81 = ptrtoint ptr %prev3.i.i214 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %79, ptr %prev3.i.i214, align 4
  %82 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %node135, ptr %79, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i215, %do.end134.cleanup_crit_edge, %list_add_tail.exit212, %for.inc.cleanup_crit_edge, %list_add_tail.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ef4_dissociate(ptr noundef %efx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %node = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #22
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %prev.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %node, align 4
  %prev.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %primary = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 2
  %8 = ptrtoint ptr %primary to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %primary, align 8
  %secondary_list = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 3
  %9 = ptrtoint ptr %secondary_list to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %secondary_list, align 4
  %cmp.not48 = icmp eq ptr %10, %secondary_list
  br i1 %cmp.not48, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %list_del.exit.for.body_crit_edge
  %.pn.in49 = phi ptr [ %.pn51, %list_add_tail.exit.for.body_crit_edge ], [ %10, %list_del.exit.for.body_crit_edge ]
  %11 = ptrtoint ptr %.pn.in49 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn51 = load ptr, ptr %.pn.in49, align 16
  %call.i.i38 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in49) #22
  br i1 %call.i.i38, label %if.end.i.i41, label %for.body.list_del.exit43_crit_edge

for.body.list_del.exit43_crit_edge:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %list_del.exit43

if.end.i.i41:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  %prev.i.i39 = getelementptr inbounds %struct.list_head, ptr %.pn.in49, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i39 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i39, align 4
  %14 = ptrtoint ptr %.pn.in49 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %.pn.in49, align 4
  %prev1.i.i.i40 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i40 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i40, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del.exit43

list_del.exit43:                                  ; preds = %if.end.i.i41, %for.body.list_del.exit43_crit_edge
  %18 = ptrtoint ptr %.pn.in49 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in49, align 4
  %prev.i42 = getelementptr inbounds %struct.list_head, ptr %.pn.in49, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i42 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i42, align 4
  %msg_enable = getelementptr i8, ptr %.pn.in49, i32 136
  %20 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %msg_enable, align 8
  %and = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %list_del.exit43.do.end19_crit_edge, label %do.body10

list_del.exit43.do.end19_crit_edge:               ; preds = %list_del.exit43
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end19

do.body10:                                        ; preds = %list_del.exit43
  call void @__sanitizer_cov_trace_pc() #24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_dissociate.__UNIQUE_ID_ddebug564, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_dissociate, %if.then16)) #22
          to label %do.end19 [label %if.then16], !srcloc !536

if.then16:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #24
  %net_dev = getelementptr i8, ptr %.pn.in49, i32 2252
  %22 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_dissociate.__UNIQUE_ID_ddebug564, ptr noundef %23, ptr noundef nonnull @.str.194) #22
  br label %do.end19

do.end19:                                         ; preds = %if.then16, %do.body10, %list_del.exit43.do.end19_crit_edge
  %24 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @ef4_unassociated_list, i32 0, i32 1), align 4
  %call.i.i44 = tail call zeroext i1 @__list_add_valid(ptr noundef %.pn.in49, ptr noundef %24, ptr noundef nonnull @ef4_unassociated_list) #22
  br i1 %call.i.i44, label %if.end.i.i45, label %do.end19.list_add_tail.exit_crit_edge

do.end19.list_add_tail.exit_crit_edge:            ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #24
  br label %list_add_tail.exit

if.end.i.i45:                                     ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #24
  store ptr %.pn.in49, ptr getelementptr inbounds (%struct.list_head, ptr @ef4_unassociated_list, i32 0, i32 1), align 4
  %25 = ptrtoint ptr %.pn.in49 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @ef4_unassociated_list, ptr %.pn.in49, align 4
  %26 = ptrtoint ptr %prev.i42 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %24, ptr %prev.i42, align 4
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %.pn.in49, ptr %24, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i45, %do.end19.list_add_tail.exit_crit_edge
  %primary21 = getelementptr i8, ptr %.pn.in49, i32 8
  %28 = ptrtoint ptr %primary21 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %primary21, align 8
  %cmp.not = icmp eq ptr %.pn51, %secondary_list
  br i1 %cmp.not, label %list_add_tail.exit.for.end_crit_edge, label %list_add_tail.exit.for.body_crit_edge

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body

list_add_tail.exit.for.end_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

for.end:                                          ; preds = %list_add_tail.exit.for.end_crit_edge, %list_del.exit.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ef4_hard_start_xmit(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ef4_set_rx_mode(ptr noundef %net_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %port_enabled = getelementptr i8, ptr %net_dev, i32 4568
  %0 = ptrtoint ptr %port_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %port_enabled, align 8, !range !538
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %workqueue = getelementptr i8, ptr %net_dev, i32 2360
  %2 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %workqueue, align 8
  %mac_work = getelementptr i8, ptr %net_dev, i32 4524
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %mac_work) #22
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ef4_set_mac_address(ptr noundef %net_dev, ptr noundef %data) #0 align 64 {
entry:
  %old_addr = alloca [6 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %data, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %old_addr) #22
  %0 = getelementptr inbounds [6 x i8], ptr %old_addr, i32 0, i32 4
  %1 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %sa_data, align 4
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not.i = icmp eq i32 %3, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
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
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body

do.body:                                          ; preds = %is_valid_ether_addr.exit.do.body_crit_edge, %entry.do.body_crit_edge
  %msg_enable = getelementptr i8, ptr %net_dev, i32 2456
  %6 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msg_enable, align 8
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %if.then2

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #24
  %net_dev3 = getelementptr i8, ptr %net_dev, i32 4572
  %8 = ptrtoint ptr %net_dev3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net_dev3, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %9, ptr noundef nonnull @.str.182, ptr noundef %sa_data) #25
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
  tail call void @dev_addr_mod(ptr noundef %net_dev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #22
  %type = getelementptr i8, ptr %net_dev, i32 2348
  %18 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %type, align 4
  %set_mac_address = getelementptr inbounds %struct.ef4_nic_type, ptr %19, i32 0, i32 78
  %20 = ptrtoint ptr %set_mac_address to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %set_mac_address, align 8
  %tobool6.not = icmp eq ptr %21, null
  br i1 %tobool6.not, label %if.end4.if.end15_crit_edge, label %if.then7

if.end4.if.end15_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end15

if.then7:                                         ; preds = %if.end4
  %call10 = tail call i32 %21(ptr noundef %add.ptr.i) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then7.if.end15_crit_edge, label %if.then12

if.then7.if.end15_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end15

if.then12:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #24
  call void @dev_addr_mod(ptr noundef %net_dev, i32 noundef 0, ptr noundef nonnull %old_addr, i32 noundef 6) #22
  br label %cleanup

if.end15:                                         ; preds = %if.then7.if.end15_crit_edge, %if.end4.if.end15_crit_edge
  %mac_lock = getelementptr i8, ptr %net_dev, i32 4432
  tail call void @mutex_lock_nested(ptr noundef %mac_lock, i32 noundef 0) #22
  %filter_sem.i = getelementptr i8, ptr %net_dev, i32 4740
  tail call void @down_read(ptr noundef %filter_sem.i) #22
  %22 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %type, align 4
  %reconfigure_mac.i = getelementptr inbounds %struct.ef4_nic_type, ptr %23, i32 0, i32 28
  %24 = ptrtoint ptr %reconfigure_mac.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reconfigure_mac.i, align 8
  %call.i = tail call i32 %25(ptr noundef %add.ptr.i) #22
  tail call void @up_read(ptr noundef %filter_sem.i) #22
  tail call void @mutex_unlock(ptr noundef %mac_lock) #22
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then12, %if.then2, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.then12 ], [ 0, %if.end15 ], [ -99, %if.then2 ], [ -99, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %old_addr) #22
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ef4_ioctl(ptr noundef %net_dev, ptr noundef %ifr, i32 noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %ifr_ifru.i = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %0 = and i32 %cmd, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 35144, i32 %0)
  %switch = icmp eq i32 %0, 35144
  br i1 %switch, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %ifr_ifru.i, align 2
  %3 = and i16 %2, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %3)
  %cmp3 = icmp eq i16 %3, 1024
  br i1 %cmp3, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  %xor = xor i16 %2, -31744
  %4 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %xor, ptr %ifr_ifru.i, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %mdio = getelementptr i8, ptr %net_dev, i32 4632
  %call8 = tail call i32 @mdio_mii_ioctl(ptr noundef %mdio, ptr noundef %ifr_ifru.i, i32 noundef %cmd) #22
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ef4_change_mtu(ptr noundef %net_dev, i32 noundef %new_mtu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %state.i = getelementptr i8, ptr %net_dev, i32 2460
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state.i, align 4
  %2 = and i32 %1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %switch.i = icmp eq i32 %2, 2
  %msg_enable.i = getelementptr i8, ptr %net_dev, i32 2456
  %3 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %msg_enable.i, align 8
  %and.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %switch.i, label %do.body.i, label %do.body

do.body.i:                                        ; preds = %entry
  br i1 %tobool.not.i, label %do.body.i.cleanup_crit_edge, label %if.then3.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.then3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #24
  %net_dev.i = getelementptr i8, ptr %net_dev, i32 4572
  %5 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %net_dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %6, ptr noundef nonnull @.str.69) #25
  br label %cleanup

do.body:                                          ; preds = %entry
  br i1 %tobool.not.i, label %do.body.do.end14_crit_edge, label %do.body4

do.body.do.end14_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end14

do.body4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_change_mtu.__UNIQUE_ID_ddebug585, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_change_mtu, %if.then9)) #22
          to label %do.end14 [label %if.then9], !srcloc !536

if.then9:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #24
  %net_dev10 = getelementptr i8, ptr %net_dev, i32 4572
  %7 = ptrtoint ptr %net_dev10 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %net_dev10, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_change_mtu.__UNIQUE_ID_ddebug585, ptr noundef %8, ptr noundef nonnull @.str.184, i32 noundef %new_mtu) #22
  br label %do.end14

do.end14:                                         ; preds = %if.then9, %do.body4, %do.body.do.end14_crit_edge
  %net_dev.i31 = getelementptr i8, ptr %net_dev, i32 4572
  %9 = ptrtoint ptr %net_dev.i31 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %net_dev.i31, align 4
  tail call fastcc void @local_bh_disable() #22
  tail call void @netif_tx_lock(ptr noundef %10) #22
  tail call void @netif_device_detach(ptr noundef %10) #22
  tail call void @netif_tx_unlock(ptr noundef %10) #22
  tail call fastcc void @local_bh_enable() #22
  tail call fastcc void @ef4_stop_all(ptr noundef %add.ptr.i)
  %mac_lock = getelementptr i8, ptr %net_dev, i32 4432
  tail call void @mutex_lock_nested(ptr noundef %mac_lock, i32 noundef 0) #22
  %mtu = getelementptr inbounds %struct.net_device, ptr %net_dev, i32 0, i32 20
  %11 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %new_mtu, ptr %mtu, align 4
  %filter_sem.i = getelementptr i8, ptr %net_dev, i32 4740
  tail call void @down_read(ptr noundef %filter_sem.i) #22
  %type.i = getelementptr i8, ptr %net_dev, i32 2348
  %12 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %type.i, align 4
  %reconfigure_mac.i = getelementptr inbounds %struct.ef4_nic_type, ptr %13, i32 0, i32 28
  %14 = ptrtoint ptr %reconfigure_mac.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reconfigure_mac.i, align 8
  %call.i = tail call i32 %15(ptr noundef %add.ptr.i) #22
  tail call void @up_read(ptr noundef %filter_sem.i) #22
  tail call void @mutex_unlock(ptr noundef %mac_lock) #22
  tail call fastcc void @ef4_start_all(ptr noundef %add.ptr.i)
  %16 = ptrtoint ptr %net_dev.i31 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %net_dev.i31, align 4
  tail call void @netif_device_attach(ptr noundef %17) #22
  br label %cleanup

cleanup:                                          ; preds = %do.end14, %if.then3.i, %do.body.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end14 ], [ -5, %do.body.i.cleanup_crit_edge ], [ -5, %if.then3.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ef4_watchdog(ptr noundef %net_dev, i32 noundef %txqueue) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %net_dev, i32 2456
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  %and = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %net_dev1 = getelementptr i8, ptr %net_dev, i32 4572
  %2 = ptrtoint ptr %net_dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net_dev1, align 4
  %port_enabled = getelementptr i8, ptr %net_dev, i32 4568
  %4 = ptrtoint ptr %port_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %port_enabled, align 8, !range !538
  %6 = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.185, i32 noundef %6) #25
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  tail call void @ef4_schedule_reset(ptr noundef %add.ptr.i, i32 noundef 8)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ef4_net_stats(ptr noundef %net_dev, ptr noundef %stats) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %stats_lock = getelementptr i8, ptr %net_dev, i32 5140
  tail call void @_raw_spin_lock_bh(ptr noundef %stats_lock) #22
  %type = getelementptr i8, ptr %net_dev, i32 2348
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 4
  %update_stats = getelementptr inbounds %struct.ef4_nic_type, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %update_stats to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %update_stats, align 8
  %call1 = tail call i32 %3(ptr noundef %add.ptr.i, ptr noundef null, ptr noundef %stats) #22
  tail call void @_raw_spin_unlock_bh(ptr noundef %stats_lock) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ef4_setup_tc(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ef4_filter_rfs(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ef4_set_features(ptr noundef %net_dev, i64 noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
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
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end5

if.then:                                          ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %type = getelementptr i8, ptr %net_dev, i32 2348
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type, align 4
  %filter_clear_rx = getelementptr inbounds %struct.ef4_nic_type, ptr %3, i32 0, i32 65
  %4 = ptrtoint ptr %filter_clear_rx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %filter_clear_rx, align 4
  %call2 = tail call i32 %5(ptr noundef %add.ptr.i, i32 noundef 2) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then.if.end5_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end5

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %6 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %features, align 16
  %xor = xor i64 %7, %data
  %and7 = and i64 %xor, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7)
  %tobool8.not = icmp eq i64 %and7, 0
  br i1 %tobool8.not, label %if.end5.cleanup_crit_edge, label %if.then9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.then9:                                         ; preds = %if.end5
  %port_enabled.i = getelementptr i8, ptr %net_dev, i32 4568
  %8 = ptrtoint ptr %port_enabled.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %port_enabled.i, align 8, !range !538
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %if.then9.cleanup_crit_edge, label %if.then.i

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.then.i:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #24
  %workqueue.i = getelementptr i8, ptr %net_dev, i32 2360
  %10 = ptrtoint ptr %workqueue.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %workqueue.i, align 8
  %mac_work.i = getelementptr i8, ptr %net_dev, i32 4524
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %11, ptr noundef %mac_work.i) #22
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ 0, %if.then9.cleanup_crit_edge ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdio_mii_ioctl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #20

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef4_mtd_rename(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #21

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @phy_type_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #18 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %phy_type = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 75
  %2 = ptrtoint ptr %phy_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phy_type, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.192, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdevice_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_vfs_assigned(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef4_mtd_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_disable_pcie_error_reporting(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ef4_io_error_detected(ptr noundef %pdev, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %state)
  %cmp = icmp eq i32 %state, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @rtnl_lock() #22
  %state1 = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp2.not = icmp eq i32 %3, 2
  br i1 %cmp2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  %4 = ptrtoint ptr %state1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 3, ptr %state1, align 4
  %reset_pending = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 22
  %5 = ptrtoint ptr %reset_pending to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %reset_pending, align 32
  %net_dev.i = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 69
  %6 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net_dev.i, align 4
  tail call fastcc void @local_bh_disable() #22
  tail call void @netif_tx_lock(ptr noundef %7) #22
  tail call void @netif_device_detach(ptr noundef %7) #22
  tail call void @netif_tx_unlock(ptr noundef %7) #22
  tail call fastcc void @local_bh_enable() #22
  tail call fastcc void @ef4_stop_all(ptr noundef %1)
  tail call fastcc void @ef4_disable_interrupts(ptr noundef %1)
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %status.0 = phi i32 [ 3, %if.then3 ], [ 5, %if.end.if.end5_crit_edge ]
  tail call void @rtnl_unlock() #22
  tail call void @pci_disable_device(ptr noundef %pdev) #22
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.0, %if.end5 ], [ 4, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ef4_io_slot_reset(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @pci_enable_device(ptr noundef %pdev) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %do.body

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end4

do.body:                                          ; preds = %entry
  %msg_enable = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 8
  %and = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %do.body.if.end4_crit_edge, label %if.then3

do.body.if.end4_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end4

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #24
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 69
  %4 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %5, ptr noundef nonnull @.str.199) #25
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %do.body.if.end4_crit_edge, %entry.if.end4_crit_edge
  %status.0 = phi i32 [ 5, %entry.if.end4_crit_edge ], [ 4, %if.then3 ], [ 4, %do.body.if.end4_crit_edge ]
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ef4_io_resume(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @rtnl_lock() #22
  %state = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %out

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @ef4_reset(ptr noundef %1, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.else, label %do.body

do.body:                                          ; preds = %if.end
  %msg_enable = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable, align 8
  %and = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %do.body.out_crit_edge, label %if.then4

do.body.out_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %out

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #24
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 69
  %6 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %7, ptr noundef nonnull @.str.200, i32 noundef %call1) #25
  br label %out

if.else:                                          ; preds = %if.end
  %8 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %state, align 4
  %msg_enable8 = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 20
  %9 = ptrtoint ptr %msg_enable8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %msg_enable8, align 8
  %and9 = and i32 %10, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.else.out_crit_edge, label %do.body12

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #24
  br label %out

do.body12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_io_resume.__UNIQUE_ID_ddebug597, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_io_resume, %if.then17)) #22
          to label %out [label %if.then17], !srcloc !536

if.then17:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #24
  %net_dev18 = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 69
  %11 = ptrtoint ptr %net_dev18 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %net_dev18, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_io_resume.__UNIQUE_ID_ddebug597, ptr noundef %12, ptr noundef nonnull @.str.202) #22
  br label %out

out:                                              ; preds = %if.then17, %do.body12, %if.else.out_crit_edge, %if.then4, %do.body.out_crit_edge, %entry.out_crit_edge
  tail call void @rtnl_unlock() #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ef4_pm_suspend(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ef4_pm_freeze(ptr noundef %dev)
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -136
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %type.i = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type.i, align 4
  %fini.i = getelementptr inbounds %struct.ef4_nic_type, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %fini.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fini.i, align 8
  tail call void %5(ptr noundef %1) #22
  %reset_pending.i = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 22
  %6 = ptrtoint ptr %reset_pending.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %reset_pending.i, align 32
  %call1.i = tail call i32 @pci_save_state(ptr noundef %add.ptr.i) #22
  %call2.i = tail call i32 @pci_set_power_state(ptr noundef %add.ptr.i, i32 noundef 3) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not = icmp eq i32 %call2.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %call2 = tail call i32 @ef4_pm_resume(ptr noundef %dev)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call2.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ef4_pm_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @pci_set_power_state(ptr noundef %add.ptr, i32 noundef 0) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @pci_restore_state(ptr noundef %add.ptr) #22
  %call2 = tail call i32 @pci_enable_device(ptr noundef %add.ptr) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %pci_dev6 = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %pci_dev6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci_dev6, align 4
  tail call void @pci_set_master(ptr noundef %3) #22
  %type = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %type, align 4
  %reset = getelementptr inbounds %struct.ef4_nic_type, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reset, align 8
  %call7 = tail call i32 %7(ptr noundef %1, i32 noundef 2) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %type, align 4
  %init = getelementptr inbounds %struct.ef4_nic_type, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init, align 8
  %call12 = tail call i32 %11(ptr noundef %1) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #24
  %call16 = tail call i32 @ef4_pm_thaw(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end10.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %if.end15 ], [ %call1, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call7, %if.end5.cleanup_crit_edge ], [ %call12, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ef4_pm_freeze(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @rtnl_lock() #22
  %state = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %state, align 4
  %net_dev.i = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 69
  %5 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %net_dev.i, align 4
  tail call fastcc void @local_bh_disable() #22
  tail call void @netif_tx_lock(ptr noundef %6) #22
  tail call void @netif_device_detach(ptr noundef %6) #22
  tail call void @netif_tx_unlock(ptr noundef %6) #22
  tail call fastcc void @local_bh_enable() #22
  tail call fastcc void @ef4_stop_all(ptr noundef %1)
  tail call fastcc void @ef4_disable_interrupts(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @rtnl_unlock() #22
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ef4_pm_thaw(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @rtnl_lock() #22
  %state = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end6

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc i32 @ef4_enable_interrupts(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %fail

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  %mac_lock = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 64
  tail call void @mutex_lock_nested(ptr noundef %mac_lock, i32 noundef 0) #22
  %phy_op = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 76
  %4 = ptrtoint ptr %phy_op to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy_op, align 16
  %reconfigure = getelementptr inbounds %struct.ef4_phy_operations, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %reconfigure to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reconfigure, align 4
  %call3 = tail call i32 %7(ptr noundef %1) #22
  tail call void @mutex_unlock(ptr noundef %mac_lock) #22
  tail call fastcc void @ef4_start_all(ptr noundef %1)
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 69
  %8 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net_dev, align 4
  tail call void @netif_device_attach(ptr noundef %9) #22
  %10 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %state, align 4
  %type = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %type, align 4
  %resume_wol = getelementptr inbounds %struct.ef4_nic_type, ptr %12, i32 0, i32 32
  %13 = ptrtoint ptr %resume_wol to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %resume_wol, align 8
  tail call void %14(ptr noundef %1) #22
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry.if.end6_crit_edge
  tail call void @rtnl_unlock() #22
  %15 = load ptr, ptr @reset_workqueue, align 4
  %reset_work = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 11
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %15, ptr noundef %reset_work) #22
  br label %cleanup

fail:                                             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @rtnl_unlock() #22
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end6
  %retval.0 = phi i32 [ %call1, %fail ], [ 0, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ef4_pm_poweroff(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %type = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type, align 4
  %fini = getelementptr inbounds %struct.ef4_nic_type, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %fini to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fini, align 8
  tail call void %5(ptr noundef %1) #22
  %reset_pending = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 22
  %6 = ptrtoint ptr %reset_pending to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %reset_pending, align 32
  %call1 = tail call i32 @pci_save_state(ptr noundef %add.ptr) #22
  %call2 = tail call i32 @pci_set_power_state(ptr noundef %add.ptr, i32 noundef 3) #22
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_set_power_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_restore_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_save_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ef4_netdev_event(ptr nocapture noundef readnone %this, i32 noundef %event, ptr nocapture noundef readonly %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev_ops, align 8
  %cmp = icmp eq ptr %3, @ef4_netdev_ops
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %event)
  %cmp1 = icmp eq i32 %event, 11
  %or.cond = and i1 %cmp1, %cmp
  br i1 %or.cond, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

if.then:                                          ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %net_dev.i = getelementptr i8, ptr %1, i32 4572
  %4 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net_dev.i, align 4
  %call.i = tail call ptr @strcpy(ptr noundef %add.ptr.i, ptr noundef %5) #27
  tail call void @ef4_mtd_rename(ptr noundef %add.ptr.i) #22
  %channel1.i.i = getelementptr i8, ptr %1, i32 2468
  %6 = ptrtoint ptr %channel1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %channel1.i.i, align 4
  %tobool.not17.i.i = icmp eq ptr %7, null
  br i1 %tobool.not17.i.i, label %if.then.if.end_crit_edge, label %for.body.lr.ph.i.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

for.body.lr.ph.i.i:                               ; preds = %if.then
  %n_channels.i.i = getelementptr i8, ptr %1, i32 3668
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %cond.end.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %channel.018.i.i = phi ptr [ %7, %for.body.lr.ph.i.i ], [ %19, %cond.end.i.i.for.body.i.i_crit_edge ]
  %type.i.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.018.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %type.i.i, align 8
  %get_name.i.i = getelementptr inbounds %struct.ef4_channel_type, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %get_name.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_name.i.i, align 4
  %channel2.i.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.018.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %channel2.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %channel2.i.i, align 4
  %name.i.i = getelementptr %struct.ef4_nic, ptr %add.ptr.i, i32 0, i32 24, i32 %13, i32 2
  tail call void %11(ptr noundef nonnull %channel.018.i.i, ptr noundef %name.i.i, i32 noundef 22) #22
  %14 = ptrtoint ptr %channel2.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %channel2.i.i, align 4
  %add.i.i = add i32 %15, 1
  %16 = ptrtoint ptr %n_channels.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %n_channels.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %17)
  %cmp.i.i = icmp ult i32 %add.i.i, %17
  br i1 %cmp.i.i, label %cond.end.i.i, label %for.body.i.i.if.end_crit_edge

for.body.i.i.if.end_crit_edge:                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

cond.end.i.i:                                     ; preds = %for.body.i.i
  %arrayidx8.i.i = getelementptr %struct.ef4_nic, ptr %add.ptr.i, i32 0, i32 23, i32 %add.i.i
  %18 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx8.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i, label %cond.end.i.i.if.end_crit_edge, label %cond.end.i.i.for.body.i.i_crit_edge

cond.end.i.i.for.body.i.i_crit_edge:              ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body.i.i

cond.end.i.i.if.end_crit_edge:                    ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

if.end:                                           ; preds = %cond.end.i.i.if.end_crit_edge, %for.body.i.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #22

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #23 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 232)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #23 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 232)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #13 = { nounwind readonly }
attributes #14 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #18 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #19 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #20 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #21 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #22 = { nounwind }
attributes #23 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #24 = { nomerge }
attributes #25 = { cold nounwind }
attributes #26 = { nounwind allocsize(2) }
attributes #27 = { nobuiltin nounwind }
attributes #28 = { nounwind allocsize(0) }
attributes #29 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !87, !89, !91, !92, !94, !96, !97, !99, !101, !102, !104, !106, !107, !109, !111, !112, !114, !116, !117, !118, !119, !120, !122, !124, !125, !126, !128, !130, !131, !133, !135, !137, !138, !139, !141, !142, !143, !145, !147, !149, !151, !153, !154, !156, !158, !160, !161, !162, !164, !165, !166, !168, !169, !171, !172, !174, !175, !177, !179, !180, !181, !182, !184, !186, !188, !190, !192, !193, !195, !196, !197, !198, !200, !202, !204, !206, !208, !209, !210, !211, !212, !214, !215, !217, !218, !220, !222, !224, !225, !226, !228, !229, !230, !232, !233, !234, !236, !237, !238, !240, !241, !242, !244, !245, !246, !248, !250, !251, !252, !254, !255, !256, !258, !259, !261, !263, !265, !266, !267, !269, !271, !273, !275, !277, !278, !279, !281, !282, !284, !286, !288, !290, !291, !292, !294, !296, !298, !299, !301, !302, !304, !305, !307, !308, !309, !310, !312, !313, !314, !315, !317, !318, !320, !321, !323, !324, !326, !327, !329, !331, !333, !335, !336, !338, !340, !342, !344, !346, !348, !350, !351, !352, !353, !354, !355, !357, !359, !360, !361, !363, !364, !365, !366, !368, !370, !371, !372, !374, !375, !376, !378, !380, !382, !383, !385, !387, !389, !391, !392, !394, !396, !398, !400, !402, !403, !404, !406, !408, !410, !412, !414, !416, !418, !419, !420, !422, !423, !425, !427, !429, !430, !431, !433, !434, !436, !437, !439, !441, !442, !443, !445, !446, !447, !449, !450, !451, !453, !454, !455, !457, !459, !461, !463, !465, !467, !468, !469, !471, !473, !474, !475, !477, !478, !480, !481, !483, !484, !486, !488, !490, !491, !493, !495, !496, !497, !499, !500, !501, !503, !504, !505, !507, !509, !511, !513, !514, !515, !517, !519, !521, !522, !523, !524}
!llvm.named.register.sp = !{!526}
!llvm.module.flags = !{!527, !528, !529, !530, !531, !532, !533, !534}
!llvm.ident = !{!535}

!0 = !{ptr @ef4_loopback_mode_max, !1, !"ef4_loopback_mode_max", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 37, i32 20}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 39, i32 21}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 40, i32 21}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 41, i32 21}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 42, i32 21}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 43, i32 21}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 44, i32 21}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 45, i32 21}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 46, i32 21}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 47, i32 21}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 48, i32 20}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 49, i32 24}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 50, i32 24}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 51, i32 25}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 52, i32 23}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 53, i32 21}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 54, i32 21}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 55, i32 20}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 56, i32 22}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 57, i32 21}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 58, i32 24}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 59, i32 23}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 60, i32 28}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 61, i32 28}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 62, i32 23}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 63, i32 22}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 64, i32 26}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 65, i32 24}
!56 = !{ptr @ef4_loopback_mode_names, !57, !"ef4_loopback_mode_names", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 38, i32 19}
!58 = !{ptr @ef4_reset_type_max, !59, !"ef4_reset_type_max", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 68, i32 20}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 70, i32 36}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 72, i32 36}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 71, i32 36}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 73, i32 36}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 74, i32 36}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 76, i32 36}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 77, i32 36}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 78, i32 36}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 79, i32 36}
!78 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 80, i32 36}
!80 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 81, i32 36}
!82 = !{ptr @ef4_reset_type_names, !83, !"ef4_reset_type_names", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 69, i32 19}
!84 = !{ptr @__param_ef4_separate_tx_channels, !85, !"__param_ef4_separate_tx_channels", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 111, i32 1}
!86 = !{ptr @__UNIQUE_ID_ef4_separate_tx_channelstype522, !85, !"__UNIQUE_ID_ef4_separate_tx_channelstype522", i1 false, i1 false}
!87 = !{ptr @__UNIQUE_ID_ef4_separate_tx_channels523, !88, !"__UNIQUE_ID_ef4_separate_tx_channels523", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 112, i32 1}
!89 = !{ptr @__param_rss_cpus, !90, !"__param_rss_cpus", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 164, i32 1}
!91 = !{ptr @__UNIQUE_ID_rss_cpustype524, !90, !"__UNIQUE_ID_rss_cpustype524", i1 false, i1 false}
!92 = !{ptr @__UNIQUE_ID_rss_cpus525, !93, !"__UNIQUE_ID_rss_cpus525", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 165, i32 1}
!94 = !{ptr @__param_phy_flash_cfg, !95, !"__param_phy_flash_cfg", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 168, i32 1}
!96 = !{ptr @__UNIQUE_ID_phy_flash_cfgtype526, !95, !"__UNIQUE_ID_phy_flash_cfgtype526", i1 false, i1 false}
!97 = !{ptr @__UNIQUE_ID_phy_flash_cfg527, !98, !"__UNIQUE_ID_phy_flash_cfg527", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 169, i32 1}
!99 = !{ptr @__param_irq_adapt_low_thresh, !100, !"__param_irq_adapt_low_thresh", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 172, i32 1}
!101 = !{ptr @__UNIQUE_ID_irq_adapt_low_threshtype528, !100, !"__UNIQUE_ID_irq_adapt_low_threshtype528", i1 false, i1 false}
!102 = !{ptr @__UNIQUE_ID_irq_adapt_low_thresh529, !103, !"__UNIQUE_ID_irq_adapt_low_thresh529", i1 false, i1 false}
!103 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 173, i32 1}
!104 = !{ptr @__param_irq_adapt_high_thresh, !105, !"__param_irq_adapt_high_thresh", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 177, i32 1}
!106 = !{ptr @__UNIQUE_ID_irq_adapt_high_threshtype530, !105, !"__UNIQUE_ID_irq_adapt_high_threshtype530", i1 false, i1 false}
!107 = !{ptr @__UNIQUE_ID_irq_adapt_high_thresh531, !108, !"__UNIQUE_ID_irq_adapt_high_thresh531", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 178, i32 1}
!109 = !{ptr @__param_debug, !110, !"__param_debug", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 185, i32 1}
!111 = !{ptr @__UNIQUE_ID_debugtype532, !110, !"__UNIQUE_ID_debugtype532", i1 false, i1 false}
!112 = !{ptr @__UNIQUE_ID_debug533, !113, !"__UNIQUE_ID_debug533", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 186, i32 1}
!114 = !{ptr @.str.38, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 376, i32 2}
!116 = !{ptr @.str.39, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.40, !115, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.41, !115, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @ef4_start_eventq.__UNIQUE_ID_ddebug538, !115, !"__UNIQUE_ID_ddebug538", i1 false, i1 false}
!120 = !{ptr @.str.42, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 850, i32 3}
!122 = !{ptr @.str.43, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 923, i32 3}
!124 = !{ptr @.str.44, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @.str.45, !123, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @.str.46, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 928, i32 3}
!128 = distinct !{null, !129, !"__already_done", i1 false, i1 false}
!129 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 1006, i32 2}
!130 = !{ptr @.str.47, !129, !"<string literal>", i1 false, i1 false}
!131 = distinct !{null, !132, !"__already_done", i1 false, i1 false}
!132 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 1911, i32 2}
!133 = !{ptr @.str.48, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 1920, i32 3}
!135 = !{ptr @.str.49, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 2060, i32 2}
!137 = !{ptr @.str.50, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @ef4_net_open.__UNIQUE_ID_ddebug583, !136, !"__UNIQUE_ID_ddebug583", i1 false, i1 false}
!139 = !{ptr @.str.51, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 2086, i32 2}
!141 = !{ptr @.str.52, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @ef4_net_stop.__UNIQUE_ID_ddebug584, !140, !"__UNIQUE_ID_ddebug584", i1 false, i1 false}
!143 = distinct !{null, !144, !"__already_done", i1 false, i1 false}
!144 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 2354, i32 2}
!145 = distinct !{null, !146, !"__already_done", i1 false, i1 false}
!146 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 2375, i32 2}
!147 = !{ptr @.str.53, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 2380, i32 3}
!149 = !{ptr @.str.54, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 2394, i32 4}
!151 = !{ptr @.str.55, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 2430, i32 2}
!153 = !{ptr @.str.56, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @.str.57, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 2438, i32 3}
!156 = !{ptr @.str.58, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 2470, i32 3}
!158 = !{ptr @.str.59, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 2473, i32 3}
!160 = !{ptr @.str.60, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @ef4_reset.__UNIQUE_ID_ddebug586, !159, !"__UNIQUE_ID_ddebug586", i1 false, i1 false}
!162 = !{ptr @.str.61, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 2540, i32 3}
!164 = !{ptr @.str.62, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @ef4_schedule_reset.__UNIQUE_ID_ddebug588, !163, !"__UNIQUE_ID_ddebug588", i1 false, i1 false}
!166 = !{ptr @.str.63, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 2555, i32 3}
!168 = !{ptr @ef4_schedule_reset.__UNIQUE_ID_ddebug589, !167, !"__UNIQUE_ID_ddebug589", i1 false, i1 false}
!169 = !{ptr @.str.64, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 2560, i32 3}
!171 = !{ptr @ef4_schedule_reset.__UNIQUE_ID_ddebug590, !170, !"__UNIQUE_ID_ddebug590", i1 false, i1 false}
!172 = !{ptr @__param_interrupt_mode, !173, !"__param_interrupt_mode", i1 false, i1 false}
!173 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 3179, i32 1}
!174 = !{ptr @__UNIQUE_ID_interrupt_modetype598, !173, !"__UNIQUE_ID_interrupt_modetype598", i1 false, i1 false}
!175 = !{ptr @__UNIQUE_ID_interrupt_mode599, !176, !"__UNIQUE_ID_interrupt_mode599", i1 false, i1 false}
!176 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 3180, i32 1}
!177 = !{ptr @.str.65, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 3215, i32 2}
!179 = !{ptr @.str.66, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @ef4_exit_module._entry, !178, !"_entry", i1 false, i1 false}
!181 = !{ptr @ef4_exit_module._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @__initcall__kmod_sfc_falcon__600_3223_ef4_init_module6, !183, !"__initcall__kmod_sfc_falcon__600_3223_ef4_init_module6", i1 false, i1 false}
!183 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 3223, i32 1}
!184 = !{ptr @__exitcall_ef4_exit_module, !185, !"__exitcall_ef4_exit_module", i1 false, i1 false}
!185 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 3224, i32 1}
!186 = !{ptr @__UNIQUE_ID_author601, !187, !"__UNIQUE_ID_author601", i1 false, i1 false}
!187 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 3226, i32 1}
!188 = !{ptr @__UNIQUE_ID_description602, !189, !"__UNIQUE_ID_description602", i1 false, i1 false}
!189 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 3228, i32 1}
!190 = !{ptr @__UNIQUE_ID_file603, !191, !"__UNIQUE_ID_file603", i1 false, i1 false}
!191 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 3229, i32 1}
!192 = !{ptr @__UNIQUE_ID_license604, !191, !"__UNIQUE_ID_license604", i1 false, i1 false}
!193 = !{ptr @__UNIQUE_ID_version605, !194, !"__UNIQUE_ID_version605", i1 false, i1 false}
!194 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 3231, i32 1}
!195 = !{ptr @.str.67, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @.str.68, !194, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @__modver_attr, !194, !"__modver_attr", i1 false, i1 false}
!198 = !{ptr @reset_workqueue, !199, !"reset_workqueue", i1 false, i1 false}
!199 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 88, i32 33}
!200 = !{ptr @ef4_separate_tx_channels, !201, !"ef4_separate_tx_channels", i1 false, i1 false}
!201 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 110, i32 6}
!202 = !{ptr @interrupt_mode, !203, !"interrupt_mode", i1 false, i1 false}
!203 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 154, i32 21}
!204 = !{ptr @rss_cpus, !205, !"rss_cpus", i1 false, i1 false}
!205 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 163, i32 21}
!206 = !{ptr @phy_flash_cfg, !207, !"phy_flash_cfg", i1 false, i1 false}
!207 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 167, i32 13}
!208 = !{ptr @__param_str_ef4_separate_tx_channels, !85, !"__param_str_ef4_separate_tx_channels", i1 false, i1 false}
!209 = !{ptr @__param_str_rss_cpus, !90, !"__param_str_rss_cpus", i1 false, i1 false}
!210 = !{ptr @__param_str_phy_flash_cfg, !95, !"__param_str_phy_flash_cfg", i1 false, i1 false}
!211 = !{ptr @__param_str_irq_adapt_low_thresh, !100, !"__param_str_irq_adapt_low_thresh", i1 false, i1 false}
!212 = !{ptr @irq_adapt_low_thresh, !213, !"irq_adapt_low_thresh", i1 false, i1 false}
!213 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 171, i32 17}
!214 = !{ptr @__param_str_irq_adapt_high_thresh, !105, !"__param_str_irq_adapt_high_thresh", i1 false, i1 false}
!215 = !{ptr @irq_adapt_high_thresh, !216, !"irq_adapt_high_thresh", i1 false, i1 false}
!216 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 176, i32 17}
!217 = !{ptr @__param_str_debug, !110, !"__param_str_debug", i1 false, i1 false}
!218 = !{ptr @debug, !219, !"debug", i1 false, i1 false}
!219 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 181, i32 17}
!220 = !{ptr @.str.69, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 218, i32 3}
!222 = !{ptr @.str.70, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 499, i32 2}
!224 = !{ptr @.str.71, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @ef4_probe_channel.__UNIQUE_ID_ddebug541, !223, !"__UNIQUE_ID_ddebug541", i1 false, i1 false}
!226 = !{ptr @.str.72, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 341, i32 2}
!228 = !{ptr @.str.73, !227, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @ef4_probe_eventq.__UNIQUE_ID_ddebug534, !227, !"__UNIQUE_ID_ddebug534", i1 false, i1 false}
!230 = !{ptr @.str.74, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 744, i32 2}
!232 = !{ptr @.str.75, !231, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @ef4_remove_channel.__UNIQUE_ID_ddebug547, !231, !"__UNIQUE_ID_ddebug547", i1 false, i1 false}
!234 = !{ptr @.str.76, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 411, i32 2}
!236 = !{ptr @.str.77, !235, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @ef4_remove_eventq.__UNIQUE_ID_ddebug540, !235, !"__UNIQUE_ID_ddebug540", i1 false, i1 false}
!238 = !{ptr @.str.78, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 361, i32 2}
!240 = !{ptr @.str.79, !239, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @ef4_init_eventq.__UNIQUE_ID_ddebug537, !239, !"__UNIQUE_ID_ddebug537", i1 false, i1 false}
!242 = !{ptr @.str.80, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 402, i32 2}
!244 = !{ptr @.str.81, !243, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @ef4_fini_eventq.__UNIQUE_ID_ddebug539, !243, !"__UNIQUE_ID_ddebug539", i1 false, i1 false}
!246 = distinct !{null, !247, !"__already_done", i1 false, i1 false}
!247 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 1815, i32 2}
!248 = !{ptr @.str.82, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 1083, i32 2}
!250 = !{ptr @.str.83, !249, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @ef4_start_port.__UNIQUE_ID_ddebug556, !249, !"__UNIQUE_ID_ddebug556", i1 false, i1 false}
!252 = !{ptr @.str.84, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 630, i32 3}
!254 = !{ptr @.str.85, !253, !"<string literal>", i1 false, i1 false}
!255 = !{ptr @ef4_start_datapath.__UNIQUE_ID_ddebug544, !253, !"__UNIQUE_ID_ddebug544", i1 false, i1 false}
!256 = !{ptr @.str.86, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 635, i32 3}
!258 = !{ptr @ef4_start_datapath.__UNIQUE_ID_ddebug545, !257, !"__UNIQUE_ID_ddebug545", i1 false, i1 false}
!259 = distinct !{null, !260, !"ef4_monitor_interval", i1 false, i1 false}
!260 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 128, i32 21}
!261 = distinct !{null, !262, !"__already_done", i1 false, i1 false}
!262 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 1846, i32 2}
!263 = !{ptr @.str.87, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 1102, i32 2}
!265 = !{ptr @.str.88, !264, !"<string literal>", i1 false, i1 false}
!266 = !{ptr @ef4_stop_port.__UNIQUE_ID_ddebug557, !264, !"__UNIQUE_ID_ddebug557", i1 false, i1 false}
!267 = distinct !{null, !268, !"__already_done", i1 false, i1 false}
!268 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 1104, i32 2}
!269 = distinct !{null, !270, !"__already_done", i1 false, i1 false}
!270 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 692, i32 2}
!271 = !{ptr @.str.89, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 721, i32 3}
!273 = !{ptr @.str.90, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 725, i32 3}
!275 = !{ptr @.str.91, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 727, i32 3}
!277 = !{ptr @.str.92, !276, !"<string literal>", i1 false, i1 false}
!278 = !{ptr @ef4_stop_datapath.__UNIQUE_ID_ddebug546, !276, !"__UNIQUE_ID_ddebug546", i1 false, i1 false}
!279 = distinct !{null, !280, !"napi_weight", i1 false, i1 false}
!280 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 118, i32 12}
!281 = !{ptr @__param_str_interrupt_mode, !173, !"__param_str_interrupt_mode", i1 false, i1 false}
!282 = !{ptr @ef4_pci_driver, !283, !"ef4_pci_driver", i1 false, i1 false}
!283 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 3164, i32 26}
!284 = !{ptr @ef4_pci_table, !285, !"ef4_pci_table", i1 false, i1 false}
!285 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 2585, i32 35}
!286 = !{ptr @.str.93, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 2893, i32 2}
!288 = !{ptr @.str.94, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 2926, i32 2}
!290 = !{ptr @.str.95, !289, !"<string literal>", i1 false, i1 false}
!291 = !{ptr @ef4_pci_probe.__UNIQUE_ID_ddebug595, !289, !"__UNIQUE_ID_ddebug595", i1 false, i1 false}
!292 = !{ptr @.str.96, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 2933, i32 3}
!294 = !{ptr @.str.97, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 2938, i32 3}
!296 = !{ptr @.str.98, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 2952, i32 2}
!298 = !{ptr @ef4_pci_probe.__UNIQUE_ID_ddebug596, !297, !"__UNIQUE_ID_ddebug596", i1 false, i1 false}
!299 = !{ptr @ef4_init_struct.__key, !300, !"__key", i1 false, i1 false}
!300 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 2639, i32 2}
!301 = !{ptr @.str.99, !300, !"<string literal>", i1 false, i1 false}
!302 = !{ptr @ef4_init_struct.__key.100, !303, !"__key", i1 false, i1 false}
!303 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 2643, i32 2}
!304 = !{ptr @.str.101, !303, !"<string literal>", i1 false, i1 false}
!305 = !{ptr @ef4_init_struct.__key.102, !306, !"__key", i1 false, i1 false}
!306 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 2644, i32 2}
!307 = !{ptr @.str.103, !306, !"<string literal>", i1 false, i1 false}
!308 = !{ptr @ef4_init_struct.__key.104, !306, !"__key", i1 false, i1 false}
!309 = !{ptr @.str.105, !306, !"<string literal>", i1 false, i1 false}
!310 = !{ptr @ef4_init_struct.__key.106, !311, !"__key", i1 false, i1 false}
!311 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 2645, i32 2}
!312 = !{ptr @.str.107, !311, !"<string literal>", i1 false, i1 false}
!313 = !{ptr @ef4_init_struct.__key.108, !311, !"__key", i1 false, i1 false}
!314 = !{ptr @.str.109, !311, !"<string literal>", i1 false, i1 false}
!315 = !{ptr @ef4_init_struct.__key.110, !316, !"__key", i1 false, i1 false}
!316 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 2659, i32 2}
!317 = !{ptr @.str.111, !316, !"<string literal>", i1 false, i1 false}
!318 = !{ptr @ef4_init_struct.__key.112, !319, !"__key", i1 false, i1 false}
!319 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 2660, i32 2}
!320 = !{ptr @.str.113, !319, !"<string literal>", i1 false, i1 false}
!321 = !{ptr @ef4_init_struct.__key.114, !322, !"__key", i1 false, i1 false}
!322 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 2663, i32 2}
!323 = !{ptr @.str.115, !322, !"<string literal>", i1 false, i1 false}
!324 = !{ptr @ef4_init_struct.__key.116, !325, !"__key", i1 false, i1 false}
!325 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 2664, i32 2}
!326 = !{ptr @.str.117, !325, !"<string literal>", i1 false, i1 false}
!327 = !{ptr @.str.118, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 2679, i32 61}
!329 = !{ptr @.str.119, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 2681, i32 19}
!331 = !{ptr @ef4_dummy_phy_operations, !332, !"ef4_dummy_phy_operations", i1 false, i1 false}
!332 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 2615, i32 40}
!333 = !{ptr @ef4_alloc_channel.__key, !334, !"__key", i1 false, i1 false}
!334 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 449, i32 2}
!335 = !{ptr @.str.120, !334, !"<string literal>", i1 false, i1 false}
!336 = !{ptr @ef4_default_channel_type, !337, !"ef4_default_channel_type", i1 false, i1 false}
!337 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 874, i32 38}
!338 = !{ptr @.str.121, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 538, i32 10}
!340 = !{ptr @.str.122, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 540, i32 10}
!342 = !{ptr @.str.123, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 542, i32 10}
!344 = !{ptr @.str.124, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 545, i32 21}
!346 = !{ptr @ef4_copy_channel.__key, !347, !"__key", i1 false, i1 false}
!347 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 488, i32 2}
!348 = !{ptr @.str.125, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 2790, i32 3}
!350 = !{ptr @.str.126, !349, !"<string literal>", i1 false, i1 false}
!351 = !{ptr @.str.127, !349, !"<string literal>", i1 false, i1 false}
!352 = !{ptr @.str.128, !349, !"<string literal>", i1 false, i1 false}
!353 = !{ptr @ef4_probe_vpd_strings._entry, !349, !"_entry", i1 false, i1 false}
!354 = !{ptr @ef4_probe_vpd_strings._entry_ptr, !349, !"_entry_ptr", i1 false, i1 false}
!355 = !{ptr @.str.129, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 2795, i32 11}
!357 = !{ptr @.str.131, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 2797, i32 3}
!359 = !{ptr @ef4_probe_vpd_strings._entry.130, !358, !"_entry", i1 false, i1 false}
!360 = !{ptr @ef4_probe_vpd_strings._entry_ptr.132, !358, !"_entry_ptr", i1 false, i1 false}
!361 = !{ptr @.str.134, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 2799, i32 3}
!363 = !{ptr @.str.135, !362, !"<string literal>", i1 false, i1 false}
!364 = !{ptr @ef4_probe_vpd_strings._entry.133, !362, !"_entry", i1 false, i1 false}
!365 = !{ptr @ef4_probe_vpd_strings._entry_ptr.136, !362, !"_entry_ptr", i1 false, i1 false}
!366 = !{ptr @.str.137, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 2802, i32 11}
!368 = !{ptr @.str.139, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 2804, i32 3}
!370 = !{ptr @ef4_probe_vpd_strings._entry.138, !369, !"_entry", i1 false, i1 false}
!371 = !{ptr @ef4_probe_vpd_strings._entry_ptr.140, !369, !"_entry_ptr", i1 false, i1 false}
!372 = !{ptr @.str.141, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 1225, i32 2}
!374 = !{ptr @.str.142, !373, !"<string literal>", i1 false, i1 false}
!375 = !{ptr @ef4_init_io.__UNIQUE_ID_ddebug565, !373, !"__UNIQUE_ID_ddebug565", i1 false, i1 false}
!376 = !{ptr @.str.143, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 1231, i32 3}
!378 = !{ptr @.str.144, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 1249, i32 3}
!380 = !{ptr @.str.145, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 1253, i32 2}
!382 = !{ptr @ef4_init_io.__UNIQUE_ID_ddebug566, !381, !"__UNIQUE_ID_ddebug566", i1 false, i1 false}
!383 = !{ptr @.str.146, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 1257, i32 40}
!385 = !{ptr @.str.147, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 1259, i32 3}
!387 = !{ptr @.str.148, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 1266, i32 3}
!389 = !{ptr @.str.149, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 1272, i32 2}
!391 = !{ptr @ef4_init_io.__UNIQUE_ID_ddebug567, !390, !"__UNIQUE_ID_ddebug567", i1 false, i1 false}
!392 = !{ptr @.str.150, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 2835, i32 3}
!394 = !{ptr @.str.151, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 1765, i32 3}
!396 = !{ptr @.str.152, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 1771, i32 3}
!398 = !{ptr @.str.153, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 1784, i32 3}
!400 = !{ptr @.str.154, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 1618, i32 2}
!402 = !{ptr @.str.155, !401, !"<string literal>", i1 false, i1 false}
!403 = !{ptr @ef4_probe_nic.__UNIQUE_ID_ddebug580, !401, !"__UNIQUE_ID_ddebug580", i1 false, i1 false}
!404 = !{ptr @.str.156, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 1627, i32 4}
!406 = !{ptr @.str.157, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 1387, i32 4}
!408 = !{ptr @.str.158, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 1390, i32 4}
!410 = !{ptr @.str.159, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 1393, i32 4}
!412 = !{ptr @.str.160, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 1429, i32 4}
!414 = !{ptr @.str.161, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 1330, i32 4}
!416 = !{ptr @.str.162, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 1348, i32 3}
!418 = !{ptr @.str.163, !417, !"<string literal>", i1 false, i1 false}
!419 = !{ptr @ef4_wanted_parallelism.__UNIQUE_ID_ddebug569, !417, !"__UNIQUE_ID_ddebug569", i1 false, i1 false}
!420 = distinct !{null, !421, !"__already_done", i1 false, i1 false}
!421 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!422 = distinct !{null, !421, !"<string literal>", i1 false, i1 false}
!423 = distinct !{null, !424, !"tx_irq_mod_usec", i1 false, i1 false}
!424 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 147, i32 21}
!425 = distinct !{null, !426, !"rx_irq_mod_usec", i1 false, i1 false}
!426 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 136, i32 21}
!427 = !{ptr @.str.165, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 1032, i32 2}
!429 = !{ptr @.str.166, !428, !"<string literal>", i1 false, i1 false}
!430 = !{ptr @ef4_probe_port.__UNIQUE_ID_ddebug554, !428, !"__UNIQUE_ID_ddebug554", i1 false, i1 false}
!431 = !{ptr @ef4_probe_filters.__key, !432, !"__key", i1 false, i1 false}
!432 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 1688, i32 2}
!433 = !{ptr @.str.167, !432, !"<string literal>", i1 false, i1 false}
!434 = !{ptr @ef4_probe_filters.__key.168, !435, !"__key", i1 false, i1 false}
!435 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 1689, i32 2}
!436 = !{ptr @.str.169, !435, !"<string literal>", i1 false, i1 false}
!437 = !{ptr @.str.170, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 574, i32 4}
!439 = !{ptr @.str.171, !440, !"<string literal>", i1 false, i1 false}
!440 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 1135, i32 2}
!441 = !{ptr @.str.172, !440, !"<string literal>", i1 false, i1 false}
!442 = !{ptr @ef4_remove_port.__UNIQUE_ID_ddebug559, !440, !"__UNIQUE_ID_ddebug559", i1 false, i1 false}
!443 = !{ptr @.str.173, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 1678, i32 2}
!445 = !{ptr @.str.174, !444, !"<string literal>", i1 false, i1 false}
!446 = !{ptr @ef4_remove_nic.__UNIQUE_ID_ddebug581, !444, !"__UNIQUE_ID_ddebug581", i1 false, i1 false}
!447 = !{ptr @.str.175, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 1052, i32 2}
!449 = !{ptr @.str.176, !448, !"<string literal>", i1 false, i1 false}
!450 = !{ptr @ef4_init_port.__UNIQUE_ID_ddebug555, !448, !"__UNIQUE_ID_ddebug555", i1 false, i1 false}
!451 = !{ptr @.str.177, !452, !"<string literal>", i1 false, i1 false}
!452 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 1121, i32 2}
!453 = !{ptr @.str.178, !452, !"<string literal>", i1 false, i1 false}
!454 = !{ptr @ef4_fini_port.__UNIQUE_ID_ddebug558, !452, !"__UNIQUE_ID_ddebug558", i1 false, i1 false}
!455 = !{ptr @.str.179, !456, !"<string literal>", i1 false, i1 false}
!456 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 2283, i32 3}
!457 = !{ptr @.str.180, !458, !"<string literal>", i1 false, i1 false}
!458 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 2313, i32 3}
!459 = !{ptr @.str.181, !460, !"<string literal>", i1 false, i1 false}
!460 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 2326, i32 2}
!461 = !{ptr @ef4_netdev_ops, !462, !"ef4_netdev_ops", i1 false, i1 false}
!462 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 2211, i32 36}
!463 = !{ptr @.str.182, !464, !"<string literal>", i1 false, i1 false}
!464 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 2153, i32 3}
!465 = !{ptr @.str.183, !466, !"<string literal>", i1 false, i1 false}
!466 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 2129, i32 2}
!467 = !{ptr @.str.184, !466, !"<string literal>", i1 false, i1 false}
!468 = !{ptr @ef4_change_mtu.__UNIQUE_ID_ddebug585, !466, !"__UNIQUE_ID_ddebug585", i1 false, i1 false}
!469 = !{ptr @.str.185, !470, !"<string literal>", i1 false, i1 false}
!470 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 2111, i32 2}
!471 = !{ptr @.str.186, !472, !"<string literal>", i1 false, i1 false}
!472 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 1163, i32 3}
!473 = !{ptr @.str.187, !472, !"<string literal>", i1 false, i1 false}
!474 = !{ptr @ef4_associate.__UNIQUE_ID_ddebug560, !472, !"__UNIQUE_ID_ddebug560", i1 false, i1 false}
!475 = !{ptr @.str.188, !476, !"<string literal>", i1 false, i1 false}
!476 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 1170, i32 5}
!477 = !{ptr @ef4_associate.__UNIQUE_ID_ddebug561, !476, !"__UNIQUE_ID_ddebug561", i1 false, i1 false}
!478 = !{ptr @.str.189, !479, !"<string literal>", i1 false, i1 false}
!479 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 1184, i32 5}
!480 = !{ptr @ef4_associate.__UNIQUE_ID_ddebug562, !479, !"__UNIQUE_ID_ddebug562", i1 false, i1 false}
!481 = !{ptr @.str.190, !482, !"<string literal>", i1 false, i1 false}
!482 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 1195, i32 3}
!483 = !{ptr @ef4_associate.__UNIQUE_ID_ddebug563, !482, !"__UNIQUE_ID_ddebug563", i1 false, i1 false}
!484 = !{ptr @ef4_primary_list, !485, !"ef4_primary_list", i1 false, i1 false}
!485 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 1146, i32 8}
!486 = !{ptr @ef4_unassociated_list, !487, !"ef4_unassociated_list", i1 false, i1 false}
!487 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 1147, i32 8}
!488 = !{ptr @.str.191, !489, !"<string literal>", i1 false, i1 false}
!489 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 2258, i32 8}
!490 = !{ptr @dev_attr_phy_type, !489, !"dev_attr_phy_type", i1 false, i1 false}
!491 = !{ptr @.str.192, !492, !"<string literal>", i1 false, i1 false}
!492 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 2256, i32 22}
!493 = !{ptr @.str.193, !494, !"<string literal>", i1 false, i1 false}
!494 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 1210, i32 3}
!495 = !{ptr @.str.194, !494, !"<string literal>", i1 false, i1 false}
!496 = !{ptr @ef4_dissociate.__UNIQUE_ID_ddebug564, !494, !"__UNIQUE_ID_ddebug564", i1 false, i1 false}
!497 = !{ptr @.str.195, !498, !"<string literal>", i1 false, i1 false}
!498 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 1293, i32 2}
!499 = !{ptr @.str.196, !498, !"<string literal>", i1 false, i1 false}
!500 = !{ptr @ef4_fini_io.__UNIQUE_ID_ddebug568, !498, !"__UNIQUE_ID_ddebug568", i1 false, i1 false}
!501 = !{ptr @.str.197, !502, !"<string literal>", i1 false, i1 false}
!502 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 2770, i32 2}
!503 = !{ptr @.str.198, !502, !"<string literal>", i1 false, i1 false}
!504 = !{ptr @ef4_pci_remove.__UNIQUE_ID_ddebug594, !502, !"__UNIQUE_ID_ddebug594", i1 false, i1 false}
!505 = !{ptr @ef4_err_handlers, !506, !"ef4_err_handlers", i1 false, i1 false}
!506 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 3158, i32 40}
!507 = !{ptr @.str.199, !508, !"<string literal>", i1 false, i1 false}
!508 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 3119, i32 3}
!509 = !{ptr @.str.200, !510, !"<string literal>", i1 false, i1 false}
!510 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 3140, i32 3}
!511 = !{ptr @.str.201, !512, !"<string literal>", i1 false, i1 false}
!512 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 3144, i32 3}
!513 = !{ptr @.str.202, !512, !"<string literal>", i1 false, i1 false}
!514 = !{ptr @ef4_io_resume.__UNIQUE_ID_ddebug597, !512, !"__UNIQUE_ID_ddebug597", i1 false, i1 false}
!515 = !{ptr @ef4_pm_ops, !516, !"ef4_pm_ops", i1 false, i1 false}
!516 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 3064, i32 32}
!517 = !{ptr @ef4_netdev_notifier, !518, !"ef4_netdev_notifier", i1 false, i1 false}
!518 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 2248, i32 30}
!519 = !{ptr @.str.203, !520, !"<string literal>", i1 false, i1 false}
!520 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 3187, i32 2}
!521 = !{ptr @.str.204, !520, !"<string literal>", i1 false, i1 false}
!522 = !{ptr @ef4_init_module._entry, !520, !"_entry", i1 false, i1 false}
!523 = !{ptr @ef4_init_module._entry_ptr, !520, !"_entry_ptr", i1 false, i1 false}
!524 = !{ptr @.str.205, !525, !"<string literal>", i1 false, i1 false}
!525 = !{!"../drivers/net/ethernet/sfc/falcon/efx.c", i32 3193, i32 20}
!526 = !{!"sp"}
!527 = !{i32 1, !"wchar_size", i32 2}
!528 = !{i32 1, !"min_enum_size", i32 4}
!529 = !{i32 8, !"branch-target-enforcement", i32 0}
!530 = !{i32 8, !"sign-return-address", i32 0}
!531 = !{i32 8, !"sign-return-address-all", i32 0}
!532 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!533 = !{i32 7, !"uwtable", i32 1}
!534 = !{i32 7, !"frame-pointer", i32 2}
!535 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!536 = !{i64 2149034958, i64 2149034963, i64 2149034976, i64 2149035020, i64 2149035054, i64 2149035075}
!537 = !{i64 2159222803}
!538 = !{i8 0, i8 2}
!539 = !{!"branch_weights", i32 2000, i32 1}
!540 = !{i64 2159360841}
!541 = !{i32 0, i32 33}
!542 = !{!"branch_weights", i32 1, i32 2000}
!543 = !{i64 2159358768, i64 2159359271, i64 2159358805, i64 2159358861, i64 2159358895, i64 2159358919, i64 2159358960, i64 2159358981, i64 2159359009, i64 2159359043}
!544 = !{i64 2159360187}
!545 = !{i64 2159425210}
!546 = !{i64 2159376476, i64 2159376979, i64 2159376513, i64 2159376569, i64 2159376603, i64 2159376627, i64 2159376668, i64 2159376689, i64 2159376717, i64 2159376751}
!547 = !{i64 2159361496, i64 2159361999, i64 2159361533, i64 2159361589, i64 2159361623, i64 2159361647, i64 2159361688, i64 2159361709, i64 2159361737, i64 2159361771}
!548 = !{i64 2159282593, i64 2159283096, i64 2159282630, i64 2159282686, i64 2159282720, i64 2159282744, i64 2159282785, i64 2159282806, i64 2159282834, i64 2159282868}
!549 = !{i64 2148421581, i64 2148421607, i64 2148421636, i64 2148421670, i64 2148421701, i64 2148421724}
!550 = !{i64 2159247367, i64 2159247869, i64 2159247404, i64 2159247460, i64 2159247494, i64 2159247518, i64 2159247559, i64 2159247580, i64 2159247608, i64 2159247642}
!551 = !{i64 2156178347}
!552 = !{!"auto-init"}
!553 = !{i64 2159400332}
!554 = !{i64 2159402665, i64 2159403168, i64 2159402702, i64 2159402758, i64 2159402792, i64 2159402816, i64 2159402857, i64 2159402878, i64 2159402906, i64 2159402940}
!555 = !{i64 2159435681, i64 2159436184, i64 2159435718, i64 2159435774, i64 2159435808, i64 2159435832, i64 2159435873, i64 2159435894, i64 2159435922, i64 2159435956}
!556 = !{i64 2159384832, i64 2159385335, i64 2159384869, i64 2159384925, i64 2159384959, i64 2159384983, i64 2159385024, i64 2159385045, i64 2159385073, i64 2159385107}
