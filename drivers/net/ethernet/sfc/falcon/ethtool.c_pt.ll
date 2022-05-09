; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/sfc/falcon/ethtool.c_pt.bc'
source_filename = "../drivers/net/ethernet/sfc/falcon/ethtool.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ef4_sw_stat_desc = type { ptr, i32, i32, ptr }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.152, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%union.anon.152 = type { ptr }
%struct.ef4_nic_type = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i8, i8, i32, i32, i64, i32 }
%struct.ethtool_regs = type { i32, i32, i32, [0 x i8] }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ef4_channel = type { ptr, i32, ptr, i8, i8, i32, i32, ptr, %struct.napi_struct, i32, %struct.ef4_special_buffer, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ef4_rx_queue, [120 x i8], [4 x %struct.ef4_tx_queue] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.ef4_special_buffer = type { %struct.ef4_buffer, i32, i32 }
%struct.ef4_buffer = type { ptr, i32, i32 }
%struct.ef4_rx_queue = type { ptr, i32, ptr, %struct.ef4_special_buffer, i32, i8, i8, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32 }
%struct.ef4_tx_queue = type { ptr, i32, ptr, ptr, ptr, ptr, %struct.ef4_special_buffer, i32, i8, i32, ptr, [68 x i8], i32, i32, i32, i32, i32, [108 x i8], i32, i32, i32, i32, i8, i32, i32, [100 x i8], i32, %struct.atomic_t, [120 x i8] }
%struct.ef4_nic = type { [16 x i8], %struct.list_head, ptr, %struct.list_head, ptr, i32, ptr, i32, i8, ptr, [16 x i8], %struct.work_struct, i32, ptr, i32, i32, i32, i8, i32, i32, i32, i32, i32, [32 x ptr], [32 x %struct.ef4_msi_context], [2 x ptr], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [40 x i8], [128 x i32], i8, i32, i32, i8, %struct.ef4_buffer, i32, i32, %struct.delayed_work, %struct.list_head, ptr, %struct.mutex, %struct.work_struct, i8, i8, i8, ptr, i64, %struct.ef4_buffer, i64, i64, i8, i32, ptr, ptr, %struct.mdio_if_info, i32, i32, %struct.ef4_link_state, i32, i8, %union.ef4_multicast_hash, i8, i32, %struct.atomic_t, i32, i64, ptr, %struct.rw_semaphore, %struct.spinlock, ptr, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, ptr, [32 x i8], %struct.delayed_work, %struct.spinlock, i32, %struct.spinlock, %struct.atomic_t, [60 x i8] }
%struct.ef4_msi_context = type { ptr, i32, [22 x i8] }
%struct.mdio_if_info = type { i32, i32, i32, ptr, ptr, ptr }
%struct.ef4_link_state = type { i8, i8, i8, i32 }
%union.ef4_multicast_hash = type { [2 x %union.ef4_oword] }
%union.ef4_oword = type { [2 x i64] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }
%struct.ef4_phy_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_test = type { i32, i32, i32, i32, [0 x i64] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.141, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.141 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ef4_filter_spec = type { i32, i32, i16, i16, [6 x i8], [6 x i8], i16, i8, [4 x i32], [4 x i32], i16, i16 }
%struct.ethtool_rxnfc = type { i32, i32, i64, %struct.ethtool_rx_flow_spec, %union.anon.143, [0 x i32] }
%struct.ethtool_rx_flow_spec = type { i32, %union.ethtool_flow_union, %struct.ethtool_flow_ext, %union.ethtool_flow_union, %struct.ethtool_flow_ext, i64, i32 }
%union.ethtool_flow_union = type { %struct.ethtool_tcpip6_spec, [12 x i8] }
%struct.ethtool_tcpip6_spec = type { [4 x i32], [4 x i32], i16, i16, i8 }
%struct.ethtool_flow_ext = type { [2 x i8], [6 x i8], i16, i16, [2 x i32] }
%union.anon.143 = type { i32 }
%struct.ethtool_tcpip4_spec = type { i32, i32, i16, i16, i8 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.ethtool_usrip4_spec = type { i32, i32, i32, i8, i8, i8 }
%struct.ethtool_usrip6_spec = type { [4 x i32], [4 x i32], i32, i8, i8 }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.144, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.anon.144 = type { [3 x i32], [3 x i32], [3 x i32] }
%struct.ef4_self_tests = type { i32, i32, i32, [32 x i32], [32 x i32], i32, i32, [20 x i32], [18 x %struct.ef4_loopback_self_tests] }
%struct.ef4_loopback_self_tests = type { [4 x i32], [4 x i32], i32, i32 }

@ef4_ethtool_ops = dso_local constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 597, i32 0, ptr @ef4_ethtool_get_drvinfo, ptr @ef4_ethtool_get_regs_len, ptr @ef4_ethtool_get_regs, ptr @ef4_ethtool_get_wol, ptr @ef4_ethtool_set_wol, ptr @ef4_ethtool_get_msglevel, ptr @ef4_ethtool_set_msglevel, ptr @ef4_ethtool_nway_reset, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr @ef4_ethtool_get_coalesce, ptr @ef4_ethtool_set_coalesce, ptr @ef4_ethtool_get_ringparam, ptr @ef4_ethtool_set_ringparam, ptr null, ptr @ef4_ethtool_get_pauseparam, ptr @ef4_ethtool_set_pauseparam, ptr @ef4_ethtool_self_test, ptr @ef4_ethtool_get_strings, ptr @ef4_ethtool_phys_id, ptr @ef4_ethtool_get_stats, ptr null, ptr null, ptr null, ptr null, ptr @ef4_ethtool_get_sset_count, ptr @ef4_ethtool_get_rxnfc, ptr @ef4_ethtool_set_rxnfc, ptr null, ptr @ef4_ethtool_reset, ptr null, ptr @ef4_ethtool_get_rxfh_indir_size, ptr @ef4_ethtool_get_rxfh, ptr @ef4_ethtool_set_rxfh, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ef4_ethtool_get_module_info, ptr @ef4_ethtool_get_module_eeprom, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ef4_ethtool_get_link_ksettings, ptr @ef4_ethtool_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sfc_falcon\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"4.1\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"RX queues cannot be smaller than %u\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"increasing TX queue size to minimum of %u\0A\00", [53 x i8] zeroinitializer }, align 32
@ef4_ethtool_set_pauseparam.__UNIQUE_ID_ddebug525 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.5, ptr @.str.6, i8 0, i8 -81, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ef4_ethtool_set_pauseparam\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/net/ethernet/sfc/falcon/ethtool.c\00", [54 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Flow control unsupported: tx ON rx OFF\0A\00", [56 x i8] zeroinitializer }, align 32
@ef4_ethtool_set_pauseparam.__UNIQUE_ID_ddebug526 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.5, ptr @.str.7, i8 0, i8 -80, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Autonegotiation is disabled\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Unable to advertise requested flow control setting\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"starting %sline testing\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed opening device.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s %sline self-tests\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"passed\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"failed\00", [25 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"phy\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"alive\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"nvram\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"interrupt\00", [22 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"chan%d\00", [25 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"eventq.dma\00", [21 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"eventq.int\00", [21 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"memory\00", [25 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"registers\00", [22 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%-6s %-24s\00", [21 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"txq%d\00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"loopback.%s.tx_sent\00", [44 x i8] zeroinitializer }, align 32
@ef4_loopback_mode_max = external dso_local local_unnamed_addr constant i32, align 4
@ef4_loopback_mode_names = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"(invalid)\00", [22 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"loopback.%s.tx_done\00", [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"loopback.%s.rx_good\00", [44 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"loopback.%s.rx_bad\00", [45 x i8] zeroinitializer }, align 32
@ef4_sw_stat_desc = internal constant { [11 x %struct.ef4_sw_stat_desc], [48 x i8] } { [11 x %struct.ef4_sw_stat_desc] [%struct.ef4_sw_stat_desc { ptr @.str.34, i32 2, i32 136, ptr @ef4_get_uint_stat }, %struct.ef4_sw_stat_desc { ptr @.str.35, i32 2, i32 268, ptr @ef4_get_uint_stat }, %struct.ef4_sw_stat_desc { ptr @.str.36, i32 2, i32 276, ptr @ef4_get_uint_stat }, %struct.ef4_sw_stat_desc { ptr @.str.37, i32 0, i32 2416, ptr @ef4_get_atomic_stat }, %struct.ef4_sw_stat_desc { ptr @.str.38, i32 1, i32 308, ptr @ef4_get_uint_stat }, %struct.ef4_sw_stat_desc { ptr @.str.39, i32 1, i32 312, ptr @ef4_get_uint_stat }, %struct.ef4_sw_stat_desc { ptr @.str.40, i32 1, i32 316, ptr @ef4_get_uint_stat }, %struct.ef4_sw_stat_desc { ptr @.str.41, i32 1, i32 320, ptr @ef4_get_uint_stat }, %struct.ef4_sw_stat_desc { ptr @.str.42, i32 1, i32 324, ptr @ef4_get_uint_stat }, %struct.ef4_sw_stat_desc { ptr @.str.43, i32 1, i32 340, ptr @ef4_get_uint_stat }, %struct.ef4_sw_stat_desc { ptr @.str.44, i32 1, i32 344, ptr @ef4_get_uint_stat }], [48 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tx_merge_events\00", [16 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tx_pushes\00", [22 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tx_cb_packets\00", [18 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rx_reset\00", [23 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rx_tobe_disc\00", [19 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rx_ip_hdr_chksum_err\00", [43 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rx_tcp_udp_chksum_err\00", [42 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rx_mcast_mismatch\00", [46 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rx_frm_trunc\00", [19 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rx_merge_events\00", [16 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx_merge_packets\00", [47 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tx-%u.tx_packets\00", [47 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx-%d.rx_packets\00", [47 x i8] zeroinitializer }, align 32
@ef4_ethtool_set_link_ksettings.__UNIQUE_ID_ddebug522 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.5, ptr @.str.48, i8 0, i8 37, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ef4_ethtool_set_link_ksettings\00", [33 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"rejecting unsupported 1000Mbps HD setting\0A\00", [53 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.49 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.50 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.52 = internal global [7 x i64] [i64 5, i64 32, i64 41, i64 45, i64 46, i64 47, i64 48]
@__sancov_gen_cov_switch_values.53 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 16]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 32, i64 49, i64 50]
@__sancov_gen_cov_switch_values.57 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 5, i64 6, i64 13, i64 14, i64 18]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 16777216]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 4095]
@___asan_gen_.71 = private unnamed_addr constant [16 x i8] c"ef4_ethtool_ops\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 1320, i32 26 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 165, i32 24 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 166, i32 25 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 669, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 677, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 699, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 706, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 724, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 511, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 519, i32 4 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 530, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 305, i32 9 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 305, i32 19 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 307, i32 9 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 307, i32 20 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 309, i32 20 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 315, i32 10 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 316, i32 10 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 320, i32 10 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 324, i32 20 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 326, i32 20 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 229, i32 5 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 264, i32 10 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 265, i32 10 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 269, i32 10 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 273, i32 9 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 274, i32 9 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 278, i32 9 }
@___asan_gen_.176 = private unnamed_addr constant [17 x i8] c"ef4_sw_stat_desc\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 64, i32 38 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 65, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 66, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 67, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 68, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 69, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 70, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 71, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 72, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 73, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 74, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 75, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 366, i32 7 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 379, i32 7 }
@___asan_gen_.221 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.222 = private constant [45 x i8] c"../drivers/net/ethernet/sfc/falcon/ethtool.c\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 149, i32 3 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @ef4_ethtool_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @ef4_sw_stat_desc, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ef4_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ef4_sw_stat_desc to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ef4_ethtool_get_drvinfo(ptr nocapture noundef readonly %net_dev, ptr noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call1 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str, i32 noundef 32) #16
  %version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 2
  %call3 = tail call i32 @strlcpy(ptr noundef %version, ptr noundef nonnull @.str.1, i32 noundef 32) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %entry.pci_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %call6 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i.i, i32 noundef 32) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ef4_ethtool_get_regs_len(ptr noundef %net_dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %call1 = tail call i32 @ef4_nic_get_regs_len(ptr noundef %add.ptr.i) #16
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ef4_ethtool_get_regs(ptr noundef %net_dev, ptr nocapture noundef writeonly %regs, ptr noundef %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %type = getelementptr i8, ptr %net_dev, i32 2348
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 4
  %revision = getelementptr inbounds %struct.ef4_nic_type, ptr %1, i32 0, i32 79
  %2 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %revision, align 4
  %version = getelementptr inbounds %struct.ethtool_regs, ptr %regs, i32 0, i32 1
  %4 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %version, align 4
  tail call void @ef4_nic_get_regs(ptr noundef %add.ptr.i, ptr noundef %buf) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ef4_ethtool_get_wol(ptr noundef %net_dev, ptr noundef %wol) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %type = getelementptr i8, ptr %net_dev, i32 2348
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 4
  %get_wol = getelementptr inbounds %struct.ef4_nic_type, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %get_wol to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_wol, align 8
  tail call void %3(ptr noundef %add.ptr.i, ptr noundef %wol) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ef4_ethtool_set_wol(ptr noundef %net_dev, ptr nocapture noundef readonly %wol) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %type = getelementptr i8, ptr %net_dev, i32 2348
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 4
  %set_wol = getelementptr inbounds %struct.ef4_nic_type, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %set_wol to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_wol, align 4
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %4 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wolopts, align 4
  %call1 = tail call i32 %3(ptr noundef %add.ptr.i, i32 noundef %5) #16
  ret i32 %call1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ef4_ethtool_get_msglevel(ptr nocapture noundef readonly %net_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %net_dev, i32 2456
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @ef4_ethtool_set_msglevel(ptr nocapture noundef writeonly %net_dev, i32 noundef %msg_enable) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable1 = getelementptr i8, ptr %net_dev, i32 2456
  %0 = ptrtoint ptr %msg_enable1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %msg_enable, ptr %msg_enable1, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ef4_ethtool_nway_reset(ptr noundef %net_dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio = getelementptr i8, ptr %net_dev, i32 4632
  %call1 = tail call i32 @mdio45_nway_restart(ptr noundef %mdio) #16
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ef4_ethtool_get_coalesce(ptr noundef %net_dev, ptr nocapture noundef writeonly %coalesce, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #1 align 64 {
entry:
  %tx_usecs = alloca i32, align 4
  %rx_usecs = alloca i32, align 4
  %rx_adaptive = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tx_usecs) #16
  %0 = ptrtoint ptr %tx_usecs to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tx_usecs, align 4, !annotation !108
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx_usecs) #16
  %1 = ptrtoint ptr %rx_usecs to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rx_usecs, align 4, !annotation !108
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rx_adaptive) #16
  %2 = ptrtoint ptr %rx_adaptive to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %rx_adaptive, align 1, !annotation !108
  call void @ef4_get_irq_moderation(ptr noundef %add.ptr.i, ptr noundef nonnull %tx_usecs, ptr noundef nonnull %rx_usecs, ptr noundef nonnull %rx_adaptive) #16
  %3 = ptrtoint ptr %tx_usecs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tx_usecs, align 4
  %tx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %coalesce, i32 0, i32 5
  %5 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %tx_coalesce_usecs, align 4
  %tx_coalesce_usecs_irq = getelementptr inbounds %struct.ethtool_coalesce, ptr %coalesce, i32 0, i32 7
  %6 = ptrtoint ptr %tx_coalesce_usecs_irq to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %4, ptr %tx_coalesce_usecs_irq, align 4
  %7 = ptrtoint ptr %rx_usecs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rx_usecs, align 4
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %coalesce, i32 0, i32 1
  %9 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %rx_coalesce_usecs, align 4
  %rx_coalesce_usecs_irq = getelementptr inbounds %struct.ethtool_coalesce, ptr %coalesce, i32 0, i32 3
  %10 = ptrtoint ptr %rx_coalesce_usecs_irq to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %8, ptr %rx_coalesce_usecs_irq, align 4
  %11 = ptrtoint ptr %rx_adaptive to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %rx_adaptive, align 1, !range !109
  %13 = zext i8 %12 to i32
  %use_adaptive_rx_coalesce = getelementptr inbounds %struct.ethtool_coalesce, ptr %coalesce, i32 0, i32 10
  %14 = ptrtoint ptr %use_adaptive_rx_coalesce to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %use_adaptive_rx_coalesce, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rx_adaptive) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_usecs) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tx_usecs) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ef4_ethtool_set_coalesce(ptr noundef %net_dev, ptr nocapture noundef readonly %coalesce, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #1 align 64 {
entry:
  %tx_usecs = alloca i32, align 4
  %rx_usecs = alloca i32, align 4
  %adaptive = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tx_usecs) #16
  %0 = ptrtoint ptr %tx_usecs to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tx_usecs, align 4, !annotation !108
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx_usecs) #16
  %1 = ptrtoint ptr %rx_usecs to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rx_usecs, align 4, !annotation !108
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %adaptive) #16
  %2 = ptrtoint ptr %adaptive to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %adaptive, align 1, !annotation !108
  call void @ef4_get_irq_moderation(ptr noundef %add.ptr.i, ptr noundef nonnull %tx_usecs, ptr noundef nonnull %rx_usecs, ptr noundef nonnull %adaptive) #16
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %coalesce, i32 0, i32 1
  %3 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rx_coalesce_usecs, align 4
  %5 = ptrtoint ptr %rx_usecs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rx_usecs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp.not = icmp eq i32 %4, %6
  br i1 %cmp.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %rx_coalesce_usecs_irq = getelementptr inbounds %struct.ethtool_coalesce, ptr %coalesce, i32 0, i32 3
  %7 = ptrtoint ptr %rx_coalesce_usecs_irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rx_coalesce_usecs_irq, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %storemerge = phi i32 [ %8, %if.else ], [ %4, %entry.if.end_crit_edge ]
  %9 = ptrtoint ptr %rx_usecs to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %storemerge, ptr %rx_usecs, align 4
  %use_adaptive_rx_coalesce = getelementptr inbounds %struct.ethtool_coalesce, ptr %coalesce, i32 0, i32 10
  %10 = ptrtoint ptr %use_adaptive_rx_coalesce to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %use_adaptive_rx_coalesce, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool = icmp ne i32 %11, 0
  %frombool = zext i1 %tobool to i8
  %12 = ptrtoint ptr %adaptive to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %frombool, ptr %adaptive, align 1
  %tx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %coalesce, i32 0, i32 5
  %13 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_coalesce_usecs, align 4
  %15 = ptrtoint ptr %tx_usecs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tx_usecs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp2 = icmp eq i32 %14, %16
  br i1 %cmp2, label %if.else9, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

if.else9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %tx_coalesce_usecs_irq = getelementptr inbounds %struct.ethtool_coalesce, ptr %coalesce, i32 0, i32 7
  %17 = ptrtoint ptr %tx_coalesce_usecs_irq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tx_coalesce_usecs_irq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %14)
  %cmp3 = icmp eq i32 %18, %14
  br label %if.end11

if.end11:                                         ; preds = %if.else9, %if.end.if.end11_crit_edge
  %19 = phi i1 [ %cmp3, %if.else9 ], [ false, %if.end.if.end11_crit_edge ]
  %storemerge51 = phi i32 [ %18, %if.else9 ], [ %14, %if.end.if.end11_crit_edge ]
  %20 = ptrtoint ptr %tx_usecs to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %storemerge51, ptr %tx_usecs, align 4
  %call14 = call i32 @ef4_init_irq_moderation(ptr noundef %add.ptr.i, i32 noundef %storemerge51, i32 noundef %storemerge, i1 noundef zeroext %tobool, i1 noundef zeroext %19) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15.not = icmp eq i32 %call14, 0
  br i1 %cmp15.not, label %if.end17, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end17:                                         ; preds = %if.end11
  %channel18 = getelementptr i8, ptr %net_dev, i32 2468
  %21 = ptrtoint ptr %channel18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %channel18, align 4
  %tobool19.not52 = icmp eq ptr %22, null
  br i1 %tobool19.not52, label %if.end17.cleanup_crit_edge, label %for.body.lr.ph

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end17
  %type = getelementptr i8, ptr %net_dev, i32 2348
  %n_channels = getelementptr i8, ptr %net_dev, i32 3668
  br label %for.body

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %for.body.lr.ph
  %channel.053 = phi ptr [ %22, %for.body.lr.ph ], [ %32, %cond.end.for.body_crit_edge ]
  %23 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %type, align 4
  %push_irq_moderation = getelementptr inbounds %struct.ef4_nic_type, ptr %24, i32 0, i32 25
  %25 = ptrtoint ptr %push_irq_moderation to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %push_irq_moderation, align 4
  call void %26(ptr noundef nonnull %channel.053) #16
  %channel20 = getelementptr inbounds %struct.ef4_channel, ptr %channel.053, i32 0, i32 1
  %27 = ptrtoint ptr %channel20 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %channel20, align 4
  %add = add i32 %28, 1
  %29 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %n_channels, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %30)
  %cmp21 = icmp ult i32 %add, %30
  br i1 %cmp21, label %cond.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cond.end:                                         ; preds = %for.body
  %arrayidx25 = getelementptr %struct.ef4_nic, ptr %add.ptr.i, i32 0, i32 23, i32 %add
  %31 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx25, align 4
  %tobool19.not = icmp eq ptr %32, null
  br i1 %tobool19.not, label %cond.end.cleanup_crit_edge, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup:                                          ; preds = %cond.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end11.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %if.end11.cleanup_crit_edge ], [ 0, %if.end17.cleanup_crit_edge ], [ 0, %cond.end.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %adaptive) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_usecs) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tx_usecs) #16
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ef4_ethtool_get_ringparam(ptr nocapture noundef readonly %net_dev, ptr nocapture noundef writeonly %ring, ptr nocapture noundef readnone %kernel_ring, ptr nocapture noundef readnone %extack) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 1
  %0 = ptrtoint ptr %rx_max_pending to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 4096, ptr %rx_max_pending, align 4
  %tx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 4
  %1 = ptrtoint ptr %tx_max_pending to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 4096, ptr %tx_max_pending, align 4
  %rxq_entries = getelementptr i8, ptr %net_dev, i32 3628
  %2 = ptrtoint ptr %rxq_entries to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rxq_entries, align 4
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 5
  %4 = ptrtoint ptr %rx_pending to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %rx_pending, align 4
  %txq_entries = getelementptr i8, ptr %net_dev, i32 3632
  %5 = ptrtoint ptr %txq_entries to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %txq_entries, align 16
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 8
  %7 = ptrtoint ptr %tx_pending to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %tx_pending, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ef4_ethtool_set_ringparam(ptr noundef %net_dev, ptr nocapture noundef readonly %ring, ptr nocapture noundef readnone %kernel_ring, ptr nocapture noundef readnone %extack) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %rx_mini_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 6
  %0 = ptrtoint ptr %rx_mini_pending to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_mini_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %rx_jumbo_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 7
  %2 = ptrtoint ptr %rx_jumbo_pending to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_jumbo_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %lor.lhs.false2, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 5
  %4 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %5)
  %cmp = icmp ugt i32 %5, 4096
  br i1 %cmp, label %lor.lhs.false2.cleanup_crit_edge, label %lor.lhs.false3

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false2
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 8
  %6 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %7)
  %cmp4 = icmp ugt i32 %7, 4096
  br i1 %cmp4, label %lor.lhs.false3.cleanup_crit_edge, label %if.end

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %5)
  %cmp6 = icmp ult i32 %5, 128
  br i1 %cmp6, label %do.body, label %if.end12

do.body:                                          ; preds = %if.end
  %msg_enable = getelementptr i8, ptr %net_dev, i32 2456
  %8 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_enable, align 8
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %do.body.cleanup_crit_edge, label %if.then9

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %net_dev10 = getelementptr i8, ptr %net_dev, i32 4572
  %10 = ptrtoint ptr %net_dev10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net_dev10, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %11, ptr noundef nonnull @.str.2, i32 noundef 128) #19
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %call14 = tail call i32 @ef4_tx_max_skb_descs(ptr noundef %add.ptr.i) #16
  %mul = shl i32 %call14, 1
  %12 = tail call i32 @llvm.umax.i32(i32 %7, i32 %mul)
  %13 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_pending, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp17.not = icmp eq i32 %12, %14
  br i1 %cmp17.not, label %if.end12.if.end28_crit_edge, label %do.body19

if.end12.if.end28_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end28

do.body19:                                        ; preds = %if.end12
  %msg_enable20 = getelementptr i8, ptr %net_dev, i32 2456
  %15 = ptrtoint ptr %msg_enable20 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %msg_enable20, align 8
  %and21 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %do.body19.if.end28_crit_edge, label %if.then23

do.body19.if.end28_crit_edge:                     ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end28

if.then23:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #18
  %net_dev24 = getelementptr i8, ptr %net_dev, i32 4572
  %17 = ptrtoint ptr %net_dev24 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %net_dev24, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %18, ptr noundef nonnull @.str.3, i32 noundef %12) #19
  br label %if.end28

