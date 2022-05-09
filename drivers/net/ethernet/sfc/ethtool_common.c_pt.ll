; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/sfc/ethtool_common.c_pt.bc'
source_filename = "../drivers/net/ethernet/sfc/ethtool_common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.efx_sw_stat_desc = type { ptr, i32, i32, ptr }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.150, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.150 = type { ptr }
%struct.ethtool_test = type { i32, i32, i32, i32, [0 x i64] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.144, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.144 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.efx_self_tests = type { i32, i32, i32, [32 x i32], [32 x i32], i32, i32, [20 x i32], [18 x %struct.efx_loopback_self_tests] }
%struct.efx_loopback_self_tests = type { [4 x i32], [4 x i32], i32, i32 }
%struct.efx_nic = type { [16 x i8], %struct.list_head, ptr, %struct.list_head, ptr, i32, ptr, i32, i8, ptr, [16 x i8], %struct.work_struct, i32, ptr, i32, i32, i32, i32, i8, i8, i32, i32, i32, i32, i32, [32 x ptr], [32 x %struct.efx_msi_context], [2 x ptr], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.efx_rss_context, %struct.mutex, i32, i32, i32, i8, i8, %struct.efx_buffer, i32, i32, %struct.delayed_work, %struct.list_head, ptr, ptr, %struct.mutex, %struct.work_struct, i8, i8, i8, ptr, i64, i16, %struct.efx_buffer, i64, i64, i8, i32, ptr, %struct.mdio_if_info, i32, i32, [3 x i32], i32, %struct.efx_link_state, i32, i8, %union.efx_multicast_hash, i8, i32, %struct.atomic_t, i32, i64, ptr, ptr, %struct.rw_semaphore, ptr, %struct.mutex, i32, [8 x %struct.efx_async_filter_insertion], %struct.spinlock, ptr, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, ptr, i8, ptr, i8, %struct.notifier_block, i32, i32, %struct.delayed_work, %struct.spinlock, i32, %struct.spinlock, %struct.atomic_t, [60 x i8] }
%struct.efx_msi_context = type { ptr, i32, [22 x i8] }
%struct.efx_rss_context = type { %struct.list_head, i32, i32, i8, [40 x i8], [128 x i32] }
%struct.efx_buffer = type { ptr, i32, i32 }
%struct.mdio_if_info = type { i32, i32, i32, ptr, ptr, ptr }
%struct.efx_link_state = type { i8, i8, i8, i32 }
%union.efx_multicast_hash = type { [2 x %union.efx_oword] }
%union.efx_oword = type { [2 x i64] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.efx_async_filter_insertion = type { ptr, %struct.efx_filter_spec, %struct.work_struct, i16, i32 }
%struct.efx_filter_spec = type { i32, i32, i16, i16, [6 x i8], [6 x i8], i16, i8, [4 x i32], [4 x i32], i16, i16, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.efx_channel = type { ptr, i32, ptr, i8, i8, i32, i32, ptr, %struct.napi_struct, i32, %struct.efx_special_buffer, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.delayed_work, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.efx_rx_queue, [4 x %struct.efx_tx_queue], [8 x ptr], i32, i32, i32, [84 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.efx_special_buffer = type { %struct.efx_buffer, i32, i32 }
%struct.efx_rx_queue = type { ptr, i32, ptr, %struct.efx_special_buffer, i32, i8, i8, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, [92 x i8], %struct.xdp_rxq_info, i8, [127 x i8] }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.efx_tx_queue = type { ptr, i32, i32, i32, i32, i8, ptr, ptr, ptr, ptr, %struct.efx_special_buffer, i32, ptr, i32, i8, i8, i8, [53 x i8], i32, i32, i32, i32, i32, i32, i32, [100 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, [72 x i8], i32, %struct.atomic_t, [120 x i8] }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }
%struct.efx_nic_type = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i8, i8, i8, i32, i32, i64, i32, i32, i32, i32 }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.143, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.anon.143 = type { [3 x i32], [3 x i32], [3 x i32] }
%struct.ethtool_rxnfc = type { i32, i32, i64, %struct.ethtool_rx_flow_spec, %union.anon.142, [0 x i32] }
%struct.ethtool_rx_flow_spec = type { i32, %union.ethtool_flow_union, %struct.ethtool_flow_ext, %union.ethtool_flow_union, %struct.ethtool_flow_ext, i64, i32 }
%union.ethtool_flow_union = type { %struct.ethtool_tcpip6_spec, [12 x i8] }
%struct.ethtool_tcpip6_spec = type { [4 x i32], [4 x i32], i16, i16, i8 }
%struct.ethtool_flow_ext = type { [2 x i8], [6 x i8], i16, i16, [2 x i32] }
%union.anon.142 = type { i32 }
%struct.ethtool_tcpip4_spec = type { i32, i32, i16, i16, i8 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.ethtool_usrip4_spec = type { i32, i32, i32, i8, i8, i8 }
%struct.ethtool_usrip6_spec = type { [4 x i32], [4 x i32], i32, i8, i8 }

@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sfc\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"starting %sline testing\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed opening device.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s %sline self-tests\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"passed\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"failed\00", [25 x i8] zeroinitializer }, align 32
@efx_ethtool_set_pauseparam.__UNIQUE_ID_ddebug524 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.9, ptr @.str.10, i8 0, i8 50, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"efx_ethtool_set_pauseparam\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/net/ethernet/sfc/ethtool_common.c\00", [54 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Flow control unsupported: tx ON rx OFF\0A\00", [56 x i8] zeroinitializer }, align 32
@efx_ethtool_set_pauseparam.__UNIQUE_ID_ddebug525 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.9, ptr @.str.11, i8 0, i8 52, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Autonegotiation is disabled\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Unable to advertise requested flow control setting\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"phy\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"alive\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"nvram\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"interrupt\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"chan%d\00", [25 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"eventq.dma\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"eventq.int\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"memory\00", [25 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"registers\00", [22 x i8] zeroinitializer }, align 32
@efx_sw_stat_desc = internal constant { [28 x %struct.efx_sw_stat_desc], [96 x i8] } { [28 x %struct.efx_sw_stat_desc] [%struct.efx_sw_stat_desc { ptr @.str.36, i32 2, i32 136, ptr @efx_get_uint_stat }, %struct.efx_sw_stat_desc { ptr @.str.37, i32 2, i32 272, ptr @efx_get_uint_stat }, %struct.efx_sw_stat_desc { ptr @.str.38, i32 2, i32 276, ptr @efx_get_uint_stat }, %struct.efx_sw_stat_desc { ptr @.str.39, i32 2, i32 280, ptr @efx_get_uint_stat }, %struct.efx_sw_stat_desc { ptr @.str.40, i32 2, i32 284, ptr @efx_get_uint_stat }, %struct.efx_sw_stat_desc { ptr @.str.41, i32 2, i32 288, ptr @efx_get_uint_stat }, %struct.efx_sw_stat_desc { ptr @.str.42, i32 2, i32 292, ptr @efx_get_uint_stat }, %struct.efx_sw_stat_desc { ptr @.str.43, i32 2, i32 300, ptr @efx_get_uint_stat }, %struct.efx_sw_stat_desc { ptr @.str.44, i32 0, i32 2592, ptr @efx_get_atomic_stat }, %struct.efx_sw_stat_desc { ptr @.str.45, i32 1, i32 424, ptr @efx_get_uint_stat }, %struct.efx_sw_stat_desc { ptr @.str.46, i32 1, i32 428, ptr @efx_get_uint_stat }, %struct.efx_sw_stat_desc { ptr @.str.47, i32 1, i32 432, ptr @efx_get_uint_stat }, %struct.efx_sw_stat_desc { ptr @.str.48, i32 1, i32 444, ptr @efx_get_uint_stat }, %struct.efx_sw_stat_desc { ptr @.str.49, i32 1, i32 448, ptr @efx_get_uint_stat }, %struct.efx_sw_stat_desc { ptr @.str.50, i32 1, i32 436, ptr @efx_get_uint_stat }, %struct.efx_sw_stat_desc { ptr @.str.51, i32 1, i32 440, ptr @efx_get_uint_stat }, %struct.efx_sw_stat_desc { ptr @.str.52, i32 1, i32 452, ptr @efx_get_uint_stat }, %struct.efx_sw_stat_desc { ptr @.str.53, i32 1, i32 456, ptr @efx_get_uint_stat }, %struct.efx_sw_stat_desc { ptr @.str.54, i32 1, i32 460, ptr @efx_get_uint_stat }, %struct.efx_sw_stat_desc { ptr @.str.55, i32 1, i32 476, ptr @efx_get_uint_stat }, %struct.efx_sw_stat_desc { ptr @.str.56, i32 1, i32 480, ptr @efx_get_uint_stat }, %struct.efx_sw_stat_desc { ptr @.str.57, i32 1, i32 484, ptr @efx_get_uint_stat }, %struct.efx_sw_stat_desc { ptr @.str.58, i32 1, i32 488, ptr @efx_get_uint_stat }, %struct.efx_sw_stat_desc { ptr @.str.59, i32 1, i32 492, ptr @efx_get_uint_stat }, %struct.efx_sw_stat_desc { ptr @.str.60, i32 1, i32 496, ptr @efx_get_uint_stat }, %struct.efx_sw_stat_desc { ptr @.str.61, i32 1, i32 300, ptr @efx_get_uint_stat }, %struct.efx_sw_stat_desc { ptr @.str.62, i32 1, i32 312, ptr @efx_get_uint_stat }, %struct.efx_sw_stat_desc { ptr @.str.63, i32 1, i32 316, ptr @efx_get_uint_stat }], [96 x i8] zeroinitializer }, align 32
@efx_ethtool_set_link_ksettings.__UNIQUE_ID_ddebug526 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.9, ptr @.str.24, i8 0, i8 -108, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"efx_ethtool_set_link_ksettings\00", [33 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"rejecting unsupported 1000Mbps HD setting\0A\00", [53 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%-6s %-24s\00", [21 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"txq%d\00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"loopback.%s.tx_sent\00", [44 x i8] zeroinitializer }, align 32
@efx_loopback_mode_max = external dso_local local_unnamed_addr constant i32, align 4
@efx_loopback_mode_names = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"(invalid)\00", [22 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"loopback.%s.tx_done\00", [44 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"loopback.%s.rx_good\00", [44 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"loopback.%s.rx_bad\00", [45 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tx-%u.tx_packets\00", [47 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx-%d.rx_packets\00", [47 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tx-xdp-cpu-%hu.tx_packets\00", [38 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tx_merge_events\00", [16 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tx_tso_bursts\00", [18 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tx_tso_long_headers\00", [44 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tx_tso_packets\00", [17 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tx_tso_fallbacks\00", [47 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tx_pushes\00", [22 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tx_pio_packets\00", [17 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tx_cb_packets\00", [18 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rx_reset\00", [23 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rx_tobe_disc\00", [19 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rx_ip_hdr_chksum_err\00", [43 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rx_tcp_udp_chksum_err\00", [42 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rx_inner_ip_hdr_chksum_err\00", [37 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rx_inner_tcp_udp_chksum_err\00", [36 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rx_outer_ip_hdr_chksum_err\00", [37 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rx_outer_tcp_udp_chksum_err\00", [36 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rx_eth_crc_err\00", [17 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rx_mcast_mismatch\00", [46 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rx_frm_trunc\00", [19 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rx_merge_events\00", [16 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx_merge_packets\00", [47 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rx_xdp_drops\00", [19 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx_xdp_bad_drops\00", [47 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rx_xdp_tx\00", [22 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rx_xdp_redirect\00", [16 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rfs_filter_count\00", [47 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rfs_succeeded\00", [18 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rfs_failed\00", [21 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.65 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.66 = internal global [7 x i64] [i64 5, i64 32, i64 41, i64 45, i64 46, i64 47, i64 48]
@__sancov_gen_cov_switch_values.67 = internal global [12 x i64] [i64 10, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 16, i64 17]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 32, i64 49, i64 50]
@__sancov_gen_cov_switch_values.71 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 5, i64 6, i64 13, i64 14, i64 18]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.77 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 16777216]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 4095]
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 108, i32 24 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 145, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 153, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 164, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 201, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 208, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 226, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 352, i32 9 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 352, i32 19 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 354, i32 9 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 354, i32 20 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 356, i32 20 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 362, i32 10 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 363, i32 10 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 367, i32 10 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 371, i32 20 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 373, i32 20 }
@___asan_gen_.154 = private unnamed_addr constant [17 x i8] c"efx_sw_stat_desc\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 68, i32 38 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 593, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 277, i32 5 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 311, i32 10 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 312, i32 10 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 316, i32 10 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 320, i32 9 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 321, i32 9 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 325, i32 9 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 408, i32 7 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 421, i32 7 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 433, i32 7 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 69, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 70, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 71, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 72, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 73, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 74, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 75, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 76, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 77, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 78, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 79, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 80, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 81, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 82, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 83, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 84, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 85, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 86, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 87, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 88, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 89, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 90, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 91, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 92, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 93, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 95, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 96, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.278 = private constant [45 x i8] c"../drivers/net/ethernet/sfc/ethtool_common.c\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 97, i32 2 }
@llvm.compiler.used = appending global [65 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @efx_sw_stat_desc, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63], section "llvm.metadata"
@0 = internal global [65 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_sw_stat_desc to i32), i32 448, i32 544, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_ethtool_get_drvinfo(ptr noundef %net_dev, ptr noundef %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call1 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str, i32 noundef 32) #14
  %fw_version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 3
  tail call void @efx_mcdi_print_fwver(ptr noundef %add.ptr.i, ptr noundef %fw_version, i32 noundef 32) #14
  %pci_dev = getelementptr i8, ptr %net_dev, i32 2340
  %0 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_dev, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.pci_name.exit_crit_edge

entry.pci_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %entry.pci_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %call5 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i.i, i32 noundef 32) #14
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_mcdi_print_fwver(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @efx_ethtool_get_msglevel(ptr nocapture noundef readonly %net_dev) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %net_dev, i32 2460
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @efx_ethtool_set_msglevel(ptr nocapture noundef writeonly %net_dev, i32 noundef %msg_enable) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable1 = getelementptr i8, ptr %net_dev, i32 2460
  %0 = ptrtoint ptr %msg_enable1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %msg_enable, ptr %msg_enable1, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_ethtool_self_test(ptr noundef %net_dev, ptr nocapture noundef %test, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1076) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.if.then54_crit_edge, label %if.end

entry.if.then54_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then54

if.end:                                           ; preds = %entry
  %state = getelementptr i8, ptr %net_dev, i32 2464
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp.not = icmp eq i32 %2, 1
  br i1 %cmp.not, label %do.body, label %if.end.fail_crit_edge

if.end.fail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail

do.body:                                          ; preds = %if.end
  %msg_enable = getelementptr i8, ptr %net_dev, i32 2460
  %3 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %msg_enable, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %do.body.do.end_crit_edge, label %if.then5

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %net_dev6 = getelementptr i8, ptr %net_dev, i32 4732
  %5 = ptrtoint ptr %net_dev6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %net_dev6, align 4
  %flags = getelementptr inbounds %struct.ethtool_test, ptr %test, i32 0, i32 1
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %and7 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %cond = select i1 %tobool8.not, ptr @.str.3, ptr @.str.2
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %6, ptr noundef nonnull @.str.1, ptr noundef nonnull %cond) #18
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body.do.end_crit_edge
  %net_dev10 = getelementptr i8, ptr %net_dev, i32 4732
  %9 = ptrtoint ptr %net_dev10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %net_dev10, align 4
  %flags11 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 14
  %11 = ptrtoint ptr %flags11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags11, align 8
  %and12 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.then15, label %if.end30

if.then15:                                        ; preds = %do.end
  %call17 = tail call i32 @dev_open(ptr noundef %10, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then34, label %do.body20

do.body20:                                        ; preds = %if.then15
  %13 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %msg_enable, align 4
  %and22 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %do.body20.fail_crit_edge, label %if.then24

do.body20.fail_crit_edge:                         ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail

if.then24:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #16
  %15 = ptrtoint ptr %net_dev10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %net_dev10, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %16, ptr noundef nonnull @.str.4) #18
  br label %fail

if.end30:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  %flags31 = getelementptr inbounds %struct.ethtool_test, ptr %test, i32 0, i32 1
  %17 = ptrtoint ptr %flags31 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags31, align 4
  %call32 = tail call i32 @efx_selftest(ptr noundef %add.ptr.i, ptr noundef nonnull %call7.i.i, i32 noundef %18) #14
  br label %do.body37

if.then34:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #16
  %flags3177 = getelementptr inbounds %struct.ethtool_test, ptr %test, i32 0, i32 1
  %19 = ptrtoint ptr %flags3177 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags3177, align 4
  %call3278 = tail call i32 @efx_selftest(ptr noundef %add.ptr.i, ptr noundef nonnull %call7.i.i, i32 noundef %20) #14
  %21 = ptrtoint ptr %net_dev10 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %net_dev10, align 4
  tail call void @dev_close(ptr noundef %22) #14
  br label %do.body37

do.body37:                                        ; preds = %if.then34, %if.end30
  %call3281 = phi i32 [ %call32, %if.end30 ], [ %call3278, %if.then34 ]
  %flags3179 = phi ptr [ %flags31, %if.end30 ], [ %flags3177, %if.then34 ]
  %23 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %msg_enable, align 4
  %and39 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %do.body37.fail_crit_edge, label %if.then41

do.body37.fail_crit_edge:                         ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail

if.then41:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #16
  %25 = ptrtoint ptr %net_dev10 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %net_dev10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3281)
  %cmp43 = icmp eq i32 %call3281, 0
  %cond44 = select i1 %cmp43, ptr @.str.6, ptr @.str.7
  %27 = ptrtoint ptr %flags3179 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags3179, align 4
  %and46 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  %cond48 = select i1 %tobool47.not, ptr @.str.3, ptr @.str.2
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %26, ptr noundef nonnull @.str.5, ptr noundef nonnull %cond44, ptr noundef nonnull %cond48) #18
  br label %fail

fail:                                             ; preds = %if.then41, %do.body37.fail_crit_edge, %if.then24, %do.body20.fail_crit_edge, %if.end.fail_crit_edge
  %rc.0 = phi i32 [ %call3281, %if.then41 ], [ %call3281, %do.body37.fail_crit_edge ], [ -16, %if.then24 ], [ -16, %do.body20.fail_crit_edge ], [ -16, %if.end.fail_crit_edge ]
  %call52 = tail call i32 @efx_ethtool_fill_self_tests(ptr noundef %add.ptr.i, ptr noundef nonnull %call7.i.i, ptr noundef null, ptr noundef %data)
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %tobool53.not = icmp eq i32 %rc.0, 0
  br i1 %tobool53.not, label %fail.if.end56_crit_edge, label %fail.if.then54_crit_edge

fail.if.then54_crit_edge:                         ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then54

fail.if.end56_crit_edge:                          ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end56

if.then54:                                        ; preds = %fail.if.then54_crit_edge, %entry.if.then54_crit_edge
  %flags55 = getelementptr inbounds %struct.ethtool_test, ptr %test, i32 0, i32 1
  %29 = ptrtoint ptr %flags55 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags55, align 4
  %or = or i32 %30, 2
  store i32 %or, ptr %flags55, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %fail.if.end56_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_open(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_selftest(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_close(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_ethtool_fill_self_tests(ptr noundef %efx, ptr nocapture noundef readonly %tests, ptr noundef %strings, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @efx_fill_test(i32 noundef 0, ptr noundef %strings, ptr noundef %data, ptr noundef %tests, ptr noundef nonnull @.str.13, i32 noundef 0, ptr noundef nonnull @.str.14, ptr noundef null)
  %nvram = getelementptr inbounds %struct.efx_self_tests, ptr %tests, i32 0, i32 1
  tail call fastcc void @efx_fill_test(i32 noundef 1, ptr noundef %strings, ptr noundef %data, ptr noundef %nvram, ptr noundef nonnull @.str.15, i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef null)
  %interrupt = getelementptr inbounds %struct.efx_self_tests, ptr %tests, i32 0, i32 2
  tail call fastcc void @efx_fill_test(i32 noundef 2, ptr noundef %strings, ptr noundef %data, ptr noundef %interrupt, ptr noundef nonnull @.str.15, i32 noundef 0, ptr noundef nonnull @.str.17, ptr noundef null)
  %channel3 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 25
  %0 = ptrtoint ptr %channel3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel3, align 8
  %tobool.not97 = icmp eq ptr %1, null
  br i1 %tobool.not97, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %n_channels = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 42
  br label %for.body

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %for.body.lr.ph
  %n.099 = phi i32 [ 3, %for.body.lr.ph ], [ %inc8, %cond.end.for.body_crit_edge ]
  %channel.098 = phi ptr [ %1, %for.body.lr.ph ], [ %11, %cond.end.for.body_crit_edge ]
  %inc4 = add i32 %n.099, 1
  %channel5 = getelementptr inbounds %struct.efx_channel, ptr %channel.098, i32 0, i32 1
  %2 = ptrtoint ptr %channel5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel5, align 4
  %arrayidx6 = getelementptr %struct.efx_self_tests, ptr %tests, i32 0, i32 3, i32 %3
  tail call fastcc void @efx_fill_test(i32 noundef %n.099, ptr noundef %strings, ptr noundef %data, ptr noundef %arrayidx6, ptr noundef nonnull @.str.18, i32 noundef %3, ptr noundef nonnull @.str.19, ptr noundef null)
  %inc8 = add i32 %n.099, 2
  %4 = ptrtoint ptr %channel5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel5, align 4
  %arrayidx10 = getelementptr %struct.efx_self_tests, ptr %tests, i32 0, i32 4, i32 %5
  tail call fastcc void @efx_fill_test(i32 noundef %inc4, ptr noundef %strings, ptr noundef %data, ptr noundef %arrayidx10, ptr noundef nonnull @.str.18, i32 noundef %5, ptr noundef nonnull @.str.20, ptr noundef null)
  %6 = ptrtoint ptr %channel5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel5, align 4
  %add = add i32 %7, 1
  %8 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n_channels, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %9)
  %cmp = icmp ult i32 %add, %9
  br i1 %cmp, label %cond.end, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

cond.end:                                         ; preds = %for.body
  %arrayidx16 = getelementptr %struct.efx_nic, ptr %efx, i32 0, i32 25, i32 %add
  %10 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx16, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %cond.end.for.end_crit_edge, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %cond.end.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %n.0.lcssa = phi i32 [ 3, %entry.for.end_crit_edge ], [ %inc8, %cond.end.for.end_crit_edge ], [ %inc8, %for.body.for.end_crit_edge ]
  %inc17 = add i32 %n.0.lcssa, 1
  %memory = getelementptr inbounds %struct.efx_self_tests, ptr %tests, i32 0, i32 5
  tail call fastcc void @efx_fill_test(i32 noundef %n.0.lcssa, ptr noundef %strings, ptr noundef %data, ptr noundef %memory, ptr noundef nonnull @.str.15, i32 noundef 0, ptr noundef nonnull @.str.21, ptr noundef null)
  %inc18 = add i32 %n.0.lcssa, 2
  %registers = getelementptr inbounds %struct.efx_self_tests, ptr %tests, i32 0, i32 6
  tail call fastcc void @efx_fill_test(i32 noundef %inc17, ptr noundef %strings, ptr noundef %data, ptr noundef %registers, ptr noundef nonnull @.str.15, i32 noundef 0, ptr noundef nonnull @.str.22, ptr noundef null)
  %call100 = tail call ptr @efx_mcdi_phy_test_name(ptr noundef %efx, i32 noundef 0) #14
  %cmp21101 = icmp eq ptr %call100, null
  br i1 %cmp21101, label %for.end.for.cond27.preheader_crit_edge, label %for.end.for.inc24_crit_edge

for.end.for.inc24_crit_edge:                      ; preds = %for.end
  br label %for.inc24

for.end.for.cond27.preheader_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond27.preheader

for.cond27.preheader:                             ; preds = %for.inc24.for.cond27.preheader_crit_edge, %for.end.for.cond27.preheader_crit_edge
  %n.1.lcssa = phi i32 [ %inc18, %for.end.for.cond27.preheader_crit_edge ], [ %inc22, %for.inc24.for.cond27.preheader_crit_edge ]
  %loopback_modes = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 105
  %tx_channel_offset.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 45
  br label %for.body29

for.inc24:                                        ; preds = %for.inc24.for.inc24_crit_edge, %for.end.for.inc24_crit_edge
  %call104 = phi ptr [ %call, %for.inc24.for.inc24_crit_edge ], [ %call100, %for.end.for.inc24_crit_edge ]
  %i.0103 = phi i32 [ %inc25, %for.inc24.for.inc24_crit_edge ], [ 0, %for.end.for.inc24_crit_edge ]
  %n.1102 = phi i32 [ %inc22, %for.inc24.for.inc24_crit_edge ], [ %inc18, %for.end.for.inc24_crit_edge ]
  %inc22 = add i32 %n.1102, 1
  %arrayidx23 = getelementptr %struct.efx_self_tests, ptr %tests, i32 0, i32 7, i32 %i.0103
  tail call fastcc void @efx_fill_test(i32 noundef %n.1102, ptr noundef %strings, ptr noundef %data, ptr noundef %arrayidx23, ptr noundef nonnull @.str.13, i32 noundef 0, ptr noundef nonnull %call104, ptr noundef null)
  %inc25 = add i32 %i.0103, 1
  %call = tail call ptr @efx_mcdi_phy_test_name(ptr noundef %efx, i32 noundef %inc25) #14
  %cmp21 = icmp eq ptr %call, null
  br i1 %cmp21, label %for.inc24.for.cond27.preheader_crit_edge, label %for.inc24.for.inc24_crit_edge

for.inc24.for.inc24_crit_edge:                    ; preds = %for.inc24
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc24

for.inc24.for.cond27.preheader_crit_edge:         ; preds = %for.inc24
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond27.preheader

for.body29:                                       ; preds = %for.inc35.for.body29_crit_edge, %for.cond27.preheader
  %mode.0107 = phi i32 [ 0, %for.cond27.preheader ], [ %inc36, %for.inc35.for.body29_crit_edge ]
  %n.3106 = phi i32 [ %n.1.lcssa, %for.cond27.preheader ], [ %n.4, %for.inc35.for.body29_crit_edge ]
  %12 = ptrtoint ptr %loopback_modes to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %loopback_modes, align 8
  %shl = shl nuw nsw i32 1, %mode.0107
  %14 = zext i32 %shl to i64
  %and = and i64 %13, %14
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool30.not = icmp eq i64 %and, 0
  br i1 %tobool30.not, label %for.body29.for.inc35_crit_edge, label %if.end32

for.body29.for.inc35_crit_edge:                   ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc35

if.end32:                                         ; preds = %for.body29
  %arrayidx33 = getelementptr %struct.efx_self_tests, ptr %tests, i32 0, i32 8, i32 %mode.0107
  %15 = ptrtoint ptr %tx_channel_offset.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tx_channel_offset.i, align 4
  %arrayidx.i.i = getelementptr %struct.efx_nic, ptr %efx, i32 0, i32 25, i32 %16
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i.i, align 4
  %tx_queue2.i = getelementptr inbounds %struct.efx_channel, ptr %18, i32 0, i32 46
  %channel1.i.i.i = getelementptr inbounds %struct.efx_channel, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %channel1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %channel1.i.i.i, align 4
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %18, align 128
  %xdp_channel_offset.i.i63.i = getelementptr inbounds %struct.efx_nic, ptr %22, i32 0, i32 50
  %23 = ptrtoint ptr %xdp_channel_offset.i.i63.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %xdp_channel_offset.i.i63.i, align 8
  %sub.i.i64.i = sub i32 %20, %24
  %n_xdp_channels.i.i65.i = getelementptr inbounds %struct.efx_nic, ptr %22, i32 0, i32 49
  %25 = ptrtoint ptr %n_xdp_channels.i.i65.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %n_xdp_channels.i.i65.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i64.i, i32 %26)
  %cmp.i.i66.i = icmp ult i32 %sub.i.i64.i, %26
  %xdp_tx_per_channel.i67.i = getelementptr inbounds %struct.efx_nic, ptr %22, i32 0, i32 51
  %tx_queues_per_channel.i68.i = getelementptr inbounds %struct.efx_nic, ptr %22, i32 0, i32 48
  %retval.0.in.i69.i = select i1 %cmp.i.i66.i, ptr %xdp_tx_per_channel.i67.i, ptr %tx_queues_per_channel.i68.i
  %27 = ptrtoint ptr %retval.0.in.i69.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %retval.0.i70.i = load i32, ptr %retval.0.in.i69.i, align 4
  %add.ptr71.i = getelementptr %struct.efx_tx_queue, ptr %tx_queue2.i, i32 %retval.0.i70.i
  %cmp72.i = icmp ult ptr %tx_queue2.i, %add.ptr71.i
  br i1 %cmp72.i, label %for.body.lr.ph.i, label %if.end32.if.end.i_crit_edge

if.end32.if.end.i_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

for.body.lr.ph.i:                                 ; preds = %if.end32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @efx_loopback_mode_max to i32))
  %28 = load i32, ptr @efx_loopback_mode_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %mode.0107)
  %cmp7.i = icmp ugt i32 %28, %mode.0107
  %arrayidx8.i = getelementptr [0 x ptr], ptr @efx_loopback_mode_names, i32 0, i32 %mode.0107
  br label %for.body.i

for.body.i:                                       ; preds = %cond.end17.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %tx_queue.074.i = phi ptr [ %tx_queue2.i, %for.body.lr.ph.i ], [ %incdec.ptr.i, %cond.end17.i.for.body.i_crit_edge ]
  %test_index.addr.073.i = phi i32 [ %n.3106, %for.body.lr.ph.i ], [ %inc9.i, %cond.end17.i.for.body.i_crit_edge ]
  %inc.i = add i32 %test_index.addr.073.i, 1
  %label.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue.074.i, i32 0, i32 2
  %29 = ptrtoint ptr %label.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %label.i, align 8
  %arrayidx.i = getelementptr [4 x i32], ptr %arrayidx33, i32 0, i32 %30
  br i1 %cmp7.i, label %cond.true.i, label %for.body.i.cond.end.i_crit_edge

for.body.i.cond.end.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end.i

cond.true.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %31 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx8.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %for.body.i.cond.end.i_crit_edge
  %cond.i = phi ptr [ %32, %cond.true.i ], [ @.str.28, %for.body.i.cond.end.i_crit_edge ]
  tail call fastcc void @efx_fill_test(i32 noundef %test_index.addr.073.i, ptr noundef %strings, ptr noundef %data, ptr noundef %arrayidx.i, ptr noundef nonnull @.str.26, i32 noundef %30, ptr noundef nonnull @.str.27, ptr noundef %cond.i) #14
  %inc9.i = add i32 %test_index.addr.073.i, 2
  %33 = ptrtoint ptr %label.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %label.i, align 8
  %arrayidx11.i = getelementptr %struct.efx_self_tests, ptr %tests, i32 0, i32 8, i32 %mode.0107, i32 1, i32 %34
  br i1 %cmp7.i, label %cond.true14.i, label %cond.end.i.cond.end17.i_crit_edge

cond.end.i.cond.end17.i_crit_edge:                ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end17.i

cond.true14.i:                                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %35 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx8.i, align 4
  br label %cond.end17.i

cond.end17.i:                                     ; preds = %cond.true14.i, %cond.end.i.cond.end17.i_crit_edge
  %cond18.i = phi ptr [ %36, %cond.true14.i ], [ @.str.28, %cond.end.i.cond.end17.i_crit_edge ]
  tail call fastcc void @efx_fill_test(i32 noundef %inc.i, ptr noundef %strings, ptr noundef %data, ptr noundef %arrayidx11.i, ptr noundef nonnull @.str.26, i32 noundef %34, ptr noundef nonnull @.str.29, ptr noundef %cond18.i) #14
  %incdec.ptr.i = getelementptr %struct.efx_tx_queue, ptr %tx_queue.074.i, i32 1
  %37 = ptrtoint ptr %channel1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %channel1.i.i.i, align 4
  %39 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %18, align 128
  %xdp_channel_offset.i.i.i = getelementptr inbounds %struct.efx_nic, ptr %40, i32 0, i32 50
  %41 = ptrtoint ptr %xdp_channel_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %xdp_channel_offset.i.i.i, align 8
  %sub.i.i.i = sub i32 %38, %42
  %n_xdp_channels.i.i.i = getelementptr inbounds %struct.efx_nic, ptr %40, i32 0, i32 49
  %43 = ptrtoint ptr %n_xdp_channels.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %n_xdp_channels.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i, i32 %44)
  %cmp.i.i.i = icmp ult i32 %sub.i.i.i, %44
  %xdp_tx_per_channel.i.i = getelementptr inbounds %struct.efx_nic, ptr %40, i32 0, i32 51
  %tx_queues_per_channel.i.i = getelementptr inbounds %struct.efx_nic, ptr %40, i32 0, i32 48
  %retval.0.in.i.i = select i1 %cmp.i.i.i, ptr %xdp_tx_per_channel.i.i, ptr %tx_queues_per_channel.i.i
  %45 = ptrtoint ptr %retval.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %retval.0.i.i = load i32, ptr %retval.0.in.i.i, align 4
  %add.ptr.i = getelementptr %struct.efx_tx_queue, ptr %tx_queue2.i, i32 %retval.0.i.i
  %cmp.i = icmp ult ptr %incdec.ptr.i, %add.ptr.i
  br i1 %cmp.i, label %cond.end17.i.for.body.i_crit_edge, label %cond.end17.i.if.end.i_crit_edge

cond.end17.i.if.end.i_crit_edge:                  ; preds = %cond.end17.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

cond.end17.i.for.body.i_crit_edge:                ; preds = %cond.end17.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

if.end.i:                                         ; preds = %cond.end17.i.if.end.i_crit_edge, %if.end32.if.end.i_crit_edge
  %test_index.addr.0.lcssa.i = phi i32 [ %n.3106, %if.end32.if.end.i_crit_edge ], [ %inc9.i, %cond.end17.i.if.end.i_crit_edge ]
  %rx_good.i = getelementptr %struct.efx_self_tests, ptr %tests, i32 0, i32 8, i32 %mode.0107, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @efx_loopback_mode_max to i32))
  %46 = load i32, ptr @efx_loopback_mode_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %mode.0107)
  %cmp20.i = icmp ugt i32 %46, %mode.0107
  br i1 %cmp20.i, label %cond.true28.i, label %cond.end24.i

cond.end24.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @efx_fill_test(i32 noundef %test_index.addr.0.lcssa.i, ptr noundef %strings, ptr noundef %data, ptr noundef %rx_good.i, ptr noundef nonnull @.str.30, i32 noundef 0, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.28) #14
  br label %efx_fill_loopback_test.exit

cond.true28.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx22.i = getelementptr [0 x ptr], ptr @efx_loopback_mode_names, i32 0, i32 %mode.0107
  %47 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx22.i, align 4
  tail call fastcc void @efx_fill_test(i32 noundef %test_index.addr.0.lcssa.i, ptr noundef %strings, ptr noundef %data, ptr noundef %rx_good.i, ptr noundef nonnull @.str.30, i32 noundef 0, ptr noundef nonnull @.str.31, ptr noundef %48) #14
  br label %efx_fill_loopback_test.exit

efx_fill_loopback_test.exit:                      ; preds = %cond.true28.i, %cond.end24.i
  %cond32.i = phi ptr [ %48, %cond.true28.i ], [ @.str.28, %cond.end24.i ]
  %rx_bad.i = getelementptr %struct.efx_self_tests, ptr %tests, i32 0, i32 8, i32 %mode.0107, i32 3
  %inc19.i = add i32 %test_index.addr.0.lcssa.i, 1
  %inc26.i = add i32 %test_index.addr.0.lcssa.i, 2
  tail call fastcc void @efx_fill_test(i32 noundef %inc19.i, ptr noundef %strings, ptr noundef %data, ptr noundef %rx_bad.i, ptr noundef nonnull @.str.30, i32 noundef 0, ptr noundef nonnull @.str.32, ptr noundef %cond32.i) #14
  br label %for.inc35

for.inc35:                                        ; preds = %efx_fill_loopback_test.exit, %for.body29.for.inc35_crit_edge
  %n.4 = phi i32 [ %inc26.i, %efx_fill_loopback_test.exit ], [ %n.3106, %for.body29.for.inc35_crit_edge ]
  %inc36 = add nuw nsw i32 %mode.0107, 1
  %exitcond.not = icmp eq i32 %inc36, 18
  br i1 %exitcond.not, label %for.end37, label %for.inc35.for.body29_crit_edge

for.inc35.for.body29_crit_edge:                   ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body29

for.end37:                                        ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #16
  ret i32 %n.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @efx_ethtool_get_pauseparam(ptr nocapture noundef readonly %net_dev, ptr nocapture noundef writeonly %pause) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %wanted_fc = getelementptr i8, ptr %net_dev, i32 4888
  %0 = ptrtoint ptr %wanted_fc to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %wanted_fc, align 8
  %2 = lshr i8 %1, 1
  %.lobit = and i8 %2, 1
  %3 = zext i8 %.lobit to i32
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 2
  %4 = ptrtoint ptr %rx_pause to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %rx_pause, align 4
  %5 = load i8, ptr %wanted_fc, align 8
  %6 = and i8 %5, 1
  %7 = zext i8 %6 to i32
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  %8 = ptrtoint ptr %tx_pause to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %tx_pause, align 4
  %9 = load i8, ptr %wanted_fc, align 8
  %10 = lshr i8 %9, 2
  %.lobit22 = and i8 %10, 1
  %11 = zext i8 %.lobit22 to i32
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 1
  %12 = ptrtoint ptr %autoneg to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %autoneg, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_ethtool_set_pauseparam(ptr noundef %net_dev, ptr nocapture noundef readonly %pause) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %mac_lock = getelementptr i8, ptr %net_dev, i32 4592
  tail call void @mutex_lock_nested(ptr noundef %mac_lock, i32 noundef 0) #14
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 2
  %0 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %cond = select i1 %tobool.not, i8 0, i8 2
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  %2 = ptrtoint ptr %tx_pause to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp ne i32 %3, 0
  %cond2 = zext i1 %tobool1.not to i8
  %or = or i8 %cond, %cond2
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 1
  %4 = ptrtoint ptr %autoneg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %autoneg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  %cond4 = select i1 %tobool3.not, i8 0, i8 4
  %or5 = or i8 %or, %cond4
  %conv6 = zext i8 %or5 to i32
  %and = and i32 %conv6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  %tobool7.not.not = xor i1 %tobool7.not, true
  %and9 = and i32 %conv6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %or.cond = select i1 %tobool7.not.not, i1 %tobool10.not, i1 false
  br i1 %or.cond, label %do.body, label %if.end24

do.body:                                          ; preds = %entry
  %msg_enable = getelementptr i8, ptr %net_dev, i32 2460
  %6 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msg_enable, align 4
  %and11 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %do.body.out_crit_edge, label %do.body14

do.body.out_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

do.body14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_ethtool_set_pauseparam.__UNIQUE_ID_ddebug524, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_ethtool_set_pauseparam, %if.then19)) #14
          to label %out [label %if.then19], !srcloc !136

if.then19:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #16
  %net_dev20 = getelementptr i8, ptr %net_dev, i32 4732
  %8 = ptrtoint ptr %net_dev20 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net_dev20, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_ethtool_set_pauseparam.__UNIQUE_ID_ddebug524, ptr noundef %9, ptr noundef nonnull @.str.10) #14
  br label %out

if.end24:                                         ; preds = %entry
  %and26 = and i32 %conv6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end24.if.end56_crit_edge, label %land.lhs.true28

if.end24.if.end56_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end56

land.lhs.true28:                                  ; preds = %if.end24
  %link_advertising = getelementptr i8, ptr %net_dev, i32 4820
  %10 = ptrtoint ptr %link_advertising to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %link_advertising, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool29.not = icmp eq i32 %11, 0
  br i1 %tobool29.not, label %do.body31, label %land.lhs.true28.if.end56_crit_edge

land.lhs.true28.if.end56_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end56

do.body31:                                        ; preds = %land.lhs.true28
  %msg_enable32 = getelementptr i8, ptr %net_dev, i32 2460
  %12 = ptrtoint ptr %msg_enable32 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %msg_enable32, align 4
  %and33 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %do.body31.out_crit_edge, label %do.body36

do.body31.out_crit_edge:                          ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

do.body36:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_ethtool_set_pauseparam.__UNIQUE_ID_ddebug525, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_ethtool_set_pauseparam, %if.then48)) #14
          to label %out [label %if.then48], !srcloc !136

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #16
  %net_dev49 = getelementptr i8, ptr %net_dev, i32 4732
  %14 = ptrtoint ptr %net_dev49 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %net_dev49, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_ethtool_set_pauseparam.__UNIQUE_ID_ddebug525, ptr noundef %15, ptr noundef nonnull @.str.11) #14
  br label %out

if.end56:                                         ; preds = %land.lhs.true28.if.end56_crit_edge, %if.end24.if.end56_crit_edge
  %type = getelementptr i8, ptr %net_dev, i32 2348
  %16 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %type, align 4
  %prepare_enable_fc_tx = getelementptr inbounds %struct.efx_nic_type, ptr %17, i32 0, i32 28
  %18 = ptrtoint ptr %prepare_enable_fc_tx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prepare_enable_fc_tx, align 8
  %tobool57.not = icmp eq ptr %19, null
  %brmerge = select i1 %tobool57.not, i1 true, i1 %tobool7.not
  br i1 %brmerge, label %if.end56.if.end70_crit_edge, label %land.lhs.true62

if.end56.if.end70_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end70

land.lhs.true62:                                  ; preds = %if.end56
  %wanted_fc63 = getelementptr i8, ptr %net_dev, i32 4888
  %20 = ptrtoint ptr %wanted_fc63 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %wanted_fc63, align 8
  %22 = and i8 %21, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool66.not = icmp eq i8 %22, 0
  br i1 %tobool66.not, label %if.then67, label %land.lhs.true62.if.end70_crit_edge

land.lhs.true62.if.end70_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end70

if.then67:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %19(ptr noundef %add.ptr.i) #14
  br label %if.end70

if.end70:                                         ; preds = %if.then67, %land.lhs.true62.if.end70_crit_edge, %if.end56.if.end70_crit_edge
  %link_advertising71 = getelementptr i8, ptr %net_dev, i32 4820
  %23 = ptrtoint ptr %link_advertising71 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %link_advertising71, align 4
  %wanted_fc73 = getelementptr i8, ptr %net_dev, i32 4888
  %25 = ptrtoint ptr %wanted_fc73 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %wanted_fc73, align 8
  tail call void @efx_link_set_wanted_fc(ptr noundef %add.ptr.i, i8 noundef zeroext %or5) #14
  %27 = ptrtoint ptr %link_advertising71 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %link_advertising71, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %24)
  %cmp.not = icmp eq i32 %28, %24
  br i1 %cmp.not, label %lor.lhs.false, label %if.end70.if.then82_crit_edge

if.end70.if.then82_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then82

lor.lhs.false:                                    ; preds = %if.end70
  %29 = ptrtoint ptr %wanted_fc73 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %wanted_fc73, align 8
  %xor124 = xor i8 %30, %26
  %31 = and i8 %xor124, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool81.not = icmp eq i8 %31, 0
  br i1 %tobool81.not, label %lor.lhs.false.if.end96_crit_edge, label %lor.lhs.false.if.then82_crit_edge

lor.lhs.false.if.then82_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then82

lor.lhs.false.if.end96_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end96

if.then82:                                        ; preds = %lor.lhs.false.if.then82_crit_edge, %if.end70.if.then82_crit_edge
  %call83 = tail call i32 @efx_mcdi_port_reconfigure(ptr noundef %add.ptr.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.then82.if.end96_crit_edge, label %do.body86

if.then82.if.end96_crit_edge:                     ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end96

do.body86:                                        ; preds = %if.then82
  %msg_enable87 = getelementptr i8, ptr %net_dev, i32 2460
  %32 = ptrtoint ptr %msg_enable87 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %msg_enable87, align 4
  %and88 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %do.body86.out_crit_edge, label %if.then90

do.body86.out_crit_edge:                          ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then90:                                        ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #16
  %net_dev91 = getelementptr i8, ptr %net_dev, i32 4732
  %34 = ptrtoint ptr %net_dev91 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %net_dev91, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %35, ptr noundef nonnull @.str.12) #18
  br label %out

if.end96:                                         ; preds = %if.then82.if.end96_crit_edge, %lor.lhs.false.if.end96_crit_edge
  tail call void @efx_mac_reconfigure(ptr noundef %add.ptr.i, i1 noundef zeroext false) #14
  br label %out

out:                                              ; preds = %if.end96, %if.then90, %do.body86.out_crit_edge, %if.then48, %do.body36, %do.body31.out_crit_edge, %if.then19, %do.body14, %do.body.out_crit_edge
  %rc.1 = phi i32 [ %call83, %if.then90 ], [ %call83, %do.body86.out_crit_edge ], [ 0, %if.end96 ], [ -22, %if.then19 ], [ -22, %do.body.out_crit_edge ], [ -22, %if.then48 ], [ -22, %do.body31.out_crit_edge ], [ -22, %do.body14 ], [ -22, %do.body36 ]
  tail call void @mutex_unlock(ptr noundef %mac_lock) #14
  ret i32 %rc.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_link_set_wanted_fc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_port_reconfigure(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_mac_reconfigure(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @efx_fill_test(i32 noundef %test_index, ptr noundef writeonly %strings, ptr noundef writeonly %data, ptr nocapture noundef readonly %test, ptr noundef readonly %unit_format, i32 noundef %unit_id, ptr nocapture noundef readonly %test_format, ptr noundef %test_id) unnamed_addr #8 align 64 {
entry:
  %unit_str = alloca [32 x i8], align 1
  %test_str = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %unit_str) #14
  %0 = call ptr @memset(ptr %unit_str, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %test_str) #14
  %tobool.not = icmp eq ptr %data, null
  %1 = call ptr @memset(ptr %test_str, i32 255, i32 32)
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %test, align 4
  %conv = sext i32 %3 to i64
  %arrayidx = getelementptr i64, ptr %data, i32 %test_index
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %conv, ptr %arrayidx, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool1.not = icmp eq ptr %strings, null
  br i1 %tobool1.not, label %if.end.if.end14_crit_edge, label %if.then2

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.then2:                                         ; preds = %if.end
  %call = tail call ptr @strchr(ptr noundef %unit_format, i32 noundef 37)
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #16
  %call5 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %unit_str, i32 noundef 32, ptr noundef %unit_format, i32 noundef %unit_id)
  br label %if.end8

if.else:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #16
  %call7 = call ptr @strcpy(ptr noundef nonnull %unit_str, ptr noundef %unit_format) #19
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then4
  %call10 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %test_str, i32 noundef 32, ptr noundef %test_format, ptr noundef %test_id)
  %mul = shl i32 %test_index, 5
  %add.ptr = getelementptr i8, ptr %strings, i32 %mul
  %call13 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr, i32 noundef 32, ptr noundef nonnull @.str.25, ptr noundef nonnull %unit_str, ptr noundef nonnull %test_str)
  br label %if.end14

if.end14:                                         ; preds = %if.end8, %if.end.if.end14_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %test_str) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %unit_str) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @efx_mcdi_phy_test_name(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_ethtool_get_sset_count(ptr noundef %net_dev, i32 noundef %string_set) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %0 = zext i32 %string_set to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %string_set, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb6
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %type = getelementptr i8, ptr %net_dev, i32 2348
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %type, align 4
  %describe_stats = getelementptr inbounds %struct.efx_nic_type, ptr %2, i32 0, i32 20
  %3 = ptrtoint ptr %describe_stats to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %describe_stats, align 8
  %call1 = tail call i32 %4(ptr noundef %add.ptr.i, ptr noundef null) #14
  %add = add i32 %call1, 28
  %call2 = tail call fastcc i32 @efx_describe_per_queue_stats(ptr noundef %add.ptr.i, ptr noundef null)
  %add3 = add i32 %add, %call2
  %call4 = tail call i32 @efx_ptp_describe_stats(ptr noundef %add.ptr.i, ptr noundef null) #14
  %add5 = add i32 %add3, %call4
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call7 = tail call i32 @efx_ethtool_fill_self_tests(ptr noundef %add.ptr.i, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb6, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %sw.bb6 ], [ %add5, %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @efx_describe_per_queue_stats(ptr nocapture noundef readonly %efx, ptr noundef writeonly %strings) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %channel1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 25
  %0 = ptrtoint ptr %channel1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel1, align 8
  %tobool.not91 = icmp eq ptr %1, null
  br i1 %tobool.not91, label %entry.for.end40_crit_edge, label %for.body.lr.ph

entry.for.end40_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end40

for.body.lr.ph:                                   ; preds = %entry
  %n_channels = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 42
  br label %for.body

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %for.body.lr.ph
  %channel.094 = phi ptr [ %1, %for.body.lr.ph ], [ %9, %cond.end.for.body_crit_edge ]
  %n_stats.093 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cond.end.for.body_crit_edge ]
  %strings.addr.092 = phi ptr [ %strings, %for.body.lr.ph ], [ %strings.addr.1, %cond.end.for.body_crit_edge ]
  %inc = add i32 %n_stats.093, 1
  %cmp.not = icmp eq ptr %strings.addr.092, null
  br i1 %cmp.not, label %for.body.for.inc_crit_edge, label %if.then2

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then2:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %queue = getelementptr inbounds %struct.efx_channel, ptr %channel.094, i32 0, i32 46, i32 0, i32 1
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %queue, align 4
  %div90 = lshr i32 %3, 2
  %call4 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %strings.addr.092, i32 noundef 32, ptr noundef nonnull @.str.33, i32 noundef %div90)
  %add.ptr = getelementptr i8, ptr %strings.addr.092, i32 32
  br label %for.inc

for.inc:                                          ; preds = %if.then2, %for.body.for.inc_crit_edge
  %strings.addr.1 = phi ptr [ %add.ptr, %if.then2 ], [ null, %for.body.for.inc_crit_edge ]
  %channel6 = getelementptr inbounds %struct.efx_channel, ptr %channel.094, i32 0, i32 1
  %4 = ptrtoint ptr %channel6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel6, align 4
  %add = add i32 %5, 1
  %6 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_channels, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %7)
  %cmp7 = icmp ult i32 %add, %7
  br i1 %cmp7, label %cond.end, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