if.end28:                                         ; preds = %if.then23, %do.body19.if.end28_crit_edge, %if.end12.if.end28_crit_edge
  %19 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rx_pending, align 4
  %call30 = tail call i32 @ef4_realloc_channels(ptr noundef %add.ptr.i, i32 noundef %20, i32 noundef %12) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.then9, %do.body.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call30, %if.end28 ], [ -22, %lor.lhs.false3.cleanup_crit_edge ], [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then9 ], [ -22, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ef4_ethtool_get_pauseparam(ptr nocapture noundef readonly %net_dev, ptr nocapture noundef writeonly %pause) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %wanted_fc = getelementptr i8, ptr %net_dev, i32 4712
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
define internal i32 @ef4_ethtool_set_pauseparam(ptr noundef %net_dev, ptr nocapture noundef readonly %pause) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %mac_lock = getelementptr i8, ptr %net_dev, i32 4432
  tail call void @mutex_lock_nested(ptr noundef %mac_lock, i32 noundef 0) #16
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
  %msg_enable = getelementptr i8, ptr %net_dev, i32 2456
  %6 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msg_enable, align 8
  %and11 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %do.body.out_crit_edge, label %do.body14

do.body.out_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

do.body14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_ethtool_set_pauseparam.__UNIQUE_ID_ddebug525, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_ethtool_set_pauseparam, %if.then19)) #16
          to label %out [label %if.then19], !srcloc !110

if.then19:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #18
  %net_dev20 = getelementptr i8, ptr %net_dev, i32 4572
  %8 = ptrtoint ptr %net_dev20 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net_dev20, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_ethtool_set_pauseparam.__UNIQUE_ID_ddebug525, ptr noundef %9, ptr noundef nonnull @.str.6) #16
  br label %out

if.end24:                                         ; preds = %entry
  %and26 = and i32 %conv6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end24.if.end56_crit_edge, label %land.lhs.true28

if.end24.if.end56_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end56

land.lhs.true28:                                  ; preds = %if.end24
  %link_advertising = getelementptr i8, ptr %net_dev, i32 4660
  %10 = ptrtoint ptr %link_advertising to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %link_advertising, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool29.not = icmp eq i32 %11, 0
  br i1 %tobool29.not, label %do.body31, label %land.lhs.true28.if.end56_crit_edge

land.lhs.true28.if.end56_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end56

do.body31:                                        ; preds = %land.lhs.true28
  %msg_enable32 = getelementptr i8, ptr %net_dev, i32 2456
  %12 = ptrtoint ptr %msg_enable32 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %msg_enable32, align 8
  %and33 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %do.body31.out_crit_edge, label %do.body36

do.body31.out_crit_edge:                          ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

do.body36:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_ethtool_set_pauseparam.__UNIQUE_ID_ddebug526, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_ethtool_set_pauseparam, %if.then48)) #16
          to label %out [label %if.then48], !srcloc !110

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #18
  %net_dev49 = getelementptr i8, ptr %net_dev, i32 4572
  %14 = ptrtoint ptr %net_dev49 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %net_dev49, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_ethtool_set_pauseparam.__UNIQUE_ID_ddebug526, ptr noundef %15, ptr noundef nonnull @.str.7) #16
  br label %out

if.end56:                                         ; preds = %land.lhs.true28.if.end56_crit_edge, %if.end24.if.end56_crit_edge
  %type = getelementptr i8, ptr %net_dev, i32 2348
  %16 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %type, align 4
  %prepare_enable_fc_tx = getelementptr inbounds %struct.ef4_nic_type, ptr %17, i32 0, i32 27
  %18 = ptrtoint ptr %prepare_enable_fc_tx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prepare_enable_fc_tx, align 4
  %tobool57.not = icmp eq ptr %19, null
  %brmerge = select i1 %tobool57.not, i1 true, i1 %tobool7.not
  br i1 %brmerge, label %if.end56.if.end70_crit_edge, label %land.lhs.true62

if.end56.if.end70_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end70

land.lhs.true62:                                  ; preds = %if.end56
  %wanted_fc63 = getelementptr i8, ptr %net_dev, i32 4712
  %20 = ptrtoint ptr %wanted_fc63 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %wanted_fc63, align 8
  %22 = and i8 %21, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool66.not = icmp eq i8 %22, 0
  br i1 %tobool66.not, label %if.then67, label %land.lhs.true62.if.end70_crit_edge

land.lhs.true62.if.end70_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end70

if.then67:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  tail call void %19(ptr noundef %add.ptr.i) #16
  br label %if.end70

if.end70:                                         ; preds = %if.then67, %land.lhs.true62.if.end70_crit_edge, %if.end56.if.end70_crit_edge
  %link_advertising71 = getelementptr i8, ptr %net_dev, i32 4660
  %23 = ptrtoint ptr %link_advertising71 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %link_advertising71, align 4
  %wanted_fc72 = getelementptr i8, ptr %net_dev, i32 4712
  %25 = ptrtoint ptr %wanted_fc72 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %wanted_fc72, align 8
  tail call void @ef4_link_set_wanted_fc(ptr noundef %add.ptr.i, i8 noundef zeroext %or5) #16
  %27 = ptrtoint ptr %link_advertising71 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %link_advertising71, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %24)
  %cmp.not = icmp eq i32 %28, %24
  br i1 %cmp.not, label %lor.lhs.false, label %if.end70.if.then80_crit_edge

if.end70.if.then80_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then80

lor.lhs.false:                                    ; preds = %if.end70
  %29 = ptrtoint ptr %wanted_fc72 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %wanted_fc72, align 8
  %xor123 = xor i8 %30, %26
  %31 = and i8 %xor123, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool79.not = icmp eq i8 %31, 0
  br i1 %tobool79.not, label %lor.lhs.false.if.end94_crit_edge, label %lor.lhs.false.if.then80_crit_edge

lor.lhs.false.if.then80_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then80

lor.lhs.false.if.end94_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end94

if.then80:                                        ; preds = %lor.lhs.false.if.then80_crit_edge, %if.end70.if.then80_crit_edge
  %phy_op = getelementptr i8, ptr %net_dev, i32 4624
  %32 = ptrtoint ptr %phy_op to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %phy_op, align 16
  %reconfigure = getelementptr inbounds %struct.ef4_phy_operations, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %reconfigure to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reconfigure, align 4
  %call81 = tail call i32 %35(ptr noundef %add.ptr.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.then80.if.end94_crit_edge, label %do.body84

if.then80.if.end94_crit_edge:                     ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end94

do.body84:                                        ; preds = %if.then80
  %msg_enable85 = getelementptr i8, ptr %net_dev, i32 2456
  %36 = ptrtoint ptr %msg_enable85 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %msg_enable85, align 8
  %and86 = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %do.body84.out_crit_edge, label %if.then88

do.body84.out_crit_edge:                          ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then88:                                        ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #18
  %net_dev89 = getelementptr i8, ptr %net_dev, i32 4572
  %38 = ptrtoint ptr %net_dev89 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %net_dev89, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %39, ptr noundef nonnull @.str.8) #19
  br label %out

if.end94:                                         ; preds = %if.then80.if.end94_crit_edge, %lor.lhs.false.if.end94_crit_edge
  tail call void @ef4_mac_reconfigure(ptr noundef %add.ptr.i) #16
  br label %out

out:                                              ; preds = %if.end94, %if.then88, %do.body84.out_crit_edge, %if.then48, %do.body36, %do.body31.out_crit_edge, %if.then19, %do.body14, %do.body.out_crit_edge
  %rc.1 = phi i32 [ %call81, %if.then88 ], [ %call81, %do.body84.out_crit_edge ], [ 0, %if.end94 ], [ -22, %if.then19 ], [ -22, %do.body.out_crit_edge ], [ -22, %if.then48 ], [ -22, %do.body31.out_crit_edge ], [ -22, %do.body14 ], [ -22, %do.body36 ]
  tail call void @mutex_unlock(ptr noundef %mac_lock) #16
  ret i32 %rc.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ef4_ethtool_self_test(ptr noundef %net_dev, ptr nocapture noundef %test, ptr noundef %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1076) #20
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.if.then54_crit_edge, label %if.end

entry.if.then54_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then54

if.end:                                           ; preds = %entry
  %state = getelementptr i8, ptr %net_dev, i32 2460
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp.not = icmp eq i32 %2, 1
  br i1 %cmp.not, label %do.body, label %if.end.fail_crit_edge

if.end.fail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %fail

do.body:                                          ; preds = %if.end
  %msg_enable = getelementptr i8, ptr %net_dev, i32 2456
  %3 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %msg_enable, align 8
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %do.body.do.end_crit_edge, label %if.then5

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %net_dev6 = getelementptr i8, ptr %net_dev, i32 4572
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
  %cond = select i1 %tobool8.not, ptr @.str.11, ptr @.str.10
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %6, ptr noundef nonnull @.str.9, ptr noundef nonnull %cond) #19
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body.do.end_crit_edge
  %net_dev10 = getelementptr i8, ptr %net_dev, i32 4572
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
  %call17 = tail call i32 @dev_open(ptr noundef %10, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then34, label %do.body20

do.body20:                                        ; preds = %if.then15
  %13 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %msg_enable, align 8
  %and22 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %do.body20.fail_crit_edge, label %if.then24

do.body20.fail_crit_edge:                         ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #18
  br label %fail

if.then24:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #18
  %15 = ptrtoint ptr %net_dev10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %net_dev10, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %16, ptr noundef nonnull @.str.12) #19
  br label %fail

if.end30:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %flags31 = getelementptr inbounds %struct.ethtool_test, ptr %test, i32 0, i32 1
  %17 = ptrtoint ptr %flags31 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags31, align 4
  %call32 = tail call i32 @ef4_selftest(ptr noundef %add.ptr.i, ptr noundef nonnull %call7.i.i, i32 noundef %18) #16
  br label %do.body37

if.then34:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #18
  %flags3177 = getelementptr inbounds %struct.ethtool_test, ptr %test, i32 0, i32 1
  %19 = ptrtoint ptr %flags3177 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags3177, align 4
  %call3278 = tail call i32 @ef4_selftest(ptr noundef %add.ptr.i, ptr noundef nonnull %call7.i.i, i32 noundef %20) #16
  %21 = ptrtoint ptr %net_dev10 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %net_dev10, align 4
  tail call void @dev_close(ptr noundef %22) #16
  br label %do.body37

do.body37:                                        ; preds = %if.then34, %if.end30
  %call3281 = phi i32 [ %call32, %if.end30 ], [ %call3278, %if.then34 ]
  %flags3179 = phi ptr [ %flags31, %if.end30 ], [ %flags3177, %if.then34 ]
  %23 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %msg_enable, align 8
  %and39 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %do.body37.fail_crit_edge, label %if.then41

do.body37.fail_crit_edge:                         ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #18
  br label %fail

if.then41:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #18
  %25 = ptrtoint ptr %net_dev10 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %net_dev10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3281)
  %cmp43 = icmp eq i32 %call3281, 0
  %cond44 = select i1 %cmp43, ptr @.str.14, ptr @.str.15
  %27 = ptrtoint ptr %flags3179 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags3179, align 4
  %and46 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  %cond48 = select i1 %tobool47.not, ptr @.str.11, ptr @.str.10
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %26, ptr noundef nonnull @.str.13, ptr noundef nonnull %cond44, ptr noundef nonnull %cond48) #19
  br label %fail

fail:                                             ; preds = %if.then41, %do.body37.fail_crit_edge, %if.then24, %do.body20.fail_crit_edge, %if.end.fail_crit_edge
  %rc.0 = phi i32 [ %call3281, %if.then41 ], [ %call3281, %do.body37.fail_crit_edge ], [ -16, %if.then24 ], [ -16, %do.body20.fail_crit_edge ], [ -16, %if.end.fail_crit_edge ]
  %call52 = tail call fastcc i32 @ef4_ethtool_fill_self_tests(ptr noundef %add.ptr.i, ptr noundef nonnull %call7.i.i, ptr noundef null, ptr noundef %data)
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %tobool53.not = icmp eq i32 %rc.0, 0
  br i1 %tobool53.not, label %fail.if.end56_crit_edge, label %fail.if.then54_crit_edge

fail.if.then54_crit_edge:                         ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then54

fail.if.end56_crit_edge:                          ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #18
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ef4_ethtool_get_strings(ptr noundef %net_dev, i32 noundef %string_set, ptr noundef %strings) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %0 = zext i32 %string_set to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %string_set, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb9
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %type = getelementptr i8, ptr %net_dev, i32 2348
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %type, align 4
  %describe_stats = getelementptr inbounds %struct.ef4_nic_type, ptr %2, i32 0, i32 19
  %3 = ptrtoint ptr %describe_stats to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %describe_stats, align 4
  %call1 = tail call i32 %4(ptr noundef %add.ptr.i, ptr noundef %strings) #16
  %mul = shl i32 %call1, 5
  %add.ptr = getelementptr i8, ptr %strings, i32 %mul
  %call4 = tail call i32 @strlcpy(ptr noundef %add.ptr, ptr noundef nonnull @.str.34, i32 noundef 32) #16
  %add.ptr3.1 = getelementptr i8, ptr %add.ptr, i32 32
  %call4.1 = tail call i32 @strlcpy(ptr noundef %add.ptr3.1, ptr noundef nonnull @.str.35, i32 noundef 32) #16
  %add.ptr3.2 = getelementptr i8, ptr %add.ptr, i32 64
  %call4.2 = tail call i32 @strlcpy(ptr noundef %add.ptr3.2, ptr noundef nonnull @.str.36, i32 noundef 32) #16
  %add.ptr3.3 = getelementptr i8, ptr %add.ptr, i32 96
  %call4.3 = tail call i32 @strlcpy(ptr noundef %add.ptr3.3, ptr noundef nonnull @.str.37, i32 noundef 32) #16
  %add.ptr3.4 = getelementptr i8, ptr %add.ptr, i32 128
  %call4.4 = tail call i32 @strlcpy(ptr noundef %add.ptr3.4, ptr noundef nonnull @.str.38, i32 noundef 32) #16
  %add.ptr3.5 = getelementptr i8, ptr %add.ptr, i32 160
  %call4.5 = tail call i32 @strlcpy(ptr noundef %add.ptr3.5, ptr noundef nonnull @.str.39, i32 noundef 32) #16
  %add.ptr3.6 = getelementptr i8, ptr %add.ptr, i32 192
  %call4.6 = tail call i32 @strlcpy(ptr noundef %add.ptr3.6, ptr noundef nonnull @.str.40, i32 noundef 32) #16
  %add.ptr3.7 = getelementptr i8, ptr %add.ptr, i32 224
  %call4.7 = tail call i32 @strlcpy(ptr noundef %add.ptr3.7, ptr noundef nonnull @.str.41, i32 noundef 32) #16
  %add.ptr3.8 = getelementptr i8, ptr %add.ptr, i32 256
  %call4.8 = tail call i32 @strlcpy(ptr noundef %add.ptr3.8, ptr noundef nonnull @.str.42, i32 noundef 32) #16
  %add.ptr3.9 = getelementptr i8, ptr %add.ptr, i32 288
  %call4.9 = tail call i32 @strlcpy(ptr noundef %add.ptr3.9, ptr noundef nonnull @.str.43, i32 noundef 32) #16
  %add.ptr3.10 = getelementptr i8, ptr %add.ptr, i32 320
  %call4.10 = tail call i32 @strlcpy(ptr noundef %add.ptr3.10, ptr noundef nonnull @.str.44, i32 noundef 32) #16
  %add.ptr5 = getelementptr i8, ptr %add.ptr, i32 352
  %call6 = tail call fastcc i32 @ef4_describe_per_queue_stats(ptr noundef %add.ptr.i, ptr noundef %add.ptr5)
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call10 = tail call fastcc i32 @ef4_ethtool_fill_self_tests(ptr noundef %add.ptr.i, ptr noundef null, ptr noundef %strings, ptr noundef null)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ef4_ethtool_phys_id(ptr noundef %net_dev, i32 noundef %state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %0 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %state, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb1
    i32 1, label %entry.cleanup_crit_edge
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  %mode.0 = phi i32 [ 0, %sw.bb1 ], [ 1, %sw.bb ], [ 2, %entry.sw.epilog_crit_edge ]
  %type = getelementptr i8, ptr %net_dev, i32 2348
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %type, align 4
  %set_id_led = getelementptr inbounds %struct.ef4_nic_type, ptr %2, i32 0, i32 24
  %3 = ptrtoint ptr %set_id_led to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %set_id_led, align 8
  tail call void %4(ptr noundef %add.ptr.i, i32 noundef %mode.0) #16
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ %state, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ef4_ethtool_get_stats(ptr noundef %net_dev, ptr nocapture noundef readnone %stats, ptr noundef %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %stats_lock = getelementptr i8, ptr %net_dev, i32 5140
  tail call void @_raw_spin_lock_bh(ptr noundef %stats_lock) #16
  %type = getelementptr i8, ptr %net_dev, i32 2348
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 4
  %update_stats = getelementptr inbounds %struct.ef4_nic_type, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %update_stats to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %update_stats, align 8
  %call1 = tail call i32 %3(ptr noundef %add.ptr.i, ptr noundef %data, ptr noundef null) #16
  %add.ptr = getelementptr i64, ptr %data, i32 %call1
  %channel25 = getelementptr i8, ptr %net_dev, i32 2468
  %n_channels50 = getelementptr i8, ptr %net_dev, i32 3668
  br label %for.body

for.body:                                         ; preds = %for.inc61.for.body_crit_edge, %entry
  %i.0246 = phi i32 [ 0, %entry ], [ %inc, %for.inc61.for.body_crit_edge ]
  %source = getelementptr [11 x %struct.ef4_sw_stat_desc], ptr @ef4_sw_stat_desc, i32 0, i32 %i.0246, i32 1
  %4 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %source, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %5, label %for.body.for.inc61_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
    i32 2, label %sw.bb23
  ]

for.body.for.inc61_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc61

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %get_stat = getelementptr [11 x %struct.ef4_sw_stat_desc], ptr @ef4_sw_stat_desc, i32 0, i32 %i.0246, i32 3
  %7 = ptrtoint ptr %get_stat to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %get_stat, align 4
  %offset = getelementptr [11 x %struct.ef4_sw_stat_desc], ptr @ef4_sw_stat_desc, i32 0, i32 %i.0246, i32 2
  %9 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %offset, align 4
  %add.ptr2 = getelementptr i8, ptr %add.ptr.i, i32 %10
  %call3 = tail call i64 %8(ptr noundef %add.ptr2) #16
  %arrayidx4 = getelementptr i64, ptr %add.ptr, i32 %i.0246
  %11 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %call3, ptr %arrayidx4, align 8
  br label %for.inc61

sw.bb5:                                           ; preds = %for.body
  %arrayidx6 = getelementptr i64, ptr %add.ptr, i32 %i.0246
  %12 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 0, ptr %arrayidx6, align 8
  %13 = ptrtoint ptr %channel25 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %channel25, align 4
  %tobool.not244 = icmp eq ptr %14, null
  br i1 %tobool.not244, label %sw.bb5.for.inc61_crit_edge, label %for.body10.lr.ph

sw.bb5.for.inc61_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc61

for.body10.lr.ph:                                 ; preds = %sw.bb5
  %get_stat11 = getelementptr [11 x %struct.ef4_sw_stat_desc], ptr @ef4_sw_stat_desc, i32 0, i32 %i.0246, i32 3
  %15 = ptrtoint ptr %get_stat11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %get_stat11, align 4
  %offset12 = getelementptr [11 x %struct.ef4_sw_stat_desc], ptr @ef4_sw_stat_desc, i32 0, i32 %i.0246, i32 2
  %17 = ptrtoint ptr %offset12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %offset12, align 4
  br label %for.body10

for.body10:                                       ; preds = %cond.end.for.body10_crit_edge, %for.body10.lr.ph
  %channel.0245 = phi ptr [ %14, %for.body10.lr.ph ], [ %26, %cond.end.for.body10_crit_edge ]
  %add.ptr13 = getelementptr i8, ptr %channel.0245, i32 %18
  %call14 = tail call i64 %16(ptr noundef %add.ptr13) #16
  %19 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %arrayidx6, align 8
  %add = add i64 %20, %call14
  store i64 %add, ptr %arrayidx6, align 8
  %channel16 = getelementptr inbounds %struct.ef4_channel, ptr %channel.0245, i32 0, i32 1
  %21 = ptrtoint ptr %channel16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %channel16, align 4
  %add17 = add i32 %22, 1
  %23 = ptrtoint ptr %n_channels50 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %n_channels50, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add17, i32 %24)
  %cmp18 = icmp ult i32 %add17, %24
  br i1 %cmp18, label %cond.end, label %for.body10.for.inc61_crit_edge

for.body10.for.inc61_crit_edge:                   ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc61

cond.end:                                         ; preds = %for.body10
  %arrayidx22 = getelementptr %struct.ef4_nic, ptr %add.ptr.i, i32 0, i32 23, i32 %add17
  %25 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx22, align 4
  %tobool.not = icmp eq ptr %26, null
  br i1 %tobool.not, label %cond.end.for.inc61_crit_edge, label %cond.end.for.body10_crit_edge

cond.end.for.body10_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body10

cond.end.for.inc61_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc61

sw.bb23:                                          ; preds = %for.body
  %arrayidx24 = getelementptr i64, ptr %add.ptr, i32 %i.0246
  %27 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 0, ptr %arrayidx24, align 8
  %28 = ptrtoint ptr %channel25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %channel25, align 4
  %tobool28.not242 = icmp eq ptr %29, null
  br i1 %tobool28.not242, label %sw.bb23.for.inc61_crit_edge, label %for.body29.lr.ph

sw.bb23.for.inc61_crit_edge:                      ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc61

for.body29.lr.ph:                                 ; preds = %sw.bb23
  %get_stat39 = getelementptr [11 x %struct.ef4_sw_stat_desc], ptr @ef4_sw_stat_desc, i32 0, i32 %i.0246, i32 3
  %offset40 = getelementptr [11 x %struct.ef4_sw_stat_desc], ptr @ef4_sw_stat_desc, i32 0, i32 %i.0246, i32 2
  br label %for.body29

for.body29:                                       ; preds = %cond.end58.for.body29_crit_edge, %for.body29.lr.ph
  %channel.1243 = phi ptr [ %29, %for.body29.lr.ph ], [ %57, %cond.end58.for.body29_crit_edge ]
  %channel1.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.1243, i32 0, i32 1
  %30 = ptrtoint ptr %channel1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %channel1.i, align 4
  %32 = ptrtoint ptr %channel.1243 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %channel.1243, align 128
  %tx_channel_offset.i = getelementptr inbounds %struct.ef4_nic, ptr %33, i32 0, i32 39
  %34 = ptrtoint ptr %tx_channel_offset.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tx_channel_offset.i, align 32
  %sub.i = sub i32 %31, %35
  %n_tx_channels.i = getelementptr inbounds %struct.ef4_nic, ptr %33, i32 0, i32 40
  %36 = ptrtoint ptr %n_tx_channels.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %n_tx_channels.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %37)
  %cmp.i = icmp ult i32 %sub.i, %37
  br i1 %cmp.i, label %if.else, label %for.body29.for.inc47_crit_edge

for.body29.for.inc47_crit_edge:                   ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc47

if.else:                                          ; preds = %for.body29
  %tx_queue31 = getelementptr inbounds %struct.ef4_channel, ptr %channel.1243, i32 0, i32 32
  %add.ptr35 = getelementptr %struct.ef4_channel, ptr %channel.1243, i32 1
  %cmp36239 = icmp ult ptr %tx_queue31, %add.ptr35
  br i1 %cmp36239, label %if.else.land.rhs_crit_edge, label %if.else.for.inc47_crit_edge

if.else.for.inc47_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc47

if.else.land.rhs_crit_edge:                       ; preds = %if.else
  br label %land.rhs

land.rhs:                                         ; preds = %for.body38.land.rhs_crit_edge, %if.else.land.rhs_crit_edge
  %tx_queue.0240 = phi ptr [ %incdec.ptr, %for.body38.land.rhs_crit_edge ], [ %tx_queue31, %if.else.land.rhs_crit_edge ]
  %38 = ptrtoint ptr %tx_queue.0240 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tx_queue.0240, align 128
  %net_dev.i = getelementptr inbounds %struct.ef4_nic, ptr %39, i32 0, i32 69
  %40 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %net_dev.i, align 4
  %num_tc.i = getelementptr inbounds %struct.net_device, ptr %41, i32 0, i32 140
  %42 = ptrtoint ptr %num_tc.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %num_tc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %43)
  %cmp.i216 = icmp slt i16 %43, 2
  br i1 %cmp.i216, label %ef4_tx_queue_used.exit, label %land.rhs.for.body38_crit_edge

land.rhs.for.body38_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body38

ef4_tx_queue_used.exit:                           ; preds = %land.rhs
  %queue.i = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue.0240, i32 0, i32 1
  %44 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %queue.i, align 4
  %and.i = and i32 %45, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp eq i32 %and.i, 0
  br i1 %tobool.i, label %ef4_tx_queue_used.exit.for.body38_crit_edge, label %ef4_tx_queue_used.exit.for.inc47_crit_edge

ef4_tx_queue_used.exit.for.inc47_crit_edge:       ; preds = %ef4_tx_queue_used.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc47

ef4_tx_queue_used.exit.for.body38_crit_edge:      ; preds = %ef4_tx_queue_used.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body38