cond.end:                                         ; preds = %for.inc
  %arrayidx11 = getelementptr %struct.efx_nic, ptr %efx, i32 0, i32 25, i32 %add
  %8 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx11, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %cond.end.for.end_crit_edge, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %cond.end.for.end_crit_edge, %for.inc.for.end_crit_edge
  %10 = ptrtoint ptr %channel1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load ptr, ptr %channel1, align 8
  %tobool15.not97 = icmp eq ptr %.pr, null
  br i1 %tobool15.not97, label %for.end.for.end40_crit_edge, label %for.body16.lr.ph

for.end.for.end40_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end40

for.body16.lr.ph:                                 ; preds = %for.end
  %n_channels30 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 42
  br label %for.body16

for.body16:                                       ; preds = %cond.end38.for.body16_crit_edge, %for.body16.lr.ph
  %channel.1100 = phi ptr [ %.pr, %for.body16.lr.ph ], [ %20, %cond.end38.for.body16_crit_edge ]
  %n_stats.299 = phi i32 [ %inc, %for.body16.lr.ph ], [ %n_stats.3, %cond.end38.for.body16_crit_edge ]
  %strings.addr.298 = phi ptr [ %strings.addr.1, %for.body16.lr.ph ], [ %strings.addr.3, %cond.end38.for.body16_crit_edge ]
  %core_index.i = getelementptr inbounds %struct.efx_channel, ptr %channel.1100, i32 0, i32 45, i32 1
  %11 = ptrtoint ptr %core_index.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %core_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %cmp.i = icmp sgt i32 %12, -1
  br i1 %cmp.i, label %if.then18, label %for.body16.for.inc27_crit_edge

for.body16.for.inc27_crit_edge:                   ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc27

if.then18:                                        ; preds = %for.body16
  %inc19 = add i32 %n_stats.299, 1
  %cmp20.not = icmp eq ptr %strings.addr.298, null
  br i1 %cmp20.not, label %if.then18.for.inc27_crit_edge, label %if.then21

if.then18.for.inc27_crit_edge:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc27