for.body38:                                       ; preds = %ef4_tx_queue_used.exit.for.body38_crit_edge, %land.rhs.for.body38_crit_edge
  %46 = ptrtoint ptr %get_stat39 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %get_stat39, align 4
  %48 = ptrtoint ptr %offset40 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %offset40, align 4
  %add.ptr41 = getelementptr i8, ptr %tx_queue.0240, i32 %49
  %call42 = tail call i64 %47(ptr noundef %add.ptr41) #16
  %50 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %arrayidx24, align 8
  %add44 = add i64 %51, %call42
  store i64 %add44, ptr %arrayidx24, align 8
  %incdec.ptr = getelementptr %struct.ef4_tx_queue, ptr %tx_queue.0240, i32 1
  %cmp36 = icmp ult ptr %incdec.ptr, %add.ptr35
  br i1 %cmp36, label %for.body38.land.rhs_crit_edge, label %for.body38.for.inc47_crit_edge

for.body38.for.inc47_crit_edge:                   ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc47

for.body38.land.rhs_crit_edge:                    ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.rhs

for.inc47:                                        ; preds = %for.body38.for.inc47_crit_edge, %ef4_tx_queue_used.exit.for.inc47_crit_edge, %if.else.for.inc47_crit_edge, %for.body29.for.inc47_crit_edge
  %52 = ptrtoint ptr %channel1.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %channel1.i, align 4
  %add49 = add i32 %53, 1
  %54 = ptrtoint ptr %n_channels50 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %n_channels50, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add49, i32 %55)
  %cmp51 = icmp ult i32 %add49, %55
  br i1 %cmp51, label %cond.end58, label %for.inc47.for.inc61_crit_edge

for.inc47.for.inc61_crit_edge:                    ; preds = %for.inc47
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc61

cond.end58:                                       ; preds = %for.inc47
  %arrayidx56 = getelementptr %struct.ef4_nic, ptr %add.ptr.i, i32 0, i32 23, i32 %add49
  %56 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx56, align 4
  %tobool28.not = icmp eq ptr %57, null
  br i1 %tobool28.not, label %cond.end58.for.inc61_crit_edge, label %cond.end58.for.body29_crit_edge

cond.end58.for.body29_crit_edge:                  ; preds = %cond.end58
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body29

cond.end58.for.inc61_crit_edge:                   ; preds = %cond.end58
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc61

for.inc61:                                        ; preds = %cond.end58.for.inc61_crit_edge, %for.inc47.for.inc61_crit_edge, %sw.bb23.for.inc61_crit_edge, %cond.end.for.inc61_crit_edge, %for.body10.for.inc61_crit_edge, %sw.bb5.for.inc61_crit_edge, %sw.bb, %for.body.for.inc61_crit_edge
  %inc = add nuw nsw i32 %i.0246, 1
  %exitcond.not = icmp eq i32 %inc, 11
  br i1 %exitcond.not, label %for.end62, label %for.inc61.for.body_crit_edge

for.inc61.for.body_crit_edge:                     ; preds = %for.inc61
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end62:                                        ; preds = %for.inc61
  tail call void @_raw_spin_unlock_bh(ptr noundef %stats_lock) #16
  %58 = ptrtoint ptr %channel25 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %channel25, align 4
  %tobool68.not253 = icmp eq ptr %59, null
  br i1 %tobool68.not253, label %for.end62.for.end143_crit_edge, label %for.body69.preheader

for.end62.for.end143_crit_edge:                   ; preds = %for.end62
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end143

for.body69.preheader:                             ; preds = %for.end62
  %add.ptr63 = getelementptr i64, ptr %add.ptr, i32 11
  br label %for.body69

for.body69:                                       ; preds = %cond.end105.for.body69_crit_edge, %for.body69.preheader
  %channel.2255 = phi ptr [ %94, %cond.end105.for.body69_crit_edge ], [ %59, %for.body69.preheader ]
  %data.addr.0254 = phi ptr [ %data.addr.1, %cond.end105.for.body69_crit_edge ], [ %add.ptr63, %for.body69.preheader ]
  %channel1.i217 = getelementptr inbounds %struct.ef4_channel, ptr %channel.2255, i32 0, i32 1
  %60 = ptrtoint ptr %channel1.i217 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %channel1.i217, align 4
  %62 = ptrtoint ptr %channel.2255 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %channel.2255, align 128
  %tx_channel_offset.i218 = getelementptr inbounds %struct.ef4_nic, ptr %63, i32 0, i32 39
  %64 = ptrtoint ptr %tx_channel_offset.i218 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %tx_channel_offset.i218, align 32
  %sub.i219 = sub i32 %61, %65
  %n_tx_channels.i220 = getelementptr inbounds %struct.ef4_nic, ptr %63, i32 0, i32 40
  %66 = ptrtoint ptr %n_tx_channels.i220 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %n_tx_channels.i220, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i219, i32 %67)
  %cmp.i221 = icmp ult i32 %sub.i219, %67
  br i1 %cmp.i221, label %if.then71, label %for.body69.for.inc93_crit_edge

for.body69.for.inc93_crit_edge:                   ; preds = %for.body69
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc93

if.then71:                                        ; preds = %for.body69
  %68 = ptrtoint ptr %data.addr.0254 to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 0, ptr %data.addr.0254, align 8
  %69 = ptrtoint ptr %channel1.i217 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %channel1.i217, align 4
  %71 = ptrtoint ptr %channel.2255 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %channel.2255, align 128
  %tx_channel_offset.i223 = getelementptr inbounds %struct.ef4_nic, ptr %72, i32 0, i32 39
  %73 = ptrtoint ptr %tx_channel_offset.i223 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %tx_channel_offset.i223, align 32
  %sub.i224 = sub i32 %70, %74
  %n_tx_channels.i225 = getelementptr inbounds %struct.ef4_nic, ptr %72, i32 0, i32 40
  %75 = ptrtoint ptr %n_tx_channels.i225 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %n_tx_channels.i225, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i224, i32 %76)
  %cmp.i226 = icmp ult i32 %sub.i224, %76
  br i1 %cmp.i226, label %if.else74, label %if.then71.if.end90_crit_edge

if.then71.if.end90_crit_edge:                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end90

if.else74:                                        ; preds = %if.then71
  %tx_queue75 = getelementptr inbounds %struct.ef4_channel, ptr %channel.2255, i32 0, i32 32
  %add.ptr80 = getelementptr %struct.ef4_channel, ptr %channel.2255, i32 1
  %cmp81250 = icmp ult ptr %tx_queue75, %add.ptr80
  br i1 %cmp81250, label %if.else74.land.rhs82_crit_edge, label %if.else74.if.end90_crit_edge

if.else74.if.end90_crit_edge:                     ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end90

if.else74.land.rhs82_crit_edge:                   ; preds = %if.else74
  br label %land.rhs82

land.rhs82:                                       ; preds = %for.body85.land.rhs82_crit_edge, %if.else74.land.rhs82_crit_edge
  %tx_queue.1251 = phi ptr [ %incdec.ptr88, %for.body85.land.rhs82_crit_edge ], [ %tx_queue75, %if.else74.land.rhs82_crit_edge ]
  %77 = ptrtoint ptr %tx_queue.1251 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %tx_queue.1251, align 128
  %net_dev.i227 = getelementptr inbounds %struct.ef4_nic, ptr %78, i32 0, i32 69
  %79 = ptrtoint ptr %net_dev.i227 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %net_dev.i227, align 4
  %num_tc.i228 = getelementptr inbounds %struct.net_device, ptr %80, i32 0, i32 140
  %81 = ptrtoint ptr %num_tc.i228 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %num_tc.i228, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %82)
  %cmp.i229 = icmp slt i16 %82, 2
  br i1 %cmp.i229, label %ef4_tx_queue_used.exit234, label %land.rhs82.for.body85_crit_edge

land.rhs82.for.body85_crit_edge:                  ; preds = %land.rhs82
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body85

ef4_tx_queue_used.exit234:                        ; preds = %land.rhs82
  %queue.i230 = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue.1251, i32 0, i32 1
  %83 = ptrtoint ptr %queue.i230 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %queue.i230, align 4
  %and.i231 = and i32 %84, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i231)
  %tobool.i232 = icmp eq i32 %and.i231, 0
  br i1 %tobool.i232, label %ef4_tx_queue_used.exit234.for.body85_crit_edge, label %ef4_tx_queue_used.exit234.if.end90_crit_edge

ef4_tx_queue_used.exit234.if.end90_crit_edge:     ; preds = %ef4_tx_queue_used.exit234
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end90

ef4_tx_queue_used.exit234.for.body85_crit_edge:   ; preds = %ef4_tx_queue_used.exit234
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body85

for.body85:                                       ; preds = %ef4_tx_queue_used.exit234.for.body85_crit_edge, %land.rhs82.for.body85_crit_edge
  %tx_packets = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue.1251, i32 0, i32 24
  %85 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %tx_packets, align 8
  %conv = zext i32 %86 to i64
  %87 = ptrtoint ptr %data.addr.0254 to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %data.addr.0254, align 8
  %add86 = add i64 %88, %conv
  store i64 %add86, ptr %data.addr.0254, align 8
  %incdec.ptr88 = getelementptr %struct.ef4_tx_queue, ptr %tx_queue.1251, i32 1
  %cmp81 = icmp ult ptr %incdec.ptr88, %add.ptr80
  br i1 %cmp81, label %for.body85.land.rhs82_crit_edge, label %for.body85.if.end90_crit_edge

for.body85.if.end90_crit_edge:                    ; preds = %for.body85
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end90

for.body85.land.rhs82_crit_edge:                  ; preds = %for.body85
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.rhs82

if.end90:                                         ; preds = %for.body85.if.end90_crit_edge, %ef4_tx_queue_used.exit234.if.end90_crit_edge, %if.else74.if.end90_crit_edge, %if.then71.if.end90_crit_edge
  %incdec.ptr91 = getelementptr i64, ptr %data.addr.0254, i32 1
  br label %for.inc93

for.inc93:                                        ; preds = %if.end90, %for.body69.for.inc93_crit_edge
  %data.addr.1 = phi ptr [ %incdec.ptr91, %if.end90 ], [ %data.addr.0254, %for.body69.for.inc93_crit_edge ]
  %89 = ptrtoint ptr %channel1.i217 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %channel1.i217, align 4
  %add95 = add i32 %90, 1
  %91 = ptrtoint ptr %n_channels50 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %n_channels50, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add95, i32 %92)
  %cmp97 = icmp ult i32 %add95, %92
  br i1 %cmp97, label %cond.end105, label %for.inc93.for.end107_crit_edge

for.inc93.for.end107_crit_edge:                   ; preds = %for.inc93
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end107

cond.end105:                                      ; preds = %for.inc93
  %arrayidx103 = getelementptr %struct.ef4_nic, ptr %add.ptr.i, i32 0, i32 23, i32 %add95
  %93 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx103, align 4
  %tobool68.not = icmp eq ptr %94, null
  br i1 %tobool68.not, label %cond.end105.for.end107_crit_edge, label %cond.end105.for.body69_crit_edge

cond.end105.for.body69_crit_edge:                 ; preds = %cond.end105
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body69

cond.end105.for.end107_crit_edge:                 ; preds = %cond.end105
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end107

for.end107:                                       ; preds = %cond.end105.for.end107_crit_edge, %for.inc93.for.end107_crit_edge
  %95 = ptrtoint ptr %channel25 to i32
  call void @__asan_load4_noabort(i32 %95)
  %.pr = load ptr, ptr %channel25, align 4
  %tobool111.not258 = icmp eq ptr %.pr, null
  br i1 %tobool111.not258, label %for.end107.for.end143_crit_edge, label %for.end107.for.body112_crit_edge

for.end107.for.body112_crit_edge:                 ; preds = %for.end107
  br label %for.body112

for.end107.for.end143_crit_edge:                  ; preds = %for.end107
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end143

for.body112:                                      ; preds = %cond.end141.for.body112_crit_edge, %for.end107.for.body112_crit_edge
  %channel.3260 = phi ptr [ %110, %cond.end141.for.body112_crit_edge ], [ %.pr, %for.end107.for.body112_crit_edge ]
  %data.addr.2259 = phi ptr [ %data.addr.3, %cond.end141.for.body112_crit_edge ], [ %data.addr.1, %for.end107.for.body112_crit_edge ]
  %core_index.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.3260, i32 0, i32 30, i32 1
  %96 = ptrtoint ptr %core_index.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %core_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %97)
  %cmp.i235 = icmp sgt i32 %97, -1
  br i1 %cmp.i235, label %if.then114, label %for.body112.for.inc129_crit_edge

for.body112.for.inc129_crit_edge:                 ; preds = %for.body112
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc129

if.then114:                                       ; preds = %for.body112
  %98 = ptrtoint ptr %data.addr.2259 to i32
  call void @__asan_store8_noabort(i32 %98)
  store i64 0, ptr %data.addr.2259, align 8
  %99 = ptrtoint ptr %core_index.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %core_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp.i237 = icmp slt i32 %100, 0
  %rx_queue118 = getelementptr inbounds %struct.ef4_channel, ptr %channel.3260, i32 0, i32 30
  %tobool120.not256 = icmp eq ptr %rx_queue118, null
  %or.cond = select i1 %cmp.i237, i1 true, i1 %tobool120.not256
  br i1 %or.cond, label %if.then114.if.end126_crit_edge, label %for.body121

if.then114.if.end126_crit_edge:                   ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end126

for.body121:                                      ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #18
  %rx_packets = getelementptr inbounds %struct.ef4_channel, ptr %channel.3260, i32 0, i32 30, i32 26
  %101 = ptrtoint ptr %rx_packets to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %rx_packets, align 4
  %conv122 = zext i32 %102 to i64
  %103 = ptrtoint ptr %data.addr.2259 to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %data.addr.2259, align 8
  %add123 = add i64 %104, %conv122
  store i64 %add123, ptr %data.addr.2259, align 8
  br label %if.end126

if.end126:                                        ; preds = %for.body121, %if.then114.if.end126_crit_edge
  %incdec.ptr127 = getelementptr i64, ptr %data.addr.2259, i32 1
  br label %for.inc129

for.inc129:                                       ; preds = %if.end126, %for.body112.for.inc129_crit_edge
  %data.addr.3 = phi ptr [ %incdec.ptr127, %if.end126 ], [ %data.addr.2259, %for.body112.for.inc129_crit_edge ]
  %channel130 = getelementptr inbounds %struct.ef4_channel, ptr %channel.3260, i32 0, i32 1
  %105 = ptrtoint ptr %channel130 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %channel130, align 4
  %add131 = add i32 %106, 1
  %107 = ptrtoint ptr %n_channels50 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %n_channels50, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add131, i32 %108)
  %cmp133 = icmp ult i32 %add131, %108
  br i1 %cmp133, label %cond.end141, label %for.inc129.for.end143_crit_edge

for.inc129.for.end143_crit_edge:                  ; preds = %for.inc129
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end143

cond.end141:                                      ; preds = %for.inc129
  %arrayidx139 = getelementptr %struct.ef4_nic, ptr %add.ptr.i, i32 0, i32 23, i32 %add131
  %109 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %arrayidx139, align 4
  %tobool111.not = icmp eq ptr %110, null
  br i1 %tobool111.not, label %cond.end141.for.end143_crit_edge, label %cond.end141.for.body112_crit_edge

cond.end141.for.body112_crit_edge:                ; preds = %cond.end141
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body112

cond.end141.for.end143_crit_edge:                 ; preds = %cond.end141
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end143

for.end143:                                       ; preds = %cond.end141.for.end143_crit_edge, %for.inc129.for.end143_crit_edge, %for.end107.for.end143_crit_edge, %for.end62.for.end143_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ef4_ethtool_get_sset_count(ptr noundef %net_dev, i32 noundef %string_set) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %0 = zext i32 %string_set to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %string_set, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb4
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %type = getelementptr i8, ptr %net_dev, i32 2348
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %type, align 4
  %describe_stats = getelementptr inbounds %struct.ef4_nic_type, ptr %2, i32 0, i32 19
  %3 = ptrtoint ptr %describe_stats to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %describe_stats, align 4
  %call1 = tail call i32 %4(ptr noundef %add.ptr.i, ptr noundef null) #16
  %add = add i32 %call1, 11
  %call2 = tail call fastcc i32 @ef4_describe_per_queue_stats(ptr noundef %add.ptr.i, ptr noundef null)
  %add3 = add i32 %add, %call2
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call5 = tail call fastcc i32 @ef4_ethtool_fill_self_tests(ptr noundef %add.ptr.i, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb4, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %sw.bb4 ], [ %add3, %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ef4_ethtool_get_rxnfc(ptr noundef %net_dev, ptr noundef %info, ptr noundef %rule_locs) #1 align 64 {
entry:
  %spec.i = alloca %struct.ef4_filter_spec, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %info, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %1, label %entry.cleanup45_crit_edge [
    i32 45, label %sw.bb
    i32 41, label %sw.bb1
    i32 46, label %sw.bb11
    i32 47, label %sw.bb23
    i32 48, label %sw.bb30
  ]

entry.cleanup45_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup45

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %n_rx_channels = getelementptr i8, ptr %net_dev, i32 3672
  %3 = ptrtoint ptr %n_rx_channels to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %n_rx_channels, align 8
  %conv = zext i32 %4 to i64
  %data = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 2
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %conv, ptr %data, align 8
  br label %cleanup45

sw.bb1:                                           ; preds = %entry
  %data2 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 2
  %6 = ptrtoint ptr %data2 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %data2, align 8
  %flow_type = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 1
  %7 = ptrtoint ptr %flow_type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flow_type, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %8, label %sw.bb1.cleanup45_crit_edge [
    i32 1, label %sw.bb3
    i32 2, label %sw.bb1.sw.epilog_crit_edge
    i32 3, label %sw.bb1.sw.epilog_crit_edge87
    i32 4, label %sw.bb1.sw.epilog_crit_edge88
    i32 16, label %sw.bb1.sw.epilog_crit_edge89
  ]

sw.bb1.sw.epilog_crit_edge89:                     ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb1.sw.epilog_crit_edge88:                     ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb1.sw.epilog_crit_edge87:                     ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb1.cleanup45_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup45

sw.bb3:                                           ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #18
  %10 = ptrtoint ptr %data2 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 192, ptr %data2, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb1.sw.epilog_crit_edge, %sw.bb1.sw.epilog_crit_edge87, %sw.bb1.sw.epilog_crit_edge88, %sw.bb1.sw.epilog_crit_edge89
  %11 = ptrtoint ptr %data2 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %data2, align 8
  %or7 = or i64 %12, 48
  store i64 %or7, ptr %data2, align 8
  %type.i = getelementptr i8, ptr %net_dev, i32 2348
  %13 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %type.i, align 4
  %revision.i = getelementptr inbounds %struct.ef4_nic_type, ptr %14, i32 0, i32 79
  %15 = ptrtoint ptr %revision.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %revision.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp = icmp ult i32 %16, 2
  %spec.store.select = select i1 %cmp, i64 0, i64 %or7
  %17 = ptrtoint ptr %data2 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %spec.store.select, ptr %data2, align 8
  br label %cleanup45

sw.bb11:                                          ; preds = %entry
  %type.i70 = getelementptr i8, ptr %net_dev, i32 2348
  %18 = ptrtoint ptr %type.i70 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %type.i70, align 4
  %filter_get_rx_id_limit.i = getelementptr inbounds %struct.ef4_nic_type, ptr %19, i32 0, i32 67
  %20 = ptrtoint ptr %filter_get_rx_id_limit.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %filter_get_rx_id_limit.i, align 4
  %call.i = tail call i32 %21(ptr noundef %add.ptr.i) #16
  %conv13 = zext i32 %call.i to i64
  %data14 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 2
  %22 = ptrtoint ptr %data14 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %conv13, ptr %data14, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp16 = icmp eq i32 %call.i, 0
  br i1 %cmp16, label %sw.bb11.cleanup45_crit_edge, label %if.end19

sw.bb11.cleanup45_crit_edge:                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup45

if.end19:                                         ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #18
  %or21 = or i64 %conv13, 2147483648
  %23 = ptrtoint ptr %data14 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %or21, ptr %data14, align 8
  %24 = ptrtoint ptr %type.i70 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %type.i70, align 4
  %filter_count_rx_used.i = getelementptr inbounds %struct.ef4_nic_type, ptr %25, i32 0, i32 66
  %26 = ptrtoint ptr %filter_count_rx_used.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %filter_count_rx_used.i, align 8
  %call.i72 = tail call i32 %27(ptr noundef %add.ptr.i, i32 noundef 2) #16
  %28 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call.i72, ptr %28, align 8
  br label %cleanup45

sw.bb23:                                          ; preds = %entry
  %type.i73 = getelementptr i8, ptr %net_dev, i32 2348
  %30 = ptrtoint ptr %type.i73 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %type.i73, align 4
  %filter_get_rx_id_limit.i74 = getelementptr inbounds %struct.ef4_nic_type, ptr %31, i32 0, i32 67
  %32 = ptrtoint ptr %filter_get_rx_id_limit.i74 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %filter_get_rx_id_limit.i74, align 4
  %call.i75 = tail call i32 %33(ptr noundef %add.ptr.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75)
  %cmp25 = icmp eq i32 %call.i75, 0
  br i1 %cmp25, label %sw.bb23.cleanup45_crit_edge, label %if.end28

sw.bb23.cleanup45_crit_edge:                      ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup45

if.end28:                                         ; preds = %sw.bb23
  %fs = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3
  %h_u.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 1
  %m_u.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %spec.i) #16
  %34 = call ptr @memset(ptr %spec.i, i32 255, i32 64)
  %location.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 6
  %35 = ptrtoint ptr %location.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %location.i, align 8
  %37 = ptrtoint ptr %type.i73 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %type.i73, align 4
  %filter_get_safe.i.i = getelementptr inbounds %struct.ef4_nic_type, ptr %38, i32 0, i32 64
  %39 = ptrtoint ptr %filter_get_safe.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %filter_get_safe.i.i, align 8
  %call.i.i = call i32 %40(ptr noundef %add.ptr.i, i32 noundef 2, i32 noundef %36, ptr noundef nonnull %spec.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end28.ef4_ethtool_get_class_rule.exit_crit_edge

if.end28.ef4_ethtool_get_class_rule.exit_crit_edge: ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #18
  br label %ef4_ethtool_get_class_rule.exit

if.end.i:                                         ; preds = %if.end28
  %41 = ptrtoint ptr %spec.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %bf.load.i = load i32, ptr %spec.i, align 4
  %bf.clear.i = and i32 %bf.load.i, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %bf.clear.i)
  %cmp.i = icmp eq i32 %bf.clear.i, 4095
  %conv.i = zext i32 %bf.clear.i to i64
  %spec.select.i = select i1 %cmp.i, i64 -1, i64 %conv.i
  %42 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 5
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %spec.select.i, ptr %42, align 8
  %44 = and i32 %bf.load.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool15.not.i = icmp eq i32 %44, 0
  br i1 %tobool15.not.i, label %if.else147.thread.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %ether_type.i = getelementptr inbounds %struct.ef4_filter_spec, ptr %spec.i, i32 0, i32 6
  %45 = ptrtoint ptr %ether_type.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %ether_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %46)
  %cmp17.i = icmp ne i16 %46, 2048
  %47 = and i32 %bf.load.i, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool23.not.i = icmp eq i32 %47, 0
  %or.cond.i = select i1 %cmp17.i, i1 true, i1 %tobool23.not.i
  br i1 %or.cond.i, label %land.lhs.true76.i, label %land.lhs.true24.i

land.lhs.true24.i:                                ; preds = %land.lhs.true.i
  %ip_proto.i = getelementptr inbounds %struct.ef4_filter_spec, ptr %spec.i, i32 0, i32 7
  %48 = ptrtoint ptr %ip_proto.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %ip_proto.i, align 2
  %50 = zext i8 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.54)
  switch i8 %49, label %land.lhs.true24.i.if.else147.i_crit_edge [
    i8 6, label %land.lhs.true24.i.land.lhs.true32.i_crit_edge
    i8 17, label %land.lhs.true24.i.land.lhs.true32.i_crit_edge90
  ]

land.lhs.true24.i.land.lhs.true32.i_crit_edge90:  ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true32.i

land.lhs.true24.i.land.lhs.true32.i_crit_edge:    ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true32.i

land.lhs.true24.i.if.else147.i_crit_edge:         ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else147.i

land.lhs.true32.i:                                ; preds = %land.lhs.true24.i.land.lhs.true32.i_crit_edge, %land.lhs.true24.i.land.lhs.true32.i_crit_edge90
  %51 = and i32 %bf.load.i, -918552576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool36.not.i = icmp eq i32 %51, 0
  br i1 %tobool36.not.i, label %if.then37.i, label %land.lhs.true32.i.if.else147.i_crit_edge

land.lhs.true32.i.if.else147.i_crit_edge:         ; preds = %land.lhs.true32.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else147.i

if.then37.i:                                      ; preds = %land.lhs.true32.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %49)
  %cmp40.i = icmp eq i8 %49, 6
  %cond.i = select i1 %cmp40.i, i32 1, i32 2
  %52 = ptrtoint ptr %fs to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %cond.i, ptr %fs, align 8
  %53 = and i32 %bf.load.i, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool45.not.i = icmp eq i32 %53, 0
  br i1 %tobool45.not.i, label %if.then37.i.if.end48.i_crit_edge, label %if.then46.i