if.then21:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #16
  %channel22 = getelementptr inbounds %struct.efx_channel, ptr %channel.1100, i32 0, i32 1
  %13 = ptrtoint ptr %channel22 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %channel22, align 4
  %call23 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %strings.addr.298, i32 noundef 32, ptr noundef nonnull @.str.34, i32 noundef %14)
  %add.ptr24 = getelementptr i8, ptr %strings.addr.298, i32 32
  br label %for.inc27

for.inc27:                                        ; preds = %if.then21, %if.then18.for.inc27_crit_edge, %for.body16.for.inc27_crit_edge
  %strings.addr.3 = phi ptr [ %add.ptr24, %if.then21 ], [ null, %if.then18.for.inc27_crit_edge ], [ %strings.addr.298, %for.body16.for.inc27_crit_edge ]
  %n_stats.3 = phi i32 [ %inc19, %if.then21 ], [ %inc19, %if.then18.for.inc27_crit_edge ], [ %n_stats.299, %for.body16.for.inc27_crit_edge ]
  %channel28 = getelementptr inbounds %struct.efx_channel, ptr %channel.1100, i32 0, i32 1
  %15 = ptrtoint ptr %channel28 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %channel28, align 4
  %add29 = add i32 %16, 1
  %17 = ptrtoint ptr %n_channels30 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %n_channels30, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add29, i32 %18)
  %cmp31 = icmp ult i32 %add29, %18
  br i1 %cmp31, label %cond.end38, label %for.inc27.for.end40_crit_edge

for.inc27.for.end40_crit_edge:                    ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end40

cond.end38:                                       ; preds = %for.inc27
  %arrayidx36 = getelementptr %struct.efx_nic, ptr %efx, i32 0, i32 25, i32 %add29
  %19 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx36, align 4
  %tobool15.not = icmp eq ptr %20, null
  br i1 %tobool15.not, label %cond.end38.for.end40_crit_edge, label %cond.end38.for.body16_crit_edge

cond.end38.for.body16_crit_edge:                  ; preds = %cond.end38
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body16

cond.end38.for.end40_crit_edge:                   ; preds = %cond.end38
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end40

for.end40:                                        ; preds = %cond.end38.for.end40_crit_edge, %for.inc27.for.end40_crit_edge, %for.end.for.end40_crit_edge, %entry.for.end40_crit_edge
  %strings.addr.2.lcssa = phi ptr [ %strings.addr.1, %for.end.for.end40_crit_edge ], [ %strings, %entry.for.end40_crit_edge ], [ %strings.addr.3, %cond.end38.for.end40_crit_edge ], [ %strings.addr.3, %for.inc27.for.end40_crit_edge ]
  %n_stats.2.lcssa = phi i32 [ %inc, %for.end.for.end40_crit_edge ], [ 0, %entry.for.end40_crit_edge ], [ %n_stats.3, %cond.end38.for.end40_crit_edge ], [ %n_stats.3, %for.inc27.for.end40_crit_edge ]
  %xdp_tx_queue_count = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 28
  %21 = ptrtoint ptr %xdp_tx_queue_count to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %xdp_tx_queue_count, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool41.not = icmp eq i32 %22, 0
  br i1 %tobool41.not, label %for.end40.if.end59_crit_edge, label %land.lhs.true

for.end40.if.end59_crit_edge:                     ; preds = %for.end40
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end59

land.lhs.true:                                    ; preds = %for.end40
  %xdp_tx_queues = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 29
  %23 = ptrtoint ptr %xdp_tx_queues to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %xdp_tx_queues, align 4
  %tobool42.not = icmp eq ptr %24, null
  br i1 %tobool42.not, label %land.lhs.true.if.end59_crit_edge, label %for.cond44.preheader

land.lhs.true.if.end59_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end59

for.cond44.preheader:                             ; preds = %land.lhs.true
  %25 = ptrtoint ptr %xdp_tx_queue_count to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %xdp_tx_queue_count, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp46104.not = icmp eq i32 %26, 0
  br i1 %cmp46104.not, label %for.cond44.preheader.if.end59_crit_edge, label %for.cond44.preheader.for.body48_crit_edge

for.cond44.preheader.for.body48_crit_edge:        ; preds = %for.cond44.preheader
  br label %for.body48

for.cond44.preheader.if.end59_crit_edge:          ; preds = %for.cond44.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end59

for.body48:                                       ; preds = %for.inc56.for.body48_crit_edge, %for.cond44.preheader.for.body48_crit_edge
  %conv108 = phi i32 [ %conv, %for.inc56.for.body48_crit_edge ], [ 0, %for.cond44.preheader.for.body48_crit_edge ]
  %xdp.0107 = phi i16 [ %inc57, %for.inc56.for.body48_crit_edge ], [ 0, %for.cond44.preheader.for.body48_crit_edge ]
  %n_stats.4106 = phi i32 [ %inc49, %for.inc56.for.body48_crit_edge ], [ %n_stats.2.lcssa, %for.cond44.preheader.for.body48_crit_edge ]
  %strings.addr.4105 = phi ptr [ %strings.addr.5, %for.inc56.for.body48_crit_edge ], [ %strings.addr.2.lcssa, %for.cond44.preheader.for.body48_crit_edge ]
  %inc49 = add i32 %n_stats.4106, 1
  %tobool50.not = icmp eq ptr %strings.addr.4105, null
  br i1 %tobool50.not, label %for.body48.for.inc56_crit_edge, label %if.then51

for.body48.for.inc56_crit_edge:                   ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc56

if.then51:                                        ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #16
  %call53 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %strings.addr.4105, i32 noundef 32, ptr noundef nonnull @.str.35, i32 noundef %conv108)
  %add.ptr54 = getelementptr i8, ptr %strings.addr.4105, i32 32
  br label %for.inc56

for.inc56:                                        ; preds = %if.then51, %for.body48.for.inc56_crit_edge
  %strings.addr.5 = phi ptr [ %add.ptr54, %if.then51 ], [ null, %for.body48.for.inc56_crit_edge ]
  %inc57 = add i16 %xdp.0107, 1
  %conv = zext i16 %inc57 to i32
  %27 = ptrtoint ptr %xdp_tx_queue_count to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %xdp_tx_queue_count, align 16
  %cmp46 = icmp ugt i32 %28, %conv
  br i1 %cmp46, label %for.inc56.for.body48_crit_edge, label %for.inc56.if.end59_crit_edge

for.inc56.if.end59_crit_edge:                     ; preds = %for.inc56
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end59

for.inc56.for.body48_crit_edge:                   ; preds = %for.inc56
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body48

if.end59:                                         ; preds = %for.inc56.if.end59_crit_edge, %for.cond44.preheader.if.end59_crit_edge, %land.lhs.true.if.end59_crit_edge, %for.end40.if.end59_crit_edge
  %n_stats.5 = phi i32 [ %n_stats.2.lcssa, %land.lhs.true.if.end59_crit_edge ], [ %n_stats.2.lcssa, %for.end40.if.end59_crit_edge ], [ %n_stats.2.lcssa, %for.cond44.preheader.if.end59_crit_edge ], [ %inc49, %for.inc56.if.end59_crit_edge ]
  ret i32 %n_stats.5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_ptp_describe_stats(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_ethtool_get_strings(ptr noundef %net_dev, i32 noundef %string_set, ptr noundef %strings) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %0 = zext i32 %string_set to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %string_set, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb10
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %type = getelementptr i8, ptr %net_dev, i32 2348
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %type, align 4
  %describe_stats = getelementptr inbounds %struct.efx_nic_type, ptr %2, i32 0, i32 20
  %3 = ptrtoint ptr %describe_stats to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %describe_stats, align 8
  %call1 = tail call i32 %4(ptr noundef %add.ptr.i, ptr noundef %strings) #14
  %mul = shl i32 %call1, 5
  %add.ptr = getelementptr i8, ptr %strings, i32 %mul
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %sw.bb
  %i.026 = phi i32 [ 0, %sw.bb ], [ %inc, %for.body.for.body_crit_edge ]
  %mul2 = shl nuw nsw i32 %i.026, 5
  %add.ptr3 = getelementptr i8, ptr %add.ptr, i32 %mul2
  %arrayidx = getelementptr [28 x %struct.efx_sw_stat_desc], ptr @efx_sw_stat_desc, i32 0, i32 %i.026
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %call4 = tail call i32 @strlcpy(ptr noundef %add.ptr3, ptr noundef %6, i32 noundef 32) #14
  %inc = add nuw nsw i32 %i.026, 1
  %exitcond.not = icmp eq i32 %inc, 28
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr5 = getelementptr i8, ptr %add.ptr, i32 896
  %call6 = tail call fastcc i32 @efx_describe_per_queue_stats(ptr noundef %add.ptr.i, ptr noundef %add.ptr5)
  %mul7 = shl i32 %call6, 5
  %add.ptr8 = getelementptr i8, ptr %add.ptr5, i32 %mul7
  %call9 = tail call i32 @efx_ptp_describe_stats(ptr noundef %add.ptr.i, ptr noundef %add.ptr8) #14
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call11 = tail call i32 @efx_ethtool_fill_self_tests(ptr noundef %add.ptr.i, ptr noundef null, ptr noundef %strings, ptr noundef null)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb10, %for.end, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_ethtool_get_stats(ptr noundef %net_dev, ptr nocapture noundef readnone %stats, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %stats_lock = getelementptr i8, ptr %net_dev, i32 6420
  tail call void @_raw_spin_lock_bh(ptr noundef %stats_lock) #14
  %type = getelementptr i8, ptr %net_dev, i32 2348
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 4
  %update_stats = getelementptr inbounds %struct.efx_nic_type, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %update_stats to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %update_stats, align 4
  %call1 = tail call i32 %3(ptr noundef %add.ptr.i, ptr noundef %data, ptr noundef null) #14
  %add.ptr = getelementptr i64, ptr %data, i32 %call1
  %channel25 = getelementptr i8, ptr %net_dev, i32 2472
  %n_channels50 = getelementptr i8, ptr %net_dev, i32 3688
  br label %for.body

for.body:                                         ; preds = %for.inc61.for.body_crit_edge, %entry
  %i.0271 = phi i32 [ 0, %entry ], [ %inc, %for.inc61.for.body_crit_edge ]
  %source = getelementptr [28 x %struct.efx_sw_stat_desc], ptr @efx_sw_stat_desc, i32 0, i32 %i.0271, i32 1
  %4 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %source, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %5, label %for.body.for.inc61_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
    i32 2, label %sw.bb23
  ]

for.body.for.inc61_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc61

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %get_stat = getelementptr [28 x %struct.efx_sw_stat_desc], ptr @efx_sw_stat_desc, i32 0, i32 %i.0271, i32 3
  %7 = ptrtoint ptr %get_stat to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %get_stat, align 4
  %offset = getelementptr [28 x %struct.efx_sw_stat_desc], ptr @efx_sw_stat_desc, i32 0, i32 %i.0271, i32 2
  %9 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %offset, align 4
  %add.ptr2 = getelementptr i8, ptr %add.ptr.i, i32 %10
  %call3 = tail call i64 %8(ptr noundef %add.ptr2) #14
  %arrayidx4 = getelementptr i64, ptr %add.ptr, i32 %i.0271
  %11 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %call3, ptr %arrayidx4, align 8
  br label %for.inc61

sw.bb5:                                           ; preds = %for.body
  %arrayidx6 = getelementptr i64, ptr %add.ptr, i32 %i.0271
  %12 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 0, ptr %arrayidx6, align 8
  %13 = ptrtoint ptr %channel25 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %channel25, align 8
  %tobool.not269 = icmp eq ptr %14, null
  br i1 %tobool.not269, label %sw.bb5.for.inc61_crit_edge, label %for.body10.lr.ph

sw.bb5.for.inc61_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc61

for.body10.lr.ph:                                 ; preds = %sw.bb5
  %get_stat11 = getelementptr [28 x %struct.efx_sw_stat_desc], ptr @efx_sw_stat_desc, i32 0, i32 %i.0271, i32 3
  %15 = ptrtoint ptr %get_stat11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %get_stat11, align 4
  %offset12 = getelementptr [28 x %struct.efx_sw_stat_desc], ptr @efx_sw_stat_desc, i32 0, i32 %i.0271, i32 2
  %17 = ptrtoint ptr %offset12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %offset12, align 4
  br label %for.body10

for.body10:                                       ; preds = %cond.end.for.body10_crit_edge, %for.body10.lr.ph
  %channel.0270 = phi ptr [ %14, %for.body10.lr.ph ], [ %26, %cond.end.for.body10_crit_edge ]
  %add.ptr13 = getelementptr i8, ptr %channel.0270, i32 %18
  %call14 = tail call i64 %16(ptr noundef %add.ptr13) #14
  %19 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %arrayidx6, align 8
  %add = add i64 %20, %call14
  store i64 %add, ptr %arrayidx6, align 8
  %channel16 = getelementptr inbounds %struct.efx_channel, ptr %channel.0270, i32 0, i32 1
  %21 = ptrtoint ptr %channel16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %channel16, align 4
  %add17 = add i32 %22, 1
  %23 = ptrtoint ptr %n_channels50 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %n_channels50, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add17, i32 %24)
  %cmp18 = icmp ult i32 %add17, %24
  br i1 %cmp18, label %cond.end, label %for.body10.for.inc61_crit_edge

for.body10.for.inc61_crit_edge:                   ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc61

cond.end:                                         ; preds = %for.body10
  %arrayidx22 = getelementptr %struct.efx_nic, ptr %add.ptr.i, i32 0, i32 25, i32 %add17
  %25 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx22, align 4
  %tobool.not = icmp eq ptr %26, null
  br i1 %tobool.not, label %cond.end.for.inc61_crit_edge, label %cond.end.for.body10_crit_edge

cond.end.for.body10_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body10

cond.end.for.inc61_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc61

sw.bb23:                                          ; preds = %for.body
  %arrayidx24 = getelementptr i64, ptr %add.ptr, i32 %i.0271
  %27 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 0, ptr %arrayidx24, align 8
  %28 = ptrtoint ptr %channel25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %channel25, align 8
  %tobool28.not267 = icmp eq ptr %29, null
  br i1 %tobool28.not267, label %sw.bb23.for.inc61_crit_edge, label %for.body29.lr.ph

sw.bb23.for.inc61_crit_edge:                      ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc61

for.body29.lr.ph:                                 ; preds = %sw.bb23
  %get_stat39 = getelementptr [28 x %struct.efx_sw_stat_desc], ptr @efx_sw_stat_desc, i32 0, i32 %i.0271, i32 3
  %offset40 = getelementptr [28 x %struct.efx_sw_stat_desc], ptr @efx_sw_stat_desc, i32 0, i32 %i.0271, i32 2
  br label %for.body29

for.body29:                                       ; preds = %cond.end58.for.body29_crit_edge, %for.body29.lr.ph
  %channel.1268 = phi ptr [ %29, %for.body29.lr.ph ], [ %57, %cond.end58.for.body29_crit_edge ]
  %tx_queue31 = getelementptr inbounds %struct.efx_channel, ptr %channel.1268, i32 0, i32 46
  %channel1.i.i = getelementptr inbounds %struct.efx_channel, ptr %channel.1268, i32 0, i32 1
  %30 = ptrtoint ptr %channel1.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %channel1.i.i, align 4
  %32 = ptrtoint ptr %channel.1268 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %channel.1268, align 128
  %xdp_channel_offset.i.i256 = getelementptr inbounds %struct.efx_nic, ptr %33, i32 0, i32 50
  %34 = ptrtoint ptr %xdp_channel_offset.i.i256 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %xdp_channel_offset.i.i256, align 8
  %sub.i.i257 = sub i32 %31, %35
  %n_xdp_channels.i.i258 = getelementptr inbounds %struct.efx_nic, ptr %33, i32 0, i32 49
  %36 = ptrtoint ptr %n_xdp_channels.i.i258 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %n_xdp_channels.i.i258, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i257, i32 %37)
  %cmp.i.i259 = icmp ult i32 %sub.i.i257, %37
  %xdp_tx_per_channel.i260 = getelementptr inbounds %struct.efx_nic, ptr %33, i32 0, i32 51
  %tx_queues_per_channel.i261 = getelementptr inbounds %struct.efx_nic, ptr %33, i32 0, i32 48
  %retval.0.in.i262 = select i1 %cmp.i.i259, ptr %xdp_tx_per_channel.i260, ptr %tx_queues_per_channel.i261
  %38 = ptrtoint ptr %retval.0.in.i262 to i32
  call void @__asan_load4_noabort(i32 %38)
  %retval.0.i263 = load i32, ptr %retval.0.in.i262, align 4
  %add.ptr36264 = getelementptr %struct.efx_tx_queue, ptr %tx_queue31, i32 %retval.0.i263
  %cmp37265 = icmp ult ptr %tx_queue31, %add.ptr36264
  br i1 %cmp37265, label %for.body38.lr.ph, label %for.body29.for.inc47_crit_edge

for.body29.for.inc47_crit_edge:                   ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc47

for.body38.lr.ph:                                 ; preds = %for.body29
  %39 = ptrtoint ptr %get_stat39 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %get_stat39, align 4
  %41 = ptrtoint ptr %offset40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %offset40, align 4
  br label %for.body38

for.body38:                                       ; preds = %for.body38.for.body38_crit_edge, %for.body38.lr.ph
  %tx_queue.0266 = phi ptr [ %tx_queue31, %for.body38.lr.ph ], [ %incdec.ptr, %for.body38.for.body38_crit_edge ]
  %add.ptr41 = getelementptr i8, ptr %tx_queue.0266, i32 %42
  %call42 = tail call i64 %40(ptr noundef %add.ptr41) #14
  %43 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %arrayidx24, align 8
  %add44 = add i64 %44, %call42
  store i64 %add44, ptr %arrayidx24, align 8
  %incdec.ptr = getelementptr %struct.efx_tx_queue, ptr %tx_queue.0266, i32 1
  %45 = ptrtoint ptr %channel1.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %channel1.i.i, align 4
  %47 = ptrtoint ptr %channel.1268 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %channel.1268, align 128
  %xdp_channel_offset.i.i = getelementptr inbounds %struct.efx_nic, ptr %48, i32 0, i32 50
  %49 = ptrtoint ptr %xdp_channel_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %xdp_channel_offset.i.i, align 8
  %sub.i.i = sub i32 %46, %50
  %n_xdp_channels.i.i = getelementptr inbounds %struct.efx_nic, ptr %48, i32 0, i32 49
  %51 = ptrtoint ptr %n_xdp_channels.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %n_xdp_channels.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %52)
  %cmp.i.i = icmp ult i32 %sub.i.i, %52
  %xdp_tx_per_channel.i = getelementptr inbounds %struct.efx_nic, ptr %48, i32 0, i32 51
  %tx_queues_per_channel.i = getelementptr inbounds %struct.efx_nic, ptr %48, i32 0, i32 48
  %retval.0.in.i = select i1 %cmp.i.i, ptr %xdp_tx_per_channel.i, ptr %tx_queues_per_channel.i
  %53 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %retval.0.i = load i32, ptr %retval.0.in.i, align 4
  %add.ptr36 = getelementptr %struct.efx_tx_queue, ptr %tx_queue31, i32 %retval.0.i
  %cmp37 = icmp ult ptr %incdec.ptr, %add.ptr36
  br i1 %cmp37, label %for.body38.for.body38_crit_edge, label %for.body38.for.inc47_crit_edge

for.body38.for.inc47_crit_edge:                   ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc47

for.body38.for.body38_crit_edge:                  ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body38

for.inc47:                                        ; preds = %for.body38.for.inc47_crit_edge, %for.body29.for.inc47_crit_edge
  %.lcssa255 = phi i32 [ %31, %for.body29.for.inc47_crit_edge ], [ %46, %for.body38.for.inc47_crit_edge ]
  %add49 = add i32 %.lcssa255, 1
  %54 = ptrtoint ptr %n_channels50 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %n_channels50, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add49, i32 %55)
  %cmp51 = icmp ult i32 %add49, %55
  br i1 %cmp51, label %cond.end58, label %for.inc47.for.inc61_crit_edge

for.inc47.for.inc61_crit_edge:                    ; preds = %for.inc47
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc61

cond.end58:                                       ; preds = %for.inc47
  %arrayidx56 = getelementptr %struct.efx_nic, ptr %add.ptr.i, i32 0, i32 25, i32 %add49
  %56 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx56, align 4
  %tobool28.not = icmp eq ptr %57, null
  br i1 %tobool28.not, label %cond.end58.for.inc61_crit_edge, label %cond.end58.for.body29_crit_edge

cond.end58.for.body29_crit_edge:                  ; preds = %cond.end58
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body29

cond.end58.for.inc61_crit_edge:                   ; preds = %cond.end58
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc61

for.inc61:                                        ; preds = %cond.end58.for.inc61_crit_edge, %for.inc47.for.inc61_crit_edge, %sw.bb23.for.inc61_crit_edge, %cond.end.for.inc61_crit_edge, %for.body10.for.inc61_crit_edge, %sw.bb5.for.inc61_crit_edge, %sw.bb, %for.body.for.inc61_crit_edge
  %inc = add nuw nsw i32 %i.0271, 1
  %exitcond.not = icmp eq i32 %inc, 28
  br i1 %exitcond.not, label %for.end62, label %for.inc61.for.body_crit_edge

for.inc61.for.body_crit_edge:                     ; preds = %for.inc61
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end62:                                        ; preds = %for.inc61
  %add.ptr63 = getelementptr i64, ptr %add.ptr, i32 28
  tail call void @_raw_spin_unlock_bh(ptr noundef %stats_lock) #14
  %58 = ptrtoint ptr %channel25 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %channel25, align 8
  %tobool68.not287 = icmp eq ptr %59, null
  br i1 %tobool68.not287, label %for.end62.for.end141_crit_edge, label %for.end62.for.body69_crit_edge

for.end62.for.body69_crit_edge:                   ; preds = %for.end62
  br label %for.body69

for.end62.for.end141_crit_edge:                   ; preds = %for.end62
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end141

for.body69:                                       ; preds = %cond.end103.for.body69_crit_edge, %for.end62.for.body69_crit_edge
  %channel.2289 = phi ptr [ %86, %cond.end103.for.body69_crit_edge ], [ %59, %for.end62.for.body69_crit_edge ]
  %data.addr.0288 = phi ptr [ %incdec.ptr89, %cond.end103.for.body69_crit_edge ], [ %add.ptr63, %for.end62.for.body69_crit_edge ]
  %60 = ptrtoint ptr %data.addr.0288 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 0, ptr %data.addr.0288, align 8
  %tx_queue75 = getelementptr inbounds %struct.efx_channel, ptr %channel.2289, i32 0, i32 46
  %channel1.i.i243 = getelementptr inbounds %struct.efx_channel, ptr %channel.2289, i32 0, i32 1
  %61 = ptrtoint ptr %channel1.i.i243 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %channel1.i.i243, align 4
  %63 = ptrtoint ptr %channel.2289 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %channel.2289, align 128
  %xdp_channel_offset.i.i244275 = getelementptr inbounds %struct.efx_nic, ptr %64, i32 0, i32 50
  %65 = ptrtoint ptr %xdp_channel_offset.i.i244275 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %xdp_channel_offset.i.i244275, align 8
  %sub.i.i245276 = sub i32 %62, %66
  %n_xdp_channels.i.i246277 = getelementptr inbounds %struct.efx_nic, ptr %64, i32 0, i32 49
  %67 = ptrtoint ptr %n_xdp_channels.i.i246277 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %n_xdp_channels.i.i246277, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i245276, i32 %68)
  %cmp.i.i247278 = icmp ult i32 %sub.i.i245276, %68
  %xdp_tx_per_channel.i248279 = getelementptr inbounds %struct.efx_nic, ptr %64, i32 0, i32 51
  %tx_queues_per_channel.i249280 = getelementptr inbounds %struct.efx_nic, ptr %64, i32 0, i32 48
  %retval.0.in.i250281 = select i1 %cmp.i.i247278, ptr %xdp_tx_per_channel.i248279, ptr %tx_queues_per_channel.i249280
  %69 = ptrtoint ptr %retval.0.in.i250281 to i32
  call void @__asan_load4_noabort(i32 %69)
  %retval.0.i251282 = load i32, ptr %retval.0.in.i250281, align 4
  %add.ptr81283 = getelementptr %struct.efx_tx_queue, ptr %tx_queue75, i32 %retval.0.i251282
  %cmp82284 = icmp ult ptr %tx_queue75, %add.ptr81283
  br i1 %cmp82284, label %for.body69.for.body83_crit_edge, label %for.body69.if.end88_crit_edge

for.body69.if.end88_crit_edge:                    ; preds = %for.body69
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end88

for.body69.for.body83_crit_edge:                  ; preds = %for.body69
  br label %for.body83

for.body83:                                       ; preds = %for.body83.for.body83_crit_edge, %for.body69.for.body83_crit_edge
  %tx_queue.1285 = phi ptr [ %incdec.ptr86, %for.body83.for.body83_crit_edge ], [ %tx_queue75, %for.body69.for.body83_crit_edge ]
  %tx_packets = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue.1285, i32 0, i32 39
  %70 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %tx_packets, align 4
  %conv = zext i32 %71 to i64
  %72 = ptrtoint ptr %data.addr.0288 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %data.addr.0288, align 8
  %add84 = add i64 %73, %conv
  store i64 %add84, ptr %data.addr.0288, align 8
  %incdec.ptr86 = getelementptr %struct.efx_tx_queue, ptr %tx_queue.1285, i32 1
  %74 = ptrtoint ptr %channel1.i.i243 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %channel1.i.i243, align 4
  %76 = ptrtoint ptr %channel.2289 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %channel.2289, align 128
  %xdp_channel_offset.i.i244 = getelementptr inbounds %struct.efx_nic, ptr %77, i32 0, i32 50
  %78 = ptrtoint ptr %xdp_channel_offset.i.i244 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %xdp_channel_offset.i.i244, align 8
  %sub.i.i245 = sub i32 %75, %79
  %n_xdp_channels.i.i246 = getelementptr inbounds %struct.efx_nic, ptr %77, i32 0, i32 49
  %80 = ptrtoint ptr %n_xdp_channels.i.i246 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %n_xdp_channels.i.i246, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i245, i32 %81)
  %cmp.i.i247 = icmp ult i32 %sub.i.i245, %81
  %xdp_tx_per_channel.i248 = getelementptr inbounds %struct.efx_nic, ptr %77, i32 0, i32 51
  %tx_queues_per_channel.i249 = getelementptr inbounds %struct.efx_nic, ptr %77, i32 0, i32 48
  %retval.0.in.i250 = select i1 %cmp.i.i247, ptr %xdp_tx_per_channel.i248, ptr %tx_queues_per_channel.i249
  %82 = ptrtoint ptr %retval.0.in.i250 to i32
  call void @__asan_load4_noabort(i32 %82)
  %retval.0.i251 = load i32, ptr %retval.0.in.i250, align 4
  %add.ptr81 = getelementptr %struct.efx_tx_queue, ptr %tx_queue75, i32 %retval.0.i251
  %cmp82 = icmp ult ptr %incdec.ptr86, %add.ptr81
  br i1 %cmp82, label %for.body83.for.body83_crit_edge, label %for.body83.if.end88_crit_edge

for.body83.if.end88_crit_edge:                    ; preds = %for.body83
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end88

for.body83.for.body83_crit_edge:                  ; preds = %for.body83
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body83

if.end88:                                         ; preds = %for.body83.if.end88_crit_edge, %for.body69.if.end88_crit_edge
  %.lcssa = phi i32 [ %62, %for.body69.if.end88_crit_edge ], [ %75, %for.body83.if.end88_crit_edge ]
  %incdec.ptr89 = getelementptr i64, ptr %data.addr.0288, i32 1
  %add93 = add i32 %.lcssa, 1
  %83 = ptrtoint ptr %n_channels50 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %n_channels50, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add93, i32 %84)
  %cmp95 = icmp ult i32 %add93, %84
  br i1 %cmp95, label %cond.end103, label %if.end88.for.end105_crit_edge

if.end88.for.end105_crit_edge:                    ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end105

cond.end103:                                      ; preds = %if.end88
  %arrayidx101 = getelementptr %struct.efx_nic, ptr %add.ptr.i, i32 0, i32 25, i32 %add93
  %85 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx101, align 4
  %tobool68.not = icmp eq ptr %86, null
  br i1 %tobool68.not, label %cond.end103.for.end105_crit_edge, label %cond.end103.for.body69_crit_edge

cond.end103.for.body69_crit_edge:                 ; preds = %cond.end103
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body69

cond.end103.for.end105_crit_edge:                 ; preds = %cond.end103
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end105

for.end105:                                       ; preds = %cond.end103.for.end105_crit_edge, %if.end88.for.end105_crit_edge
  %87 = ptrtoint ptr %channel25 to i32
  call void @__asan_load4_noabort(i32 %87)
  %.pr = load ptr, ptr %channel25, align 8
  %tobool109.not293 = icmp eq ptr %.pr, null
  br i1 %tobool109.not293, label %for.end105.for.end141_crit_edge, label %for.end105.for.body110_crit_edge

for.end105.for.body110_crit_edge:                 ; preds = %for.end105
  br label %for.body110

for.end105.for.end141_crit_edge:                  ; preds = %for.end105
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end141

for.body110:                                      ; preds = %cond.end139.for.body110_crit_edge, %for.end105.for.body110_crit_edge
  %channel.3295 = phi ptr [ %102, %cond.end139.for.body110_crit_edge ], [ %.pr, %for.end105.for.body110_crit_edge ]
  %data.addr.2294 = phi ptr [ %data.addr.3, %cond.end139.for.body110_crit_edge ], [ %incdec.ptr89, %for.end105.for.body110_crit_edge ]
  %core_index.i = getelementptr inbounds %struct.efx_channel, ptr %channel.3295, i32 0, i32 45, i32 1
  %88 = ptrtoint ptr %core_index.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %core_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %89)
  %cmp.i = icmp sgt i32 %89, -1
  br i1 %cmp.i, label %if.then112, label %for.body110.for.inc127_crit_edge

for.body110.for.inc127_crit_edge:                 ; preds = %for.body110
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc127

if.then112:                                       ; preds = %for.body110
  %90 = ptrtoint ptr %data.addr.2294 to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 0, ptr %data.addr.2294, align 8
  %91 = ptrtoint ptr %core_index.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %core_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp.i253 = icmp slt i32 %92, 0
  %rx_queue116 = getelementptr inbounds %struct.efx_channel, ptr %channel.3295, i32 0, i32 45
  %tobool118.not291 = icmp eq ptr %rx_queue116, null
  %or.cond = select i1 %cmp.i253, i1 true, i1 %tobool118.not291
  br i1 %or.cond, label %if.then112.if.end124_crit_edge, label %for.body119

if.then112.if.end124_crit_edge:                   ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end124

for.body119:                                      ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #16
  %rx_packets = getelementptr inbounds %struct.efx_channel, ptr %channel.3295, i32 0, i32 45, i32 26
  %93 = ptrtoint ptr %rx_packets to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %rx_packets, align 32
  %conv120 = zext i32 %94 to i64
  %95 = ptrtoint ptr %data.addr.2294 to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %data.addr.2294, align 8
  %add121 = add i64 %96, %conv120
  store i64 %add121, ptr %data.addr.2294, align 8
  br label %if.end124

if.end124:                                        ; preds = %for.body119, %if.then112.if.end124_crit_edge
  %incdec.ptr125 = getelementptr i64, ptr %data.addr.2294, i32 1
  br label %for.inc127

for.inc127:                                       ; preds = %if.end124, %for.body110.for.inc127_crit_edge
  %data.addr.3 = phi ptr [ %incdec.ptr125, %if.end124 ], [ %data.addr.2294, %for.body110.for.inc127_crit_edge ]
  %channel128 = getelementptr inbounds %struct.efx_channel, ptr %channel.3295, i32 0, i32 1
  %97 = ptrtoint ptr %channel128 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %channel128, align 4
  %add129 = add i32 %98, 1
  %99 = ptrtoint ptr %n_channels50 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %n_channels50, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add129, i32 %100)
  %cmp131 = icmp ult i32 %add129, %100
  br i1 %cmp131, label %cond.end139, label %for.inc127.for.end141_crit_edge

for.inc127.for.end141_crit_edge:                  ; preds = %for.inc127
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end141

cond.end139:                                      ; preds = %for.inc127
  %arrayidx137 = getelementptr %struct.efx_nic, ptr %add.ptr.i, i32 0, i32 25, i32 %add129
  %101 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %arrayidx137, align 4
  %tobool109.not = icmp eq ptr %102, null
  br i1 %tobool109.not, label %cond.end139.for.end141_crit_edge, label %cond.end139.for.body110_crit_edge

cond.end139.for.body110_crit_edge:                ; preds = %cond.end139
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body110

cond.end139.for.end141_crit_edge:                 ; preds = %cond.end139
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end141

for.end141:                                       ; preds = %cond.end139.for.end141_crit_edge, %for.inc127.for.end141_crit_edge, %for.end105.for.end141_crit_edge, %for.end62.for.end141_crit_edge
  %data.addr.2.lcssa = phi ptr [ %incdec.ptr89, %for.end105.for.end141_crit_edge ], [ %add.ptr63, %for.end62.for.end141_crit_edge ], [ %data.addr.3, %cond.end139.for.end141_crit_edge ], [ %data.addr.3, %for.inc127.for.end141_crit_edge ]
  %xdp_tx_queue_count = getelementptr i8, ptr %net_dev, i32 3632
  %103 = ptrtoint ptr %xdp_tx_queue_count to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %xdp_tx_queue_count, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool142.not = icmp eq i32 %104, 0
  br i1 %tobool142.not, label %for.end141.if.end159_crit_edge, label %land.lhs.true

for.end141.if.end159_crit_edge:                   ; preds = %for.end141
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end159

land.lhs.true:                                    ; preds = %for.end141
  %xdp_tx_queues = getelementptr i8, ptr %net_dev, i32 3636
  %105 = ptrtoint ptr %xdp_tx_queues to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %xdp_tx_queues, align 4
  %tobool143.not = icmp eq ptr %106, null
  br i1 %tobool143.not, label %land.lhs.true.if.end159_crit_edge, label %for.cond145.preheader

land.lhs.true.if.end159_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end159

for.cond145.preheader:                            ; preds = %land.lhs.true
  %107 = ptrtoint ptr %xdp_tx_queue_count to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %xdp_tx_queue_count, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %cmp147299.not = icmp eq i32 %108, 0
  br i1 %cmp147299.not, label %for.cond145.preheader.if.end159_crit_edge, label %for.cond145.preheader.for.body149_crit_edge

for.cond145.preheader.for.body149_crit_edge:      ; preds = %for.cond145.preheader
  br label %for.body149

for.cond145.preheader.if.end159_crit_edge:        ; preds = %for.cond145.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end159

for.body149:                                      ; preds = %for.body149.for.body149_crit_edge, %for.cond145.preheader.for.body149_crit_edge
  %xdp.0301 = phi i32 [ %inc157, %for.body149.for.body149_crit_edge ], [ 0, %for.cond145.preheader.for.body149_crit_edge ]
  %data.addr.4300 = phi ptr [ %incdec.ptr155, %for.body149.for.body149_crit_edge ], [ %data.addr.2.lcssa, %for.cond145.preheader.for.body149_crit_edge ]
  %109 = ptrtoint ptr %xdp_tx_queues to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %xdp_tx_queues, align 4
  %arrayidx151 = getelementptr ptr, ptr %110, i32 %xdp.0301
  %111 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %arrayidx151, align 4
  %tx_packets152 = getelementptr inbounds %struct.efx_tx_queue, ptr %112, i32 0, i32 39
  %113 = ptrtoint ptr %tx_packets152 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %tx_packets152, align 4
  %conv153 = zext i32 %114 to i64
  %115 = ptrtoint ptr %data.addr.4300 to i32
  call void @__asan_store8_noabort(i32 %115)
  store i64 %conv153, ptr %data.addr.4300, align 8
  %incdec.ptr155 = getelementptr i64, ptr %data.addr.4300, i32 1
  %inc157 = add nuw i32 %xdp.0301, 1
  %116 = ptrtoint ptr %xdp_tx_queue_count to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %xdp_tx_queue_count, align 16
  %cmp147 = icmp ult i32 %inc157, %117
  br i1 %cmp147, label %for.body149.for.body149_crit_edge, label %for.body149.if.end159_crit_edge

for.body149.if.end159_crit_edge:                  ; preds = %for.body149
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end159

for.body149.for.body149_crit_edge:                ; preds = %for.body149
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body149

if.end159:                                        ; preds = %for.body149.if.end159_crit_edge, %for.cond145.preheader.if.end159_crit_edge, %land.lhs.true.if.end159_crit_edge, %for.end141.if.end159_crit_edge
  %data.addr.5 = phi ptr [ %data.addr.2.lcssa, %land.lhs.true.if.end159_crit_edge ], [ %data.addr.2.lcssa, %for.end141.if.end159_crit_edge ], [ %data.addr.2.lcssa, %for.cond145.preheader.if.end159_crit_edge ], [ %incdec.ptr155, %for.body149.if.end159_crit_edge ]
  %call160 = tail call i32 @efx_ptp_update_stats(ptr noundef %add.ptr.i, ptr noundef %data.addr.5) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_ptp_update_stats(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_ethtool_get_link_ksettings(ptr noundef %net_dev, ptr noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %mac_lock = getelementptr i8, ptr %net_dev, i32 4592
  tail call void @mutex_lock_nested(ptr noundef %mac_lock, i32 noundef 0) #14
  tail call void @efx_mcdi_phy_get_link_ksettings(ptr noundef %add.ptr.i, ptr noundef %cmd) #14
  tail call void @mutex_unlock(ptr noundef %mac_lock) #14
  %link_modes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %link_modes, align 4
  %or.i18 = or i32 %1, 24576
  store i32 %or.i18, ptr %link_modes, align 4
  %loopback_mode = getelementptr i8, ptr %net_dev, i32 4900
  %2 = ptrtoint ptr %loopback_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %loopback_mode, align 4
  %shl = shl nuw i32 1, %3
  %and = and i32 %shl, 66600958
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %speed = getelementptr i8, ptr %net_dev, i32 4840
  %4 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %speed, align 4
  %speed6 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %6 = ptrtoint ptr %speed6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %speed6, align 4
  %fd = getelementptr i8, ptr %net_dev, i32 4837
  %7 = ptrtoint ptr %fd to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %fd, align 1, !range !137
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %9 = ptrtoint ptr %duplex to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %duplex, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_mcdi_phy_get_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_ethtool_set_link_ksettings(ptr noundef %net_dev, ptr noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %speed = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %1)
  %cmp = icmp eq i32 %1, 1000
  br i1 %cmp, label %land.lhs.true, label %entry.if.end15_crit_edge

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

land.lhs.true:                                    ; preds = %entry
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %2 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp2.not = icmp eq i8 %3, 1
  br i1 %cmp2.not, label %land.lhs.true.if.end15_crit_edge, label %do.body

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

do.body:                                          ; preds = %land.lhs.true
  %msg_enable = getelementptr i8, ptr %net_dev, i32 2460
  %4 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.body5

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_ethtool_set_link_ksettings.__UNIQUE_ID_ddebug526, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_ethtool_set_link_ksettings, %if.then10)) #14
          to label %cleanup [label %if.then10], !srcloc !136

if.then10:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #16
  %net_dev11 = getelementptr i8, ptr %net_dev, i32 4732
  %6 = ptrtoint ptr %net_dev11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net_dev11, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_ethtool_set_link_ksettings.__UNIQUE_ID_ddebug526, ptr noundef %7, ptr noundef nonnull @.str.24) #14
  br label %cleanup

if.end15:                                         ; preds = %land.lhs.true.if.end15_crit_edge, %entry.if.end15_crit_edge
  %mac_lock = getelementptr i8, ptr %net_dev, i32 4592
  tail call void @mutex_lock_nested(ptr noundef %mac_lock, i32 noundef 0) #14
  %call16 = tail call i32 @efx_mcdi_phy_set_link_ksettings(ptr noundef %add.ptr.i, ptr noundef %cmd) #14
  tail call void @mutex_unlock(ptr noundef %mac_lock) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then10, %do.body5, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %if.end15 ], [ -22, %if.then10 ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %do.body5 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_phy_set_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_ethtool_get_fecparam(ptr noundef %net_dev, ptr noundef %fecparam) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %mac_lock = getelementptr i8, ptr %net_dev, i32 4592
  tail call void @mutex_lock_nested(ptr noundef %mac_lock, i32 noundef 0) #14
  %call1 = tail call i32 @efx_mcdi_phy_get_fecparam(ptr noundef %add.ptr.i, ptr noundef %fecparam) #14
  tail call void @mutex_unlock(ptr noundef %mac_lock) #14
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_phy_get_fecparam(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_ethtool_set_fecparam(ptr noundef %net_dev, ptr noundef %fecparam) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %mac_lock = getelementptr i8, ptr %net_dev, i32 4592
  tail call void @mutex_lock_nested(ptr noundef %mac_lock, i32 noundef 0) #14
  %call1 = tail call i32 @efx_mcdi_phy_set_fecparam(ptr noundef %add.ptr.i, ptr noundef %fecparam) #14
  tail call void @mutex_unlock(ptr noundef %mac_lock) #14
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_phy_set_fecparam(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_ethtool_get_rxnfc(ptr noundef %net_dev, ptr noundef %info, ptr noundef %rule_locs) local_unnamed_addr #0 align 64 {
entry:
  %spec.i = alloca %struct.efx_filter_spec, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %info, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 45, label %sw.bb
    i32 41, label %sw.bb1
    i32 46, label %sw.bb22
    i32 47, label %sw.bb32
    i32 48, label %sw.bb49
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %n_rx_channels = getelementptr i8, ptr %net_dev, i32 3692
  %3 = ptrtoint ptr %n_rx_channels to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %n_rx_channels, align 4
  %conv = zext i32 %4 to i64
  %data = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 2
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %conv, ptr %data, align 8
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  %rss_context2 = getelementptr i8, ptr %net_dev, i32 3776
  %rss_lock = getelementptr i8, ptr %net_dev, i32 4348
  tail call void @mutex_lock_nested(ptr noundef %rss_lock, i32 noundef 0) #14
  %flow_type = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 1
  %6 = ptrtoint ptr %flow_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flow_type, align 4
  %and = and i32 %7, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.bb1.if.end8_crit_edge, label %land.lhs.true

sw.bb1.if.end8_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

land.lhs.true:                                    ; preds = %sw.bb1
  %8 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool4.not = icmp eq i32 %10, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end8_crit_edge, label %if.then

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.then:                                          ; preds = %land.lhs.true
  %call5 = tail call ptr @efx_find_rss_context_entry(ptr noundef %add.ptr.i, i32 noundef %10) #14
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.then.out_unlock_crit_edge, label %if.then.if.end8_crit_edge

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.then.out_unlock_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

if.end8:                                          ; preds = %if.then.if.end8_crit_edge, %land.lhs.true.if.end8_crit_edge, %sw.bb1.if.end8_crit_edge
  %ctx.0 = phi ptr [ %call5, %if.then.if.end8_crit_edge ], [ %rss_context2, %land.lhs.true.if.end8_crit_edge ], [ %rss_context2, %sw.bb1.if.end8_crit_edge ]
  %context_id.i = getelementptr inbounds %struct.efx_rss_context, ptr %ctx.0, i32 0, i32 1
  %11 = ptrtoint ptr %context_id.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %context_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %cmp.i.not = icmp eq i32 %12, -1
  br i1 %cmp.i.not, label %if.end8.out_setdata_unlock_crit_edge, label %if.end11

if.end8.out_setdata_unlock_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_setdata_unlock

if.end11:                                         ; preds = %if.end8
  %13 = ptrtoint ptr %flow_type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flow_type, align 4
  %and13 = and i32 %14, -536870913
  %15 = zext i32 %and13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %and13, label %if.end11.out_setdata_unlock_crit_edge [
    i32 2, label %if.end11.sw.bb14_crit_edge
    i32 6, label %if.end11.sw.bb14_crit_edge121
    i32 1, label %if.end11.sw.bb18_crit_edge
    i32 5, label %if.end11.sw.bb18_crit_edge122
    i32 3, label %if.end11.sw.bb19_crit_edge
    i32 7, label %if.end11.sw.bb19_crit_edge123
    i32 4, label %if.end11.sw.bb19_crit_edge124
    i32 8, label %if.end11.sw.bb19_crit_edge125
    i32 16, label %if.end11.sw.bb19_crit_edge126
    i32 17, label %if.end11.sw.bb19_crit_edge127
  ]

if.end11.sw.bb19_crit_edge127:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb19

if.end11.sw.bb19_crit_edge126:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb19

if.end11.sw.bb19_crit_edge125:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb19

if.end11.sw.bb19_crit_edge124:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb19

if.end11.sw.bb19_crit_edge123:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb19

if.end11.sw.bb19_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb19

if.end11.sw.bb18_crit_edge122:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb18

if.end11.sw.bb18_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb18

if.end11.sw.bb14_crit_edge121:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb14

if.end11.sw.bb14_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb14

if.end11.out_setdata_unlock_crit_edge:            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_setdata_unlock

sw.bb14:                                          ; preds = %if.end11.sw.bb14_crit_edge, %if.end11.sw.bb14_crit_edge121
  %rx_hash_udp_4tuple = getelementptr inbounds %struct.efx_rss_context, ptr %ctx.0, i32 0, i32 3
  %16 = ptrtoint ptr %rx_hash_udp_4tuple to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %rx_hash_udp_4tuple, align 4, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool15.not = icmp eq i8 %17, 0
  %. = select i1 %tobool15.not, i64 48, i64 240
  br label %out_setdata_unlock

sw.bb18:                                          ; preds = %if.end11.sw.bb18_crit_edge, %if.end11.sw.bb18_crit_edge122
  br label %out_setdata_unlock

sw.bb19:                                          ; preds = %if.end11.sw.bb19_crit_edge, %if.end11.sw.bb19_crit_edge123, %if.end11.sw.bb19_crit_edge124, %if.end11.sw.bb19_crit_edge125, %if.end11.sw.bb19_crit_edge126, %if.end11.sw.bb19_crit_edge127
  br label %out_setdata_unlock

out_setdata_unlock:                               ; preds = %sw.bb19, %sw.bb18, %sw.bb14, %if.end11.out_setdata_unlock_crit_edge, %if.end8.out_setdata_unlock_crit_edge
  %data3.0 = phi i64 [ 0, %if.end11.out_setdata_unlock_crit_edge ], [ 48, %sw.bb19 ], [ 240, %sw.bb18 ], [ 0, %if.end8.out_setdata_unlock_crit_edge ], [ %., %sw.bb14 ]
  %data20 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 2
  %18 = ptrtoint ptr %data20 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %data3.0, ptr %data20, align 8
  br label %out_unlock

out_unlock:                                       ; preds = %out_setdata_unlock, %if.then.out_unlock_crit_edge
  %rc.0 = phi i32 [ 0, %out_setdata_unlock ], [ -2, %if.then.out_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %rss_lock) #14
  br label %cleanup

sw.bb22:                                          ; preds = %entry
  %type.i = getelementptr i8, ptr %net_dev, i32 2348
  %19 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %type.i, align 4
  %filter_get_rx_id_limit.i = getelementptr inbounds %struct.efx_nic_type, ptr %20, i32 0, i32 82
  %21 = ptrtoint ptr %filter_get_rx_id_limit.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %filter_get_rx_id_limit.i, align 8
  %call.i = tail call i32 %22(ptr noundef %add.ptr.i) #14
  %conv24 = zext i32 %call.i to i64
  %data25 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 2
  %23 = ptrtoint ptr %data25 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %conv24, ptr %data25, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp eq i32 %call.i, 0
  br i1 %cmp, label %sw.bb22.cleanup_crit_edge, label %if.end29

sw.bb22.cleanup_crit_edge:                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end29:                                         ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #16
  %or = or i64 %conv24, 2147483648
  %24 = ptrtoint ptr %data25 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %or, ptr %data25, align 8
  %25 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %type.i, align 4
  %filter_count_rx_used.i = getelementptr inbounds %struct.efx_nic_type, ptr %26, i32 0, i32 81
  %27 = ptrtoint ptr %filter_count_rx_used.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %filter_count_rx_used.i, align 4
  %call.i101 = tail call i32 %28(ptr noundef %add.ptr.i, i32 noundef 2) #14
  %29 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call.i101, ptr %29, align 8
  br label %cleanup

sw.bb32:                                          ; preds = %entry
  %type.i102 = getelementptr i8, ptr %net_dev, i32 2348
  %31 = ptrtoint ptr %type.i102 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %type.i102, align 4
  %filter_get_rx_id_limit.i103 = getelementptr inbounds %struct.efx_nic_type, ptr %32, i32 0, i32 82
  %33 = ptrtoint ptr %filter_get_rx_id_limit.i103 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %filter_get_rx_id_limit.i103, align 8
  %call.i104 = tail call i32 %34(ptr noundef %add.ptr.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i104)
  %cmp34 = icmp eq i32 %call.i104, 0
  br i1 %cmp34, label %sw.bb32.cleanup_crit_edge, label %if.end37

sw.bb32.cleanup_crit_edge:                        ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end37:                                         ; preds = %sw.bb32
  %fs = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3
  %h_u.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 1
  %m_u.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %spec.i) #14
  %35 = call ptr @memset(ptr %spec.i, i32 255, i32 68)
  %location.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 6
  %36 = ptrtoint ptr %location.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %location.i, align 8
  %38 = ptrtoint ptr %type.i102 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %type.i102, align 4
  %filter_get_safe.i.i = getelementptr inbounds %struct.efx_nic_type, ptr %39, i32 0, i32 79
  %40 = ptrtoint ptr %filter_get_safe.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %filter_get_safe.i.i, align 4
  %call.i.i = call i32 %41(ptr noundef %add.ptr.i, i32 noundef 2, i32 noundef %37, ptr noundef nonnull %spec.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %efx_ethtool_get_class_rule.exit

if.end.i:                                         ; preds = %if.end37
  %42 = ptrtoint ptr %spec.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %bf.load.i = load i32, ptr %spec.i, align 4
  %bf.clear.i = and i32 %bf.load.i, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %bf.clear.i)
  %cmp.i105 = icmp eq i32 %bf.clear.i, 4095
  %conv.i = zext i32 %bf.clear.i to i64
  %spec.select.i = select i1 %cmp.i105, i64 -1, i64 %conv.i
  %43 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 5
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %spec.select.i, ptr %43, align 8
  %45 = and i32 %bf.load.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool15.not.i = icmp eq i32 %45, 0
  br i1 %tobool15.not.i, label %if.else147.thread.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %ether_type.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec.i, i32 0, i32 6
  %46 = ptrtoint ptr %ether_type.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %ether_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %47)
  %cmp17.i = icmp ne i16 %47, 2048
  %48 = and i32 %bf.load.i, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool23.not.i = icmp eq i32 %48, 0
  %or.cond.i = select i1 %cmp17.i, i1 true, i1 %tobool23.not.i
  br i1 %or.cond.i, label %land.lhs.true76.i, label %land.lhs.true24.i

land.lhs.true24.i:                                ; preds = %land.lhs.true.i
  %ip_proto.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec.i, i32 0, i32 7
  %49 = ptrtoint ptr %ip_proto.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %ip_proto.i, align 2
  %51 = zext i8 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.68)
  switch i8 %50, label %land.lhs.true24.i.if.else147.i_crit_edge [
    i8 6, label %land.lhs.true24.i.land.lhs.true32.i_crit_edge
    i8 17, label %land.lhs.true24.i.land.lhs.true32.i_crit_edge128
  ]

land.lhs.true24.i.land.lhs.true32.i_crit_edge128: ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true32.i

land.lhs.true24.i.land.lhs.true32.i_crit_edge:    ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true32.i

land.lhs.true24.i.if.else147.i_crit_edge:         ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else147.i

land.lhs.true32.i:                                ; preds = %land.lhs.true24.i.land.lhs.true32.i_crit_edge, %land.lhs.true24.i.land.lhs.true32.i_crit_edge128
  %52 = and i32 %bf.load.i, -918552576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool36.not.i = icmp eq i32 %52, 0
  br i1 %tobool36.not.i, label %if.then37.i, label %land.lhs.true32.i.if.else147.i_crit_edge