if.then37.i.if.end48.i_crit_edge:                 ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end48.i

if.then46.i:                                      ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #18
  %loc_host.i = getelementptr inbounds %struct.ef4_filter_spec, ptr %spec.i, i32 0, i32 8
  %54 = ptrtoint ptr %loc_host.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %loc_host.i, align 4
  %ip4dst.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 1, i32 0, i32 0, i32 1
  %56 = ptrtoint ptr %ip4dst.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %ip4dst.i, align 4
  %ip4dst47.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3, i32 0, i32 0, i32 1
  %57 = ptrtoint ptr %ip4dst47.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -1, ptr %ip4dst47.i, align 4
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then46.i, %if.then37.i.if.end48.i_crit_edge
  %58 = and i32 %bf.load.i, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool52.not.i = icmp eq i32 %58, 0
  br i1 %tobool52.not.i, label %if.end48.i.if.end56.i_crit_edge, label %if.then53.i

if.end48.i.if.end56.i_crit_edge:                  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end56.i

if.then53.i:                                      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #18
  %rem_host.i = getelementptr inbounds %struct.ef4_filter_spec, ptr %spec.i, i32 0, i32 9
  %59 = ptrtoint ptr %rem_host.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rem_host.i, align 4
  %61 = ptrtoint ptr %h_u.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %h_u.i, align 4
  %62 = ptrtoint ptr %m_u.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -1, ptr %m_u.i, align 4
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.then53.i, %if.end48.i.if.end56.i_crit_edge
  %63 = and i32 %bf.load.i, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool60.not.i = icmp eq i32 %63, 0
  br i1 %tobool60.not.i, label %if.end56.i.if.end63.i_crit_edge, label %if.then61.i

if.end56.i.if.end63.i_crit_edge:                  ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end63.i

if.then61.i:                                      ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #18
  %loc_port.i = getelementptr inbounds %struct.ef4_filter_spec, ptr %spec.i, i32 0, i32 10
  %64 = ptrtoint ptr %loc_port.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %loc_port.i, align 4
  %pdst.i = getelementptr inbounds %struct.ethtool_tcpip4_spec, ptr %h_u.i, i32 0, i32 3
  %66 = ptrtoint ptr %pdst.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %65, ptr %pdst.i, align 2
  %pdst62.i = getelementptr inbounds %struct.ethtool_tcpip4_spec, ptr %m_u.i, i32 0, i32 3
  %67 = ptrtoint ptr %pdst62.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 -1, ptr %pdst62.i, align 2
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.then61.i, %if.end56.i.if.end63.i_crit_edge
  %68 = and i32 %bf.load.i, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool67.not.i = icmp eq i32 %68, 0
  br i1 %tobool67.not.i, label %if.end63.i.if.end307.i_crit_edge, label %if.then68.i

if.end63.i.if.end307.i_crit_edge:                 ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end307.i

if.then68.i:                                      ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #18
  %rem_port.i = getelementptr inbounds %struct.ef4_filter_spec, ptr %spec.i, i32 0, i32 11
  %69 = ptrtoint ptr %rem_port.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %rem_port.i, align 2
  %psrc.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 1, i32 0, i32 0, i32 2
  %71 = ptrtoint ptr %psrc.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %70, ptr %psrc.i, align 4
  %psrc69.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3, i32 0, i32 0, i32 2
  %72 = ptrtoint ptr %psrc69.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 -1, ptr %psrc69.i, align 4
  br label %if.end307.i

land.lhs.true76.i:                                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %46)
  %cmp79.i = icmp ne i16 %46, -31011
  %or.cond376.i = select i1 %cmp79.i, i1 true, i1 %tobool23.not.i
  br i1 %or.cond376.i, label %land.lhs.true76.i.if.else147.i_crit_edge, label %land.lhs.true86.i

land.lhs.true76.i.if.else147.i_crit_edge:         ; preds = %land.lhs.true76.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else147.i

land.lhs.true86.i:                                ; preds = %land.lhs.true76.i
  %ip_proto87.i = getelementptr inbounds %struct.ef4_filter_spec, ptr %spec.i, i32 0, i32 7
  %73 = ptrtoint ptr %ip_proto87.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %ip_proto87.i, align 2
  %75 = zext i8 %74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.55)
  switch i8 %74, label %land.lhs.true86.i.if.else147.i_crit_edge [
    i8 6, label %land.lhs.true86.i.land.lhs.true96.i_crit_edge
    i8 17, label %land.lhs.true86.i.land.lhs.true96.i_crit_edge91
  ]

land.lhs.true86.i.land.lhs.true96.i_crit_edge91:  ; preds = %land.lhs.true86.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true96.i

land.lhs.true86.i.land.lhs.true96.i_crit_edge:    ; preds = %land.lhs.true86.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true96.i

land.lhs.true86.i.if.else147.i_crit_edge:         ; preds = %land.lhs.true86.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else147.i

land.lhs.true96.i:                                ; preds = %land.lhs.true86.i.land.lhs.true96.i_crit_edge, %land.lhs.true86.i.land.lhs.true96.i_crit_edge91
  %76 = and i32 %bf.load.i, -918552576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool100.not.i = icmp eq i32 %76, 0
  br i1 %tobool100.not.i, label %if.then101.i, label %land.lhs.true96.i.if.else147.i_crit_edge

land.lhs.true96.i.if.else147.i_crit_edge:         ; preds = %land.lhs.true96.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else147.i

if.then101.i:                                     ; preds = %land.lhs.true96.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %74)
  %cmp104.i = icmp eq i8 %74, 6
  %cond106.i = select i1 %cmp104.i, i32 5, i32 6
  %77 = ptrtoint ptr %fs to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %cond106.i, ptr %fs, align 8
  %78 = and i32 %bf.load.i, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool111.not.i = icmp eq i32 %78, 0
  br i1 %tobool111.not.i, label %if.then101.i.if.end117.i_crit_edge, label %if.then112.i

if.then101.i.if.end117.i_crit_edge:               ; preds = %if.then101.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end117.i

if.then112.i:                                     ; preds = %if.then101.i
  call void @__sanitizer_cov_trace_pc() #18
  %ip6dst.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 1, i32 0, i32 1
  %loc_host113.i = getelementptr inbounds %struct.ef4_filter_spec, ptr %spec.i, i32 0, i32 8
  %79 = call ptr @memcpy(ptr %ip6dst.i, ptr %loc_host113.i, i32 16)
  %ip6dst115.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3, i32 0, i32 1
  %80 = call ptr @memset(ptr %ip6dst115.i, i32 255, i32 16)
  br label %if.end117.i

if.end117.i:                                      ; preds = %if.then112.i, %if.then101.i.if.end117.i_crit_edge
  %81 = and i32 %bf.load.i, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool121.not.i = icmp eq i32 %81, 0
  br i1 %tobool121.not.i, label %if.end117.i.if.end128.i_crit_edge, label %if.then122.i

if.end117.i.if.end128.i_crit_edge:                ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end128.i

if.then122.i:                                     ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #18
  %rem_host124.i = getelementptr inbounds %struct.ef4_filter_spec, ptr %spec.i, i32 0, i32 9
  %82 = call ptr @memcpy(ptr %h_u.i, ptr %rem_host124.i, i32 16)
  %83 = call ptr @memset(ptr %m_u.i, i32 255, i32 16)
  br label %if.end128.i

if.end128.i:                                      ; preds = %if.then122.i, %if.end117.i.if.end128.i_crit_edge
  %84 = and i32 %bf.load.i, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool132.not.i = icmp eq i32 %84, 0
  br i1 %tobool132.not.i, label %if.end128.i.if.end137.i_crit_edge, label %if.then133.i

if.end128.i.if.end137.i_crit_edge:                ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end137.i

if.then133.i:                                     ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #18
  %loc_port134.i = getelementptr inbounds %struct.ef4_filter_spec, ptr %spec.i, i32 0, i32 10
  %85 = ptrtoint ptr %loc_port134.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %loc_port134.i, align 4
  %pdst135.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 1, i32 0, i32 3
  %87 = ptrtoint ptr %pdst135.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %86, ptr %pdst135.i, align 2
  %pdst136.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3, i32 0, i32 3
  %88 = ptrtoint ptr %pdst136.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 -1, ptr %pdst136.i, align 2
  br label %if.end137.i

if.end137.i:                                      ; preds = %if.then133.i, %if.end128.i.if.end137.i_crit_edge
  %89 = and i32 %bf.load.i, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool141.not.i = icmp eq i32 %89, 0
  br i1 %tobool141.not.i, label %if.end137.i.if.end307.i_crit_edge, label %if.then142.i

if.end137.i.if.end307.i_crit_edge:                ; preds = %if.end137.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end307.i

if.then142.i:                                     ; preds = %if.end137.i
  call void @__sanitizer_cov_trace_pc() #18
  %rem_port143.i = getelementptr inbounds %struct.ef4_filter_spec, ptr %spec.i, i32 0, i32 11
  %90 = ptrtoint ptr %rem_port143.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %rem_port143.i, align 2
  %psrc144.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 1, i32 0, i32 2
  %92 = ptrtoint ptr %psrc144.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %91, ptr %psrc144.i, align 4
  %psrc145.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3, i32 0, i32 2
  %93 = ptrtoint ptr %psrc145.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 -1, ptr %psrc145.i, align 4
  br label %if.end307.i

if.else147.i:                                     ; preds = %land.lhs.true96.i.if.else147.i_crit_edge, %land.lhs.true86.i.if.else147.i_crit_edge, %land.lhs.true76.i.if.else147.i_crit_edge, %land.lhs.true32.i.if.else147.i_crit_edge, %land.lhs.true24.i.if.else147.i_crit_edge
  %94 = and i32 %bf.load.i, -1431306240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool151.not.i = icmp eq i32 %94, 0
  br i1 %tobool151.not.i, label %if.else147.i.if.then152.i_crit_edge, label %land.lhs.true196.i

if.else147.i.if.then152.i_crit_edge:              ; preds = %if.else147.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then152.i

if.else147.thread.i:                              ; preds = %if.end.i
  %95 = and i32 %bf.load.i, -1431306240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool151.not382.i = icmp eq i32 %95, 0
  br i1 %tobool151.not382.i, label %if.else147.thread.i.if.then152.i_crit_edge, label %if.else147.thread.i.do.end.i_crit_edge

if.else147.thread.i.do.end.i_crit_edge:           ; preds = %if.else147.thread.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

if.else147.thread.i.if.then152.i_crit_edge:       ; preds = %if.else147.thread.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then152.i

if.then152.i:                                     ; preds = %if.else147.thread.i.if.then152.i_crit_edge, %if.else147.i.if.then152.i_crit_edge
  %96 = ptrtoint ptr %fs to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 18, ptr %fs, align 8
  %97 = and i32 %bf.load.i, 1090519040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool157.not.i = icmp eq i32 %97, 0
  br i1 %tobool157.not.i, label %if.then152.i.if.end172.i_crit_edge, label %if.then158.i

if.then152.i.if.end172.i_crit_edge:               ; preds = %if.then152.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end172.i

if.then158.i:                                     ; preds = %if.then152.i
  %loc_mac.i = getelementptr inbounds %struct.ef4_filter_spec, ptr %spec.i, i32 0, i32 4
  %98 = ptrtoint ptr %loc_mac.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %loc_mac.i, align 4
  %100 = ptrtoint ptr %h_u.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %h_u.i, align 4
  %add.ptr.i.i = getelementptr inbounds %struct.ef4_filter_spec, ptr %spec.i, i32 0, i32 4, i32 4
  %101 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %add.ptr.i.i, align 4
  %add.ptr1.i.i = getelementptr %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 1, i32 0, i32 0, i32 1
  %103 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 %102, ptr %add.ptr1.i.i, align 2
  %104 = and i32 %bf.load.i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool164.not.i = icmp eq i32 %104, 0
  br i1 %tobool164.not.i, label %if.else168.i, label %if.then165.i

if.then165.i:                                     ; preds = %if.then158.i
  call void @__sanitizer_cov_trace_pc() #18
  %105 = call ptr @memset(ptr %m_u.i, i32 255, i32 6)
  br label %if.end172.i

if.else168.i:                                     ; preds = %if.then158.i
  call void @__sanitizer_cov_trace_pc() #18
  %106 = ptrtoint ptr %m_u.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 16777216, ptr %m_u.i, align 4
  %add.ptr1.i379.i = getelementptr %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3, i32 0, i32 0, i32 1
  %107 = ptrtoint ptr %add.ptr1.i379.i to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 0, ptr %add.ptr1.i379.i, align 2
  br label %if.end172.i

if.end172.i:                                      ; preds = %if.else168.i, %if.then165.i, %if.then152.i.if.end172.i_crit_edge
  %108 = and i32 %bf.load.i, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool176.not.i = icmp eq i32 %108, 0
  br i1 %tobool176.not.i, label %if.end172.i.if.end182.i_crit_edge, label %if.then177.i

if.end172.i.if.end182.i_crit_edge:                ; preds = %if.end172.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end182.i

if.then177.i:                                     ; preds = %if.end172.i
  call void @__sanitizer_cov_trace_pc() #18
  %h_source.i = getelementptr inbounds %struct.ethhdr, ptr %h_u.i, i32 0, i32 1
  %rem_mac.i = getelementptr inbounds %struct.ef4_filter_spec, ptr %spec.i, i32 0, i32 5
  %109 = ptrtoint ptr %rem_mac.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %rem_mac.i, align 4
  %111 = ptrtoint ptr %h_source.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %h_source.i, align 4
  %add.ptr.i380.i = getelementptr inbounds %struct.ef4_filter_spec, ptr %spec.i, i32 0, i32 5, i32 4
  %112 = ptrtoint ptr %add.ptr.i380.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %add.ptr.i380.i, align 2
  %add.ptr1.i381.i = getelementptr %struct.ethhdr, ptr %h_u.i, i32 0, i32 1, i32 4
  %114 = ptrtoint ptr %add.ptr1.i381.i to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 %113, ptr %add.ptr1.i381.i, align 2
  %h_source180.i = getelementptr inbounds %struct.ethhdr, ptr %m_u.i, i32 0, i32 1
  %115 = call ptr @memset(ptr %h_source180.i, i32 255, i32 6)
  br label %if.end182.i

if.end182.i:                                      ; preds = %if.then177.i, %if.end172.i.if.end182.i_crit_edge
  br i1 %tobool15.not.i, label %if.end182.i.if.end307.i_crit_edge, label %if.then187.i

if.end182.i.if.end307.i_crit_edge:                ; preds = %if.end182.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end307.i

if.then187.i:                                     ; preds = %if.end182.i
  call void @__sanitizer_cov_trace_pc() #18
  %ether_type188.i = getelementptr inbounds %struct.ef4_filter_spec, ptr %spec.i, i32 0, i32 6
  %116 = ptrtoint ptr %ether_type188.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %ether_type188.i, align 4
  %h_proto.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 1, i32 0, i32 0, i32 3
  %118 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_storeN_noabort(i32 %118, i32 2)
  store i16 %117, ptr %h_proto.i, align 1
  %h_proto189.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3, i32 0, i32 0, i32 3
  %119 = ptrtoint ptr %h_proto189.i to i32
  call void @__asan_storeN_noabort(i32 %119, i32 2)
  store i16 -1, ptr %h_proto189.i, align 1
  br label %if.end307.i

land.lhs.true196.i:                               ; preds = %if.else147.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %46)
  %cmp199.i = icmp eq i16 %46, 2048
  %120 = and i32 %bf.load.i, -876609536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool205.not.i = icmp eq i32 %120, 0
  %or.cond377.i = select i1 %cmp199.i, i1 %tobool205.not.i, i1 false
  br i1 %or.cond377.i, label %if.then206.i, label %land.lhs.true241.i

if.then206.i:                                     ; preds = %land.lhs.true196.i
  %121 = ptrtoint ptr %fs to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 13, ptr %fs, align 8
  %ip_ver.i = getelementptr inbounds %struct.ethtool_usrip4_spec, ptr %h_u.i, i32 0, i32 4
  %122 = ptrtoint ptr %ip_ver.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 1, ptr %ip_ver.i, align 1
  br i1 %tobool23.not.i, label %if.then206.i.if.end215.i_crit_edge, label %if.then212.i

if.then206.i.if.end215.i_crit_edge:               ; preds = %if.then206.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end215.i

if.then212.i:                                     ; preds = %if.then206.i
  call void @__sanitizer_cov_trace_pc() #18
  %proto.i = getelementptr inbounds %struct.ethtool_usrip4_spec, ptr %m_u.i, i32 0, i32 5
  %123 = ptrtoint ptr %proto.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 -1, ptr %proto.i, align 2
  %ip_proto213.i = getelementptr inbounds %struct.ef4_filter_spec, ptr %spec.i, i32 0, i32 7
  %124 = ptrtoint ptr %ip_proto213.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %ip_proto213.i, align 2
  %proto214.i = getelementptr inbounds %struct.ethtool_usrip4_spec, ptr %h_u.i, i32 0, i32 5
  %126 = ptrtoint ptr %proto214.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %125, ptr %proto214.i, align 2
  br label %if.end215.i

if.end215.i:                                      ; preds = %if.then212.i, %if.then206.i.if.end215.i_crit_edge
  %127 = and i32 %bf.load.i, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %tobool219.not.i = icmp eq i32 %127, 0
  br i1 %tobool219.not.i, label %if.end215.i.if.end225.i_crit_edge, label %if.then220.i

if.end215.i.if.end225.i_crit_edge:                ; preds = %if.end215.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end225.i

if.then220.i:                                     ; preds = %if.end215.i
  call void @__sanitizer_cov_trace_pc() #18
  %loc_host221.i = getelementptr inbounds %struct.ef4_filter_spec, ptr %spec.i, i32 0, i32 8
  %128 = ptrtoint ptr %loc_host221.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %loc_host221.i, align 4
  %ip4dst223.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 1, i32 0, i32 0, i32 1
  %130 = ptrtoint ptr %ip4dst223.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %129, ptr %ip4dst223.i, align 4
  %ip4dst224.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3, i32 0, i32 0, i32 1
  %131 = ptrtoint ptr %ip4dst224.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 -1, ptr %ip4dst224.i, align 4
  br label %if.end225.i

if.end225.i:                                      ; preds = %if.then220.i, %if.end215.i.if.end225.i_crit_edge
  %132 = and i32 %bf.load.i, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %tobool229.not.i = icmp eq i32 %132, 0
  br i1 %tobool229.not.i, label %if.end225.i.if.end307.i_crit_edge, label %if.then230.i

if.end225.i.if.end307.i_crit_edge:                ; preds = %if.end225.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end307.i

if.then230.i:                                     ; preds = %if.end225.i
  call void @__sanitizer_cov_trace_pc() #18
  %rem_host231.i = getelementptr inbounds %struct.ef4_filter_spec, ptr %spec.i, i32 0, i32 9
  %133 = ptrtoint ptr %rem_host231.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %rem_host231.i, align 4
  %135 = ptrtoint ptr %h_u.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %134, ptr %h_u.i, align 4
  %136 = ptrtoint ptr %m_u.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 -1, ptr %m_u.i, align 4
  br label %if.end307.i

land.lhs.true241.i:                               ; preds = %land.lhs.true196.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %46)
  %cmp244.i = icmp eq i16 %46, -31011
  %or.cond378.i = select i1 %cmp244.i, i1 %tobool205.not.i, i1 false
  br i1 %or.cond378.i, label %if.then251.i, label %land.lhs.true241.i.do.end.i_crit_edge

land.lhs.true241.i.do.end.i_crit_edge:            ; preds = %land.lhs.true241.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

if.then251.i:                                     ; preds = %land.lhs.true241.i
  %137 = ptrtoint ptr %fs to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 14, ptr %fs, align 8
  br i1 %tobool23.not.i, label %if.then251.i.if.end260.i_crit_edge, label %if.then257.i

if.then251.i.if.end260.i_crit_edge:               ; preds = %if.then251.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end260.i

if.then257.i:                                     ; preds = %if.then251.i
  call void @__sanitizer_cov_trace_pc() #18
  %l4_proto.i = getelementptr inbounds %struct.ethtool_usrip6_spec, ptr %m_u.i, i32 0, i32 4
  %138 = ptrtoint ptr %l4_proto.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 -1, ptr %l4_proto.i, align 1
  %ip_proto258.i = getelementptr inbounds %struct.ef4_filter_spec, ptr %spec.i, i32 0, i32 7
  %139 = ptrtoint ptr %ip_proto258.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %ip_proto258.i, align 2
  %l4_proto259.i = getelementptr inbounds %struct.ethtool_usrip6_spec, ptr %h_u.i, i32 0, i32 4
  %141 = ptrtoint ptr %l4_proto259.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %140, ptr %l4_proto259.i, align 1
  br label %if.end260.i

if.end260.i:                                      ; preds = %if.then257.i, %if.then251.i.if.end260.i_crit_edge
  %142 = and i32 %bf.load.i, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %tobool264.not.i = icmp eq i32 %142, 0
  br i1 %tobool264.not.i, label %if.end260.i.if.end272.i_crit_edge, label %if.then265.i

if.end260.i.if.end272.i_crit_edge:                ; preds = %if.end260.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end272.i

if.then265.i:                                     ; preds = %if.end260.i
  call void @__sanitizer_cov_trace_pc() #18
  %ip6dst266.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 1, i32 0, i32 1
  %loc_host268.i = getelementptr inbounds %struct.ef4_filter_spec, ptr %spec.i, i32 0, i32 8
  %143 = call ptr @memcpy(ptr %ip6dst266.i, ptr %loc_host268.i, i32 16)
  %ip6dst270.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3, i32 0, i32 1
  %144 = call ptr @memset(ptr %ip6dst270.i, i32 255, i32 16)
  br label %if.end272.i

if.end272.i:                                      ; preds = %if.then265.i, %if.end260.i.if.end272.i_crit_edge
  %145 = and i32 %bf.load.i, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %tobool276.not.i = icmp eq i32 %145, 0
  br i1 %tobool276.not.i, label %if.end272.i.if.end307.i_crit_edge, label %if.then277.i

if.end272.i.if.end307.i_crit_edge:                ; preds = %if.end272.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end307.i

if.then277.i:                                     ; preds = %if.end272.i
  call void @__sanitizer_cov_trace_pc() #18
  %rem_host280.i = getelementptr inbounds %struct.ef4_filter_spec, ptr %spec.i, i32 0, i32 9
  %146 = call ptr @memcpy(ptr %h_u.i, ptr %rem_host280.i, i32 16)
  %147 = call ptr @memset(ptr %m_u.i, i32 255, i32 16)
  br label %if.end307.i

do.end.i:                                         ; preds = %land.lhs.true241.i.do.end.i_crit_edge, %if.else147.thread.i.do.end.i_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 939, i32 noundef 9, ptr noundef null) #16
  br label %ef4_ethtool_get_class_rule.exit

if.end307.i:                                      ; preds = %if.then277.i, %if.end272.i.if.end307.i_crit_edge, %if.then230.i, %if.end225.i.if.end307.i_crit_edge, %if.then187.i, %if.end182.i.if.end307.i_crit_edge, %if.then142.i, %if.end137.i.if.end307.i_crit_edge, %if.then68.i, %if.end63.i.if.end307.i_crit_edge
  %148 = and i32 %bf.load.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %tobool311.not.i = icmp eq i32 %148, 0
  br i1 %tobool311.not.i, label %if.end307.i.ef4_ethtool_get_class_rule.exit_crit_edge, label %if.then312.i

if.end307.i.ef4_ethtool_get_class_rule.exit_crit_edge: ; preds = %if.end307.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ef4_ethtool_get_class_rule.exit

if.then312.i:                                     ; preds = %if.end307.i
  call void @__sanitizer_cov_trace_pc() #18
  %149 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %fs, align 8
  %or.i = or i32 %150, -2147483648
  store i32 %or.i, ptr %fs, align 8
  %outer_vid.i = getelementptr inbounds %struct.ef4_filter_spec, ptr %spec.i, i32 0, i32 2
  %151 = ptrtoint ptr %outer_vid.i to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %outer_vid.i, align 4
  %vlan_tci.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 2, i32 3
  %153 = ptrtoint ptr %vlan_tci.i to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 %152, ptr %vlan_tci.i, align 2
  %vlan_tci314.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 4, i32 3
  %154 = ptrtoint ptr %vlan_tci314.i to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 4095, ptr %vlan_tci314.i, align 2
  br label %ef4_ethtool_get_class_rule.exit

ef4_ethtool_get_class_rule.exit:                  ; preds = %if.then312.i, %if.end307.i.ef4_ethtool_get_class_rule.exit_crit_edge, %do.end.i, %if.end28.ef4_ethtool_get_class_rule.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %do.end.i ], [ %call.i.i, %if.end28.ef4_ethtool_get_class_rule.exit_crit_edge ], [ 0, %if.then312.i ], [ 0, %if.end307.i.ef4_ethtool_get_class_rule.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %spec.i) #16
  br label %cleanup45