land.lhs.true32.i.if.else147.i_crit_edge:         ; preds = %land.lhs.true32.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else147.i

if.then37.i:                                      ; preds = %land.lhs.true32.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %50)
  %cmp40.i = icmp eq i8 %50, 6
  %cond.i = select i1 %cmp40.i, i32 1, i32 2
  %53 = ptrtoint ptr %fs to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %cond.i, ptr %fs, align 8
  %54 = and i32 %bf.load.i, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool45.not.i = icmp eq i32 %54, 0
  br i1 %tobool45.not.i, label %if.then37.i.if.end48.i_crit_edge, label %if.then46.i

if.then37.i.if.end48.i_crit_edge:                 ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48.i

if.then46.i:                                      ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #16
  %loc_host.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec.i, i32 0, i32 8
  %55 = ptrtoint ptr %loc_host.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %loc_host.i, align 4
  %ip4dst.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 1, i32 0, i32 0, i32 1
  %57 = ptrtoint ptr %ip4dst.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %ip4dst.i, align 4
  %ip4dst47.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3, i32 0, i32 0, i32 1
  %58 = ptrtoint ptr %ip4dst47.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 -1, ptr %ip4dst47.i, align 4
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then46.i, %if.then37.i.if.end48.i_crit_edge
  %59 = and i32 %bf.load.i, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool52.not.i = icmp eq i32 %59, 0
  br i1 %tobool52.not.i, label %if.end48.i.if.end56.i_crit_edge, label %if.then53.i

if.end48.i.if.end56.i_crit_edge:                  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end56.i

if.then53.i:                                      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #16
  %rem_host.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec.i, i32 0, i32 9
  %60 = ptrtoint ptr %rem_host.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rem_host.i, align 4
  %62 = ptrtoint ptr %h_u.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %h_u.i, align 4
  %63 = ptrtoint ptr %m_u.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 -1, ptr %m_u.i, align 4
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.then53.i, %if.end48.i.if.end56.i_crit_edge
  %64 = and i32 %bf.load.i, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool60.not.i = icmp eq i32 %64, 0
  br i1 %tobool60.not.i, label %if.end56.i.if.end63.i_crit_edge, label %if.then61.i

if.end56.i.if.end63.i_crit_edge:                  ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end63.i

if.then61.i:                                      ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #16
  %loc_port.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec.i, i32 0, i32 10
  %65 = ptrtoint ptr %loc_port.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %loc_port.i, align 4
  %pdst.i = getelementptr inbounds %struct.ethtool_tcpip4_spec, ptr %h_u.i, i32 0, i32 3
  %67 = ptrtoint ptr %pdst.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %66, ptr %pdst.i, align 2
  %pdst62.i = getelementptr inbounds %struct.ethtool_tcpip4_spec, ptr %m_u.i, i32 0, i32 3
  %68 = ptrtoint ptr %pdst62.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 -1, ptr %pdst62.i, align 2
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.then61.i, %if.end56.i.if.end63.i_crit_edge
  %69 = and i32 %bf.load.i, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool67.not.i = icmp eq i32 %69, 0
  br i1 %tobool67.not.i, label %if.end63.i.if.end307.i_crit_edge, label %if.then68.i

if.end63.i.if.end307.i_crit_edge:                 ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end307.i

if.then68.i:                                      ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #16
  %rem_port.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec.i, i32 0, i32 11
  %70 = ptrtoint ptr %rem_port.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %rem_port.i, align 2
  %psrc.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 1, i32 0, i32 0, i32 2
  %72 = ptrtoint ptr %psrc.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %71, ptr %psrc.i, align 4
  %psrc69.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3, i32 0, i32 0, i32 2
  %73 = ptrtoint ptr %psrc69.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 -1, ptr %psrc69.i, align 4
  br label %if.end307.i

land.lhs.true76.i:                                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %47)
  %cmp79.i = icmp ne i16 %47, -31011
  %or.cond387.i = select i1 %cmp79.i, i1 true, i1 %tobool23.not.i
  br i1 %or.cond387.i, label %land.lhs.true76.i.if.else147.i_crit_edge, label %land.lhs.true86.i

land.lhs.true76.i.if.else147.i_crit_edge:         ; preds = %land.lhs.true76.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else147.i

land.lhs.true86.i:                                ; preds = %land.lhs.true76.i
  %ip_proto87.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec.i, i32 0, i32 7
  %74 = ptrtoint ptr %ip_proto87.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %ip_proto87.i, align 2
  %76 = zext i8 %75 to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.69)
  switch i8 %75, label %land.lhs.true86.i.if.else147.i_crit_edge [
    i8 6, label %land.lhs.true86.i.land.lhs.true96.i_crit_edge
    i8 17, label %land.lhs.true86.i.land.lhs.true96.i_crit_edge129
  ]

land.lhs.true86.i.land.lhs.true96.i_crit_edge129: ; preds = %land.lhs.true86.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true96.i

land.lhs.true86.i.land.lhs.true96.i_crit_edge:    ; preds = %land.lhs.true86.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true96.i

land.lhs.true86.i.if.else147.i_crit_edge:         ; preds = %land.lhs.true86.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else147.i

land.lhs.true96.i:                                ; preds = %land.lhs.true86.i.land.lhs.true96.i_crit_edge, %land.lhs.true86.i.land.lhs.true96.i_crit_edge129
  %77 = and i32 %bf.load.i, -918552576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool100.not.i = icmp eq i32 %77, 0
  br i1 %tobool100.not.i, label %if.then101.i, label %land.lhs.true96.i.if.else147.i_crit_edge

land.lhs.true96.i.if.else147.i_crit_edge:         ; preds = %land.lhs.true96.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else147.i

if.then101.i:                                     ; preds = %land.lhs.true96.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %75)
  %cmp104.i = icmp eq i8 %75, 6
  %cond106.i = select i1 %cmp104.i, i32 5, i32 6
  %78 = ptrtoint ptr %fs to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %cond106.i, ptr %fs, align 8
  %79 = and i32 %bf.load.i, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool111.not.i = icmp eq i32 %79, 0
  br i1 %tobool111.not.i, label %if.then101.i.if.end117.i_crit_edge, label %if.then112.i

if.then101.i.if.end117.i_crit_edge:               ; preds = %if.then101.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end117.i

if.then112.i:                                     ; preds = %if.then101.i
  call void @__sanitizer_cov_trace_pc() #16
  %ip6dst.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 1, i32 0, i32 1
  %loc_host113.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec.i, i32 0, i32 8
  %80 = call ptr @memcpy(ptr %ip6dst.i, ptr %loc_host113.i, i32 16)
  %ip6dst115.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3, i32 0, i32 1
  %81 = call ptr @memset(ptr %ip6dst115.i, i32 255, i32 16)
  br label %if.end117.i

if.end117.i:                                      ; preds = %if.then112.i, %if.then101.i.if.end117.i_crit_edge
  %82 = and i32 %bf.load.i, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool121.not.i = icmp eq i32 %82, 0
  br i1 %tobool121.not.i, label %if.end117.i.if.end128.i_crit_edge, label %if.then122.i

if.end117.i.if.end128.i_crit_edge:                ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end128.i

if.then122.i:                                     ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #16
  %rem_host124.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec.i, i32 0, i32 9
  %83 = call ptr @memcpy(ptr %h_u.i, ptr %rem_host124.i, i32 16)
  %84 = call ptr @memset(ptr %m_u.i, i32 255, i32 16)
  br label %if.end128.i

if.end128.i:                                      ; preds = %if.then122.i, %if.end117.i.if.end128.i_crit_edge
  %85 = and i32 %bf.load.i, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool132.not.i = icmp eq i32 %85, 0
  br i1 %tobool132.not.i, label %if.end128.i.if.end137.i_crit_edge, label %if.then133.i

if.end128.i.if.end137.i_crit_edge:                ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end137.i

if.then133.i:                                     ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #16
  %loc_port134.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec.i, i32 0, i32 10
  %86 = ptrtoint ptr %loc_port134.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %loc_port134.i, align 4
  %pdst135.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 1, i32 0, i32 3
  %88 = ptrtoint ptr %pdst135.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %87, ptr %pdst135.i, align 2
  %pdst136.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3, i32 0, i32 3
  %89 = ptrtoint ptr %pdst136.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 -1, ptr %pdst136.i, align 2
  br label %if.end137.i

if.end137.i:                                      ; preds = %if.then133.i, %if.end128.i.if.end137.i_crit_edge
  %90 = and i32 %bf.load.i, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool141.not.i = icmp eq i32 %90, 0
  br i1 %tobool141.not.i, label %if.end137.i.if.end307.i_crit_edge, label %if.then142.i

if.end137.i.if.end307.i_crit_edge:                ; preds = %if.end137.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end307.i

if.then142.i:                                     ; preds = %if.end137.i
  call void @__sanitizer_cov_trace_pc() #16
  %rem_port143.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec.i, i32 0, i32 11
  %91 = ptrtoint ptr %rem_port143.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %rem_port143.i, align 2
  %psrc144.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 1, i32 0, i32 2
  %93 = ptrtoint ptr %psrc144.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %92, ptr %psrc144.i, align 4
  %psrc145.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3, i32 0, i32 2
  %94 = ptrtoint ptr %psrc145.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 -1, ptr %psrc145.i, align 4
  br label %if.end307.i

if.else147.i:                                     ; preds = %land.lhs.true96.i.if.else147.i_crit_edge, %land.lhs.true86.i.if.else147.i_crit_edge, %land.lhs.true76.i.if.else147.i_crit_edge, %land.lhs.true32.i.if.else147.i_crit_edge, %land.lhs.true24.i.if.else147.i_crit_edge
  %95 = and i32 %bf.load.i, -1431306240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool151.not.i = icmp eq i32 %95, 0
  br i1 %tobool151.not.i, label %if.else147.i.if.then152.i_crit_edge, label %land.lhs.true196.i

if.else147.i.if.then152.i_crit_edge:              ; preds = %if.else147.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then152.i

if.else147.thread.i:                              ; preds = %if.end.i
  %96 = and i32 %bf.load.i, -1431306240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool151.not393.i = icmp eq i32 %96, 0
  br i1 %tobool151.not393.i, label %if.else147.thread.i.if.then152.i_crit_edge, label %if.else147.thread.i.efx_ethtool_get_class_rule.exit.thread117_crit_edge

if.else147.thread.i.efx_ethtool_get_class_rule.exit.thread117_crit_edge: ; preds = %if.else147.thread.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_ethtool_get_class_rule.exit.thread117

if.else147.thread.i.if.then152.i_crit_edge:       ; preds = %if.else147.thread.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then152.i

if.then152.i:                                     ; preds = %if.else147.thread.i.if.then152.i_crit_edge, %if.else147.i.if.then152.i_crit_edge
  %97 = ptrtoint ptr %fs to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 18, ptr %fs, align 8
  %98 = and i32 %bf.load.i, 1090519040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool157.not.i = icmp eq i32 %98, 0
  br i1 %tobool157.not.i, label %if.then152.i.if.end172.i_crit_edge, label %if.then158.i

if.then152.i.if.end172.i_crit_edge:               ; preds = %if.then152.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end172.i

if.then158.i:                                     ; preds = %if.then152.i
  %loc_mac.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec.i, i32 0, i32 4
  %99 = ptrtoint ptr %loc_mac.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %loc_mac.i, align 4
  %101 = ptrtoint ptr %h_u.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %h_u.i, align 4
  %add.ptr.i.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec.i, i32 0, i32 4, i32 4
  %102 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %add.ptr.i.i, align 4
  %add.ptr1.i.i = getelementptr %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 1, i32 0, i32 0, i32 1
  %104 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %103, ptr %add.ptr1.i.i, align 2
  %105 = and i32 %bf.load.i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool164.not.i = icmp eq i32 %105, 0
  br i1 %tobool164.not.i, label %if.else168.i, label %if.then165.i

if.then165.i:                                     ; preds = %if.then158.i
  call void @__sanitizer_cov_trace_pc() #16
  %106 = call ptr @memset(ptr %m_u.i, i32 255, i32 6)
  br label %if.end172.i

if.else168.i:                                     ; preds = %if.then158.i
  call void @__sanitizer_cov_trace_pc() #16
  %107 = ptrtoint ptr %m_u.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 16777216, ptr %m_u.i, align 4
  %add.ptr1.i390.i = getelementptr %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3, i32 0, i32 0, i32 1
  %108 = ptrtoint ptr %add.ptr1.i390.i to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 0, ptr %add.ptr1.i390.i, align 2
  br label %if.end172.i

if.end172.i:                                      ; preds = %if.else168.i, %if.then165.i, %if.then152.i.if.end172.i_crit_edge
  %109 = and i32 %bf.load.i, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool176.not.i = icmp eq i32 %109, 0
  br i1 %tobool176.not.i, label %if.end172.i.if.end182.i_crit_edge, label %if.then177.i

if.end172.i.if.end182.i_crit_edge:                ; preds = %if.end172.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end182.i

if.then177.i:                                     ; preds = %if.end172.i
  call void @__sanitizer_cov_trace_pc() #16
  %h_source.i = getelementptr inbounds %struct.ethhdr, ptr %h_u.i, i32 0, i32 1
  %rem_mac.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec.i, i32 0, i32 5
  %110 = ptrtoint ptr %rem_mac.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %rem_mac.i, align 4
  %112 = ptrtoint ptr %h_source.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %h_source.i, align 4
  %add.ptr.i391.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec.i, i32 0, i32 5, i32 4
  %113 = ptrtoint ptr %add.ptr.i391.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %add.ptr.i391.i, align 2
  %add.ptr1.i392.i = getelementptr %struct.ethhdr, ptr %h_u.i, i32 0, i32 1, i32 4
  %115 = ptrtoint ptr %add.ptr1.i392.i to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 %114, ptr %add.ptr1.i392.i, align 2
  %h_source180.i = getelementptr inbounds %struct.ethhdr, ptr %m_u.i, i32 0, i32 1
  %116 = call ptr @memset(ptr %h_source180.i, i32 255, i32 6)
  br label %if.end182.i

if.end182.i:                                      ; preds = %if.then177.i, %if.end172.i.if.end182.i_crit_edge
  br i1 %tobool15.not.i, label %if.end182.i.if.end307.i_crit_edge, label %if.then187.i

if.end182.i.if.end307.i_crit_edge:                ; preds = %if.end182.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end307.i

if.then187.i:                                     ; preds = %if.end182.i
  call void @__sanitizer_cov_trace_pc() #16
  %ether_type188.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec.i, i32 0, i32 6
  %117 = ptrtoint ptr %ether_type188.i to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %ether_type188.i, align 4
  %h_proto.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 1, i32 0, i32 0, i32 3
  %119 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_storeN_noabort(i32 %119, i32 2)
  store i16 %118, ptr %h_proto.i, align 1
  %h_proto189.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3, i32 0, i32 0, i32 3
  %120 = ptrtoint ptr %h_proto189.i to i32
  call void @__asan_storeN_noabort(i32 %120, i32 2)
  store i16 -1, ptr %h_proto189.i, align 1
  br label %if.end307.i

land.lhs.true196.i:                               ; preds = %if.else147.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %47)
  %cmp199.i = icmp eq i16 %47, 2048
  %121 = and i32 %bf.load.i, -876609536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool205.not.i = icmp eq i32 %121, 0
  %or.cond388.i = select i1 %cmp199.i, i1 %tobool205.not.i, i1 false
  br i1 %or.cond388.i, label %if.then206.i, label %land.lhs.true241.i

if.then206.i:                                     ; preds = %land.lhs.true196.i
  %122 = ptrtoint ptr %fs to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 13, ptr %fs, align 8
  %ip_ver.i = getelementptr inbounds %struct.ethtool_usrip4_spec, ptr %h_u.i, i32 0, i32 4
  %123 = ptrtoint ptr %ip_ver.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 1, ptr %ip_ver.i, align 1
  br i1 %tobool23.not.i, label %if.then206.i.if.end215.i_crit_edge, label %if.then212.i

if.then206.i.if.end215.i_crit_edge:               ; preds = %if.then206.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end215.i

if.then212.i:                                     ; preds = %if.then206.i
  call void @__sanitizer_cov_trace_pc() #16
  %proto.i = getelementptr inbounds %struct.ethtool_usrip4_spec, ptr %m_u.i, i32 0, i32 5
  %124 = ptrtoint ptr %proto.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 -1, ptr %proto.i, align 2
  %ip_proto213.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec.i, i32 0, i32 7
  %125 = ptrtoint ptr %ip_proto213.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %ip_proto213.i, align 2
  %proto214.i = getelementptr inbounds %struct.ethtool_usrip4_spec, ptr %h_u.i, i32 0, i32 5
  %127 = ptrtoint ptr %proto214.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %126, ptr %proto214.i, align 2
  br label %if.end215.i

if.end215.i:                                      ; preds = %if.then212.i, %if.then206.i.if.end215.i_crit_edge
  %128 = and i32 %bf.load.i, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %tobool219.not.i = icmp eq i32 %128, 0
  br i1 %tobool219.not.i, label %if.end215.i.if.end225.i_crit_edge, label %if.then220.i

if.end215.i.if.end225.i_crit_edge:                ; preds = %if.end215.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end225.i

if.then220.i:                                     ; preds = %if.end215.i
  call void @__sanitizer_cov_trace_pc() #16
  %loc_host221.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec.i, i32 0, i32 8
  %129 = ptrtoint ptr %loc_host221.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %loc_host221.i, align 4
  %ip4dst223.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 1, i32 0, i32 0, i32 1
  %131 = ptrtoint ptr %ip4dst223.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %130, ptr %ip4dst223.i, align 4
  %ip4dst224.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3, i32 0, i32 0, i32 1
  %132 = ptrtoint ptr %ip4dst224.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 -1, ptr %ip4dst224.i, align 4
  br label %if.end225.i

if.end225.i:                                      ; preds = %if.then220.i, %if.end215.i.if.end225.i_crit_edge
  %133 = and i32 %bf.load.i, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool229.not.i = icmp eq i32 %133, 0
  br i1 %tobool229.not.i, label %if.end225.i.if.end307.i_crit_edge, label %if.then230.i

if.end225.i.if.end307.i_crit_edge:                ; preds = %if.end225.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end307.i

if.then230.i:                                     ; preds = %if.end225.i
  call void @__sanitizer_cov_trace_pc() #16
  %rem_host231.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec.i, i32 0, i32 9
  %134 = ptrtoint ptr %rem_host231.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %rem_host231.i, align 4
  %136 = ptrtoint ptr %h_u.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %h_u.i, align 4
  %137 = ptrtoint ptr %m_u.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 -1, ptr %m_u.i, align 4
  br label %if.end307.i

land.lhs.true241.i:                               ; preds = %land.lhs.true196.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %47)
  %cmp244.i = icmp eq i16 %47, -31011
  %or.cond389.i = select i1 %cmp244.i, i1 %tobool205.not.i, i1 false
  br i1 %or.cond389.i, label %if.then251.i, label %land.lhs.true241.i.efx_ethtool_get_class_rule.exit.thread117_crit_edge

land.lhs.true241.i.efx_ethtool_get_class_rule.exit.thread117_crit_edge: ; preds = %land.lhs.true241.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_ethtool_get_class_rule.exit.thread117

if.then251.i:                                     ; preds = %land.lhs.true241.i
  %138 = ptrtoint ptr %fs to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 14, ptr %fs, align 8
  br i1 %tobool23.not.i, label %if.then251.i.if.end260.i_crit_edge, label %if.then257.i

if.then251.i.if.end260.i_crit_edge:               ; preds = %if.then251.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end260.i

if.then257.i:                                     ; preds = %if.then251.i
  call void @__sanitizer_cov_trace_pc() #16
  %l4_proto.i = getelementptr inbounds %struct.ethtool_usrip6_spec, ptr %m_u.i, i32 0, i32 4
  %139 = ptrtoint ptr %l4_proto.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 -1, ptr %l4_proto.i, align 1
  %ip_proto258.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec.i, i32 0, i32 7
  %140 = ptrtoint ptr %ip_proto258.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %ip_proto258.i, align 2
  %l4_proto259.i = getelementptr inbounds %struct.ethtool_usrip6_spec, ptr %h_u.i, i32 0, i32 4
  %142 = ptrtoint ptr %l4_proto259.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %141, ptr %l4_proto259.i, align 1
  br label %if.end260.i

if.end260.i:                                      ; preds = %if.then257.i, %if.then251.i.if.end260.i_crit_edge
  %143 = and i32 %bf.load.i, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %tobool264.not.i = icmp eq i32 %143, 0
  br i1 %tobool264.not.i, label %if.end260.i.if.end272.i_crit_edge, label %if.then265.i

if.end260.i.if.end272.i_crit_edge:                ; preds = %if.end260.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end272.i

if.then265.i:                                     ; preds = %if.end260.i
  call void @__sanitizer_cov_trace_pc() #16
  %ip6dst266.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 1, i32 0, i32 1
  %loc_host268.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec.i, i32 0, i32 8
  %144 = call ptr @memcpy(ptr %ip6dst266.i, ptr %loc_host268.i, i32 16)
  %ip6dst270.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3, i32 0, i32 1
  %145 = call ptr @memset(ptr %ip6dst270.i, i32 255, i32 16)
  br label %if.end272.i

if.end272.i:                                      ; preds = %if.then265.i, %if.end260.i.if.end272.i_crit_edge
  %146 = and i32 %bf.load.i, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %tobool276.not.i = icmp eq i32 %146, 0
  br i1 %tobool276.not.i, label %if.end272.i.if.end307.i_crit_edge, label %if.then277.i

if.end272.i.if.end307.i_crit_edge:                ; preds = %if.end272.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end307.i

if.then277.i:                                     ; preds = %if.end272.i
  call void @__sanitizer_cov_trace_pc() #16
  %rem_host280.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec.i, i32 0, i32 9
  %147 = call ptr @memcpy(ptr %h_u.i, ptr %rem_host280.i, i32 16)
  %148 = call ptr @memset(ptr %m_u.i, i32 255, i32 16)
  br label %if.end307.i

efx_ethtool_get_class_rule.exit.thread117:        ; preds = %land.lhs.true241.i.efx_ethtool_get_class_rule.exit.thread117_crit_edge, %if.else147.thread.i.efx_ethtool_get_class_rule.exit.thread117_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 791, i32 noundef 9, ptr noundef null) #14
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %spec.i) #14
  br label %cleanup

if.end307.i:                                      ; preds = %if.then277.i, %if.end272.i.if.end307.i_crit_edge, %if.then230.i, %if.end225.i.if.end307.i_crit_edge, %if.then187.i, %if.end182.i.if.end307.i_crit_edge, %if.then142.i, %if.end137.i.if.end307.i_crit_edge, %if.then68.i, %if.end63.i.if.end307.i_crit_edge
  %149 = and i32 %bf.load.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %149)
  %tobool311.not.i = icmp eq i32 %149, 0
  br i1 %tobool311.not.i, label %if.end307.i.if.end315.i_crit_edge, label %if.then312.i

if.end307.i.if.end315.i_crit_edge:                ; preds = %if.end307.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end315.i

if.then312.i:                                     ; preds = %if.end307.i
  call void @__sanitizer_cov_trace_pc() #16
  %150 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %fs, align 8
  %or.i = or i32 %151, -2147483648
  store i32 %or.i, ptr %fs, align 8
  %outer_vid.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec.i, i32 0, i32 2
  %152 = ptrtoint ptr %outer_vid.i to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %outer_vid.i, align 4
  %vlan_tci.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 2, i32 3
  %154 = ptrtoint ptr %vlan_tci.i to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 %153, ptr %vlan_tci.i, align 2
  %vlan_tci314.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 4, i32 3
  %155 = ptrtoint ptr %vlan_tci314.i to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 4095, ptr %vlan_tci314.i, align 2
  br label %if.end315.i

if.end315.i:                                      ; preds = %if.then312.i, %if.end307.i.if.end315.i_crit_edge
  %156 = and i32 %bf.load.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %tobool320.not.i = icmp eq i32 %156, 0
  br i1 %tobool320.not.i, label %if.end315.i.efx_ethtool_get_class_rule.exit.thread_crit_edge, label %if.then321.i

if.end315.i.efx_ethtool_get_class_rule.exit.thread_crit_edge: ; preds = %if.end315.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_ethtool_get_class_rule.exit.thread

if.then321.i:                                     ; preds = %if.end315.i
  call void @__sanitizer_cov_trace_pc() #16
  %157 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %fs, align 8
  %or323.i = or i32 %158, 536870912
  store i32 %or323.i, ptr %fs, align 8
  %rss_context324.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec.i, i32 0, i32 1
  %159 = ptrtoint ptr %rss_context324.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %rss_context324.i, align 4
  br label %efx_ethtool_get_class_rule.exit.thread

efx_ethtool_get_class_rule.exit.thread:           ; preds = %if.then321.i, %if.end315.i.efx_ethtool_get_class_rule.exit.thread_crit_edge
  %rss_context.0.ph = phi i32 [ %160, %if.then321.i ], [ 0, %if.end315.i.efx_ethtool_get_class_rule.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %spec.i) #14
  br label %if.end42

efx_ethtool_get_class_rule.exit:                  ; preds = %if.end37
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %spec.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp39 = icmp slt i32 %call.i.i, 0
  br i1 %cmp39, label %efx_ethtool_get_class_rule.exit.cleanup_crit_edge, label %efx_ethtool_get_class_rule.exit.if.end42_crit_edge

efx_ethtool_get_class_rule.exit.if.end42_crit_edge: ; preds = %efx_ethtool_get_class_rule.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42

efx_ethtool_get_class_rule.exit.cleanup_crit_edge: ; preds = %efx_ethtool_get_class_rule.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end42:                                         ; preds = %efx_ethtool_get_class_rule.exit.if.end42_crit_edge, %efx_ethtool_get_class_rule.exit.thread
  %rss_context.0116 = phi i32 [ %rss_context.0.ph, %efx_ethtool_get_class_rule.exit.thread ], [ 0, %efx_ethtool_get_class_rule.exit.if.end42_crit_edge ]
  %161 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %fs, align 8
  %and45 = and i32 %162, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end42.cleanup_crit_edge, label %if.then47

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then47:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #16
  %163 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 4
  %164 = ptrtoint ptr %163 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %rss_context.0116, ptr %163, align 8
  br label %cleanup

sw.bb49:                                          ; preds = %entry
  %type.i106 = getelementptr i8, ptr %net_dev, i32 2348
  %165 = ptrtoint ptr %type.i106 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %type.i106, align 4
  %filter_get_rx_id_limit.i107 = getelementptr inbounds %struct.efx_nic_type, ptr %166, i32 0, i32 82
  %167 = ptrtoint ptr %filter_get_rx_id_limit.i107 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %filter_get_rx_id_limit.i107, align 8
  %call.i108 = tail call i32 %168(ptr noundef %add.ptr.i) #14
  %conv51 = zext i32 %call.i108 to i64
  %data52 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 2
  %169 = ptrtoint ptr %data52 to i32
  call void @__asan_store8_noabort(i32 %169)
  store i64 %conv51, ptr %data52, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i108)
  %cmp54 = icmp eq i32 %call.i108, 0
  br i1 %cmp54, label %sw.bb49.cleanup_crit_edge, label %if.end57

sw.bb49.cleanup_crit_edge:                        ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end57:                                         ; preds = %sw.bb49
  %170 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 4
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %170, align 8
  %173 = ptrtoint ptr %type.i106 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %type.i106, align 4
  %filter_get_rx_ids.i = getelementptr inbounds %struct.efx_nic_type, ptr %174, i32 0, i32 83
  %175 = ptrtoint ptr %filter_get_rx_ids.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %filter_get_rx_ids.i, align 4
  %call.i110 = tail call i32 %176(ptr noundef %add.ptr.i, i32 noundef 2, ptr noundef %rule_locs, i32 noundef %172) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110)
  %cmp59 = icmp slt i32 %call.i110, 0
  br i1 %cmp59, label %if.end57.cleanup_crit_edge, label %if.end62

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end62:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #16
  %177 = ptrtoint ptr %170 to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %call.i110, ptr %170, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %if.end57.cleanup_crit_edge, %sw.bb49.cleanup_crit_edge, %if.then47, %if.end42.cleanup_crit_edge, %efx_ethtool_get_class_rule.exit.cleanup_crit_edge, %efx_ethtool_get_class_rule.exit.thread117, %sw.bb32.cleanup_crit_edge, %if.end29, %sw.bb22.cleanup_crit_edge, %out_unlock, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end62 ], [ 0, %if.end29 ], [ %rc.0, %out_unlock ], [ 0, %sw.bb ], [ -95, %sw.bb22.cleanup_crit_edge ], [ -95, %sw.bb32.cleanup_crit_edge ], [ %call.i.i, %efx_ethtool_get_class_rule.exit.cleanup_crit_edge ], [ 0, %if.then47 ], [ 0, %if.end42.cleanup_crit_edge ], [ -95, %sw.bb49.cleanup_crit_edge ], [ %call.i110, %if.end57.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ -22, %efx_ethtool_get_class_rule.exit.thread117 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @efx_find_rss_context_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_ethtool_set_rxnfc(ptr noundef %net_dev, ptr noundef %info) local_unnamed_addr #0 align 64 {
entry:
  %spec.i = alloca %struct.efx_filter_spec, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %type.i = getelementptr i8, ptr %net_dev, i32 2348
  %0 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type.i, align 4
  %filter_get_rx_id_limit.i = getelementptr inbounds %struct.efx_nic_type, ptr %1, i32 0, i32 82
  %2 = ptrtoint ptr %filter_get_rx_id_limit.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %filter_get_rx_id_limit.i, align 8
  %call.i = tail call i32 %3(ptr noundef %add.ptr.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp eq i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %info, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %5, label %if.end.cleanup_crit_edge [
    i32 50, label %sw.bb
    i32 49, label %sw.bb3
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %fs = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3
  %7 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %h_u.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 1
  %m_u.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3
  %10 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fs, align 8
  %and.i = and i32 %11, 1610612735
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %spec.i) #14
  %location.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 6
  %12 = ptrtoint ptr %location.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %location.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp.not.i = icmp eq i32 %13, -1
  br i1 %cmp.not.i, label %if.end.i, label %sw.bb.efx_ethtool_set_class_rule.exit_crit_edge

sw.bb.efx_ethtool_set_class_rule.exit_crit_edge:  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_ethtool_set_class_rule.exit

if.end.i:                                         ; preds = %sw.bb
  %ring_cookie.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 5
  %14 = ptrtoint ptr %ring_cookie.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %ring_cookie.i, align 8
  %n_rx_channels.i = getelementptr i8, ptr %net_dev, i32 3692
  %16 = ptrtoint ptr %n_rx_channels.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %n_rx_channels.i, align 4
  %conv.i = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %conv.i)
  %cmp10.not.i = icmp ult i64 %15, %conv.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %15)
  %cmp13.not.i = icmp eq i64 %15, -1
  %or.cond.i = or i1 %cmp13.not.i, %cmp10.not.i
  br i1 %or.cond.i, label %if.end16.i, label %if.end.i.efx_ethtool_set_class_rule.exit_crit_edge

if.end.i.efx_ethtool_set_class_rule.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_ethtool_set_class_rule.exit

if.end16.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %tobool.not.i = icmp sgt i32 %11, -1
  br i1 %tobool.not.i, label %if.end16.i.if.end30.i_crit_edge, label %land.lhs.true19.i

if.end16.i.if.end30.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30.i

land.lhs.true19.i:                                ; preds = %if.end16.i
  %vlan_etype.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 4, i32 2
  %18 = ptrtoint ptr %vlan_etype.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vlan_etype.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool21.not.i = icmp eq i16 %19, 0
  br i1 %tobool21.not.i, label %lor.lhs.false.i, label %land.lhs.true19.i.efx_ethtool_set_class_rule.exit_crit_edge

land.lhs.true19.i.efx_ethtool_set_class_rule.exit_crit_edge: ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_ethtool_set_class_rule.exit

lor.lhs.false.i:                                  ; preds = %land.lhs.true19.i
  %data.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 4, i32 4
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool23.not.i = icmp eq i32 %21, 0
  br i1 %tobool23.not.i, label %lor.lhs.false24.i, label %lor.lhs.false.i.efx_ethtool_set_class_rule.exit_crit_edge

lor.lhs.false.i.efx_ethtool_set_class_rule.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_ethtool_set_class_rule.exit

lor.lhs.false24.i:                                ; preds = %lor.lhs.false.i
  %arrayidx27.i = getelementptr %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 4, i32 4, i32 1
  %22 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx27.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool28.not.i = icmp eq i32 %23, 0
  br i1 %tobool28.not.i, label %lor.lhs.false24.i.if.end30.i_crit_edge, label %lor.lhs.false24.i.efx_ethtool_set_class_rule.exit_crit_edge

lor.lhs.false24.i.efx_ethtool_set_class_rule.exit_crit_edge: ; preds = %lor.lhs.false24.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_ethtool_set_class_rule.exit

lor.lhs.false24.i.if.end30.i_crit_edge:           ; preds = %lor.lhs.false24.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30.i

if.end30.i:                                       ; preds = %lor.lhs.false24.i.if.end30.i_crit_edge, %if.end16.i.if.end30.i_crit_edge
  %rx_scatter.i = getelementptr i8, ptr %net_dev, i32 3772
  %24 = ptrtoint ptr %rx_scatter.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %rx_scatter.i, align 4, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool31.not.i = icmp eq i8 %25, 0
  %spec.select.i = select i1 %tobool31.not.i, i32 0, i32 8192
  %and35.i = and i32 %11, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp eq i32 %and35.i, 0
  %26 = lshr exact i32 %and35.i, 17
  %extract.t.i = trunc i64 %15 to i32
  %27 = getelementptr inbounds i8, ptr %spec.i, i32 8
  %rss_context.i.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec.i, i32 0, i32 1
  %extract.t.op.i = and i32 %extract.t.i, 4095
  %bf.value7.i.i = select i1 %cmp13.not.i, i32 4095, i32 %extract.t.op.i
  %28 = or i32 %bf.value7.i.i, %26
  %bf.set5.i.i = or i32 %28, %spec.select.i
  %bf.set9.i.i = or i32 %bf.set5.i.i, 557056
  %29 = call ptr @memset(ptr %rss_context.i.i, i32 0, i32 64)
  %30 = ptrtoint ptr %spec.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %bf.set9.i.i, ptr %spec.i, align 4
  br i1 %tobool36.not.i, label %if.end30.i.if.end50.i_crit_edge, label %if.then48.i

if.end30.i.if.end50.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end50.i

if.then48.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #16
  %31 = ptrtoint ptr %rss_context.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %9, ptr %rss_context.i.i, align 4
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then48.i, %if.end30.i.if.end50.i_crit_edge
  %32 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %and.i, label %if.end50.i.efx_ethtool_set_class_rule.exit_crit_edge [
    i32 1, label %if.end50.i.sw.bb.i_crit_edge
    i32 2, label %if.end50.i.sw.bb.i_crit_edge13
    i32 5, label %if.end50.i.sw.bb127.i_crit_edge
    i32 6, label %if.end50.i.sw.bb127.i_crit_edge14
    i32 13, label %sw.bb220.i
    i32 14, label %sw.bb299.i
    i32 18, label %sw.bb375.i
  ]

if.end50.i.sw.bb127.i_crit_edge14:                ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb127.i

if.end50.i.sw.bb127.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb127.i

if.end50.i.sw.bb.i_crit_edge13:                   ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i

if.end50.i.sw.bb.i_crit_edge:                     ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i

if.end50.i.efx_ethtool_set_class_rule.exit_crit_edge: ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_ethtool_set_class_rule.exit

sw.bb.i:                                          ; preds = %if.end50.i.sw.bb.i_crit_edge, %if.end50.i.sw.bb.i_crit_edge13
  %bf.set.i = or i32 %bf.set5.i.i, 604536832
  %33 = ptrtoint ptr %spec.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %bf.set.i, ptr %spec.i, align 4
  %ether_type.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec.i, i32 0, i32 6
  %34 = ptrtoint ptr %ether_type.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 2048, ptr %ether_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp51.i = icmp eq i32 %and.i, 1
  %conv54.i = select i1 %cmp51.i, i8 6, i8 17
  %ip_proto.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec.i, i32 0, i32 7
  %35 = ptrtoint ptr %ip_proto.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv54.i, ptr %ip_proto.i, align 2
  %ip4dst.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3, i32 0, i32 0, i32 1
  %36 = ptrtoint ptr %ip4dst.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ip4dst.i, align 4
  %38 = zext i32 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %37, label %sw.bb.i.efx_ethtool_set_class_rule.exit_crit_edge [
    i32 0, label %sw.bb.i.if.end69.i_crit_edge
    i32 -1, label %if.end61.i
  ]

sw.bb.i.if.end69.i_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69.i

sw.bb.i.efx_ethtool_set_class_rule.exit_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_ethtool_set_class_rule.exit

if.end61.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #16
  %bf.clear65.i = and i32 %bf.set.i, 573439
  %bf.set66.i = or i32 %bf.clear65.i, 606076928
  %39 = ptrtoint ptr %spec.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %bf.set66.i, ptr %spec.i, align 4
  %ip4dst67.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 1, i32 0, i32 0, i32 1
  %40 = ptrtoint ptr %ip4dst67.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ip4dst67.i, align 4
  %loc_host.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec.i, i32 0, i32 8
  %42 = ptrtoint ptr %loc_host.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %loc_host.i, align 4
  br label %if.end69.i

if.end69.i:                                       ; preds = %if.end61.i, %sw.bb.i.if.end69.i_crit_edge
  %43 = ptrtoint ptr %m_u.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %m_u.i, align 4
  %45 = zext i32 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %44, label %if.end69.i.efx_ethtool_set_class_rule.exit_crit_edge [
    i32 0, label %if.end69.i.if.end87.i_crit_edge
    i32 -1, label %if.end76.i
  ]

if.end69.i.if.end87.i_crit_edge:                  ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end87.i

if.end69.i.efx_ethtool_set_class_rule.exit_crit_edge: ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_ethtool_set_class_rule.exit

if.end76.i:                                       ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #16
  %46 = ptrtoint ptr %spec.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %bf.load77.i = load i32, ptr %spec.i, align 4
  %bf.set84.i = or i32 %bf.load77.i, 1048576
  store i32 %bf.set84.i, ptr %spec.i, align 4
  %47 = ptrtoint ptr %h_u.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %h_u.i, align 4
  %rem_host.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec.i, i32 0, i32 9
  %49 = ptrtoint ptr %rem_host.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %rem_host.i, align 4
  br label %if.end87.i

if.end87.i:                                       ; preds = %if.end76.i, %if.end69.i.if.end87.i_crit_edge
  %pdst.i = getelementptr inbounds %struct.ethtool_tcpip4_spec, ptr %m_u.i, i32 0, i32 3
  %50 = ptrtoint ptr %pdst.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %pdst.i, align 2
  %52 = zext i16 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.74)
  switch i16 %51, label %if.end87.i.efx_ethtool_set_class_rule.exit_crit_edge [
    i16 0, label %if.end87.i.if.end105.i_crit_edge
    i16 -1, label %if.end95.i
  ]

if.end87.i.if.end105.i_crit_edge:                 ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end105.i

if.end87.i.efx_ethtool_set_class_rule.exit_crit_edge: ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_ethtool_set_class_rule.exit

if.end95.i:                                       ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #16
  %53 = ptrtoint ptr %spec.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %bf.load96.i = load i32, ptr %spec.i, align 4
  %bf.set103.i = or i32 %bf.load96.i, 33554432
  store i32 %bf.set103.i, ptr %spec.i, align 4
  %pdst104.i = getelementptr inbounds %struct.ethtool_tcpip4_spec, ptr %h_u.i, i32 0, i32 3
  %54 = ptrtoint ptr %pdst104.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %pdst104.i, align 2
  %loc_port.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec.i, i32 0, i32 10
  %56 = ptrtoint ptr %loc_port.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %loc_port.i, align 4
  br label %if.end105.i

if.end105.i:                                      ; preds = %if.end95.i, %if.end87.i.if.end105.i_crit_edge
  %psrc.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3, i32 0, i32 0, i32 2
  %57 = ptrtoint ptr %psrc.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %psrc.i, align 4
  %59 = zext i16 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.75)
  switch i16 %58, label %if.end105.i.efx_ethtool_set_class_rule.exit_crit_edge [
    i16 0, label %if.end105.i.if.end123.i_crit_edge
    i16 -1, label %if.end113.i
  ]

if.end105.i.if.end123.i_crit_edge:                ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end123.i

if.end105.i.efx_ethtool_set_class_rule.exit_crit_edge: ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_ethtool_set_class_rule.exit

if.end113.i:                                      ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #16
  %60 = ptrtoint ptr %spec.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %bf.load114.i = load i32, ptr %spec.i, align 4
  %bf.set121.i = or i32 %bf.load114.i, 8388608
  store i32 %bf.set121.i, ptr %spec.i, align 4
  %psrc122.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 1, i32 0, i32 0, i32 2
  %61 = ptrtoint ptr %psrc122.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %psrc122.i, align 4
  %rem_port.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec.i, i32 0, i32 11
  %63 = ptrtoint ptr %rem_port.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %62, ptr %rem_port.i, align 2
  br label %if.end123.i

if.end123.i:                                      ; preds = %if.end113.i, %if.end105.i.if.end123.i_crit_edge
  %tos.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3, i32 0, i32 0, i32 3
  %64 = ptrtoint ptr %tos.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %tos.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool124.not.i = icmp eq i8 %65, 0
  br i1 %tobool124.not.i, label %if.end123.i.sw.epilog.i_crit_edge, label %if.end123.i.efx_ethtool_set_class_rule.exit_crit_edge

if.end123.i.efx_ethtool_set_class_rule.exit_crit_edge: ; preds = %if.end123.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_ethtool_set_class_rule.exit

if.end123.i.sw.epilog.i_crit_edge:                ; preds = %if.end123.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

sw.bb127.i:                                       ; preds = %if.end50.i.sw.bb127.i_crit_edge, %if.end50.i.sw.bb127.i_crit_edge14
  %bf.set130.i = or i32 %bf.set5.i.i, 604536832
  %66 = ptrtoint ptr %spec.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %bf.set130.i, ptr %spec.i, align 4
  %ether_type131.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec.i, i32 0, i32 6
  %67 = ptrtoint ptr %ether_type131.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 -31011, ptr %ether_type131.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and.i)
  %cmp132.i = icmp eq i32 %and.i, 5
  %conv135.i = select i1 %cmp132.i, i8 6, i8 17
  %ip_proto136.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec.i, i32 0, i32 7
  %68 = ptrtoint ptr %ip_proto136.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv135.i, ptr %ip_proto136.i, align 2
  %ip6dst.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3, i32 0, i32 1
  %69 = ptrtoint ptr %ip6dst.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %ip6dst.i, align 4
  %arrayidx1.i.i = getelementptr %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3, i32 0, i32 1, i32 1
  %71 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx1.i.i, align 4
  %or.i589.i = or i32 %72, %70
  %arrayidx2.i.i = getelementptr %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3, i32 0, i32 1, i32 2
  %73 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx2.i.i, align 4
  %or3.i.i = or i32 %or.i589.i, %74
  %arrayidx4.i.i = getelementptr %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3, i32 0, i32 1, i32 3
  %75 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx4.i.i, align 4
  %or5.i.i = or i32 %or3.i.i, %76
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i.i)
  %tobool.not.i.i = icmp eq i32 %or5.i.i, 0
  br i1 %tobool.not.i.i, label %sw.bb127.i.if.end155.i_crit_edge, label %if.then137.i

sw.bb127.i.if.end155.i_crit_edge:                 ; preds = %sw.bb127.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end155.i

if.then137.i:                                     ; preds = %sw.bb127.i
  %and.i.i = and i32 %72, %70
  %and3.i.i = and i32 %and.i.i, %74
  %and5.i.i = and i32 %and3.i.i, %76
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %and5.i.i)
  %tobool.not.i593.i = icmp eq i32 %and5.i.i, -1
  br i1 %tobool.not.i593.i, label %if.end142.i, label %if.then137.i.efx_ethtool_set_class_rule.exit_crit_edge

if.then137.i.efx_ethtool_set_class_rule.exit_crit_edge: ; preds = %if.then137.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_ethtool_set_class_rule.exit

if.end142.i:                                      ; preds = %if.then137.i
  call void @__sanitizer_cov_trace_pc() #16
  %bf.clear149.i = and i32 %bf.set130.i, 573439
  %bf.set150.i = or i32 %bf.clear149.i, 606076928
  %77 = ptrtoint ptr %spec.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %bf.set150.i, ptr %spec.i, align 4
  %loc_host151.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec.i, i32 0, i32 8
  %ip6dst153.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 1, i32 0, i32 1
  %78 = call ptr @memcpy(ptr %loc_host151.i, ptr %ip6dst153.i, i32 16)
  br label %if.end155.i

if.end155.i:                                      ; preds = %if.end142.i, %sw.bb127.i.if.end155.i_crit_edge
  %79 = ptrtoint ptr %m_u.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %m_u.i, align 4
  %arrayidx1.i594.i = getelementptr %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3, i32 0, i32 0, i32 1
  %81 = ptrtoint ptr %arrayidx1.i594.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx1.i594.i, align 4
  %or.i595.i = or i32 %82, %80
  %arrayidx2.i596.i = getelementptr %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3, i32 0, i32 0, i32 2
  %83 = ptrtoint ptr %arrayidx2.i596.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx2.i596.i, align 4
  %or3.i597.i = or i32 %or.i595.i, %84
  %arrayidx4.i598.i = getelementptr %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3, i32 0, i32 0, i32 3
  %85 = ptrtoint ptr %arrayidx4.i598.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx4.i598.i, align 4
  %or5.i599.i = or i32 %or3.i597.i, %86
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i599.i)
  %tobool.not.i600.i = icmp eq i32 %or5.i599.i, 0
  br i1 %tobool.not.i600.i, label %if.end155.i.if.end176.i_crit_edge, label %if.then158.i

if.end155.i.if.end176.i_crit_edge:                ; preds = %if.end155.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end176.i

if.then158.i:                                     ; preds = %if.end155.i
  %and.i602.i = and i32 %82, %80
  %and3.i604.i = and i32 %and.i602.i, %84
  %and5.i606.i = and i32 %and3.i604.i, %86
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %and5.i606.i)
  %tobool.not.i607.i = icmp eq i32 %and5.i606.i, -1
  br i1 %tobool.not.i607.i, label %if.end163.i, label %if.then158.i.efx_ethtool_set_class_rule.exit_crit_edge

if.then158.i.efx_ethtool_set_class_rule.exit_crit_edge: ; preds = %if.then158.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_ethtool_set_class_rule.exit

if.end163.i:                                      ; preds = %if.then158.i
  call void @__sanitizer_cov_trace_pc() #16
  %87 = ptrtoint ptr %spec.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %bf.load164.i = load i32, ptr %spec.i, align 4
  %bf.set171.i = or i32 %bf.load164.i, 1048576
  store i32 %bf.set171.i, ptr %spec.i, align 4
  %rem_host172.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec.i, i32 0, i32 9
  %88 = call ptr @memcpy(ptr %rem_host172.i, ptr %h_u.i, i32 16)
  br label %if.end176.i

if.end176.i:                                      ; preds = %if.end163.i, %if.end155.i.if.end176.i_crit_edge
  %pdst177.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3, i32 0, i32 3
  %89 = ptrtoint ptr %pdst177.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %pdst177.i, align 2
  %91 = zext i16 %90 to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values.76)
  switch i16 %90, label %if.end176.i.efx_ethtool_set_class_rule.exit_crit_edge [
    i16 0, label %if.end176.i.if.end196.i_crit_edge
    i16 -1, label %if.end185.i
  ]

if.end176.i.if.end196.i_crit_edge:                ; preds = %if.end176.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end196.i

if.end176.i.efx_ethtool_set_class_rule.exit_crit_edge: ; preds = %if.end176.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_ethtool_set_class_rule.exit

if.end185.i:                                      ; preds = %if.end176.i
  call void @__sanitizer_cov_trace_pc() #16
  %92 = ptrtoint ptr %spec.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %bf.load186.i = load i32, ptr %spec.i, align 4
  %bf.set193.i = or i32 %bf.load186.i, 33554432
  store i32 %bf.set193.i, ptr %spec.i, align 4
  %pdst194.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 1, i32 0, i32 3
  %93 = ptrtoint ptr %pdst194.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %pdst194.i, align 2
  %loc_port195.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec.i, i32 0, i32 10
  %95 = ptrtoint ptr %loc_port195.i to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %94, ptr %loc_port195.i, align 4
  br label %if.end196.i

if.end196.i:                                      ; preds = %if.end185.i, %if.end176.i.if.end196.i_crit_edge
  %psrc197.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3, i32 0, i32 2
  %96 = ptrtoint ptr %psrc197.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %psrc197.i, align 4
  %98 = zext i16 %97 to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values.77)
  switch i16 %97, label %if.end196.i.efx_ethtool_set_class_rule.exit_crit_edge [
    i16 0, label %if.end196.i.if.end216.i_crit_edge
    i16 -1, label %if.end205.i
  ]

if.end196.i.if.end216.i_crit_edge:                ; preds = %if.end196.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end216.i

if.end196.i.efx_ethtool_set_class_rule.exit_crit_edge: ; preds = %if.end196.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_ethtool_set_class_rule.exit

if.end205.i:                                      ; preds = %if.end196.i
  call void @__sanitizer_cov_trace_pc() #16
  %99 = ptrtoint ptr %spec.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %bf.load206.i = load i32, ptr %spec.i, align 4
  %bf.set213.i = or i32 %bf.load206.i, 8388608
  store i32 %bf.set213.i, ptr %spec.i, align 4
  %psrc214.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 1, i32 0, i32 2
  %100 = ptrtoint ptr %psrc214.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %psrc214.i, align 4
  %rem_port215.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec.i, i32 0, i32 11
  %102 = ptrtoint ptr %rem_port215.i to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 %101, ptr %rem_port215.i, align 2
  br label %if.end216.i

if.end216.i:                                      ; preds = %if.end205.i, %if.end196.i.if.end216.i_crit_edge
  %tclass.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3, i32 0, i32 4
  %103 = ptrtoint ptr %tclass.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %tclass.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool217.not.i = icmp eq i8 %104, 0
  br i1 %tobool217.not.i, label %if.end216.i.sw.epilog.i_crit_edge, label %if.end216.i.efx_ethtool_set_class_rule.exit_crit_edge

if.end216.i.efx_ethtool_set_class_rule.exit_crit_edge: ; preds = %if.end216.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_ethtool_set_class_rule.exit

if.end216.i.sw.epilog.i_crit_edge:                ; preds = %if.end216.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

sw.bb220.i:                                       ; preds = %if.end50.i
  %l4_4_bytes.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3, i32 0, i32 0, i32 2
  %105 = ptrtoint ptr %l4_4_bytes.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %l4_4_bytes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool221.not.i = icmp eq i32 %106, 0
  br i1 %tobool221.not.i, label %lor.lhs.false222.i, label %sw.bb220.i.efx_ethtool_set_class_rule.exit_crit_edge

sw.bb220.i.efx_ethtool_set_class_rule.exit_crit_edge: ; preds = %sw.bb220.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_ethtool_set_class_rule.exit

lor.lhs.false222.i:                               ; preds = %sw.bb220.i
  %tos223.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3, i32 0, i32 0, i32 3
  %107 = ptrtoint ptr %tos223.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %tos223.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool225.not.i = icmp eq i8 %108, 0
  br i1 %tobool225.not.i, label %lor.lhs.false226.i, label %lor.lhs.false222.i.efx_ethtool_set_class_rule.exit_crit_edge

lor.lhs.false222.i.efx_ethtool_set_class_rule.exit_crit_edge: ; preds = %lor.lhs.false222.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_ethtool_set_class_rule.exit

lor.lhs.false226.i:                               ; preds = %lor.lhs.false222.i
  %ip_ver.i = getelementptr inbounds %struct.ethtool_usrip4_spec, ptr %m_u.i, i32 0, i32 4
  %109 = ptrtoint ptr %ip_ver.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %ip_ver.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool228.not.i = icmp eq i8 %110, 0
  br i1 %tobool228.not.i, label %lor.lhs.false229.i, label %lor.lhs.false226.i.efx_ethtool_set_class_rule.exit_crit_edge