sw.bb30:                                          ; preds = %entry
  %type.i76 = getelementptr i8, ptr %net_dev, i32 2348
  %155 = ptrtoint ptr %type.i76 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %type.i76, align 4
  %filter_get_rx_id_limit.i77 = getelementptr inbounds %struct.ef4_nic_type, ptr %156, i32 0, i32 67
  %157 = ptrtoint ptr %filter_get_rx_id_limit.i77 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %filter_get_rx_id_limit.i77, align 4
  %call.i78 = tail call i32 %158(ptr noundef %add.ptr.i) #16
  %conv32 = zext i32 %call.i78 to i64
  %data33 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 2
  %159 = ptrtoint ptr %data33 to i32
  call void @__asan_store8_noabort(i32 %159)
  store i64 %conv32, ptr %data33, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78)
  %cmp35 = icmp eq i32 %call.i78, 0
  br i1 %cmp35, label %sw.bb30.cleanup45_crit_edge, label %if.end38

sw.bb30.cleanup45_crit_edge:                      ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup45

if.end38:                                         ; preds = %sw.bb30
  %160 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 4
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %160, align 8
  %163 = ptrtoint ptr %type.i76 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %type.i76, align 4
  %filter_get_rx_ids.i = getelementptr inbounds %struct.ef4_nic_type, ptr %164, i32 0, i32 68
  %165 = ptrtoint ptr %filter_get_rx_ids.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %filter_get_rx_ids.i, align 8
  %call.i80 = tail call i32 %166(ptr noundef %add.ptr.i, i32 noundef 2, ptr noundef %rule_locs, i32 noundef %162) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i80)
  %cmp40 = icmp slt i32 %call.i80, 0
  br i1 %cmp40, label %if.end38.cleanup45_crit_edge, label %if.end43

if.end38.cleanup45_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup45

if.end43:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #18
  %167 = ptrtoint ptr %160 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %call.i80, ptr %160, align 8
  br label %cleanup45

cleanup45:                                        ; preds = %if.end43, %if.end38.cleanup45_crit_edge, %sw.bb30.cleanup45_crit_edge, %ef4_ethtool_get_class_rule.exit, %sw.bb23.cleanup45_crit_edge, %if.end19, %sw.bb11.cleanup45_crit_edge, %sw.epilog, %sw.bb1.cleanup45_crit_edge, %sw.bb, %entry.cleanup45_crit_edge
  %retval.1 = phi i32 [ %retval.0.i, %ef4_ethtool_get_class_rule.exit ], [ 0, %if.end19 ], [ 0, %sw.bb ], [ -95, %sw.bb11.cleanup45_crit_edge ], [ -95, %sw.bb23.cleanup45_crit_edge ], [ 0, %if.end43 ], [ -95, %sw.bb30.cleanup45_crit_edge ], [ %call.i80, %if.end38.cleanup45_crit_edge ], [ -95, %entry.cleanup45_crit_edge ], [ 0, %sw.bb1.cleanup45_crit_edge ], [ 0, %sw.epilog ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ef4_ethtool_set_rxnfc(ptr noundef %net_dev, ptr noundef %info) #1 align 64 {
entry:
  %spec.i = alloca %struct.ef4_filter_spec, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %type.i = getelementptr i8, ptr %net_dev, i32 2348
  %0 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type.i, align 4
  %filter_get_rx_id_limit.i = getelementptr inbounds %struct.ef4_nic_type, ptr %1, i32 0, i32 67
  %2 = ptrtoint ptr %filter_get_rx_id_limit.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %filter_get_rx_id_limit.i, align 4
  %call.i = tail call i32 %3(ptr noundef %add.ptr.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp eq i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %info, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %5, label %if.end.cleanup_crit_edge [
    i32 50, label %sw.bb
    i32 49, label %sw.bb3
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %fs = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3
  %h_u.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 1
  %m_u.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %spec.i) #16
  %location.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 6
  %7 = ptrtoint ptr %location.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %location.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp.not.i = icmp eq i32 %8, -1
  br i1 %cmp.not.i, label %if.end.i, label %sw.bb.ef4_ethtool_set_class_rule.exit_crit_edge

sw.bb.ef4_ethtool_set_class_rule.exit_crit_edge:  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %ef4_ethtool_set_class_rule.exit

if.end.i:                                         ; preds = %sw.bb
  %ring_cookie.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 5
  %9 = ptrtoint ptr %ring_cookie.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %ring_cookie.i, align 8
  %n_rx_channels.i = getelementptr i8, ptr %net_dev, i32 3672
  %11 = ptrtoint ptr %n_rx_channels.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %n_rx_channels.i, align 8
  %conv.i = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %conv.i)
  %cmp9.not.i = icmp ult i64 %10, %conv.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %10)
  %cmp12.not.i = icmp eq i64 %10, -1
  %or.cond.i = or i1 %cmp12.not.i, %cmp9.not.i
  br i1 %or.cond.i, label %if.end15.i, label %if.end.i.ef4_ethtool_set_class_rule.exit_crit_edge

if.end.i.ef4_ethtool_set_class_rule.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ef4_ethtool_set_class_rule.exit

if.end15.i:                                       ; preds = %if.end.i
  %13 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %tobool.not.i = icmp sgt i32 %14, -1
  br i1 %tobool.not.i, label %if.end15.i.if.end27.i_crit_edge, label %land.lhs.true16.i

if.end15.i.if.end27.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27.i

land.lhs.true16.i:                                ; preds = %if.end15.i
  %vlan_etype.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 4, i32 2
  %15 = ptrtoint ptr %vlan_etype.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %vlan_etype.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool18.not.i = icmp eq i16 %16, 0
  br i1 %tobool18.not.i, label %lor.lhs.false.i, label %land.lhs.true16.i.ef4_ethtool_set_class_rule.exit_crit_edge

land.lhs.true16.i.ef4_ethtool_set_class_rule.exit_crit_edge: ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ef4_ethtool_set_class_rule.exit

lor.lhs.false.i:                                  ; preds = %land.lhs.true16.i
  %data.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 4, i32 4
  %17 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool20.not.i = icmp eq i32 %18, 0
  br i1 %tobool20.not.i, label %lor.lhs.false21.i, label %lor.lhs.false.i.ef4_ethtool_set_class_rule.exit_crit_edge

lor.lhs.false.i.ef4_ethtool_set_class_rule.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ef4_ethtool_set_class_rule.exit

lor.lhs.false21.i:                                ; preds = %lor.lhs.false.i
  %arrayidx24.i = getelementptr %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 4, i32 4, i32 1
  %19 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx24.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool25.not.i = icmp eq i32 %20, 0
  br i1 %tobool25.not.i, label %lor.lhs.false21.i.if.end27.i_crit_edge, label %lor.lhs.false21.i.ef4_ethtool_set_class_rule.exit_crit_edge

lor.lhs.false21.i.ef4_ethtool_set_class_rule.exit_crit_edge: ; preds = %lor.lhs.false21.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ef4_ethtool_set_class_rule.exit

lor.lhs.false21.i.if.end27.i_crit_edge:           ; preds = %lor.lhs.false21.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27.i

if.end27.i:                                       ; preds = %lor.lhs.false21.i.if.end27.i_crit_edge, %if.end15.i.if.end27.i_crit_edge
  %rx_scatter.i = getelementptr i8, ptr %net_dev, i32 4284
  %21 = ptrtoint ptr %rx_scatter.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %rx_scatter.i, align 4, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool28.not.i = icmp eq i8 %22, 0
  %cond.i = select i1 %tobool28.not.i, i32 0, i32 8192
  %extract.t.i = trunc i64 %10 to i32
  %23 = getelementptr inbounds i8, ptr %spec.i, i32 8
  %24 = call ptr @memset(ptr %23, i32 0, i32 56)
  %rss_context.i.i = getelementptr inbounds %struct.ef4_filter_spec, ptr %spec.i, i32 0, i32 1
  %25 = ptrtoint ptr %rss_context.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %rss_context.i.i, align 4
  %extract.t.op.i = and i32 %extract.t.i, 4095
  %bf.value7.i.i = select i1 %cmp12.not.i, i32 4095, i32 %extract.t.op.i
  %bf.set5.i.i = or i32 %cond.i, %bf.value7.i.i
  %bf.set9.i.i = or i32 %bf.set5.i.i, 557056
  %26 = ptrtoint ptr %spec.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %bf.set9.i.i, ptr %spec.i, align 4
  %and37.i = and i32 %14, 2147483647
  %27 = zext i32 %and37.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %and37.i, label %if.end27.i.ef4_ethtool_set_class_rule.exit_crit_edge [
    i32 1, label %if.end27.i.sw.bb.i_crit_edge
    i32 2, label %if.end27.i.sw.bb.i_crit_edge12
    i32 5, label %if.end27.i.sw.bb115.i_crit_edge
    i32 6, label %if.end27.i.sw.bb115.i_crit_edge13
    i32 13, label %sw.bb210.i
    i32 14, label %sw.bb289.i
    i32 18, label %sw.bb365.i
  ]

if.end27.i.sw.bb115.i_crit_edge13:                ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb115.i

if.end27.i.sw.bb115.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb115.i

if.end27.i.sw.bb.i_crit_edge12:                   ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb.i

if.end27.i.sw.bb.i_crit_edge:                     ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb.i

if.end27.i.ef4_ethtool_set_class_rule.exit_crit_edge: ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ef4_ethtool_set_class_rule.exit

sw.bb.i:                                          ; preds = %if.end27.i.sw.bb.i_crit_edge, %if.end27.i.sw.bb.i_crit_edge12
  %bf.set.i = or i32 %bf.set5.i.i, 604536832
  %28 = ptrtoint ptr %spec.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %bf.set.i, ptr %spec.i, align 4
  %ether_type.i = getelementptr inbounds %struct.ef4_filter_spec, ptr %spec.i, i32 0, i32 6
  %29 = ptrtoint ptr %ether_type.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 2048, ptr %ether_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and37.i)
  %cmp40.i = icmp eq i32 %and37.i, 1
  %conv43.i = select i1 %cmp40.i, i8 6, i8 17
  %ip_proto.i = getelementptr inbounds %struct.ef4_filter_spec, ptr %spec.i, i32 0, i32 7
  %30 = ptrtoint ptr %ip_proto.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv43.i, ptr %ip_proto.i, align 2
  %ip4dst.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3, i32 0, i32 0, i32 1
  %31 = ptrtoint ptr %ip4dst.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ip4dst.i, align 4
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %32, label %sw.bb.i.ef4_ethtool_set_class_rule.exit_crit_edge [
    i32 0, label %sw.bb.i.if.end57.i_crit_edge
    i32 -1, label %if.end50.i
  ]

sw.bb.i.if.end57.i_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end57.i

sw.bb.i.ef4_ethtool_set_class_rule.exit_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ef4_ethtool_set_class_rule.exit

if.end50.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #18
  %bf.set54.i = or i32 %bf.set5.i.i, 606633984
  %34 = ptrtoint ptr %spec.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %bf.set54.i, ptr %spec.i, align 4
  %ip4dst55.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 1, i32 0, i32 0, i32 1
  %35 = ptrtoint ptr %ip4dst55.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ip4dst55.i, align 4
  %loc_host.i = getelementptr inbounds %struct.ef4_filter_spec, ptr %spec.i, i32 0, i32 8
  %37 = ptrtoint ptr %loc_host.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %loc_host.i, align 4
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.end50.i, %sw.bb.i.if.end57.i_crit_edge
  %38 = ptrtoint ptr %m_u.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %m_u.i, align 4
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %39, label %if.end57.i.ef4_ethtool_set_class_rule.exit_crit_edge [
    i32 0, label %if.end57.i.if.end75.i_crit_edge
    i32 -1, label %if.end64.i
  ]

if.end57.i.if.end75.i_crit_edge:                  ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end75.i

if.end57.i.ef4_ethtool_set_class_rule.exit_crit_edge: ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ef4_ethtool_set_class_rule.exit

if.end64.i:                                       ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #18
  %41 = ptrtoint ptr %spec.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %bf.load65.i = load i32, ptr %spec.i, align 4
  %bf.set72.i = or i32 %bf.load65.i, 1048576
  store i32 %bf.set72.i, ptr %spec.i, align 4
  %42 = ptrtoint ptr %h_u.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %h_u.i, align 4
  %rem_host.i = getelementptr inbounds %struct.ef4_filter_spec, ptr %spec.i, i32 0, i32 9
  %44 = ptrtoint ptr %rem_host.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %rem_host.i, align 4
  br label %if.end75.i

if.end75.i:                                       ; preds = %if.end64.i, %if.end57.i.if.end75.i_crit_edge
  %pdst.i = getelementptr inbounds %struct.ethtool_tcpip4_spec, ptr %m_u.i, i32 0, i32 3
  %45 = ptrtoint ptr %pdst.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %pdst.i, align 2
  %47 = zext i16 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.60)
  switch i16 %46, label %if.end75.i.ef4_ethtool_set_class_rule.exit_crit_edge [
    i16 0, label %if.end75.i.if.end93.i_crit_edge
    i16 -1, label %if.end83.i
  ]

if.end75.i.if.end93.i_crit_edge:                  ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end93.i

if.end75.i.ef4_ethtool_set_class_rule.exit_crit_edge: ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ef4_ethtool_set_class_rule.exit

if.end83.i:                                       ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #18
  %48 = ptrtoint ptr %spec.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %bf.load84.i = load i32, ptr %spec.i, align 4
  %bf.set91.i = or i32 %bf.load84.i, 33554432
  store i32 %bf.set91.i, ptr %spec.i, align 4
  %pdst92.i = getelementptr inbounds %struct.ethtool_tcpip4_spec, ptr %h_u.i, i32 0, i32 3
  %49 = ptrtoint ptr %pdst92.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %pdst92.i, align 2
  %loc_port.i = getelementptr inbounds %struct.ef4_filter_spec, ptr %spec.i, i32 0, i32 10
  %51 = ptrtoint ptr %loc_port.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %loc_port.i, align 4
  br label %if.end93.i

if.end93.i:                                       ; preds = %if.end83.i, %if.end75.i.if.end93.i_crit_edge
  %psrc.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3, i32 0, i32 0, i32 2
  %52 = ptrtoint ptr %psrc.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %psrc.i, align 4
  %54 = zext i16 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.61)
  switch i16 %53, label %if.end93.i.ef4_ethtool_set_class_rule.exit_crit_edge [
    i16 0, label %if.end93.i.if.end111.i_crit_edge
    i16 -1, label %if.end101.i
  ]

if.end93.i.if.end111.i_crit_edge:                 ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end111.i

if.end93.i.ef4_ethtool_set_class_rule.exit_crit_edge: ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ef4_ethtool_set_class_rule.exit

if.end101.i:                                      ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #18
  %55 = ptrtoint ptr %spec.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %bf.load102.i = load i32, ptr %spec.i, align 4
  %bf.set109.i = or i32 %bf.load102.i, 8388608
  store i32 %bf.set109.i, ptr %spec.i, align 4
  %psrc110.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 1, i32 0, i32 0, i32 2
  %56 = ptrtoint ptr %psrc110.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %psrc110.i, align 4
  %rem_port.i = getelementptr inbounds %struct.ef4_filter_spec, ptr %spec.i, i32 0, i32 11
  %58 = ptrtoint ptr %rem_port.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %57, ptr %rem_port.i, align 2
  br label %if.end111.i

if.end111.i:                                      ; preds = %if.end101.i, %if.end93.i.if.end111.i_crit_edge
  %tos.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3, i32 0, i32 0, i32 3
  %59 = ptrtoint ptr %tos.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %tos.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool112.not.i = icmp eq i8 %60, 0
  br i1 %tobool112.not.i, label %if.end111.i.sw.epilog.i_crit_edge, label %if.end111.i.ef4_ethtool_set_class_rule.exit_crit_edge

if.end111.i.ef4_ethtool_set_class_rule.exit_crit_edge: ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ef4_ethtool_set_class_rule.exit

if.end111.i.sw.epilog.i_crit_edge:                ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.i

sw.bb115.i:                                       ; preds = %if.end27.i.sw.bb115.i_crit_edge, %if.end27.i.sw.bb115.i_crit_edge13
  %bf.set118.i = or i32 %bf.set5.i.i, 604536832
  %61 = ptrtoint ptr %spec.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %bf.set118.i, ptr %spec.i, align 4
  %ether_type119.i = getelementptr inbounds %struct.ef4_filter_spec, ptr %spec.i, i32 0, i32 6
  %62 = ptrtoint ptr %ether_type119.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 -31011, ptr %ether_type119.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and37.i)
  %cmp122.i = icmp eq i32 %and37.i, 5
  %conv125.i = select i1 %cmp122.i, i8 6, i8 17
  %ip_proto126.i = getelementptr inbounds %struct.ef4_filter_spec, ptr %spec.i, i32 0, i32 7
  %63 = ptrtoint ptr %ip_proto126.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv125.i, ptr %ip_proto126.i, align 2
  %ip6dst.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3, i32 0, i32 1
  %64 = ptrtoint ptr %ip6dst.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %ip6dst.i, align 4
  %arrayidx1.i.i = getelementptr %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3, i32 0, i32 1, i32 1
  %66 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx1.i.i, align 4
  %or.i573.i = or i32 %67, %65
  %arrayidx2.i.i = getelementptr %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3, i32 0, i32 1, i32 2
  %68 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx2.i.i, align 4
  %or3.i.i = or i32 %or.i573.i, %69
  %arrayidx4.i.i = getelementptr %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3, i32 0, i32 1, i32 3
  %70 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx4.i.i, align 4
  %or5.i.i = or i32 %or3.i.i, %71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i.i)
  %tobool.not.i.i = icmp eq i32 %or5.i.i, 0
  br i1 %tobool.not.i.i, label %sw.bb115.i.if.end145.i_crit_edge, label %if.then127.i

sw.bb115.i.if.end145.i_crit_edge:                 ; preds = %sw.bb115.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end145.i

if.then127.i:                                     ; preds = %sw.bb115.i
  %and.i.i = and i32 %67, %65
  %and3.i.i = and i32 %and.i.i, %69
  %and5.i.i = and i32 %and3.i.i, %71
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %and5.i.i)
  %tobool.not.i577.i = icmp eq i32 %and5.i.i, -1
  br i1 %tobool.not.i577.i, label %if.end132.i, label %if.then127.i.ef4_ethtool_set_class_rule.exit_crit_edge

if.then127.i.ef4_ethtool_set_class_rule.exit_crit_edge: ; preds = %if.then127.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ef4_ethtool_set_class_rule.exit

if.end132.i:                                      ; preds = %if.then127.i
  call void @__sanitizer_cov_trace_pc() #18
  %bf.set140.i = or i32 %bf.set5.i.i, 606633984
  %72 = ptrtoint ptr %spec.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %bf.set140.i, ptr %spec.i, align 4
  %loc_host141.i = getelementptr inbounds %struct.ef4_filter_spec, ptr %spec.i, i32 0, i32 8
  %ip6dst143.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 1, i32 0, i32 1
  %73 = call ptr @memcpy(ptr %loc_host141.i, ptr %ip6dst143.i, i32 16)
  br label %if.end145.i

if.end145.i:                                      ; preds = %if.end132.i, %sw.bb115.i.if.end145.i_crit_edge
  %74 = ptrtoint ptr %m_u.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %m_u.i, align 4
  %arrayidx1.i578.i = getelementptr %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3, i32 0, i32 0, i32 1
  %76 = ptrtoint ptr %arrayidx1.i578.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx1.i578.i, align 4
  %or.i579.i = or i32 %77, %75
  %arrayidx2.i580.i = getelementptr %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3, i32 0, i32 0, i32 2
  %78 = ptrtoint ptr %arrayidx2.i580.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx2.i580.i, align 4
  %or3.i581.i = or i32 %or.i579.i, %79
  %arrayidx4.i582.i = getelementptr %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3, i32 0, i32 0, i32 3
  %80 = ptrtoint ptr %arrayidx4.i582.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx4.i582.i, align 4
  %or5.i583.i = or i32 %or3.i581.i, %81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i583.i)
  %tobool.not.i584.i = icmp eq i32 %or5.i583.i, 0
  br i1 %tobool.not.i584.i, label %if.end145.i.if.end166.i_crit_edge, label %if.then148.i

if.end145.i.if.end166.i_crit_edge:                ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end166.i

if.then148.i:                                     ; preds = %if.end145.i
  %and.i586.i = and i32 %77, %75
  %and3.i588.i = and i32 %and.i586.i, %79
  %and5.i590.i = and i32 %and3.i588.i, %81
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %and5.i590.i)
  %tobool.not.i591.i = icmp eq i32 %and5.i590.i, -1
  br i1 %tobool.not.i591.i, label %if.end153.i, label %if.then148.i.ef4_ethtool_set_class_rule.exit_crit_edge

if.then148.i.ef4_ethtool_set_class_rule.exit_crit_edge: ; preds = %if.then148.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ef4_ethtool_set_class_rule.exit

if.end153.i:                                      ; preds = %if.then148.i
  call void @__sanitizer_cov_trace_pc() #18
  %82 = ptrtoint ptr %spec.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %bf.load154.i = load i32, ptr %spec.i, align 4
  %bf.set161.i = or i32 %bf.load154.i, 1048576
  store i32 %bf.set161.i, ptr %spec.i, align 4
  %rem_host162.i = getelementptr inbounds %struct.ef4_filter_spec, ptr %spec.i, i32 0, i32 9
  %83 = call ptr @memcpy(ptr %rem_host162.i, ptr %h_u.i, i32 16)
  br label %if.end166.i

if.end166.i:                                      ; preds = %if.end153.i, %if.end145.i.if.end166.i_crit_edge
  %pdst167.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3, i32 0, i32 3
  %84 = ptrtoint ptr %pdst167.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %pdst167.i, align 2
  %86 = zext i16 %85 to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values.62)
  switch i16 %85, label %if.end166.i.ef4_ethtool_set_class_rule.exit_crit_edge [
    i16 0, label %if.end166.i.if.end186.i_crit_edge
    i16 -1, label %if.end175.i
  ]

if.end166.i.if.end186.i_crit_edge:                ; preds = %if.end166.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end186.i

if.end166.i.ef4_ethtool_set_class_rule.exit_crit_edge: ; preds = %if.end166.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ef4_ethtool_set_class_rule.exit

if.end175.i:                                      ; preds = %if.end166.i
  call void @__sanitizer_cov_trace_pc() #18
  %87 = ptrtoint ptr %spec.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %bf.load176.i = load i32, ptr %spec.i, align 4
  %bf.set183.i = or i32 %bf.load176.i, 33554432
  store i32 %bf.set183.i, ptr %spec.i, align 4
  %pdst184.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 1, i32 0, i32 3
  %88 = ptrtoint ptr %pdst184.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %pdst184.i, align 2
  %loc_port185.i = getelementptr inbounds %struct.ef4_filter_spec, ptr %spec.i, i32 0, i32 10
  %90 = ptrtoint ptr %loc_port185.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %89, ptr %loc_port185.i, align 4
  br label %if.end186.i

if.end186.i:                                      ; preds = %if.end175.i, %if.end166.i.if.end186.i_crit_edge
  %psrc187.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3, i32 0, i32 2
  %91 = ptrtoint ptr %psrc187.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %psrc187.i, align 4
  %93 = zext i16 %92 to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values.63)
  switch i16 %92, label %if.end186.i.ef4_ethtool_set_class_rule.exit_crit_edge [
    i16 0, label %if.end186.i.if.end206.i_crit_edge
    i16 -1, label %if.end195.i
  ]

if.end186.i.if.end206.i_crit_edge:                ; preds = %if.end186.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end206.i

if.end186.i.ef4_ethtool_set_class_rule.exit_crit_edge: ; preds = %if.end186.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ef4_ethtool_set_class_rule.exit

if.end195.i:                                      ; preds = %if.end186.i
  call void @__sanitizer_cov_trace_pc() #18
  %94 = ptrtoint ptr %spec.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %bf.load196.i = load i32, ptr %spec.i, align 4
  %bf.set203.i = or i32 %bf.load196.i, 8388608
  store i32 %bf.set203.i, ptr %spec.i, align 4
  %psrc204.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 1, i32 0, i32 2
  %95 = ptrtoint ptr %psrc204.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %psrc204.i, align 4
  %rem_port205.i = getelementptr inbounds %struct.ef4_filter_spec, ptr %spec.i, i32 0, i32 11
  %97 = ptrtoint ptr %rem_port205.i to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %96, ptr %rem_port205.i, align 2
  br label %if.end206.i

if.end206.i:                                      ; preds = %if.end195.i, %if.end186.i.if.end206.i_crit_edge
  %tclass.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3, i32 0, i32 4
  %98 = ptrtoint ptr %tclass.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %tclass.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool207.not.i = icmp eq i8 %99, 0
  br i1 %tobool207.not.i, label %if.end206.i.sw.epilog.i_crit_edge, label %if.end206.i.ef4_ethtool_set_class_rule.exit_crit_edge

if.end206.i.ef4_ethtool_set_class_rule.exit_crit_edge: ; preds = %if.end206.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ef4_ethtool_set_class_rule.exit

if.end206.i.sw.epilog.i_crit_edge:                ; preds = %if.end206.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.i