lor.lhs.false226.i.efx_ethtool_set_class_rule.exit_crit_edge: ; preds = %lor.lhs.false226.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_ethtool_set_class_rule.exit

lor.lhs.false229.i:                               ; preds = %lor.lhs.false226.i
  %ip_ver230.i = getelementptr inbounds %struct.ethtool_usrip4_spec, ptr %h_u.i, i32 0, i32 4
  %111 = ptrtoint ptr %ip_ver230.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %ip_ver230.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %112)
  %cmp232.not.i = icmp eq i8 %112, 1
  br i1 %cmp232.not.i, label %if.end235.i, label %lor.lhs.false229.i.efx_ethtool_set_class_rule.exit_crit_edge

lor.lhs.false229.i.efx_ethtool_set_class_rule.exit_crit_edge: ; preds = %lor.lhs.false229.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_ethtool_set_class_rule.exit

if.end235.i:                                      ; preds = %lor.lhs.false229.i
  %bf.set238.i = or i32 %bf.set5.i.i, 67665920
  %113 = ptrtoint ptr %spec.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %bf.set238.i, ptr %spec.i, align 4
  %ether_type239.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec.i, i32 0, i32 6
  %114 = ptrtoint ptr %ether_type239.i to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 2048, ptr %ether_type239.i, align 4
  %ip4dst240.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3, i32 0, i32 0, i32 1
  %115 = ptrtoint ptr %ip4dst240.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %ip4dst240.i, align 4
  %117 = zext i32 %116 to i64
  call void @__sanitizer_cov_trace_switch(i64 %117, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %116, label %if.end235.i.efx_ethtool_set_class_rule.exit_crit_edge [
    i32 0, label %if.end235.i.if.end259.i_crit_edge
    i32 -1, label %if.end247.i
  ]

if.end235.i.if.end259.i_crit_edge:                ; preds = %if.end235.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end259.i

if.end235.i.efx_ethtool_set_class_rule.exit_crit_edge: ; preds = %if.end235.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_ethtool_set_class_rule.exit

if.end247.i:                                      ; preds = %if.end235.i
  call void @__sanitizer_cov_trace_pc() #16
  %bf.clear254.i = and i32 %bf.set238.i, 573439
  %bf.set255.i = or i32 %bf.clear254.i, 69206016
  %118 = ptrtoint ptr %spec.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %bf.set255.i, ptr %spec.i, align 4
  %ip4dst256.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 1, i32 0, i32 0, i32 1
  %119 = ptrtoint ptr %ip4dst256.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %ip4dst256.i, align 4
  %loc_host257.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec.i, i32 0, i32 8
  %121 = ptrtoint ptr %loc_host257.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %120, ptr %loc_host257.i, align 4
  br label %if.end259.i

if.end259.i:                                      ; preds = %if.end247.i, %if.end235.i.if.end259.i_crit_edge
  %122 = ptrtoint ptr %m_u.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %m_u.i, align 4
  %124 = zext i32 %123 to i64
  call void @__sanitizer_cov_trace_switch(i64 %124, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %123, label %if.end259.i.efx_ethtool_set_class_rule.exit_crit_edge [
    i32 0, label %if.end259.i.if.end279.i_crit_edge
    i32 -1, label %if.end267.i
  ]

if.end259.i.if.end279.i_crit_edge:                ; preds = %if.end259.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end279.i

if.end259.i.efx_ethtool_set_class_rule.exit_crit_edge: ; preds = %if.end259.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_ethtool_set_class_rule.exit

if.end267.i:                                      ; preds = %if.end259.i
  call void @__sanitizer_cov_trace_pc() #16
  %125 = ptrtoint ptr %spec.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %bf.load268.i = load i32, ptr %spec.i, align 4
  %bf.set275.i = or i32 %bf.load268.i, 1048576
  store i32 %bf.set275.i, ptr %spec.i, align 4
  %126 = ptrtoint ptr %h_u.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %h_u.i, align 4
  %rem_host277.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec.i, i32 0, i32 9
  %128 = ptrtoint ptr %rem_host277.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %rem_host277.i, align 4
  br label %if.end279.i

if.end279.i:                                      ; preds = %if.end267.i, %if.end259.i.if.end279.i_crit_edge
  %proto.i = getelementptr inbounds %struct.ethtool_usrip4_spec, ptr %m_u.i, i32 0, i32 5
  %129 = ptrtoint ptr %proto.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %proto.i, align 2
  %131 = zext i8 %130 to i64
  call void @__sanitizer_cov_trace_switch(i64 %131, ptr @__sancov_gen_cov_switch_values.80)
  switch i8 %130, label %if.end279.i.efx_ethtool_set_class_rule.exit_crit_edge [
    i8 0, label %if.end279.i.sw.epilog.i_crit_edge
    i8 -1, label %if.end287.i
  ]

if.end279.i.sw.epilog.i_crit_edge:                ; preds = %if.end279.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

if.end279.i.efx_ethtool_set_class_rule.exit_crit_edge: ; preds = %if.end279.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_ethtool_set_class_rule.exit

if.end287.i:                                      ; preds = %if.end279.i
  call void @__sanitizer_cov_trace_pc() #16
  %132 = ptrtoint ptr %spec.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %bf.load288.i = load i32, ptr %spec.i, align 4
  %bf.set295.i = or i32 %bf.load288.i, 536870912
  store i32 %bf.set295.i, ptr %spec.i, align 4
  %proto296.i = getelementptr inbounds %struct.ethtool_usrip4_spec, ptr %h_u.i, i32 0, i32 5
  %133 = ptrtoint ptr %proto296.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %proto296.i, align 2
  %ip_proto297.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec.i, i32 0, i32 7
  %135 = ptrtoint ptr %ip_proto297.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %134, ptr %ip_proto297.i, align 2
  br label %sw.epilog.i

sw.bb299.i:                                       ; preds = %if.end50.i
  %l4_4_bytes300.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3, i32 0, i32 2
  %136 = ptrtoint ptr %l4_4_bytes300.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %l4_4_bytes300.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %tobool301.not.i = icmp eq i32 %137, 0
  br i1 %tobool301.not.i, label %lor.lhs.false302.i, label %sw.bb299.i.efx_ethtool_set_class_rule.exit_crit_edge

sw.bb299.i.efx_ethtool_set_class_rule.exit_crit_edge: ; preds = %sw.bb299.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_ethtool_set_class_rule.exit

lor.lhs.false302.i:                               ; preds = %sw.bb299.i
  %tclass303.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3, i32 0, i32 4
  %138 = ptrtoint ptr %tclass303.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %tclass303.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %tobool305.not.i = icmp eq i8 %139, 0
  br i1 %tobool305.not.i, label %if.end307.i, label %lor.lhs.false302.i.efx_ethtool_set_class_rule.exit_crit_edge

lor.lhs.false302.i.efx_ethtool_set_class_rule.exit_crit_edge: ; preds = %lor.lhs.false302.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_ethtool_set_class_rule.exit

if.end307.i:                                      ; preds = %lor.lhs.false302.i
  %bf.set310.i = or i32 %bf.set5.i.i, 67665920
  %140 = ptrtoint ptr %spec.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %bf.set310.i, ptr %spec.i, align 4
  %ether_type311.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec.i, i32 0, i32 6
  %141 = ptrtoint ptr %ether_type311.i to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 -31011, ptr %ether_type311.i, align 4
  %ip6dst312.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3, i32 0, i32 1
  %142 = ptrtoint ptr %ip6dst312.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %ip6dst312.i, align 4
  %arrayidx1.i608.i = getelementptr %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3, i32 0, i32 1, i32 1
  %144 = ptrtoint ptr %arrayidx1.i608.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx1.i608.i, align 4
  %or.i609.i = or i32 %145, %143
  %arrayidx2.i610.i = getelementptr %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3, i32 0, i32 1, i32 2
  %146 = ptrtoint ptr %arrayidx2.i610.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx2.i610.i, align 4
  %or3.i611.i = or i32 %or.i609.i, %147
  %arrayidx4.i612.i = getelementptr %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3, i32 0, i32 1, i32 3
  %148 = ptrtoint ptr %arrayidx4.i612.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arrayidx4.i612.i, align 4
  %or5.i613.i = or i32 %or3.i611.i, %149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i613.i)
  %tobool.not.i614.i = icmp eq i32 %or5.i613.i, 0
  br i1 %tobool.not.i614.i, label %if.end307.i.if.end333.i_crit_edge, label %if.then315.i

if.end307.i.if.end333.i_crit_edge:                ; preds = %if.end307.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end333.i

if.then315.i:                                     ; preds = %if.end307.i
  %and.i616.i = and i32 %145, %143
  %and3.i618.i = and i32 %and.i616.i, %147
  %and5.i620.i = and i32 %and3.i618.i, %149
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %and5.i620.i)
  %tobool.not.i621.i = icmp eq i32 %and5.i620.i, -1
  br i1 %tobool.not.i621.i, label %if.end320.i, label %if.then315.i.efx_ethtool_set_class_rule.exit_crit_edge

if.then315.i.efx_ethtool_set_class_rule.exit_crit_edge: ; preds = %if.then315.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_ethtool_set_class_rule.exit

if.end320.i:                                      ; preds = %if.then315.i
  call void @__sanitizer_cov_trace_pc() #16
  %bf.clear327.i = and i32 %bf.set310.i, 573439
  %bf.set328.i = or i32 %bf.clear327.i, 69206016
  %150 = ptrtoint ptr %spec.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %bf.set328.i, ptr %spec.i, align 4
  %loc_host329.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec.i, i32 0, i32 8
  %ip6dst331.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 1, i32 0, i32 1
  %151 = call ptr @memcpy(ptr %loc_host329.i, ptr %ip6dst331.i, i32 16)
  br label %if.end333.i

if.end333.i:                                      ; preds = %if.end320.i, %if.end307.i.if.end333.i_crit_edge
  %152 = ptrtoint ptr %m_u.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %m_u.i, align 4
  %arrayidx1.i622.i = getelementptr %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3, i32 0, i32 0, i32 1
  %154 = ptrtoint ptr %arrayidx1.i622.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %arrayidx1.i622.i, align 4
  %or.i623.i = or i32 %155, %153
  %arrayidx2.i624.i = getelementptr %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3, i32 0, i32 0, i32 2
  %156 = ptrtoint ptr %arrayidx2.i624.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %arrayidx2.i624.i, align 4
  %or3.i625.i = or i32 %or.i623.i, %157
  %arrayidx4.i626.i = getelementptr %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3, i32 0, i32 0, i32 3
  %158 = ptrtoint ptr %arrayidx4.i626.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %arrayidx4.i626.i, align 4
  %or5.i627.i = or i32 %or3.i625.i, %159
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i627.i)
  %tobool.not.i628.i = icmp eq i32 %or5.i627.i, 0
  br i1 %tobool.not.i628.i, label %if.end333.i.if.end355.i_crit_edge, label %if.then337.i

if.end333.i.if.end355.i_crit_edge:                ; preds = %if.end333.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end355.i

if.then337.i:                                     ; preds = %if.end333.i
  %and.i630.i = and i32 %155, %153
  %and3.i632.i = and i32 %and.i630.i, %157
  %and5.i634.i = and i32 %and3.i632.i, %159
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %and5.i634.i)
  %tobool.not.i635.i = icmp eq i32 %and5.i634.i, -1
  br i1 %tobool.not.i635.i, label %if.end342.i, label %if.then337.i.efx_ethtool_set_class_rule.exit_crit_edge

if.then337.i.efx_ethtool_set_class_rule.exit_crit_edge: ; preds = %if.then337.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_ethtool_set_class_rule.exit

if.end342.i:                                      ; preds = %if.then337.i
  call void @__sanitizer_cov_trace_pc() #16
  %160 = ptrtoint ptr %spec.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %bf.load343.i = load i32, ptr %spec.i, align 4
  %bf.set350.i = or i32 %bf.load343.i, 1048576
  store i32 %bf.set350.i, ptr %spec.i, align 4
  %rem_host351.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec.i, i32 0, i32 9
  %161 = call ptr @memcpy(ptr %rem_host351.i, ptr %h_u.i, i32 16)
  br label %if.end355.i

if.end355.i:                                      ; preds = %if.end342.i, %if.end333.i.if.end355.i_crit_edge
  %l4_proto.i = getelementptr inbounds %struct.ethtool_usrip6_spec, ptr %m_u.i, i32 0, i32 4
  %162 = ptrtoint ptr %l4_proto.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %l4_proto.i, align 1
  %164 = zext i8 %163 to i64
  call void @__sanitizer_cov_trace_switch(i64 %164, ptr @__sancov_gen_cov_switch_values.81)
  switch i8 %163, label %if.end355.i.efx_ethtool_set_class_rule.exit_crit_edge [
    i8 0, label %if.end355.i.sw.epilog.i_crit_edge
    i8 -1, label %if.end363.i
  ]

if.end355.i.sw.epilog.i_crit_edge:                ; preds = %if.end355.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

if.end355.i.efx_ethtool_set_class_rule.exit_crit_edge: ; preds = %if.end355.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_ethtool_set_class_rule.exit

if.end363.i:                                      ; preds = %if.end355.i
  call void @__sanitizer_cov_trace_pc() #16
  %165 = ptrtoint ptr %spec.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %bf.load364.i = load i32, ptr %spec.i, align 4
  %bf.set371.i = or i32 %bf.load364.i, 536870912
  store i32 %bf.set371.i, ptr %spec.i, align 4
  %l4_proto372.i = getelementptr inbounds %struct.ethtool_usrip6_spec, ptr %h_u.i, i32 0, i32 4
  %166 = ptrtoint ptr %l4_proto372.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %l4_proto372.i, align 1
  %ip_proto373.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec.i, i32 0, i32 7
  %168 = ptrtoint ptr %ip_proto373.i to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 %167, ptr %ip_proto373.i, align 2
  br label %sw.epilog.i

sw.bb375.i:                                       ; preds = %if.end50.i
  %169 = ptrtoint ptr %m_u.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %m_u.i, align 4
  %add.ptr.i.i = getelementptr %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3, i32 0, i32 0, i32 1
  %171 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %171)
  %172 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %172 to i32
  %or.i636.i = or i32 %170, %conv.i.i
  %173 = zext i32 %or.i636.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %173, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %or.i636.i, label %if.else.i [
    i32 0, label %sw.bb375.i.if.end409.i_crit_edge
    i32 16777216, label %sw.bb375.i.if.end405.i_crit_edge
  ]

sw.bb375.i.if.end405.i_crit_edge:                 ; preds = %sw.bb375.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end405.i

sw.bb375.i.if.end409.i_crit_edge:                 ; preds = %sw.bb375.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end409.i

if.else.i:                                        ; preds = %sw.bb375.i
  %174 = ptrtoint ptr %m_u.i to i32
  call void @__asan_load2_noabort(i32 %174)
  %175 = load i16, ptr %m_u.i, align 2
  %add.ptr1.i.i = getelementptr i8, ptr %m_u.i, i32 2
  %176 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %add.ptr1.i.i, align 2
  %and9.i.i = and i16 %175, %172
  %and510.i.i = and i16 %and9.i.i, %177
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i.i)
  %cmp.i640.i = icmp eq i16 %and510.i.i, -1
  br i1 %cmp.i640.i, label %if.else.i.if.end405.i_crit_edge, label %if.else.i.efx_ethtool_set_class_rule.exit_crit_edge

if.else.i.efx_ethtool_set_class_rule.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_ethtool_set_class_rule.exit

if.else.i.if.end405.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end405.i

if.end405.i:                                      ; preds = %if.else.i.if.end405.i_crit_edge, %sw.bb375.i.if.end405.i_crit_edge
  %.sink.i = phi i32 [ 1074298880, %sw.bb375.i.if.end405.i_crit_edge ], [ 17334272, %if.else.i.if.end405.i_crit_edge ]
  %bf.set402.i = or i32 %.sink.i, %bf.set5.i.i
  %178 = ptrtoint ptr %spec.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %bf.set402.i, ptr %spec.i, align 4
  %loc_mac.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec.i, i32 0, i32 4
  %179 = ptrtoint ptr %h_u.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %h_u.i, align 4
  %181 = ptrtoint ptr %loc_mac.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %180, ptr %loc_mac.i, align 4
  %add.ptr.i641.i = getelementptr %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 1, i32 0, i32 0, i32 1
  %182 = ptrtoint ptr %add.ptr.i641.i to i32
  call void @__asan_load2_noabort(i32 %182)
  %183 = load i16, ptr %add.ptr.i641.i, align 2
  %add.ptr1.i642.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec.i, i32 0, i32 4, i32 4
  %184 = ptrtoint ptr %add.ptr1.i642.i to i32
  call void @__asan_store2_noabort(i32 %184)
  store i16 %183, ptr %add.ptr1.i642.i, align 4
  br label %if.end409.i

if.end409.i:                                      ; preds = %if.end405.i, %sw.bb375.i.if.end409.i_crit_edge
  %h_source.i = getelementptr inbounds %struct.ethhdr, ptr %m_u.i, i32 0, i32 1
  %185 = ptrtoint ptr %h_source.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %h_source.i, align 4
  %add.ptr.i643.i = getelementptr %struct.ethhdr, ptr %m_u.i, i32 0, i32 1, i32 4
  %187 = ptrtoint ptr %add.ptr.i643.i to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %add.ptr.i643.i, align 2
  %conv.i644.i = zext i16 %188 to i32
  %or.i645.i = or i32 %186, %conv.i644.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i645.i)
  %cmp.i646.i = icmp eq i32 %or.i645.i, 0
  br i1 %cmp.i646.i, label %if.end409.i.if.end429.i_crit_edge, label %if.then412.i

if.end409.i.if.end429.i_crit_edge:                ; preds = %if.end409.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end429.i

if.then412.i:                                     ; preds = %if.end409.i
  %189 = ptrtoint ptr %h_source.i to i32
  call void @__asan_load2_noabort(i32 %189)
  %190 = load i16, ptr %h_source.i, align 2
  %add.ptr1.i647.i = getelementptr %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3, i32 0, i32 0, i32 2
  %191 = ptrtoint ptr %add.ptr1.i647.i to i32
  call void @__asan_load2_noabort(i32 %191)
  %192 = load i16, ptr %add.ptr1.i647.i, align 2
  %and9.i648.i = and i16 %190, %188
  %and510.i650.i = and i16 %and9.i648.i, %192
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i650.i)
  %cmp.i651.i = icmp eq i16 %and510.i650.i, -1
  br i1 %cmp.i651.i, label %if.end417.i, label %if.then412.i.efx_ethtool_set_class_rule.exit_crit_edge

if.then412.i.efx_ethtool_set_class_rule.exit_crit_edge: ; preds = %if.then412.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_ethtool_set_class_rule.exit

if.end417.i:                                      ; preds = %if.then412.i
  call void @__sanitizer_cov_trace_pc() #16
  %193 = ptrtoint ptr %spec.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %bf.load418.i = load i32, ptr %spec.i, align 4
  %bf.set425.i = or i32 %bf.load418.i, 4194304
  store i32 %bf.set425.i, ptr %spec.i, align 4
  %rem_mac.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec.i, i32 0, i32 5
  %h_source427.i = getelementptr inbounds %struct.ethhdr, ptr %h_u.i, i32 0, i32 1
  %194 = ptrtoint ptr %h_source427.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %h_source427.i, align 4
  %196 = ptrtoint ptr %rem_mac.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %195, ptr %rem_mac.i, align 4
  %add.ptr.i652.i = getelementptr %struct.ethhdr, ptr %h_u.i, i32 0, i32 1, i32 4
  %197 = ptrtoint ptr %add.ptr.i652.i to i32
  call void @__asan_load2_noabort(i32 %197)
  %198 = load i16, ptr %add.ptr.i652.i, align 2
  %add.ptr1.i653.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec.i, i32 0, i32 5, i32 4
  %199 = ptrtoint ptr %add.ptr1.i653.i to i32
  call void @__asan_store2_noabort(i32 %199)
  store i16 %198, ptr %add.ptr1.i653.i, align 2
  br label %if.end429.i

if.end429.i:                                      ; preds = %if.end417.i, %if.end409.i.if.end429.i_crit_edge
  %h_proto.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3, i32 0, i32 0, i32 3
  %200 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_loadN_noabort(i32 %200, i32 2)
  %201 = load i16, ptr %h_proto.i, align 1
  %202 = zext i16 %201 to i64
  call void @__sanitizer_cov_trace_switch(i64 %202, ptr @__sancov_gen_cov_switch_values.83)
  switch i16 %201, label %if.end429.i.efx_ethtool_set_class_rule.exit_crit_edge [
    i16 0, label %if.end429.i.sw.epilog.i_crit_edge
    i16 -1, label %if.end437.i
  ]

if.end429.i.sw.epilog.i_crit_edge:                ; preds = %if.end429.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

if.end429.i.efx_ethtool_set_class_rule.exit_crit_edge: ; preds = %if.end429.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_ethtool_set_class_rule.exit

if.end437.i:                                      ; preds = %if.end429.i
  call void @__sanitizer_cov_trace_pc() #16
  %203 = ptrtoint ptr %spec.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %bf.load438.i = load i32, ptr %spec.i, align 4
  %bf.set445.i = or i32 %bf.load438.i, 67108864
  store i32 %bf.set445.i, ptr %spec.i, align 4
  %h_proto446.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 1, i32 0, i32 0, i32 3
  %204 = ptrtoint ptr %h_proto446.i to i32
  call void @__asan_loadN_noabort(i32 %204, i32 2)
  %205 = load i16, ptr %h_proto446.i, align 1
  %ether_type447.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec.i, i32 0, i32 6
  %206 = ptrtoint ptr %ether_type447.i to i32
  call void @__asan_store2_noabort(i32 %206)
  store i16 %205, ptr %ether_type447.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.end437.i, %if.end429.i.sw.epilog.i_crit_edge, %if.end363.i, %if.end355.i.sw.epilog.i_crit_edge, %if.end287.i, %if.end279.i.sw.epilog.i_crit_edge, %if.end216.i.sw.epilog.i_crit_edge, %if.end123.i.sw.epilog.i_crit_edge
  br i1 %tobool.not.i, label %sw.epilog.i.if.end473.i_crit_edge, label %land.lhs.true452.i

sw.epilog.i.if.end473.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end473.i

land.lhs.true452.i:                               ; preds = %sw.epilog.i
  %vlan_tci.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 4, i32 3
  %207 = ptrtoint ptr %vlan_tci.i to i32
  call void @__asan_load2_noabort(i32 %207)
  %208 = load i16, ptr %vlan_tci.i, align 2
  %209 = zext i16 %208 to i64
  call void @__sanitizer_cov_trace_switch(i64 %209, ptr @__sancov_gen_cov_switch_values.84)
  switch i16 %208, label %land.lhs.true452.i.efx_ethtool_set_class_rule.exit_crit_edge [
    i16 0, label %land.lhs.true452.i.if.end473.i_crit_edge
    i16 4095, label %if.end463.i
  ]

land.lhs.true452.i.if.end473.i_crit_edge:         ; preds = %land.lhs.true452.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end473.i

land.lhs.true452.i.efx_ethtool_set_class_rule.exit_crit_edge: ; preds = %land.lhs.true452.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_ethtool_set_class_rule.exit

if.end463.i:                                      ; preds = %land.lhs.true452.i
  call void @__sanitizer_cov_trace_pc() #16
  %210 = ptrtoint ptr %spec.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %bf.load464.i = load i32, ptr %spec.i, align 4
  %bf.set471.i = or i32 %bf.load464.i, 268435456
  store i32 %bf.set471.i, ptr %spec.i, align 4
  %vlan_tci472.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 2, i32 3
  %211 = ptrtoint ptr %vlan_tci472.i to i32
  call void @__asan_load2_noabort(i32 %211)
  %212 = load i16, ptr %vlan_tci472.i, align 2
  %213 = ptrtoint ptr %27 to i32
  call void @__asan_store2_noabort(i32 %213)
  store i16 %212, ptr %27, align 4
  br label %if.end473.i

if.end473.i:                                      ; preds = %if.end463.i, %land.lhs.true452.i.if.end473.i_crit_edge, %sw.epilog.i.if.end473.i_crit_edge
  %214 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %type.i, align 4
  %filter_insert.i.i = getelementptr inbounds %struct.efx_nic_type, ptr %215, i32 0, i32 77
  %216 = ptrtoint ptr %filter_insert.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %filter_insert.i.i, align 4
  %call.i.i = call i32 %217(ptr noundef %add.ptr.i, ptr noundef nonnull %spec.i, i1 noundef zeroext true) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp475.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp475.i, label %if.end473.i.efx_ethtool_set_class_rule.exit_crit_edge, label %if.end478.i

if.end473.i.efx_ethtool_set_class_rule.exit_crit_edge: ; preds = %if.end473.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_ethtool_set_class_rule.exit

if.end478.i:                                      ; preds = %if.end473.i
  call void @__sanitizer_cov_trace_pc() #16
  %218 = ptrtoint ptr %location.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 %call.i.i, ptr %location.i, align 8
  br label %efx_ethtool_set_class_rule.exit