sw.bb210.i:                                       ; preds = %if.end27.i
  %l4_4_bytes.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3, i32 0, i32 0, i32 2
  %100 = ptrtoint ptr %l4_4_bytes.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %l4_4_bytes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool211.not.i = icmp eq i32 %101, 0
  br i1 %tobool211.not.i, label %lor.lhs.false212.i, label %sw.bb210.i.ef4_ethtool_set_class_rule.exit_crit_edge

sw.bb210.i.ef4_ethtool_set_class_rule.exit_crit_edge: ; preds = %sw.bb210.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ef4_ethtool_set_class_rule.exit

lor.lhs.false212.i:                               ; preds = %sw.bb210.i
  %tos213.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3, i32 0, i32 0, i32 3
  %102 = ptrtoint ptr %tos213.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %tos213.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool215.not.i = icmp eq i8 %103, 0
  br i1 %tobool215.not.i, label %lor.lhs.false216.i, label %lor.lhs.false212.i.ef4_ethtool_set_class_rule.exit_crit_edge

lor.lhs.false212.i.ef4_ethtool_set_class_rule.exit_crit_edge: ; preds = %lor.lhs.false212.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ef4_ethtool_set_class_rule.exit

lor.lhs.false216.i:                               ; preds = %lor.lhs.false212.i
  %ip_ver.i = getelementptr inbounds %struct.ethtool_usrip4_spec, ptr %m_u.i, i32 0, i32 4
  %104 = ptrtoint ptr %ip_ver.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %ip_ver.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool218.not.i = icmp eq i8 %105, 0
  br i1 %tobool218.not.i, label %lor.lhs.false219.i, label %lor.lhs.false216.i.ef4_ethtool_set_class_rule.exit_crit_edge

lor.lhs.false216.i.ef4_ethtool_set_class_rule.exit_crit_edge: ; preds = %lor.lhs.false216.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ef4_ethtool_set_class_rule.exit

lor.lhs.false219.i:                               ; preds = %lor.lhs.false216.i
  %ip_ver220.i = getelementptr inbounds %struct.ethtool_usrip4_spec, ptr %h_u.i, i32 0, i32 4
  %106 = ptrtoint ptr %ip_ver220.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %ip_ver220.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %107)
  %cmp222.not.i = icmp eq i8 %107, 1
  br i1 %cmp222.not.i, label %if.end225.i, label %lor.lhs.false219.i.ef4_ethtool_set_class_rule.exit_crit_edge

lor.lhs.false219.i.ef4_ethtool_set_class_rule.exit_crit_edge: ; preds = %lor.lhs.false219.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ef4_ethtool_set_class_rule.exit

if.end225.i:                                      ; preds = %lor.lhs.false219.i
  %bf.set228.i = or i32 %bf.set5.i.i, 67665920
  %108 = ptrtoint ptr %spec.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %bf.set228.i, ptr %spec.i, align 4
  %ether_type229.i = getelementptr inbounds %struct.ef4_filter_spec, ptr %spec.i, i32 0, i32 6
  %109 = ptrtoint ptr %ether_type229.i to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 2048, ptr %ether_type229.i, align 4
  %ip4dst230.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3, i32 0, i32 0, i32 1
  %110 = ptrtoint ptr %ip4dst230.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %ip4dst230.i, align 4
  %112 = zext i32 %111 to i64
  call void @__sanitizer_cov_trace_switch(i64 %112, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %111, label %if.end225.i.ef4_ethtool_set_class_rule.exit_crit_edge [
    i32 0, label %if.end225.i.if.end249.i_crit_edge
    i32 -1, label %if.end237.i
  ]

if.end225.i.if.end249.i_crit_edge:                ; preds = %if.end225.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end249.i

if.end225.i.ef4_ethtool_set_class_rule.exit_crit_edge: ; preds = %if.end225.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ef4_ethtool_set_class_rule.exit

if.end237.i:                                      ; preds = %if.end225.i
  call void @__sanitizer_cov_trace_pc() #18
  %bf.set245.i = or i32 %bf.set5.i.i, 69763072
  %113 = ptrtoint ptr %spec.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %bf.set245.i, ptr %spec.i, align 4
  %ip4dst246.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 1, i32 0, i32 0, i32 1
  %114 = ptrtoint ptr %ip4dst246.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %ip4dst246.i, align 4
  %loc_host247.i = getelementptr inbounds %struct.ef4_filter_spec, ptr %spec.i, i32 0, i32 8
  %116 = ptrtoint ptr %loc_host247.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %loc_host247.i, align 4
  br label %if.end249.i

if.end249.i:                                      ; preds = %if.end237.i, %if.end225.i.if.end249.i_crit_edge
  %117 = ptrtoint ptr %m_u.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %m_u.i, align 4
  %119 = zext i32 %118 to i64
  call void @__sanitizer_cov_trace_switch(i64 %119, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %118, label %if.end249.i.ef4_ethtool_set_class_rule.exit_crit_edge [
    i32 0, label %if.end249.i.if.end269.i_crit_edge
    i32 -1, label %if.end257.i
  ]

if.end249.i.if.end269.i_crit_edge:                ; preds = %if.end249.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end269.i

if.end249.i.ef4_ethtool_set_class_rule.exit_crit_edge: ; preds = %if.end249.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ef4_ethtool_set_class_rule.exit

if.end257.i:                                      ; preds = %if.end249.i
  call void @__sanitizer_cov_trace_pc() #18
  %120 = ptrtoint ptr %spec.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %bf.load258.i = load i32, ptr %spec.i, align 4
  %bf.set265.i = or i32 %bf.load258.i, 1048576
  store i32 %bf.set265.i, ptr %spec.i, align 4
  %121 = ptrtoint ptr %h_u.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %h_u.i, align 4
  %rem_host267.i = getelementptr inbounds %struct.ef4_filter_spec, ptr %spec.i, i32 0, i32 9
  %123 = ptrtoint ptr %rem_host267.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %rem_host267.i, align 4
  br label %if.end269.i

if.end269.i:                                      ; preds = %if.end257.i, %if.end249.i.if.end269.i_crit_edge
  %proto.i = getelementptr inbounds %struct.ethtool_usrip4_spec, ptr %m_u.i, i32 0, i32 5
  %124 = ptrtoint ptr %proto.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %proto.i, align 2
  %126 = zext i8 %125 to i64
  call void @__sanitizer_cov_trace_switch(i64 %126, ptr @__sancov_gen_cov_switch_values.66)
  switch i8 %125, label %if.end269.i.ef4_ethtool_set_class_rule.exit_crit_edge [
    i8 0, label %if.end269.i.sw.epilog.i_crit_edge
    i8 -1, label %if.end277.i
  ]

if.end269.i.sw.epilog.i_crit_edge:                ; preds = %if.end269.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.i

if.end269.i.ef4_ethtool_set_class_rule.exit_crit_edge: ; preds = %if.end269.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ef4_ethtool_set_class_rule.exit

if.end277.i:                                      ; preds = %if.end269.i
  call void @__sanitizer_cov_trace_pc() #18
  %127 = ptrtoint ptr %spec.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %bf.load278.i = load i32, ptr %spec.i, align 4
  %bf.set285.i = or i32 %bf.load278.i, 536870912
  store i32 %bf.set285.i, ptr %spec.i, align 4
  %proto286.i = getelementptr inbounds %struct.ethtool_usrip4_spec, ptr %h_u.i, i32 0, i32 5
  %128 = ptrtoint ptr %proto286.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %proto286.i, align 2
  %ip_proto287.i = getelementptr inbounds %struct.ef4_filter_spec, ptr %spec.i, i32 0, i32 7
  %130 = ptrtoint ptr %ip_proto287.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %129, ptr %ip_proto287.i, align 2
  br label %sw.epilog.i

sw.bb289.i:                                       ; preds = %if.end27.i
  %l4_4_bytes290.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3, i32 0, i32 2
  %131 = ptrtoint ptr %l4_4_bytes290.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %l4_4_bytes290.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %tobool291.not.i = icmp eq i32 %132, 0
  br i1 %tobool291.not.i, label %lor.lhs.false292.i, label %sw.bb289.i.ef4_ethtool_set_class_rule.exit_crit_edge

sw.bb289.i.ef4_ethtool_set_class_rule.exit_crit_edge: ; preds = %sw.bb289.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ef4_ethtool_set_class_rule.exit

lor.lhs.false292.i:                               ; preds = %sw.bb289.i
  %tclass293.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3, i32 0, i32 4
  %133 = ptrtoint ptr %tclass293.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %tclass293.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %tobool295.not.i = icmp eq i8 %134, 0
  br i1 %tobool295.not.i, label %if.end297.i, label %lor.lhs.false292.i.ef4_ethtool_set_class_rule.exit_crit_edge

lor.lhs.false292.i.ef4_ethtool_set_class_rule.exit_crit_edge: ; preds = %lor.lhs.false292.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ef4_ethtool_set_class_rule.exit

if.end297.i:                                      ; preds = %lor.lhs.false292.i
  %bf.set300.i = or i32 %bf.set5.i.i, 67665920
  %135 = ptrtoint ptr %spec.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %bf.set300.i, ptr %spec.i, align 4
  %ether_type301.i = getelementptr inbounds %struct.ef4_filter_spec, ptr %spec.i, i32 0, i32 6
  %136 = ptrtoint ptr %ether_type301.i to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 -31011, ptr %ether_type301.i, align 4
  %ip6dst302.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3, i32 0, i32 1
  %137 = ptrtoint ptr %ip6dst302.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %ip6dst302.i, align 4
  %arrayidx1.i592.i = getelementptr %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3, i32 0, i32 1, i32 1
  %139 = ptrtoint ptr %arrayidx1.i592.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %arrayidx1.i592.i, align 4
  %or.i593.i = or i32 %140, %138
  %arrayidx2.i594.i = getelementptr %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3, i32 0, i32 1, i32 2
  %141 = ptrtoint ptr %arrayidx2.i594.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %arrayidx2.i594.i, align 4
  %or3.i595.i = or i32 %or.i593.i, %142
  %arrayidx4.i596.i = getelementptr %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3, i32 0, i32 1, i32 3
  %143 = ptrtoint ptr %arrayidx4.i596.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %arrayidx4.i596.i, align 4
  %or5.i597.i = or i32 %or3.i595.i, %144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i597.i)
  %tobool.not.i598.i = icmp eq i32 %or5.i597.i, 0
  br i1 %tobool.not.i598.i, label %if.end297.i.if.end323.i_crit_edge, label %if.then305.i

if.end297.i.if.end323.i_crit_edge:                ; preds = %if.end297.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end323.i

if.then305.i:                                     ; preds = %if.end297.i
  %and.i600.i = and i32 %140, %138
  %and3.i602.i = and i32 %and.i600.i, %142
  %and5.i604.i = and i32 %and3.i602.i, %144
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %and5.i604.i)
  %tobool.not.i605.i = icmp eq i32 %and5.i604.i, -1
  br i1 %tobool.not.i605.i, label %if.end310.i, label %if.then305.i.ef4_ethtool_set_class_rule.exit_crit_edge

if.then305.i.ef4_ethtool_set_class_rule.exit_crit_edge: ; preds = %if.then305.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ef4_ethtool_set_class_rule.exit

if.end310.i:                                      ; preds = %if.then305.i
  call void @__sanitizer_cov_trace_pc() #18
  %bf.set318.i = or i32 %bf.set5.i.i, 69763072
  %145 = ptrtoint ptr %spec.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %bf.set318.i, ptr %spec.i, align 4
  %loc_host319.i = getelementptr inbounds %struct.ef4_filter_spec, ptr %spec.i, i32 0, i32 8
  %ip6dst321.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 1, i32 0, i32 1
  %146 = call ptr @memcpy(ptr %loc_host319.i, ptr %ip6dst321.i, i32 16)
  br label %if.end323.i

if.end323.i:                                      ; preds = %if.end310.i, %if.end297.i.if.end323.i_crit_edge
  %147 = ptrtoint ptr %m_u.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %m_u.i, align 4
  %arrayidx1.i606.i = getelementptr %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3, i32 0, i32 0, i32 1
  %149 = ptrtoint ptr %arrayidx1.i606.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %arrayidx1.i606.i, align 4
  %or.i607.i = or i32 %150, %148
  %arrayidx2.i608.i = getelementptr %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3, i32 0, i32 0, i32 2
  %151 = ptrtoint ptr %arrayidx2.i608.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %arrayidx2.i608.i, align 4
  %or3.i609.i = or i32 %or.i607.i, %152
  %arrayidx4.i610.i = getelementptr %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3, i32 0, i32 0, i32 3
  %153 = ptrtoint ptr %arrayidx4.i610.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %arrayidx4.i610.i, align 4
  %or5.i611.i = or i32 %or3.i609.i, %154
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i611.i)
  %tobool.not.i612.i = icmp eq i32 %or5.i611.i, 0
  br i1 %tobool.not.i612.i, label %if.end323.i.if.end345.i_crit_edge, label %if.then327.i

if.end323.i.if.end345.i_crit_edge:                ; preds = %if.end323.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end345.i

if.then327.i:                                     ; preds = %if.end323.i
  %and.i614.i = and i32 %150, %148
  %and3.i616.i = and i32 %and.i614.i, %152
  %and5.i618.i = and i32 %and3.i616.i, %154
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %and5.i618.i)
  %tobool.not.i619.i = icmp eq i32 %and5.i618.i, -1
  br i1 %tobool.not.i619.i, label %if.end332.i, label %if.then327.i.ef4_ethtool_set_class_rule.exit_crit_edge

if.then327.i.ef4_ethtool_set_class_rule.exit_crit_edge: ; preds = %if.then327.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ef4_ethtool_set_class_rule.exit

if.end332.i:                                      ; preds = %if.then327.i
  call void @__sanitizer_cov_trace_pc() #18
  %155 = ptrtoint ptr %spec.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %bf.load333.i = load i32, ptr %spec.i, align 4
  %bf.set340.i = or i32 %bf.load333.i, 1048576
  store i32 %bf.set340.i, ptr %spec.i, align 4
  %rem_host341.i = getelementptr inbounds %struct.ef4_filter_spec, ptr %spec.i, i32 0, i32 9
  %156 = call ptr @memcpy(ptr %rem_host341.i, ptr %h_u.i, i32 16)
  br label %if.end345.i

if.end345.i:                                      ; preds = %if.end332.i, %if.end323.i.if.end345.i_crit_edge
  %l4_proto.i = getelementptr inbounds %struct.ethtool_usrip6_spec, ptr %m_u.i, i32 0, i32 4
  %157 = ptrtoint ptr %l4_proto.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %l4_proto.i, align 1
  %159 = zext i8 %158 to i64
  call void @__sanitizer_cov_trace_switch(i64 %159, ptr @__sancov_gen_cov_switch_values.67)
  switch i8 %158, label %if.end345.i.ef4_ethtool_set_class_rule.exit_crit_edge [
    i8 0, label %if.end345.i.sw.epilog.i_crit_edge
    i8 -1, label %if.end353.i
  ]

if.end345.i.sw.epilog.i_crit_edge:                ; preds = %if.end345.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.i

if.end345.i.ef4_ethtool_set_class_rule.exit_crit_edge: ; preds = %if.end345.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ef4_ethtool_set_class_rule.exit

if.end353.i:                                      ; preds = %if.end345.i
  call void @__sanitizer_cov_trace_pc() #18
  %160 = ptrtoint ptr %spec.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %bf.load354.i = load i32, ptr %spec.i, align 4
  %bf.set361.i = or i32 %bf.load354.i, 536870912
  store i32 %bf.set361.i, ptr %spec.i, align 4
  %l4_proto362.i = getelementptr inbounds %struct.ethtool_usrip6_spec, ptr %h_u.i, i32 0, i32 4
  %161 = ptrtoint ptr %l4_proto362.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %l4_proto362.i, align 1
  %ip_proto363.i = getelementptr inbounds %struct.ef4_filter_spec, ptr %spec.i, i32 0, i32 7
  %163 = ptrtoint ptr %ip_proto363.i to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 %162, ptr %ip_proto363.i, align 2
  br label %sw.epilog.i

sw.bb365.i:                                       ; preds = %if.end27.i
  %164 = ptrtoint ptr %m_u.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %m_u.i, align 4
  %add.ptr.i.i = getelementptr %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3, i32 0, i32 0, i32 1
  %166 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %167 to i32
  %or.i620.i = or i32 %165, %conv.i.i
  %168 = zext i32 %or.i620.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %168, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %or.i620.i, label %if.else.i [
    i32 0, label %sw.bb365.i.if.end399.i_crit_edge
    i32 16777216, label %sw.bb365.i.if.end395.i_crit_edge
  ]

sw.bb365.i.if.end395.i_crit_edge:                 ; preds = %sw.bb365.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end395.i

sw.bb365.i.if.end399.i_crit_edge:                 ; preds = %sw.bb365.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end399.i

if.else.i:                                        ; preds = %sw.bb365.i
  %169 = ptrtoint ptr %m_u.i to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %m_u.i, align 2
  %add.ptr1.i.i = getelementptr i8, ptr %m_u.i, i32 2
  %171 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %171)
  %172 = load i16, ptr %add.ptr1.i.i, align 2
  %and9.i.i = and i16 %170, %167
  %and510.i.i = and i16 %and9.i.i, %172
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i.i)
  %cmp.i624.i = icmp eq i16 %and510.i.i, -1
  br i1 %cmp.i624.i, label %if.else.i.if.end395.i_crit_edge, label %if.else.i.ef4_ethtool_set_class_rule.exit_crit_edge

if.else.i.ef4_ethtool_set_class_rule.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ef4_ethtool_set_class_rule.exit

if.else.i.if.end395.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end395.i

if.end395.i:                                      ; preds = %if.else.i.if.end395.i_crit_edge, %sw.bb365.i.if.end395.i_crit_edge
  %.sink.i = phi i32 [ 1074298880, %sw.bb365.i.if.end395.i_crit_edge ], [ 17334272, %if.else.i.if.end395.i_crit_edge ]
  %bf.set392.i = or i32 %.sink.i, %bf.set5.i.i
  %173 = ptrtoint ptr %spec.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %bf.set392.i, ptr %spec.i, align 4
  %loc_mac.i = getelementptr inbounds %struct.ef4_filter_spec, ptr %spec.i, i32 0, i32 4
  %174 = ptrtoint ptr %h_u.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %h_u.i, align 4
  %176 = ptrtoint ptr %loc_mac.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %175, ptr %loc_mac.i, align 4
  %add.ptr.i625.i = getelementptr %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 1, i32 0, i32 0, i32 1
  %177 = ptrtoint ptr %add.ptr.i625.i to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %add.ptr.i625.i, align 2
  %add.ptr1.i626.i = getelementptr inbounds %struct.ef4_filter_spec, ptr %spec.i, i32 0, i32 4, i32 4
  %179 = ptrtoint ptr %add.ptr1.i626.i to i32
  call void @__asan_store2_noabort(i32 %179)
  store i16 %178, ptr %add.ptr1.i626.i, align 4
  br label %if.end399.i

if.end399.i:                                      ; preds = %if.end395.i, %sw.bb365.i.if.end399.i_crit_edge
  %h_source.i = getelementptr inbounds %struct.ethhdr, ptr %m_u.i, i32 0, i32 1
  %180 = ptrtoint ptr %h_source.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %h_source.i, align 4
  %add.ptr.i627.i = getelementptr %struct.ethhdr, ptr %m_u.i, i32 0, i32 1, i32 4
  %182 = ptrtoint ptr %add.ptr.i627.i to i32
  call void @__asan_load2_noabort(i32 %182)
  %183 = load i16, ptr %add.ptr.i627.i, align 2
  %conv.i628.i = zext i16 %183 to i32
  %or.i629.i = or i32 %181, %conv.i628.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i629.i)
  %cmp.i630.i = icmp eq i32 %or.i629.i, 0
  br i1 %cmp.i630.i, label %if.end399.i.if.end419.i_crit_edge, label %if.then402.i

if.end399.i.if.end419.i_crit_edge:                ; preds = %if.end399.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end419.i

if.then402.i:                                     ; preds = %if.end399.i
  %184 = ptrtoint ptr %h_source.i to i32
  call void @__asan_load2_noabort(i32 %184)
  %185 = load i16, ptr %h_source.i, align 2
  %add.ptr1.i631.i = getelementptr %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3, i32 0, i32 0, i32 2
  %186 = ptrtoint ptr %add.ptr1.i631.i to i32
  call void @__asan_load2_noabort(i32 %186)
  %187 = load i16, ptr %add.ptr1.i631.i, align 2
  %and9.i632.i = and i16 %185, %183
  %and510.i634.i = and i16 %and9.i632.i, %187
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i634.i)
  %cmp.i635.i = icmp eq i16 %and510.i634.i, -1
  br i1 %cmp.i635.i, label %if.end407.i, label %if.then402.i.ef4_ethtool_set_class_rule.exit_crit_edge

if.then402.i.ef4_ethtool_set_class_rule.exit_crit_edge: ; preds = %if.then402.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ef4_ethtool_set_class_rule.exit

if.end407.i:                                      ; preds = %if.then402.i
  call void @__sanitizer_cov_trace_pc() #18
  %188 = ptrtoint ptr %spec.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %bf.load408.i = load i32, ptr %spec.i, align 4
  %bf.set415.i = or i32 %bf.load408.i, 4194304
  store i32 %bf.set415.i, ptr %spec.i, align 4
  %rem_mac.i = getelementptr inbounds %struct.ef4_filter_spec, ptr %spec.i, i32 0, i32 5
  %h_source417.i = getelementptr inbounds %struct.ethhdr, ptr %h_u.i, i32 0, i32 1
  %189 = ptrtoint ptr %h_source417.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %h_source417.i, align 4
  %191 = ptrtoint ptr %rem_mac.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %190, ptr %rem_mac.i, align 4
  %add.ptr.i636.i = getelementptr %struct.ethhdr, ptr %h_u.i, i32 0, i32 1, i32 4
  %192 = ptrtoint ptr %add.ptr.i636.i to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %add.ptr.i636.i, align 2
  %add.ptr1.i637.i = getelementptr inbounds %struct.ef4_filter_spec, ptr %spec.i, i32 0, i32 5, i32 4
  %194 = ptrtoint ptr %add.ptr1.i637.i to i32
  call void @__asan_store2_noabort(i32 %194)
  store i16 %193, ptr %add.ptr1.i637.i, align 2
  br label %if.end419.i

if.end419.i:                                      ; preds = %if.end407.i, %if.end399.i.if.end419.i_crit_edge
  %h_proto.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 3, i32 0, i32 0, i32 3
  %195 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_loadN_noabort(i32 %195, i32 2)
  %196 = load i16, ptr %h_proto.i, align 1
  %197 = zext i16 %196 to i64
  call void @__sanitizer_cov_trace_switch(i64 %197, ptr @__sancov_gen_cov_switch_values.69)
  switch i16 %196, label %if.end419.i.ef4_ethtool_set_class_rule.exit_crit_edge [
    i16 0, label %if.end419.i.sw.epilog.i_crit_edge
    i16 -1, label %if.end427.i
  ]

if.end419.i.sw.epilog.i_crit_edge:                ; preds = %if.end419.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.i

if.end419.i.ef4_ethtool_set_class_rule.exit_crit_edge: ; preds = %if.end419.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ef4_ethtool_set_class_rule.exit

if.end427.i:                                      ; preds = %if.end419.i
  call void @__sanitizer_cov_trace_pc() #18
  %198 = ptrtoint ptr %spec.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %bf.load428.i = load i32, ptr %spec.i, align 4
  %bf.set435.i = or i32 %bf.load428.i, 67108864
  store i32 %bf.set435.i, ptr %spec.i, align 4
  %h_proto436.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 1, i32 0, i32 0, i32 3
  %199 = ptrtoint ptr %h_proto436.i to i32
  call void @__asan_loadN_noabort(i32 %199, i32 2)
  %200 = load i16, ptr %h_proto436.i, align 1
  %ether_type437.i = getelementptr inbounds %struct.ef4_filter_spec, ptr %spec.i, i32 0, i32 6
  %201 = ptrtoint ptr %ether_type437.i to i32
  call void @__asan_store2_noabort(i32 %201)
  store i16 %200, ptr %ether_type437.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.end427.i, %if.end419.i.sw.epilog.i_crit_edge, %if.end353.i, %if.end345.i.sw.epilog.i_crit_edge, %if.end277.i, %if.end269.i.sw.epilog.i_crit_edge, %if.end206.i.sw.epilog.i_crit_edge, %if.end111.i.sw.epilog.i_crit_edge
  %202 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %fs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %203)
  %tobool441.not.i = icmp sgt i32 %203, -1
  br i1 %tobool441.not.i, label %sw.epilog.i.if.end463.i_crit_edge, label %land.lhs.true442.i

sw.epilog.i.if.end463.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end463.i

land.lhs.true442.i:                               ; preds = %sw.epilog.i
  %vlan_tci.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 4, i32 3
  %204 = ptrtoint ptr %vlan_tci.i to i32
  call void @__asan_load2_noabort(i32 %204)
  %205 = load i16, ptr %vlan_tci.i, align 2
  %206 = zext i16 %205 to i64
  call void @__sanitizer_cov_trace_switch(i64 %206, ptr @__sancov_gen_cov_switch_values.70)
  switch i16 %205, label %land.lhs.true442.i.ef4_ethtool_set_class_rule.exit_crit_edge [
    i16 0, label %land.lhs.true442.i.if.end463.i_crit_edge
    i16 4095, label %if.end453.i
  ]

land.lhs.true442.i.if.end463.i_crit_edge:         ; preds = %land.lhs.true442.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end463.i

land.lhs.true442.i.ef4_ethtool_set_class_rule.exit_crit_edge: ; preds = %land.lhs.true442.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ef4_ethtool_set_class_rule.exit

if.end453.i:                                      ; preds = %land.lhs.true442.i
  call void @__sanitizer_cov_trace_pc() #18
  %207 = ptrtoint ptr %spec.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %bf.load454.i = load i32, ptr %spec.i, align 4
  %bf.set461.i = or i32 %bf.load454.i, 268435456
  store i32 %bf.set461.i, ptr %spec.i, align 4
  %vlan_tci462.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 2, i32 3
  %208 = ptrtoint ptr %vlan_tci462.i to i32
  call void @__asan_load2_noabort(i32 %208)
  %209 = load i16, ptr %vlan_tci462.i, align 2
  %210 = ptrtoint ptr %23 to i32
  call void @__asan_store2_noabort(i32 %210)
  store i16 %209, ptr %23, align 4
  br label %if.end463.i

if.end463.i:                                      ; preds = %if.end453.i, %land.lhs.true442.i.if.end463.i_crit_edge, %sw.epilog.i.if.end463.i_crit_edge
  %211 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %type.i, align 4
  %filter_insert.i.i = getelementptr inbounds %struct.ef4_nic_type, ptr %212, i32 0, i32 62
  %213 = ptrtoint ptr %filter_insert.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %filter_insert.i.i, align 8
  %call.i.i = call i32 %214(ptr noundef %add.ptr.i, ptr noundef nonnull %spec.i, i1 noundef zeroext true) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp465.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp465.i, label %if.end463.i.ef4_ethtool_set_class_rule.exit_crit_edge, label %if.end468.i

if.end463.i.ef4_ethtool_set_class_rule.exit_crit_edge: ; preds = %if.end463.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ef4_ethtool_set_class_rule.exit

if.end468.i:                                      ; preds = %if.end463.i
  call void @__sanitizer_cov_trace_pc() #18
  %215 = ptrtoint ptr %location.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 %call.i.i, ptr %location.i, align 8
  br label %ef4_ethtool_set_class_rule.exit

ef4_ethtool_set_class_rule.exit:                  ; preds = %if.end468.i, %if.end463.i.ef4_ethtool_set_class_rule.exit_crit_edge, %land.lhs.true442.i.ef4_ethtool_set_class_rule.exit_crit_edge, %if.end419.i.ef4_ethtool_set_class_rule.exit_crit_edge, %if.then402.i.ef4_ethtool_set_class_rule.exit_crit_edge, %if.else.i.ef4_ethtool_set_class_rule.exit_crit_edge, %if.end345.i.ef4_ethtool_set_class_rule.exit_crit_edge, %if.then327.i.ef4_ethtool_set_class_rule.exit_crit_edge, %if.then305.i.ef4_ethtool_set_class_rule.exit_crit_edge, %lor.lhs.false292.i.ef4_ethtool_set_class_rule.exit_crit_edge, %sw.bb289.i.ef4_ethtool_set_class_rule.exit_crit_edge, %if.end269.i.ef4_ethtool_set_class_rule.exit_crit_edge, %if.end249.i.ef4_ethtool_set_class_rule.exit_crit_edge, %if.end225.i.ef4_ethtool_set_class_rule.exit_crit_edge, %lor.lhs.false219.i.ef4_ethtool_set_class_rule.exit_crit_edge, %lor.lhs.false216.i.ef4_ethtool_set_class_rule.exit_crit_edge, %lor.lhs.false212.i.ef4_ethtool_set_class_rule.exit_crit_edge, %sw.bb210.i.ef4_ethtool_set_class_rule.exit_crit_edge, %if.end206.i.ef4_ethtool_set_class_rule.exit_crit_edge, %if.end186.i.ef4_ethtool_set_class_rule.exit_crit_edge, %if.end166.i.ef4_ethtool_set_class_rule.exit_crit_edge, %if.then148.i.ef4_ethtool_set_class_rule.exit_crit_edge, %if.then127.i.ef4_ethtool_set_class_rule.exit_crit_edge, %if.end111.i.ef4_ethtool_set_class_rule.exit_crit_edge, %if.end93.i.ef4_ethtool_set_class_rule.exit_crit_edge, %if.end75.i.ef4_ethtool_set_class_rule.exit_crit_edge, %if.end57.i.ef4_ethtool_set_class_rule.exit_crit_edge, %sw.bb.i.ef4_ethtool_set_class_rule.exit_crit_edge, %if.end27.i.ef4_ethtool_set_class_rule.exit_crit_edge, %lor.lhs.false21.i.ef4_ethtool_set_class_rule.exit_crit_edge, %lor.lhs.false.i.ef4_ethtool_set_class_rule.exit_crit_edge, %land.lhs.true16.i.ef4_ethtool_set_class_rule.exit_crit_edge, %if.end.i.ef4_ethtool_set_class_rule.exit_crit_edge, %sw.bb.ef4_ethtool_set_class_rule.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end468.i ], [ -22, %sw.bb.ef4_ethtool_set_class_rule.exit_crit_edge ], [ -22, %if.end.i.ef4_ethtool_set_class_rule.exit_crit_edge ], [ -22, %lor.lhs.false21.i.ef4_ethtool_set_class_rule.exit_crit_edge ], [ -22, %lor.lhs.false.i.ef4_ethtool_set_class_rule.exit_crit_edge ], [ -22, %land.lhs.true16.i.ef4_ethtool_set_class_rule.exit_crit_edge ], [ -22, %sw.bb.i.ef4_ethtool_set_class_rule.exit_crit_edge ], [ -22, %if.end57.i.ef4_ethtool_set_class_rule.exit_crit_edge ], [ -22, %if.end75.i.ef4_ethtool_set_class_rule.exit_crit_edge ], [ -22, %if.end93.i.ef4_ethtool_set_class_rule.exit_crit_edge ], [ -22, %if.end111.i.ef4_ethtool_set_class_rule.exit_crit_edge ], [ -22, %if.then127.i.ef4_ethtool_set_class_rule.exit_crit_edge ], [ -22, %if.then148.i.ef4_ethtool_set_class_rule.exit_crit_edge ], [ -22, %if.end166.i.ef4_ethtool_set_class_rule.exit_crit_edge ], [ -22, %if.end186.i.ef4_ethtool_set_class_rule.exit_crit_edge ], [ -22, %if.end206.i.ef4_ethtool_set_class_rule.exit_crit_edge ], [ -22, %lor.lhs.false219.i.ef4_ethtool_set_class_rule.exit_crit_edge ], [ -22, %lor.lhs.false216.i.ef4_ethtool_set_class_rule.exit_crit_edge ], [ -22, %lor.lhs.false212.i.ef4_ethtool_set_class_rule.exit_crit_edge ], [ -22, %sw.bb210.i.ef4_ethtool_set_class_rule.exit_crit_edge ], [ -22, %if.end225.i.ef4_ethtool_set_class_rule.exit_crit_edge ], [ -22, %if.end249.i.ef4_ethtool_set_class_rule.exit_crit_edge ], [ -22, %if.end269.i.ef4_ethtool_set_class_rule.exit_crit_edge ], [ -22, %lor.lhs.false292.i.ef4_ethtool_set_class_rule.exit_crit_edge ], [ -22, %sw.bb289.i.ef4_ethtool_set_class_rule.exit_crit_edge ], [ -22, %if.then305.i.ef4_ethtool_set_class_rule.exit_crit_edge ], [ -22, %if.then327.i.ef4_ethtool_set_class_rule.exit_crit_edge ], [ -22, %if.end345.i.ef4_ethtool_set_class_rule.exit_crit_edge ], [ -22, %if.else.i.ef4_ethtool_set_class_rule.exit_crit_edge ], [ -22, %if.then402.i.ef4_ethtool_set_class_rule.exit_crit_edge ], [ -22, %if.end419.i.ef4_ethtool_set_class_rule.exit_crit_edge ], [ -22, %if.end27.i.ef4_ethtool_set_class_rule.exit_crit_edge ], [ -22, %land.lhs.true442.i.ef4_ethtool_set_class_rule.exit_crit_edge ], [ %call.i.i, %if.end463.i.ef4_ethtool_set_class_rule.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %spec.i) #16
  br label %cleanup

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %location = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 6
  %216 = ptrtoint ptr %location to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %location, align 8
  %218 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %type.i, align 4
  %filter_remove_safe.i = getelementptr inbounds %struct.ef4_nic_type, ptr %219, i32 0, i32 63
  %220 = ptrtoint ptr %filter_remove_safe.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %filter_remove_safe.i, align 4
  %call.i11 = tail call i32 %221(ptr noundef %add.ptr.i, i32 noundef 2, i32 noundef %217) #16
  br label %cleanup

cleanup:                                          ; preds = %sw.bb3, %ef4_ethtool_set_class_rule.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i11, %sw.bb3 ], [ %retval.0.i, %ef4_ethtool_set_class_rule.exit ], [ -95, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ef4_ethtool_reset(ptr noundef %net_dev, ptr noundef %flags) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr i8, ptr %net_dev, i32 2348
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 4
  %map_reset_flags = getelementptr inbounds %struct.ef4_nic_type, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %map_reset_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map_reset_flags, align 4
  %call1 = tail call i32 %3(ptr noundef %flags) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %call2 = tail call i32 @ef4_reset(ptr noundef %add.ptr.i, i32 noundef %call1) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ef4_ethtool_get_rxfh_indir_size(ptr nocapture noundef readonly %net_dev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %type.i = getelementptr i8, ptr %net_dev, i32 2348
  %0 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type.i, align 4
  %revision.i = getelementptr inbounds %struct.ef4_nic_type, ptr %1, i32 0, i32 79
  %2 = ptrtoint ptr %revision.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %revision.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp slt i32 %3, 2
  br i1 %cmp, label %entry.lor.end_crit_edge, label %lor.rhs

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %n_rx_channels = getelementptr i8, ptr %net_dev, i32 3672
  %4 = ptrtoint ptr %n_rx_channels to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_rx_channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp2 = icmp eq i32 %5, 1
  %phi.sel = select i1 %cmp2, i32 0, i32 128
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %6 = phi i32 [ 0, %entry.lor.end_crit_edge ], [ %phi.sel, %lor.rhs ]
  ret i32 %6
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ef4_ethtool_get_rxfh(ptr nocapture noundef readonly %net_dev, ptr noundef writeonly %indir, ptr nocapture noundef readnone %key, ptr noundef writeonly %hfunc) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %hfunc, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %0 = ptrtoint ptr %hfunc to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %hfunc, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool1.not = icmp eq ptr %indir, null
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %rx_indir_table = getelementptr i8, ptr %net_dev, i32 3772
  %1 = call ptr @memcpy(ptr %indir, ptr %rx_indir_table, i32 512)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ef4_ethtool_set_rxfh(ptr noundef %net_dev, ptr noundef %indir, ptr noundef readnone %key, i8 noundef zeroext %hfunc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %tobool.not = icmp eq ptr %key, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %hfunc)
  %switch = icmp ult i8 %hfunc, 2
  %or.cond = and i1 %tobool.not, %switch
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool5.not = icmp eq ptr %indir, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %type = getelementptr i8, ptr %net_dev, i32 2348
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 4
  %rx_push_rss_config = getelementptr inbounds %struct.ef4_nic_type, ptr %1, i32 0, i32 45
  %2 = ptrtoint ptr %rx_push_rss_config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_push_rss_config, align 4
  %call8 = tail call i32 %3(ptr noundef %add.ptr.i, i1 noundef zeroext true, ptr noundef nonnull %indir) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end7 ], [ -95, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ef4_ethtool_get_module_info(ptr noundef %net_dev, ptr noundef %modinfo) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %phy_op = getelementptr i8, ptr %net_dev, i32 4624
  %0 = ptrtoint ptr %phy_op to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_op, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %get_module_info = getelementptr inbounds %struct.ef4_phy_operations, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %get_module_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_module_info, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  %mac_lock = getelementptr i8, ptr %net_dev, i32 4432
  tail call void @mutex_lock_nested(ptr noundef %mac_lock, i32 noundef 0) #16
  %4 = ptrtoint ptr %phy_op to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy_op, align 16
  %get_module_info4 = getelementptr inbounds %struct.ef4_phy_operations, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %get_module_info4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_module_info4, align 4
  %call5 = tail call i32 %7(ptr noundef %add.ptr.i, ptr noundef %modinfo) #16
  tail call void @mutex_unlock(ptr noundef %mac_lock) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ef4_ethtool_get_module_eeprom(ptr noundef %net_dev, ptr noundef %ee, ptr noundef %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %phy_op = getelementptr i8, ptr %net_dev, i32 4624
  %0 = ptrtoint ptr %phy_op to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_op, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %get_module_eeprom = getelementptr inbounds %struct.ef4_phy_operations, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %get_module_eeprom to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_module_eeprom, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  %mac_lock = getelementptr i8, ptr %net_dev, i32 4432
  tail call void @mutex_lock_nested(ptr noundef %mac_lock, i32 noundef 0) #16
  %4 = ptrtoint ptr %phy_op to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy_op, align 16
  %get_module_eeprom4 = getelementptr inbounds %struct.ef4_phy_operations, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %get_module_eeprom4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_module_eeprom4, align 4
  %call5 = tail call i32 %7(ptr noundef %add.ptr.i, ptr noundef %ee, ptr noundef %data) #16
  tail call void @mutex_unlock(ptr noundef %mac_lock) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ef4_ethtool_get_link_ksettings(ptr noundef %net_dev, ptr noundef %cmd) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %mac_lock = getelementptr i8, ptr %net_dev, i32 4432
  tail call void @mutex_lock_nested(ptr noundef %mac_lock, i32 noundef 0) #16
  %phy_op = getelementptr i8, ptr %net_dev, i32 4624
  %0 = ptrtoint ptr %phy_op to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_op, align 16
  %get_link_ksettings = getelementptr inbounds %struct.ef4_phy_operations, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %get_link_ksettings to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_link_ksettings, align 4
  tail call void %3(ptr noundef %add.ptr.i, ptr noundef %cmd) #16
  tail call void @mutex_unlock(ptr noundef %mac_lock) #16
  %link_modes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1
  %4 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %link_modes, align 4
  %or.i19 = or i32 %5, 24576
  store i32 %or.i19, ptr %link_modes, align 4
  %loopback_mode = getelementptr i8, ptr %net_dev, i32 4724
  %6 = ptrtoint ptr %loopback_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %loopback_mode, align 4
  %shl = shl nuw i32 1, %7
  %and = and i32 %shl, 66600958
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %speed = getelementptr i8, ptr %net_dev, i32 4668
  %8 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %speed, align 4
  %speed6 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %10 = ptrtoint ptr %speed6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %speed6, align 4
  %fd = getelementptr i8, ptr %net_dev, i32 4665
  %11 = ptrtoint ptr %fd to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %fd, align 1, !range !109
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %13 = ptrtoint ptr %duplex to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %duplex, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ef4_ethtool_set_link_ksettings(ptr noundef %net_dev, ptr noundef %cmd) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
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
  call void @__sanitizer_cov_trace_pc() #18
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15

do.body:                                          ; preds = %land.lhs.true
  %msg_enable = getelementptr i8, ptr %net_dev, i32 2456
  %4 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable, align 8
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.body5

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.body5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_ethtool_set_link_ksettings.__UNIQUE_ID_ddebug522, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_ethtool_set_link_ksettings, %if.then10)) #16
          to label %cleanup [label %if.then10], !srcloc !110

if.then10:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #18
  %net_dev11 = getelementptr i8, ptr %net_dev, i32 4572
  %6 = ptrtoint ptr %net_dev11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net_dev11, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_ethtool_set_link_ksettings.__UNIQUE_ID_ddebug522, ptr noundef %7, ptr noundef nonnull @.str.48) #16
  br label %cleanup