efx_ethtool_set_class_rule.exit:                  ; preds = %if.end478.i, %if.end473.i.efx_ethtool_set_class_rule.exit_crit_edge, %land.lhs.true452.i.efx_ethtool_set_class_rule.exit_crit_edge, %if.end429.i.efx_ethtool_set_class_rule.exit_crit_edge, %if.then412.i.efx_ethtool_set_class_rule.exit_crit_edge, %if.else.i.efx_ethtool_set_class_rule.exit_crit_edge, %if.end355.i.efx_ethtool_set_class_rule.exit_crit_edge, %if.then337.i.efx_ethtool_set_class_rule.exit_crit_edge, %if.then315.i.efx_ethtool_set_class_rule.exit_crit_edge, %lor.lhs.false302.i.efx_ethtool_set_class_rule.exit_crit_edge, %sw.bb299.i.efx_ethtool_set_class_rule.exit_crit_edge, %if.end279.i.efx_ethtool_set_class_rule.exit_crit_edge, %if.end259.i.efx_ethtool_set_class_rule.exit_crit_edge, %if.end235.i.efx_ethtool_set_class_rule.exit_crit_edge, %lor.lhs.false229.i.efx_ethtool_set_class_rule.exit_crit_edge, %lor.lhs.false226.i.efx_ethtool_set_class_rule.exit_crit_edge, %lor.lhs.false222.i.efx_ethtool_set_class_rule.exit_crit_edge, %sw.bb220.i.efx_ethtool_set_class_rule.exit_crit_edge, %if.end216.i.efx_ethtool_set_class_rule.exit_crit_edge, %if.end196.i.efx_ethtool_set_class_rule.exit_crit_edge, %if.end176.i.efx_ethtool_set_class_rule.exit_crit_edge, %if.then158.i.efx_ethtool_set_class_rule.exit_crit_edge, %if.then137.i.efx_ethtool_set_class_rule.exit_crit_edge, %if.end123.i.efx_ethtool_set_class_rule.exit_crit_edge, %if.end105.i.efx_ethtool_set_class_rule.exit_crit_edge, %if.end87.i.efx_ethtool_set_class_rule.exit_crit_edge, %if.end69.i.efx_ethtool_set_class_rule.exit_crit_edge, %sw.bb.i.efx_ethtool_set_class_rule.exit_crit_edge, %if.end50.i.efx_ethtool_set_class_rule.exit_crit_edge, %lor.lhs.false24.i.efx_ethtool_set_class_rule.exit_crit_edge, %lor.lhs.false.i.efx_ethtool_set_class_rule.exit_crit_edge, %land.lhs.true19.i.efx_ethtool_set_class_rule.exit_crit_edge, %if.end.i.efx_ethtool_set_class_rule.exit_crit_edge, %sw.bb.efx_ethtool_set_class_rule.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end478.i ], [ -22, %sw.bb.efx_ethtool_set_class_rule.exit_crit_edge ], [ -22, %if.end.i.efx_ethtool_set_class_rule.exit_crit_edge ], [ -22, %lor.lhs.false24.i.efx_ethtool_set_class_rule.exit_crit_edge ], [ -22, %lor.lhs.false.i.efx_ethtool_set_class_rule.exit_crit_edge ], [ -22, %land.lhs.true19.i.efx_ethtool_set_class_rule.exit_crit_edge ], [ -22, %sw.bb.i.efx_ethtool_set_class_rule.exit_crit_edge ], [ -22, %if.end69.i.efx_ethtool_set_class_rule.exit_crit_edge ], [ -22, %if.end87.i.efx_ethtool_set_class_rule.exit_crit_edge ], [ -22, %if.end105.i.efx_ethtool_set_class_rule.exit_crit_edge ], [ -22, %if.end123.i.efx_ethtool_set_class_rule.exit_crit_edge ], [ -22, %if.then137.i.efx_ethtool_set_class_rule.exit_crit_edge ], [ -22, %if.then158.i.efx_ethtool_set_class_rule.exit_crit_edge ], [ -22, %if.end176.i.efx_ethtool_set_class_rule.exit_crit_edge ], [ -22, %if.end196.i.efx_ethtool_set_class_rule.exit_crit_edge ], [ -22, %if.end216.i.efx_ethtool_set_class_rule.exit_crit_edge ], [ -22, %lor.lhs.false229.i.efx_ethtool_set_class_rule.exit_crit_edge ], [ -22, %lor.lhs.false226.i.efx_ethtool_set_class_rule.exit_crit_edge ], [ -22, %lor.lhs.false222.i.efx_ethtool_set_class_rule.exit_crit_edge ], [ -22, %sw.bb220.i.efx_ethtool_set_class_rule.exit_crit_edge ], [ -22, %if.end235.i.efx_ethtool_set_class_rule.exit_crit_edge ], [ -22, %if.end259.i.efx_ethtool_set_class_rule.exit_crit_edge ], [ -22, %if.end279.i.efx_ethtool_set_class_rule.exit_crit_edge ], [ -22, %lor.lhs.false302.i.efx_ethtool_set_class_rule.exit_crit_edge ], [ -22, %sw.bb299.i.efx_ethtool_set_class_rule.exit_crit_edge ], [ -22, %if.then315.i.efx_ethtool_set_class_rule.exit_crit_edge ], [ -22, %if.then337.i.efx_ethtool_set_class_rule.exit_crit_edge ], [ -22, %if.end355.i.efx_ethtool_set_class_rule.exit_crit_edge ], [ -22, %if.else.i.efx_ethtool_set_class_rule.exit_crit_edge ], [ -22, %if.then412.i.efx_ethtool_set_class_rule.exit_crit_edge ], [ -22, %if.end429.i.efx_ethtool_set_class_rule.exit_crit_edge ], [ -22, %if.end50.i.efx_ethtool_set_class_rule.exit_crit_edge ], [ -22, %land.lhs.true452.i.efx_ethtool_set_class_rule.exit_crit_edge ], [ %call.i.i, %if.end473.i.efx_ethtool_set_class_rule.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %spec.i) #14
  br label %cleanup

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %location = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 6
  %219 = ptrtoint ptr %location to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %location, align 8
  %221 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %type.i, align 4
  %filter_remove_safe.i = getelementptr inbounds %struct.efx_nic_type, ptr %222, i32 0, i32 78
  %223 = ptrtoint ptr %filter_remove_safe.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %filter_remove_safe.i, align 8
  %call.i12 = tail call i32 %224(ptr noundef %add.ptr.i, i32 noundef 2, i32 noundef %220) #14
  br label %cleanup

cleanup:                                          ; preds = %sw.bb3, %efx_ethtool_set_class_rule.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i12, %sw.bb3 ], [ %retval.0.i, %efx_ethtool_set_class_rule.exit ], [ -95, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @efx_ethtool_get_rxfh_indir_size(ptr nocapture noundef readonly %net_dev) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %n_rx_channels = getelementptr i8, ptr %net_dev, i32 3692
  %0 = ptrtoint ptr %n_rx_channels to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n_rx_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  %. = select i1 %cmp, i32 0, i32 128
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @efx_ethtool_get_rxfh_key_size(ptr nocapture noundef readonly %net_dev) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr i8, ptr %net_dev, i32 2348
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 4
  %rx_hash_key_size = getelementptr inbounds %struct.efx_nic_type, ptr %1, i32 0, i32 138
  %2 = ptrtoint ptr %rx_hash_key_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_hash_key_size, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_ethtool_get_rxfh(ptr noundef %net_dev, ptr noundef writeonly %indir, ptr noundef writeonly %key, ptr noundef writeonly %hfunc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %type = getelementptr i8, ptr %net_dev, i32 2348
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 4
  %rx_pull_rss_config = getelementptr inbounds %struct.efx_nic_type, ptr %1, i32 0, i32 55
  %2 = ptrtoint ptr %rx_pull_rss_config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_pull_rss_config, align 4
  %call1 = tail call i32 %3(ptr noundef %add.ptr.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool2.not = icmp eq ptr %hfunc, null
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %hfunc to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %hfunc, align 1
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %tobool5.not = icmp eq ptr %indir, null
  br i1 %tobool5.not, label %if.end4.if.end7_crit_edge, label %if.then6

if.end4.if.end7_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  %rx_indir_table = getelementptr i8, ptr %net_dev, i32 3836
  %5 = call ptr @memcpy(ptr %indir, ptr %rx_indir_table, i32 512)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end4.if.end7_crit_edge
  %tobool8.not = icmp eq ptr %key, null
  br i1 %tobool8.not, label %if.end7.cleanup_crit_edge, label %if.then9

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  %rx_hash_key = getelementptr i8, ptr %net_dev, i32 3793
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %type, align 4
  %rx_hash_key_size = getelementptr inbounds %struct.efx_nic_type, ptr %7, i32 0, i32 138
  %8 = ptrtoint ptr %rx_hash_key_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_hash_key_size, align 4
  %10 = call ptr @memcpy(ptr %key, ptr %rx_hash_key, i32 %9)
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end7.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_ethtool_set_rxfh(ptr noundef %net_dev, ptr noundef %indir, ptr noundef %key, i8 noundef zeroext %hfunc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %hfunc)
  %switch = icmp ult i8 %hfunc, 2
  br i1 %switch, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %indir, null
  %tobool6.not = icmp eq ptr %key, null
  %or.cond = and i1 %tobool.not, %tobool6.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %rx_hash_key = getelementptr i8, ptr %net_dev, i32 3793
  %spec.select = select i1 %tobool6.not, ptr %rx_hash_key, ptr %key
  %rx_indir_table = getelementptr i8, ptr %net_dev, i32 3836
  %indir.addr.0 = select i1 %tobool.not, ptr %rx_indir_table, ptr %indir
  %type = getelementptr i8, ptr %net_dev, i32 2348
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 4
  %rx_push_rss_config = getelementptr inbounds %struct.efx_nic_type, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %rx_push_rss_config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_push_rss_config, align 8
  %call17 = tail call i32 %3(ptr noundef %add.ptr.i, i1 noundef zeroext true, ptr noundef %indir.addr.0, ptr noundef %spec.select) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %if.end8 ], [ -95, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_ethtool_get_rxfh_context(ptr noundef %net_dev, ptr noundef writeonly %indir, ptr noundef writeonly %key, ptr noundef writeonly %hfunc, i32 noundef %rss_context) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %type = getelementptr i8, ptr %net_dev, i32 2348
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 4
  %rx_pull_rss_context_config = getelementptr inbounds %struct.efx_nic_type, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %rx_pull_rss_context_config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_pull_rss_context_config, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %rss_lock = getelementptr i8, ptr %net_dev, i32 4348
  tail call void @mutex_lock_nested(ptr noundef %rss_lock, i32 noundef 0) #14
  %call1 = tail call ptr @efx_find_rss_context_entry(ptr noundef %add.ptr.i, i32 noundef %rss_context) #14
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.out_unlock_crit_edge, label %if.end4

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

if.end4:                                          ; preds = %if.end
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %type, align 4
  %rx_pull_rss_context_config6 = getelementptr inbounds %struct.efx_nic_type, ptr %5, i32 0, i32 57
  %6 = ptrtoint ptr %rx_pull_rss_context_config6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_pull_rss_context_config6, align 4
  %call7 = tail call i32 %7(ptr noundef %add.ptr.i, ptr noundef nonnull %call1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end4.out_unlock_crit_edge

if.end4.out_unlock_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

if.end10:                                         ; preds = %if.end4
  %tobool11.not = icmp eq ptr %hfunc, null
  br i1 %tobool11.not, label %if.end10.if.end13_crit_edge, label %if.then12

if.end10.if.end13_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %hfunc to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %hfunc, align 1
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end10.if.end13_crit_edge
  %tobool14.not = icmp eq ptr %indir, null
  br i1 %tobool14.not, label %if.end13.if.end16_crit_edge, label %if.then15

if.end13.if.end16_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  %rx_indir_table = getelementptr inbounds %struct.efx_rss_context, ptr %call1, i32 0, i32 5
  %9 = call ptr @memcpy(ptr %indir, ptr %rx_indir_table, i32 512)
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end13.if.end16_crit_edge
  %tobool17.not = icmp eq ptr %key, null
  br i1 %tobool17.not, label %if.end16.out_unlock_crit_edge, label %if.then18

if.end16.out_unlock_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  %rx_hash_key = getelementptr inbounds %struct.efx_rss_context, ptr %call1, i32 0, i32 4
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %type, align 4
  %rx_hash_key_size = getelementptr inbounds %struct.efx_nic_type, ptr %11, i32 0, i32 138
  %12 = ptrtoint ptr %rx_hash_key_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_hash_key_size, align 4
  %14 = call ptr @memcpy(ptr %key, ptr %rx_hash_key, i32 %13)
  br label %out_unlock

out_unlock:                                       ; preds = %if.then18, %if.end16.out_unlock_crit_edge, %if.end4.out_unlock_crit_edge, %if.end.out_unlock_crit_edge
  %rc.0 = phi i32 [ %call7, %if.end4.out_unlock_crit_edge ], [ 0, %if.then18 ], [ 0, %if.end16.out_unlock_crit_edge ], [ -2, %if.end.out_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %rss_lock) #14
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %out_unlock ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_ethtool_set_rxfh_context(ptr noundef %net_dev, ptr noundef %indir, ptr noundef %key, i8 noundef zeroext %hfunc, ptr nocapture noundef %rss_context, i1 noundef zeroext %delete) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %type = getelementptr i8, ptr %net_dev, i32 2348
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 4
  %rx_push_rss_context_config = getelementptr inbounds %struct.efx_nic_type, ptr %1, i32 0, i32 56
  %2 = ptrtoint ptr %rx_push_rss_context_config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_push_rss_context_config, align 8
  %tobool.not = icmp ne ptr %3, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %hfunc)
  %switch = icmp ult i8 %hfunc, 2
  %or.cond = and i1 %switch, %tobool.not
  br i1 %or.cond, label %if.end6, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6:                                          ; preds = %entry
  %rss_lock = getelementptr i8, ptr %net_dev, i32 4348
  tail call void @mutex_lock_nested(ptr noundef %rss_lock, i32 noundef 0) #14
  %4 = ptrtoint ptr %rss_context to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rss_context, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp7 = icmp eq i32 %5, -1
  br i1 %cmp7, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end6
  br i1 %delete, label %if.then9.out_unlock_crit_edge, label %if.end12

if.then9.out_unlock_crit_edge:                    ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

if.end12:                                         ; preds = %if.then9
  %call13 = tail call ptr @efx_alloc_rss_context_entry(ptr noundef %add.ptr.i) #14
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end12.out_unlock_crit_edge, label %if.end21.thread

if.end12.out_unlock_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

if.end21.thread:                                  ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  %context_id = getelementptr inbounds %struct.efx_rss_context, ptr %call13, i32 0, i32 1
  %6 = ptrtoint ptr %context_id to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %context_id, align 4
  tail call void @efx_set_default_rx_indir_table(ptr noundef %add.ptr.i, ptr noundef nonnull %call13) #14
  %rx_hash_key = getelementptr inbounds %struct.efx_rss_context, ptr %call13, i32 0, i32 4
  tail call void @netdev_rss_key_fill(ptr noundef %rx_hash_key, i32 noundef 40) #14
  br label %if.end30

if.else:                                          ; preds = %if.end6
  %call17 = tail call ptr @efx_find_rss_context_entry(ptr noundef %add.ptr.i, i32 noundef %5) #14
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.else.out_unlock_crit_edge, label %if.end21

if.else.out_unlock_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

if.end21:                                         ; preds = %if.else
  br i1 %delete, label %if.then23, label %if.end21.if.end30_crit_edge

if.end21.if.end30_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

if.then23:                                        ; preds = %if.end21
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %type, align 4
  %rx_push_rss_context_config25 = getelementptr inbounds %struct.efx_nic_type, ptr %8, i32 0, i32 56
  %9 = ptrtoint ptr %rx_push_rss_context_config25 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rx_push_rss_context_config25, align 8
  %call26 = tail call i32 %10(ptr noundef %add.ptr.i, ptr noundef nonnull %call17, ptr noundef null, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then28, label %if.then23.out_unlock_crit_edge

if.then23.out_unlock_crit_edge:                   ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

if.then28:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @efx_free_rss_context_entry(ptr noundef nonnull %call17) #14
  br label %out_unlock

if.end30:                                         ; preds = %if.end21.if.end30_crit_edge, %if.end21.thread
  %ctx.083 = phi ptr [ %call13, %if.end21.thread ], [ %call17, %if.end21.if.end30_crit_edge ]
  %tobool31.not = icmp eq ptr %key, null
  %rx_hash_key33 = getelementptr inbounds %struct.efx_rss_context, ptr %ctx.083, i32 0, i32 4
  %spec.select = select i1 %tobool31.not, ptr %rx_hash_key33, ptr %key
  %tobool36.not = icmp eq ptr %indir, null
  %rx_indir_table = getelementptr inbounds %struct.efx_rss_context, ptr %ctx.083, i32 0, i32 5
  %indir.addr.0 = select i1 %tobool36.not, ptr %rx_indir_table, ptr %indir
  %11 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %type, align 4
  %rx_push_rss_context_config41 = getelementptr inbounds %struct.efx_nic_type, ptr %12, i32 0, i32 56
  %13 = ptrtoint ptr %rx_push_rss_context_config41 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rx_push_rss_context_config41, align 8
  %call42 = tail call i32 %14(ptr noundef %add.ptr.i, ptr noundef nonnull %ctx.083, ptr noundef %indir.addr.0, ptr noundef %spec.select) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  %cmp7.not = xor i1 %cmp7, true
  %brmerge = select i1 %tobool43.not, i1 true, i1 %cmp7.not
  br i1 %brmerge, label %if.else48, label %if.then47

if.then47:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @efx_free_rss_context_entry(ptr noundef nonnull %ctx.083) #14
  br label %out_unlock

if.else48:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  %user_id = getelementptr inbounds %struct.efx_rss_context, ptr %ctx.083, i32 0, i32 2
  %15 = ptrtoint ptr %user_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %user_id, align 4
  %17 = ptrtoint ptr %rss_context to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %rss_context, align 4
  br label %out_unlock

out_unlock:                                       ; preds = %if.else48, %if.then47, %if.then28, %if.then23.out_unlock_crit_edge, %if.else.out_unlock_crit_edge, %if.end12.out_unlock_crit_edge, %if.then9.out_unlock_crit_edge
  %rc.0 = phi i32 [ %call26, %if.then23.out_unlock_crit_edge ], [ 0, %if.then28 ], [ %call42, %if.then47 ], [ %call42, %if.else48 ], [ -22, %if.then9.out_unlock_crit_edge ], [ -12, %if.end12.out_unlock_crit_edge ], [ -2, %if.else.out_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %rss_lock) #14
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %out_unlock ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @efx_alloc_rss_context_entry(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_set_default_rx_indir_table(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_rss_key_fill(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_free_rss_context_entry(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_ethtool_reset(ptr noundef %net_dev, ptr noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr i8, ptr %net_dev, i32 2348
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 4
  %map_reset_flags = getelementptr inbounds %struct.efx_nic_type, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %map_reset_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map_reset_flags, align 8
  %call1 = tail call i32 %3(ptr noundef %flags) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %call2 = tail call i32 @efx_reset(ptr noundef %add.ptr.i, i32 noundef %call1) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_reset(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_ethtool_get_module_eeprom(ptr noundef %net_dev, ptr noundef %ee, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %mac_lock = getelementptr i8, ptr %net_dev, i32 4592
  tail call void @mutex_lock_nested(ptr noundef %mac_lock, i32 noundef 0) #14
  %call1 = tail call i32 @efx_mcdi_phy_get_module_eeprom(ptr noundef %add.ptr.i, ptr noundef %ee, ptr noundef %data) #14
  tail call void @mutex_unlock(ptr noundef %mac_lock) #14
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_phy_get_module_eeprom(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_ethtool_get_module_info(ptr noundef %net_dev, ptr noundef %modinfo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %mac_lock = getelementptr i8, ptr %net_dev, i32 4592
  tail call void @mutex_lock_nested(ptr noundef %mac_lock, i32 noundef 0) #14
  %call1 = tail call i32 @efx_mcdi_phy_get_module_info(ptr noundef %add.ptr.i, ptr noundef %modinfo) #14
  tail call void @mutex_unlock(ptr noundef %mac_lock) #14
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_phy_get_module_info(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #13

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @efx_get_uint_stat(ptr nocapture noundef readonly %field) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %field, align 4
  %conv = zext i32 %1 to i64
  ret i64 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @efx_get_atomic_stat(ptr noundef %field) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %field, i32 noundef 4) #14
  %0 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %field, align 4
  %conv = sext i32 %1 to i64
  ret i64 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { cold nounwind }
attributes #19 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !10, !11, !12, !14, !15, !16, !17, !19, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !45, !46, !48, !50, !52, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125}
!llvm.module.flags = !{!127, !128, !129, !130, !131, !132, !133, !134}
!llvm.ident = !{!135}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/sfc/ethtool_common.c", i32 108, i32 24}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/sfc/ethtool_common.c", i32 145, i32 2}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/sfc/ethtool_common.c", i32 153, i32 4}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/sfc/ethtool_common.c", i32 164, i32 2}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/sfc/ethtool_common.c", i32 201, i32 3}
!14 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.10, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @efx_ethtool_set_pauseparam.__UNIQUE_ID_ddebug524, !13, !"__UNIQUE_ID_ddebug524", i1 false, i1 false}
!17 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/sfc/ethtool_common.c", i32 208, i32 3}
!19 = !{ptr @efx_ethtool_set_pauseparam.__UNIQUE_ID_ddebug525, !18, !"__UNIQUE_ID_ddebug525", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/sfc/ethtool_common.c", i32 226, i32 4}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/sfc/ethtool_common.c", i32 352, i32 9}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/sfc/ethtool_common.c", i32 352, i32 19}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/sfc/ethtool_common.c", i32 354, i32 9}
!28 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/sfc/ethtool_common.c", i32 354, i32 20}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/sfc/ethtool_common.c", i32 356, i32 20}
!32 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/sfc/ethtool_common.c", i32 362, i32 10}
!34 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/sfc/ethtool_common.c", i32 363, i32 10}
!36 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/sfc/ethtool_common.c", i32 367, i32 10}
!38 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/sfc/ethtool_common.c", i32 371, i32 20}
!40 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/sfc/ethtool_common.c", i32 373, i32 20}
!42 = !{ptr @.str.23, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/sfc/ethtool_common.c", i32 593, i32 3}
!44 = !{ptr @.str.24, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @efx_ethtool_set_link_ksettings.__UNIQUE_ID_ddebug526, !43, !"__UNIQUE_ID_ddebug526", i1 false, i1 false}
!46 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/sfc/ethtool_common.c", i32 277, i32 5}
!48 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/sfc/ethtool_common.c", i32 311, i32 10}
!50 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/sfc/ethtool_common.c", i32 312, i32 10}
!52 = !{ptr @.str.28, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.29, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/sfc/ethtool_common.c", i32 316, i32 10}
!55 = !{ptr @.str.30, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/sfc/ethtool_common.c", i32 320, i32 9}
!57 = !{ptr @.str.31, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/sfc/ethtool_common.c", i32 321, i32 9}
!59 = !{ptr @.str.32, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/sfc/ethtool_common.c", i32 325, i32 9}
!61 = !{ptr @.str.33, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/sfc/ethtool_common.c", i32 408, i32 7}
!63 = !{ptr @.str.34, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/sfc/ethtool_common.c", i32 421, i32 7}
!65 = !{ptr @.str.35, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/sfc/ethtool_common.c", i32 433, i32 7}
!67 = !{ptr @.str.36, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/sfc/ethtool_common.c", i32 69, i32 2}
!69 = !{ptr @.str.37, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/sfc/ethtool_common.c", i32 70, i32 2}
!71 = !{ptr @.str.38, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/sfc/ethtool_common.c", i32 71, i32 2}
!73 = !{ptr @.str.39, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/sfc/ethtool_common.c", i32 72, i32 2}
!75 = !{ptr @.str.40, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/sfc/ethtool_common.c", i32 73, i32 2}
!77 = !{ptr @.str.41, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/sfc/ethtool_common.c", i32 74, i32 2}
!79 = !{ptr @.str.42, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/sfc/ethtool_common.c", i32 75, i32 2}
!81 = !{ptr @.str.43, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/sfc/ethtool_common.c", i32 76, i32 2}
!83 = !{ptr @.str.44, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/sfc/ethtool_common.c", i32 77, i32 2}
!85 = !{ptr @.str.45, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/sfc/ethtool_common.c", i32 78, i32 2}
!87 = !{ptr @.str.46, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/sfc/ethtool_common.c", i32 79, i32 2}
!89 = !{ptr @.str.47, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/sfc/ethtool_common.c", i32 80, i32 2}
!91 = !{ptr @.str.48, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/sfc/ethtool_common.c", i32 81, i32 2}
!93 = !{ptr @.str.49, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/sfc/ethtool_common.c", i32 82, i32 2}
!95 = !{ptr @.str.50, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/sfc/ethtool_common.c", i32 83, i32 2}
!97 = !{ptr @.str.51, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/sfc/ethtool_common.c", i32 84, i32 2}
!99 = !{ptr @.str.52, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/sfc/ethtool_common.c", i32 85, i32 2}
!101 = !{ptr @.str.53, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/sfc/ethtool_common.c", i32 86, i32 2}
!103 = !{ptr @.str.54, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/sfc/ethtool_common.c", i32 87, i32 2}
!105 = !{ptr @.str.55, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/sfc/ethtool_common.c", i32 88, i32 2}
!107 = !{ptr @.str.56, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/sfc/ethtool_common.c", i32 89, i32 2}
!109 = !{ptr @.str.57, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/sfc/ethtool_common.c", i32 90, i32 2}
!111 = !{ptr @.str.58, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/sfc/ethtool_common.c", i32 91, i32 2}
!113 = !{ptr @.str.59, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/sfc/ethtool_common.c", i32 92, i32 2}
!115 = !{ptr @.str.60, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/sfc/ethtool_common.c", i32 93, i32 2}
!117 = !{ptr @.str.61, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/sfc/ethtool_common.c", i32 95, i32 2}
!119 = !{ptr @.str.62, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/ethernet/sfc/ethtool_common.c", i32 96, i32 2}
!121 = !{ptr @.str.63, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/ethernet/sfc/ethtool_common.c", i32 97, i32 2}
!123 = !{ptr @efx_sw_stat_desc, !124, !"efx_sw_stat_desc", i1 false, i1 false}
!124 = !{!"../drivers/net/ethernet/sfc/ethtool_common.c", i32 68, i32 38}
!125 = distinct !{null, !126, !"mac_addr_ig_mask", i1 false, i1 false}
!126 = !{!"../drivers/net/ethernet/sfc/ethtool_common.c", i32 631, i32 17}
!127 = !{i32 1, !"wchar_size", i32 2}
!128 = !{i32 1, !"min_enum_size", i32 4}
!129 = !{i32 8, !"branch-target-enforcement", i32 0}
!130 = !{i32 8, !"sign-return-address", i32 0}
!131 = !{i32 8, !"sign-return-address-all", i32 0}
!132 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!133 = !{i32 7, !"uwtable", i32 1}
!134 = !{i32 7, !"frame-pointer", i32 2}
!135 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!136 = !{i64 2148989967, i64 2148989972, i64 2148989985, i64 2148990029, i64 2148990063, i64 2148990084}
!137 = !{i8 0, i8 2}