if.end15:                                         ; preds = %land.lhs.true.if.end15_crit_edge, %entry.if.end15_crit_edge
  %mac_lock = getelementptr i8, ptr %net_dev, i32 4432
  tail call void @mutex_lock_nested(ptr noundef %mac_lock, i32 noundef 0) #16
  %phy_op = getelementptr i8, ptr %net_dev, i32 4624
  %8 = ptrtoint ptr %phy_op to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy_op, align 16
  %set_link_ksettings = getelementptr inbounds %struct.ef4_phy_operations, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %set_link_ksettings to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_link_ksettings, align 4
  %call16 = tail call i32 %11(ptr noundef %add.ptr.i, ptr noundef %cmd) #16
  tail call void @mutex_unlock(ptr noundef %mac_lock) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then10, %do.body5, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %if.end15 ], [ -22, %if.then10 ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %do.body5 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ef4_nic_get_regs_len(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef4_nic_get_regs(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdio45_nway_restart(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef4_get_irq_moderation(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ef4_init_irq_moderation(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ef4_tx_max_skb_descs(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ef4_realloc_channels(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef4_link_set_wanted_fc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef4_mac_reconfigure(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_open(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ef4_selftest(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_close(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ef4_ethtool_fill_self_tests(ptr noundef %efx, ptr nocapture noundef readonly %tests, ptr noundef %strings, ptr noundef %data) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @ef4_fill_test(i32 noundef 0, ptr noundef %strings, ptr noundef %data, ptr noundef %tests, ptr noundef nonnull @.str.16, i32 noundef 0, ptr noundef nonnull @.str.17, ptr noundef null)
  %nvram = getelementptr inbounds %struct.ef4_self_tests, ptr %tests, i32 0, i32 1
  tail call fastcc void @ef4_fill_test(i32 noundef 1, ptr noundef %strings, ptr noundef %data, ptr noundef %nvram, ptr noundef nonnull @.str.18, i32 noundef 0, ptr noundef nonnull @.str.19, ptr noundef null)
  %interrupt = getelementptr inbounds %struct.ef4_self_tests, ptr %tests, i32 0, i32 2
  tail call fastcc void @ef4_fill_test(i32 noundef 2, ptr noundef %strings, ptr noundef %data, ptr noundef %interrupt, ptr noundef nonnull @.str.18, i32 noundef 0, ptr noundef nonnull @.str.20, ptr noundef null)
  %channel3 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 23
  %0 = ptrtoint ptr %channel3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel3, align 4
  %tobool.not106 = icmp eq ptr %1, null
  br i1 %tobool.not106, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %n_channels = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 36
  br label %for.body

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %for.body.lr.ph
  %n.0108 = phi i32 [ 3, %for.body.lr.ph ], [ %inc8, %cond.end.for.body_crit_edge ]
  %channel.0107 = phi ptr [ %1, %for.body.lr.ph ], [ %11, %cond.end.for.body_crit_edge ]
  %inc4 = add i32 %n.0108, 1
  %channel5 = getelementptr inbounds %struct.ef4_channel, ptr %channel.0107, i32 0, i32 1
  %2 = ptrtoint ptr %channel5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel5, align 4
  %arrayidx6 = getelementptr %struct.ef4_self_tests, ptr %tests, i32 0, i32 3, i32 %3
  tail call fastcc void @ef4_fill_test(i32 noundef %n.0108, ptr noundef %strings, ptr noundef %data, ptr noundef %arrayidx6, ptr noundef nonnull @.str.21, i32 noundef %3, ptr noundef nonnull @.str.22, ptr noundef null)
  %inc8 = add i32 %n.0108, 2
  %4 = ptrtoint ptr %channel5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel5, align 4
  %arrayidx10 = getelementptr %struct.ef4_self_tests, ptr %tests, i32 0, i32 4, i32 %5
  tail call fastcc void @ef4_fill_test(i32 noundef %inc4, ptr noundef %strings, ptr noundef %data, ptr noundef %arrayidx10, ptr noundef nonnull @.str.21, i32 noundef %5, ptr noundef nonnull @.str.23, ptr noundef null)
  %6 = ptrtoint ptr %channel5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel5, align 4
  %add = add i32 %7, 1
  %8 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n_channels, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %9)
  %cmp = icmp ult i32 %add, %9
  br i1 %cmp, label %cond.end, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

cond.end:                                         ; preds = %for.body
  %arrayidx16 = getelementptr %struct.ef4_nic, ptr %efx, i32 0, i32 23, i32 %add
  %10 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx16, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %cond.end.for.end_crit_edge, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %cond.end.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %n.0.lcssa = phi i32 [ 3, %entry.for.end_crit_edge ], [ %inc8, %cond.end.for.end_crit_edge ], [ %inc8, %for.body.for.end_crit_edge ]
  %inc17 = add i32 %n.0.lcssa, 1
  %memory = getelementptr inbounds %struct.ef4_self_tests, ptr %tests, i32 0, i32 5
  tail call fastcc void @ef4_fill_test(i32 noundef %n.0.lcssa, ptr noundef %strings, ptr noundef %data, ptr noundef %memory, ptr noundef nonnull @.str.18, i32 noundef 0, ptr noundef nonnull @.str.24, ptr noundef null)
  %inc18 = add i32 %n.0.lcssa, 2
  %registers = getelementptr inbounds %struct.ef4_self_tests, ptr %tests, i32 0, i32 6
  tail call fastcc void @ef4_fill_test(i32 noundef %inc17, ptr noundef %strings, ptr noundef %data, ptr noundef %registers, ptr noundef nonnull @.str.18, i32 noundef 0, ptr noundef nonnull @.str.25, ptr noundef null)
  %phy_op = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 76
  %12 = ptrtoint ptr %phy_op to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phy_op, align 16
  %run_tests = getelementptr inbounds %struct.ef4_phy_operations, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %run_tests to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %run_tests, align 4
  %cmp19.not = icmp eq ptr %15, null
  br i1 %cmp19.not, label %for.end.if.end33_crit_edge, label %for.cond20.preheader

for.end.if.end33_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end33

for.cond20.preheader:                             ; preds = %for.end
  %16 = ptrtoint ptr %phy_op to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %phy_op, align 16
  %test_name109 = getelementptr inbounds %struct.ef4_phy_operations, ptr %17, i32 0, i32 10
  %18 = ptrtoint ptr %test_name109 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %test_name109, align 4
  %call110 = tail call ptr %19(ptr noundef %efx, i32 noundef 0) #16
  %cmp26111 = icmp eq ptr %call110, null
  br i1 %cmp26111, label %for.cond20.preheader.if.end33_crit_edge, label %for.cond20.preheader.for.inc30_crit_edge

for.cond20.preheader.for.inc30_crit_edge:         ; preds = %for.cond20.preheader
  br label %for.inc30

for.cond20.preheader.if.end33_crit_edge:          ; preds = %for.cond20.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end33

for.inc30:                                        ; preds = %for.inc30.for.inc30_crit_edge, %for.cond20.preheader.for.inc30_crit_edge
  %call114 = phi ptr [ %call, %for.inc30.for.inc30_crit_edge ], [ %call110, %for.cond20.preheader.for.inc30_crit_edge ]
  %i.0113 = phi i32 [ %inc31, %for.inc30.for.inc30_crit_edge ], [ 0, %for.cond20.preheader.for.inc30_crit_edge ]
  %n.1112 = phi i32 [ %inc28, %for.inc30.for.inc30_crit_edge ], [ %inc18, %for.cond20.preheader.for.inc30_crit_edge ]
  %inc28 = add i32 %n.1112, 1
  %arrayidx29 = getelementptr %struct.ef4_self_tests, ptr %tests, i32 0, i32 7, i32 %i.0113
  tail call fastcc void @ef4_fill_test(i32 noundef %n.1112, ptr noundef %strings, ptr noundef %data, ptr noundef %arrayidx29, ptr noundef nonnull @.str.16, i32 noundef 0, ptr noundef nonnull %call114, ptr noundef null)
  %inc31 = add i32 %i.0113, 1
  %20 = ptrtoint ptr %phy_op to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %phy_op, align 16
  %test_name = getelementptr inbounds %struct.ef4_phy_operations, ptr %21, i32 0, i32 10
  %22 = ptrtoint ptr %test_name to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %test_name, align 4
  %call = tail call ptr %23(ptr noundef %efx, i32 noundef %inc31) #16
  %cmp26 = icmp eq ptr %call, null
  br i1 %cmp26, label %for.inc30.if.end33_crit_edge, label %for.inc30.for.inc30_crit_edge

for.inc30.for.inc30_crit_edge:                    ; preds = %for.inc30
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc30

for.inc30.if.end33_crit_edge:                     ; preds = %for.inc30
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end33

if.end33:                                         ; preds = %for.inc30.if.end33_crit_edge, %for.cond20.preheader.if.end33_crit_edge, %for.end.if.end33_crit_edge
  %n.3 = phi i32 [ %inc18, %for.end.if.end33_crit_edge ], [ %inc18, %for.cond20.preheader.if.end33_crit_edge ], [ %inc28, %for.inc30.if.end33_crit_edge ]
  %loopback_modes = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 89
  %tx_channel_offset.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 39
  br label %for.body36

for.body36:                                       ; preds = %for.inc42.for.body36_crit_edge, %if.end33
  %mode.0117 = phi i32 [ 0, %if.end33 ], [ %inc43, %for.inc42.for.body36_crit_edge ]
  %n.4116 = phi i32 [ %n.3, %if.end33 ], [ %n.5, %for.inc42.for.body36_crit_edge ]
  %24 = ptrtoint ptr %loopback_modes to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %loopback_modes, align 8
  %shl = shl nuw nsw i32 1, %mode.0117
  %26 = zext i32 %shl to i64
  %and = and i64 %25, %26
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool37.not = icmp eq i64 %and, 0
  br i1 %tobool37.not, label %for.body36.for.inc42_crit_edge, label %if.end39

for.body36.for.inc42_crit_edge:                   ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc42

if.end39:                                         ; preds = %for.body36
  %arrayidx40 = getelementptr %struct.ef4_self_tests, ptr %tests, i32 0, i32 8, i32 %mode.0117
  %27 = ptrtoint ptr %tx_channel_offset.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tx_channel_offset.i, align 32
  %arrayidx.i.i = getelementptr %struct.ef4_nic, ptr %efx, i32 0, i32 23, i32 %28
  %29 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i.i, align 4
  %channel1.i.i = getelementptr inbounds %struct.ef4_channel, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %channel1.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %channel1.i.i, align 4
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %30, align 128
  %tx_channel_offset.i.i = getelementptr inbounds %struct.ef4_nic, ptr %34, i32 0, i32 39
  %35 = ptrtoint ptr %tx_channel_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tx_channel_offset.i.i, align 32
  %sub.i.i = sub i32 %32, %36
  %n_tx_channels.i.i = getelementptr inbounds %struct.ef4_nic, ptr %34, i32 0, i32 40
  %37 = ptrtoint ptr %n_tx_channels.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %n_tx_channels.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %38)
  %cmp.i.i = icmp ult i32 %sub.i.i, %38
  br i1 %cmp.i.i, label %if.else.i, label %if.end39.if.end.i_crit_edge

if.end39.if.end.i_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.else.i:                                        ; preds = %if.end39
  %tx_queue2.i = getelementptr inbounds %struct.ef4_channel, ptr %30, i32 0, i32 32
  %add.ptr.i = getelementptr %struct.ef4_channel, ptr %30, i32 1
  %cmp64.i = icmp ult ptr %tx_queue2.i, %add.ptr.i
  br i1 %cmp64.i, label %land.rhs.lr.ph.i, label %if.else.i.if.end.i_crit_edge

if.else.i.if.end.i_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

land.rhs.lr.ph.i:                                 ; preds = %if.else.i
  %arrayidx8.i = getelementptr [0 x ptr], ptr @ef4_loopback_mode_names, i32 0, i32 %mode.0117
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %cond.end17.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %tx_queue.067.i = phi ptr [ %tx_queue2.i, %land.rhs.lr.ph.i ], [ %incdec.ptr.i, %cond.end17.i.land.rhs.i_crit_edge ]
  %test_index.addr.065.i = phi i32 [ %n.4116, %land.rhs.lr.ph.i ], [ %inc9.i, %cond.end17.i.land.rhs.i_crit_edge ]
  %39 = ptrtoint ptr %tx_queue.067.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tx_queue.067.i, align 128
  %net_dev.i.i = getelementptr inbounds %struct.ef4_nic, ptr %40, i32 0, i32 69
  %41 = ptrtoint ptr %net_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %net_dev.i.i, align 4
  %num_tc.i.i = getelementptr inbounds %struct.net_device, ptr %42, i32 0, i32 140
  %43 = ptrtoint ptr %num_tc.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %num_tc.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %44)
  %cmp.i62.i = icmp slt i16 %44, 2
  br i1 %cmp.i62.i, label %ef4_tx_queue_used.exit.i, label %land.rhs.i.for.body.i_crit_edge

land.rhs.i.for.body.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

ef4_tx_queue_used.exit.i:                         ; preds = %land.rhs.i
  %queue.i.i = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue.067.i, i32 0, i32 1
  %45 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %queue.i.i, align 4
  %and.i.i = and i32 %46, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.i, label %ef4_tx_queue_used.exit.i.for.body.i_crit_edge, label %ef4_tx_queue_used.exit.i.if.end.i_crit_edge

ef4_tx_queue_used.exit.i.if.end.i_crit_edge:      ; preds = %ef4_tx_queue_used.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

ef4_tx_queue_used.exit.i.for.body.i_crit_edge:    ; preds = %ef4_tx_queue_used.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.body.i:                                       ; preds = %ef4_tx_queue_used.exit.i.for.body.i_crit_edge, %land.rhs.i.for.body.i_crit_edge
  %inc.i = add i32 %test_index.addr.065.i, 1
  %queue.i = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue.067.i, i32 0, i32 1
  %47 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %queue.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr %arrayidx40, i32 0, i32 %48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ef4_loopback_mode_max to i32))
  %49 = load i32, ptr @ef4_loopback_mode_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %mode.0117)
  %cmp7.i = icmp ugt i32 %49, %mode.0117
  br i1 %cmp7.i, label %cond.true.i, label %for.body.i.cond.end.i_crit_edge

for.body.i.cond.end.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end.i

cond.true.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %50 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx8.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %for.body.i.cond.end.i_crit_edge
  %cond.i = phi ptr [ %51, %cond.true.i ], [ @.str.29, %for.body.i.cond.end.i_crit_edge ]
  tail call fastcc void @ef4_fill_test(i32 noundef %test_index.addr.065.i, ptr noundef %strings, ptr noundef %data, ptr noundef %arrayidx.i, ptr noundef nonnull @.str.27, i32 noundef %48, ptr noundef nonnull @.str.28, ptr noundef %cond.i) #16
  %inc9.i = add i32 %test_index.addr.065.i, 2
  %52 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %queue.i, align 4
  %arrayidx11.i = getelementptr %struct.ef4_self_tests, ptr %tests, i32 0, i32 8, i32 %mode.0117, i32 1, i32 %53
  br i1 %cmp7.i, label %cond.true14.i, label %cond.end.i.cond.end17.i_crit_edge

cond.end.i.cond.end17.i_crit_edge:                ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end17.i

cond.true14.i:                                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %54 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx8.i, align 4
  br label %cond.end17.i

cond.end17.i:                                     ; preds = %cond.true14.i, %cond.end.i.cond.end17.i_crit_edge
  %cond18.i = phi ptr [ %55, %cond.true14.i ], [ @.str.29, %cond.end.i.cond.end17.i_crit_edge ]
  tail call fastcc void @ef4_fill_test(i32 noundef %inc.i, ptr noundef %strings, ptr noundef %data, ptr noundef %arrayidx11.i, ptr noundef nonnull @.str.27, i32 noundef %53, ptr noundef nonnull @.str.30, ptr noundef %cond18.i) #16
  %incdec.ptr.i = getelementptr %struct.ef4_tx_queue, ptr %tx_queue.067.i, i32 1
  %cmp.i = icmp ult ptr %incdec.ptr.i, %add.ptr.i
  br i1 %cmp.i, label %cond.end17.i.land.rhs.i_crit_edge, label %cond.end17.i.if.end.i_crit_edge

cond.end17.i.if.end.i_crit_edge:                  ; preds = %cond.end17.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

cond.end17.i.land.rhs.i_crit_edge:                ; preds = %cond.end17.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.rhs.i

if.end.i:                                         ; preds = %cond.end17.i.if.end.i_crit_edge, %ef4_tx_queue_used.exit.i.if.end.i_crit_edge, %if.else.i.if.end.i_crit_edge, %if.end39.if.end.i_crit_edge
  %test_index.addr.1.i = phi i32 [ %n.4116, %if.end39.if.end.i_crit_edge ], [ %n.4116, %if.else.i.if.end.i_crit_edge ], [ %test_index.addr.065.i, %ef4_tx_queue_used.exit.i.if.end.i_crit_edge ], [ %inc9.i, %cond.end17.i.if.end.i_crit_edge ]
  %rx_good.i = getelementptr %struct.ef4_self_tests, ptr %tests, i32 0, i32 8, i32 %mode.0117, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ef4_loopback_mode_max to i32))
  %56 = load i32, ptr @ef4_loopback_mode_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %mode.0117)
  %cmp20.i = icmp ugt i32 %56, %mode.0117
  br i1 %cmp20.i, label %cond.true28.i, label %cond.end24.i

cond.end24.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @ef4_fill_test(i32 noundef %test_index.addr.1.i, ptr noundef %strings, ptr noundef %data, ptr noundef %rx_good.i, ptr noundef nonnull @.str.31, i32 noundef 0, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.29) #16
  br label %ef4_fill_loopback_test.exit

cond.true28.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx22.i = getelementptr [0 x ptr], ptr @ef4_loopback_mode_names, i32 0, i32 %mode.0117
  %57 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx22.i, align 4
  tail call fastcc void @ef4_fill_test(i32 noundef %test_index.addr.1.i, ptr noundef %strings, ptr noundef %data, ptr noundef %rx_good.i, ptr noundef nonnull @.str.31, i32 noundef 0, ptr noundef nonnull @.str.32, ptr noundef %58) #16
  br label %ef4_fill_loopback_test.exit

ef4_fill_loopback_test.exit:                      ; preds = %cond.true28.i, %cond.end24.i
  %cond32.i = phi ptr [ %58, %cond.true28.i ], [ @.str.29, %cond.end24.i ]
  %rx_bad.i = getelementptr %struct.ef4_self_tests, ptr %tests, i32 0, i32 8, i32 %mode.0117, i32 3
  %inc19.i = add i32 %test_index.addr.1.i, 1
  %inc26.i = add i32 %test_index.addr.1.i, 2
  tail call fastcc void @ef4_fill_test(i32 noundef %inc19.i, ptr noundef %strings, ptr noundef %data, ptr noundef %rx_bad.i, ptr noundef nonnull @.str.31, i32 noundef 0, ptr noundef nonnull @.str.33, ptr noundef %cond32.i) #16
  br label %for.inc42

for.inc42:                                        ; preds = %ef4_fill_loopback_test.exit, %for.body36.for.inc42_crit_edge
  %n.5 = phi i32 [ %inc26.i, %ef4_fill_loopback_test.exit ], [ %n.4116, %for.body36.for.inc42_crit_edge ]
  %inc43 = add nuw nsw i32 %mode.0117, 1
  %exitcond.not = icmp eq i32 %inc43, 18
  br i1 %exitcond.not, label %for.end44, label %for.inc42.for.body36_crit_edge

for.inc42.for.body36_crit_edge:                   ; preds = %for.inc42
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body36

for.end44:                                        ; preds = %for.inc42
  call void @__sanitizer_cov_trace_pc() #18
  ret i32 %n.5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ef4_fill_test(i32 noundef %test_index, ptr noundef writeonly %strings, ptr noundef writeonly %data, ptr nocapture noundef readonly %test, ptr noundef readonly %unit_format, i32 noundef %unit_id, ptr nocapture noundef readonly %test_format, ptr noundef %test_id) unnamed_addr #0 align 64 {
entry:
  %unit_str = alloca [32 x i8], align 1
  %test_str = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %unit_str) #16
  %0 = call ptr @memset(ptr %unit_str, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %test_str) #16
  %tobool.not = icmp eq ptr %data, null
  %1 = call ptr @memset(ptr %test_str, i32 255, i32 32)
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

if.then2:                                         ; preds = %if.end
  %call = tail call ptr @strchr(ptr noundef %unit_format, i32 noundef 37)
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #18
  %call5 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %unit_str, i32 noundef 32, ptr noundef %unit_format, i32 noundef %unit_id)
  br label %if.end8

if.else:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #18
  %call7 = call ptr @strcpy(ptr noundef nonnull %unit_str, ptr noundef %unit_format) #21
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then4
  %call10 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %test_str, i32 noundef 32, ptr noundef %test_format, ptr noundef %test_id)
  %mul = shl i32 %test_index, 5
  %add.ptr = getelementptr i8, ptr %strings, i32 %mul
  %call13 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr, i32 noundef 32, ptr noundef nonnull @.str.26, ptr noundef nonnull %unit_str, ptr noundef nonnull %test_str)
  br label %if.end14

if.end14:                                         ; preds = %if.end8, %if.end.if.end14_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %test_str) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %unit_str) #16
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #14

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ef4_describe_per_queue_stats(ptr nocapture noundef readonly %efx, ptr noundef writeonly %strings) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %channel1 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 23
  %0 = ptrtoint ptr %channel1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel1, align 4
  %tobool.not64 = icmp eq ptr %1, null
  br i1 %tobool.not64, label %entry.for.end40_crit_edge, label %for.body.lr.ph

entry.for.end40_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end40

for.body.lr.ph:                                   ; preds = %entry
  %n_channels = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 36
  br label %for.body

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %for.body.lr.ph
  %channel.067 = phi ptr [ %1, %for.body.lr.ph ], [ %17, %cond.end.for.body_crit_edge ]
  %n_stats.066 = phi i32 [ 0, %for.body.lr.ph ], [ %n_stats.1, %cond.end.for.body_crit_edge ]
  %strings.addr.065 = phi ptr [ %strings, %for.body.lr.ph ], [ %strings.addr.1, %cond.end.for.body_crit_edge ]
  %channel1.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.067, i32 0, i32 1
  %2 = ptrtoint ptr %channel1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel1.i, align 4
  %4 = ptrtoint ptr %channel.067 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %channel.067, align 128
  %tx_channel_offset.i = getelementptr inbounds %struct.ef4_nic, ptr %5, i32 0, i32 39
  %6 = ptrtoint ptr %tx_channel_offset.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_channel_offset.i, align 32
  %sub.i = sub i32 %3, %7
  %n_tx_channels.i = getelementptr inbounds %struct.ef4_nic, ptr %5, i32 0, i32 40
  %8 = ptrtoint ptr %n_tx_channels.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n_tx_channels.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %9)
  %cmp.i = icmp ult i32 %sub.i, %9
  br i1 %cmp.i, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then:                                          ; preds = %for.body
  %inc = add i32 %n_stats.066, 1
  %cmp.not = icmp eq ptr %strings.addr.065, null
  br i1 %cmp.not, label %if.then.for.inc_crit_edge, label %if.then2

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %queue = getelementptr inbounds %struct.ef4_channel, ptr %channel.067, i32 0, i32 32, i32 0, i32 1
  %10 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %queue, align 4
  %div62 = lshr i32 %11, 2
  %call4 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %strings.addr.065, i32 noundef 32, ptr noundef nonnull @.str.45, i32 noundef %div62)
  %add.ptr = getelementptr i8, ptr %strings.addr.065, i32 32
  br label %for.inc

for.inc:                                          ; preds = %if.then2, %if.then.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %strings.addr.1 = phi ptr [ %add.ptr, %if.then2 ], [ null, %if.then.for.inc_crit_edge ], [ %strings.addr.065, %for.body.for.inc_crit_edge ]
  %n_stats.1 = phi i32 [ %inc, %if.then2 ], [ %inc, %if.then.for.inc_crit_edge ], [ %n_stats.066, %for.body.for.inc_crit_edge ]
  %12 = ptrtoint ptr %channel1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %channel1.i, align 4
  %add = add i32 %13, 1
  %14 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %n_channels, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %15)
  %cmp7 = icmp ult i32 %add, %15
  br i1 %cmp7, label %cond.end, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

cond.end:                                         ; preds = %for.inc
  %arrayidx11 = getelementptr %struct.ef4_nic, ptr %efx, i32 0, i32 23, i32 %add
  %16 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx11, align 4
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %cond.end.for.end_crit_edge, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %cond.end.for.end_crit_edge, %for.inc.for.end_crit_edge
  %18 = ptrtoint ptr %channel1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pr = load ptr, ptr %channel1, align 4
  %tobool15.not69 = icmp eq ptr %.pr, null
  br i1 %tobool15.not69, label %for.end.for.end40_crit_edge, label %for.body16.lr.ph

for.end.for.end40_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end40

for.body16.lr.ph:                                 ; preds = %for.end
  %n_channels30 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 36
  br label %for.body16

for.body16:                                       ; preds = %cond.end38.for.body16_crit_edge, %for.body16.lr.ph
  %channel.172 = phi ptr [ %.pr, %for.body16.lr.ph ], [ %28, %cond.end38.for.body16_crit_edge ]
  %n_stats.271 = phi i32 [ %n_stats.1, %for.body16.lr.ph ], [ %n_stats.3, %cond.end38.for.body16_crit_edge ]
  %strings.addr.270 = phi ptr [ %strings.addr.1, %for.body16.lr.ph ], [ %strings.addr.3, %cond.end38.for.body16_crit_edge ]
  %core_index.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.172, i32 0, i32 30, i32 1
  %19 = ptrtoint ptr %core_index.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %core_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %cmp.i63 = icmp sgt i32 %20, -1
  br i1 %cmp.i63, label %if.then18, label %for.body16.for.inc27_crit_edge

for.body16.for.inc27_crit_edge:                   ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc27

if.then18:                                        ; preds = %for.body16
  %inc19 = add i32 %n_stats.271, 1
  %cmp20.not = icmp eq ptr %strings.addr.270, null
  br i1 %cmp20.not, label %if.then18.for.inc27_crit_edge, label %if.then21

if.then18.for.inc27_crit_edge:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc27

if.then21:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #18
  %channel22 = getelementptr inbounds %struct.ef4_channel, ptr %channel.172, i32 0, i32 1
  %21 = ptrtoint ptr %channel22 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %channel22, align 4
  %call23 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %strings.addr.270, i32 noundef 32, ptr noundef nonnull @.str.46, i32 noundef %22)
  %add.ptr24 = getelementptr i8, ptr %strings.addr.270, i32 32
  br label %for.inc27

for.inc27:                                        ; preds = %if.then21, %if.then18.for.inc27_crit_edge, %for.body16.for.inc27_crit_edge
  %strings.addr.3 = phi ptr [ %add.ptr24, %if.then21 ], [ null, %if.then18.for.inc27_crit_edge ], [ %strings.addr.270, %for.body16.for.inc27_crit_edge ]
  %n_stats.3 = phi i32 [ %inc19, %if.then21 ], [ %inc19, %if.then18.for.inc27_crit_edge ], [ %n_stats.271, %for.body16.for.inc27_crit_edge ]
  %channel28 = getelementptr inbounds %struct.ef4_channel, ptr %channel.172, i32 0, i32 1
  %23 = ptrtoint ptr %channel28 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %channel28, align 4
  %add29 = add i32 %24, 1
  %25 = ptrtoint ptr %n_channels30 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %n_channels30, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add29, i32 %26)
  %cmp31 = icmp ult i32 %add29, %26
  br i1 %cmp31, label %cond.end38, label %for.inc27.for.end40_crit_edge

for.inc27.for.end40_crit_edge:                    ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end40

cond.end38:                                       ; preds = %for.inc27
  %arrayidx36 = getelementptr %struct.ef4_nic, ptr %efx, i32 0, i32 23, i32 %add29
  %27 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx36, align 4
  %tobool15.not = icmp eq ptr %28, null
  br i1 %tobool15.not, label %cond.end38.for.end40_crit_edge, label %cond.end38.for.body16_crit_edge

cond.end38.for.body16_crit_edge:                  ; preds = %cond.end38
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body16

cond.end38.for.end40_crit_edge:                   ; preds = %cond.end38
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end40

for.end40:                                        ; preds = %cond.end38.for.end40_crit_edge, %for.inc27.for.end40_crit_edge, %for.end.for.end40_crit_edge, %entry.for.end40_crit_edge
  %n_stats.2.lcssa = phi i32 [ %n_stats.1, %for.end.for.end40_crit_edge ], [ 0, %entry.for.end40_crit_edge ], [ %n_stats.3, %cond.end38.for.end40_crit_edge ], [ %n_stats.3, %for.inc27.for.end40_crit_edge ]
  ret i32 %n_stats.2.lcssa
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @ef4_get_uint_stat(ptr nocapture noundef readonly %field) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %field, align 4
  %conv = zext i32 %1 to i64
  ret i64 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @ef4_get_atomic_stat(ptr noundef %field) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %field, i32 noundef 4) #16
  %0 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %field, align 4
  %conv = sext i32 %1 to i64
  ret i64 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ef4_reset(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

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
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind allocsize(2) }
attributes #21 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !17, !18, !20, !22, !23, !24, !26, !28, !29, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !98}
!llvm.module.flags = !{!99, !100, !101, !102, !103, !104, !105, !106}
!llvm.ident = !{!107}

!0 = !{ptr @ef4_ethtool_ops, !1, !"ef4_ethtool_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/sfc/falcon/ethtool.c", i32 1320, i32 26}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/sfc/falcon/ethtool.c", i32 165, i32 24}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/sfc/falcon/ethtool.c", i32 166, i32 25}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/sfc/falcon/ethtool.c", i32 669, i32 3}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/sfc/falcon/ethtool.c", i32 677, i32 3}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/sfc/falcon/ethtool.c", i32 699, i32 3}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @ef4_ethtool_set_pauseparam.__UNIQUE_ID_ddebug525, !11, !"__UNIQUE_ID_ddebug525", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/sfc/falcon/ethtool.c", i32 706, i32 3}
!17 = !{ptr @ef4_ethtool_set_pauseparam.__UNIQUE_ID_ddebug526, !16, !"__UNIQUE_ID_ddebug526", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/sfc/falcon/ethtool.c", i32 724, i32 4}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/sfc/falcon/ethtool.c", i32 511, i32 2}
!22 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/sfc/falcon/ethtool.c", i32 519, i32 4}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/sfc/falcon/ethtool.c", i32 530, i32 2}
!28 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/sfc/falcon/ethtool.c", i32 305, i32 9}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/sfc/falcon/ethtool.c", i32 305, i32 19}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/sfc/falcon/ethtool.c", i32 307, i32 9}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/sfc/falcon/ethtool.c", i32 307, i32 20}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/sfc/falcon/ethtool.c", i32 309, i32 20}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/sfc/falcon/ethtool.c", i32 315, i32 10}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/sfc/falcon/ethtool.c", i32 316, i32 10}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/sfc/falcon/ethtool.c", i32 320, i32 10}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/sfc/falcon/ethtool.c", i32 324, i32 20}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/sfc/falcon/ethtool.c", i32 326, i32 20}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/sfc/falcon/ethtool.c", i32 229, i32 5}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/sfc/falcon/ethtool.c", i32 264, i32 10}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/sfc/falcon/ethtool.c", i32 265, i32 10}
!56 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/sfc/falcon/ethtool.c", i32 269, i32 10}
!59 = !{ptr @.str.31, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/sfc/falcon/ethtool.c", i32 273, i32 9}
!61 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/sfc/falcon/ethtool.c", i32 274, i32 9}
!63 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/sfc/falcon/ethtool.c", i32 278, i32 9}
!65 = !{ptr @.str.34, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/sfc/falcon/ethtool.c", i32 65, i32 2}
!67 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/sfc/falcon/ethtool.c", i32 66, i32 2}
!69 = !{ptr @.str.36, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/sfc/falcon/ethtool.c", i32 67, i32 2}
!71 = !{ptr @.str.37, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/sfc/falcon/ethtool.c", i32 68, i32 2}
!73 = !{ptr @.str.38, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/sfc/falcon/ethtool.c", i32 69, i32 2}
!75 = !{ptr @.str.39, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/sfc/falcon/ethtool.c", i32 70, i32 2}
!77 = !{ptr @.str.40, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/sfc/falcon/ethtool.c", i32 71, i32 2}
!79 = !{ptr @.str.41, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/sfc/falcon/ethtool.c", i32 72, i32 2}
!81 = !{ptr @.str.42, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/sfc/falcon/ethtool.c", i32 73, i32 2}
!83 = !{ptr @.str.43, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/sfc/falcon/ethtool.c", i32 74, i32 2}
!85 = !{ptr @.str.44, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/sfc/falcon/ethtool.c", i32 75, i32 2}
!87 = !{ptr @ef4_sw_stat_desc, !88, !"ef4_sw_stat_desc", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/sfc/falcon/ethtool.c", i32 64, i32 38}
!89 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/sfc/falcon/ethtool.c", i32 366, i32 7}
!91 = !{ptr @.str.46, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/sfc/falcon/ethtool.c", i32 379, i32 7}
!93 = distinct !{null, !94, !"mac_addr_ig_mask", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/sfc/falcon/ethtool.c", i32 780, i32 17}
!95 = !{ptr @.str.47, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/sfc/falcon/ethtool.c", i32 149, i32 3}
!97 = !{ptr @.str.48, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @ef4_ethtool_set_link_ksettings.__UNIQUE_ID_ddebug522, !96, !"__UNIQUE_ID_ddebug522", i1 false, i1 false}
!99 = !{i32 1, !"wchar_size", i32 2}
!100 = !{i32 1, !"min_enum_size", i32 4}
!101 = !{i32 8, !"branch-target-enforcement", i32 0}
!102 = !{i32 8, !"sign-return-address", i32 0}
!103 = !{i32 8, !"sign-return-address-all", i32 0}
!104 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!105 = !{i32 7, !"uwtable", i32 1}
!106 = !{i32 7, !"frame-pointer", i32 2}
!107 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!108 = !{!"auto-init"}
!109 = !{i8 0, i8 2}
!110 = !{i64 2149077893, i64 2149077898, i64 2149077911, i64 2149077955, i64 2149077989, i64 2149078010}
