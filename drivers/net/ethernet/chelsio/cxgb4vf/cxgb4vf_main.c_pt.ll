; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c_pt.bc'
source_filename = "../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
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
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.adapter = type { ptr, ptr, ptr, ptr, i32, i32, i32, %struct.adapter_params, [9 x %struct.anon.124], [76 x i8], %struct.sge, [1 x ptr], ptr, i32, ptr, %struct.spinlock, %struct.spinlock, %struct.mbox_list, ptr, %struct.list_head }
%struct.adapter_params = type { %struct.dev_params, %struct.sge_params, %struct.vpd_params, %struct.rss_params, %struct.vf_resources, %struct.arch_specific_params, i32, i8, i8 }
%struct.dev_params = type { i32, i32 }
%struct.sge_params = type { i32, i32, i32, i32, i32, i32, i32, i32, [16 x i32], i32, i32, i32, i32, i32 }
%struct.vpd_params = type { i32 }
%struct.rss_params = type { i32, %union.anon.122 }
%union.anon.122 = type { %struct.anon.123 }
%struct.anon.123 = type { i16, [2 x i8] }
%struct.vf_resources = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.arch_specific_params = type { i32, i16 }
%struct.anon.124 = type { i16, [22 x i8] }
%struct.sge = type { [8 x %struct.sge_eth_txq], [8 x %struct.sge_eth_rxq], [96 x i8], %struct.sge_rspq, [96 x i8], %struct.sge_rspq, %struct.spinlock, [1 x i32], %struct.timer_list, %struct.timer_list, i16, i16, i16, [6 x i16], [4 x i8], i32, i32, i32, i32, i32, i32, i32, [16 x ptr], [10 x ptr], [52 x i8] }
%struct.sge_eth_txq = type { %struct.sge_txq, ptr, i32, i32, i32, i32 }
%struct.sge_txq = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32 }
%struct.sge_eth_rxq = type { %struct.sge_rspq, %struct.sge_fl, %struct.sge_eth_stats }
%struct.sge_fl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, i32 }
%struct.sge_eth_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.sge_rspq = type { %struct.napi_struct, ptr, i32, i8, i8, i32, i32, i8, i8, i8, i16, i16, ptr, i32, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mbox_list = type { %struct.list_head }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.120, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.120 = type { ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.msix_entry = type { i32, i16 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.121, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.121 = type { ptr }
%union.rss_vi_config = type { %struct.anon.125 }
%struct.anon.125 = type { i16, i8, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.t4vf_port_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.cpl_fw6_msg = type { i8, i8, i16, i32, [4 x i64] }
%struct.hash_mac_addr = type { %struct.list_head, [6 x i8], i32 }
%struct.port_info = type { ptr, i32, i16, i32, i16, i8, i8, i8, i8, i8, i8, i8, %struct.link_config }
%struct.link_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_regs = type { i32, i32, i32, [0 x i8] }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.119, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.anon.119 = type { [3 x i32], [3 x i32], [3 x i32] }
%struct.ethtool_fecparam = type { i32, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.99, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.100, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.101, ptr, %struct.address_space, %struct.list_head, %union.anon.102, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.99 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.100 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.101 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.102 = type { ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.mbox_cmd_log = type { i32, i32, i32 }
%struct.mbox_cmd = type { [8 x i64], i64, i32, i16, i16 }

@__param_str_msi = internal constant [12 x i8] c"cxgb4vf.msi\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@msi = internal global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@__param_msi = internal constant %struct.kernel_param { ptr @__param_str_msi, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @msi } }, section "__param", align 4
@__UNIQUE_ID_msitype351 = internal constant [25 x i8] c"cxgb4vf.parmtype=msi:int\00", section ".modinfo", align 1
@__UNIQUE_ID_msi352 = internal constant [45 x i8] c"cxgb4vf.parm=msi:whether to use MSI-X or MSI\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"100Mbps\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1Gbps\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"10Gbps\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"25Gbps\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"40Gbps\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"100Gbps\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RX\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"TX\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RX/TX\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"link up, %s, full-duplex, %s PAUSE\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"link down\0A\00", [21 x i8] zeroinitializer }, align 32
@t4vf_os_portmod_changed.mod_str = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr null, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"LR\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"SR\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ER\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"passive DA\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"active DA\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"LRM\00", [28 x i8] zeroinitializer }, align 32
@t4vf_os_portmod_changed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.21, i32 223, ptr @.str.22, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: port module unplugged\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"t4vf_os_portmod_changed\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c\00", [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@t4vf_os_portmod_changed._entry_ptr = internal global ptr @t4vf_os_portmod_changed._entry, section ".printk_index", align 4
@t4vf_os_portmod_changed._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.20, ptr @.str.21, i32 226, ptr @.str.22, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: %s port module inserted\0A\00", [35 x i8] zeroinitializer }, align 32
@t4vf_os_portmod_changed._entry_ptr.26 = internal global ptr @t4vf_os_portmod_changed._entry.24, section ".printk_index", align 4
@t4vf_os_portmod_changed._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.20, ptr @.str.21, i32 229, ptr @.str.22, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: unsupported optical port module inserted\0A\00", [50 x i8] zeroinitializer }, align 32
@t4vf_os_portmod_changed._entry_ptr.29 = internal global ptr @t4vf_os_portmod_changed._entry.27, section ".printk_index", align 4
@t4vf_os_portmod_changed._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.20, ptr @.str.21, i32 232, ptr @.str.22, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: unknown port module inserted,forcing TWINAX\0A\00", [47 x i8] zeroinitializer }, align 32
@t4vf_os_portmod_changed._entry_ptr.32 = internal global ptr @t4vf_os_portmod_changed._entry.30, section ".printk_index", align 4
@t4vf_os_portmod_changed._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.20, ptr @.str.21, i32 235, ptr @.str.22, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: transceiver module error\0A\00", [34 x i8] zeroinitializer }, align 32
@t4vf_os_portmod_changed._entry_ptr.35 = internal global ptr @t4vf_os_portmod_changed._entry.33, section ".printk_index", align 4
@t4vf_os_portmod_changed._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.20, ptr @.str.21, i32 238, ptr @.str.22, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: unknown module type %d inserted\0A\00", [59 x i8] zeroinitializer }, align 32
@t4vf_os_portmod_changed._entry_ptr.38 = internal global ptr @t4vf_os_portmod_changed._entry.36, section ".printk_index", align 4
@__UNIQUE_ID_description359 = internal constant [74 x i8] c"cxgb4vf.description=Chelsio T4/T5/T6 Virtual Function (VF) Network Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author360 = internal constant [38 x i8] c"cxgb4vf.author=Chelsio Communications\00", section ".modinfo", align 1
@__UNIQUE_ID_file361 = internal constant [58 x i8] c"cxgb4vf.file=drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf\00", section ".modinfo", align 1
@__UNIQUE_ID_license362 = internal constant [29 x i8] c"cxgb4vf.license=Dual BSD/GPL\00", section ".modinfo", align 1
@cxgb4vf_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.39, ptr @cxgb4vf_pci_tbl, ptr @cxgb4vf_pci_probe, ptr @cxgb4vf_pci_remove, ptr null, ptr null, ptr @cxgb4vf_pci_shutdown, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@cxgb4vf_debugfs_root = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_cxgb4vf__363_3446_cxgb4vf_module_init6 = internal global ptr @cxgb4vf_module_init, section ".initcall6.init", align 4
@__exitcall_cxgb4vf_module_exit = internal global ptr @cxgb4vf_module_exit, section ".exitcall.exit", align 4
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cxgb4vf\00", [24 x i8] zeroinitializer }, align 32
@cxgb4vf_pci_tbl = internal constant { [121 x %struct.pci_device_id], [960 x i8] } { [121 x %struct.pci_device_id] [%struct.pci_device_id { i32 5157, i32 18432, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 18433, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 18434, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 18435, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 18436, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 18437, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 18438, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 18439, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 18440, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 18441, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 18442, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 18443, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 18444, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 18445, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 18446, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 18560, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 18561, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 18562, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 18563, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 18564, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 18565, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 18566, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 18567, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 18568, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22528, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22529, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22530, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22531, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22532, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22533, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22534, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22535, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22536, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22537, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22538, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22539, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22540, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22541, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22542, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22544, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22545, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22546, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22547, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22548, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22549, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22550, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22551, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22552, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22553, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22554, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22555, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22656, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22657, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22658, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22659, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22660, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22661, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22662, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22663, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22664, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22665, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22672, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22673, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22674, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22675, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22676, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22677, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22678, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22679, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22680, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22681, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22682, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22683, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22684, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22685, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22686, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22687, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22688, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22689, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22690, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22691, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22692, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22693, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22694, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22695, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22696, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22697, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22698, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22699, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22700, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22701, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22702, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22703, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 22704, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 26625, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 26626, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 26627, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 26628, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 26629, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 26630, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 26631, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 26632, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 26633, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 26637, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 26641, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 26644, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 26645, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 26752, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 26753, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 26754, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 26755, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 26756, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 26757, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 26758, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 26759, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 26760, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 26761, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 26762, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 26763, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 26770, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [960 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cannot enable PCI device\0A\00", [38 x i8] zeroinitializer }, align 32
@cxgb4vf_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.21, i32 2917, ptr @.str.43, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cannot obtain PCI resources\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cxgb4vf_pci_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@cxgb4vf_pci_probe._entry_ptr = internal global ptr @cxgb4vf_pci_probe._entry, section ".printk_index", align 4
@cxgb4vf_pci_probe._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.42, ptr @.str.21, i32 2926, ptr @.str.43, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"no usable DMA configuration\0A\00", [35 x i8] zeroinitializer }, align 32
@cxgb4vf_pci_probe._entry_ptr.46 = internal global ptr @cxgb4vf_pci_probe._entry.44, section ".printk_index", align 4
@cxgb4vf_pci_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&adapter->stats_lock\00", [43 x i8] zeroinitializer }, align 32
@cxgb4vf_pci_probe.__key.48 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.49 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&adapter->mbox_lock\00", [44 x i8] zeroinitializer }, align 32
@cxgb4vf_pci_probe._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.42, ptr @.str.21, i32 2969, ptr @.str.43, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cannot map device registers\0A\00", [35 x i8] zeroinitializer }, align 32
@cxgb4vf_pci_probe._entry_ptr.52 = internal global ptr @cxgb4vf_pci_probe._entry.50, section ".printk_index", align 4
@cxgb4vf_pci_probe._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.42, ptr @.str.21, i32 2979, ptr @.str.43, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"device didn't become ready: err=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@cxgb4vf_pci_probe._entry_ptr.55 = internal global ptr @cxgb4vf_pci_probe._entry.53, section ".printk_index", align 4
@cxgb4vf_pci_probe._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.42, ptr @.str.21, i32 2990, ptr @.str.43, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cannot map BAR2 doorbells\0A\00", [37 x i8] zeroinitializer }, align 32
@cxgb4vf_pci_probe._entry_ptr.58 = internal global ptr @cxgb4vf_pci_probe._entry.56, section ".printk_index", align 4
@cxgb4vf_pci_probe._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.42, ptr @.str.21, i32 3022, ptr @.str.43, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"Adapter initialization failed, error %d. Continuing in debug mode\0A\00", [61 x i8] zeroinitializer }, align 32
@cxgb4vf_pci_probe._entry_ptr.61 = internal global ptr @cxgb4vf_pci_probe._entry.59, section ".printk_index", align 4
@cxgb4vf_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @cxgb4vf_open, ptr @cxgb4vf_stop, ptr @t4vf_eth_xmit, ptr null, ptr null, ptr null, ptr @cxgb4vf_set_rxmode, ptr @cxgb4vf_set_mac_addr, ptr @eth_validate_addr, ptr null, ptr @cxgb4vf_do_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @cxgb4vf_change_mtu, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cxgb4vf_get_stats, ptr null, ptr null, ptr @cxgb4vf_poll_controller, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cxgb4vf_fix_features, ptr @cxgb4vf_set_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@cxgb4vf_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 3, i32 0, ptr @cxgb4vf_get_drvinfo, ptr @cxgb4vf_get_regs_len, ptr @cxgb4vf_get_regs, ptr @cxgb4vf_get_wol, ptr null, ptr @cxgb4vf_get_msglevel, ptr @cxgb4vf_set_msglevel, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr @cxgb4vf_get_coalesce, ptr @cxgb4vf_set_coalesce, ptr @cxgb4vf_get_ringparam, ptr @cxgb4vf_set_ringparam, ptr null, ptr @cxgb4vf_get_pauseparam, ptr null, ptr null, ptr @cxgb4vf_get_strings, ptr @cxgb4vf_phys_id, ptr @cxgb4vf_get_ethtool_stats, ptr null, ptr null, ptr null, ptr null, ptr @cxgb4vf_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cxgb4vf_get_link_ksettings, ptr null, ptr null, ptr @cxgb4vf_get_fecparam, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@cxgb4vf_pci_probe._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.42, ptr @.str.21, i32 3095, ptr @.str.43, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"cannot allocate VI for port %d: err=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@cxgb4vf_pci_probe._entry_ptr.64 = internal global ptr @cxgb4vf_pci_probe._entry.62, section ".printk_index", align 4
@cxgb4vf_pci_probe._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.42, ptr @.str.21, i32 3107, ptr @.str.43, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cannot initialize port %d\0A\00", [37 x i8] zeroinitializer }, align 32
@cxgb4vf_pci_probe._entry_ptr.67 = internal global ptr @cxgb4vf_pci_probe._entry.65, section ".printk_index", align 4
@cxgb4vf_pci_probe._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.42, ptr @.str.21, i32 3115, ptr @.str.43, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"unable to determine MAC ACL address, continuing anyway.. (status %d)\0A\00", [58 x i8] zeroinitializer }, align 32
@cxgb4vf_pci_probe._entry_ptr.70 = internal global ptr @cxgb4vf_pci_probe._entry.68, section ".printk_index", align 4
@cxgb4vf_pci_probe._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.42, ptr @.str.21, i32 3124, ptr @.str.43, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"unable to set MAC address %pM\0A\00", [33 x i8] zeroinitializer }, align 32
@cxgb4vf_pci_probe._entry_ptr.73 = internal global ptr @cxgb4vf_pci_probe._entry.71, section ".printk_index", align 4
@cxgb4vf_pci_probe._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.42, ptr @.str.21, i32 3128, ptr @.str.22, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Using assigned MAC ACL: %pM\0A\00", [35 x i8] zeroinitializer }, align 32
@cxgb4vf_pci_probe._entry_ptr.76 = internal global ptr @cxgb4vf_pci_probe._entry.74, section ".printk_index", align 4
@cxgb4vf_pci_probe._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.42, ptr @.str.21, i32 3143, ptr @.str.22, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"Unable to use MSI-X Interrupts; falling back to MSI Interrupts\0A\00", [32 x i8] zeroinitializer }, align 32
@cxgb4vf_pci_probe._entry_ptr.79 = internal global ptr @cxgb4vf_pci_probe._entry.77, section ".printk_index", align 4
@cxgb4vf_pci_probe._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.42, ptr @.str.21, i32 3155, ptr @.str.43, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Unable to allocate MSI Interrupts; err=%d\0A\00", [53 x i8] zeroinitializer }, align 32
@cxgb4vf_pci_probe._entry_ptr.82 = internal global ptr @cxgb4vf_pci_probe._entry.80, section ".printk_index", align 4
@cxgb4vf_pci_probe._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.42, ptr @.str.21, i32 3184, ptr @.str.85, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"cannot register net device %s, skipping\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@cxgb4vf_pci_probe._entry_ptr.86 = internal global ptr @cxgb4vf_pci_probe._entry.83, section ".printk_index", align 4
@cxgb4vf_pci_probe._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.42, ptr @.str.21, i32 3192, ptr @.str.43, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"could not register any net devices\0A\00", [60 x i8] zeroinitializer }, align 32
@cxgb4vf_pci_probe._entry_ptr.89 = internal global ptr @cxgb4vf_pci_probe._entry.87, section ".printk_index", align 4
@cxgb4vf_pci_probe._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.42, ptr @.str.21, i32 3215, ptr @.str.22, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: Chelsio VF NIC PCIe %s\0A\00", [36 x i8] zeroinitializer }, align 32
@cxgb4vf_pci_probe._entry_ptr.92 = internal global ptr @cxgb4vf_pci_probe._entry.90, section ".printk_index", align 4
@.str.93 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MSI-X\00", [26 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MSI\00", [28 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@adap_init0._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.21, i32 2534, ptr @.str.43, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"FW reset failed: err=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"adap_init0\00", [21 x i8] zeroinitializer }, align 32
@adap_init0._entry_ptr = internal global ptr @adap_init0._entry, section ".printk_index", align 4
@adap_init0._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.97, ptr @.str.21, i32 2549, ptr @.str.43, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"unable to retrieve adapter device parameters: err=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@adap_init0._entry_ptr.100 = internal global ptr @adap_init0._entry.98, section ".printk_index", align 4
@adap_init0._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.97, ptr @.str.21, i32 2555, ptr @.str.43, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"unable to retrieve adapter VPD parameters: err=%d\0A\00", [45 x i8] zeroinitializer }, align 32
@adap_init0._entry_ptr.103 = internal global ptr @adap_init0._entry.101, section ".printk_index", align 4
@adap_init0._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.97, ptr @.str.21, i32 2561, ptr @.str.43, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"unable to retrieve adapter SGE parameters: err=%d\0A\00", [45 x i8] zeroinitializer }, align 32
@adap_init0._entry_ptr.106 = internal global ptr @adap_init0._entry.104, section ".printk_index", align 4
@adap_init0._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.97, ptr @.str.21, i32 2567, ptr @.str.43, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"unable to retrieve adapter RSS parameters: err=%d\0A\00", [45 x i8] zeroinitializer }, align 32
@adap_init0._entry_ptr.109 = internal global ptr @adap_init0._entry.107, section ".printk_index", align 4
@adap_init0._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.97, ptr @.str.21, i32 2573, ptr @.str.43, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"unable to operate with global RSS mode %d\0A\00", [53 x i8] zeroinitializer }, align 32
@adap_init0._entry_ptr.112 = internal global ptr @adap_init0._entry.110, section ".printk_index", align 4
@adap_init0._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.97, ptr @.str.21, i32 2579, ptr @.str.43, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"unable to use adapter parameters: err=%d\0A\00", [54 x i8] zeroinitializer }, align 32
@adap_init0._entry_ptr.115 = internal global ptr @adap_init0._entry.113, section ".printk_index", align 4
@adap_init0._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.97, ptr @.str.21, i32 2623, ptr @.str.43, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"unable to get virtual interface resources: err=%d\0A\00", [45 x i8] zeroinitializer }, align 32
@adap_init0._entry_ptr.118 = internal global ptr @adap_init0._entry.116, section ".printk_index", align 4
@adap_init0._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.97, ptr @.str.21, i32 2630, ptr @.str.43, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"no port access configured\0Ausable!\0A\00", [61 x i8] zeroinitializer }, align 32
@adap_init0._entry_ptr.121 = internal global ptr @adap_init0._entry.119, section ".printk_index", align 4
@adap_init0._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.97, ptr @.str.21, i32 2635, ptr @.str.43, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"no virtual interfaces configured/usable!\0A\00", [54 x i8] zeroinitializer }, align 32
@adap_init0._entry_ptr.124 = internal global ptr @adap_init0._entry.122, section ".printk_index", align 4
@adapter_up._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.126, ptr @.str.21, i32 796, ptr @.str.43, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"request_irq failed, err %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"adapter_up\00", [21 x i8] zeroinitializer }, align 32
@adapter_up._entry_ptr = internal global ptr @adapter_up._entry, section ".printk_index", align 4
@fwevtq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.128, ptr @.str.21, i32 515, ptr @.str.43, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"unexpected FW4/CPL %#x on FW event queue\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fwevtq_handler\00", [17 x i8] zeroinitializer }, align 32
@fwevtq_handler._entry_ptr = internal global ptr @fwevtq_handler._entry, section ".printk_index", align 4
@fwevtq_handler._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.128, ptr @.str.21, i32 549, ptr @.str.43, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Egress Update QID %d out of range\0A\00", [61 x i8] zeroinitializer }, align 32
@fwevtq_handler._entry_ptr.131 = internal global ptr @fwevtq_handler._entry.129, section ".printk_index", align 4
@fwevtq_handler._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.128, ptr @.str.21, i32 555, ptr @.str.43, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Egress Update QID %d TXQ=NULL\0A\00", [33 x i8] zeroinitializer }, align 32
@fwevtq_handler._entry_ptr.134 = internal global ptr @fwevtq_handler._entry.132, section ".printk_index", align 4
@fwevtq_handler._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.128, ptr @.str.21, i32 562, ptr @.str.43, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Egress Update QID %d refers to TXQ %d\0A\00", [57 x i8] zeroinitializer }, align 32
@fwevtq_handler._entry_ptr.137 = internal global ptr @fwevtq_handler._entry.135, section ".printk_index", align 4
@fwevtq_handler._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.128, ptr @.str.21, i32 577, ptr @.str.43, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"unexpected CPL %#x on FW event queue\0A\00", [58 x i8] zeroinitializer }, align 32
@fwevtq_handler._entry_ptr.140 = internal global ptr @fwevtq_handler._entry.138, section ".printk_index", align 4
@.str.141 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s-FWeventq\00", [20 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s-%d\00", [26 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%u.%u.%u.%u, TP %u.%u.%u.%u\00", [36 x i8] zeroinitializer }, align 32
@stats_strings = internal constant { [23 x [32 x i8]], [160 x i8] } { [23 x [32 x i8]] [[32 x i8] c"TxBroadcastBytes  \00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TxBroadcastFrames \00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TxMulticastBytes  \00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TxMulticastFrames \00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TxUnicastBytes    \00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TxUnicastFrames   \00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TxDroppedFrames   \00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TxOffloadBytes    \00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TxOffloadFrames   \00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RxBroadcastBytes  \00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RxBroadcastFrames \00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RxMulticastBytes  \00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RxMulticastFrames \00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RxUnicastBytes    \00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RxUnicastFrames   \00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RxErrorFrames     \00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TSO               \00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TxCsumOffload     \00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RxCsumGood        \00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"VLANextractions   \00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"VLANinsertions    \00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"GROPackets        \00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"GROMerged         \00\00\00\00\00\00\00\00\00\00\00\00\00\00"], [160 x i8] zeroinitializer }, align 32
@enable_msix._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.145, ptr @.str.21, i32 2829, ptr @.str.85, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"only enough MSI-X vectors for %d Queue Sets\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"enable_msix\00", [20 x i8] zeroinitializer }, align 32
@enable_msix._entry_ptr = internal global ptr @enable_msix._entry, section ".printk_index", align 4
@size_nports_qsets._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.147, ptr @.str.21, i32 2459, ptr @.str.85, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"only using %d of %d maximum allowed virtual interfaces\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"size_nports_qsets\00", [46 x i8] zeroinitializer }, align 32
@size_nports_qsets._entry_ptr = internal global ptr @size_nports_qsets._entry, section ".printk_index", align 4
@size_nports_qsets._entry.148 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.147, ptr @.str.21, i32 2473, ptr @.str.85, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"only using %d of %d provisioned virtual interfaces; limited by Port Access Rights mask %#x\0A\00", [36 x i8] zeroinitializer }, align 32
@size_nports_qsets._entry_ptr.150 = internal global ptr @size_nports_qsets._entry.148, section ".printk_index", align 4
@size_nports_qsets._entry.151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.147, ptr @.str.21, i32 2505, ptr @.str.85, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"only using %d of %d available virtual interfaces (too few Queue Sets)\0A\00", [57 x i8] zeroinitializer }, align 32
@size_nports_qsets._entry_ptr.153 = internal global ptr @size_nports_qsets._entry.151, section ".printk_index", align 4
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@.str.154 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mboxlog\00", [24 x i8] zeroinitializer }, align 32
@mboxlog_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mboxlog_open, ptr null, ptr @seq_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sge_qinfo\00", [22 x i8] zeroinitializer }, align 32
@sge_qinfo_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @sge_qinfo_open, ptr null, ptr @seq_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sge_qstats\00", [21 x i8] zeroinitializer }, align 32
@sge_qstats_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @sge_qstats_open, ptr null, ptr @seq_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"resources\00", [22 x i8] zeroinitializer }, align 32
@resources_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @resources_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"interfaces\00", [21 x i8] zeroinitializer }, align 32
@interfaces_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @interfaces_open, ptr null, ptr @seq_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@mboxlog_sops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @mboxlog_start, ptr @mboxlog_stop, ptr @mboxlog_next, ptr @mboxlog_show }, [16 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%10s  %15s  %5s  %5s  %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Seq#\00", [27 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Tstamp\00", [25 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Atime\00", [26 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Etime\00", [26 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Command/Reply\00", [18 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%10u  %15llu  %5d  %5d\00", [41 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"  %08x %08x\00", [20 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@sge_qinfo_sops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @sge_queue_start, ptr @sge_queue_stop, ptr @sge_queue_next, ptr @sge_qinfo_show }, [16 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%-12s\00", [26 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"QType:\00", [25 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %16s\00", [26 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Ethernet\00", [23 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Interface:\00", [21 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"N/A\00", [28 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Port:\00", [26 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %16d\00", [26 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TxQ ID:\00", [24 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %16u\00", [26 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"TxQ size:\00", [22 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TxQ inuse:\00", [21 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"TxQ PIdx:\00", [22 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"TxQ CIdx:\00", [22 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"RspQ ID:\00", [23 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"RspQ size:\00", [21 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RspQE size:\00", [20 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Intr delay:\00", [20 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Intr pktcnt:\00", [19 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"RspQ CIdx:\00", [21 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"RspQ Gen:\00", [22 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"FL ID:\00", [25 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"FL size:\00", [23 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"FL avail:\00", [22 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"FL PIdx:\00", [23 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"FL CIdx:\00", [23 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%-12s %16s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FW event queue\00", [17 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%-12s %16u\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"RspQ Cidx:\00", [21 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Interrupt Queue\00", [16 x i8] zeroinitializer }, align 32
@sge_qstats_sops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @sge_qstats_start, ptr @sge_qstats_stop, ptr @sge_qstats_next, ptr @sge_qstats_show }, [16 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%-16s\00", [26 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" %8s\00", [27 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"RspQNullInts:\00", [18 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" %8u\00", [27 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"RxPackets:\00", [21 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %8lu\00", [26 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"RxCSO:\00", [25 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"VLANxtract:\00", [20 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"LROmerged:\00", [21 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LROpackets:\00", [20 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"RxDrops:\00", [23 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TSO:\00", [27 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"TxCSO:\00", [25 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"VLANins:\00", [23 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TxQFull:\00", [23 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TxQRestarts:\00", [19 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"TxMapErr:\00", [22 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"FLAllocErr:\00", [20 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"FLLrgAlcErr:\00", [19 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"FLStarving:\00", [20 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%-8s %16s\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%-16s %8u\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%-60s %d\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Virtual Interfaces (nvi):\00", [38 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Egress Queues (neq):\00", [43 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Ethernet Control (nethctrl):\00", [35 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Ingress Queues/w Free Lists/Interrupts (niqflint):\00", [45 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Ingress Queues (niq):\00", [42 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Traffic Class (tc):\00", [44 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%-60s %#x\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Port Access Rights Mask (pmask):\00", [63 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"MAC Address Filters (nexactf):\00", [33 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Firmware Command Read Capabilities (r_caps):\00", [51 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Firmware Command Write/Execute Capabilities (wx_caps):\00", [41 x i8] zeroinitializer }, align 32
@interfaces_sops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @interfaces_start, ptr @interfaces_stop, ptr @interfaces_next, ptr @interfaces_show }, [16 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Interface  Port   VIID\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%9s  %4d  %#5x\0A\00", [16 x i8] zeroinitializer }, align 32
@cxgb4vf_module_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.235, ptr @.str.236, ptr @.str.21, i32 3424, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\014cxgb4vf: bad module parameter msi=%d; must be %d (MSI-X or MSI) or %d (MSI)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cxgb4vf_module_init\00", [44 x i8] zeroinitializer }, align 32
@cxgb4vf_module_init._entry_ptr = internal global ptr @cxgb4vf_module_init._entry, section ".printk_index", align 4
@switch.table.t4vf_os_link_changed = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.7, ptr @.str.8, ptr @.str.9], [20 x i8] zeroinitializer }, align 32
@switch.table.cxgb4vf_get_link_ksettings = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\03\03\03\05\05\03", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 100, i64 1000, i64 10000, i64 25000, i64 40000, i64 100000]
@__sancov_gen_cov_switch_values.237 = internal global [5 x i64] [i64 3, i64 8, i64 28, i64 29, i64 30]
@__sancov_gen_cov_switch_values.238 = internal global [5 x i64] [i64 3, i64 8, i64 165, i64 192, i64 224]
@__sancov_gen_cov_switch_values.239 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.240 = internal global [18 x i64] [i64 16, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 9, i64 12, i64 13, i64 14, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22]
@__sancov_gen_cov_switch_values.241 = internal global [24 x i64] [i64 22, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22]
@___asan_gen_.242 = private unnamed_addr constant [4 x i8] c"msi\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 88, i32 12 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 161, i32 8 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 164, i32 8 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 167, i32 8 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 170, i32 8 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 173, i32 8 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 176, i32 8 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 180, i32 8 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 186, i32 9 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 190, i32 9 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 194, i32 9 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 198, i32 9 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 202, i32 20 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 205, i32 20 }
@___asan_gen_.284 = private unnamed_addr constant [8 x i8] c"mod_str\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 215, i32 28 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 216, i32 9 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 216, i32 15 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 216, i32 21 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 216, i32 27 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 216, i32 41 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 216, i32 54 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 222, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 225, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 228, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 231, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 234, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 237, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant [15 x i8] c"cxgb4vf_driver\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 3404, i32 26 }
@___asan_gen_.356 = private unnamed_addr constant [21 x i8] c"cxgb4vf_debugfs_root\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 127, i32 23 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 3405, i32 11 }
@___asan_gen_.362 = private unnamed_addr constant [16 x i8] c"cxgb4vf_pci_tbl\00", align 1
@___asan_gen_.363 = private unnamed_addr constant [65 x i8] c"../drivers/net/ethernet/chelsio/cxgb4vf/../cxgb4/t4_pci_id_tbl.h\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 94, i32 1 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2909, i32 41 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2917, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2926, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2960, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2961, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2969, i32 3 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2978, i32 3 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2990, i32 4 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 3020, i32 3 }
@___asan_gen_.422 = private unnamed_addr constant [19 x i8] c"cxgb4vf_netdev_ops\00", align 1
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2840, i32 36 }
@___asan_gen_.425 = private unnamed_addr constant [20 x i8] c"cxgb4vf_ethtool_ops\00", align 1
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 1928, i32 33 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 3093, i32 4 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 3106, i32 4 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 3113, i32 4 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 3122, i32 5 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 3127, i32 4 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 3141, i32 4 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 3154, i32 4 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 3183, i32 4 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 3192, i32 3 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 3212, i32 3 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2534, i32 3 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2548, i32 3 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2554, i32 3 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2560, i32 3 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2566, i32 3 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2572, i32 3 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2578, i32 3 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2622, i32 3 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2629, i32 3 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2634, i32 3 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 795, i32 3 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 514, i32 4 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 548, i32 4 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 554, i32 4 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 560, i32 4 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 576, i32 3 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 358, i32 4 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 371, i32 6 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 1560, i32 4 }
@___asan_gen_.614 = private unnamed_addr constant [14 x i8] c"stats_strings\00", align 1
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 1739, i32 19 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2828, i32 3 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2457, i32 3 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2470, i32 3 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2503, i32 3 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2392, i32 4 }
@___asan_gen_.650 = private unnamed_addr constant [13 x i8] c"mboxlog_fops\00", align 1
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2035, i32 1 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2393, i32 4 }
@___asan_gen_.656 = private unnamed_addr constant [15 x i8] c"sge_qinfo_fops\00", align 1
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2170, i32 1 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2394, i32 4 }
@___asan_gen_.662 = private unnamed_addr constant [16 x i8] c"sge_qstats_fops\00", align 1
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2299, i32 1 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2395, i32 4 }
@___asan_gen_.668 = private unnamed_addr constant [15 x i8] c"resources_fops\00", align 1
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2328, i32 1 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2396, i32 4 }
@___asan_gen_.674 = private unnamed_addr constant [16 x i8] c"interfaces_fops\00", align 1
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2380, i32 1 }
@___asan_gen_.677 = private unnamed_addr constant [13 x i8] c"mboxlog_sops\00", align 1
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2028, i32 36 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 1976, i32 7 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 1977, i32 7 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 1977, i32 15 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 1977, i32 25 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 1977, i32 34 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 1978, i32 7 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 1991, i32 18 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 1999, i32 19 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2001, i32 16 }
@___asan_gen_.707 = private unnamed_addr constant [15 x i8] c"sge_qinfo_sops\00", align 1
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2163, i32 36 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2066, i32 3 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2067, i32 3 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2071, i32 3 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2076, i32 3 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2077, i32 3 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2078, i32 3 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2079, i32 3 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2080, i32 3 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2081, i32 3 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2082, i32 3 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2083, i32 3 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2084, i32 3 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2085, i32 3 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2087, i32 3 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2088, i32 3 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2089, i32 3 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2090, i32 3 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2091, i32 3 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2092, i32 3 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2093, i32 3 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2101, i32 19 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2101, i32 45 }
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2102, i32 19 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2107, i32 35 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2112, i32 45 }
@___asan_gen_.803 = private unnamed_addr constant [16 x i8] c"sge_qstats_sops\00", align 1
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2292, i32 36 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2206, i32 3 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2211, i32 3 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2212, i32 3 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2213, i32 3 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2214, i32 3 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2215, i32 3 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2216, i32 3 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2217, i32 3 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2218, i32 3 }
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2219, i32 3 }
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2220, i32 3 }
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2221, i32 3 }
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2222, i32 3 }
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2223, i32 3 }
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2224, i32 3 }
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2225, i32 3 }
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2226, i32 3 }
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2234, i32 19 }
@___asan_gen_.871 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2235, i32 19 }
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2313, i32 2 }
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2314, i32 2 }
@___asan_gen_.883 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2315, i32 2 }
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2316, i32 2 }
@___asan_gen_.889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2317, i32 2 }
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2318, i32 2 }
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2319, i32 2 }
@___asan_gen_.901 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2320, i32 2 }
@___asan_gen_.904 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2321, i32 2 }
@___asan_gen_.907 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2322, i32 2 }
@___asan_gen_.908 = private unnamed_addr constant [16 x i8] c"interfaces_sops\00", align 1
@___asan_gen_.910 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2373, i32 36 }
@___asan_gen_.913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2336, i32 17 }
@___asan_gen_.916 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 2343, i32 19 }
@___asan_gen_.917 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.923 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.924 = private constant [55 x i8] c"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c\00", align 1
@___asan_gen_.925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 3423, i32 3 }
@___asan_gen_.926 = private unnamed_addr constant [34 x i8] c"switch.table.t4vf_os_link_changed\00", align 1
@___asan_gen_.927 = private unnamed_addr constant [40 x i8] c"switch.table.cxgb4vf_get_link_ksettings\00", align 1
@llvm.compiler.used = appending global [283 x ptr] [ptr @__UNIQUE_ID_author360, ptr @__UNIQUE_ID_description359, ptr @__UNIQUE_ID_file361, ptr @__UNIQUE_ID_license362, ptr @__UNIQUE_ID_msi352, ptr @__UNIQUE_ID_msitype351, ptr @__exitcall_cxgb4vf_module_exit, ptr @__initcall__kmod_cxgb4vf__363_3446_cxgb4vf_module_init6, ptr @__param_msi, ptr @adap_init0._entry, ptr @adap_init0._entry.101, ptr @adap_init0._entry.104, ptr @adap_init0._entry.107, ptr @adap_init0._entry.110, ptr @adap_init0._entry.113, ptr @adap_init0._entry.116, ptr @adap_init0._entry.119, ptr @adap_init0._entry.122, ptr @adap_init0._entry.98, ptr @adap_init0._entry_ptr, ptr @adap_init0._entry_ptr.100, ptr @adap_init0._entry_ptr.103, ptr @adap_init0._entry_ptr.106, ptr @adap_init0._entry_ptr.109, ptr @adap_init0._entry_ptr.112, ptr @adap_init0._entry_ptr.115, ptr @adap_init0._entry_ptr.118, ptr @adap_init0._entry_ptr.121, ptr @adap_init0._entry_ptr.124, ptr @adapter_up._entry, ptr @adapter_up._entry_ptr, ptr @cxgb4vf_module_exit, ptr @cxgb4vf_module_init._entry, ptr @cxgb4vf_module_init._entry_ptr, ptr @cxgb4vf_pci_probe._entry, ptr @cxgb4vf_pci_probe._entry.44, ptr @cxgb4vf_pci_probe._entry.50, ptr @cxgb4vf_pci_probe._entry.53, ptr @cxgb4vf_pci_probe._entry.56, ptr @cxgb4vf_pci_probe._entry.59, ptr @cxgb4vf_pci_probe._entry.62, ptr @cxgb4vf_pci_probe._entry.65, ptr @cxgb4vf_pci_probe._entry.68, ptr @cxgb4vf_pci_probe._entry.71, ptr @cxgb4vf_pci_probe._entry.74, ptr @cxgb4vf_pci_probe._entry.77, ptr @cxgb4vf_pci_probe._entry.80, ptr @cxgb4vf_pci_probe._entry.83, ptr @cxgb4vf_pci_probe._entry.87, ptr @cxgb4vf_pci_probe._entry.90, ptr @cxgb4vf_pci_probe._entry_ptr, ptr @cxgb4vf_pci_probe._entry_ptr.46, ptr @cxgb4vf_pci_probe._entry_ptr.52, ptr @cxgb4vf_pci_probe._entry_ptr.55, ptr @cxgb4vf_pci_probe._entry_ptr.58, ptr @cxgb4vf_pci_probe._entry_ptr.61, ptr @cxgb4vf_pci_probe._entry_ptr.64, ptr @cxgb4vf_pci_probe._entry_ptr.67, ptr @cxgb4vf_pci_probe._entry_ptr.70, ptr @cxgb4vf_pci_probe._entry_ptr.73, ptr @cxgb4vf_pci_probe._entry_ptr.76, ptr @cxgb4vf_pci_probe._entry_ptr.79, ptr @cxgb4vf_pci_probe._entry_ptr.82, ptr @cxgb4vf_pci_probe._entry_ptr.86, ptr @cxgb4vf_pci_probe._entry_ptr.89, ptr @cxgb4vf_pci_probe._entry_ptr.92, ptr @enable_msix._entry, ptr @enable_msix._entry_ptr, ptr @fwevtq_handler._entry, ptr @fwevtq_handler._entry.129, ptr @fwevtq_handler._entry.132, ptr @fwevtq_handler._entry.135, ptr @fwevtq_handler._entry.138, ptr @fwevtq_handler._entry_ptr, ptr @fwevtq_handler._entry_ptr.131, ptr @fwevtq_handler._entry_ptr.134, ptr @fwevtq_handler._entry_ptr.137, ptr @fwevtq_handler._entry_ptr.140, ptr @size_nports_qsets._entry, ptr @size_nports_qsets._entry.148, ptr @size_nports_qsets._entry.151, ptr @size_nports_qsets._entry_ptr, ptr @size_nports_qsets._entry_ptr.150, ptr @size_nports_qsets._entry_ptr.153, ptr @t4vf_os_portmod_changed._entry, ptr @t4vf_os_portmod_changed._entry.24, ptr @t4vf_os_portmod_changed._entry.27, ptr @t4vf_os_portmod_changed._entry.30, ptr @t4vf_os_portmod_changed._entry.33, ptr @t4vf_os_portmod_changed._entry.36, ptr @t4vf_os_portmod_changed._entry_ptr, ptr @t4vf_os_portmod_changed._entry_ptr.26, ptr @t4vf_os_portmod_changed._entry_ptr.29, ptr @t4vf_os_portmod_changed._entry_ptr.32, ptr @t4vf_os_portmod_changed._entry_ptr.35, ptr @t4vf_os_portmod_changed._entry_ptr.38, ptr @msi, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @t4vf_os_portmod_changed.mod_str, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @cxgb4vf_driver, ptr @cxgb4vf_debugfs_root, ptr @.str.39, ptr @cxgb4vf_pci_tbl, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @cxgb4vf_pci_probe.__key, ptr @.str.47, ptr @cxgb4vf_pci_probe.__key.48, ptr @.str.49, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @cxgb4vf_netdev_ops, ptr @cxgb4vf_ethtool_ops, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.72, ptr @.str.75, ptr @.str.78, ptr @.str.81, ptr @.str.84, ptr @.str.85, ptr @.str.88, ptr @.str.91, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.99, ptr @.str.102, ptr @.str.105, ptr @.str.108, ptr @.str.111, ptr @.str.114, ptr @.str.117, ptr @.str.120, ptr @.str.123, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.130, ptr @.str.133, ptr @.str.136, ptr @.str.139, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @stats_strings, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.149, ptr @.str.152, ptr @.str.154, ptr @mboxlog_fops, ptr @.str.155, ptr @sge_qinfo_fops, ptr @.str.156, ptr @sge_qstats_fops, ptr @.str.157, ptr @resources_fops, ptr @.str.158, ptr @interfaces_fops, ptr @mboxlog_sops, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @sge_qinfo_sops, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @sge_qstats_sops, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @interfaces_sops, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @switch.table.t4vf_os_link_changed, ptr @switch.table.cxgb4vf_get_link_ksettings], section "llvm.metadata"
@0 = internal global [230 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msi to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t4vf_os_portmod_changed.mod_str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t4vf_os_portmod_changed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t4vf_os_portmod_changed._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t4vf_os_portmod_changed._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t4vf_os_portmod_changed._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t4vf_os_portmod_changed._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t4vf_os_portmod_changed._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4vf_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4vf_debugfs_root to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4vf_pci_tbl to i32), i32 3872, i32 4832, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4vf_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4vf_pci_probe._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4vf_pci_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4vf_pci_probe.__key.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4vf_pci_probe._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4vf_pci_probe._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4vf_pci_probe._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4vf_pci_probe._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4vf_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4vf_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4vf_pci_probe._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4vf_pci_probe._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4vf_pci_probe._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4vf_pci_probe._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4vf_pci_probe._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4vf_pci_probe._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4vf_pci_probe._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4vf_pci_probe._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4vf_pci_probe._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4vf_pci_probe._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adap_init0._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adap_init0._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adap_init0._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adap_init0._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adap_init0._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adap_init0._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adap_init0._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adap_init0._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adap_init0._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adap_init0._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_up._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwevtq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwevtq_handler._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwevtq_handler._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwevtq_handler._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwevtq_handler._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stats_strings to i32), i32 736, i32 896, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_msix._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @size_nports_qsets._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @size_nports_qsets._entry.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @size_nports_qsets._entry.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mboxlog_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sge_qinfo_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sge_qstats_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @resources_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @interfaces_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mboxlog_sops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sge_qinfo_sops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sge_qstats_sops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @interfaces_sops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4vf_module_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.t4vf_os_link_changed to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cxgb4vf_get_link_ksettings to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t4vf_os_link_changed(ptr nocapture noundef readonly %adapter, i32 noundef %pidx, i32 noundef %link_ok) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 11, i32 %pidx
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %6 = lshr i32 %5, 2
  %.lobit = and i32 %6, 1
  %7 = xor i32 %.lobit, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %link_ok)
  %cmp = icmp eq i32 %7, %link_ok
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %link_ok)
  %tobool.not = icmp eq i32 %link_ok, 0
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  tail call void @netif_carrier_on(ptr noundef %1) #18
  %speed = getelementptr i8, ptr %1, i32 2348
  %8 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %speed, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %sw.default [
    i32 100, label %if.then3.sw.epilog_crit_edge
    i32 1000, label %sw.bb5
    i32 10000, label %sw.bb6
    i32 25000, label %sw.bb7
    i32 40000, label %sw.bb8
    i32 100000, label %sw.bb9
  ]

if.then3.sw.epilog_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

sw.default:                                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %if.then3.sw.epilog_crit_edge
  %s.0 = phi ptr [ @.str.6, %sw.default ], [ @.str.5, %sw.bb9 ], [ @.str.4, %sw.bb8 ], [ @.str.3, %sw.bb7 ], [ @.str.2, %sw.bb6 ], [ @.str.1, %sw.bb5 ], [ @.str, %if.then3.sw.epilog_crit_edge ]
  %fc11 = getelementptr i8, ptr %1, i32 2356
  %11 = ptrtoint ptr %fc11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fc11, align 4
  %switch.tableidx = add i32 %12, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %13 = icmp ult i32 %switch.tableidx, 3
  br i1 %13, label %switch.lookup, label %sw.epilog.sw.epilog16_crit_edge

sw.epilog.sw.epilog16_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog16

switch.lookup:                                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #20
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.t4vf_os_link_changed, i32 0, i32 %switch.tableidx
  %14 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %14)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %sw.epilog16

sw.epilog16:                                      ; preds = %switch.lookup, %sw.epilog.sw.epilog16_crit_edge
  %fc.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.10, %sw.epilog.sw.epilog16_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.11, ptr noundef nonnull %s.0, ptr noundef nonnull %fc.0) #21
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @netif_carrier_off(ptr noundef %1) #18
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.12) #21
  br label %cleanup

cleanup:                                          ; preds = %if.else, %sw.epilog16, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t4vf_os_portmod_changed(ptr nocapture noundef readonly %adapter, i32 noundef %pidx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 11, i32 %pidx
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %mod_type = getelementptr i8, ptr %1, i32 2325
  %2 = ptrtoint ptr %mod_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mod_type, align 1
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %3)
  %cmp = icmp eq i8 %3, 31
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %pdev_dev = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %4 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.19, ptr noundef %1) #21
  br label %if.end63

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %3)
  %cmp4 = icmp ult i8 %3, 7
  br i1 %cmp4, label %do.end9, label %if.else15

do.end9:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  %pdev_dev10 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %6 = ptrtoint ptr %pdev_dev10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev_dev10, align 4
  %arrayidx14 = getelementptr [7 x ptr], ptr @t4vf_os_portmod_changed.mod_str, i32 0, i32 %conv
  %8 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx14, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.25, ptr noundef %1, ptr noundef %9) #21
  br label %if.end63

if.else15:                                        ; preds = %if.else
  %10 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.237)
  switch i8 %3, label %do.end54 [
    i8 30, label %do.end23
    i8 29, label %do.end35
    i8 28, label %do.end47
  ]

do.end23:                                         ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #20
  %pdev_dev24 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %11 = ptrtoint ptr %pdev_dev24 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev_dev24, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %12, ptr noundef nonnull @.str.28, ptr noundef %1) #21
  br label %if.end63

do.end35:                                         ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #20
  %pdev_dev36 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %13 = ptrtoint ptr %pdev_dev36 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev_dev36, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %14, ptr noundef nonnull @.str.31, ptr noundef %1) #21
  br label %if.end63

do.end47:                                         ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #20
  %pdev_dev48 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %15 = ptrtoint ptr %pdev_dev48 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev_dev48, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %16, ptr noundef nonnull @.str.34, ptr noundef %1) #21
  br label %if.end63

do.end54:                                         ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #20
  %pdev_dev55 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %17 = ptrtoint ptr %pdev_dev55 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev_dev55, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %18, ptr noundef nonnull @.str.37, ptr noundef %1, i32 noundef %conv) #21
  br label %if.end63

if.end63:                                         ; preds = %do.end54, %do.end47, %do.end35, %do.end23, %do.end9, %do.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cxgb4vf_module_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @pci_unregister_driver(ptr noundef nonnull @cxgb4vf_driver) #18
  %0 = load ptr, ptr @cxgb4vf_debugfs_root, align 4
  tail call void @debugfs_remove(ptr noundef %0) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cxgb4vf_module_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @msi, align 4
  %.off = add i32 %0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.235, i32 noundef %0, i32 noundef 2, i32 noundef 1) #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.39, ptr noundef null) #18
  store ptr %call2, ptr @cxgb4vf_debugfs_root, align 4
  %call3 = tail call i32 @__pci_register_driver(ptr noundef nonnull @cxgb4vf_driver, ptr noundef null, ptr noundef nonnull @.str.39) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %1 = load ptr, ptr @cxgb4vf_debugfs_root, align 4
  tail call void @debugfs_remove(ptr noundef %1) #18
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call3, %if.then5 ], [ %call3, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxgb4vf_pci_probe(ptr noundef %pdev, ptr nocapture noundef readnone %ent) #0 align 64 {
entry:
  %entries.i = alloca [9 x %struct.msix_entry], align 4
  %naddr.i = alloca i32, align 4
  %mac.i = alloca [6 x i8], align 4
  %param.i = alloca i32, align 4
  %val.i = alloca i32, align 4
  %mac = alloca [6 x i8], align 4
  %naddr = alloca i32, align 4
  %addr = alloca %struct.sockaddr, align 2
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pci_enable_device(ptr noundef %pdev) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call1 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %call, ptr noundef nonnull @.str.40) #18
  br label %cleanup343

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str.39) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  %dev7 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  br i1 %tobool3.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.41) #21
  br label %err_disable_device

if.end6:                                          ; preds = %if.end
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev7, i64 noundef -1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end15, label %do.end13

do.end13:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.45) #21
  br label %err_release_regions

if.end15:                                         ; preds = %if.end6
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev7, i64 noundef -1) #18
  tail call void @pci_set_master(ptr noundef %pdev) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 5376) #22
  %tobool17.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool17.not, label %if.end15.err_release_regions_crit_edge, label %if.end19

if.end15.err_release_regions_crit_edge:           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #20
  br label %err_release_regions

if.end19:                                         ; preds = %if.end15
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %pdev20 = getelementptr inbounds %struct.adapter, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %pdev20 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pdev, ptr %pdev20, align 8
  %pdev_dev = getelementptr inbounds %struct.adapter, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev7, ptr %pdev_dev, align 4
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 20492, i32 noundef 3520, i32 noundef 3) #23
  %mbox_log = getelementptr inbounds %struct.adapter, ptr %call7.i.i, i32 0, i32 18
  %4 = ptrtoint ptr %mbox_log to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call1.i.i.i, ptr %mbox_log, align 16
  %tobool24.not = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool24.not, label %if.end19.err_free_adapter_crit_edge, label %if.end26

if.end19.err_free_adapter_crit_edge:              ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #20
  br label %err_free_adapter

if.end26:                                         ; preds = %if.end19
  %5 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 256, ptr %call1.i.i.i, align 4096
  %stats_lock = getelementptr inbounds %struct.adapter, ptr %call7.i.i, i32 0, i32 15
  tail call void @__raw_spin_lock_init(ptr noundef %stats_lock, ptr noundef nonnull @.str.47, ptr noundef nonnull @cxgb4vf_pci_probe.__key, i16 noundef signext 3) #18
  %mbox_lock = getelementptr inbounds %struct.adapter, ptr %call7.i.i, i32 0, i32 16
  tail call void @__raw_spin_lock_init(ptr noundef %mbox_lock, ptr noundef nonnull @.str.49, ptr noundef nonnull @cxgb4vf_pci_probe.__key.48, i16 noundef signext 3) #18
  %mlist = getelementptr inbounds %struct.adapter, ptr %call7.i.i, i32 0, i32 17
  %6 = ptrtoint ptr %mlist to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %mlist, ptr %mlist, align 8
  %prev.i = getelementptr inbounds %struct.adapter, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %mlist, ptr %prev.i, align 4
  %call36 = tail call ptr @pci_ioremap_bar(ptr noundef %pdev, i32 noundef 0) #18
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call36, ptr %call7.i.i, align 128
  %tobool38.not = icmp eq ptr %call36, null
  br i1 %tobool38.not, label %do.end42, label %if.end44

do.end42:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.51) #21
  br label %err_free_adapter

if.end44:                                         ; preds = %if.end26
  %call45 = tail call i32 @t4vf_prep_adapter(ptr noundef nonnull %call7.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end52, label %do.end50

do.end50:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #20
  %9 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.54, i32 noundef %call45) #21
  br label %err_unmap_bar0

if.end52:                                         ; preds = %if.end44
  %chip = getelementptr inbounds %struct.adapter, ptr %call7.i.i, i32 0, i32 7, i32 6
  %11 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %chip, align 4
  %13 = and i32 %12, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %13)
  %cmp.i526.not = icmp eq i32 %13, 64
  br i1 %cmp.i526.not, label %if.end52.if.end73_crit_edge, label %if.then55

if.end52.if.end73_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end73

if.then55:                                        ; preds = %if.end52
  %arrayidx = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 2
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 8
  %end = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 2, i32 1
  %16 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp = icmp eq i32 %17, 0
  %sub = sub i32 1, %15
  %add = add i32 %sub, %17
  %cond = select i1 %cmp, i32 0, i32 %add
  %call64 = tail call ptr @ioremap_wc(i32 noundef %15, i32 noundef %cond) #18
  %bar2 = getelementptr inbounds %struct.adapter, ptr %call7.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %bar2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call64, ptr %bar2, align 4
  %tobool66.not = icmp eq ptr %call64, null
  br i1 %tobool66.not, label %do.end70, label %if.then55.if.end73_crit_edge

if.then55.if.end73_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end73

do.end70:                                         ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #20
  %19 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.57) #21
  br label %err_unmap_bar0

if.end73:                                         ; preds = %if.then55.if.end73_crit_edge, %if.end52.if.end73_crit_edge
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %21 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end73.pci_name.exit_crit_edge

if.end73.pci_name.exit_crit_edge:                 ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #20
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #20
  %23 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev7, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.end73.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %24, %if.end.i.i ], [ %22, %if.end73.pci_name.exit_crit_edge ]
  %name = getelementptr inbounds %struct.adapter, ptr %call7.i.i, i32 0, i32 12
  %25 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %retval.0.i.i, ptr %name, align 4
  %msg_enable = getelementptr inbounds %struct.adapter, ptr %call7.i.i, i32 0, i32 13
  %26 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 255, ptr %msg_enable, align 8
  %call75 = tail call zeroext i1 @pcie_relaxed_ordering_enabled(ptr noundef %pdev) #18
  br i1 %call75, label %pci_name.exit.if.end77_crit_edge, label %if.then76

pci_name.exit.if.end77_crit_edge:                 ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end77

if.then76:                                        ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #20
  %flags = getelementptr inbounds %struct.adapter, ptr %call7.i.i, i32 0, i32 6
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags, align 8
  %or = or i32 %28, 16
  store i32 %or, ptr %flags, align 8
  br label %if.end77

if.end77:                                         ; preds = %if.then76, %pci_name.exit.if.end77_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param.i) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #18
  %call.i527 = tail call i32 @t4vf_fw_reset(ptr noundef nonnull %call7.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i527)
  %cmp.i528 = icmp slt i32 %call.i527, 0
  br i1 %cmp.i528, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #20
  %29 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdev_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.96, i32 noundef %call.i527) #21
  br label %do.end83

if.end.i:                                         ; preds = %if.end77
  %call2.i = tail call i32 @t4vf_get_dev_params(ptr noundef nonnull %call7.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end8.i, label %do.end6.i

do.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %31 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdev_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.99, i32 noundef %call2.i) #21
  br label %do.end83

if.end8.i:                                        ; preds = %if.end.i
  %call9.i = tail call i32 @t4vf_get_vpd_params(ptr noundef nonnull %call7.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end16.i, label %do.end14.i

do.end14.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #20
  %33 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdev_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.102, i32 noundef %call9.i) #21
  br label %do.end83

if.end16.i:                                       ; preds = %if.end8.i
  %call17.i = tail call i32 @t4vf_get_sge_params(ptr noundef nonnull %call7.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end24.i, label %do.end22.i

do.end22.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #20
  %35 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdev_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.105, i32 noundef %call17.i) #21
  br label %do.end83

if.end24.i:                                       ; preds = %if.end16.i
  %call25.i = tail call i32 @t4vf_get_rss_glb_config(ptr noundef nonnull %call7.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.end32.i, label %do.end30.i

do.end30.i:                                       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #20
  %37 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pdev_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.108, i32 noundef %call25.i) #21
  br label %do.end83

if.end32.i:                                       ; preds = %if.end24.i
  %rss.i = getelementptr inbounds %struct.adapter, ptr %call7.i.i, i32 0, i32 7, i32 3
  %39 = ptrtoint ptr %rss.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rss.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp34.not.i = icmp eq i32 %40, 1
  br i1 %cmp34.not.i, label %if.end43.i, label %do.end38.i

do.end38.i:                                       ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #20
  %41 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pdev_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.111, i32 noundef %40) #21
  br label %do.end83

if.end43.i:                                       ; preds = %if.end32.i
  %call44.i = tail call i32 @t4vf_sge_init(ptr noundef nonnull %call7.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %tobool45.not.i = icmp eq i32 %call44.i, 0
  br i1 %tobool45.not.i, label %if.end51.i, label %do.end49.i

do.end49.i:                                       ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #20
  %43 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pdev_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.114, i32 noundef %call44.i) #21
  br label %do.end83

if.end51.i:                                       ; preds = %if.end43.i
  %45 = ptrtoint ptr %param.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 36765696, ptr %param.i, align 4
  %46 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %val.i, align 4
  %call52.i = call i32 @t4vf_set_params(ptr noundef nonnull %call7.i.i, i32 noundef 1, ptr noundef nonnull %param.i, ptr noundef nonnull %val.i) #18
  %sge_timer_value_0_and_1.i = getelementptr inbounds %struct.adapter, ptr %call7.i.i, i32 0, i32 7, i32 1, i32 11
  %47 = ptrtoint ptr %sge_timer_value_0_and_1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %sge_timer_value_0_and_1.i, align 4
  %shr.i529 = lshr i32 %48, 16
  %mul.i.i = mul nuw nsw i32 %shr.i529, 1000
  %vpd.i.i = getelementptr inbounds %struct.adapter, ptr %call7.i.i, i32 0, i32 7, i32 2
  %49 = ptrtoint ptr %vpd.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %vpd.i.i, align 8
  %div.i.i = udiv i32 %mul.i.i, %50
  %conv.i530 = trunc i32 %div.i.i to i16
  %timer_val.i = getelementptr inbounds %struct.adapter, ptr %call7.i.i, i32 0, i32 10, i32 13
  %51 = ptrtoint ptr %timer_val.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv.i530, ptr %timer_val.i, align 2
  %and56.i = and i32 %48, 65535
  %mul.i209.i = mul nuw nsw i32 %and56.i, 1000
  %div.i211.i = udiv i32 %mul.i209.i, %50
  %conv58.i = trunc i32 %div.i211.i to i16
  %arrayidx60.i = getelementptr %struct.adapter, ptr %call7.i.i, i32 0, i32 10, i32 13, i32 1
  %52 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv58.i, ptr %arrayidx60.i, align 8
  %sge_timer_value_2_and_3.i = getelementptr inbounds %struct.adapter, ptr %call7.i.i, i32 0, i32 7, i32 1, i32 12
  %53 = ptrtoint ptr %sge_timer_value_2_and_3.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %sge_timer_value_2_and_3.i, align 8
  %shr61.i = lshr i32 %54, 16
  %mul.i212.i = mul nuw nsw i32 %shr61.i, 1000
  %div.i214.i = udiv i32 %mul.i212.i, %50
  %conv64.i = trunc i32 %div.i214.i to i16
  %arrayidx66.i = getelementptr %struct.adapter, ptr %call7.i.i, i32 0, i32 10, i32 13, i32 2
  %55 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %conv64.i, ptr %arrayidx66.i, align 2
  %and69.i = and i32 %54, 65535
  %mul.i215.i = mul nuw nsw i32 %and69.i, 1000
  %div.i217.i = udiv i32 %mul.i215.i, %50
  %conv71.i = trunc i32 %div.i217.i to i16
  %arrayidx73.i = getelementptr %struct.adapter, ptr %call7.i.i, i32 0, i32 10, i32 13, i32 3
  %56 = ptrtoint ptr %arrayidx73.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %conv71.i, ptr %arrayidx73.i, align 4
  %sge_timer_value_4_and_5.i = getelementptr inbounds %struct.adapter, ptr %call7.i.i, i32 0, i32 7, i32 1, i32 13
  %57 = ptrtoint ptr %sge_timer_value_4_and_5.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %sge_timer_value_4_and_5.i, align 4
  %shr74.i = lshr i32 %58, 16
  %mul.i218.i = mul nuw nsw i32 %shr74.i, 1000
  %div.i220.i = udiv i32 %mul.i218.i, %50
  %conv77.i = trunc i32 %div.i220.i to i16
  %arrayidx79.i = getelementptr %struct.adapter, ptr %call7.i.i, i32 0, i32 10, i32 13, i32 4
  %59 = ptrtoint ptr %arrayidx79.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %conv77.i, ptr %arrayidx79.i, align 2
  %and82.i = and i32 %58, 65535
  %mul.i221.i = mul nuw nsw i32 %and82.i, 1000
  %div.i223.i = udiv i32 %mul.i221.i, %50
  %conv84.i = trunc i32 %div.i223.i to i16
  %arrayidx86.i = getelementptr %struct.adapter, ptr %call7.i.i, i32 0, i32 10, i32 13, i32 5
  %60 = ptrtoint ptr %arrayidx86.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %conv84.i, ptr %arrayidx86.i, align 8
  %sge_ingress_rx_threshold.i = getelementptr inbounds %struct.adapter, ptr %call7.i.i, i32 0, i32 7, i32 1, i32 9
  %61 = ptrtoint ptr %sge_ingress_rx_threshold.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %sge_ingress_rx_threshold.i, align 4
  %shr87.i = lshr i32 %62, 24
  %63 = trunc i32 %shr87.i to i8
  %conv89.i = and i8 %63, 63
  %counter_val.i = getelementptr inbounds %struct.adapter, ptr %call7.i.i, i32 0, i32 10, i32 14
  %64 = ptrtoint ptr %counter_val.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv89.i, ptr %counter_val.i, align 2
  %shr92.i = lshr i32 %62, 16
  %65 = trunc i32 %shr92.i to i8
  %conv94.i = and i8 %65, 63
  %arrayidx96.i = getelementptr %struct.adapter, ptr %call7.i.i, i32 0, i32 10, i32 14, i32 1
  %66 = ptrtoint ptr %arrayidx96.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv94.i, ptr %arrayidx96.i, align 1
  %shr98.i = lshr i32 %62, 8
  %67 = trunc i32 %shr98.i to i8
  %conv100.i = and i8 %67, 63
  %arrayidx102.i = getelementptr %struct.adapter, ptr %call7.i.i, i32 0, i32 10, i32 14, i32 2
  %68 = ptrtoint ptr %arrayidx102.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv100.i, ptr %arrayidx102.i, align 4
  %69 = trunc i32 %62 to i8
  %conv106.i = and i8 %69, 63
  %arrayidx108.i = getelementptr %struct.adapter, ptr %call7.i.i, i32 0, i32 10, i32 14, i32 3
  %70 = ptrtoint ptr %arrayidx108.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv106.i, ptr %arrayidx108.i, align 1
  %call109.i = call i32 @t4vf_get_vfres(ptr noundef nonnull %call7.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109.i)
  %tobool110.not.i = icmp eq i32 %call109.i, 0
  br i1 %tobool110.not.i, label %if.end116.i, label %do.end114.i

do.end114.i:                                      ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #20
  %71 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pdev_dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.117, i32 noundef %call109.i) #21
  br label %do.end83

if.end116.i:                                      ; preds = %if.end51.i
  %pmask.i = getelementptr inbounds %struct.adapter, ptr %call7.i.i, i32 0, i32 7, i32 4, i32 6
  %73 = ptrtoint ptr %pmask.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %pmask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp118.i = icmp eq i32 %74, 0
  br i1 %cmp118.i, label %do.end123.i, label %if.end125.i

do.end123.i:                                      ; preds = %if.end116.i
  call void @__sanitizer_cov_trace_pc() #20
  %75 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pdev_dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str.120) #21
  br label %do.end83

if.end125.i:                                      ; preds = %if.end116.i
  %vfres.i = getelementptr inbounds %struct.adapter, ptr %call7.i.i, i32 0, i32 7, i32 4
  %77 = ptrtoint ptr %vfres.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %vfres.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp128.i = icmp eq i32 %78, 0
  br i1 %cmp128.i, label %do.end133.i, label %adap_init0.exit

do.end133.i:                                      ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #20
  %79 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pdev_dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %80, ptr noundef nonnull @.str.123) #21
  br label %do.end83

adap_init0.exit:                                  ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #20
  call fastcc void @size_nports_qsets(ptr noundef nonnull %call7.i.i) #18
  %flags.i = getelementptr inbounds %struct.adapter, ptr %call7.i.i, i32 0, i32 6
  %81 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %flags.i, align 8
  %or.i = or i32 %82, 32
  store i32 %or.i, ptr %flags.i, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param.i) #18
  br label %if.end85

do.end83:                                         ; preds = %do.end133.i, %do.end123.i, %do.end114.i, %do.end49.i, %do.end38.i, %do.end30.i, %do.end22.i, %do.end14.i, %do.end6.i, %do.end.i
  %retval.0.i.ph = phi i32 [ -22, %do.end133.i ], [ -22, %do.end123.i ], [ %call109.i, %do.end114.i ], [ %call44.i, %do.end49.i ], [ -22, %do.end38.i ], [ %call25.i, %do.end30.i ], [ %call17.i, %do.end22.i ], [ %call9.i, %do.end14.i ], [ %call2.i, %do.end6.i ], [ %call.i527, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param.i) #18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.60, i32 noundef %retval.0.i.ph) #21
  br label %if.end85

if.end85:                                         ; preds = %do.end83, %adap_init0.exit
  %mac_hlist = getelementptr inbounds %struct.adapter, ptr %call7.i.i, i32 0, i32 19
  %83 = ptrtoint ptr %mac_hlist to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %mac_hlist, ptr %mac_hlist, align 4
  %prev.i531 = getelementptr inbounds %struct.adapter, ptr %call7.i.i, i32 0, i32 19, i32 1
  %84 = ptrtoint ptr %prev.i531 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %mac_hlist, ptr %prev.i531, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %naddr.i) #18
  %85 = ptrtoint ptr %naddr.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 1, ptr %naddr.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac.i) #18
  %86 = getelementptr inbounds [6 x i8], ptr %mac.i, i32 0, i32 4
  %pmask1.i = getelementptr inbounds %struct.adapter, ptr %call7.i.i, i32 0, i32 7, i32 4, i32 6
  %87 = call ptr @memset(ptr %mac.i, i32 255, i32 6)
  %88 = ptrtoint ptr %pmask1.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %pmask1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool.not22.i = icmp eq i32 %89, 0
  br i1 %tobool.not22.i, label %if.end85.if.then9.i_crit_edge, label %if.end85.while.body.i_crit_edge

if.end85.while.body.i_crit_edge:                  ; preds = %if.end85
  br label %while.body.i

if.end85.if.then9.i_crit_edge:                    ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then9.i

while.body.i:                                     ; preds = %if.end7.i.while.body.i_crit_edge, %if.end85.while.body.i_crit_edge
  %rmask.026.i = phi i32 [ %rmask.1.i, %if.end7.i.while.body.i_crit_edge ], [ 0, %if.end85.while.body.i_crit_edge ]
  %pmask.025.i = phi i32 [ %shr.i536, %if.end7.i.while.body.i_crit_edge ], [ %89, %if.end85.while.body.i_crit_edge ]
  %pidx.023.i = phi i32 [ %inc.i, %if.end7.i.while.body.i_crit_edge ], [ 0, %if.end85.while.body.i_crit_edge ]
  %and.i532 = and i32 %pmask.025.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i532)
  %tobool2.not.i = icmp eq i32 %and.i532, 0
  br i1 %tobool2.not.i, label %while.body.i.if.end7.i_crit_edge, label %if.then.i534

while.body.i.if.end7.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end7.i

if.then.i534:                                     ; preds = %while.body.i
  %call.i533 = call i32 @t4vf_get_vf_mac_acl(ptr noundef %call7.i.i, i32 noundef %pidx.023.i, ptr noundef nonnull %naddr.i, ptr noundef nonnull %mac.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i533)
  %tobool3.not.i = icmp eq i32 %call.i533, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i, label %if.then.i534.if.end7.i_crit_edge

if.then.i534.if.end7.i_crit_edge:                 ; preds = %if.then.i534
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end7.i

land.lhs.true.i:                                  ; preds = %if.then.i534
  %90 = ptrtoint ptr %mac.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %mac.i, align 4
  %92 = ptrtoint ptr %86 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %86, align 4
  %conv.i.i = zext i16 %93 to i32
  %or.i.i = or i32 %91, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %land.lhs.true.i.if.end7.i_crit_edge, label %if.then6.i

land.lhs.true.i.if.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end7.i

if.then6.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  %shl.i = shl nuw i32 1, %pidx.023.i
  %or.i535 = or i32 %shl.i, %rmask.026.i
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then6.i, %land.lhs.true.i.if.end7.i_crit_edge, %if.then.i534.if.end7.i_crit_edge, %while.body.i.if.end7.i_crit_edge
  %rmask.1.i = phi i32 [ %rmask.026.i, %if.then.i534.if.end7.i_crit_edge ], [ %rmask.026.i, %land.lhs.true.i.if.end7.i_crit_edge ], [ %or.i535, %if.then6.i ], [ %rmask.026.i, %while.body.i.if.end7.i_crit_edge ]
  %shr.i536 = lshr i32 %pmask.025.i, 1
  %inc.i = add nuw nsw i32 %pidx.023.i, 1
  %tobool.not.i537 = icmp ult i32 %pmask.025.i, 2
  br i1 %tobool.not.i537, label %while.end.i, label %if.end7.i.while.body.i_crit_edge

if.end7.i.while.body.i_crit_edge:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body.i

while.end.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rmask.1.i)
  %tobool8.not.i = icmp eq i32 %rmask.1.i, 0
  br i1 %tobool8.not.i, label %while.end.i.if.then9.i_crit_edge, label %while.end.i.cxgb4vf_get_port_mask.exit_crit_edge

while.end.i.cxgb4vf_get_port_mask.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cxgb4vf_get_port_mask.exit

while.end.i.if.then9.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then9.i

if.then9.i:                                       ; preds = %while.end.i.if.then9.i_crit_edge, %if.end85.if.then9.i_crit_edge
  %94 = ptrtoint ptr %pmask1.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %pmask1.i, align 4
  br label %cxgb4vf_get_port_mask.exit

cxgb4vf_get_port_mask.exit:                       ; preds = %if.then9.i, %while.end.i.cxgb4vf_get_port_mask.exit_crit_edge
  %rmask.2.i = phi i32 [ %rmask.1.i, %while.end.i.cxgb4vf_get_port_mask.exit_crit_edge ], [ %95, %if.then9.i ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac.i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %naddr.i) #18
  %nports = getelementptr inbounds %struct.adapter, ptr %call7.i.i, i32 0, i32 7, i32 7
  %96 = ptrtoint ptr %nports to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %nports, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %cmp88624.not = icmp eq i8 %97, 0
  br i1 %cmp88624.not, label %cxgb4vf_get_port_mask.exit.for.end_crit_edge, label %for.body.lr.ph

cxgb4vf_get_port_mask.exit.for.end_crit_edge:     ; preds = %cxgb4vf_get_port_mask.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.lr.ph:                                   ; preds = %cxgb4vf_get_port_mask.exit
  %98 = getelementptr inbounds [6 x i8], ptr %mac, i32 0, i32 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %flags117 = getelementptr inbounds %struct.adapter, ptr %call7.i.i, i32 0, i32 6
  %vfres = getelementptr inbounds %struct.adapter, ptr %call7.i.i, i32 0, i32 7, i32 4
  %99 = getelementptr inbounds %struct.sockaddr, ptr %addr, i32 0, i32 1
  %100 = getelementptr inbounds %struct.sockaddr, ptr %addr, i32 0, i32 1, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %pidx.0626 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %pmask.0625 = phi i32 [ %rmask.2.i, %for.body.lr.ph ], [ %and, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac) #18
  %101 = call ptr @memset(ptr %mac, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %naddr) #18
  %102 = ptrtoint ptr %naddr to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 1, ptr %naddr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pmask.0625)
  %cmp90 = icmp eq i32 %pmask.0625, 0
  br i1 %cmp90, label %cleanup171, label %if.end93

if.end93:                                         ; preds = %for.body
  %103 = call i32 @llvm.cttz.i32(i32 %pmask.0625, i1 true), !range !455
  %shl = shl nuw i32 1, %103
  %neg = xor i32 %shl, -1
  %and = and i32 %pmask.0625, %neg
  %call95 = call ptr @alloc_etherdev_mqs(i32 noundef 76, i32 noundef 8, i32 noundef 8) #18
  %cmp96 = icmp eq ptr %call95, null
  br i1 %cmp96, label %if.end93.cleanup171.thread585_crit_edge, label %if.end99

if.end93.cleanup171.thread585_crit_edge:          ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup171.thread585

if.end99:                                         ; preds = %if.end93
  %arrayidx100 = getelementptr %struct.adapter, ptr %call7.i.i, i32 0, i32 11, i32 %pidx.0626
  %104 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %call95, ptr %arrayidx100, align 4
  %parent = getelementptr inbounds %struct.net_device, ptr %call95, i32 0, i32 133, i32 1
  %105 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %dev7, ptr %parent, align 8
  %add.ptr.i = getelementptr i8, ptr %call95, i32 2304
  %106 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %call7.i.i, ptr %add.ptr.i, align 4
  %conv105 = trunc i32 %pidx.0626 to i8
  %pidx106 = getelementptr i8, ptr %call95, i32 2322
  %107 = ptrtoint ptr %pidx106 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %conv105, ptr %pidx106, align 2
  %conv107 = trunc i32 %103 to i8
  %port_id108 = getelementptr i8, ptr %call95, i32 2326
  %108 = ptrtoint ptr %port_id108 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %conv107, ptr %port_id108, align 2
  %xact_addr_filt = getelementptr i8, ptr %call95, i32 2316
  %109 = ptrtoint ptr %xact_addr_filt to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 -1, ptr %xact_addr_filt, align 4
  %110 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %irq, align 4
  %irq109 = getelementptr inbounds %struct.net_device, ptr %call95, i32 0, i32 64
  %112 = ptrtoint ptr %irq109 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %irq109, align 4
  %hw_features = getelementptr inbounds %struct.net_device, ptr %call95, i32 0, i32 24
  %113 = ptrtoint ptr %hw_features to i32
  call void @__asan_store8_noabort(i32 %113)
  store i64 1099513020819, ptr %hw_features, align 8
  %features = getelementptr inbounds %struct.net_device, ptr %call95, i32 0, i32 23
  %114 = ptrtoint ptr %features to i32
  call void @__asan_store8_noabort(i32 %114)
  store i64 1099513020851, ptr %features, align 16
  %vlan_features = getelementptr inbounds %struct.net_device, ptr %call95, i32 0, i32 26
  %115 = ptrtoint ptr %vlan_features to i32
  call void @__asan_store8_noabort(i32 %115)
  store i64 1392691, ptr %vlan_features, align 8
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %call95, i32 0, i32 15
  %116 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %priv_flags, align 16
  %or114 = or i64 %117, 4096
  store i64 %or114, ptr %priv_flags, align 16
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %call95, i32 0, i32 30
  %118 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 81, ptr %min_mtu, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %call95, i32 0, i32 31
  %119 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 65535, ptr %max_mtu, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call95, i32 0, i32 16
  %120 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr @cxgb4vf_netdev_ops, ptr %netdev_ops, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call95, i32 0, i32 44
  %121 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr @cxgb4vf_ethtool_ops, ptr %ethtool_ops, align 16
  %122 = trunc i32 %103 to i16
  %dev_port = getelementptr inbounds %struct.net_device, ptr %call95, i32 0, i32 61
  %123 = ptrtoint ptr %dev_port to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %122, ptr %dev_port, align 4
  %124 = ptrtoint ptr %flags117 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %flags117, align 8
  %and118 = and i32 %125, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118)
  %tobool119.not = icmp eq i32 %and118, 0
  br i1 %tobool119.not, label %if.end99.for.inc_crit_edge, label %if.end121

if.end99.for.inc_crit_edge:                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.end121:                                        ; preds = %if.end99
  %call122 = call i32 @t4vf_alloc_vi(ptr noundef %call7.i.i, i32 noundef %103) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %cmp123 = icmp slt i32 %call122, 0
  br i1 %cmp123, label %do.end128, label %if.end130

do.end128:                                        ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.63, i32 noundef %103, i32 noundef %call122) #21
  br label %cleanup171.thread585

if.end130:                                        ; preds = %if.end121
  %conv131 = trunc i32 %call122 to i16
  %viid132 = getelementptr i8, ptr %call95, i32 2312
  %126 = ptrtoint ptr %viid132 to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 %conv131, ptr %viid132, align 4
  %call133 = call i32 @t4vf_port_init(ptr noundef %call7.i.i, i32 noundef %pidx.0626) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %if.end140, label %do.end138

do.end138:                                        ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.66, i32 noundef %pidx.0626) #21
  br label %cleanup171.thread585

if.end140:                                        ; preds = %if.end130
  %call141 = call i32 @t4vf_get_vf_mac_acl(ptr noundef %call7.i.i, i32 noundef %103, ptr noundef nonnull %naddr, ptr noundef nonnull %mac) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call141)
  %tobool142.not = icmp eq i32 %call141, 0
  br i1 %tobool142.not, label %if.else, label %do.end146

do.end146:                                        ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.69, i32 noundef %call141) #21
  br label %for.inc

if.else:                                          ; preds = %if.end140
  %127 = ptrtoint ptr %naddr to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %naddr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %tobool148.not = icmp eq i32 %128, 0
  br i1 %tobool148.not, label %if.else.for.inc_crit_edge, label %land.lhs.true

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

land.lhs.true:                                    ; preds = %if.else
  %129 = ptrtoint ptr %vfres to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %vfres, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %130)
  %cmp150 = icmp eq i32 %130, 1
  br i1 %cmp150, label %if.then152, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.then152:                                       ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %addr) #18
  %131 = call ptr @memset(ptr %addr, i32 255, i32 16)
  %132 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %mac, align 4
  %134 = ptrtoint ptr %99 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %133, ptr %99, align 4
  %135 = ptrtoint ptr %98 to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %98, align 4
  %137 = ptrtoint ptr %100 to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 %136, ptr %100, align 2
  %call155 = call i32 @cxgb4vf_set_mac_addr(ptr noundef nonnull %call95, ptr noundef nonnull %addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call155)
  %tobool156.not = icmp eq i32 %call155, 0
  br i1 %tobool156.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev7, ptr noundef nonnull @.str.75, ptr noundef nonnull %mac) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %addr) #18
  br label %for.inc

cleanup:                                          ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.72, ptr noundef nonnull %mac) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %addr) #18
  br label %cleanup171.thread585

cleanup171.thread585:                             ; preds = %cleanup, %do.end138, %do.end128, %if.end93.cleanup171.thread585_crit_edge
  %err.2.ph584 = phi i32 [ %call155, %cleanup ], [ %call133, %do.end138 ], [ %call122, %do.end128 ], [ -12, %if.end93.cleanup171.thread585_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %naddr) #18
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac) #18
  br label %err_free_dev

cleanup171:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %naddr) #18
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac) #18
  br label %for.end

for.inc:                                          ; preds = %cleanup.thread, %land.lhs.true.for.inc_crit_edge, %if.else.for.inc_crit_edge, %do.end146, %if.end99.for.inc_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %naddr) #18
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac) #18
  %inc = add nuw nsw i32 %pidx.0626, 1
  %138 = ptrtoint ptr %nports to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %nports, align 8
  %conv = zext i8 %139 to i32
  %cmp88 = icmp ult i32 %inc, %conv
  br i1 %cmp88, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cleanup171, %cxgb4vf_get_port_mask.exit.for.end_crit_edge
  %140 = load i32, ptr @msi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %140)
  %cmp177 = icmp eq i32 %140, 2
  br i1 %cmp177, label %land.lhs.true179, label %for.end.if.end194_crit_edge

for.end.if.end194_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end194

land.lhs.true179:                                 ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %entries.i) #18
  %141 = call ptr @memset(ptr %entries.i, i32 255, i32 72)
  %entry1.i = getelementptr inbounds [9 x %struct.msix_entry], ptr %entries.i, i32 0, i32 0, i32 1
  %142 = ptrtoint ptr %entry1.i to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 0, ptr %entry1.i, align 4
  %entry1.1.i = getelementptr inbounds [9 x %struct.msix_entry], ptr %entries.i, i32 0, i32 1, i32 1
  %143 = ptrtoint ptr %entry1.1.i to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 1, ptr %entry1.1.i, align 4
  %entry1.2.i = getelementptr inbounds [9 x %struct.msix_entry], ptr %entries.i, i32 0, i32 2, i32 1
  %144 = ptrtoint ptr %entry1.2.i to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 2, ptr %entry1.2.i, align 4
  %entry1.3.i = getelementptr inbounds [9 x %struct.msix_entry], ptr %entries.i, i32 0, i32 3, i32 1
  %145 = ptrtoint ptr %entry1.3.i to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 3, ptr %entry1.3.i, align 4
  %entry1.4.i = getelementptr inbounds [9 x %struct.msix_entry], ptr %entries.i, i32 0, i32 4, i32 1
  %146 = ptrtoint ptr %entry1.4.i to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 4, ptr %entry1.4.i, align 4
  %entry1.5.i = getelementptr inbounds [9 x %struct.msix_entry], ptr %entries.i, i32 0, i32 5, i32 1
  %147 = ptrtoint ptr %entry1.5.i to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 5, ptr %entry1.5.i, align 4
  %entry1.6.i = getelementptr inbounds [9 x %struct.msix_entry], ptr %entries.i, i32 0, i32 6, i32 1
  %148 = ptrtoint ptr %entry1.6.i to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 6, ptr %entry1.6.i, align 4
  %entry1.7.i = getelementptr inbounds [9 x %struct.msix_entry], ptr %entries.i, i32 0, i32 7, i32 1
  %149 = ptrtoint ptr %entry1.7.i to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 7, ptr %entry1.7.i, align 4
  %entry1.8.i = getelementptr inbounds [9 x %struct.msix_entry], ptr %entries.i, i32 0, i32 8, i32 1
  %150 = ptrtoint ptr %entry1.8.i to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 8, ptr %entry1.8.i, align 4
  %max_ethqsets.i = getelementptr inbounds %struct.adapter, ptr %call7.i.i, i32 0, i32 10, i32 10
  %151 = ptrtoint ptr %max_ethqsets.i to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %max_ethqsets.i, align 16
  %conv2.i = zext i16 %152 to i32
  %add.i = add nuw nsw i32 %conv2.i, 1
  %153 = ptrtoint ptr %nports to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %nports, align 8
  %conv3.i = zext i8 %154 to i32
  %add4.i = add nuw nsw i32 %conv3.i, 1
  %155 = ptrtoint ptr %pdev20 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %pdev20, align 8
  %call.i539 = call i32 @pci_enable_msix_range(ptr noundef %156, ptr noundef nonnull %entries.i, i32 noundef %add4.i, i32 noundef %add.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i539)
  %cmp5.i = icmp slt i32 %call.i539, 0
  br i1 %cmp5.i, label %if.else186, label %if.end.i540

if.end.i540:                                      ; preds = %land.lhs.true179
  %157 = ptrtoint ptr %max_ethqsets.i to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %max_ethqsets.i, align 16
  %conv8.i = zext i16 %158 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i539, i32 %conv8.i)
  %cmp9.not.i = icmp ugt i32 %call.i539, %conv8.i
  br i1 %cmp9.not.i, label %if.end.i540.for.body23.i.preheader_crit_edge, label %do.end.i542

if.end.i540.for.body23.i.preheader_crit_edge:     ; preds = %if.end.i540
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body23.i.preheader

do.end.i542:                                      ; preds = %if.end.i540
  %sub.i = add nsw i32 %call.i539, -1
  %159 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %pdev_dev, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %160, ptr noundef nonnull @.str.144, i32 noundef %sub.i) #21
  %conv12.i = trunc i32 %sub.i to i16
  %161 = ptrtoint ptr %max_ethqsets.i to i32
  call void @__asan_store2_noabort(i32 %161)
  store i16 %conv12.i, ptr %max_ethqsets.i, align 16
  %ethqsets.i = getelementptr inbounds %struct.adapter, ptr %call7.i.i, i32 0, i32 10, i32 11
  %162 = ptrtoint ptr %ethqsets.i to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %ethqsets.i, align 2
  %conv14.i = zext i16 %163 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i539, i32 %conv14.i)
  %cmp15.not.i = icmp ugt i32 %call.i539, %conv14.i
  br i1 %cmp15.not.i, label %do.end.i542.for.body23.i.preheader_crit_edge, label %if.then17.i

do.end.i542.for.body23.i.preheader_crit_edge:     ; preds = %do.end.i542
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body23.i.preheader

if.then17.i:                                      ; preds = %do.end.i542
  %164 = ptrtoint ptr %nports to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %nports, align 8
  %conv.i.i543 = zext i8 %165 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i539, i32 %conv.i.i543)
  %cmp.i.not.i = icmp ugt i32 %call.i539, %conv.i.i543
  br i1 %cmp.i.not.i, label %for.cond.preheader.i.preheader.i, label %do.body3.i.i, !prof !456

for.cond.preheader.i.preheader.i:                 ; preds = %if.then17.i
  %166 = trunc i32 %call.i539 to i16
  br label %for.cond.preheader.i.i

do.body3.i.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #20
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2773, 0\0A.popsection", ""() #18, !srcloc !457
  unreachable

for.cond.preheader.i.i:                           ; preds = %for.end.i.i.for.cond.preheader.i.i_crit_edge, %for.cond.preheader.i.preheader.i
  %167 = phi i8 [ %165, %for.cond.preheader.i.preheader.i ], [ %178, %for.end.i.i.for.cond.preheader.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %167)
  %cmp1569.not.i.i = icmp eq i8 %167, 0
  br i1 %cmp1569.not.i.i, label %for.cond.preheader.i.i.for.end.i.ithread-pre-split_crit_edge, label %for.cond.preheader.i.i.for.body.i.i_crit_edge

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.preheader.i.i.for.end.i.ithread-pre-split_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end.i.ithread-pre-split

for.cond33.preheader.i.i:                         ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %178)
  %cmp3774.not.i.i = icmp eq i8 %178, 0
  br i1 %cmp3774.not.i.i, label %for.cond33.preheader.i.i.if.end19.i_crit_edge, label %for.cond33.preheader.i.i.for.body39.i.i_crit_edge

for.cond33.preheader.i.i.for.body39.i.i_crit_edge: ; preds = %for.cond33.preheader.i.i
  br label %for.body39.i.i

for.cond33.preheader.i.i.if.end19.i_crit_edge:    ; preds = %for.cond33.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end19.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %i.070.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.adapter, ptr %call7.i.i, i32 0, i32 11, i32 %i.070.i.i
  %168 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %arrayidx.i.i.i, align 4
  %nqsets.i.i = getelementptr i8, ptr %169, i32 2327
  %170 = ptrtoint ptr %nqsets.i.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %nqsets.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %171)
  %cmp18.i.i = icmp ugt i8 %171, 1
  br i1 %cmp18.i.i, label %if.then20.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i.i

if.then20.i.i:                                    ; preds = %for.body.i.i
  %dec.i.i = add i8 %171, -1
  %172 = ptrtoint ptr %nqsets.i.i to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 %dec.i.i, ptr %nqsets.i.i, align 1
  %173 = ptrtoint ptr %ethqsets.i to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %ethqsets.i, align 2
  %dec24.i.i = add i16 %174, -1
  store i16 %dec24.i.i, ptr %ethqsets.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %dec24.i.i, i16 %166)
  %cmp28.not.i.not.i = icmp ult i16 %dec24.i.i, %166
  br i1 %cmp28.not.i.not.i, label %if.then20.i.i.for.end.i.ithread-pre-split_crit_edge, label %if.then20.i.i.for.inc.i.i_crit_edge

if.then20.i.i.for.inc.i.i_crit_edge:              ; preds = %if.then20.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i.i

if.then20.i.i.for.end.i.ithread-pre-split_crit_edge: ; preds = %if.then20.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end.i.ithread-pre-split

for.inc.i.i:                                      ; preds = %if.then20.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.070.i.i, 1
  %175 = ptrtoint ptr %nports to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %nports, align 8
  %conv14.i.i = zext i8 %176 to i32
  %cmp15.i.i = icmp ult i32 %inc.i.i, %conv14.i.i
  br i1 %cmp15.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.for.end.i.i_crit_edge

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end.i.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i.i

for.end.i.ithread-pre-split:                      ; preds = %if.then20.i.i.for.end.i.ithread-pre-split_crit_edge, %for.cond.preheader.i.i.for.end.i.ithread-pre-split_crit_edge
  %177 = ptrtoint ptr %nports to i32
  call void @__asan_load1_noabort(i32 %177)
  %.pr = load i8, ptr %nports, align 8
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.end.i.ithread-pre-split, %for.inc.i.i.for.end.i.i_crit_edge
  %178 = phi i8 [ %.pr, %for.end.i.ithread-pre-split ], [ %176, %for.inc.i.i.for.end.i.i_crit_edge ]
  %179 = ptrtoint ptr %ethqsets.i to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %ethqsets.i, align 2
  %cmp10.i.not.i = icmp ult i16 %180, %166
  br i1 %cmp10.i.not.i, label %for.cond33.preheader.i.i, label %for.end.i.i.for.cond.preheader.i.i_crit_edge

for.end.i.i.for.cond.preheader.i.i_crit_edge:     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond.preheader.i.i

for.body39.i.i:                                   ; preds = %for.body39.i.i.for.body39.i.i_crit_edge, %for.cond33.preheader.i.i.for.body39.i.i_crit_edge
  %i.176.i.i = phi i32 [ %inc45.i.i, %for.body39.i.i.for.body39.i.i_crit_edge ], [ 0, %for.cond33.preheader.i.i.for.body39.i.i_crit_edge ]
  %n.addr.075.i.i = phi i32 [ %add.i.i, %for.body39.i.i.for.body39.i.i_crit_edge ], [ 0, %for.cond33.preheader.i.i.for.body39.i.i_crit_edge ]
  %arrayidx.i66.i.i = getelementptr %struct.adapter, ptr %call7.i.i, i32 0, i32 11, i32 %i.176.i.i
  %181 = ptrtoint ptr %arrayidx.i66.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %arrayidx.i66.i.i, align 4
  %conv41.i.i = trunc i32 %n.addr.075.i.i to i8
  %first_qset.i.i = getelementptr i8, ptr %182, i32 2328
  %183 = ptrtoint ptr %first_qset.i.i to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 %conv41.i.i, ptr %first_qset.i.i, align 4
  %nqsets42.i.i = getelementptr i8, ptr %182, i32 2327
  %184 = ptrtoint ptr %nqsets42.i.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %nqsets42.i.i, align 1
  %conv43.i.i = zext i8 %185 to i32
  %add.i.i = add i32 %n.addr.075.i.i, %conv43.i.i
  %inc45.i.i = add nuw nsw i32 %i.176.i.i, 1
  %186 = ptrtoint ptr %nports to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %nports, align 8
  %conv36.i.i = zext i8 %187 to i32
  %cmp37.i.i = icmp ult i32 %inc45.i.i, %conv36.i.i
  br i1 %cmp37.i.i, label %for.body39.i.i.for.body39.i.i_crit_edge, label %for.body39.i.i.if.end19.i_crit_edge

for.body39.i.i.if.end19.i_crit_edge:              ; preds = %for.body39.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end19.i

for.body39.i.i.for.body39.i.i_crit_edge:          ; preds = %for.body39.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body39.i.i

if.end19.i:                                       ; preds = %for.body39.i.i.if.end19.i_crit_edge, %for.cond33.preheader.i.i.if.end19.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i539)
  %cmp2159.i = icmp sgt i32 %call.i539, 0
  br i1 %cmp2159.i, label %if.end19.i.for.body23.i.preheader_crit_edge, label %if.end19.i.if.then183_crit_edge

if.end19.i.if.then183_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then183

if.end19.i.for.body23.i.preheader_crit_edge:      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body23.i.preheader

for.body23.i.preheader:                           ; preds = %if.end19.i.for.body23.i.preheader_crit_edge, %do.end.i542.for.body23.i.preheader_crit_edge, %if.end.i540.for.body23.i.preheader_crit_edge
  br label %for.body23.i

for.body23.i:                                     ; preds = %for.body23.i.for.body23.i_crit_edge, %for.body23.i.preheader
  %i.160.i = phi i32 [ %inc28.i, %for.body23.i.for.body23.i_crit_edge ], [ 0, %for.body23.i.preheader ]
  %arrayidx24.i = getelementptr [9 x %struct.msix_entry], ptr %entries.i, i32 0, i32 %i.160.i
  %188 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %arrayidx24.i, align 4
  %conv25.i = trunc i32 %189 to i16
  %arrayidx26.i = getelementptr %struct.adapter, ptr %call7.i.i, i32 0, i32 8, i32 %i.160.i
  %190 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store2_noabort(i32 %190)
  store i16 %conv25.i, ptr %arrayidx26.i, align 4
  %inc28.i = add nuw nsw i32 %i.160.i, 1
  %exitcond.not.i = icmp eq i32 %inc28.i, %call.i539
  br i1 %exitcond.not.i, label %for.body23.i.if.then183_crit_edge, label %for.body23.i.for.body23.i_crit_edge

for.body23.i.for.body23.i_crit_edge:              ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body23.i

for.body23.i.if.then183_crit_edge:                ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then183

if.then183:                                       ; preds = %for.body23.i.if.then183_crit_edge, %if.end19.i.if.then183_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %entries.i) #18
  br label %if.end205

if.else186:                                       ; preds = %land.lhs.true179
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %entries.i) #18
  %.pr591 = load i32, ptr @msi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr591)
  %cmp187 = icmp eq i32 %.pr591, 2
  br i1 %cmp187, label %do.end192, label %if.else186.if.end194_crit_edge

if.else186.if.end194_crit_edge:                   ; preds = %if.else186
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end194

do.end192:                                        ; preds = %if.else186
  call void @__sanitizer_cov_trace_pc() #20
  %191 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %pdev_dev, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %192, ptr noundef nonnull @.str.78) #21
  store i32 1, ptr @msi, align 4
  call fastcc void @size_nports_qsets(ptr noundef %call7.i.i)
  br label %if.end194

if.end194:                                        ; preds = %do.end192, %if.else186.if.end194_crit_edge, %for.end.if.end194_crit_edge
  %call195 = call i32 @pci_enable_msi(ptr noundef %pdev) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call195)
  %tobool196.not = icmp eq i32 %call195, 0
  br i1 %tobool196.not, label %if.end194.if.end205_crit_edge, label %do.end200

if.end194.if.end205_crit_edge:                    ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end205

do.end200:                                        ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.81, i32 noundef %call195) #21
  br label %err_free_dev

if.end205:                                        ; preds = %if.end194.if.end205_crit_edge, %if.then183
  %.sink667 = phi i32 [ 4, %if.then183 ], [ 2, %if.end194.if.end205_crit_edge ]
  %flags203 = getelementptr inbounds %struct.adapter, ptr %call7.i.i, i32 0, i32 6
  %193 = ptrtoint ptr %flags203 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %flags203, align 8
  %or204 = or i32 %194, %.sink667
  store i32 %or204, ptr %flags203, align 8
  %sge.i = getelementptr inbounds %struct.adapter, ptr %call7.i.i, i32 0, i32 10
  %flags.i545 = getelementptr inbounds %struct.adapter, ptr %call7.i.i, i32 0, i32 6
  %and.i546 = and i32 %or204, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i546)
  %cmp.i547 = icmp eq i32 %and.i546, 0
  br i1 %cmp.i547, label %do.body2.i, label %for.cond.preheader.i, !prof !458

for.cond.preheader.i:                             ; preds = %if.end205
  %195 = ptrtoint ptr %nports to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %nports, align 8
  %conv.i549 = zext i8 %196 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %196)
  %cmp8104.not.i = icmp eq i8 %196, 0
  br i1 %cmp8104.not.i, label %for.cond.preheader.i.for.end46.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end46.i_crit_edge:       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end46.i

do.body2.i:                                       ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #20
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2680, 0\0A.popsection", ""() #18, !srcloc !459
  unreachable

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %n10g.0106.i = phi i32 [ %add.i551, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %pidx.0105.i = phi i32 [ %inc.i552, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.adapter, ptr %call7.i.i, i32 0, i32 11, i32 %pidx.0105.i
  %197 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %arrayidx.i.i, align 4
  %link_cfg.i = getelementptr i8, ptr %198, i32 2332
  %199 = ptrtoint ptr %link_cfg.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %link_cfg.i, align 4
  %and1.i.i = and i32 %200, 4092
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %cmp.i.i550 = icmp ne i32 %and1.i.i, 0
  %conv11.i = zext i1 %cmp.i.i550 to i32
  %add.i551 = add i32 %n10g.0106.i, %conv11.i
  %inc.i552 = add nuw nsw i32 %pidx.0105.i, 1
  %exitcond.not.i553 = icmp eq i32 %inc.i552, %conv.i549
  br i1 %exitcond.not.i553, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i551)
  %cmp12.i = icmp eq i32 %add.i551, 0
  br i1 %cmp12.i, label %for.end.i.if.end27.i_crit_edge, label %if.else.i

for.end.i.if.end27.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end27.i

if.else.i:                                        ; preds = %for.end.i
  %sub.neg.i = sub i32 %add.i551, %conv.i549
  %max_ethqsets.i554 = getelementptr inbounds %struct.adapter, ptr %call7.i.i, i32 0, i32 10, i32 10
  %201 = ptrtoint ptr %max_ethqsets.i554 to i32
  call void @__asan_load2_noabort(i32 %201)
  %202 = load i16, ptr %max_ethqsets.i554, align 16
  %conv19.i = zext i16 %202 to i32
  %sub20.i = add i32 %sub.neg.i, %conv19.i
  %div.i = sdiv i32 %sub20.i, %add.i551
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %203 = load volatile i32, ptr @__num_online_cpus, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %203)
  %cmp22.i = icmp ugt i32 %div.i, %203
  br i1 %cmp22.i, label %if.then24.i, label %if.else.i.if.end27.i_crit_edge

if.else.i.if.end27.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end27.i

if.then24.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #20
  %call.i.i.i91.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %204 = load volatile i32, ptr @__num_online_cpus, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then24.i, %if.else.i.if.end27.i_crit_edge, %for.end.i.if.end27.i_crit_edge
  %q10g.1.ph.i = phi i32 [ %div.i, %if.else.i.if.end27.i_crit_edge ], [ %204, %if.then24.i ], [ 0, %for.end.i.if.end27.i_crit_edge ]
  %205 = ptrtoint ptr %nports to i32
  call void @__asan_load1_noabort(i32 %205)
  %.pr.i = load i8, ptr %nports, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i)
  %cmp32109.not.i = icmp eq i8 %.pr.i, 0
  br i1 %cmp32109.not.i, label %if.end27.i.for.end46.i_crit_edge, label %if.end27.i.for.body34.i_crit_edge

if.end27.i.for.body34.i_crit_edge:                ; preds = %if.end27.i
  br label %for.body34.i

if.end27.i.for.end46.i_crit_edge:                 ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end46.i

for.body34.i:                                     ; preds = %for.body34.i.for.body34.i_crit_edge, %if.end27.i.for.body34.i_crit_edge
  %pidx.1111.i = phi i32 [ %inc45.i, %for.body34.i.for.body34.i_crit_edge ], [ 0, %if.end27.i.for.body34.i_crit_edge ]
  %qidx.0110.i = phi i32 [ %add43.i, %for.body34.i.for.body34.i_crit_edge ], [ 0, %if.end27.i.for.body34.i_crit_edge ]
  %arrayidx.i92.i = getelementptr %struct.adapter, ptr %call7.i.i, i32 0, i32 11, i32 %pidx.1111.i
  %206 = ptrtoint ptr %arrayidx.i92.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %arrayidx.i92.i, align 4
  %conv36.i = trunc i32 %qidx.0110.i to i8
  %first_qset.i = getelementptr i8, ptr %207, i32 2328
  %208 = ptrtoint ptr %first_qset.i to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 %conv36.i, ptr %first_qset.i, align 4
  %link_cfg37.i = getelementptr i8, ptr %207, i32 2332
  %209 = ptrtoint ptr %link_cfg37.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %link_cfg37.i, align 4
  %and1.i94.i = and i32 %210, 4092
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i94.i)
  %cmp.i95.not.i = icmp eq i32 %and1.i94.i, 0
  %spec.select.i = select i1 %cmp.i95.not.i, i32 1, i32 %q10g.1.ph.i
  %conv40.i = trunc i32 %spec.select.i to i8
  %nqsets.i = getelementptr i8, ptr %207, i32 2327
  %211 = ptrtoint ptr %nqsets.i to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 %conv40.i, ptr %nqsets.i, align 1
  %conv42.i = and i32 %spec.select.i, 255
  %add43.i = add i32 %conv42.i, %qidx.0110.i
  %inc45.i = add nuw nsw i32 %pidx.1111.i, 1
  %212 = ptrtoint ptr %nports to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %nports, align 8
  %conv31.i = zext i8 %213 to i32
  %cmp32.i = icmp ult i32 %inc45.i, %conv31.i
  br i1 %cmp32.i, label %for.body34.i.for.body34.i_crit_edge, label %for.end46.loopexit.i

for.body34.i.for.body34.i_crit_edge:              ; preds = %for.body34.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body34.i

for.end46.loopexit.i:                             ; preds = %for.body34.i
  call void @__sanitizer_cov_trace_pc() #20
  %phi.cast.i = trunc i32 %add43.i to i16
  br label %for.end46.i

for.end46.i:                                      ; preds = %for.end46.loopexit.i, %if.end27.i.for.end46.i_crit_edge, %for.cond.preheader.i.for.end46.i_crit_edge
  %qidx.0.lcssa.i = phi i16 [ 0, %if.end27.i.for.end46.i_crit_edge ], [ %phi.cast.i, %for.end46.loopexit.i ], [ 0, %for.cond.preheader.i.for.end46.i_crit_edge ]
  %ethqsets.i555 = getelementptr inbounds %struct.adapter, ptr %call7.i.i, i32 0, i32 10, i32 11
  %214 = ptrtoint ptr %ethqsets.i555 to i32
  call void @__asan_store2_noabort(i32 %214)
  store i16 %qidx.0.lcssa.i, ptr %ethqsets.i555, align 2
  %max_ethqsets49.i = getelementptr inbounds %struct.adapter, ptr %call7.i.i, i32 0, i32 10, i32 10
  %215 = ptrtoint ptr %max_ethqsets49.i to i32
  call void @__asan_load2_noabort(i32 %215)
  %216 = load i16, ptr %max_ethqsets49.i, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %216)
  %cmp51114.not.i = icmp eq i16 %216, 0
  br i1 %cmp51114.not.i, label %for.end46.i.cfg_queues.exit_crit_edge, label %for.end46.i.for.body53.i_crit_edge

for.end46.i.for.body53.i_crit_edge:               ; preds = %for.end46.i
  br label %for.body53.i

for.end46.i.cfg_queues.exit_crit_edge:            ; preds = %for.end46.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cfg_queues.exit

for.body53.i:                                     ; preds = %for.body53.i.for.body53.i_crit_edge, %for.end46.i.for.body53.i_crit_edge
  %qs.0115.i = phi i32 [ %inc57.i, %for.body53.i.for.body53.i_crit_edge ], [ 0, %for.end46.i.for.body53.i_crit_edge ]
  %arrayidx.i556 = getelementptr %struct.adapter, ptr %call7.i.i, i32 0, i32 10, i32 1, i32 %qs.0115.i
  %intr_params.i.i = getelementptr inbounds %struct.sge_rspq, ptr %arrayidx.i556, i32 0, i32 7
  %217 = ptrtoint ptr %intr_params.i.i to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 1, ptr %intr_params.i.i, align 4
  %pktcnt_idx.i.i = getelementptr inbounds %struct.sge_rspq, ptr %arrayidx.i556, i32 0, i32 8
  %218 = ptrtoint ptr %pktcnt_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 0, ptr %pktcnt_idx.i.i, align 1
  %iqe_len.i.i = getelementptr inbounds %struct.sge_rspq, ptr %arrayidx.i556, i32 0, i32 16
  %219 = ptrtoint ptr %iqe_len.i.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 64, ptr %iqe_len.i.i, align 4
  %size10.i.i = getelementptr inbounds %struct.sge_rspq, ptr %arrayidx.i556, i32 0, i32 17
  %220 = ptrtoint ptr %size10.i.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 1024, ptr %size10.i.i, align 8
  %size.i = getelementptr %struct.adapter, ptr %call7.i.i, i32 0, i32 10, i32 1, i32 %qs.0115.i, i32 1, i32 9
  %221 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 72, ptr %size.i, align 4
  %size55.i = getelementptr [8 x %struct.sge_eth_txq], ptr %sge.i, i32 0, i32 %qs.0115.i, i32 0, i32 1
  %222 = ptrtoint ptr %size55.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 1024, ptr %size55.i, align 4
  %inc57.i = add nuw nsw i32 %qs.0115.i, 1
  %223 = ptrtoint ptr %max_ethqsets49.i to i32
  call void @__asan_load2_noabort(i32 %223)
  %224 = load i16, ptr %max_ethqsets49.i, align 16
  %conv50.i = zext i16 %224 to i32
  %cmp51.i = icmp ult i32 %inc57.i, %conv50.i
  br i1 %cmp51.i, label %for.body53.i.for.body53.i_crit_edge, label %for.body53.i.cfg_queues.exit_crit_edge

for.body53.i.cfg_queues.exit_crit_edge:           ; preds = %for.body53.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cfg_queues.exit

for.body53.i.for.body53.i_crit_edge:              ; preds = %for.body53.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body53.i

cfg_queues.exit:                                  ; preds = %for.body53.i.cfg_queues.exit_crit_edge, %for.end46.i.cfg_queues.exit_crit_edge
  %intr_params.i96.i = getelementptr inbounds %struct.adapter, ptr %call7.i.i, i32 0, i32 10, i32 3, i32 7
  %225 = ptrtoint ptr %intr_params.i96.i to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 13, ptr %intr_params.i96.i, align 4
  %pktcnt_idx.i97.i = getelementptr inbounds %struct.adapter, ptr %call7.i.i, i32 0, i32 10, i32 3, i32 8
  %226 = ptrtoint ptr %pktcnt_idx.i97.i to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 0, ptr %pktcnt_idx.i97.i, align 1
  %iqe_len.i98.i = getelementptr inbounds %struct.adapter, ptr %call7.i.i, i32 0, i32 10, i32 3, i32 16
  %227 = ptrtoint ptr %iqe_len.i98.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 64, ptr %iqe_len.i98.i, align 4
  %size10.i99.i = getelementptr inbounds %struct.adapter, ptr %call7.i.i, i32 0, i32 10, i32 3, i32 17
  %228 = ptrtoint ptr %size10.i99.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 512, ptr %size10.i99.i, align 8
  %intr_params.i100.i = getelementptr inbounds %struct.adapter, ptr %call7.i.i, i32 0, i32 10, i32 5, i32 7
  %229 = ptrtoint ptr %intr_params.i100.i to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 13, ptr %intr_params.i100.i, align 4
  %pktcnt_idx.i101.i = getelementptr inbounds %struct.adapter, ptr %call7.i.i, i32 0, i32 10, i32 5, i32 8
  %230 = ptrtoint ptr %pktcnt_idx.i101.i to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 0, ptr %pktcnt_idx.i101.i, align 1
  %iqe_len.i102.i = getelementptr inbounds %struct.adapter, ptr %call7.i.i, i32 0, i32 10, i32 5, i32 16
  %231 = ptrtoint ptr %iqe_len.i102.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 64, ptr %iqe_len.i102.i, align 4
  %size10.i103.i = getelementptr inbounds %struct.adapter, ptr %call7.i.i, i32 0, i32 10, i32 5, i32 17
  %232 = ptrtoint ptr %size10.i103.i to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 10, ptr %size10.i103.i, align 8
  %233 = ptrtoint ptr %nports to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %nports, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %234)
  %cmp210629.not = icmp eq i8 %234, 0
  br i1 %cmp210629.not, label %cfg_queues.exit.for.end243_crit_edge, label %for.body212.lr.ph

cfg_queues.exit.for.end243_crit_edge:             ; preds = %cfg_queues.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end243

for.body212.lr.ph:                                ; preds = %cfg_queues.exit
  %registered_device_map = getelementptr inbounds %struct.adapter, ptr %call7.i.i, i32 0, i32 4
  br label %for.body212

for.body212:                                      ; preds = %cleanup238.for.body212_crit_edge, %for.body212.lr.ph
  %pidx.1630 = phi i32 [ 0, %for.body212.lr.ph ], [ %inc242, %cleanup238.for.body212_crit_edge ]
  %arrayidx215 = getelementptr %struct.adapter, ptr %call7.i.i, i32 0, i32 11, i32 %pidx.1630
  %235 = ptrtoint ptr %arrayidx215 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %arrayidx215, align 4
  %cmp219 = icmp eq ptr %236, null
  br i1 %cmp219, label %for.body212.cleanup238_crit_edge, label %if.end222

for.body212.cleanup238_crit_edge:                 ; preds = %for.body212
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup238

if.end222:                                        ; preds = %for.body212
  %nqsets = getelementptr i8, ptr %236, i32 2327
  %237 = ptrtoint ptr %nqsets to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %nqsets, align 1
  %conv223 = zext i8 %238 to i32
  %call224 = call i32 @netif_set_real_num_tx_queues(ptr noundef nonnull %236, i32 noundef %conv223) #18
  %239 = ptrtoint ptr %nqsets to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %nqsets, align 1
  %conv226 = zext i8 %240 to i32
  %call227 = call i32 @netif_set_real_num_rx_queues(ptr noundef nonnull %236, i32 noundef %conv226) #18
  %call228 = call i32 @register_netdev(ptr noundef nonnull %236) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call228)
  %tobool229.not = icmp eq i32 %call228, 0
  br i1 %tobool229.not, label %if.end237, label %do.end233

do.end233:                                        ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev7, ptr noundef nonnull @.str.84, ptr noundef nonnull %236) #21
  br label %cleanup238

if.end237:                                        ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #20
  call void @netif_carrier_off(ptr noundef nonnull %236) #18
  call void @_set_bit(i32 noundef %pidx.1630, ptr noundef %registered_device_map) #18
  br label %cleanup238

cleanup238:                                       ; preds = %if.end237, %do.end233, %for.body212.cleanup238_crit_edge
  %inc242 = add nuw nsw i32 %pidx.1630, 1
  %241 = ptrtoint ptr %nports to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %nports, align 8
  %conv209 = zext i8 %242 to i32
  %cmp210 = icmp ult i32 %inc242, %conv209
  br i1 %cmp210, label %cleanup238.for.body212_crit_edge, label %cleanup238.for.end243_crit_edge

cleanup238.for.end243_crit_edge:                  ; preds = %cleanup238
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end243

cleanup238.for.body212_crit_edge:                 ; preds = %cleanup238
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body212

for.end243:                                       ; preds = %cleanup238.for.end243_crit_edge, %cfg_queues.exit.for.end243_crit_edge
  %registered_device_map244 = getelementptr inbounds %struct.adapter, ptr %call7.i.i, i32 0, i32 4
  %243 = ptrtoint ptr %registered_device_map244 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %registered_device_map244, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %244)
  %cmp245 = icmp eq i32 %244, 0
  br i1 %cmp245, label %do.end250, label %if.end252

do.end250:                                        ; preds = %for.end243
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.88) #21
  %245 = ptrtoint ptr %flags.i545 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %flags.i545, align 8
  %and289 = and i32 %246, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and289)
  %tobool290.not = icmp eq i32 %and289, 0
  br i1 %tobool290.not, label %if.else295, label %if.then291

if.end252:                                        ; preds = %for.end243
  %247 = load ptr, ptr @cxgb4vf_debugfs_root, align 4
  %tobool.not.i558 = icmp eq ptr %247, null
  %cmp.i559 = icmp ugt ptr %247, inttoptr (i32 -4096 to ptr)
  %spec.select.i560 = or i1 %tobool.not.i558, %cmp.i559
  br i1 %spec.select.i560, label %if.end252.if.end258_crit_edge, label %if.then254

if.end252.if.end258_crit_edge:                    ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end258

if.then254:                                       ; preds = %if.end252
  %248 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i562 = icmp eq ptr %249, null
  br i1 %tobool.not.i.i562, label %if.end.i.i564, label %if.then254.pci_name.exit566_crit_edge

if.then254.pci_name.exit566_crit_edge:            ; preds = %if.then254
  call void @__sanitizer_cov_trace_pc() #20
  br label %pci_name.exit566

if.end.i.i564:                                    ; preds = %if.then254
  call void @__sanitizer_cov_trace_pc() #20
  %250 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %dev7, align 4
  br label %pci_name.exit566

pci_name.exit566:                                 ; preds = %if.end.i.i564, %if.then254.pci_name.exit566_crit_edge
  %retval.0.i.i565 = phi ptr [ %251, %if.end.i.i564 ], [ %249, %if.then254.pci_name.exit566_crit_edge ]
  %call256 = call ptr @debugfs_create_dir(ptr noundef %retval.0.i.i565, ptr noundef nonnull %247) #18
  %debugfs_root = getelementptr inbounds %struct.adapter, ptr %call7.i.i, i32 0, i32 14
  %252 = ptrtoint ptr %debugfs_root to i32
  call void @__asan_store4_noabort(i32 %252)
  store ptr %call256, ptr %debugfs_root, align 4
  %tobool.not.i.i567 = icmp eq ptr %call256, null
  %cmp.i.i568 = icmp ugt ptr %call256, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i567, %cmp.i.i568
  br i1 %spec.select.i.i, label %do.body2.i569, label %setup_debugfs.exit, !prof !458

do.body2.i569:                                    ; preds = %pci_name.exit566
  call void @__sanitizer_cov_trace_pc() #20
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2412, 0\0A.popsection", ""() #18, !srcloc !460
  unreachable

setup_debugfs.exit:                               ; preds = %pci_name.exit566
  call void @__sanitizer_cov_trace_pc() #20
  %call11.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.154, i16 noundef zeroext 292, ptr noundef nonnull %call256, ptr noundef %call7.i.i, ptr noundef nonnull @mboxlog_fops) #18
  %253 = ptrtoint ptr %debugfs_root to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %debugfs_root, align 4
  %call11.1.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.155, i16 noundef zeroext 292, ptr noundef %254, ptr noundef %call7.i.i, ptr noundef nonnull @sge_qinfo_fops) #18
  %255 = ptrtoint ptr %debugfs_root to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %debugfs_root, align 4
  %call11.2.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.156, i16 noundef zeroext 292, ptr noundef %256, ptr noundef %call7.i.i, ptr noundef nonnull @sge_qstats_fops) #18
  %257 = ptrtoint ptr %debugfs_root to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %debugfs_root, align 4
  %call11.3.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.157, i16 noundef zeroext 292, ptr noundef %258, ptr noundef %call7.i.i, ptr noundef nonnull @resources_fops) #18
  %259 = ptrtoint ptr %debugfs_root to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %debugfs_root, align 4
  %call11.4.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.158, i16 noundef zeroext 292, ptr noundef %260, ptr noundef %call7.i.i, ptr noundef nonnull @interfaces_fops) #18
  br label %if.end258

if.end258:                                        ; preds = %setup_debugfs.exit, %if.end252.if.end258_crit_edge
  %261 = ptrtoint ptr %nports to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %nports, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %262)
  %cmp263632.not = icmp eq i8 %262, 0
  br i1 %cmp263632.not, label %if.end258.cleanup343_crit_edge, label %if.end258.do.end268_crit_edge

if.end258.do.end268_crit_edge:                    ; preds = %if.end258
  br label %do.end268

if.end258.cleanup343_crit_edge:                   ; preds = %if.end258
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup343

do.end268:                                        ; preds = %do.end268.do.end268_crit_edge, %if.end258.do.end268_crit_edge
  %pidx.2633 = phi i32 [ %inc286, %do.end268.do.end268_crit_edge ], [ 0, %if.end258.do.end268_crit_edge ]
  %263 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %pdev_dev, align 4
  %arrayidx271 = getelementptr %struct.adapter, ptr %call7.i.i, i32 0, i32 11, i32 %pidx.2633
  %265 = ptrtoint ptr %arrayidx271 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %arrayidx271, align 4
  %267 = ptrtoint ptr %flags.i545 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %flags.i545, align 8
  %and275 = and i32 %268, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and275)
  %tobool276.not = icmp eq i32 %and275, 0
  %and280 = and i32 %268, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and280)
  %tobool281.not = icmp eq i32 %and280, 0
  %cond282 = select i1 %tobool281.not, ptr @.str.95, ptr @.str.94
  %cond284 = select i1 %tobool276.not, ptr %cond282, ptr @.str.93
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %264, ptr noundef nonnull @.str.91, ptr noundef %266, ptr noundef nonnull %cond284) #21
  %inc286 = add nuw nsw i32 %pidx.2633, 1
  %269 = ptrtoint ptr %nports to i32
  call void @__asan_load1_noabort(i32 %269)
  %270 = load i8, ptr %nports, align 8
  %conv262 = zext i8 %270 to i32
  %cmp263 = icmp ult i32 %inc286, %conv262
  br i1 %cmp263, label %do.end268.do.end268_crit_edge, label %do.end268.cleanup343_crit_edge

do.end268.cleanup343_crit_edge:                   ; preds = %do.end268
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup343

do.end268.do.end268_crit_edge:                    ; preds = %do.end268
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end268

if.then291:                                       ; preds = %do.end250
  call void @__sanitizer_cov_trace_pc() #20
  %271 = ptrtoint ptr %pdev20 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %pdev20, align 8
  call void @pci_disable_msix(ptr noundef %272) #18
  %273 = ptrtoint ptr %flags.i545 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %flags.i545, align 8
  %and294 = and i32 %274, -5
  store i32 %and294, ptr %flags.i545, align 8
  br label %err_free_dev

if.else295:                                       ; preds = %do.end250
  %and297 = and i32 %246, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and297)
  %tobool298.not = icmp eq i32 %and297, 0
  br i1 %tobool298.not, label %if.else295.err_free_dev_crit_edge, label %if.then299

if.else295.err_free_dev_crit_edge:                ; preds = %if.else295
  call void @__sanitizer_cov_trace_pc() #20
  br label %err_free_dev

if.then299:                                       ; preds = %if.else295
  call void @__sanitizer_cov_trace_pc() #20
  %275 = ptrtoint ptr %pdev20 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %pdev20, align 8
  call void @pci_disable_msi(ptr noundef %276) #18
  %277 = ptrtoint ptr %flags.i545 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %flags.i545, align 8
  %and302 = and i32 %278, -3
  store i32 %and302, ptr %flags.i545, align 8
  br label %err_free_dev

err_free_dev:                                     ; preds = %if.then299, %if.else295.err_free_dev_crit_edge, %if.then291, %do.end200, %cleanup171.thread585
  %err.3 = phi i32 [ -22, %if.then291 ], [ -22, %if.then299 ], [ -22, %if.else295.err_free_dev_crit_edge ], [ %call195, %do.end200 ], [ %err.2.ph584, %cleanup171.thread585 ]
  %279 = ptrtoint ptr %nports to i32
  call void @__asan_load1_noabort(i32 %279)
  %280 = load i8, ptr %nports, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %280)
  %cmp309635.not = icmp eq i8 %280, 0
  br i1 %cmp309635.not, label %err_free_dev.for.end333_crit_edge, label %for.body311.lr.ph

err_free_dev.for.end333_crit_edge:                ; preds = %err_free_dev
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end333

for.body311.lr.ph:                                ; preds = %err_free_dev
  %registered_device_map326 = getelementptr inbounds %struct.adapter, ptr %call7.i.i, i32 0, i32 4
  br label %for.body311

for.body311:                                      ; preds = %for.inc331.for.body311_crit_edge, %for.body311.lr.ph
  %pidx.3636 = phi i32 [ 0, %for.body311.lr.ph ], [ %inc332, %for.inc331.for.body311_crit_edge ]
  %arrayidx313 = getelementptr %struct.adapter, ptr %call7.i.i, i32 0, i32 11, i32 %pidx.3636
  %281 = ptrtoint ptr %arrayidx313 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %arrayidx313, align 4
  %cmp314 = icmp eq ptr %282, null
  br i1 %cmp314, label %for.body311.for.inc331_crit_edge, label %if.end317

for.body311.for.inc331_crit_edge:                 ; preds = %for.body311
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc331

if.end317:                                        ; preds = %for.body311
  %viid319 = getelementptr i8, ptr %282, i32 2312
  %283 = ptrtoint ptr %viid319 to i32
  call void @__asan_load2_noabort(i32 %283)
  %284 = load i16, ptr %viid319, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %284)
  %tobool320.not = icmp eq i16 %284, 0
  br i1 %tobool320.not, label %if.end317.if.end325_crit_edge, label %if.then321

if.end317.if.end325_crit_edge:                    ; preds = %if.end317
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end325

if.then321:                                       ; preds = %if.end317
  call void @__sanitizer_cov_trace_pc() #20
  %conv323 = zext i16 %284 to i32
  %call324 = call i32 @t4vf_free_vi(ptr noundef %call7.i.i, i32 noundef %conv323) #18
  br label %if.end325

if.end325:                                        ; preds = %if.then321, %if.end317.if.end325_crit_edge
  %div3.i = lshr i32 %pidx.3636, 5
  %arrayidx.i = getelementptr i32, ptr %registered_device_map326, i32 %div3.i
  %285 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %pidx.3636, 31
  %287 = shl nuw i32 1, %and.i
  %288 = and i32 %286, %287
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %288)
  %tobool328.not = icmp eq i32 %288, 0
  br i1 %tobool328.not, label %if.end325.if.end330_crit_edge, label %if.then329

if.end325.if.end330_crit_edge:                    ; preds = %if.end325
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end330

if.then329:                                       ; preds = %if.end325
  call void @__sanitizer_cov_trace_pc() #20
  call void @unregister_netdev(ptr noundef nonnull %282) #18
  br label %if.end330

if.end330:                                        ; preds = %if.then329, %if.end325.if.end330_crit_edge
  call void @free_netdev(ptr noundef nonnull %282) #18
  br label %for.inc331

for.inc331:                                       ; preds = %if.end330, %for.body311.for.inc331_crit_edge
  %inc332 = add nuw nsw i32 %pidx.3636, 1
  %289 = ptrtoint ptr %nports to i32
  call void @__asan_load1_noabort(i32 %289)
  %290 = load i8, ptr %nports, align 8
  %conv308 = zext i8 %290 to i32
  %cmp309 = icmp ult i32 %inc332, %conv308
  br i1 %cmp309, label %for.inc331.for.body311_crit_edge, label %for.inc331.for.end333_crit_edge

for.inc331.for.end333_crit_edge:                  ; preds = %for.inc331
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end333

for.inc331.for.body311_crit_edge:                 ; preds = %for.inc331
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body311

for.end333:                                       ; preds = %for.inc331.for.end333_crit_edge, %err_free_dev.for.end333_crit_edge
  %291 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %chip, align 4
  %293 = and i32 %292, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %293)
  %cmp.i571.not = icmp eq i32 %293, 64
  br i1 %cmp.i571.not, label %for.end333.err_unmap_bar0_crit_edge, label %if.then338

for.end333.err_unmap_bar0_crit_edge:              ; preds = %for.end333
  call void @__sanitizer_cov_trace_pc() #20
  br label %err_unmap_bar0

if.then338:                                       ; preds = %for.end333
  call void @__sanitizer_cov_trace_pc() #20
  %bar2339 = getelementptr inbounds %struct.adapter, ptr %call7.i.i, i32 0, i32 1
  %294 = ptrtoint ptr %bar2339 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %bar2339, align 4
  call void @iounmap(ptr noundef %295) #18
  br label %err_unmap_bar0

err_unmap_bar0:                                   ; preds = %if.then338, %for.end333.err_unmap_bar0_crit_edge, %do.end70, %do.end50
  %err.4 = phi i32 [ %call45, %do.end50 ], [ %err.3, %for.end333.err_unmap_bar0_crit_edge ], [ %err.3, %if.then338 ], [ -12, %do.end70 ]
  %296 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %call7.i.i, align 128
  call void @iounmap(ptr noundef %297) #18
  br label %err_free_adapter

err_free_adapter:                                 ; preds = %err_unmap_bar0, %do.end42, %if.end19.err_free_adapter_crit_edge
  %err.5 = phi i32 [ %err.4, %err_unmap_bar0 ], [ -12, %do.end42 ], [ -12, %if.end19.err_free_adapter_crit_edge ]
  %298 = ptrtoint ptr %mbox_log to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %mbox_log, align 16
  call void @kfree(ptr noundef %299) #18
  call void @kfree(ptr noundef %call7.i.i) #18
  br label %err_release_regions

err_release_regions:                              ; preds = %err_free_adapter, %if.end15.err_release_regions_crit_edge, %do.end13
  %err.6 = phi i32 [ %call.i, %do.end13 ], [ %err.5, %err_free_adapter ], [ -12, %if.end15.err_release_regions_crit_edge ]
  call void @pci_release_regions(ptr noundef %pdev) #18
  call void @pci_clear_master(ptr noundef %pdev) #18
  br label %err_disable_device

err_disable_device:                               ; preds = %err_release_regions, %do.end
  %err.7 = phi i32 [ %call2, %do.end ], [ %err.6, %err_release_regions ]
  call void @pci_disable_device(ptr noundef %pdev) #18
  br label %cleanup343

cleanup343:                                       ; preds = %err_disable_device, %do.end268.cleanup343_crit_edge, %if.end258.cleanup343_crit_edge, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %err.7, %err_disable_device ], [ 0, %if.end258.cleanup343_crit_edge ], [ 0, %do.end268.cleanup343_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cxgb4vf_pci_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end72_crit_edge, label %for.cond.preheader

entry.if.end72_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end72

for.cond.preheader:                               ; preds = %entry
  %nports = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 7, i32 7
  %2 = ptrtoint ptr %nports to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nports, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp116.not = icmp eq i8 %3, 0
  br i1 %cmp116.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %registered_device_map = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %pidx.0117 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %div3.i = lshr i32 %pidx.0117, 5
  %arrayidx.i = getelementptr i32, ptr %registered_device_map, i32 %div3.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %pidx.0117, 31
  %6 = shl nuw i32 1, %and.i
  %7 = and i32 %5, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  br i1 %tobool4.not, label %for.body.for.inc_crit_edge, label %if.then5

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.then5:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx = getelementptr %struct.adapter, ptr %1, i32 0, i32 11, i32 %pidx.0117
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  tail call void @unregister_netdev(ptr noundef %9) #18
  br label %for.inc

for.inc:                                          ; preds = %if.then5, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %pidx.0117, 1
  %10 = ptrtoint ptr %nports to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %nports, align 4
  %conv = zext i8 %11 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void @t4vf_sge_stop(ptr noundef nonnull %1) #18
  %flags = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 8
  %and = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  %pdev8 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %pdev8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev8, align 8
  tail call void @pci_disable_msix(ptr noundef %15) #18
  br label %if.end19.sink.split

if.else:                                          ; preds = %for.end
  %and12 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.else.if.end19_crit_edge, label %if.then14

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end19

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  %pdev15 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %pdev15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev15, align 8
  tail call void @pci_disable_msi(ptr noundef %17) #18
  br label %if.end19.sink.split

if.end19.sink.split:                              ; preds = %if.then14, %if.then7
  %.sink125 = phi i32 [ -3, %if.then14 ], [ -5, %if.then7 ]
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 8
  %and17 = and i32 %19, %.sink125
  store i32 %and17, ptr %flags, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.end19.sink.split, %if.else.if.end19_crit_edge
  %debugfs_root = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 14
  %20 = ptrtoint ptr %debugfs_root to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %debugfs_root, align 4
  %tobool.not.i = icmp eq ptr %21, null
  %cmp.i = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %if.end19.if.end23_crit_edge, label %cleanup_debugfs.exit

if.end19.if.end23_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end23

cleanup_debugfs.exit:                             ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @debugfs_remove(ptr noundef nonnull %21) #18
  br label %if.end23

if.end23:                                         ; preds = %cleanup_debugfs.exit, %if.end19.if.end23_crit_edge
  tail call void @t4vf_free_sge_resources(ptr noundef nonnull %1) #18
  %22 = ptrtoint ptr %nports to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %nports, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp28120.not = icmp eq i8 %23, 0
  br i1 %cmp28120.not, label %if.end23.for.end47_crit_edge, label %if.end23.for.body30_crit_edge

if.end23.for.body30_crit_edge:                    ; preds = %if.end23
  br label %for.body30

if.end23.for.end47_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end47

for.body30:                                       ; preds = %cleanup.for.body30_crit_edge, %if.end23.for.body30_crit_edge
  %pidx.1121 = phi i32 [ %inc46, %cleanup.for.body30_crit_edge ], [ 0, %if.end23.for.body30_crit_edge ]
  %arrayidx32 = getelementptr %struct.adapter, ptr %1, i32 0, i32 11, i32 %pidx.1121
  %24 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx32, align 4
  %cmp33 = icmp eq ptr %25, null
  br i1 %cmp33, label %for.body30.cleanup_crit_edge, label %if.end36

for.body30.cleanup_crit_edge:                     ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end36:                                         ; preds = %for.body30
  %viid = getelementptr i8, ptr %25, i32 2312
  %26 = ptrtoint ptr %viid to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %viid, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool38.not = icmp eq i16 %27, 0
  br i1 %tobool38.not, label %if.end36.if.end43_crit_edge, label %if.then39

if.end36.if.end43_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end43

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #20
  %conv41 = zext i16 %27 to i32
  %call42 = tail call i32 @t4vf_free_vi(ptr noundef nonnull %1, i32 noundef %conv41) #18
  br label %if.end43

if.end43:                                         ; preds = %if.then39, %if.end36.if.end43_crit_edge
  tail call void @free_netdev(ptr noundef nonnull %25) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %for.body30.cleanup_crit_edge
  %inc46 = add nuw nsw i32 %pidx.1121, 1
  %28 = ptrtoint ptr %nports to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %nports, align 4
  %conv27 = zext i8 %29 to i32
  %cmp28 = icmp ult i32 %inc46, %conv27
  br i1 %cmp28, label %cleanup.for.body30_crit_edge, label %cleanup.for.end47_crit_edge

cleanup.for.end47_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end47

cleanup.for.body30_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body30

for.end47:                                        ; preds = %cleanup.for.end47_crit_edge, %if.end23.for.end47_crit_edge
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 128
  tail call void @iounmap(ptr noundef %31) #18
  %chip = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 7, i32 6
  %32 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %chip, align 4
  %34 = and i32 %33, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %34)
  %cmp.i114.not = icmp eq i32 %34, 64
  br i1 %cmp.i114.not, label %for.end47.if.end52_crit_edge, label %if.then51

for.end47.if.end52_crit_edge:                     ; preds = %for.end47
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end52

if.then51:                                        ; preds = %for.end47
  call void @__sanitizer_cov_trace_pc() #20
  %bar2 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 1
  %35 = ptrtoint ptr %bar2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bar2, align 4
  tail call void @iounmap(ptr noundef %36) #18
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %for.end47.if.end52_crit_edge
  %mbox_log = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 18
  %37 = ptrtoint ptr %mbox_log to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mbox_log, align 16
  tail call void @kfree(ptr noundef %38) #18
  %mac_hlist = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 19
  %39 = ptrtoint ptr %mac_hlist to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mac_hlist, align 4
  %cmp61.not122 = icmp eq ptr %40, %mac_hlist
  br i1 %cmp61.not122, label %if.end52.for.end71_crit_edge, label %if.end52.for.body63_crit_edge

if.end52.for.body63_crit_edge:                    ; preds = %if.end52
  br label %for.body63

if.end52.for.end71_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end71

for.body63:                                       ; preds = %list_del.exit.for.body63_crit_edge, %if.end52.for.body63_crit_edge
  %entry1.0123 = phi ptr [ %tmp.0, %list_del.exit.for.body63_crit_edge ], [ %40, %if.end52.for.body63_crit_edge ]
  %41 = ptrtoint ptr %entry1.0123 to i32
  call void @__asan_load4_noabort(i32 %41)
  %tmp.0 = load ptr, ptr %entry1.0123, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %entry1.0123) #18
  br i1 %call.i.i, label %if.end.i.i, label %for.body63.list_del.exit_crit_edge

for.body63.list_del.exit_crit_edge:               ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #20
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %entry1.0123, i32 0, i32 1
  %42 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i.i, align 4
  %44 = ptrtoint ptr %entry1.0123 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %entry1.0123, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev1.i.i.i, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %45, ptr %43, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body63.list_del.exit_crit_edge
  %48 = ptrtoint ptr %entry1.0123 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr inttoptr (i32 256 to ptr), ptr %entry1.0123, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %entry1.0123, i32 0, i32 1
  %49 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %entry1.0123) #18
  %cmp61.not = icmp eq ptr %tmp.0, %mac_hlist
  br i1 %cmp61.not, label %list_del.exit.for.end71_crit_edge, label %list_del.exit.for.body63_crit_edge

list_del.exit.for.body63_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body63

list_del.exit.for.end71_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end71

for.end71:                                        ; preds = %list_del.exit.for.end71_crit_edge, %if.end52.for.end71_crit_edge
  tail call void @kfree(ptr noundef nonnull %1) #18
  br label %if.end72

if.end72:                                         ; preds = %for.end71, %entry.if.end72_crit_edge
  tail call void @pci_disable_device(ptr noundef %pdev) #18
  tail call void @pci_clear_master(ptr noundef %pdev) #18
  tail call void @pci_release_regions(ptr noundef %pdev) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cxgb4vf_pci_shutdown(ptr nocapture noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %nports = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 7, i32 7
  %2 = ptrtoint ptr %nports to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nports, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp38.not = icmp eq i8 %3, 0
  br i1 %cmp38.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %registered_device_map = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %pidx.039 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %div3.i = lshr i32 %pidx.039, 5
  %arrayidx.i = getelementptr i32, ptr %registered_device_map, i32 %div3.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %pidx.039, 31
  %6 = shl nuw i32 1, %and.i
  %7 = and i32 %5, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %for.body.for.inc_crit_edge, label %if.then4

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.then4:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx = getelementptr %struct.adapter, ptr %1, i32 0, i32 11, i32 %pidx.039
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  tail call void @unregister_netdev(ptr noundef %9) #18
  br label %for.inc

for.inc:                                          ; preds = %if.then4, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %pidx.039, 1
  %10 = ptrtoint ptr %nports to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %nports, align 4
  %conv = zext i8 %11 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void @t4vf_sge_stop(ptr noundef nonnull %1) #18
  %flags = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 8
  %and = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  %pdev8 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %pdev8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev8, align 8
  tail call void @pci_disable_msix(ptr noundef %15) #18
  br label %if.end19.sink.split

if.else:                                          ; preds = %for.end
  %and12 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.else.if.end19_crit_edge, label %if.then14

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end19

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  %pdev15 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %pdev15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev15, align 8
  tail call void @pci_disable_msi(ptr noundef %17) #18
  br label %if.end19.sink.split

if.end19.sink.split:                              ; preds = %if.then14, %if.then7
  %.sink41 = phi i32 [ -3, %if.then14 ], [ -5, %if.then7 ]
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 8
  %and17 = and i32 %19, %.sink41
  store i32 %and17, ptr %flags, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.end19.sink.split, %if.else.if.end19_crit_edge
  tail call void @t4vf_free_sge_resources(ptr noundef nonnull %1) #18
  %20 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_ioremap_bar(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4vf_prep_adapter(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap_wc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pcie_relaxed_ordering_enabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4vf_alloc_vi(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4vf_port_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4vf_get_vf_mac_acl(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxgb4vf_set_mac_addr(ptr noundef %dev, ptr noundef %_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %_addr, i32 0, i32 1
  %0 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sa_data, align 4
  %2 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not.i = icmp eq i32 %2, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %entry
  %add.ptr.i.i = getelementptr %struct.sockaddr, ptr %_addr, i32 0, i32 1, i32 4
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %4 to i32
  %or.i.i = or i32 %1, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %if.end

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %is_valid_ether_addr.exit
  %viid = getelementptr i8, ptr %dev, i32 2312
  %5 = ptrtoint ptr %viid to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %viid, align 4
  %conv = zext i16 %6 to i32
  %xact_addr_filt = getelementptr i8, ptr %dev, i32 2316
  %call4 = tail call fastcc i32 @cxgb4vf_change_mac(ptr noundef %add.ptr.i, i32 noundef %conv, ptr noundef %xact_addr_filt, ptr noundef %sa_data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %is_valid_ether_addr.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -99, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ], [ -99, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @size_nports_qsets(ptr nocapture noundef %adapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %vfres1 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 7, i32 4
  %0 = ptrtoint ptr %vfres1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vfres1, align 4
  %conv = trunc i32 %1 to i8
  %nports = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 7, i32 7
  %2 = ptrtoint ptr %nports to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %nports, align 4
  %conv5 = and i32 %1, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv5)
  %cmp = icmp ugt i32 %conv5, 1
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %pdev_dev = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %3 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.146, i32 noundef 1, i32 noundef %conv5) #21
  %5 = ptrtoint ptr %nports to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %nports, align 4
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %pmask = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 7, i32 4, i32 6
  %6 = ptrtoint ptr %pmask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pmask, align 4
  %call.i = tail call i32 @__sw_hweight32(i32 noundef %7) #18
  %8 = ptrtoint ptr %nports to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %nports, align 4
  %conv395 = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %conv395)
  %cmp396 = icmp ult i32 %call.i, %conv395
  br i1 %cmp396, label %do.end401, label %if.end.if.end412_crit_edge

if.end.if.end412_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end412

do.end401:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %pdev_dev402 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %10 = ptrtoint ptr %pdev_dev402 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev_dev402, align 4
  %12 = ptrtoint ptr %pmask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pmask, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.149, i32 noundef %call.i, i32 noundef %conv395, i32 noundef %13) #21
  %conv409 = trunc i32 %call.i to i8
  %14 = ptrtoint ptr %nports to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv409, ptr %nports, align 4
  br label %if.end412

if.end412:                                        ; preds = %do.end401, %if.end.if.end412_crit_edge
  %niqflint = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 7, i32 4, i32 3
  %15 = ptrtoint ptr %niqflint to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %niqflint, align 4
  %sub = add i32 %16, -1
  %17 = load i32, ptr @msi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp413 = icmp eq i32 %17, 1
  %conv414.neg = sext i1 %cmp413 to i32
  %sub415 = add i32 %sub, %conv414.neg
  %nethctrl = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 7, i32 4, i32 2
  %18 = ptrtoint ptr %nethctrl to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nethctrl, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %sub415)
  %cmp416.not = icmp eq i32 %19, %sub415
  %20 = tail call i32 @llvm.umin.i32(i32 %19, i32 %sub415)
  %ethqsets.0 = select i1 %cmp416.not, i32 %sub415, i32 %20
  %neq = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 7, i32 4, i32 1
  %21 = ptrtoint ptr %neq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %neq, align 4
  %mul = shl i32 %ethqsets.0, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %mul)
  %cmp427 = icmp ult i32 %22, %mul
  %div528 = lshr i32 %22, 1
  %ethqsets.1 = select i1 %cmp427, i32 %div528, i32 %ethqsets.0
  %23 = tail call i32 @llvm.umin.i32(i32 %ethqsets.1, i32 8)
  %conv436 = trunc i32 %23 to i16
  %max_ethqsets = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 10
  %24 = ptrtoint ptr %max_ethqsets to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv436, ptr %max_ethqsets, align 16
  %25 = ptrtoint ptr %nports to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %nports, align 4
  %conv442 = zext i8 %26 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %conv442)
  %cmp443 = icmp ult i32 %23, %conv442
  br i1 %cmp443, label %do.end448, label %if.end412.if.end461_crit_edge

if.end412.if.end461_crit_edge:                    ; preds = %if.end412
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end461

do.end448:                                        ; preds = %if.end412
  call void @__sanitizer_cov_trace_pc() #20
  %pdev_dev449 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %27 = ptrtoint ptr %pdev_dev449 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdev_dev449, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %28, ptr noundef nonnull @.str.152, i32 noundef %23, i32 noundef %conv442) #21
  %29 = ptrtoint ptr %max_ethqsets to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %max_ethqsets, align 16
  %conv458 = trunc i16 %30 to i8
  %31 = ptrtoint ptr %nports to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv458, ptr %nports, align 4
  br label %if.end461

if.end461:                                        ; preds = %do.end448, %if.end412.if.end461_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_real_num_tx_queues(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_real_num_rx_queues(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_msix(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_msi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4vf_free_vi(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_clear_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4vf_fw_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4vf_get_dev_params(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4vf_get_vpd_params(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4vf_get_sge_params(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4vf_get_rss_glb_config(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4vf_sge_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4vf_set_params(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4vf_get_vfres(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxgb4vf_open(ptr noundef %dev) #0 align 64 {
entry:
  %rss.i.i = alloca [8 x i16], align 2
  %config.i.i = alloca %union.rss_vi_config, align 8
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %flags = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %open_device_map = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %open_device_map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %open_device_map, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then2, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end7

if.then2:                                         ; preds = %if.end
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.then2.do.body.i_crit_edge

if.then2.do.body.i_crit_edge:                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i

if.then.i:                                        ; preds = %if.then2
  %sge.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10
  %starving_fl.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 7
  %6 = ptrtoint ptr %starving_fl.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %starving_fl.i.i, align 4
  %and.i.i = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.if.end3.i.i_crit_edge, label %if.then.i.i

if.then.i.if.end3.i.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end3.i.i

if.then.i.i:                                      ; preds = %if.then.i
  %intrq.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 5
  %port.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %port.i.i, align 128
  %call.i.i = tail call i32 @t4vf_sge_alloc_rxq(ptr noundef %1, ptr noundef %intrq.i.i, i1 noundef zeroext false, ptr noundef %8, i32 noundef 0, ptr noundef null, ptr noundef null) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %if.then.i.i.if.end3.i.i_crit_edge, label %if.then.i.i.setup_sge_queues.exit.i_crit_edge

if.then.i.i.setup_sge_queues.exit.i_crit_edge:    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %setup_sge_queues.exit.i

if.then.i.i.if.end3.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end3.i.i

if.end3.i.i:                                      ; preds = %if.then.i.i.if.end3.i.i_crit_edge, %if.then.i.if.end3.i.i_crit_edge
  %fw_evtq.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 3
  %port4.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 11
  %9 = ptrtoint ptr %port4.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %port4.i.i, align 128
  %call6.i.i = tail call i32 @t4vf_sge_alloc_rxq(ptr noundef %1, ptr noundef %fw_evtq.i.i, i1 noundef zeroext true, ptr noundef %10, i32 noundef 0, ptr noundef null, ptr noundef nonnull @fwevtq_handler) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool7.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool7.not.i.i, label %for.cond.preheader.i.i, label %if.end3.i.i.setup_sge_queues.exit.i_crit_edge

if.end3.i.i.setup_sge_queues.exit.i_crit_edge:    ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %setup_sge_queues.exit.i

for.cond.preheader.i.i:                           ; preds = %if.end3.i.i
  %nports.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 7, i32 7
  %11 = ptrtoint ptr %nports.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %nports.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp220.not.i.i = icmp eq i8 %12, 0
  br i1 %cmp220.not.i.i, label %for.cond.preheader.i.i.for.end44.i.i_crit_edge, label %for.body.lr.ph.i.i

for.cond.preheader.i.i.for.end44.i.i_crit_edge:   ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end44.i.i

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %cntxt_id.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 3, i32 10
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc42.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %msix.0222.i.i = phi i32 [ 1, %for.body.lr.ph.i.i ], [ %msix.1.lcssa.i.i, %for.inc42.i.i.for.body.i.i_crit_edge ]
  %pidx.0221.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc43.i.i, %for.inc42.i.i.for.body.i.i_crit_edge ]
  %arrayidx12.i.i = getelementptr %struct.adapter, ptr %1, i32 0, i32 11, i32 %pidx.0221.i.i
  %13 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx12.i.i, align 4
  %nqsets.i.i = getelementptr i8, ptr %14, i32 2327
  %15 = ptrtoint ptr %nqsets.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %nqsets.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp20214.not.i.i = icmp eq i8 %16, 0
  br i1 %cmp20214.not.i.i, label %for.body.i.i.for.inc42.i.i_crit_edge, label %for.body22.lr.ph.i.i

for.body.i.i.for.inc42.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc42.i.i

for.body22.lr.ph.i.i:                             ; preds = %for.body.i.i
  %first_qset.i.i = getelementptr i8, ptr %14, i32 2328
  %17 = ptrtoint ptr %first_qset.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %first_qset.i.i, align 4
  %idxprom.i.i = zext i8 %18 to i32
  %arrayidx17.i.i = getelementptr [8 x %struct.sge_eth_txq], ptr %sge.i.i, i32 0, i32 %idxprom.i.i
  %arrayidx14.i.i = getelementptr %struct.adapter, ptr %1, i32 0, i32 10, i32 1, i32 %idxprom.i.i
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 103
  br label %for.body22.i.i

for.body22.i.i:                                   ; preds = %if.end33.i.i.for.body22.i.i_crit_edge, %for.body22.lr.ph.i.i
  %qs.0218.i.i = phi i32 [ 0, %for.body22.lr.ph.i.i ], [ %inc36.i.i, %if.end33.i.i.for.body22.i.i_crit_edge ]
  %txq.0217.i.i = phi ptr [ %arrayidx17.i.i, %for.body22.lr.ph.i.i ], [ %incdec.ptr37.i.i, %if.end33.i.i.for.body22.i.i_crit_edge ]
  %rxq.0216.i.i = phi ptr [ %arrayidx14.i.i, %for.body22.lr.ph.i.i ], [ %incdec.ptr.i.i, %if.end33.i.i.for.body22.i.i_crit_edge ]
  %msix.1215.i.i = phi i32 [ %msix.0222.i.i, %for.body22.lr.ph.i.i ], [ %inc.i.i, %if.end33.i.i.for.body22.i.i_crit_edge ]
  %inc.i.i = add i32 %msix.1215.i.i, 1
  %fl.i.i = getelementptr inbounds %struct.sge_eth_rxq, ptr %rxq.0216.i.i, i32 0, i32 1
  %call23.i.i = tail call i32 @t4vf_sge_alloc_rxq(ptr noundef %1, ptr noundef %rxq.0216.i.i, i1 noundef zeroext false, ptr noundef %14, i32 noundef %msix.1215.i.i, ptr noundef %fl.i.i, ptr noundef nonnull @t4vf_ethrx_handler) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i.i)
  %tobool24.not.i.i = icmp eq i32 %call23.i.i, 0
  br i1 %tobool24.not.i.i, label %if.end26.i.i, label %for.body22.i.i.setup_sge_queues.exit.i_crit_edge

for.body22.i.i.setup_sge_queues.exit.i_crit_edge: ; preds = %for.body22.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %setup_sge_queues.exit.i

if.end26.i.i:                                     ; preds = %for.body22.i.i
  %19 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %_tx.i.i.i, align 128
  %arrayidx.i.i.i = getelementptr %struct.netdev_queue, ptr %20, i32 %qs.0218.i.i
  %21 = ptrtoint ptr %cntxt_id.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %cntxt_id.i.i, align 8
  %conv29.i.i = zext i16 %22 to i32
  %call30.i.i = tail call i32 @t4vf_sge_alloc_eth_txq(ptr noundef %1, ptr noundef %txq.0217.i.i, ptr noundef %14, ptr noundef %arrayidx.i.i.i, i32 noundef %conv29.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i.i)
  %tobool31.not.i.i = icmp eq i32 %call30.i.i, 0
  br i1 %tobool31.not.i.i, label %if.end33.i.i, label %if.end26.i.i.setup_sge_queues.exit.i_crit_edge

if.end26.i.i.setup_sge_queues.exit.i_crit_edge:   ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %setup_sge_queues.exit.i

if.end33.i.i:                                     ; preds = %if.end26.i.i
  %conv34.i.i = trunc i32 %qs.0218.i.i to i8
  %idx.i.i = getelementptr inbounds %struct.sge_rspq, ptr %rxq.0216.i.i, i32 0, i32 9
  %23 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv34.i.i, ptr %idx.i.i, align 2
  %stats.i.i = getelementptr inbounds %struct.sge_eth_rxq, ptr %rxq.0216.i.i, i32 0, i32 2
  %24 = call ptr @memset(ptr %stats.i.i, i32 0, i32 24)
  %inc36.i.i = add nuw nsw i32 %qs.0218.i.i, 1
  %incdec.ptr.i.i = getelementptr %struct.sge_eth_rxq, ptr %rxq.0216.i.i, i32 1
  %incdec.ptr37.i.i = getelementptr %struct.sge_eth_txq, ptr %txq.0217.i.i, i32 1
  %25 = ptrtoint ptr %nqsets.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %nqsets.i.i, align 1
  %conv19.i.i = zext i8 %26 to i32
  %cmp20.i.i = icmp ult i32 %inc36.i.i, %conv19.i.i
  br i1 %cmp20.i.i, label %if.end33.i.i.for.body22.i.i_crit_edge, label %if.end33.i.i.for.inc42.i.i_crit_edge

if.end33.i.i.for.inc42.i.i_crit_edge:             ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc42.i.i

if.end33.i.i.for.body22.i.i_crit_edge:            ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body22.i.i

for.inc42.i.i:                                    ; preds = %if.end33.i.i.for.inc42.i.i_crit_edge, %for.body.i.i.for.inc42.i.i_crit_edge
  %msix.1.lcssa.i.i = phi i32 [ %msix.0222.i.i, %for.body.i.i.for.inc42.i.i_crit_edge ], [ %inc.i.i, %if.end33.i.i.for.inc42.i.i_crit_edge ]
  %inc43.i.i = add nuw nsw i32 %pidx.0221.i.i, 1
  %27 = ptrtoint ptr %nports.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %nports.i.i, align 4
  %conv.i.i = zext i8 %28 to i32
  %cmp.i.i = icmp ult i32 %inc43.i.i, %conv.i.i
  br i1 %cmp.i.i, label %for.inc42.i.i.for.body.i.i_crit_edge, label %for.inc42.i.i.for.end44.i.i_crit_edge

for.inc42.i.i.for.end44.i.i_crit_edge:            ; preds = %for.inc42.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end44.i.i

for.inc42.i.i.for.body.i.i_crit_edge:             ; preds = %for.inc42.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i.i

for.end44.i.i:                                    ; preds = %for.inc42.i.i.for.end44.i.i_crit_edge, %for.cond.preheader.i.i.for.end44.i.i_crit_edge
  %abs_id.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 0, i32 7
  %29 = ptrtoint ptr %abs_id.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %abs_id.i.i, align 4
  %cntxt_id50.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 0, i32 6
  %31 = ptrtoint ptr %cntxt_id50.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cntxt_id50.i.i, align 8
  %sub.i.i = sub i32 %30, %32
  %egr_base.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 20
  %33 = ptrtoint ptr %egr_base.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %sub.i.i, ptr %egr_base.i.i, align 4
  %abs_id54.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 1, i32 0, i32 0, i32 11
  %34 = ptrtoint ptr %abs_id54.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %abs_id54.i.i, align 2
  %conv55.i.i = zext i16 %35 to i32
  %cntxt_id59.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 1, i32 0, i32 0, i32 10
  %36 = ptrtoint ptr %cntxt_id59.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %cntxt_id59.i.i, align 8
  %conv60.i.i = zext i16 %37 to i32
  %sub61.i.i = sub nsw i32 %conv55.i.i, %conv60.i.i
  %ingr_base.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 21
  %38 = ptrtoint ptr %ingr_base.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %sub61.i.i, ptr %ingr_base.i.i, align 32
  %abs_id64.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 3, i32 11
  %39 = ptrtoint ptr %abs_id64.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %abs_id64.i.i, align 2
  %conv65.i.i = zext i16 %40 to i32
  %sub67.i.i = sub nsw i32 %conv65.i.i, %sub61.i.i
  %arrayidx68.i.i = getelementptr %struct.adapter, ptr %1, i32 0, i32 10, i32 23, i32 %sub67.i.i
  %41 = ptrtoint ptr %arrayidx68.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %fw_evtq.i.i, ptr %arrayidx68.i.i, align 4
  %42 = ptrtoint ptr %nports.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %nports.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %cmp73229.not.i.i = icmp eq i8 %43, 0
  br i1 %cmp73229.not.i.i, label %for.end44.i.i.if.end5.i_crit_edge, label %for.end44.i.i.for.body75.i.i_crit_edge

for.end44.i.i.for.body75.i.i_crit_edge:           ; preds = %for.end44.i.i
  br label %for.body75.i.i

for.end44.i.i.if.end5.i_crit_edge:                ; preds = %for.end44.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end5.i

for.body75.i.i:                                   ; preds = %for.end128.i.i.for.body75.i.i_crit_edge, %for.end44.i.i.for.body75.i.i_crit_edge
  %pidx.1230.i.i = phi i32 [ %inc130.i.i, %for.end128.i.i.for.body75.i.i_crit_edge ], [ 0, %for.end44.i.i.for.body75.i.i_crit_edge ]
  %arrayidx78.i.i = getelementptr %struct.adapter, ptr %1, i32 0, i32 11, i32 %pidx.1230.i.i
  %44 = ptrtoint ptr %arrayidx78.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx78.i.i, align 4
  %nqsets93.i.i = getelementptr i8, ptr %45, i32 2327
  %46 = ptrtoint ptr %nqsets93.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %nqsets93.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %cmp95224.not.i.i = icmp eq i8 %47, 0
  br i1 %cmp95224.not.i.i, label %for.body75.i.i.for.end128.i.i_crit_edge, label %for.body97.preheader.i.i

for.body75.i.i.for.end128.i.i_crit_edge:          ; preds = %for.body75.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end128.i.i

for.body97.preheader.i.i:                         ; preds = %for.body75.i.i
  %first_qset83.i.i = getelementptr i8, ptr %45, i32 2328
  %48 = ptrtoint ptr %first_qset83.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %first_qset83.i.i, align 4
  %idxprom84.i.i = zext i8 %49 to i32
  %arrayidx90.i.i = getelementptr [8 x %struct.sge_eth_txq], ptr %sge.i.i, i32 0, i32 %idxprom84.i.i
  %arrayidx85.i.i = getelementptr %struct.adapter, ptr %1, i32 0, i32 10, i32 1, i32 %idxprom84.i.i
  br label %for.body97.i.i

for.body97.i.i:                                   ; preds = %for.body97.i.i.for.body97.i.i_crit_edge, %for.body97.preheader.i.i
  %qs91.0227.i.i = phi i32 [ %inc125.i.i, %for.body97.i.i.for.body97.i.i_crit_edge ], [ 0, %for.body97.preheader.i.i ]
  %txq86.0226.i.i = phi ptr [ %incdec.ptr127.i.i, %for.body97.i.i.for.body97.i.i_crit_edge ], [ %arrayidx90.i.i, %for.body97.preheader.i.i ]
  %rxq81.0225.i.i = phi ptr [ %incdec.ptr126.i.i, %for.body97.i.i.for.body97.i.i_crit_edge ], [ %arrayidx85.i.i, %for.body97.preheader.i.i ]
  %abs_id101.i.i = getelementptr inbounds %struct.sge_rspq, ptr %rxq81.0225.i.i, i32 0, i32 11
  %50 = ptrtoint ptr %abs_id101.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %abs_id101.i.i, align 2
  %conv102.i.i = zext i16 %51 to i32
  %52 = ptrtoint ptr %ingr_base.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ingr_base.i.i, align 32
  %sub104.i.i = sub i32 %conv102.i.i, %53
  %arrayidx105.i.i = getelementptr %struct.adapter, ptr %1, i32 0, i32 10, i32 23, i32 %sub104.i.i
  %54 = ptrtoint ptr %arrayidx105.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %rxq81.0225.i.i, ptr %arrayidx105.i.i, align 4
  %abs_id108.i.i = getelementptr inbounds %struct.sge_txq, ptr %txq86.0226.i.i, i32 0, i32 7
  %55 = ptrtoint ptr %abs_id108.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %abs_id108.i.i, align 4
  %57 = ptrtoint ptr %egr_base.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %egr_base.i.i, align 4
  %sub110.i.i = sub i32 %56, %58
  %arrayidx111.i.i = getelementptr %struct.adapter, ptr %1, i32 0, i32 10, i32 22, i32 %sub110.i.i
  %59 = ptrtoint ptr %arrayidx111.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %txq86.0226.i.i, ptr %arrayidx111.i.i, align 4
  %fl112.i.i = getelementptr inbounds %struct.sge_eth_rxq, ptr %rxq81.0225.i.i, i32 0, i32 1
  %cntxt_id113.i.i = getelementptr inbounds %struct.sge_eth_rxq, ptr %rxq81.0225.i.i, i32 0, i32 1, i32 7
  %60 = ptrtoint ptr %cntxt_id113.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %cntxt_id113.i.i, align 4
  %62 = load i32, ptr %egr_base.i.i, align 4
  %add.i.i = add i32 %62, %61
  %abs_id116.i.i = getelementptr inbounds %struct.sge_eth_rxq, ptr %rxq81.0225.i.i, i32 0, i32 1, i32 8
  %63 = ptrtoint ptr %abs_id116.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %add.i.i, ptr %abs_id116.i.i, align 8
  %64 = load i32, ptr %egr_base.i.i, align 4
  %sub122.i.i = sub i32 %add.i.i, %64
  %arrayidx123.i.i = getelementptr %struct.adapter, ptr %1, i32 0, i32 10, i32 22, i32 %sub122.i.i
  %65 = ptrtoint ptr %arrayidx123.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %fl112.i.i, ptr %arrayidx123.i.i, align 4
  %inc125.i.i = add nuw nsw i32 %qs91.0227.i.i, 1
  %incdec.ptr126.i.i = getelementptr %struct.sge_eth_rxq, ptr %rxq81.0225.i.i, i32 1
  %incdec.ptr127.i.i = getelementptr %struct.sge_eth_txq, ptr %txq86.0226.i.i, i32 1
  %66 = ptrtoint ptr %nqsets93.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %nqsets93.i.i, align 1
  %conv94.i.i = zext i8 %67 to i32
  %cmp95.i.i = icmp ult i32 %inc125.i.i, %conv94.i.i
  br i1 %cmp95.i.i, label %for.body97.i.i.for.body97.i.i_crit_edge, label %for.body97.i.i.for.end128.i.i_crit_edge

for.body97.i.i.for.end128.i.i_crit_edge:          ; preds = %for.body97.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end128.i.i

for.body97.i.i.for.body97.i.i_crit_edge:          ; preds = %for.body97.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body97.i.i

for.end128.i.i:                                   ; preds = %for.body97.i.i.for.end128.i.i_crit_edge, %for.body75.i.i.for.end128.i.i_crit_edge
  %inc130.i.i = add nuw nsw i32 %pidx.1230.i.i, 1
  %68 = ptrtoint ptr %nports.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %nports.i.i, align 4
  %conv72.i.i = zext i8 %69 to i32
  %cmp73.i.i = icmp ult i32 %inc130.i.i, %conv72.i.i
  br i1 %cmp73.i.i, label %for.end128.i.i.for.body75.i.i_crit_edge, label %if.end.i

for.end128.i.i.for.body75.i.i_crit_edge:          ; preds = %for.end128.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body75.i.i

setup_sge_queues.exit.i:                          ; preds = %if.end26.i.i.setup_sge_queues.exit.i_crit_edge, %for.body22.i.i.setup_sge_queues.exit.i_crit_edge, %if.end3.i.i.setup_sge_queues.exit.i_crit_edge, %if.then.i.i.setup_sge_queues.exit.i_crit_edge
  %err.3.i.i = phi i32 [ %call.i.i, %if.then.i.i.setup_sge_queues.exit.i_crit_edge ], [ %call6.i.i, %if.end3.i.i.setup_sge_queues.exit.i_crit_edge ], [ %call23.i.i, %for.body22.i.i.setup_sge_queues.exit.i_crit_edge ], [ %call30.i.i, %if.end26.i.i.setup_sge_queues.exit.i_crit_edge ]
  tail call void @t4vf_free_sge_resources(ptr noundef %1) #18
  br label %cleanup

if.end.i:                                         ; preds = %for.end128.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %cmp82.not.i.i = icmp eq i8 %69, 0
  br i1 %cmp82.not.i.i, label %if.end.i.if.end5.i_crit_edge, label %for.body.lr.ph.i63.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end5.i

for.body.lr.ph.i63.i:                             ; preds = %if.end.i
  %rss15.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 7, i32 3
  %u.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 7, i32 3, i32 1
  br label %for.body.i68.i

for.body.i68.i:                                   ; preds = %for.inc43.i.i.for.body.i68.i_crit_edge, %for.body.lr.ph.i63.i
  %pidx.083.i.i = phi i32 [ 0, %for.body.lr.ph.i63.i ], [ %inc44.i.i, %for.inc43.i.i.for.body.i68.i_crit_edge ]
  %arrayidx.i.i64.i = getelementptr %struct.adapter, ptr %1, i32 0, i32 11, i32 %pidx.083.i.i
  %70 = ptrtoint ptr %arrayidx.i.i64.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx.i.i64.i, align 4
  %first_qset.i65.i = getelementptr i8, ptr %71, i32 2328
  %72 = ptrtoint ptr %first_qset.i65.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %first_qset.i65.i, align 4
  %idxprom.i66.i = zext i8 %73 to i32
  %arrayidx.i.i = getelementptr %struct.adapter, ptr %1, i32 0, i32 10, i32 1, i32 %idxprom.i66.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rss.i.i) #18
  %nqsets.i67.i = getelementptr i8, ptr %71, i32 2327
  %74 = call ptr @memset(ptr %rss.i.i, i32 255, i32 16)
  %75 = ptrtoint ptr %nqsets.i67.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %nqsets.i67.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %cmp479.not.i.i = icmp eq i8 %76, 0
  br i1 %cmp479.not.i.i, label %for.body.i68.i.for.end.i.i_crit_edge, label %for.body.i68.i.for.body6.i.i_crit_edge

for.body.i68.i.for.body6.i.i_crit_edge:           ; preds = %for.body.i68.i
  br label %for.body6.i.i

for.body.i68.i.for.end.i.i_crit_edge:             ; preds = %for.body.i68.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end.i.i

for.body6.i.i:                                    ; preds = %for.body6.i.i.for.body6.i.i_crit_edge, %for.body.i68.i.for.body6.i.i_crit_edge
  %qs.080.i.i = phi i32 [ %inc.i70.i, %for.body6.i.i.for.body6.i.i_crit_edge ], [ 0, %for.body.i68.i.for.body6.i.i_crit_edge ]
  %abs_id.i69.i = getelementptr %struct.sge_eth_rxq, ptr %arrayidx.i.i, i32 %qs.080.i.i, i32 0, i32 11
  %77 = ptrtoint ptr %abs_id.i69.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %abs_id.i69.i, align 2
  %arrayidx8.i.i = getelementptr [8 x i16], ptr %rss.i.i, i32 0, i32 %qs.080.i.i
  %79 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %78, ptr %arrayidx8.i.i, align 2
  %inc.i70.i = add nuw nsw i32 %qs.080.i.i, 1
  %80 = ptrtoint ptr %nqsets.i67.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %nqsets.i67.i, align 1
  %conv3.i.i = zext i8 %81 to i32
  %cmp4.i.i = icmp ult i32 %inc.i70.i, %conv3.i.i
  br i1 %cmp4.i.i, label %for.body6.i.i.for.body6.i.i_crit_edge, label %for.body6.i.i.for.end.i.i_crit_edge

for.body6.i.i.for.end.i.i_crit_edge:              ; preds = %for.body6.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end.i.i

for.body6.i.i.for.body6.i.i_crit_edge:            ; preds = %for.body6.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body6.i.i

for.end.i.i:                                      ; preds = %for.body6.i.i.for.end.i.i_crit_edge, %for.body.i68.i.for.end.i.i_crit_edge
  %.lcssa.i.i = phi i8 [ 0, %for.body.i68.i.for.end.i.i_crit_edge ], [ %81, %for.body6.i.i.for.end.i.i_crit_edge ]
  %conv3.le.i.i = zext i8 %.lcssa.i.i to i32
  %viid.i.i = getelementptr i8, ptr %71, i32 2312
  %82 = ptrtoint ptr %viid.i.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %viid.i.i, align 4
  %conv9.i.i = zext i16 %83 to i32
  %rss_size.i.i = getelementptr i8, ptr %71, i32 2320
  %84 = ptrtoint ptr %rss_size.i.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %rss_size.i.i, align 4
  %conv10.i.i = zext i16 %85 to i32
  %call13.i.i = call i32 @t4vf_config_rss_range(ptr noundef %1, i32 noundef %conv9.i.i, i32 noundef 0, i32 noundef %conv10.i.i, ptr noundef nonnull %rss.i.i, i32 noundef %conv3.le.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i)
  %tobool.not.i71.i = icmp eq i32 %call13.i.i, 0
  br i1 %tobool.not.i71.i, label %if.end.i.i, label %for.end.i.i.if.then4.i_crit_edge

for.end.i.i.if.then4.i_crit_edge:                 ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then4.i

if.end.i.i:                                       ; preds = %for.end.i.i
  %86 = ptrtoint ptr %rss15.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %rss15.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %87)
  %cond.i.i = icmp eq i32 %87, 1
  br i1 %cond.i.i, label %sw.bb.i.i, label %if.end.i.i.for.inc43.i.i_crit_edge

if.end.i.i.for.inc43.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc43.i.i

sw.bb.i.i:                                        ; preds = %if.end.i.i
  %88 = ptrtoint ptr %u.i.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %bf.load.i.i = load i16, ptr %u.i.i, align 4
  %89 = and i16 %bf.load.i.i, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %89)
  %tobool18.not.i.i = icmp eq i16 %89, 0
  br i1 %tobool18.not.i.i, label %if.then19.i.i, label %sw.bb.i.i.for.inc43.i.i_crit_edge

sw.bb.i.i.for.inc43.i.i_crit_edge:                ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc43.i.i

if.then19.i.i:                                    ; preds = %sw.bb.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %config.i.i) #18
  %90 = ptrtoint ptr %config.i.i to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 -1, ptr %config.i.i, align 8, !annotation !461
  %91 = ptrtoint ptr %viid.i.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %viid.i.i, align 4
  %conv21.i.i = zext i16 %92 to i32
  %call22.i.i = call i32 @t4vf_read_rss_vi_config(ptr noundef %1, i32 noundef %conv21.i.i, ptr noundef nonnull %config.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i)
  %tobool23.not.i.i = icmp eq i32 %call22.i.i, 0
  br i1 %tobool23.not.i.i, label %cleanup.i.i, label %cleanup.thread.i.i

cleanup.thread.i.i:                               ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %config.i.i) #18
  br label %if.then4.i

cleanup.i.i:                                      ; preds = %if.then19.i.i
  %abs_id28.i.i = getelementptr inbounds %struct.sge_rspq, ptr %arrayidx.i.i, i32 0, i32 11
  %93 = ptrtoint ptr %abs_id28.i.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %abs_id28.i.i, align 2
  %95 = ptrtoint ptr %config.i.i to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %94, ptr %config.i.i, align 8
  %96 = ptrtoint ptr %viid.i.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %viid.i.i, align 4
  %conv30.i.i = zext i16 %97 to i32
  %call31.i.i = call i32 @t4vf_write_rss_vi_config(ptr noundef %1, i32 noundef %conv30.i.i, ptr noundef nonnull %config.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i.i)
  %tobool32.not.i.i = icmp eq i32 %call31.i.i, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %config.i.i) #18
  br i1 %tobool32.not.i.i, label %cleanup.i.i.for.inc43.i.i_crit_edge, label %cleanup.i.i.if.then4.i_crit_edge

cleanup.i.i.if.then4.i_crit_edge:                 ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then4.i

cleanup.i.i.for.inc43.i.i_crit_edge:              ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc43.i.i

for.inc43.i.i:                                    ; preds = %cleanup.i.i.for.inc43.i.i_crit_edge, %sw.bb.i.i.for.inc43.i.i_crit_edge, %if.end.i.i.for.inc43.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rss.i.i) #18
  %inc44.i.i = add nuw nsw i32 %pidx.083.i.i, 1
  %98 = ptrtoint ptr %nports.i.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %nports.i.i, align 4
  %conv.i72.i = zext i8 %99 to i32
  %cmp.i73.i = icmp ult i32 %inc44.i.i, %conv.i72.i
  br i1 %cmp.i73.i, label %for.inc43.i.i.for.body.i68.i_crit_edge, label %for.inc43.i.i.if.end5.i_crit_edge

for.inc43.i.i.if.end5.i_crit_edge:                ; preds = %for.inc43.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end5.i

for.inc43.i.i.for.body.i68.i_crit_edge:           ; preds = %for.inc43.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i68.i

if.then4.i:                                       ; preds = %cleanup.i.i.if.then4.i_crit_edge, %cleanup.thread.i.i, %for.end.i.i.if.then4.i_crit_edge
  %retval.3.ph.i.i = phi i32 [ %call22.i.i, %cleanup.thread.i.i ], [ %call31.i.i, %cleanup.i.i.if.then4.i_crit_edge ], [ %call13.i.i, %for.end.i.i.if.then4.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rss.i.i) #18
  call void @t4vf_free_sge_resources(ptr noundef %1) #18
  br label %cleanup

if.end5.i:                                        ; preds = %for.inc43.i.i.if.end5.i_crit_edge, %if.end.i.if.end5.i_crit_edge, %for.end44.i.i.if.end5.i_crit_edge
  %100 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %flags, align 8
  %and7.i = and i32 %101, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.end5.i.if.end10.i_crit_edge, label %if.then9.i

if.end5.i.if.end10.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end10.i

if.then9.i:                                       ; preds = %if.end5.i
  %desc.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 8, i32 0, i32 1
  %name.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 12
  %102 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %name.i.i, align 4
  %call.i74.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %desc.i.i, i32 noundef 21, ptr noundef nonnull @.str.141, ptr noundef %103) #18
  %arrayidx4.i.i = getelementptr %struct.adapter, ptr %1, i32 0, i32 8, i32 0, i32 1, i32 21
  %104 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 0, ptr %arrayidx4.i.i, align 1
  %105 = ptrtoint ptr %nports.i.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %nports.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %cmp49.not.i.i = icmp eq i8 %106, 0
  br i1 %cmp49.not.i.i, label %if.then9.i.if.end10.i_crit_edge, label %if.then9.i.for.body.i77.i_crit_edge

if.then9.i.for.body.i77.i_crit_edge:              ; preds = %if.then9.i
  br label %for.body.i77.i

if.then9.i.if.end10.i_crit_edge:                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end10.i

for.body.i77.i:                                   ; preds = %for.end.i82.i.for.body.i77.i_crit_edge, %if.then9.i.for.body.i77.i_crit_edge
  %pidx.050.i.i = phi i32 [ %inc26.i.i, %for.end.i82.i.for.body.i77.i_crit_edge ], [ 0, %if.then9.i.for.body.i77.i_crit_edge ]
  %arrayidx6.i.i = getelementptr %struct.adapter, ptr %1, i32 0, i32 11, i32 %pidx.050.i.i
  %107 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %arrayidx6.i.i, align 4
  %nqsets.i76.i = getelementptr i8, ptr %108, i32 2327
  %109 = ptrtoint ptr %nqsets.i76.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %nqsets.i76.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %cmp1045.not.i.i = icmp eq i8 %110, 0
  br i1 %cmp1045.not.i.i, label %for.body.i77.i.for.end.i82.i_crit_edge, label %for.body.i77.i.for.body12.i.i_crit_edge

for.body.i77.i.for.body12.i.i_crit_edge:          ; preds = %for.body.i77.i
  br label %for.body12.i.i

for.body.i77.i.for.end.i82.i_crit_edge:           ; preds = %for.body.i77.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end.i82.i

for.body12.i.i:                                   ; preds = %for.body12.i.i.for.body12.i.i_crit_edge, %for.body.i77.i.for.body12.i.i_crit_edge
  %msi.047.i.i = phi i32 [ %inc24.i.i, %for.body12.i.i.for.body12.i.i_crit_edge ], [ 1, %for.body.i77.i.for.body12.i.i_crit_edge ]
  %qs.046.i.i = phi i32 [ %inc.i78.i, %for.body12.i.i.for.body12.i.i_crit_edge ], [ 0, %for.body.i77.i.for.body12.i.i_crit_edge ]
  %desc15.i.i = getelementptr %struct.adapter, ptr %1, i32 0, i32 8, i32 %msi.047.i.i, i32 1
  %call19.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %desc15.i.i, i32 noundef 21, ptr noundef nonnull @.str.142, ptr noundef %108, i32 noundef %qs.046.i.i) #18
  %arrayidx23.i.i = getelementptr %struct.adapter, ptr %1, i32 0, i32 8, i32 %msi.047.i.i, i32 1, i32 21
  %111 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 0, ptr %arrayidx23.i.i, align 1
  %inc.i78.i = add nuw nsw i32 %qs.046.i.i, 1
  %inc24.i.i = add nuw nsw i32 %msi.047.i.i, 1
  %112 = ptrtoint ptr %nqsets.i76.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %nqsets.i76.i, align 1
  %conv9.i79.i = zext i8 %113 to i32
  %cmp10.i.i = icmp ult i32 %inc.i78.i, %conv9.i79.i
  br i1 %cmp10.i.i, label %for.body12.i.i.for.body12.i.i_crit_edge, label %for.body12.i.i.for.end.i82.i_crit_edge

for.body12.i.i.for.end.i82.i_crit_edge:           ; preds = %for.body12.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end.i82.i

for.body12.i.i.for.body12.i.i_crit_edge:          ; preds = %for.body12.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body12.i.i

for.end.i82.i:                                    ; preds = %for.body12.i.i.for.end.i82.i_crit_edge, %for.body.i77.i.for.end.i82.i_crit_edge
  %inc26.i.i = add nuw nsw i32 %pidx.050.i.i, 1
  %114 = ptrtoint ptr %nports.i.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %nports.i.i, align 4
  %conv.i80.i = zext i8 %115 to i32
  %cmp.i81.i = icmp ult i32 %inc26.i.i, %conv.i80.i
  br i1 %cmp.i81.i, label %for.end.i82.i.for.body.i77.i_crit_edge, label %for.end.i82.i.if.end10.i_crit_edge

for.end.i82.i.if.end10.i_crit_edge:               ; preds = %for.end.i82.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end10.i

for.end.i82.i.for.body.i77.i_crit_edge:           ; preds = %for.end.i82.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i77.i

if.end10.i:                                       ; preds = %for.end.i82.i.if.end10.i_crit_edge, %if.then9.i.if.end10.i_crit_edge, %if.end5.i.if.end10.i_crit_edge
  %116 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %flags, align 8
  %or.i = or i32 %117, 1
  store i32 %or.i, ptr %flags, align 8
  br label %do.body.i

do.body.i:                                        ; preds = %if.end10.i, %if.then2.do.body.i_crit_edge
  %118 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %flags, align 8
  %and14.i = and i32 %119, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %cmp15.i = icmp eq i32 %and14.i, 0
  br i1 %cmp15.i, label %do.body19.i, label %do.end25.i, !prof !458

do.body19.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #20
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 787, 0\0A.popsection", ""() #18, !srcloc !462
  unreachable

do.end25.i:                                       ; preds = %do.body.i
  %and27.i = and i32 %119, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %if.else.i, label %if.then29.i

if.then29.i:                                      ; preds = %do.end25.i
  %msix_info.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 8
  %120 = ptrtoint ptr %msix_info.i.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %msix_info.i.i, align 4
  %conv.i83.i = zext i16 %121 to i32
  %desc.i84.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 8, i32 0, i32 1
  %fw_evtq.i85.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 3
  %call.i.i.i = call i32 @request_threaded_irq(i32 noundef %conv.i83.i, ptr noundef nonnull @t4vf_sge_intr_msix, ptr noundef null, i32 noundef 0, ptr noundef %desc.i84.i, ptr noundef %fw_evtq.i85.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i86.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i86.i, label %for.cond.preheader.i87.i, label %if.then29.i.do.end38.i_crit_edge

if.then29.i.do.end38.i_crit_edge:                 ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end38.i

for.cond.preheader.i87.i:                         ; preds = %if.then29.i
  %ethqsets.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 11
  %122 = ptrtoint ptr %ethqsets.i.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %ethqsets.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %123)
  %cmp63.not.i.i = icmp eq i16 %123, 0
  br i1 %cmp63.not.i.i, label %for.cond.preheader.i87.i.if.end39.i_crit_edge, label %for.cond.preheader.i87.i.for.body.i89.i_crit_edge

for.cond.preheader.i87.i.for.body.i89.i_crit_edge: ; preds = %for.cond.preheader.i87.i
  br label %for.body.i89.i

for.cond.preheader.i87.i.if.end39.i_crit_edge:    ; preds = %for.cond.preheader.i87.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end39.i

for.body.i89.i:                                   ; preds = %if.end17.i.i.for.body.i89.i_crit_edge, %for.cond.preheader.i87.i.for.body.i89.i_crit_edge
  %msi.065.i.i = phi i32 [ %inc.i90.i, %if.end17.i.i.for.body.i89.i_crit_edge ], [ 1, %for.cond.preheader.i87.i.for.body.i89.i_crit_edge ]
  %rxq.064.i.i = phi i32 [ %inc18.i.i, %if.end17.i.i.for.body.i89.i_crit_edge ], [ 0, %for.cond.preheader.i87.i.for.body.i89.i_crit_edge ]
  %arrayidx6.i88.i = getelementptr %struct.adapter, ptr %1, i32 0, i32 8, i32 %msi.065.i.i
  %124 = ptrtoint ptr %arrayidx6.i88.i to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %arrayidx6.i88.i, align 4
  %conv8.i.i = zext i16 %125 to i32
  %desc11.i.i = getelementptr %struct.adapter, ptr %1, i32 0, i32 8, i32 %msi.065.i.i, i32 1
  %arrayidx13.i.i = getelementptr %struct.adapter, ptr %1, i32 0, i32 10, i32 1, i32 %rxq.064.i.i
  %call.i59.i.i = call i32 @request_threaded_irq(i32 noundef %conv8.i.i, ptr noundef nonnull @t4vf_sge_intr_msix, ptr noundef null, i32 noundef 0, ptr noundef %desc11.i.i, ptr noundef %arrayidx13.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i59.i.i)
  %tobool15.not.i.i = icmp eq i32 %call.i59.i.i, 0
  br i1 %tobool15.not.i.i, label %if.end17.i.i, label %while.cond.preheader.i.i

while.cond.preheader.i.i:                         ; preds = %for.body.i89.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rxq.064.i.i)
  %cmp1967.not.i.i = icmp eq i32 %rxq.064.i.i, 0
  br i1 %cmp1967.not.i.i, label %while.cond.preheader.i.i.while.end.i.i_crit_edge, label %while.cond.preheader.i.i.while.body.i.i_crit_edge

while.cond.preheader.i.i.while.body.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  br label %while.body.i.i

while.cond.preheader.i.i.while.end.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end.i.i

if.end17.i.i:                                     ; preds = %for.body.i89.i
  %inc.i90.i = add nuw nsw i32 %msi.065.i.i, 1
  %inc18.i.i = add nuw nsw i32 %rxq.064.i.i, 1
  %126 = ptrtoint ptr %ethqsets.i.i to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %ethqsets.i.i, align 2
  %conv3.i91.i = zext i16 %127 to i32
  %cmp.i92.i = icmp ult i32 %inc18.i.i, %conv3.i91.i
  br i1 %cmp.i92.i, label %if.end17.i.i.for.body.i89.i_crit_edge, label %if.end17.i.i.if.end39.i_crit_edge

if.end17.i.i.if.end39.i_crit_edge:                ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end39.i

if.end17.i.i.for.body.i89.i_crit_edge:            ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i89.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.cond.preheader.i.i.while.body.i.i_crit_edge
  %dec69.in.i.i = phi i32 [ %dec69.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %rxq.064.i.i, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %msi.168.i.i = phi i32 [ %dec22.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %msi.065.i.i, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %dec69.i.i = add nsw i32 %dec69.in.i.i, -1
  %dec22.i.i = add nsw i32 %msi.168.i.i, -1
  %arrayidx23.i93.i = getelementptr %struct.adapter, ptr %1, i32 0, i32 8, i32 %dec22.i.i
  %128 = ptrtoint ptr %arrayidx23.i93.i to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %arrayidx23.i93.i, align 4
  %conv25.i.i = zext i16 %129 to i32
  %arrayidx27.i.i = getelementptr %struct.adapter, ptr %1, i32 0, i32 10, i32 1, i32 %dec69.i.i
  %call29.i.i = call ptr @free_irq(i32 noundef %conv25.i.i, ptr noundef %arrayidx27.i.i) #18
  %cmp19.i.i = icmp sgt i32 %dec69.in.i.i, 1
  br i1 %cmp19.i.i, label %while.body.i.i.while.body.i.i_crit_edge, label %while.body.i.i.while.end.i.i_crit_edge

while.body.i.i.while.end.i.i_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end.i.i

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %while.body.i.i.while.end.i.i_crit_edge, %while.cond.preheader.i.i.while.end.i.i_crit_edge
  %130 = ptrtoint ptr %msix_info.i.i to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %msix_info.i.i, align 4
  %conv33.i.i = zext i16 %131 to i32
  %call35.i.i = call ptr @free_irq(i32 noundef %conv33.i.i, ptr noundef %fw_evtq.i85.i) #18
  br label %if.end33.i

if.else.i:                                        ; preds = %do.end25.i
  call void @__sanitizer_cov_trace_pc() #20
  %pdev.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 2
  %132 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %pdev.i, align 8
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %133, i32 0, i32 46
  %134 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %irq.i, align 4
  %call31.i = call ptr @t4vf_intr_handler(ptr noundef %1) #18
  %name.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 12
  %136 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %name.i, align 4
  %call.i96.i = call i32 @request_threaded_irq(i32 noundef %135, ptr noundef %call31.i, ptr noundef null, i32 noundef 0, ptr noundef %137, ptr noundef %1) #18
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.else.i, %while.end.i.i
  %err.0.i = phi i32 [ %call.i96.i, %if.else.i ], [ %call.i59.i.i, %while.end.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %tobool34.not.i = icmp eq i32 %err.0.i, 0
  br i1 %tobool34.not.i, label %if.end33.i.if.end39.i_crit_edge, label %if.end33.i.do.end38.i_crit_edge

if.end33.i.do.end38.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end38.i

if.end33.i.if.end39.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end39.i

do.end38.i:                                       ; preds = %if.end33.i.do.end38.i_crit_edge, %if.then29.i.do.end38.i_crit_edge
  %err.0120.i = phi i32 [ %err.0.i, %if.end33.i.do.end38.i_crit_edge ], [ %call.i.i.i, %if.then29.i.do.end38.i_crit_edge ]
  %pdev_dev.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 3
  %138 = ptrtoint ptr %pdev_dev.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %pdev_dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %139, ptr noundef nonnull @.str.125, i32 noundef %err.0120.i) #21
  br label %cleanup

if.end39.i:                                       ; preds = %if.end33.i.if.end39.i_crit_edge, %if.end17.i.i.if.end39.i_crit_edge, %for.cond.preheader.i87.i.if.end39.i_crit_edge
  %ethqsets.i97.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 11
  %140 = ptrtoint ptr %ethqsets.i97.i to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %ethqsets.i97.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %141)
  %cmp25.not.i.i = icmp eq i16 %141, 0
  br i1 %cmp25.not.i.i, label %if.end39.i.for.end.i107.i_crit_edge, label %if.end39.i.for.body.i102.i_crit_edge

if.end39.i.for.body.i102.i_crit_edge:             ; preds = %if.end39.i
  br label %for.body.i102.i

if.end39.i.for.end.i107.i_crit_edge:              ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end.i107.i

for.body.i102.i:                                  ; preds = %for.body.i102.i.for.body.i102.i_crit_edge, %if.end39.i.for.body.i102.i_crit_edge
  %rxq.026.i.i = phi i32 [ %inc.i99.i, %for.body.i102.i.for.body.i102.i_crit_edge ], [ 0, %if.end39.i.for.body.i102.i_crit_edge ]
  %arrayidx.i98.i = getelementptr %struct.adapter, ptr %1, i32 0, i32 10, i32 1, i32 %rxq.026.i.i
  call void @napi_enable(ptr noundef %arrayidx.i98.i) #18
  %adapter.i.i.i = getelementptr inbounds %struct.sge_rspq, ptr %arrayidx.i98.i, i32 0, i32 18
  %142 = ptrtoint ptr %adapter.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %adapter.i.i.i, align 4
  %intr_params.i.i.i = getelementptr inbounds %struct.sge_rspq, ptr %arrayidx.i98.i, i32 0, i32 7
  %144 = ptrtoint ptr %intr_params.i.i.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %intr_params.i.i.i, align 4
  %conv.i.i.i = zext i8 %145 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i.i, 12
  %cntxt_id.i.i.i = getelementptr inbounds %struct.sge_rspq, ptr %arrayidx.i98.i, i32 0, i32 10
  %146 = ptrtoint ptr %cntxt_id.i.i.i to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %cntxt_id.i.i.i, align 8
  %conv1.i.i.i = zext i16 %147 to i32
  %shl2.i.i.i = shl nuw i32 %conv1.i.i.i, 16
  %or3.i.i.i = or i32 %shl2.i.i.i, %shl.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !463
  call void @arm_heavy_mb() #18
  %148 = call i32 @llvm.bswap.i32(i32 %or3.i.i.i) #18
  %149 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %143, align 128
  %add.ptr.i.i.i.i = getelementptr i8, ptr %150, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 %148) #18, !srcloc !464
  %inc.i99.i = add nuw nsw i32 %rxq.026.i.i, 1
  %151 = ptrtoint ptr %ethqsets.i97.i to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %ethqsets.i97.i, align 2
  %conv.i100.i = zext i16 %152 to i32
  %cmp.i101.i = icmp ult i32 %inc.i99.i, %conv.i100.i
  br i1 %cmp.i101.i, label %for.body.i102.i.for.body.i102.i_crit_edge, label %for.body.i102.i.for.end.i107.i_crit_edge

for.body.i102.i.for.end.i107.i_crit_edge:         ; preds = %for.body.i102.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end.i107.i

for.body.i102.i.for.body.i102.i_crit_edge:        ; preds = %for.body.i102.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i102.i

for.end.i107.i:                                   ; preds = %for.body.i102.i.for.end.i107.i_crit_edge, %if.end39.i.for.end.i107.i_crit_edge
  %fw_evtq.i103.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 3
  call void @napi_enable(ptr noundef %fw_evtq.i103.i) #18
  %adapter.i15.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 3, i32 18
  %153 = ptrtoint ptr %adapter.i15.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %adapter.i15.i.i, align 4
  %intr_params.i16.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 3, i32 7
  %155 = ptrtoint ptr %intr_params.i16.i.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %intr_params.i16.i.i, align 4
  %conv.i17.i.i = zext i8 %156 to i32
  %shl.i18.i.i = shl nuw nsw i32 %conv.i17.i.i, 12
  %cntxt_id.i19.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 3, i32 10
  %157 = ptrtoint ptr %cntxt_id.i19.i.i to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %cntxt_id.i19.i.i, align 8
  %conv1.i20.i.i = zext i16 %158 to i32
  %shl2.i21.i.i = shl nuw i32 %conv1.i20.i.i, 16
  %or3.i22.i.i = or i32 %shl2.i21.i.i, %shl.i18.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !463
  call void @arm_heavy_mb() #18
  %159 = call i32 @llvm.bswap.i32(i32 %or3.i22.i.i) #18
  %160 = ptrtoint ptr %154 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %154, align 128
  %add.ptr.i.i23.i.i = getelementptr i8, ptr %161, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i23.i.i, i32 %159) #18, !srcloc !464
  %162 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %flags, align 8
  %and.i105.i = and i32 %163, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i105.i)
  %tobool.not.i106.i = icmp eq i32 %and.i105.i, 0
  br i1 %tobool.not.i106.i, label %for.end.i107.i.adapter_up.exit_crit_edge, label %if.then.i109.i

for.end.i107.i.adapter_up.exit_crit_edge:         ; preds = %for.end.i107.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %adapter_up.exit

if.then.i109.i:                                   ; preds = %for.end.i107.i
  call void @__sanitizer_cov_trace_pc() #20
  %intr_params.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 5, i32 7
  %164 = ptrtoint ptr %intr_params.i.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %intr_params.i.i, align 4
  %conv2.i.i = zext i8 %165 to i32
  %shl.i.i = shl nuw nsw i32 %conv2.i.i, 12
  %cntxt_id.i108.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 5, i32 10
  %166 = ptrtoint ptr %cntxt_id.i108.i to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %cntxt_id.i108.i, align 8
  %conv4.i.i = zext i16 %167 to i32
  %shl5.i.i = shl nuw i32 %conv4.i.i, 16
  %or6.i.i = or i32 %shl5.i.i, %shl.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !463
  call void @arm_heavy_mb() #18
  %168 = call i32 @llvm.bswap.i32(i32 %or6.i.i) #18
  %169 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %1, align 128
  %add.ptr.i.i.i = getelementptr i8, ptr %170, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %168) #18, !srcloc !464
  br label %adapter_up.exit

adapter_up.exit:                                  ; preds = %if.then.i109.i, %for.end.i107.i.adapter_up.exit_crit_edge
  call void @t4vf_sge_start(ptr noundef %1) #18
  br label %if.end7

if.end7:                                          ; preds = %adapter_up.exit, %if.end.if.end7_crit_edge
  %call8 = call i32 @t4vf_update_port_info(ptr noundef %add.ptr.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %171 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %add.ptr.i, align 4
  %viid.i = getelementptr i8, ptr %dev, i32 2312
  %173 = ptrtoint ptr %viid.i to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %viid.i, align 4
  %conv.i = zext i16 %174 to i32
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %175 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %mtu.i, align 4
  %call1.i = call i32 @t4vf_set_rxmode(ptr noundef %172, i32 noundef %conv.i, i32 noundef %176, i32 noundef -1, i32 noundef -1, i32 noundef -1, i32 noundef 1, i1 noundef zeroext true) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i41 = icmp eq i32 %call1.i, 0
  br i1 %cmp.i41, label %if.end.i42, label %if.end11.err_unwind_crit_edge

if.end11.err_unwind_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #20
  br label %err_unwind

if.end.i42:                                       ; preds = %if.end11
  %177 = ptrtoint ptr %viid.i to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %viid.i, align 4
  %conv4.i = zext i16 %178 to i32
  %xact_addr_filt.i = getelementptr i8, ptr %dev, i32 2316
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %179 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %dev_addr.i, align 64
  %call5.i = call fastcc i32 @cxgb4vf_change_mac(ptr noundef %add.ptr.i, i32 noundef %conv4.i, ptr noundef %xact_addr_filt.i, ptr noundef %180) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp eq i32 %call5.i, 0
  br i1 %cmp6.i, label %link_start.exit, label %if.end.i42.err_unwind_crit_edge

if.end.i42.err_unwind_crit_edge:                  ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #20
  br label %err_unwind

link_start.exit:                                  ; preds = %if.end.i42
  %181 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %add.ptr.i, align 4
  %call10.i = call i32 @t4vf_enable_pi(ptr noundef %182, ptr noundef %add.ptr.i, i1 noundef zeroext true, i1 noundef zeroext true) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool13.not = icmp eq i32 %call10.i, 0
  br i1 %tobool13.not, label %if.end15, label %link_start.exit.err_unwind_crit_edge

link_start.exit.err_unwind_crit_edge:             ; preds = %link_start.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %err_unwind

if.end15:                                         ; preds = %link_start.exit
  %call16 = call i32 @t4vf_get_vf_vlan_acl(ptr noundef %1) #18
  %vlan_id = getelementptr i8, ptr %dev, i32 2308
  %183 = ptrtoint ptr %vlan_id to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %call16, ptr %vlan_id, align 4
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 104
  %184 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %185)
  %cmp4.not.i = icmp eq i32 %185, 0
  br i1 %cmp4.not.i, label %if.end15.netif_tx_start_all_queues.exit_crit_edge, label %for.body.lr.ph.i

if.end15.netif_tx_start_all_queues.exit_crit_edge: ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #20
  br label %netif_tx_start_all_queues.exit

for.body.lr.ph.i:                                 ; preds = %if.end15
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.05.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %186 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr %struct.netdev_queue, ptr %187, i32 %i.05.i, i32 13
  call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #18
  %inc.i = add nuw i32 %i.05.i, 1
  %188 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i43 = icmp ult i32 %inc.i, %189
  br i1 %cmp.i43, label %for.body.i.for.body.i_crit_edge, label %for.body.i.netif_tx_start_all_queues.exit_crit_edge

for.body.i.netif_tx_start_all_queues.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %netif_tx_start_all_queues.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

netif_tx_start_all_queues.exit:                   ; preds = %for.body.i.netif_tx_start_all_queues.exit_crit_edge, %if.end15.netif_tx_start_all_queues.exit_crit_edge
  %port_id = getelementptr i8, ptr %dev, i32 2326
  %190 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %port_id, align 2
  %conv = zext i8 %191 to i32
  call void @_set_bit(i32 noundef %conv, ptr noundef %open_device_map) #18
  br label %cleanup

err_unwind:                                       ; preds = %link_start.exit.err_unwind_crit_edge, %if.end.i42.err_unwind_crit_edge, %if.end11.err_unwind_crit_edge
  %ret.1.i48 = phi i32 [ %call10.i, %link_start.exit.err_unwind_crit_edge ], [ %call1.i, %if.end11.err_unwind_crit_edge ], [ %call5.i, %if.end.i42.err_unwind_crit_edge ]
  %192 = ptrtoint ptr %open_device_map to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %open_device_map, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %193)
  %cmp19 = icmp eq i32 %193, 0
  br i1 %cmp19, label %if.then21, label %err_unwind.cleanup_crit_edge

err_unwind.cleanup_crit_edge:                     ; preds = %err_unwind
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then21:                                        ; preds = %err_unwind
  call void @__sanitizer_cov_trace_pc() #20
  call fastcc void @adapter_down(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %err_unwind.cleanup_crit_edge, %netif_tx_start_all_queues.exit, %if.end7.cleanup_crit_edge, %do.end38.i, %if.then4.i, %setup_sge_queues.exit.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %netif_tx_start_all_queues.exit ], [ -6, %entry.cleanup_crit_edge ], [ %call8, %if.end7.cleanup_crit_edge ], [ %ret.1.i48, %if.then21 ], [ %ret.1.i48, %err_unwind.cleanup_crit_edge ], [ %err.3.i.i, %setup_sge_queues.exit.i ], [ %err.0120.i, %do.end38.i ], [ %retval.3.ph.i.i, %if.then4.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxgb4vf_stop(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  tail call void @netif_tx_stop_all_queues(ptr noundef %dev) #18
  tail call void @netif_carrier_off(ptr noundef %dev) #18
  %call2 = tail call i32 @t4vf_enable_pi(ptr noundef %1, ptr noundef %add.ptr.i, i1 noundef zeroext false, i1 noundef zeroext false) #18
  %port_id = getelementptr i8, ptr %dev, i32 2326
  %2 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %port_id, align 2
  %conv = zext i8 %3 to i32
  %open_device_map = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 5
  tail call void @_clear_bit(i32 noundef %conv, ptr noundef %open_device_map) #18
  %4 = ptrtoint ptr %open_device_map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %open_device_map, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call fastcc void @adapter_down(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4vf_eth_xmit(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cxgb4vf_set_rxmode(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %uc.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 65
  %call.i.i = tail call i32 @__hw_addr_sync_dev(ptr noundef %uc.i.i, ptr noundef %dev, ptr noundef nonnull @cxgb4vf_mac_sync, ptr noundef nonnull @cxgb4vf_mac_unsync) #18
  %mc.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66
  %call.i1.i = tail call i32 @__hw_addr_sync_dev(ptr noundef %mc.i.i, ptr noundef %dev, ptr noundef nonnull @cxgb4vf_mac_sync, ptr noundef nonnull @cxgb4vf_mac_unsync) #18
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %viid.i = getelementptr i8, ptr %dev, i32 2312
  %2 = ptrtoint ptr %viid.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %viid.i, align 4
  %conv.i = zext i16 %3 to i32
  %flags.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 8
  %and.i = lshr i32 %5, 8
  %and.lobit.i = and i32 %and.i, 1
  %and5.i = lshr i32 %5, 9
  %and5.lobit.i = and i32 %and5.i, 1
  %call8.i = tail call i32 @t4vf_set_rxmode(ptr noundef %1, i32 noundef %conv.i, i32 noundef -1, i32 noundef %and.lobit.i, i32 noundef %and5.lobit.i, i32 noundef 1, i32 noundef -1, i1 noundef zeroext false) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cxgb4vf_do_ioctl(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %ifr, i32 noundef %cmd) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -95
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxgb4vf_change_mtu(ptr nocapture noundef %dev, i32 noundef %new_mtu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %viid = getelementptr i8, ptr %dev, i32 2312
  %2 = ptrtoint ptr %viid to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %viid, align 4
  %conv = zext i16 %3 to i32
  %call1 = tail call i32 @t4vf_set_rxmode(ptr noundef %1, i32 noundef %conv, i32 noundef %new_mtu, i32 noundef -1, i32 noundef -1, i32 noundef -1, i32 noundef -1, i1 noundef zeroext true) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %4 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %new_mtu, ptr %mtu, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @cxgb4vf_get_stats(ptr noundef %dev) #0 align 64 {
entry:
  %stats = alloca %struct.t4vf_port_stats, align 8
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %stats) #18
  %0 = call ptr @memset(ptr %stats, i32 255, i32 128)
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %1 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr.i.i, align 4
  %stats2 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  %stats_lock = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %stats_lock) #18
  %pidx = getelementptr i8, ptr %dev, i32 2322
  %3 = ptrtoint ptr %pidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %pidx, align 2
  %conv = zext i8 %4 to i32
  %call3 = call i32 @t4vf_get_port_stats(ptr noundef %2, i32 noundef %conv, ptr noundef nonnull %stats) #18
  call void @_raw_spin_unlock(ptr noundef %stats_lock) #18
  %5 = call ptr @memset(ptr %stats2, i32 0, i32 92)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %6 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %stats, align 8
  %tx_mcast_bytes = getelementptr inbounds %struct.t4vf_port_stats, ptr %stats, i32 0, i32 2
  %8 = ptrtoint ptr %tx_mcast_bytes to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %tx_mcast_bytes, align 8
  %add = add i64 %9, %7
  %tx_ucast_bytes = getelementptr inbounds %struct.t4vf_port_stats, ptr %stats, i32 0, i32 4
  %10 = ptrtoint ptr %tx_ucast_bytes to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %tx_ucast_bytes, align 8
  %add5 = add i64 %add, %11
  %tx_offload_bytes = getelementptr inbounds %struct.t4vf_port_stats, ptr %stats, i32 0, i32 7
  %12 = ptrtoint ptr %tx_offload_bytes to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %tx_offload_bytes, align 8
  %add6 = add i64 %add5, %13
  %conv7 = trunc i64 %add6 to i32
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 3
  %14 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv7, ptr %tx_bytes, align 4
  %tx_bcast_frames = getelementptr inbounds %struct.t4vf_port_stats, ptr %stats, i32 0, i32 1
  %15 = ptrtoint ptr %tx_bcast_frames to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %tx_bcast_frames, align 8
  %tx_mcast_frames = getelementptr inbounds %struct.t4vf_port_stats, ptr %stats, i32 0, i32 3
  %17 = ptrtoint ptr %tx_mcast_frames to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %tx_mcast_frames, align 8
  %add8 = add i64 %18, %16
  %tx_ucast_frames = getelementptr inbounds %struct.t4vf_port_stats, ptr %stats, i32 0, i32 5
  %19 = ptrtoint ptr %tx_ucast_frames to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %tx_ucast_frames, align 8
  %add9 = add i64 %add8, %20
  %tx_offload_frames = getelementptr inbounds %struct.t4vf_port_stats, ptr %stats, i32 0, i32 8
  %21 = ptrtoint ptr %tx_offload_frames to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %tx_offload_frames, align 8
  %add10 = add i64 %add9, %22
  %conv11 = trunc i64 %add10 to i32
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 1
  %23 = ptrtoint ptr %tx_packets to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv11, ptr %tx_packets, align 4
  %rx_bcast_bytes = getelementptr inbounds %struct.t4vf_port_stats, ptr %stats, i32 0, i32 9
  %24 = ptrtoint ptr %rx_bcast_bytes to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %rx_bcast_bytes, align 8
  %rx_mcast_bytes = getelementptr inbounds %struct.t4vf_port_stats, ptr %stats, i32 0, i32 11
  %26 = ptrtoint ptr %rx_mcast_bytes to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %rx_mcast_bytes, align 8
  %add12 = add i64 %27, %25
  %rx_ucast_bytes = getelementptr inbounds %struct.t4vf_port_stats, ptr %stats, i32 0, i32 13
  %28 = ptrtoint ptr %rx_ucast_bytes to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %rx_ucast_bytes, align 8
  %add13 = add i64 %add12, %29
  %conv14 = trunc i64 %add13 to i32
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 2
  %30 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv14, ptr %rx_bytes, align 4
  %rx_bcast_frames = getelementptr inbounds %struct.t4vf_port_stats, ptr %stats, i32 0, i32 10
  %31 = ptrtoint ptr %rx_bcast_frames to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %rx_bcast_frames, align 8
  %rx_mcast_frames = getelementptr inbounds %struct.t4vf_port_stats, ptr %stats, i32 0, i32 12
  %33 = ptrtoint ptr %rx_mcast_frames to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %rx_mcast_frames, align 8
  %add15 = add i64 %34, %32
  %rx_ucast_frames = getelementptr inbounds %struct.t4vf_port_stats, ptr %stats, i32 0, i32 14
  %35 = ptrtoint ptr %rx_ucast_frames to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %rx_ucast_frames, align 8
  %add16 = add i64 %add15, %36
  %conv17 = trunc i64 %add16 to i32
  %37 = ptrtoint ptr %stats2 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv17, ptr %stats2, align 4
  %conv19 = trunc i64 %34 to i32
  %multicast = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 8
  %38 = ptrtoint ptr %multicast to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv19, ptr %multicast, align 4
  %tx_drop_frames = getelementptr inbounds %struct.t4vf_port_stats, ptr %stats, i32 0, i32 6
  %39 = ptrtoint ptr %tx_drop_frames to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %tx_drop_frames, align 8
  %conv20 = trunc i64 %40 to i32
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %41 = ptrtoint ptr %tx_errors to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %conv20, ptr %tx_errors, align 4
  %rx_err_frames = getelementptr inbounds %struct.t4vf_port_stats, ptr %stats, i32 0, i32 15
  %42 = ptrtoint ptr %rx_err_frames to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %rx_err_frames, align 8
  %conv21 = trunc i64 %43 to i32
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 4
  %44 = ptrtoint ptr %rx_errors to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %conv21, ptr %rx_errors, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %stats) #18
  ret ptr %stats2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cxgb4vf_poll_controller(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %flags = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %nqsets2 = getelementptr i8, ptr %dev, i32 2327
  %4 = ptrtoint ptr %nqsets2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nqsets2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not14 = icmp eq i8 %5, 0
  br i1 %tobool3.not14, label %if.then.if.end_crit_edge, label %for.body.preheader

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

for.body.preheader:                               ; preds = %if.then
  %conv = zext i8 %5 to i32
  %first_qset = getelementptr i8, ptr %dev, i32 2328
  %6 = ptrtoint ptr %first_qset to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %first_qset, align 4
  %idxprom = zext i8 %7 to i32
  %arrayidx = getelementptr %struct.adapter, ptr %1, i32 0, i32 10, i32 1, i32 %idxprom
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %nqsets.016 = phi i32 [ %dec, %for.body.for.body_crit_edge ], [ %conv, %for.body.preheader ]
  %rxq.015 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %arrayidx, %for.body.preheader ]
  %call4 = tail call i32 @t4vf_sge_intr_msix(i32 noundef 0, ptr noundef %rxq.015) #18
  %incdec.ptr = getelementptr %struct.sge_eth_rxq, ptr %rxq.015, i32 1
  %dec = add nsw i32 %nqsets.016, -1
  %tobool3.not = icmp eq i32 %dec, 0
  br i1 %tobool3.not, label %for.body.if.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call5 = tail call ptr @t4vf_intr_handler(ptr noundef %1) #18
  %call6 = tail call i32 %call5(i32 noundef 0, ptr noundef %1) #18
  br label %if.end

if.end:                                           ; preds = %if.else, %for.body.if.end_crit_edge, %if.then.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @cxgb4vf_fix_features(ptr nocapture noundef readnone %dev, i64 noundef %features) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %and1 = and i64 %features, -129
  %and = lshr i64 %features, 1
  %0 = and i64 %and, 128
  %features.addr.0 = or i64 %0, %and1
  ret i64 %features.addr.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxgb4vf_set_features(ptr nocapture noundef readonly %dev, i64 noundef %features) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %features1 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %0 = ptrtoint ptr %features1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %features1, align 16
  %xor = xor i64 %1, %features
  %and = and i64 %xor, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  %viid = getelementptr i8, ptr %dev, i32 2312
  %4 = ptrtoint ptr %viid to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %viid, align 4
  %conv = zext i16 %5 to i32
  %6 = trunc i64 %features to i32
  %conv3 = and i32 %6, 128
  %call4 = tail call i32 @t4vf_set_rxmode(ptr noundef %3, i32 noundef %conv, i32 noundef -1, i32 noundef -1, i32 noundef -1, i32 noundef -1, i32 noundef %conv3, i1 noundef zeroext false) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4vf_update_port_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4vf_get_vf_vlan_acl(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @adapter_down(ptr noundef %adapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 6
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %msix_info.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 8
  %2 = ptrtoint ptr %msix_info.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %msix_info.i, align 4
  %conv.i = zext i16 %3 to i32
  %fw_evtq.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 3
  %call.i = tail call ptr @free_irq(i32 noundef %conv.i, ptr noundef %fw_evtq.i) #18
  %ethqsets.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 11
  %4 = ptrtoint ptr %ethqsets.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ethqsets.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp17.not.i = icmp eq i16 %5, 0
  br i1 %cmp17.not.i, label %if.then.if.end_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %msi.019.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 1, %if.then.for.body.i_crit_edge ]
  %rxq.018.i = phi i32 [ %inc9.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %inc.i = add nuw nsw i32 %msi.019.i, 1
  %arrayidx4.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 8, i32 %msi.019.i
  %6 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx4.i, align 4
  %conv6.i = zext i16 %7 to i32
  %arrayidx7.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 1, i32 %rxq.018.i
  %call8.i = tail call ptr @free_irq(i32 noundef %conv6.i, ptr noundef %arrayidx7.i) #18
  %inc9.i = add nuw nsw i32 %rxq.018.i, 1
  %8 = ptrtoint ptr %ethqsets.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %ethqsets.i, align 2
  %conv1.i = zext i16 %9 to i32
  %cmp.i = icmp ult i32 %inc9.i, %conv1.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end_crit_edge

for.body.i.if.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %pdev = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 2
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 8
  %irq = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 46
  %12 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq, align 4
  %call = tail call ptr @free_irq(i32 noundef %13, ptr noundef %adapter) #18
  br label %if.end

if.end:                                           ; preds = %if.else, %for.body.i.if.end_crit_edge, %if.then.if.end_crit_edge
  %ethqsets.i5 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 11
  %14 = ptrtoint ptr %ethqsets.i5 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %ethqsets.i5, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp8.not.i = icmp eq i16 %15, 0
  br i1 %cmp8.not.i, label %if.end.quiesce_rx.exit_crit_edge, label %if.end.for.body.i9_crit_edge

if.end.for.body.i9_crit_edge:                     ; preds = %if.end
  br label %for.body.i9

if.end.quiesce_rx.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %quiesce_rx.exit

for.body.i9:                                      ; preds = %for.body.i9.for.body.i9_crit_edge, %if.end.for.body.i9_crit_edge
  %rxq.09.i = phi i32 [ %inc.i6, %for.body.i9.for.body.i9_crit_edge ], [ 0, %if.end.for.body.i9_crit_edge ]
  %arrayidx.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 1, i32 %rxq.09.i
  tail call void @napi_disable(ptr noundef %arrayidx.i) #18
  %inc.i6 = add nuw nsw i32 %rxq.09.i, 1
  %16 = ptrtoint ptr %ethqsets.i5 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %ethqsets.i5, align 2
  %conv.i7 = zext i16 %17 to i32
  %cmp.i8 = icmp ult i32 %inc.i6, %conv.i7
  br i1 %cmp.i8, label %for.body.i9.for.body.i9_crit_edge, label %for.body.i9.quiesce_rx.exit_crit_edge

for.body.i9.quiesce_rx.exit_crit_edge:            ; preds = %for.body.i9
  call void @__sanitizer_cov_trace_pc() #20
  br label %quiesce_rx.exit

for.body.i9.for.body.i9_crit_edge:                ; preds = %for.body.i9
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i9

quiesce_rx.exit:                                  ; preds = %for.body.i9.quiesce_rx.exit_crit_edge, %if.end.quiesce_rx.exit_crit_edge
  %fw_evtq.i10 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 3
  tail call void @napi_disable(ptr noundef %fw_evtq.i10) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @t4vf_free_sge_resources(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @t4vf_intr_handler(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @t4vf_sge_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4vf_sge_alloc_rxq(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fwevtq_handler(ptr nocapture noundef readonly %rspq, ptr noundef %rsp, ptr nocapture noundef readnone %gl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.sge_rspq, ptr %rspq, i32 0, i32 18
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 4
  %2 = ptrtoint ptr %rsp to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rsp, align 4
  %add.ptr = getelementptr i64, ptr %rsp, i32 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.238)
  switch i8 %3, label %do.end67 [
    i8 -32, label %sw.bb
    i8 -64, label %sw.bb5
    i8 -91, label %entry.sw.bb14_crit_edge
  ]

entry.sw.bb14_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb14

sw.bb:                                            ; preds = %entry
  %type = getelementptr inbounds %struct.cpl_fw6_msg, ptr %add.ptr, i32 0, i32 1
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp = icmp eq i8 %6, 0
  br i1 %cmp, label %if.then, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #20
  %data = getelementptr i64, ptr %rsp, i32 2
  %call = tail call i32 @t4vf_handle_fw_rpl(ptr noundef %1, ptr noundef %data) #18
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %add.ptr6 = getelementptr i64, ptr %rsp, i32 3
  %7 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr6, align 4
  %shr = lshr i32 %8, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 165, i32 %shr)
  %cmp9.not = icmp eq i32 %shr, 165
  br i1 %cmp9.not, label %sw.bb5.sw.bb14_crit_edge, label %cleanup

sw.bb5.sw.bb14_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb14

cleanup:                                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #20
  %pdev_dev = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.127, i32 noundef %shr) #21
  br label %sw.epilog

sw.bb14:                                          ; preds = %sw.bb5.sw.bb14_crit_edge, %entry.sw.bb14_crit_edge
  %cpl.1 = phi ptr [ %add.ptr, %entry.sw.bb14_crit_edge ], [ %add.ptr6, %sw.bb5.sw.bb14_crit_edge ]
  %11 = ptrtoint ptr %cpl.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpl.1, align 4
  %and18 = and i32 %12, 131071
  %egr_base = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 20
  %13 = ptrtoint ptr %egr_base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %egr_base, align 4
  %sub = sub i32 %and18, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %sub)
  %cmp19 = icmp ugt i32 %sub, 15
  br i1 %cmp19, label %do.end25, label %if.end27, !prof !458

do.end25:                                         ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #20
  %pdev_dev26 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %pdev_dev26 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev_dev26, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.130, i32 noundef %and18) #21
  br label %sw.epilog

if.end27:                                         ; preds = %sw.bb14
  %arrayidx = getelementptr %struct.adapter, ptr %1, i32 0, i32 10, i32 22, i32 %sub
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  %cmp28 = icmp eq ptr %18, null
  br i1 %cmp28, label %do.end39, label %if.end41, !prof !458

do.end39:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #20
  %pdev_dev40 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %pdev_dev40 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev_dev40, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.133, i32 noundef %and18) #21
  br label %sw.epilog

if.end41:                                         ; preds = %if.end27
  %abs_id = getelementptr inbounds %struct.sge_txq, ptr %18, i32 0, i32 7
  %21 = ptrtoint ptr %abs_id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %abs_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %and18)
  %cmp43.not = icmp eq i32 %22, %and18
  br i1 %cmp43.not, label %if.end57, label %do.end54, !prof !456

do.end54:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #20
  %pdev_dev55 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 3
  %23 = ptrtoint ptr %pdev_dev55 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev_dev55, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.136, i32 noundef %and18, i32 noundef %22) #21
  br label %sw.epilog

if.end57:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #20
  %restarts = getelementptr inbounds %struct.sge_txq, ptr %18, i32 0, i32 5
  %25 = ptrtoint ptr %restarts to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %restarts, align 4
  %inc = add i32 %26, 1
  store i32 %inc, ptr %restarts, align 4
  %txq58 = getelementptr inbounds %struct.sge_eth_txq, ptr %18, i32 0, i32 1
  %27 = ptrtoint ptr %txq58 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %txq58, align 4
  tail call void @netif_tx_wake_queue(ptr noundef %28) #18
  br label %sw.epilog

do.end67:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %conv = zext i8 %3 to i32
  %pdev_dev68 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 3
  %29 = ptrtoint ptr %pdev_dev68 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdev_dev68, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.139, i32 noundef %conv) #21
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end67, %if.end57, %do.end54, %do.end39, %do.end25, %cleanup, %if.then, %sw.bb.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4vf_ethrx_handler(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4vf_sge_alloc_eth_txq(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4vf_handle_fw_rpl(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4vf_config_rss_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4vf_read_rss_vi_config(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4vf_write_rss_vi_config(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4vf_sge_intr_msix(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4vf_set_rxmode(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cxgb4vf_change_mac(ptr nocapture noundef readonly %pi, i32 noundef %viid, ptr nocapture noundef %tcam_idx, ptr noundef %addr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pi, align 4
  %2 = ptrtoint ptr %tcam_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tcam_idx, align 4
  %call = tail call i32 @t4vf_change_mac(ptr noundef %1, i32 noundef %viid, i32 noundef %3, ptr noundef %addr, i1 noundef zeroext true) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %call)
  %cmp = icmp eq i32 %call, -12
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %mac_hlist = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 19
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.then
  %entry1.0.in = phi ptr [ %mac_hlist, %if.then ], [ %entry1.0, %for.body.for.cond_crit_edge ]
  %4 = ptrtoint ptr %entry1.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %entry1.0 = load ptr, ptr %entry1.0.in, align 4
  %cmp4.not = icmp eq ptr %entry1.0, %mac_hlist
  br i1 %cmp4.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %iface_mac = getelementptr inbounds %struct.hash_mac_addr, ptr %entry1.0, i32 0, i32 2
  %5 = ptrtoint ptr %iface_mac to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iface_mac, align 4
  %tobool5.not = icmp eq i32 %6, 0
  br i1 %tobool5.not, label %for.body.for.cond_crit_edge, label %if.then6

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond

if.then6:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  %addr7 = getelementptr inbounds %struct.hash_mac_addr, ptr %entry1.0, i32 0, i32 1
  %7 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr, align 4
  %9 = ptrtoint ptr %addr7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %addr7, align 4
  %add.ptr.i = getelementptr i8, ptr %addr, i32 4
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.hash_mac_addr, ptr %entry1.0, i32 0, i32 1, i32 4
  %12 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %add.ptr1.i, align 2
  br label %set_hash

for.end:                                          ; preds = %for.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 20) #22
  %tobool14.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool14.not, label %for.end.cleanup_crit_edge, label %if.end16

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end16:                                         ; preds = %for.end
  %addr17 = getelementptr inbounds %struct.hash_mac_addr, ptr %call7.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr, align 4
  %16 = ptrtoint ptr %addr17 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %addr17, align 8
  %add.ptr.i1 = getelementptr i8, ptr %addr, i32 4
  %17 = ptrtoint ptr %add.ptr.i1 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %add.ptr.i1, align 2
  %add.ptr1.i2 = getelementptr %struct.hash_mac_addr, ptr %call7.i.i, i32 0, i32 1, i32 4
  %19 = ptrtoint ptr %add.ptr1.i2 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %add.ptr1.i2, align 4
  %iface_mac19 = getelementptr inbounds %struct.hash_mac_addr, ptr %call7.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %iface_mac19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %iface_mac19, align 8
  %prev.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 19, i32 1
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %22, ptr noundef %mac_hlist) #18
  br i1 %call.i.i, label %if.end.i.i, label %if.end16.set_hash_crit_edge

if.end16.set_hash_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #20
  br label %set_hash

if.end.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #20
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %24 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %mac_hlist, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev3.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %call7.i.i, ptr %22, align 4
  br label %set_hash

set_hash:                                         ; preds = %if.end.i.i, %if.end16.set_hash_crit_edge, %if.then6
  %27 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pi, align 4
  %mac_hlist.i = getelementptr inbounds %struct.adapter, ptr %28, i32 0, i32 19
  %29 = ptrtoint ptr %mac_hlist.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %entry2.027.i = load ptr, ptr %mac_hlist.i, align 4
  %cmp.not28.i = icmp eq ptr %entry2.027.i, %mac_hlist.i
  br i1 %cmp.not28.i, label %set_hash.cxgb4vf_set_addr_hash.exit_crit_edge, label %set_hash.for.body.i_crit_edge

set_hash.for.body.i_crit_edge:                    ; preds = %set_hash
  br label %for.body.i

set_hash.cxgb4vf_set_addr_hash.exit_crit_edge:    ; preds = %set_hash
  call void @__sanitizer_cov_trace_pc() #20
  br label %cxgb4vf_set_addr_hash.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %set_hash.for.body.i_crit_edge
  %entry2.031.i = phi ptr [ %entry2.0.i, %for.body.i.for.body.i_crit_edge ], [ %entry2.027.i, %set_hash.for.body.i_crit_edge ]
  %vec.030.i = phi i64 [ %or9.i, %for.body.i.for.body.i_crit_edge ], [ 0, %set_hash.for.body.i_crit_edge ]
  %ucast.0.off029.i = phi i1 [ %or26.i, %for.body.i.for.body.i_crit_edge ], [ false, %set_hash.for.body.i_crit_edge ]
  %addr.i = getelementptr inbounds %struct.hash_mac_addr, ptr %entry2.031.i, i32 0, i32 1
  %30 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %addr.i, align 4
  %32 = and i32 %31, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i.not.i.i = icmp eq i32 %32, 0
  %or26.i = or i1 %ucast.0.off029.i, %tobool.i.not.i.i
  %33 = lshr i32 %31, 8
  %conv8.i.i = shl i32 %31, 16
  %shl9.i.i = and i32 %conv8.i.i, 16711680
  %arrayidx10.i.i = getelementptr %struct.hash_mac_addr, ptr %entry2.031.i, i32 0, i32 1, i32 4
  %34 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx10.i.i, align 1
  %conv11.i.i = zext i8 %35 to i32
  %shl12.i.i = shl nuw nsw i32 %conv11.i.i, 8
  %or13.i.i = or i32 %shl12.i.i, %shl9.i.i
  %arrayidx14.i.i = getelementptr %struct.hash_mac_addr, ptr %entry2.031.i, i32 0, i32 1, i32 5
  %36 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx14.i.i, align 1
  %conv15.i.i = zext i8 %37 to i32
  %or16.i.i = or i32 %or13.i.i, %conv15.i.i
  %xor.i.i = xor i32 %or16.i.i, %33
  %shr.i.i = lshr i32 %xor.i.i, 12
  %xor17.i.i = xor i32 %shr.i.i, %xor.i.i
  %shr18.i.i = lshr i32 %xor17.i.i, 6
  %xor19.i.i = xor i32 %shr18.i.i, %xor17.i.i
  %and.i.i = and i32 %xor19.i.i, 63
  %sh_prom.i = zext i32 %and.i.i to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  %or9.i = or i64 %shl.i, %vec.030.i
  %38 = ptrtoint ptr %entry2.031.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %entry2.0.i = load ptr, ptr %entry2.031.i, align 4
  %cmp.not.i = icmp eq ptr %entry2.0.i, %mac_hlist.i
  br i1 %cmp.not.i, label %for.body.i.cxgb4vf_set_addr_hash.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

for.body.i.cxgb4vf_set_addr_hash.exit_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cxgb4vf_set_addr_hash.exit

cxgb4vf_set_addr_hash.exit:                       ; preds = %for.body.i.cxgb4vf_set_addr_hash.exit_crit_edge, %set_hash.cxgb4vf_set_addr_hash.exit_crit_edge
  %ucast.0.off0.lcssa.i = phi i1 [ false, %set_hash.cxgb4vf_set_addr_hash.exit_crit_edge ], [ %or26.i, %for.body.i.cxgb4vf_set_addr_hash.exit_crit_edge ]
  %vec.0.lcssa.i = phi i64 [ 0, %set_hash.cxgb4vf_set_addr_hash.exit_crit_edge ], [ %or9.i, %for.body.i.cxgb4vf_set_addr_hash.exit_crit_edge ]
  %viid.i = getelementptr inbounds %struct.port_info, ptr %pi, i32 0, i32 2
  %39 = ptrtoint ptr %viid.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %viid.i, align 4
  %conv15.i = zext i16 %40 to i32
  %call17.i = tail call i32 @t4vf_set_addr_hash(ptr noundef %28, i32 noundef %conv15.i, i1 noundef zeroext %ucast.0.off0.lcssa.i, i64 noundef %vec.0.lcssa.i, i1 noundef zeroext false) #18
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp23 = icmp sgt i32 %call, -1
  br i1 %cmp23, label %if.then24, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then24:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  %41 = ptrtoint ptr %tcam_idx to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %call, ptr %tcam_idx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %if.else.cleanup_crit_edge, %cxgb4vf_set_addr_hash.exit, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %for.end.cleanup_crit_edge ], [ %call17.i, %cxgb4vf_set_addr_hash.exit ], [ 0, %if.then24 ], [ %call, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4vf_enable_pi(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4vf_change_mac(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4vf_set_addr_hash(ptr noundef, i32 noundef, i1 noundef zeroext, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_stop_all_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxgb4vf_mac_sync(ptr nocapture noundef readonly %netdev, ptr noundef %mac_addr) #0 align 64 {
entry:
  %mhash = alloca i64, align 8
  %uhash = alloca i64, align 8
  %maclist = alloca [1 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mhash) #18
  %2 = ptrtoint ptr %mhash to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %mhash, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %uhash) #18
  %3 = ptrtoint ptr %uhash to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %uhash, align 8
  %4 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mac_addr, align 4
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not.i = icmp eq i32 %6, 0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %maclist) #18
  %7 = ptrtoint ptr %maclist to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %mac_addr, ptr %maclist, align 4
  %viid = getelementptr i8, ptr %netdev, i32 2312
  %8 = ptrtoint ptr %viid to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %viid, align 4
  %conv = zext i16 %9 to i32
  %uhash.mhash = select i1 %tobool.i.not.i, ptr %uhash, ptr %mhash
  %call5 = call i32 @t4vf_alloc_mac_filt(ptr noundef %1, i32 noundef %conv, i1 noundef zeroext false, i32 noundef 1, ptr noundef nonnull %maclist, ptr noundef null, ptr noundef nonnull %uhash.mhash, i1 noundef zeroext false) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %uhash to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %uhash, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %tobool7.not = icmp eq i64 %11, 0
  br i1 %tobool7.not, label %lor.lhs.false, label %if.end.if.then9_crit_edge

if.end.if.then9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then9

lor.lhs.false:                                    ; preds = %if.end
  %12 = ptrtoint ptr %mhash to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %mhash, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %13)
  %tobool8.not = icmp eq i64 %13, 0
  br i1 %tobool8.not, label %lor.lhs.false.out_crit_edge, label %lor.lhs.false.if.then9_crit_edge

lor.lhs.false.if.then9_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then9

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.then9:                                         ; preds = %lor.lhs.false.if.then9_crit_edge, %if.end.if.then9_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 2848, i32 noundef 20) #22
  %tobool11.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool11.not, label %if.then9.cleanup_crit_edge, label %if.end13

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end13:                                         ; preds = %if.then9
  %addr = getelementptr inbounds %struct.hash_mac_addr, ptr %call7.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mac_addr, align 4
  %17 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %addr, align 8
  %add.ptr.i40 = getelementptr i8, ptr %mac_addr, i32 4
  %18 = ptrtoint ptr %add.ptr.i40 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %add.ptr.i40, align 2
  %add.ptr1.i = getelementptr %struct.hash_mac_addr, ptr %call7.i.i, i32 0, i32 1, i32 4
  %20 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %add.ptr1.i, align 4
  %mac_hlist = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 19
  %prev.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 19, i32 1
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %22, ptr noundef %mac_hlist) #18
  br i1 %call.i.i, label %if.end.i.i, label %if.end13.list_add_tail.exit_crit_edge

if.end13.list_add_tail.exit_crit_edge:            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #20
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %24 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %mac_hlist, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev3.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %call7.i.i, ptr %22, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end13.list_add_tail.exit_crit_edge
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr.i, align 4
  %mac_hlist.i = getelementptr inbounds %struct.adapter, ptr %28, i32 0, i32 19
  %29 = ptrtoint ptr %mac_hlist.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %entry2.027.i = load ptr, ptr %mac_hlist.i, align 4
  %cmp.not28.i = icmp eq ptr %entry2.027.i, %mac_hlist.i
  br i1 %cmp.not28.i, label %list_add_tail.exit.cxgb4vf_set_addr_hash.exit_crit_edge, label %list_add_tail.exit.for.body.i_crit_edge

list_add_tail.exit.for.body.i_crit_edge:          ; preds = %list_add_tail.exit
  br label %for.body.i

list_add_tail.exit.cxgb4vf_set_addr_hash.exit_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cxgb4vf_set_addr_hash.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %list_add_tail.exit.for.body.i_crit_edge
  %entry2.031.i = phi ptr [ %entry2.0.i, %for.body.i.for.body.i_crit_edge ], [ %entry2.027.i, %list_add_tail.exit.for.body.i_crit_edge ]
  %vec.030.i = phi i64 [ %or9.i, %for.body.i.for.body.i_crit_edge ], [ 0, %list_add_tail.exit.for.body.i_crit_edge ]
  %ucast.0.off029.i = phi i1 [ %or26.i, %for.body.i.for.body.i_crit_edge ], [ false, %list_add_tail.exit.for.body.i_crit_edge ]
  %addr.i = getelementptr inbounds %struct.hash_mac_addr, ptr %entry2.031.i, i32 0, i32 1
  %30 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %addr.i, align 4
  %32 = and i32 %31, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i.not.i.i = icmp eq i32 %32, 0
  %or26.i = or i1 %ucast.0.off029.i, %tobool.i.not.i.i
  %33 = lshr i32 %31, 8
  %conv8.i.i = shl i32 %31, 16
  %shl9.i.i = and i32 %conv8.i.i, 16711680
  %arrayidx10.i.i = getelementptr %struct.hash_mac_addr, ptr %entry2.031.i, i32 0, i32 1, i32 4
  %34 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx10.i.i, align 1
  %conv11.i.i = zext i8 %35 to i32
  %shl12.i.i = shl nuw nsw i32 %conv11.i.i, 8
  %or13.i.i = or i32 %shl12.i.i, %shl9.i.i
  %arrayidx14.i.i = getelementptr %struct.hash_mac_addr, ptr %entry2.031.i, i32 0, i32 1, i32 5
  %36 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx14.i.i, align 1
  %conv15.i.i = zext i8 %37 to i32
  %or16.i.i = or i32 %or13.i.i, %conv15.i.i
  %xor.i.i = xor i32 %or16.i.i, %33
  %shr.i.i = lshr i32 %xor.i.i, 12
  %xor17.i.i = xor i32 %shr.i.i, %xor.i.i
  %shr18.i.i = lshr i32 %xor17.i.i, 6
  %xor19.i.i = xor i32 %shr18.i.i, %xor17.i.i
  %and.i.i = and i32 %xor19.i.i, 63
  %sh_prom.i = zext i32 %and.i.i to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  %or9.i = or i64 %shl.i, %vec.030.i
  %38 = ptrtoint ptr %entry2.031.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %entry2.0.i = load ptr, ptr %entry2.031.i, align 4
  %cmp.not.i = icmp eq ptr %entry2.0.i, %mac_hlist.i
  br i1 %cmp.not.i, label %for.body.i.cxgb4vf_set_addr_hash.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

for.body.i.cxgb4vf_set_addr_hash.exit_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cxgb4vf_set_addr_hash.exit

cxgb4vf_set_addr_hash.exit:                       ; preds = %for.body.i.cxgb4vf_set_addr_hash.exit_crit_edge, %list_add_tail.exit.cxgb4vf_set_addr_hash.exit_crit_edge
  %ucast.0.off0.lcssa.i = phi i1 [ false, %list_add_tail.exit.cxgb4vf_set_addr_hash.exit_crit_edge ], [ %or26.i, %for.body.i.cxgb4vf_set_addr_hash.exit_crit_edge ]
  %vec.0.lcssa.i = phi i64 [ 0, %list_add_tail.exit.cxgb4vf_set_addr_hash.exit_crit_edge ], [ %or9.i, %for.body.i.cxgb4vf_set_addr_hash.exit_crit_edge ]
  %39 = ptrtoint ptr %viid to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %viid, align 4
  %conv15.i = zext i16 %40 to i32
  %call17.i = call i32 @t4vf_set_addr_hash(ptr noundef %28, i32 noundef %conv15.i, i1 noundef zeroext %ucast.0.off0.lcssa.i, i64 noundef %vec.0.lcssa.i, i1 noundef zeroext false) #18
  br label %out

out:                                              ; preds = %cxgb4vf_set_addr_hash.exit, %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call5, %entry.out_crit_edge ], [ %call17.i, %cxgb4vf_set_addr_hash.exit ], [ %call5, %lor.lhs.false.out_crit_edge ]
  %41 = call i32 @llvm.smin.i32(i32 %ret.0, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then9.cleanup_crit_edge
  %retval.0 = phi i32 [ %41, %out ], [ -12, %if.then9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %maclist) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %uhash) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mhash) #18
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxgb4vf_mac_unsync(ptr nocapture noundef readonly %netdev, ptr noundef %mac_addr) #0 align 64 {
entry:
  %maclist = alloca [1 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %maclist) #18
  %2 = ptrtoint ptr %maclist to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %mac_addr, ptr %maclist, align 4
  %mac_hlist = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 19
  %add.ptr1.i = getelementptr i8, ptr %mac_addr, i32 4
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %entry2.0.in = phi ptr [ %mac_hlist, %entry ], [ %entry2.0, %for.body.for.cond_crit_edge ]
  %3 = ptrtoint ptr %entry2.0.in to i32
  call void @__asan_load4_noabort(i32 %3)
  %entry2.0 = load ptr, ptr %entry2.0.in, align 4
  %cmp.not = icmp eq ptr %entry2.0, %mac_hlist
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %addr = getelementptr inbounds %struct.hash_mac_addr, ptr %entry2.0, i32 0, i32 1
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr, align 4
  %6 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mac_addr, align 4
  %xor.i = xor i32 %7, %5
  %add.ptr.i37 = getelementptr %struct.hash_mac_addr, ptr %entry2.0, i32 0, i32 1, i32 4
  %8 = ptrtoint ptr %add.ptr.i37 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr.i37, align 2
  %10 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %11, %9
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond

if.then:                                          ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %entry2.0) #18
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %entry2.0, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %entry2.0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %entry2.0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %18 = ptrtoint ptr %entry2.0 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %entry2.0, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %entry2.0, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %entry2.0) #18
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i, align 4
  %mac_hlist.i = getelementptr inbounds %struct.adapter, ptr %21, i32 0, i32 19
  %22 = ptrtoint ptr %mac_hlist.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %entry2.027.i = load ptr, ptr %mac_hlist.i, align 4
  %cmp.not28.i = icmp eq ptr %entry2.027.i, %mac_hlist.i
  br i1 %cmp.not28.i, label %list_del.exit.cxgb4vf_set_addr_hash.exit_crit_edge, label %list_del.exit.for.body.i_crit_edge

list_del.exit.for.body.i_crit_edge:               ; preds = %list_del.exit
  br label %for.body.i

list_del.exit.cxgb4vf_set_addr_hash.exit_crit_edge: ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cxgb4vf_set_addr_hash.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %list_del.exit.for.body.i_crit_edge
  %entry2.031.i = phi ptr [ %entry2.0.i, %for.body.i.for.body.i_crit_edge ], [ %entry2.027.i, %list_del.exit.for.body.i_crit_edge ]
  %vec.030.i = phi i64 [ %or9.i, %for.body.i.for.body.i_crit_edge ], [ 0, %list_del.exit.for.body.i_crit_edge ]
  %ucast.0.off029.i = phi i1 [ %or26.i, %for.body.i.for.body.i_crit_edge ], [ false, %list_del.exit.for.body.i_crit_edge ]
  %addr.i = getelementptr inbounds %struct.hash_mac_addr, ptr %entry2.031.i, i32 0, i32 1
  %23 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %addr.i, align 4
  %25 = and i32 %24, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i.not.i.i = icmp eq i32 %25, 0
  %or26.i = or i1 %ucast.0.off029.i, %tobool.i.not.i.i
  %26 = lshr i32 %24, 8
  %conv8.i.i = shl i32 %24, 16
  %shl9.i.i = and i32 %conv8.i.i, 16711680
  %arrayidx10.i.i = getelementptr %struct.hash_mac_addr, ptr %entry2.031.i, i32 0, i32 1, i32 4
  %27 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx10.i.i, align 1
  %conv11.i.i = zext i8 %28 to i32
  %shl12.i.i = shl nuw nsw i32 %conv11.i.i, 8
  %or13.i.i = or i32 %shl12.i.i, %shl9.i.i
  %arrayidx14.i.i = getelementptr %struct.hash_mac_addr, ptr %entry2.031.i, i32 0, i32 1, i32 5
  %29 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx14.i.i, align 1
  %conv15.i.i = zext i8 %30 to i32
  %or16.i.i = or i32 %or13.i.i, %conv15.i.i
  %xor.i.i = xor i32 %or16.i.i, %26
  %shr.i.i = lshr i32 %xor.i.i, 12
  %xor17.i.i = xor i32 %shr.i.i, %xor.i.i
  %shr18.i.i = lshr i32 %xor17.i.i, 6
  %xor19.i.i = xor i32 %shr18.i.i, %xor17.i.i
  %and.i.i = and i32 %xor19.i.i, 63
  %sh_prom.i = zext i32 %and.i.i to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  %or9.i = or i64 %shl.i, %vec.030.i
  %31 = ptrtoint ptr %entry2.031.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %entry2.0.i = load ptr, ptr %entry2.031.i, align 4
  %cmp.not.i = icmp eq ptr %entry2.0.i, %mac_hlist.i
  br i1 %cmp.not.i, label %for.body.i.cxgb4vf_set_addr_hash.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

for.body.i.cxgb4vf_set_addr_hash.exit_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cxgb4vf_set_addr_hash.exit

cxgb4vf_set_addr_hash.exit:                       ; preds = %for.body.i.cxgb4vf_set_addr_hash.exit_crit_edge, %list_del.exit.cxgb4vf_set_addr_hash.exit_crit_edge
  %ucast.0.off0.lcssa.i = phi i1 [ false, %list_del.exit.cxgb4vf_set_addr_hash.exit_crit_edge ], [ %or26.i, %for.body.i.cxgb4vf_set_addr_hash.exit_crit_edge ]
  %vec.0.lcssa.i = phi i64 [ 0, %list_del.exit.cxgb4vf_set_addr_hash.exit_crit_edge ], [ %or9.i, %for.body.i.cxgb4vf_set_addr_hash.exit_crit_edge ]
  %viid.i = getelementptr i8, ptr %netdev, i32 2312
  %32 = ptrtoint ptr %viid.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %viid.i, align 4
  %conv15.i = zext i16 %33 to i32
  %call17.i = tail call i32 @t4vf_set_addr_hash(ptr noundef %21, i32 noundef %conv15.i, i1 noundef zeroext %ucast.0.off0.lcssa.i, i64 noundef %vec.0.lcssa.i, i1 noundef zeroext false) #18
  br label %cleanup

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #20
  %viid = getelementptr i8, ptr %netdev, i32 2312
  %34 = ptrtoint ptr %viid to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %viid, align 4
  %conv = zext i16 %35 to i32
  %call19 = call i32 @t4vf_free_mac_filt(ptr noundef %1, i32 noundef %conv, i32 noundef 1, ptr noundef nonnull %maclist, i1 noundef zeroext false) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  %cond = select i1 %cmp20, i32 -22, i32 0
  br label %cleanup

cleanup:                                          ; preds = %for.end, %cxgb4vf_set_addr_hash.exit
  %retval.0 = phi i32 [ %call17.i, %cxgb4vf_set_addr_hash.exit ], [ %cond, %for.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %maclist) #18
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hw_addr_sync_dev(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4vf_alloc_mac_filt(ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4vf_free_mac_filt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4vf_get_port_stats(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cxgb4vf_get_drvinfo(ptr nocapture noundef readonly %dev, ptr noundef %drvinfo) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i.i, align 4
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 1
  %call1 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str.39, i32 noundef 32) #18
  %parent = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %init_name.i.i = getelementptr i8, ptr %3, i32 144
  %4 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.pci_name.exit_crit_edge

entry.pci_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %7, %if.end.i.i ], [ %5, %entry.pci_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 4
  %call5 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i.i, i32 noundef 32) #18
  %fw_version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 3
  %params = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %params, align 4
  %shr = lshr i32 %9, 24
  %shr11 = lshr i32 %9, 16
  %and12 = and i32 %shr11, 255
  %shr16 = lshr i32 %9, 8
  %and17 = and i32 %shr16, 255
  %and22 = and i32 %9, 255
  %tprev = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 7, i32 0, i32 1
  %10 = ptrtoint ptr %tprev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tprev, align 4
  %shr25 = lshr i32 %11, 24
  %shr30 = lshr i32 %11, 16
  %and31 = and i32 %shr30, 255
  %shr35 = lshr i32 %11, 8
  %and36 = and i32 %shr35, 255
  %and41 = and i32 %11, 255
  %call42 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fw_version, i32 noundef 32, ptr noundef nonnull @.str.143, i32 noundef %shr, i32 noundef %and12, i32 noundef %and17, i32 noundef %and22, i32 noundef %shr25, i32 noundef %and31, i32 noundef %and36, i32 noundef %and41)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cxgb4vf_get_regs_len(ptr nocapture noundef readnone %dev) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1024
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cxgb4vf_get_regs(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %regs, ptr nocapture noundef writeonly %regbuf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i.i, align 4
  %chip.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 7, i32 6
  %2 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chip.i, align 4
  %shr.i = lshr i32 %3, 4
  %and.i = and i32 %shr.i, 15
  %or.i = or i32 %and.i, 64512
  %version = getelementptr inbounds %struct.ethtool_regs, ptr %regs, i32 0, i32 1
  %4 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or.i, ptr %version, align 4
  %5 = call ptr @memset(ptr %regbuf, i32 0, i32 1024)
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 128
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #18, !srcloc !465
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !466
  %bp.1.i = getelementptr i32, ptr %regbuf, i32 1
  %10 = ptrtoint ptr %regbuf to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %regbuf, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 128
  %add.ptr.i.i.1 = getelementptr i8, ptr %12, i32 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.1) #18, !srcloc !465
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !466
  %15 = ptrtoint ptr %bp.1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %bp.1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %regbuf, i32 256
  br label %for.inc.i24

for.inc.i24:                                      ; preds = %for.inc.i24.for.inc.i24_crit_edge, %entry
  %bp.012.i14 = phi ptr [ %bp.1.i21, %for.inc.i24.for.inc.i24_crit_edge ], [ %add.ptr.i, %entry ]
  %start.addr.010.i15 = phi i32 [ %add.i22, %for.inc.i24.for.inc.i24_crit_edge ], [ 256, %entry ]
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 128
  %add.ptr.i.i18 = getelementptr i8, ptr %17, i32 %start.addr.010.i15
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i18) #18, !srcloc !465
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !466
  %bp.1.i21 = getelementptr i32, ptr %bp.012.i14, i32 1
  %20 = ptrtoint ptr %bp.012.i14 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %bp.012.i14, align 4
  %add.i22 = add nuw nsw i32 %start.addr.010.i15, 4
  %cmp.not.i23 = icmp ugt i32 %start.addr.010.i15, 504
  br i1 %cmp.not.i23, label %reg_block_dump.exit25, label %for.inc.i24.for.inc.i24_crit_edge

for.inc.i24.for.inc.i24_crit_edge:                ; preds = %for.inc.i24
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i24

reg_block_dump.exit25:                            ; preds = %for.inc.i24
  %21 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %chip.i, align 4
  %23 = and i32 %22, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %23)
  %cmp.i.not = icmp eq i32 %23, 64
  %add.ptr.i26 = getelementptr i8, ptr %regbuf, i32 512
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 128
  %add.ptr.i.i31 = getelementptr i8, ptr %25, i32 512
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i31) #18, !srcloc !465
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !466
  %28 = ptrtoint ptr %add.ptr.i26 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %add.ptr.i26, align 4
  br i1 %cmp.i.not, label %reg_block_dump.exit25.for.inc.i50.1_crit_edge, label %for.inc.i37.1

reg_block_dump.exit25.for.inc.i50.1_crit_edge:    ; preds = %reg_block_dump.exit25
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i50.1

for.inc.i37.1:                                    ; preds = %reg_block_dump.exit25
  call void @__sanitizer_cov_trace_pc() #20
  %bp.1.i34 = getelementptr i8, ptr %regbuf, i32 516
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 128
  %add.ptr.i.i31.1 = getelementptr i8, ptr %30, i32 516
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i31.1) #18, !srcloc !465
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !466
  %33 = ptrtoint ptr %bp.1.i34 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %bp.1.i34, align 4
  %bp.1.i34.1 = getelementptr i8, ptr %regbuf, i32 520
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 128
  %add.ptr.i.i31.2 = getelementptr i8, ptr %35, i32 520
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i31.2) #18, !srcloc !465
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !466
  %38 = ptrtoint ptr %bp.1.i34.1 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %bp.1.i34.1, align 4
  br label %for.inc.i50.1

for.inc.i50.1:                                    ; preds = %for.inc.i37.1, %reg_block_dump.exit25.for.inc.i50.1_crit_edge
  %add.ptr.i39 = getelementptr i8, ptr %regbuf, i32 768
  %39 = ptrtoint ptr %add.ptr.i39 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 65535, ptr %add.ptr.i39, align 4
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 128
  %add.ptr.i.i44.1 = getelementptr i8, ptr %41, i32 772
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i44.1) #18, !srcloc !465
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !466
  %bp.1.i47 = getelementptr i8, ptr %regbuf, i32 772
  %44 = ptrtoint ptr %bp.1.i47 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %bp.1.i47, align 4
  %add.ptr.i52 = getelementptr i8, ptr %regbuf, i32 576
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 128
  %add.ptr.i.i57 = getelementptr i8, ptr %46, i32 576
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i57) #18, !srcloc !465
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !466
  %bp.1.i60 = getelementptr i8, ptr %regbuf, i32 580
  %49 = ptrtoint ptr %add.ptr.i52 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %add.ptr.i52, align 4
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 128
  %add.ptr.i.i57.1 = getelementptr i8, ptr %51, i32 580
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i57.1) #18, !srcloc !465
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !466
  %bp.1.i60.1 = getelementptr i8, ptr %regbuf, i32 584
  %54 = ptrtoint ptr %bp.1.i60 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %bp.1.i60, align 4
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %1, align 128
  %add.ptr.i.i57.2 = getelementptr i8, ptr %56, i32 584
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i57.2) #18, !srcloc !465
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !466
  %bp.1.i60.2 = getelementptr i8, ptr %regbuf, i32 588
  %59 = ptrtoint ptr %bp.1.i60.1 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %bp.1.i60.1, align 4
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %1, align 128
  %add.ptr.i.i57.3 = getelementptr i8, ptr %61, i32 588
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i57.3) #18, !srcloc !465
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !466
  %bp.1.i60.3 = getelementptr i8, ptr %regbuf, i32 592
  %64 = ptrtoint ptr %bp.1.i60.2 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %bp.1.i60.2, align 4
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %1, align 128
  %add.ptr.i.i57.4 = getelementptr i8, ptr %66, i32 592
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i57.4) #18, !srcloc !465
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !466
  %bp.1.i60.4 = getelementptr i8, ptr %regbuf, i32 596
  %69 = ptrtoint ptr %bp.1.i60.3 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %bp.1.i60.3, align 4
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %1, align 128
  %add.ptr.i.i57.5 = getelementptr i8, ptr %71, i32 596
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i57.5) #18, !srcloc !465
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !466
  %bp.1.i60.5 = getelementptr i8, ptr %regbuf, i32 600
  %74 = ptrtoint ptr %bp.1.i60.4 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %bp.1.i60.4, align 4
  %75 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %1, align 128
  %add.ptr.i.i57.6 = getelementptr i8, ptr %76, i32 600
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i57.6) #18, !srcloc !465
  %78 = tail call i32 @llvm.bswap.i32(i32 %77) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !466
  %bp.1.i60.6 = getelementptr i8, ptr %regbuf, i32 604
  %79 = ptrtoint ptr %bp.1.i60.5 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %bp.1.i60.5, align 4
  %80 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %1, align 128
  %add.ptr.i.i57.7 = getelementptr i8, ptr %81, i32 604
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i57.7) #18, !srcloc !465
  %83 = tail call i32 @llvm.bswap.i32(i32 %82) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !466
  %bp.1.i60.7 = getelementptr i8, ptr %regbuf, i32 608
  %84 = ptrtoint ptr %bp.1.i60.6 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %bp.1.i60.6, align 4
  %85 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %1, align 128
  %add.ptr.i.i57.8 = getelementptr i8, ptr %86, i32 608
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i57.8) #18, !srcloc !465
  %88 = tail call i32 @llvm.bswap.i32(i32 %87) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !466
  %bp.1.i60.8 = getelementptr i8, ptr %regbuf, i32 612
  %89 = ptrtoint ptr %bp.1.i60.7 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %bp.1.i60.7, align 4
  %90 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %1, align 128
  %add.ptr.i.i57.9 = getelementptr i8, ptr %91, i32 612
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i57.9) #18, !srcloc !465
  %93 = tail call i32 @llvm.bswap.i32(i32 %92) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !466
  %bp.1.i60.9 = getelementptr i8, ptr %regbuf, i32 616
  %94 = ptrtoint ptr %bp.1.i60.8 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %bp.1.i60.8, align 4
  %95 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %1, align 128
  %add.ptr.i.i57.10 = getelementptr i8, ptr %96, i32 616
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i57.10) #18, !srcloc !465
  %98 = tail call i32 @llvm.bswap.i32(i32 %97) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !466
  %bp.1.i60.10 = getelementptr i8, ptr %regbuf, i32 620
  %99 = ptrtoint ptr %bp.1.i60.9 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %bp.1.i60.9, align 4
  %100 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %1, align 128
  %add.ptr.i.i57.11 = getelementptr i8, ptr %101, i32 620
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i57.11) #18, !srcloc !465
  %103 = tail call i32 @llvm.bswap.i32(i32 %102) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !466
  %bp.1.i60.11 = getelementptr i8, ptr %regbuf, i32 624
  %104 = ptrtoint ptr %bp.1.i60.10 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %bp.1.i60.10, align 4
  %105 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %1, align 128
  %add.ptr.i.i57.12 = getelementptr i8, ptr %106, i32 624
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i57.12) #18, !srcloc !465
  %108 = tail call i32 @llvm.bswap.i32(i32 %107) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !466
  %bp.1.i60.12 = getelementptr i8, ptr %regbuf, i32 628
  %109 = ptrtoint ptr %bp.1.i60.11 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %bp.1.i60.11, align 4
  %110 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %1, align 128
  %add.ptr.i.i57.13 = getelementptr i8, ptr %111, i32 628
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i57.13) #18, !srcloc !465
  %113 = tail call i32 @llvm.bswap.i32(i32 %112) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !466
  %bp.1.i60.13 = getelementptr i8, ptr %regbuf, i32 632
  %114 = ptrtoint ptr %bp.1.i60.12 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %bp.1.i60.12, align 4
  %115 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %1, align 128
  %add.ptr.i.i57.14 = getelementptr i8, ptr %116, i32 632
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i57.14) #18, !srcloc !465
  %118 = tail call i32 @llvm.bswap.i32(i32 %117) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !466
  %bp.1.i60.14 = getelementptr i8, ptr %regbuf, i32 636
  %119 = ptrtoint ptr %bp.1.i60.13 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %bp.1.i60.13, align 4
  %120 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %1, align 128
  %add.ptr.i.i57.15 = getelementptr i8, ptr %121, i32 636
  %122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i57.15) #18, !srcloc !465
  %123 = tail call i32 @llvm.bswap.i32(i32 %122) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !466
  %124 = ptrtoint ptr %bp.1.i60.14 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %bp.1.i60.14, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @cxgb4vf_get_wol(ptr nocapture noundef readnone %dev, ptr nocapture noundef writeonly %wol) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %supported = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 1
  %0 = call ptr @memset(ptr %supported, i32 0, i32 14)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cxgb4vf_get_msglevel(ptr nocapture noundef readonly %dev) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i.i, align 4
  %msg_enable = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 8
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @cxgb4vf_set_msglevel(ptr nocapture noundef readonly %dev, i32 noundef %msglevel) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i.i, align 4
  %msg_enable = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %msglevel, ptr %msg_enable, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cxgb4vf_get_coalesce(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %coalesce, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %first_qset = getelementptr i8, ptr %dev, i32 2328
  %2 = ptrtoint ptr %first_qset to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %first_qset, align 4
  %idxprom = zext i8 %3 to i32
  %arrayidx = getelementptr %struct.adapter, ptr %1, i32 0, i32 10, i32 1, i32 %idxprom
  %intr_params.i = getelementptr inbounds %struct.sge_rspq, ptr %arrayidx, i32 0, i32 7
  %4 = ptrtoint ptr %intr_params.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %intr_params.i, align 4
  %6 = lshr i8 %5, 1
  %7 = and i8 %6, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %7)
  %cmp.i = icmp ult i8 %7, 6
  br i1 %cmp.i, label %cond.true.i, label %entry.qtimer_val.exit_crit_edge

entry.qtimer_val.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %qtimer_val.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %and.i = zext i8 %7 to i32
  %arrayidx.i = getelementptr %struct.adapter, ptr %1, i32 0, i32 10, i32 13, i32 %and.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx.i, align 2
  %conv2.i = zext i16 %9 to i32
  br label %qtimer_val.exit

qtimer_val.exit:                                  ; preds = %cond.true.i, %entry.qtimer_val.exit_crit_edge
  %cond.i = phi i32 [ %conv2.i, %cond.true.i ], [ 0, %entry.qtimer_val.exit_crit_edge ]
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %coalesce, i32 0, i32 1
  %10 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %cond.i, ptr %rx_coalesce_usecs, align 4
  %11 = ptrtoint ptr %intr_params.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %intr_params.i, align 4
  %13 = and i8 %12, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %qtimer_val.exit.cond.end_crit_edge, label %cond.true

qtimer_val.exit.cond.end_crit_edge:               ; preds = %qtimer_val.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end

cond.true:                                        ; preds = %qtimer_val.exit
  call void @__sanitizer_cov_trace_pc() #20
  %pktcnt_idx = getelementptr inbounds %struct.sge_rspq, ptr %arrayidx, i32 0, i32 8
  %14 = ptrtoint ptr %pktcnt_idx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %pktcnt_idx, align 1
  %idxprom5 = zext i8 %15 to i32
  %arrayidx6 = getelementptr %struct.adapter, ptr %1, i32 0, i32 10, i32 14, i32 %idxprom5
  %16 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %17 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %qtimer_val.exit.cond.end_crit_edge
  %cond = phi i32 [ %conv7, %cond.true ], [ 0, %qtimer_val.exit.cond.end_crit_edge ]
  %rx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %coalesce, i32 0, i32 2
  %18 = ptrtoint ptr %rx_max_coalesced_frames to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %cond, ptr %rx_max_coalesced_frames, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxgb4vf_set_coalesce(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %coalesce, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  %v.i = alloca i32, align 4
  %pktcnt_idx.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %first_qset = getelementptr i8, ptr %dev, i32 2328
  %2 = ptrtoint ptr %first_qset to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %first_qset, align 4
  %idxprom = zext i8 %3 to i32
  %arrayidx = getelementptr %struct.adapter, ptr %1, i32 0, i32 10, i32 1, i32 %idxprom
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %coalesce, i32 0, i32 1
  %4 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_coalesce_usecs, align 4
  %rx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %coalesce, i32 0, i32 2
  %6 = ptrtoint ptr %rx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_max_coalesced_frames, align 4
  %or.i = or i32 %7, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  %spec.store.select.i = select i1 %cmp.i, i32 1, i32 %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select.i)
  %tobool.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %tobool.not.i, label %entry.if.end18.i_crit_edge, label %if.then1.i

entry.if.end18.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end18.i

if.then1.i:                                       ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.i) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pktcnt_idx.i) #18
  %arrayidx.i.i = getelementptr %struct.adapter, ptr %1, i32 0, i32 10, i32 14
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %9 to i32
  %sub.i.i = sub i32 %spec.store.select.i, %conv.i.i
  %10 = tail call i32 @llvm.abs.i32(i32 %sub.i.i, i1 false) #18
  %arrayidx.1.i.i = getelementptr %struct.adapter, ptr %1, i32 0, i32 10, i32 14, i32 1
  %11 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.1.i.i, align 1
  %conv.1.i.i = zext i8 %12 to i32
  %sub.1.i.i = sub i32 %spec.store.select.i, %conv.1.i.i
  %13 = tail call i32 @llvm.abs.i32(i32 %sub.1.i.i, i1 false) #18
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %10)
  %cmp4.1.i.i = icmp slt i32 %13, %10
  %pktcnt_idx.1.1.i.i = zext i1 %cmp4.1.i.i to i32
  %14 = tail call i32 @llvm.smin.i32(i32 %13, i32 %10) #18
  %arrayidx.2.i.i = getelementptr %struct.adapter, ptr %1, i32 0, i32 10, i32 14, i32 2
  %15 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.2.i.i, align 1
  %conv.2.i.i = zext i8 %16 to i32
  %sub.2.i.i = sub i32 %spec.store.select.i, %conv.2.i.i
  %17 = tail call i32 @llvm.abs.i32(i32 %sub.2.i.i, i1 false) #18
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %14)
  %cmp4.2.i.i = icmp slt i32 %17, %14
  %pktcnt_idx.1.2.i.i = select i1 %cmp4.2.i.i, i32 2, i32 %pktcnt_idx.1.1.i.i
  %18 = tail call i32 @llvm.smin.i32(i32 %17, i32 %14) #18
  %arrayidx.3.i.i = getelementptr %struct.adapter, ptr %1, i32 0, i32 10, i32 14, i32 3
  %19 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.3.i.i, align 1
  %conv.3.i.i = zext i8 %20 to i32
  %sub.3.i.i = sub i32 %spec.store.select.i, %conv.3.i.i
  %21 = tail call i32 @llvm.abs.i32(i32 %sub.3.i.i, i1 false) #18
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %18)
  %cmp4.3.i.i = icmp slt i32 %21, %18
  %pktcnt_idx.1.3.i.i = select i1 %cmp4.3.i.i, i32 3, i32 %pktcnt_idx.1.2.i.i
  %22 = ptrtoint ptr %pktcnt_idx.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %pktcnt_idx.1.3.i.i, ptr %pktcnt_idx.i, align 4
  %desc.i = getelementptr inbounds %struct.sge_rspq, ptr %arrayidx, i32 0, i32 12
  %23 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %desc.i, align 4
  %tobool2.not.i = icmp eq ptr %24, null
  br i1 %tobool2.not.i, label %if.then1.i.cleanup.thread.i_crit_edge, label %land.lhs.true.i

if.then1.i.cleanup.thread.i_crit_edge:            ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.thread.i

land.lhs.true.i:                                  ; preds = %if.then1.i
  %pktcnt_idx3.i = getelementptr inbounds %struct.sge_rspq, ptr %arrayidx, i32 0, i32 8
  %25 = ptrtoint ptr %pktcnt_idx3.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %pktcnt_idx3.i, align 1
  %conv.i = zext i8 %26 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %pktcnt_idx.1.3.i.i, i32 %conv.i)
  %cmp4.not.i = icmp eq i32 %pktcnt_idx.1.3.i.i, %conv.i
  br i1 %cmp4.not.i, label %land.lhs.true.i.cleanup.thread.i_crit_edge, label %if.then6.i

land.lhs.true.i.cleanup.thread.i_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.thread.i

if.then6.i:                                       ; preds = %land.lhs.true.i
  %cntxt_id.i = getelementptr inbounds %struct.sge_rspq, ptr %arrayidx, i32 0, i32 10
  %27 = ptrtoint ptr %cntxt_id.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %cntxt_id.i, align 8
  %conv7.i = zext i16 %28 to i32
  %or8.i = or i32 %conv7.i, 67174400
  %29 = ptrtoint ptr %v.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or8.i, ptr %v.i, align 4
  %call9.i = call i32 @t4vf_set_params(ptr noundef %1, i32 noundef 1, ptr noundef nonnull %v.i, ptr noundef nonnull %pktcnt_idx.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.then6.i.cleanup.thread.i_crit_edge, label %cleanup.i

if.then6.i.cleanup.thread.i_crit_edge:            ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.then6.i.cleanup.thread.i_crit_edge, %land.lhs.true.i.cleanup.thread.i_crit_edge, %if.then1.i.cleanup.thread.i_crit_edge
  %30 = ptrtoint ptr %pktcnt_idx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pktcnt_idx.i, align 4
  %conv14.i = trunc i32 %31 to i8
  %pktcnt_idx15.i = getelementptr inbounds %struct.sge_rspq, ptr %arrayidx, i32 0, i32 8
  %32 = ptrtoint ptr %pktcnt_idx15.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv14.i, ptr %pktcnt_idx15.i, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pktcnt_idx.i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i) #18
  br label %if.end18.i

cleanup.i:                                        ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pktcnt_idx.i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i) #18
  br label %set_rxq_intr_params.exit

if.end18.i:                                       ; preds = %cleanup.thread.i, %entry.if.end18.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp19.i = icmp eq i32 %5, 0
  br i1 %cmp19.i, label %if.end18.i.cond.end.i_crit_edge, label %cond.false.i

if.end18.i.cond.end.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx.i43.i = getelementptr %struct.adapter, ptr %1, i32 0, i32 10, i32 13
  %33 = ptrtoint ptr %arrayidx.i43.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx.i43.i, align 2
  %conv.i44.i = zext i16 %34 to i32
  %sub.i45.i = sub i32 %5, %conv.i44.i
  %35 = call i32 @llvm.abs.i32(i32 %sub.i45.i, i1 false) #18
  %arrayidx.1.i46.i = getelementptr %struct.adapter, ptr %1, i32 0, i32 10, i32 13, i32 1
  %36 = ptrtoint ptr %arrayidx.1.i46.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx.1.i46.i, align 2
  %conv.1.i47.i = zext i16 %37 to i32
  %sub.1.i48.i = sub i32 %5, %conv.1.i47.i
  %38 = call i32 @llvm.abs.i32(i32 %sub.1.i48.i, i1 false) #18
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %35)
  %cmp4.1.i49.i = icmp slt i32 %38, %35
  %39 = call i32 @llvm.smin.i32(i32 %38, i32 %35) #18
  %arrayidx.2.i50.i = getelementptr %struct.adapter, ptr %1, i32 0, i32 10, i32 13, i32 2
  %40 = ptrtoint ptr %arrayidx.2.i50.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %arrayidx.2.i50.i, align 2
  %conv.2.i51.i = zext i16 %41 to i32
  %sub.2.i52.i = sub i32 %5, %conv.2.i51.i
  %42 = call i32 @llvm.abs.i32(i32 %sub.2.i52.i, i1 false) #18
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %39)
  %cmp4.2.i53.i = icmp slt i32 %42, %39
  %43 = call i32 @llvm.smin.i32(i32 %42, i32 %39) #18
  %arrayidx.3.i54.i = getelementptr %struct.adapter, ptr %1, i32 0, i32 10, i32 13, i32 3
  %44 = ptrtoint ptr %arrayidx.3.i54.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %arrayidx.3.i54.i, align 2
  %conv.3.i55.i = zext i16 %45 to i32
  %sub.3.i56.i = sub i32 %5, %conv.3.i55.i
  %46 = call i32 @llvm.abs.i32(i32 %sub.3.i56.i, i1 false) #18
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %43)
  %cmp4.3.i57.i = icmp slt i32 %46, %43
  %47 = call i32 @llvm.smin.i32(i32 %46, i32 %43) #18
  %arrayidx.4.i.i = getelementptr %struct.adapter, ptr %1, i32 0, i32 10, i32 13, i32 4
  %48 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %arrayidx.4.i.i, align 2
  %conv.4.i.i = zext i16 %49 to i32
  %sub.4.i.i = sub i32 %5, %conv.4.i.i
  %50 = call i32 @llvm.abs.i32(i32 %sub.4.i.i, i1 false) #18
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %47)
  %cmp4.4.i.i = icmp slt i32 %50, %47
  %51 = call i32 @llvm.smin.i32(i32 %50, i32 %47) #18
  %arrayidx.5.i.i = getelementptr %struct.adapter, ptr %1, i32 0, i32 10, i32 13, i32 5
  %52 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %arrayidx.5.i.i, align 2
  %conv.5.i.i = zext i16 %53 to i32
  %sub.5.i.i = sub i32 %5, %conv.5.i.i
  %54 = call i32 @llvm.abs.i32(i32 %sub.5.i.i, i1 false) #18
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %51)
  %cmp4.5.i.i = icmp slt i32 %54, %51
  %timer_idx.1.1.i.op.i = select i1 %cmp4.1.i49.i, i8 2, i8 0
  %timer_idx.1.2.i.op.i = select i1 %cmp4.2.i53.i, i8 4, i8 %timer_idx.1.1.i.op.i
  %timer_idx.1.3.i.op.i = select i1 %cmp4.3.i57.i, i8 6, i8 %timer_idx.1.2.i.op.i
  %timer_idx.1.4.i.op.i = select i1 %cmp4.4.i.i, i8 8, i8 %timer_idx.1.3.i.op.i
  %phi.bo.i = select i1 %cmp4.5.i.i, i8 10, i8 %timer_idx.1.4.i.op.i
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.end18.i.cond.end.i_crit_edge
  %cond.i = phi i8 [ %phi.bo.i, %cond.false.i ], [ 12, %if.end18.i.cond.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select.i)
  %cmp24.i = icmp ne i32 %spec.store.select.i, 0
  %conv25.i = zext i1 %cmp24.i to i8
  %or27.i = or i8 %cond.i, %conv25.i
  %intr_params.i = getelementptr inbounds %struct.sge_rspq, ptr %arrayidx, i32 0, i32 7
  %55 = ptrtoint ptr %intr_params.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %or27.i, ptr %intr_params.i, align 4
  br label %set_rxq_intr_params.exit

set_rxq_intr_params.exit:                         ; preds = %cond.end.i, %cleanup.i
  %retval.1.i = phi i32 [ 0, %cond.end.i ], [ %call9.i, %cleanup.i ]
  ret i32 %retval.1.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @cxgb4vf_get_ringparam(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %rp, ptr nocapture noundef readnone %kernel_rp, ptr nocapture noundef readnone %extack) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %sge = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10
  %rx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %rp, i32 0, i32 1
  %2 = ptrtoint ptr %rx_max_pending to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 16384, ptr %rx_max_pending, align 4
  %rx_mini_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %rp, i32 0, i32 2
  %3 = ptrtoint ptr %rx_mini_max_pending to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 16384, ptr %rx_mini_max_pending, align 4
  %rx_jumbo_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %rp, i32 0, i32 3
  %4 = ptrtoint ptr %rx_jumbo_max_pending to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %rx_jumbo_max_pending, align 4
  %tx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %rp, i32 0, i32 4
  %5 = ptrtoint ptr %tx_max_pending to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 16384, ptr %tx_max_pending, align 4
  %first_qset = getelementptr i8, ptr %dev, i32 2328
  %6 = ptrtoint ptr %first_qset to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %first_qset, align 4
  %idxprom = zext i8 %7 to i32
  %size = getelementptr %struct.adapter, ptr %1, i32 0, i32 10, i32 1, i32 %idxprom, i32 1, i32 9
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size, align 4
  %sub = add i32 %9, -8
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %rp, i32 0, i32 5
  %10 = ptrtoint ptr %rx_pending to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %sub, ptr %rx_pending, align 4
  %11 = load i8, ptr %first_qset, align 4
  %idxprom3 = zext i8 %11 to i32
  %size5 = getelementptr %struct.adapter, ptr %1, i32 0, i32 10, i32 1, i32 %idxprom3, i32 0, i32 17
  %12 = ptrtoint ptr %size5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size5, align 8
  %rx_mini_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %rp, i32 0, i32 6
  %14 = ptrtoint ptr %rx_mini_pending to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %rx_mini_pending, align 4
  %rx_jumbo_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %rp, i32 0, i32 7
  %15 = ptrtoint ptr %rx_jumbo_pending to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %rx_jumbo_pending, align 4
  %16 = load i8, ptr %first_qset, align 4
  %idxprom7 = zext i8 %16 to i32
  %size9 = getelementptr [8 x %struct.sge_eth_txq], ptr %sge, i32 0, i32 %idxprom7, i32 0, i32 1
  %17 = ptrtoint ptr %size9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %size9, align 4
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %rp, i32 0, i32 8
  %19 = ptrtoint ptr %tx_pending to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %tx_pending, align 4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxgb4vf_set_ringparam(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %rp, ptr nocapture noundef readnone %kernel_rp, ptr nocapture noundef readnone %extack) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %sge = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %rp, i32 0, i32 5
  %2 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %3)
  %cmp = icmp ugt i32 %3, 16384
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %rx_jumbo_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %rp, i32 0, i32 7
  %4 = ptrtoint ptr %rx_jumbo_pending to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_jumbo_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %lor.lhs.false2, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %rp, i32 0, i32 8
  %6 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %7)
  %cmp3 = icmp ugt i32 %7, 16384
  br i1 %cmp3, label %lor.lhs.false2.cleanup_crit_edge, label %lor.lhs.false4

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %rx_mini_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %rp, i32 0, i32 6
  %8 = ptrtoint ptr %rx_mini_pending to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_mini_pending, align 4
  %10 = add i32 %9, -16385
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16257, i32 %10)
  %11 = icmp ult i32 %10, -16257
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp11 = icmp ult i32 %3, 16
  %or.cond56 = select i1 %11, i1 true, i1 %cmp11
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %7)
  %cmp14 = icmp ult i32 %7, 32
  %or.cond57 = select i1 %or.cond56, i1 true, i1 %cmp14
  br i1 %or.cond57, label %lor.lhs.false4.cleanup_crit_edge, label %if.end

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false4
  %flags = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 8
  %and = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %if.end17, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %first_qset = getelementptr i8, ptr %dev, i32 2328
  %nqsets = getelementptr i8, ptr %dev, i32 2327
  %14 = ptrtoint ptr %nqsets to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %nqsets, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp2161.not = icmp eq i8 %15, 0
  br i1 %cmp2161.not, label %if.end17.cleanup_crit_edge, label %for.body.preheader

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.body.preheader:                               ; preds = %if.end17
  %16 = ptrtoint ptr %first_qset to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %first_qset, align 4
  %conv = zext i8 %17 to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %qs.062 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ %conv, %for.body.preheader ]
  %18 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_pending, align 4
  %add24 = add i32 %19, 8
  %size = getelementptr %struct.adapter, ptr %1, i32 0, i32 10, i32 1, i32 %qs.062, i32 1, i32 9
  %20 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add24, ptr %size, align 4
  %21 = ptrtoint ptr %rx_mini_pending to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rx_mini_pending, align 4
  %size28 = getelementptr %struct.adapter, ptr %1, i32 0, i32 10, i32 1, i32 %qs.062, i32 0, i32 17
  %23 = ptrtoint ptr %size28 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %size28, align 8
  %24 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tx_pending, align 4
  %size31 = getelementptr [8 x %struct.sge_eth_txq], ptr %sge, i32 0, i32 %qs.062, i32 0, i32 1
  %26 = ptrtoint ptr %size31 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %size31, align 4
  %inc = add nuw nsw i32 %qs.062, 1
  %27 = ptrtoint ptr %first_qset to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %first_qset, align 4
  %conv19 = zext i8 %28 to i32
  %29 = ptrtoint ptr %nqsets to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %nqsets, align 1
  %conv20 = zext i8 %30 to i32
  %add = add nuw nsw i32 %conv20, %conv19
  %cmp21 = icmp ult i32 %inc, %add
  br i1 %cmp21, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false4.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false4.cleanup_crit_edge ], [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ], [ 0, %if.end17.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @cxgb4vf_get_pauseparam(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %pauseparam) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %requested_fc = getelementptr i8, ptr %dev, i32 2352
  %0 = ptrtoint ptr %requested_fc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %requested_fc, align 4
  %and = lshr i32 %1, 2
  %and.lobit = and i32 %and, 1
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pauseparam, i32 0, i32 1
  %2 = ptrtoint ptr %autoneg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and.lobit, ptr %autoneg, align 4
  %advertised_fc = getelementptr i8, ptr %dev, i32 2360
  %3 = ptrtoint ptr %advertised_fc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %advertised_fc, align 4
  %and2 = and i32 %4, 1
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pauseparam, i32 0, i32 2
  %5 = ptrtoint ptr %rx_pause to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and2, ptr %rx_pause, align 4
  %6 = load i32, ptr %advertised_fc, align 4
  %and7 = lshr i32 %6, 1
  %and7.lobit = and i32 %and7, 1
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pauseparam, i32 0, i32 3
  %7 = ptrtoint ptr %tx_pause to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and7.lobit, ptr %tx_pause, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @cxgb4vf_get_strings(ptr nocapture noundef readnone %dev, i32 noundef %sset, ptr nocapture noundef writeonly %data) #16 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %cond = icmp eq i32 %sset, 1
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %0 = call ptr @memcpy(ptr %data, ptr @stats_strings, i32 736)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxgb4vf_phys_id(ptr nocapture noundef readonly %dev, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.239)
  switch i32 %state, label %entry.cleanup_crit_edge [
    i32 1, label %entry.if.end4_crit_edge
    i32 0, label %if.then2
  ]

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %entry.if.end4_crit_edge
  %val.0 = phi i32 [ 0, %if.then2 ], [ 65535, %entry.if.end4_crit_edge ]
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr.i, align 4
  %viid = getelementptr i8, ptr %dev, i32 2312
  %3 = ptrtoint ptr %viid to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %viid, align 4
  %conv = zext i16 %4 to i32
  %call5 = tail call i32 @t4vf_identify_port(ptr noundef %2, i32 noundef %conv, i32 noundef %val.0) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cxgb4vf_get_ethtool_stats(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %stats, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %pidx = getelementptr i8, ptr %dev, i32 2322
  %2 = ptrtoint ptr %pidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pidx, align 2
  %conv = zext i8 %3 to i32
  %call2 = tail call i32 @t4vf_get_port_stats(ptr noundef %1, i32 noundef %conv, ptr noundef %data) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %4 = call ptr @memset(ptr %data, i32 0, i32 128)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %add.ptr = getelementptr i64, ptr %data, i32 16
  %first_qset.i = getelementptr i8, ptr %dev, i32 2328
  %5 = ptrtoint ptr %first_qset.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %first_qset.i, align 4
  %7 = call ptr @memset(ptr %add.ptr, i32 0, i32 56)
  %nqsets.i = getelementptr i8, ptr %dev, i32 2327
  %8 = ptrtoint ptr %nqsets.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %nqsets.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp48.not.i = icmp eq i8 %9, 0
  br i1 %cmp48.not.i, label %if.end.collect_sge_port_stats.exit_crit_edge, label %for.body.lr.ph.i

if.end.collect_sge_port_stats.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %collect_sge_port_stats.exit

for.body.lr.ph.i:                                 ; preds = %if.end
  %idxprom.i = zext i8 %6 to i32
  %arrayidx4.i = getelementptr %struct.adapter, ptr %1, i32 0, i32 10, i32 1, i32 %idxprom.i
  %sge.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10
  %arrayidx.i = getelementptr [8 x %struct.sge_eth_txq], ptr %sge.i, i32 0, i32 %idxprom.i
  %tx_csum.i = getelementptr i64, ptr %data, i32 17
  %rx_csum.i = getelementptr i64, ptr %data, i32 18
  %vlan_ex15.i = getelementptr i64, ptr %data, i32 19
  %vlan_ins18.i = getelementptr i64, ptr %data, i32 20
  %lro_pkts22.i = getelementptr i64, ptr %data, i32 21
  %lro_merged26.i = getelementptr i64, ptr %data, i32 22
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %qs.051.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %rxq.050.i = phi ptr [ %arrayidx4.i, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ]
  %txq.049.i = phi ptr [ %arrayidx.i, %for.body.lr.ph.i ], [ %incdec.ptr28.i, %for.body.i.for.body.i_crit_edge ]
  %tso.i = getelementptr inbounds %struct.sge_eth_txq, ptr %txq.049.i, i32 0, i32 2
  %10 = ptrtoint ptr %tso.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tso.i, align 4
  %conv6.i = zext i32 %11 to i64
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %add.ptr, align 8
  %add.i = add i64 %13, %conv6.i
  store i64 %add.i, ptr %add.ptr, align 8
  %tx_cso.i = getelementptr inbounds %struct.sge_eth_txq, ptr %txq.049.i, i32 0, i32 3
  %14 = ptrtoint ptr %tx_cso.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_cso.i, align 4
  %conv8.i = zext i32 %15 to i64
  %16 = ptrtoint ptr %tx_csum.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %tx_csum.i, align 8
  %add9.i = add i64 %17, %conv8.i
  store i64 %add9.i, ptr %tx_csum.i, align 8
  %rx_cso.i = getelementptr inbounds %struct.sge_eth_rxq, ptr %rxq.050.i, i32 0, i32 2, i32 3
  %18 = ptrtoint ptr %rx_cso.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_cso.i, align 4
  %conv11.i = zext i32 %19 to i64
  %20 = ptrtoint ptr %rx_csum.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %rx_csum.i, align 8
  %add12.i = add i64 %21, %conv11.i
  store i64 %add12.i, ptr %rx_csum.i, align 8
  %vlan_ex.i = getelementptr inbounds %struct.sge_eth_rxq, ptr %rxq.050.i, i32 0, i32 2, i32 4
  %22 = ptrtoint ptr %vlan_ex.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %vlan_ex.i, align 4
  %conv14.i = zext i32 %23 to i64
  %24 = ptrtoint ptr %vlan_ex15.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %vlan_ex15.i, align 8
  %add16.i = add i64 %25, %conv14.i
  store i64 %add16.i, ptr %vlan_ex15.i, align 8
  %vlan_ins.i = getelementptr inbounds %struct.sge_eth_txq, ptr %txq.049.i, i32 0, i32 4
  %26 = ptrtoint ptr %vlan_ins.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %vlan_ins.i, align 4
  %conv17.i = zext i32 %27 to i64
  %28 = ptrtoint ptr %vlan_ins18.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %vlan_ins18.i, align 8
  %add19.i = add i64 %29, %conv17.i
  store i64 %add19.i, ptr %vlan_ins18.i, align 8
  %lro_pkts.i = getelementptr inbounds %struct.sge_eth_rxq, ptr %rxq.050.i, i32 0, i32 2, i32 1
  %30 = ptrtoint ptr %lro_pkts.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %lro_pkts.i, align 4
  %conv21.i = zext i32 %31 to i64
  %32 = ptrtoint ptr %lro_pkts22.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %lro_pkts22.i, align 8
  %add23.i = add i64 %33, %conv21.i
  store i64 %add23.i, ptr %lro_pkts22.i, align 8
  %lro_merged.i = getelementptr inbounds %struct.sge_eth_rxq, ptr %rxq.050.i, i32 0, i32 2, i32 2
  %34 = ptrtoint ptr %lro_merged.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %lro_merged.i, align 4
  %conv25.i = zext i32 %35 to i64
  %36 = ptrtoint ptr %lro_merged26.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %lro_merged26.i, align 8
  %add27.i = add i64 %37, %conv25.i
  store i64 %add27.i, ptr %lro_merged26.i, align 8
  %inc.i = add nuw nsw i32 %qs.051.i, 1
  %incdec.ptr.i = getelementptr %struct.sge_eth_rxq, ptr %rxq.050.i, i32 1
  %incdec.ptr28.i = getelementptr %struct.sge_eth_txq, ptr %txq.049.i, i32 1
  %38 = ptrtoint ptr %nqsets.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %nqsets.i, align 1
  %conv.i = zext i8 %39 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.collect_sge_port_stats.exit_crit_edge

for.body.i.collect_sge_port_stats.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %collect_sge_port_stats.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

collect_sge_port_stats.exit:                      ; preds = %for.body.i.collect_sge_port_stats.exit_crit_edge, %if.end.collect_sge_port_stats.exit_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cxgb4vf_get_sset_count(ptr nocapture noundef readnone %dev, i32 noundef %sset) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %cond = icmp eq i32 %sset, 1
  %. = select i1 %cond, i32 23, i32 -95
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxgb4vf_get_link_ksettings(ptr noundef %dev, ptr noundef %link_ksettings) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %call3 = tail call i32 @t4vf_update_port_info(ptr noundef %add.ptr.i) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %link_modes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %link_ksettings, i32 0, i32 1
  %advertising = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %link_ksettings, i32 0, i32 1, i32 1
  %lp_advertising = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %link_ksettings, i32 0, i32 1, i32 2
  %port_type = getelementptr i8, ptr %dev, i32 2324
  %2 = call ptr @memset(ptr %link_modes, i32 0, i32 36)
  %3 = ptrtoint ptr %port_type to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %port_type, align 4
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.240)
  switch i8 %4, label %if.end48.i [
    i8 2, label %if.end.from_fw_port_mod_type.exit_crit_edge
    i8 3, label %if.end.from_fw_port_mod_type.exit_crit_edge103
    i8 4, label %if.end.from_fw_port_mod_type.exit_crit_edge104
    i8 0, label %if.end.if.then7.i_crit_edge
    i8 1, label %if.end.if.then7.i_crit_edge105
    i8 9, label %if.end.if.then24.i_crit_edge
    i8 12, label %if.end.if.then24.i_crit_edge106
    i8 13, label %if.end.if.then24.i_crit_edge107
    i8 14, label %if.end.if.then24.i_crit_edge108
    i8 17, label %if.end.if.then24.i_crit_edge109
    i8 18, label %if.end.if.then24.i_crit_edge110
    i8 19, label %if.end.if.then24.i_crit_edge111
    i8 20, label %if.end.if.then24.i_crit_edge112
    i8 16, label %if.end.if.then45.i_crit_edge
    i8 21, label %if.end.if.then45.i_crit_edge113
    i8 22, label %if.end.if.then45.i_crit_edge114
  ]

if.end.if.then45.i_crit_edge114:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then45.i

if.end.if.then45.i_crit_edge113:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then45.i

if.end.if.then45.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then45.i

if.end.if.then24.i_crit_edge112:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then24.i

if.end.if.then24.i_crit_edge111:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then24.i

if.end.if.then24.i_crit_edge110:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then24.i

if.end.if.then24.i_crit_edge109:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then24.i

if.end.if.then24.i_crit_edge108:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then24.i

if.end.if.then24.i_crit_edge107:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then24.i

if.end.if.then24.i_crit_edge106:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then24.i

if.end.if.then24.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then24.i

if.end.if.then7.i_crit_edge105:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then7.i

if.end.if.then7.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then7.i

if.end.from_fw_port_mod_type.exit_crit_edge104:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %from_fw_port_mod_type.exit

if.end.from_fw_port_mod_type.exit_crit_edge103:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %from_fw_port_mod_type.exit

if.end.from_fw_port_mod_type.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %from_fw_port_mod_type.exit

if.then7.i:                                       ; preds = %if.end.if.then7.i_crit_edge, %if.end.if.then7.i_crit_edge105
  br label %from_fw_port_mod_type.exit

if.then24.i:                                      ; preds = %if.end.if.then24.i_crit_edge, %if.end.if.then24.i_crit_edge106, %if.end.if.then24.i_crit_edge107, %if.end.if.then24.i_crit_edge108, %if.end.if.then24.i_crit_edge109, %if.end.if.then24.i_crit_edge110, %if.end.if.then24.i_crit_edge111, %if.end.if.then24.i_crit_edge112
  %mod_type = getelementptr i8, ptr %dev, i32 2325
  %6 = ptrtoint ptr %mod_type to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mod_type, align 1
  %switch.tableidx = add i8 %7, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %switch.tableidx)
  %8 = icmp ult i8 %switch.tableidx, 6
  br i1 %8, label %switch.lookup, label %if.then24.i.from_fw_port_mod_type.exit_crit_edge

if.then24.i.from_fw_port_mod_type.exit_crit_edge: ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %from_fw_port_mod_type.exit

if.then45.i:                                      ; preds = %if.end.if.then45.i_crit_edge, %if.end.if.then45.i_crit_edge113, %if.end.if.then45.i_crit_edge114
  br label %from_fw_port_mod_type.exit

if.end48.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %from_fw_port_mod_type.exit

switch.lookup:                                    ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #20
  %9 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [6 x i8], ptr @switch.table.cxgb4vf_get_link_ksettings, i32 0, i32 %9
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %10)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %from_fw_port_mod_type.exit

from_fw_port_mod_type.exit:                       ; preds = %switch.lookup, %if.end48.i, %if.then45.i, %if.then24.i.from_fw_port_mod_type.exit_crit_edge, %if.then7.i, %if.end.from_fw_port_mod_type.exit_crit_edge, %if.end.from_fw_port_mod_type.exit_crit_edge103, %if.end.from_fw_port_mod_type.exit_crit_edge104
  %retval.0.i = phi i8 [ 3, %if.then7.i ], [ -17, %if.then45.i ], [ -1, %if.end48.i ], [ 0, %if.end.from_fw_port_mod_type.exit_crit_edge ], [ 0, %if.end.from_fw_port_mod_type.exit_crit_edge103 ], [ 0, %if.end.from_fw_port_mod_type.exit_crit_edge104 ], [ %switch.load, %switch.lookup ], [ -1, %if.then24.i.from_fw_port_mod_type.exit_crit_edge ]
  %port = getelementptr inbounds %struct.ethtool_link_settings, ptr %link_ksettings, i32 0, i32 3
  %11 = ptrtoint ptr %port to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %retval.0.i, ptr %port, align 1
  %mdio_addr = getelementptr i8, ptr %dev, i32 2323
  %12 = ptrtoint ptr %mdio_addr to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %mdio_addr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %13)
  %cmp = icmp sgt i8 %13, -1
  %phy_address = getelementptr inbounds %struct.ethtool_link_settings, ptr %link_ksettings, i32 0, i32 4
  br i1 %cmp, label %if.then13, label %if.else

if.then13:                                        ; preds = %from_fw_port_mod_type.exit
  call void @__sanitizer_cov_trace_pc() #20
  %14 = ptrtoint ptr %phy_address to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %phy_address, align 2
  %15 = ptrtoint ptr %port_type to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %port_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %16)
  %cmp17 = icmp eq i8 %16, 2
  %conv19 = select i1 %cmp17, i8 1, i8 2
  br label %if.end22

if.else:                                          ; preds = %from_fw_port_mod_type.exit
  call void @__sanitizer_cov_trace_pc() #20
  %17 = ptrtoint ptr %phy_address to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -1, ptr %phy_address, align 2
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then13
  %.sink = phi i8 [ %conv19, %if.then13 ], [ 0, %if.else ]
  %18 = getelementptr inbounds %struct.ethtool_link_settings, ptr %link_ksettings, i32 0, i32 6
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %.sink, ptr %18, align 4
  %20 = ptrtoint ptr %port_type to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %port_type, align 4
  %conv24 = zext i8 %21 to i32
  %link_cfg = getelementptr i8, ptr %dev, i32 2332
  %22 = ptrtoint ptr %link_cfg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %link_cfg, align 4
  tail call fastcc void @fw_caps_to_lmm(i32 noundef %conv24, i32 noundef %23, ptr noundef %link_modes)
  %24 = ptrtoint ptr %port_type to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %port_type, align 4
  %conv29 = zext i8 %25 to i32
  %acaps = getelementptr i8, ptr %dev, i32 2336
  %26 = ptrtoint ptr %acaps to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %acaps, align 4
  tail call fastcc void @fw_caps_to_lmm(i32 noundef %conv29, i32 noundef %27, ptr noundef %advertising)
  %28 = ptrtoint ptr %port_type to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %port_type, align 4
  %conv35 = zext i8 %29 to i32
  %lpacaps = getelementptr i8, ptr %dev, i32 2340
  %30 = ptrtoint ptr %lpacaps to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %lpacaps, align 4
  tail call fastcc void @fw_caps_to_lmm(i32 noundef %conv35, i32 noundef %31, ptr noundef %lp_advertising)
  %32 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %state.i, align 4
  %34 = and i32 %33, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i = icmp eq i32 %34, 0
  br i1 %tobool.not.i, label %if.then41, label %if.end22.if.end47_crit_edge

if.end22.if.end47_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end47

if.then41:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #20
  %speed = getelementptr i8, ptr %dev, i32 2348
  %35 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %speed, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then41, %if.end22.if.end47_crit_edge
  %.sink102 = phi i32 [ %36, %if.then41 ], [ -1, %if.end22.if.end47_crit_edge ]
  %.sink101 = phi i8 [ 1, %if.then41 ], [ -1, %if.end22.if.end47_crit_edge ]
  %37 = getelementptr inbounds %struct.ethtool_link_settings, ptr %link_ksettings, i32 0, i32 1
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %.sink102, ptr %37, align 4
  %39 = getelementptr inbounds %struct.ethtool_link_settings, ptr %link_ksettings, i32 0, i32 2
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %.sink101, ptr %39, align 4
  %autoneg = getelementptr i8, ptr %dev, i32 2376
  %41 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %autoneg, align 4
  %autoneg49 = getelementptr inbounds %struct.ethtool_link_settings, ptr %link_ksettings, i32 0, i32 5
  %43 = ptrtoint ptr %autoneg49 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %autoneg49, align 1
  %44 = ptrtoint ptr %link_cfg to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %link_cfg, align 4
  %and = and i32 %45, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end47.if.end56_crit_edge, label %if.then52

if.end47.if.end56_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end56

if.then52:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #20
  %46 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %link_modes, align 4
  %or.i = or i32 %47, 64
  store i32 %or.i, ptr %link_modes, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then52, %if.end47.if.end56_crit_edge
  %48 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %autoneg, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool59.not = icmp eq i8 %49, 0
  br i1 %tobool59.not, label %if.end56.if.end64_crit_edge, label %if.then60

if.end56.if.end64_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end64

if.then60:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #20
  %50 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %advertising, align 4
  %or.i99 = or i32 %51, 64
  store i32 %or.i99, ptr %advertising, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then60, %if.end56.if.end64_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cxgb4vf_get_fecparam(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %fec) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %link_cfg = getelementptr i8, ptr %dev, i32 2332
  %0 = ptrtoint ptr %link_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %link_cfg, align 4
  %and.i = lshr i32 %1, 20
  %2 = and i32 %and.i, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool6.not.i = icmp eq i32 %2, 0
  %or = or i32 %2, 2
  %spec.select = select i1 %tobool6.not.i, i32 4, i32 %or
  %fec2 = getelementptr inbounds %struct.ethtool_fecparam, ptr %fec, i32 0, i32 2
  %3 = ptrtoint ptr %fec2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %spec.select, ptr %fec2, align 4
  %fec5 = getelementptr i8, ptr %dev, i32 2372
  %4 = ptrtoint ptr %fec5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fec5, align 4
  %and.i11 = shl i32 %5, 1
  %6 = and i32 %and.i11, 2
  %and1.i = shl i32 %5, 2
  %7 = and i32 %and1.i, 8
  %8 = or i32 %7, %6
  %9 = and i32 %and1.i, 16
  %10 = or i32 %8, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool11.not.i = icmp eq i32 %10, 0
  %spec.store.select.i12 = select i1 %tobool11.not.i, i32 4, i32 %10
  %active_fec = getelementptr inbounds %struct.ethtool_fecparam, ptr %fec, i32 0, i32 1
  %11 = ptrtoint ptr %active_fec to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %spec.store.select.i12, ptr %active_fec, align 4
  ret i32 0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4vf_identify_port(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @fw_caps_to_lmm(i32 noundef %port_type, i32 noundef %fw_caps, ptr noundef %link_mode_mask) unnamed_addr #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %port_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.241)
  switch i32 %port_type, label %entry.sw.epilog_crit_edge [
    i32 2, label %entry.sw.bb_crit_edge
    i32 3, label %entry.sw.bb_crit_edge412
    i32 4, label %entry.sw.bb_crit_edge413
    i32 5, label %entry.sw.bb13_crit_edge
    i32 7, label %entry.sw.bb13_crit_edge414
    i32 8, label %sw.bb26
    i32 10, label %sw.bb33
    i32 11, label %sw.bb52
    i32 0, label %entry.sw.bb77_crit_edge
    i32 1, label %entry.sw.bb77_crit_edge415
    i32 9, label %entry.sw.bb77_crit_edge416
    i32 12, label %entry.sw.bb77_crit_edge417
    i32 13, label %entry.sw.bb77_crit_edge418
    i32 15, label %entry.sw.bb90_crit_edge
    i32 14, label %entry.sw.bb90_crit_edge419
    i32 18, label %entry.sw.bb109_crit_edge
    i32 20, label %entry.sw.bb109_crit_edge420
    i32 21, label %sw.bb128
    i32 22, label %sw.bb147
    i32 19, label %sw.bb166
    i32 16, label %entry.sw.bb173_crit_edge
    i32 17, label %entry.sw.bb173_crit_edge421
  ]

entry.sw.bb173_crit_edge421:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb173

entry.sw.bb173_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb173

entry.sw.bb109_crit_edge420:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb109

entry.sw.bb109_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb109

entry.sw.bb90_crit_edge419:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb90

entry.sw.bb90_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb90

entry.sw.bb77_crit_edge418:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb77

entry.sw.bb77_crit_edge417:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb77

entry.sw.bb77_crit_edge416:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb77

entry.sw.bb77_crit_edge415:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb77

entry.sw.bb77_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb77

entry.sw.bb13_crit_edge414:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb13

entry.sw.bb13_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb13

entry.sw.bb_crit_edge413:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb

entry.sw.bb_crit_edge412:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge412, %entry.sw.bb_crit_edge413
  %1 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %link_mode_mask, align 4
  %and = and i32 %fw_caps, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select.v = select i1 %tobool.not, i32 128, i32 136
  %spec.select = or i32 %2, %spec.select.v
  %3 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %spec.select, ptr %link_mode_mask, align 4
  %and2 = and i32 %fw_caps, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %sw.bb.do.body7_crit_edge, label %if.then4

sw.bb.do.body7_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body7

if.then4:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #20
  %4 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %link_mode_mask, align 4
  %or.i336 = or i32 %5, 32
  store i32 %or.i336, ptr %link_mode_mask, align 4
  br label %do.body7

do.body7:                                         ; preds = %if.then4, %sw.bb.do.body7_crit_edge
  %and8 = and i32 %fw_caps, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %do.body7.sw.epilog_crit_edge, label %if.then10

do.body7.sw.epilog_crit_edge:                     ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

if.then10:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #20
  %6 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %link_mode_mask, align 4
  %or.i337 = or i32 %7, 4096
  store i32 %or.i337, ptr %link_mode_mask, align 4
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry.sw.bb13_crit_edge, %entry.sw.bb13_crit_edge414
  %8 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %link_mode_mask, align 4
  %and15 = and i32 %fw_caps, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  %spec.select401.v = select i1 %tobool16.not, i32 65536, i32 196608
  %spec.select401 = or i32 %9, %spec.select401.v
  %10 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %spec.select401, ptr %link_mode_mask, align 4
  %and21 = and i32 %fw_caps, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %sw.bb13.sw.epilog_crit_edge, label %if.then23

sw.bb13.sw.epilog_crit_edge:                      ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

if.then23:                                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #20
  %11 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %link_mode_mask, align 4
  %or.i340 = or i32 %12, 262144
  store i32 %or.i340, ptr %link_mode_mask, align 4
  br label %sw.epilog

sw.bb26:                                          ; preds = %entry
  %13 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %link_mode_mask, align 4
  %or.i341 = or i32 %14, 65536
  store i32 %or.i341, ptr %link_mode_mask, align 4
  %and28 = and i32 %fw_caps, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %sw.bb26.sw.epilog_crit_edge, label %if.then30

sw.bb26.sw.epilog_crit_edge:                      ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

if.then30:                                        ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #20
  %or.i342 = or i32 %14, 589824
  %15 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or.i342, ptr %link_mode_mask, align 4
  br label %sw.epilog

sw.bb33:                                          ; preds = %entry
  %16 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %link_mode_mask, align 4
  %and35 = and i32 %fw_caps, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  %spec.select402.v = select i1 %tobool36.not, i32 65536, i32 196608
  %spec.select402 = or i32 %17, %spec.select402.v
  %18 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %spec.select402, ptr %link_mode_mask, align 4
  %and41 = and i32 %fw_caps, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %sw.bb33.sw.epilog_crit_edge, label %if.then43

sw.bb33.sw.epilog_crit_edge:                      ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

if.then43:                                        ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #20
  %19 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %link_mode_mask, align 4
  %or.i346 = or i32 %20, 1572864
  store i32 %or.i346, ptr %link_mode_mask, align 4
  br label %sw.epilog

sw.bb52:                                          ; preds = %entry
  %21 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %link_mode_mask, align 4
  %and54 = and i32 %fw_caps, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  %spec.select403.v = select i1 %tobool55.not, i32 65536, i32 196608
  %spec.select403 = or i32 %22, %spec.select403.v
  %23 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %spec.select403, ptr %link_mode_mask, align 4
  %and60 = and i32 %fw_caps, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %sw.bb52.sw.epilog_crit_edge, label %if.then62

sw.bb52.sw.epilog_crit_edge:                      ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

if.then62:                                        ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #20
  %24 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %link_mode_mask, align 4
  %or.i351 = or i32 %25, 1835008
  store i32 %or.i351, ptr %link_mode_mask, align 4
  br label %sw.epilog

sw.bb77:                                          ; preds = %entry.sw.bb77_crit_edge, %entry.sw.bb77_crit_edge415, %entry.sw.bb77_crit_edge416, %entry.sw.bb77_crit_edge417, %entry.sw.bb77_crit_edge418
  %26 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %link_mode_mask, align 4
  %and79 = and i32 %fw_caps, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  %spec.select404.v = select i1 %tobool80.not, i32 1024, i32 1056
  %spec.select404 = or i32 %27, %spec.select404.v
  %28 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %spec.select404, ptr %link_mode_mask, align 4
  %and85 = and i32 %fw_caps, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %sw.bb77.sw.epilog_crit_edge, label %if.then87

sw.bb77.sw.epilog_crit_edge:                      ; preds = %sw.bb77
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

if.then87:                                        ; preds = %sw.bb77
  call void @__sanitizer_cov_trace_pc() #20
  %29 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %link_mode_mask, align 4
  %or.i354 = or i32 %30, 4096
  store i32 %or.i354, ptr %link_mode_mask, align 4
  br label %sw.epilog

sw.bb90:                                          ; preds = %entry.sw.bb90_crit_edge, %entry.sw.bb90_crit_edge419
  %31 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %link_mode_mask, align 4
  %and92 = and i32 %fw_caps, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  %spec.select405.v = select i1 %tobool93.not, i32 1024, i32 1056
  %spec.select405 = or i32 %32, %spec.select405.v
  %33 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %spec.select405, ptr %link_mode_mask, align 4
  %and98 = and i32 %fw_caps, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98)
  %tobool99.not = icmp eq i32 %and98, 0
  br i1 %tobool99.not, label %sw.bb90.do.body103_crit_edge, label %if.then100

sw.bb90.do.body103_crit_edge:                     ; preds = %sw.bb90
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body103

if.then100:                                       ; preds = %sw.bb90
  call void @__sanitizer_cov_trace_pc() #20
  %34 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %link_mode_mask, align 4
  %or.i357 = or i32 %35, 4096
  store i32 %or.i357, ptr %link_mode_mask, align 4
  br label %do.body103

do.body103:                                       ; preds = %if.then100, %sw.bb90.do.body103_crit_edge
  %and104 = and i32 %fw_caps, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %tobool105.not = icmp eq i32 %and104, 0
  br i1 %tobool105.not, label %do.body103.sw.epilog_crit_edge, label %if.then106

do.body103.sw.epilog_crit_edge:                   ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

if.then106:                                       ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #20
  %36 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %link_mode_mask, align 4
  %or.i358 = or i32 %37, 33554432
  store i32 %or.i358, ptr %link_mode_mask, align 4
  br label %sw.epilog

sw.bb109:                                         ; preds = %entry.sw.bb109_crit_edge, %entry.sw.bb109_crit_edge420
  %38 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %link_mode_mask, align 4
  %and111 = and i32 %fw_caps, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %tobool112.not = icmp eq i32 %and111, 0
  %spec.select406.v = select i1 %tobool112.not, i32 1024, i32 1056
  %spec.select406 = or i32 %39, %spec.select406.v
  %40 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %spec.select406, ptr %link_mode_mask, align 4
  %and117 = and i32 %fw_caps, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117)
  %tobool118.not = icmp eq i32 %and117, 0
  br i1 %tobool118.not, label %sw.bb109.do.body122_crit_edge, label %if.then119

sw.bb109.do.body122_crit_edge:                    ; preds = %sw.bb109
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body122

if.then119:                                       ; preds = %sw.bb109
  call void @__sanitizer_cov_trace_pc() #20
  %41 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %link_mode_mask, align 4
  %or.i361 = or i32 %42, 4096
  store i32 %or.i361, ptr %link_mode_mask, align 4
  br label %do.body122

do.body122:                                       ; preds = %if.then119, %sw.bb109.do.body122_crit_edge
  %and123 = and i32 %fw_caps, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and123)
  %tobool124.not = icmp eq i32 %and123, 0
  br i1 %tobool124.not, label %do.body122.sw.epilog_crit_edge, label %if.then125

do.body122.sw.epilog_crit_edge:                   ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

if.then125:                                       ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #20
  %43 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %link_mode_mask, align 4
  %or.i362 = or i32 %44, -2147483648
  store i32 %or.i362, ptr %link_mode_mask, align 4
  br label %sw.epilog

sw.bb128:                                         ; preds = %entry
  %45 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %link_mode_mask, align 4
  %and130 = and i32 %fw_caps, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and130)
  %tobool131.not = icmp eq i32 %and130, 0
  %spec.select407.v = select i1 %tobool131.not, i32 65536, i32 65568
  %spec.select407 = or i32 %46, %spec.select407.v
  %47 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %spec.select407, ptr %link_mode_mask, align 4
  %and136 = and i32 %fw_caps, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136)
  %tobool137.not = icmp eq i32 %and136, 0
  br i1 %tobool137.not, label %sw.bb128.do.body141_crit_edge, label %if.then138

sw.bb128.do.body141_crit_edge:                    ; preds = %sw.bb128
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body141

if.then138:                                       ; preds = %sw.bb128
  call void @__sanitizer_cov_trace_pc() #20
  %48 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %link_mode_mask, align 4
  %or.i365 = or i32 %49, 524288
  store i32 %or.i365, ptr %link_mode_mask, align 4
  br label %do.body141

do.body141:                                       ; preds = %if.then138, %sw.bb128.do.body141_crit_edge
  %and142 = and i32 %fw_caps, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and142)
  %tobool143.not = icmp eq i32 %and142, 0
  br i1 %tobool143.not, label %do.body141.sw.epilog_crit_edge, label %if.then144

do.body141.sw.epilog_crit_edge:                   ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

if.then144:                                       ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr.i = getelementptr i32, ptr %link_mode_mask, i32 1
  %50 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %add.ptr.i, align 4
  %or.i366 = or i32 %51, 1
  store i32 %or.i366, ptr %add.ptr.i, align 4
  br label %sw.epilog

sw.bb147:                                         ; preds = %entry
  %52 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %link_mode_mask, align 4
  %and149 = and i32 %fw_caps, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and149)
  %tobool150.not = icmp eq i32 %and149, 0
  %spec.select408.v = select i1 %tobool150.not, i32 65536, i32 196608
  %spec.select408 = or i32 %53, %spec.select408.v
  %54 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %spec.select408, ptr %link_mode_mask, align 4
  %and155 = and i32 %fw_caps, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and155)
  %tobool156.not = icmp eq i32 %and155, 0
  br i1 %tobool156.not, label %sw.bb147.do.body160_crit_edge, label %if.then157

sw.bb147.do.body160_crit_edge:                    ; preds = %sw.bb147
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body160

if.then157:                                       ; preds = %sw.bb147
  call void @__sanitizer_cov_trace_pc() #20
  %55 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %link_mode_mask, align 4
  %or.i369 = or i32 %56, 524288
  store i32 %or.i369, ptr %link_mode_mask, align 4
  br label %do.body160

do.body160:                                       ; preds = %if.then157, %sw.bb147.do.body160_crit_edge
  %and161 = and i32 %fw_caps, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and161)
  %tobool162.not = icmp eq i32 %and161, 0
  br i1 %tobool162.not, label %do.body160.sw.epilog_crit_edge, label %if.then163

do.body160.sw.epilog_crit_edge:                   ; preds = %do.body160
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

if.then163:                                       ; preds = %do.body160
  call void @__sanitizer_cov_trace_pc() #20
  %57 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %link_mode_mask, align 4
  %or.i370 = or i32 %58, 8388608
  store i32 %or.i370, ptr %link_mode_mask, align 4
  br label %sw.epilog

sw.bb166:                                         ; preds = %entry
  %59 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %link_mode_mask, align 4
  %or.i371 = or i32 %60, 1024
  store i32 %or.i371, ptr %link_mode_mask, align 4
  %and168 = and i32 %fw_caps, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and168)
  %tobool169.not = icmp eq i32 %and168, 0
  br i1 %tobool169.not, label %sw.bb166.sw.epilog_crit_edge, label %if.then170

sw.bb166.sw.epilog_crit_edge:                     ; preds = %sw.bb166
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

if.then170:                                       ; preds = %sw.bb166
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr.i372 = getelementptr i32, ptr %link_mode_mask, i32 1
  %61 = ptrtoint ptr %add.ptr.i372 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %add.ptr.i372, align 4
  %or.i373 = or i32 %62, 256
  store i32 %or.i373, ptr %add.ptr.i372, align 4
  br label %sw.epilog

sw.bb173:                                         ; preds = %entry.sw.bb173_crit_edge, %entry.sw.bb173_crit_edge421
  %63 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %link_mode_mask, align 4
  %and175 = and i32 %fw_caps, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and175)
  %tobool176.not = icmp eq i32 %and175, 0
  %spec.select409.v = select i1 %tobool176.not, i32 1024, i32 1056
  %spec.select409 = or i32 %64, %spec.select409.v
  %65 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %spec.select409, ptr %link_mode_mask, align 4
  %and181 = and i32 %fw_caps, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and181)
  %tobool182.not = icmp eq i32 %and181, 0
  br i1 %tobool182.not, label %sw.bb173.do.body186_crit_edge, label %if.then183

sw.bb173.do.body186_crit_edge:                    ; preds = %sw.bb173
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body186

if.then183:                                       ; preds = %sw.bb173
  call void @__sanitizer_cov_trace_pc() #20
  %66 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %link_mode_mask, align 4
  %or.i376 = or i32 %67, 524288
  store i32 %or.i376, ptr %link_mode_mask, align 4
  br label %do.body186

do.body186:                                       ; preds = %if.then183, %sw.bb173.do.body186_crit_edge
  %and187 = and i32 %fw_caps, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and187)
  %tobool188.not = icmp eq i32 %and187, 0
  br i1 %tobool188.not, label %do.body186.do.body192_crit_edge, label %if.then189

do.body186.do.body192_crit_edge:                  ; preds = %do.body186
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body192

if.then189:                                       ; preds = %do.body186
  call void @__sanitizer_cov_trace_pc() #20
  %68 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %link_mode_mask, align 4
  %or.i377 = or i32 %69, 33554432
  store i32 %or.i377, ptr %link_mode_mask, align 4
  br label %do.body192

do.body192:                                       ; preds = %if.then189, %do.body186.do.body192_crit_edge
  %and193 = and i32 %fw_caps, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and193)
  %tobool194.not = icmp eq i32 %and193, 0
  br i1 %tobool194.not, label %do.body192.do.body198_crit_edge, label %if.then195

do.body192.do.body198_crit_edge:                  ; preds = %do.body192
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body198

if.then195:                                       ; preds = %do.body192
  call void @__sanitizer_cov_trace_pc() #20
  %70 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %link_mode_mask, align 4
  %or.i378 = or i32 %71, -2147483648
  store i32 %or.i378, ptr %link_mode_mask, align 4
  br label %do.body198

do.body198:                                       ; preds = %if.then195, %do.body192.do.body198_crit_edge
  %and199 = and i32 %fw_caps, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and199)
  %tobool200.not = icmp eq i32 %and199, 0
  br i1 %tobool200.not, label %do.body198.do.body204_crit_edge, label %if.then201

do.body198.do.body204_crit_edge:                  ; preds = %do.body198
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body204

if.then201:                                       ; preds = %do.body198
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr.i379 = getelementptr i32, ptr %link_mode_mask, i32 1
  %72 = ptrtoint ptr %add.ptr.i379 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %add.ptr.i379, align 4
  %or.i380 = or i32 %73, 4
  store i32 %or.i380, ptr %add.ptr.i379, align 4
  br label %do.body204

do.body204:                                       ; preds = %if.then201, %do.body198.do.body204_crit_edge
  %and205 = and i32 %fw_caps, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and205)
  %tobool206.not = icmp eq i32 %and205, 0
  br i1 %tobool206.not, label %do.body204.sw.epilog_crit_edge, label %if.then207

do.body204.sw.epilog_crit_edge:                   ; preds = %do.body204
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

if.then207:                                       ; preds = %do.body204
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr.i381 = getelementptr i32, ptr %link_mode_mask, i32 1
  %74 = ptrtoint ptr %add.ptr.i381 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %add.ptr.i381, align 4
  %or.i382 = or i32 %75, 64
  store i32 %or.i382, ptr %add.ptr.i381, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then207, %do.body204.sw.epilog_crit_edge, %if.then170, %sw.bb166.sw.epilog_crit_edge, %if.then163, %do.body160.sw.epilog_crit_edge, %if.then144, %do.body141.sw.epilog_crit_edge, %if.then125, %do.body122.sw.epilog_crit_edge, %if.then106, %do.body103.sw.epilog_crit_edge, %if.then87, %sw.bb77.sw.epilog_crit_edge, %if.then62, %sw.bb52.sw.epilog_crit_edge, %if.then43, %sw.bb33.sw.epilog_crit_edge, %if.then30, %sw.bb26.sw.epilog_crit_edge, %if.then23, %sw.bb13.sw.epilog_crit_edge, %if.then10, %do.body7.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %and210 = and i32 %fw_caps, 260046848
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and210)
  %tobool211.not = icmp eq i32 %and210, 0
  br i1 %tobool211.not, label %sw.epilog.do.body226.sink.split_crit_edge, label %do.body213

sw.epilog.do.body226.sink.split_crit_edge:        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body226.sink.split

do.body213:                                       ; preds = %sw.epilog
  %and214 = and i32 %fw_caps, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and214)
  %tobool215.not = icmp eq i32 %and214, 0
  br i1 %tobool215.not, label %do.body213.do.body219_crit_edge, label %if.then216

do.body213.do.body219_crit_edge:                  ; preds = %do.body213
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body219

if.then216:                                       ; preds = %do.body213
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr.i383 = getelementptr i32, ptr %link_mode_mask, i32 1
  %76 = ptrtoint ptr %add.ptr.i383 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %add.ptr.i383, align 4
  %or.i384 = or i32 %77, 262144
  store i32 %or.i384, ptr %add.ptr.i383, align 4
  br label %do.body219

do.body219:                                       ; preds = %if.then216, %do.body213.do.body219_crit_edge
  %and220 = and i32 %fw_caps, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and220)
  %tobool221.not = icmp eq i32 %and220, 0
  br i1 %tobool221.not, label %do.body219.do.body226_crit_edge, label %do.body219.do.body226.sink.split_crit_edge

do.body219.do.body226.sink.split_crit_edge:       ; preds = %do.body219
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body226.sink.split

do.body219.do.body226_crit_edge:                  ; preds = %do.body219
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body226

do.body226.sink.split:                            ; preds = %do.body219.do.body226.sink.split_crit_edge, %sw.epilog.do.body226.sink.split_crit_edge
  %.sink410 = phi i32 [ 524288, %do.body219.do.body226.sink.split_crit_edge ], [ 131072, %sw.epilog.do.body226.sink.split_crit_edge ]
  %add.ptr.i385 = getelementptr i32, ptr %link_mode_mask, i32 1
  %78 = ptrtoint ptr %add.ptr.i385 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %add.ptr.i385, align 4
  %or.i388 = or i32 %79, %.sink410
  store i32 %or.i388, ptr %add.ptr.i385, align 4
  br label %do.body226

do.body226:                                       ; preds = %do.body226.sink.split, %do.body219.do.body226_crit_edge
  %and227 = and i32 %fw_caps, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and227)
  %tobool228.not = icmp eq i32 %and227, 0
  br i1 %tobool228.not, label %do.body226.do.body232_crit_edge, label %if.then229

do.body226.do.body232_crit_edge:                  ; preds = %do.body226
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body232

if.then229:                                       ; preds = %do.body226
  call void @__sanitizer_cov_trace_pc() #20
  %80 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %link_mode_mask, align 4
  %or.i389 = or i32 %81, 64
  store i32 %or.i389, ptr %link_mode_mask, align 4
  br label %do.body232

do.body232:                                       ; preds = %if.then229, %do.body226.do.body232_crit_edge
  %and233 = and i32 %fw_caps, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and233)
  %tobool234.not = icmp eq i32 %and233, 0
  br i1 %tobool234.not, label %do.body232.do.body238_crit_edge, label %if.then235

do.body232.do.body238_crit_edge:                  ; preds = %do.body232
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body238

if.then235:                                       ; preds = %do.body232
  call void @__sanitizer_cov_trace_pc() #20
  %82 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %link_mode_mask, align 4
  %or.i390 = or i32 %83, 8192
  store i32 %or.i390, ptr %link_mode_mask, align 4
  br label %do.body238

do.body238:                                       ; preds = %if.then235, %do.body232.do.body238_crit_edge
  %and239 = and i32 %fw_caps, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and239)
  %tobool240.not = icmp eq i32 %and239, 0
  br i1 %tobool240.not, label %do.body238.do.end243_crit_edge, label %if.then241

do.body238.do.end243_crit_edge:                   ; preds = %do.body238
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end243

if.then241:                                       ; preds = %do.body238
  call void @__sanitizer_cov_trace_pc() #20
  %84 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %link_mode_mask, align 4
  %or.i391 = or i32 %85, 16384
  store i32 %or.i391, ptr %link_mode_mask, align 4
  br label %do.end243

do.end243:                                        ; preds = %if.then241, %do.body238.do.end243_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msix_range(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mboxlog_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @seq_open(ptr noundef %file, ptr noundef nonnull @mboxlog_sops) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %private, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @mboxlog_start(ptr nocapture noundef readonly %seq, ptr nocapture noundef readonly %pos) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %private.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 8
  %mbox_log.i = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %mbox_log.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mbox_log.i, align 16
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %conv.i = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %conv.i)
  %cmp.not.i = icmp sgt i64 %1, %conv.i
  %8 = trunc i64 %1 to i32
  %conv2.i = add i32 %8, 1
  %9 = inttoptr i32 %conv2.i to ptr
  %cond.i = select i1 %cmp.not.i, ptr null, ptr %9
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %cond.i, %cond.true ], [ inttoptr (i32 1 to ptr), %entry.cond.end_crit_edge ]
  ret ptr %cond
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mboxlog_stop(ptr nocapture noundef %seq, ptr nocapture noundef %v) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @mboxlog_next(ptr nocapture noundef readonly %seq, ptr nocapture noundef readnone %v, ptr nocapture noundef %pos) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %inc = add i64 %1, 1
  store i64 %inc, ptr %pos, align 8
  %private.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 8
  %mbox_log.i = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %mbox_log.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mbox_log.i, align 16
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %conv.i = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %inc, i64 %conv.i)
  %cmp.not.i = icmp sgt i64 %inc, %conv.i
  %8 = trunc i64 %inc to i32
  %conv2.i = add i32 %8, 1
  %9 = inttoptr i32 %conv2.i to ptr
  %cond.i = select i1 %cmp.not.i, ptr null, ptr %9
  ret ptr %cond.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mboxlog_show(ptr noundef %seq, ptr noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.160, ptr noundef nonnull @.str.161, ptr noundef nonnull @.str.162, ptr noundef nonnull @.str.163, ptr noundef nonnull @.str.164) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %mbox_log = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %mbox_log to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mbox_log, align 16
  %cursor = getelementptr inbounds %struct.mbox_cmd_log, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %cursor to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cursor, align 4
  %6 = ptrtoint ptr %v to i32
  %sub = add i32 %6, -2
  %add = add i32 %sub, %5
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %8)
  %cmp2.not = icmp ult i32 %add, %8
  %sub5 = select i1 %cmp2.not, i32 0, i32 %8
  %spec.select = sub i32 %add, %sub5
  %arrayidx.i = getelementptr %struct.mbox_cmd_log, ptr %3, i32 1
  %arrayidx1.i = getelementptr %struct.mbox_cmd, ptr %arrayidx.i, i32 %spec.select
  %timestamp = getelementptr inbounds %struct.mbox_cmd, ptr %arrayidx1.i, i32 0, i32 1
  %9 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %timestamp, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %cmp7 = icmp eq i64 %10, 0
  br i1 %cmp7, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %seqno = getelementptr inbounds %struct.mbox_cmd, ptr %arrayidx1.i, i32 0, i32 2
  %11 = ptrtoint ptr %seqno to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %seqno, align 8
  %access = getelementptr inbounds %struct.mbox_cmd, ptr %arrayidx1.i, i32 0, i32 3
  %13 = ptrtoint ptr %access to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %access, align 4
  %conv = sext i16 %14 to i32
  %execute = getelementptr inbounds %struct.mbox_cmd, ptr %arrayidx1.i, i32 0, i32 4
  %15 = ptrtoint ptr %execute to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %execute, align 2
  %conv11 = sext i16 %16 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.165, i32 noundef %12, i64 noundef %10, i32 noundef %conv, i32 noundef %conv11) #18
  %17 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %arrayidx1.i, align 8
  %shr = lshr i64 %18, 32
  %conv14 = trunc i64 %shr to i32
  %conv15 = trunc i64 %18 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.166, i32 noundef %conv14, i32 noundef %conv15) #18
  %arrayidx.1 = getelementptr [8 x i64], ptr %arrayidx1.i, i32 0, i32 1
  %19 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %arrayidx.1, align 8
  %shr.1 = lshr i64 %20, 32
  %conv14.1 = trunc i64 %shr.1 to i32
  %conv15.1 = trunc i64 %20 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.166, i32 noundef %conv14.1, i32 noundef %conv15.1) #18
  %arrayidx.2 = getelementptr [8 x i64], ptr %arrayidx1.i, i32 0, i32 2
  %21 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %arrayidx.2, align 8
  %shr.2 = lshr i64 %22, 32
  %conv14.2 = trunc i64 %shr.2 to i32
  %conv15.2 = trunc i64 %22 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.166, i32 noundef %conv14.2, i32 noundef %conv15.2) #18
  %arrayidx.3 = getelementptr [8 x i64], ptr %arrayidx1.i, i32 0, i32 3
  %23 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %arrayidx.3, align 8
  %shr.3 = lshr i64 %24, 32
  %conv14.3 = trunc i64 %shr.3 to i32
  %conv15.3 = trunc i64 %24 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.166, i32 noundef %conv14.3, i32 noundef %conv15.3) #18
  %arrayidx.4 = getelementptr [8 x i64], ptr %arrayidx1.i, i32 0, i32 4
  %25 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %arrayidx.4, align 8
  %shr.4 = lshr i64 %26, 32
  %conv14.4 = trunc i64 %shr.4 to i32
  %conv15.4 = trunc i64 %26 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.166, i32 noundef %conv14.4, i32 noundef %conv15.4) #18
  %arrayidx.5 = getelementptr [8 x i64], ptr %arrayidx1.i, i32 0, i32 5
  %27 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %arrayidx.5, align 8
  %shr.5 = lshr i64 %28, 32
  %conv14.5 = trunc i64 %shr.5 to i32
  %conv15.5 = trunc i64 %28 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.166, i32 noundef %conv14.5, i32 noundef %conv15.5) #18
  %arrayidx.6 = getelementptr [8 x i64], ptr %arrayidx1.i, i32 0, i32 6
  %29 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %arrayidx.6, align 8
  %shr.6 = lshr i64 %30, 32
  %conv14.6 = trunc i64 %shr.6 to i32
  %conv15.6 = trunc i64 %30 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.166, i32 noundef %conv14.6, i32 noundef %conv15.6) #18
  %arrayidx.7 = getelementptr [8 x i64], ptr %arrayidx1.i, i32 0, i32 7
  %31 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %arrayidx.7, align 8
  %shr.7 = lshr i64 %32, 32
  %conv14.7 = trunc i64 %shr.7 to i32
  %conv15.7 = trunc i64 %32 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.166, i32 noundef %conv14.7, i32 noundef %conv15.7) #18
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.167) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sge_qinfo_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @seq_open(ptr noundef %file, ptr noundef nonnull @sge_qinfo_sops) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %private, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @sge_queue_start(ptr nocapture noundef readonly %seq, ptr nocapture noundef readonly %pos) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %ethqsets.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 11
  %2 = ptrtoint ptr %ethqsets.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ethqsets.i, align 2
  %conv.i = zext i16 %3 to i32
  %sub.i = add nuw nsw i32 %conv.i, 3
  %div5.i = lshr i32 %sub.i, 2
  %add1.i = add nuw nsw i32 %div5.i, 1
  %flags.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 8
  %and.i = lshr i32 %5, 1
  %and.lobit.i = and i32 %and.i, 1
  %add3.i = add nuw nsw i32 %add1.i, %and.lobit.i
  %6 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %pos, align 8
  %8 = zext i32 %add3.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %8)
  %cmp = icmp slt i64 %7, %8
  %conv2 = trunc i64 %7 to i32
  %add = add i32 %conv2, 1
  %9 = inttoptr i32 %add to ptr
  %cond = select i1 %cmp, ptr %9, ptr null
  ret ptr %cond
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sge_queue_stop(ptr nocapture noundef %seq, ptr nocapture noundef %v) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @sge_queue_next(ptr nocapture noundef readonly %seq, ptr nocapture noundef readnone %v, ptr nocapture noundef %pos) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %ethqsets.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 11
  %2 = ptrtoint ptr %ethqsets.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ethqsets.i, align 2
  %conv.i = zext i16 %3 to i32
  %sub.i = add nuw nsw i32 %conv.i, 3
  %div5.i = lshr i32 %sub.i, 2
  %add1.i = add nuw nsw i32 %div5.i, 1
  %flags.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 8
  %and.i = lshr i32 %5, 1
  %and.lobit.i = and i32 %and.i, 1
  %add3.i = add nuw nsw i32 %add1.i, %and.lobit.i
  %6 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %pos, align 8
  %inc = add i64 %7, 1
  store i64 %inc, ptr %pos, align 8
  %8 = zext i32 %add3.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %inc, i64 %8)
  %cmp = icmp slt i64 %inc, %8
  %conv2 = trunc i64 %inc to i32
  %add = add i32 %conv2, 1
  %9 = inttoptr i32 %add to ptr
  %cond = select i1 %cmp, ptr %9, ptr null
  ret ptr %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sge_qinfo_show(ptr noundef %seq, ptr noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %sge = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10
  %ethqsets = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 11
  %2 = ptrtoint ptr %ethqsets to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ethqsets, align 2
  %conv = zext i16 %3 to i32
  %sub = add nuw nsw i32 %conv, 3
  %div515 = lshr i32 %sub, 2
  %4 = ptrtoint ptr %v to i32
  %sub1 = add i32 %4, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub1)
  %tobool.not = icmp eq i32 %sub1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %sub1, i32 %div515)
  %cmp = icmp slt i32 %sub1, %div515
  br i1 %cmp, label %if.then3, label %if.end274

if.then3:                                         ; preds = %if.end
  %mul = shl i32 %sub1, 2
  %arrayidx = getelementptr %struct.adapter, ptr %1, i32 0, i32 10, i32 1, i32 %mul
  %arrayidx7 = getelementptr [8 x %struct.sge_eth_txq], ptr %sge, i32 0, i32 %mul
  %5 = ptrtoint ptr %ethqsets to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %ethqsets, align 2
  %conv10 = zext i16 %6 to i32
  %sub12 = sub i32 %conv10, %mul
  %7 = tail call i32 @llvm.smin.i32(i32 %sub12, i32 4)
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.169) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub12)
  %cmp15532 = icmp sgt i32 %sub12, 0
  br i1 %cmp15532, label %for.body.preheader, label %for.end33.critedge

for.body.preheader:                               ; preds = %if.then3
  %smax = call i32 @llvm.smax.i32(i32 %7, i32 1)
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.171) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %exitcond.not = icmp slt i32 %7, 2
  br i1 %exitcond.not, label %for.body21.preheader.critedge623, label %for.body.1

for.body.1:                                       ; preds = %for.body.preheader
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.171) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %smax)
  %exitcond.not.1 = icmp eq i32 %smax, 2
  br i1 %exitcond.not.1, label %for.body21.preheader.critedge622, label %for.body.2

for.body.2:                                       ; preds = %for.body.1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.171) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %smax)
  %exitcond.not.2 = icmp eq i32 %smax, 3
  br i1 %exitcond.not.2, label %for.body21.preheader.critedge621, label %for.body.3

for.body.3:                                       ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.171) #18
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.172) #18
  br label %for.body21.preheader

for.body21.preheader.critedge621:                 ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.172) #18
  br label %for.body21.preheader

for.body21.preheader.critedge622:                 ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.172) #18
  br label %for.body21.preheader

for.body21.preheader.critedge623:                 ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.172) #18
  br label %for.body21.preheader

for.body21.preheader:                             ; preds = %for.body21.preheader.critedge623, %for.body21.preheader.critedge622, %for.body21.preheader.critedge621, %for.body.3
  %smax572 = call i32 @llvm.smax.i32(i32 %7, i32 1)
  %netdev = getelementptr %struct.adapter, ptr %1, i32 0, i32 10, i32 1, i32 %mul, i32 0, i32 19
  %8 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %netdev, align 8
  %tobool23.not = icmp eq ptr %9, null
  %spec.select = select i1 %tobool23.not, ptr @.str.173, ptr %9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.170, ptr noundef nonnull %spec.select) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %exitcond573.not = icmp slt i32 %7, 2
  br i1 %exitcond573.not, label %for.body21.preheader.for.end33_crit_edge, label %for.body21.1

for.body21.preheader.for.end33_crit_edge:         ; preds = %for.body21.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end33

for.body21.1:                                     ; preds = %for.body21.preheader
  %netdev.1 = getelementptr %struct.sge_eth_rxq, ptr %arrayidx, i32 1, i32 0, i32 19
  %10 = ptrtoint ptr %netdev.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %netdev.1, align 8
  %tobool23.not.1 = icmp eq ptr %11, null
  %spec.select.1 = select i1 %tobool23.not.1, ptr @.str.173, ptr %11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.170, ptr noundef nonnull %spec.select.1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %smax572)
  %exitcond573.not.1 = icmp eq i32 %smax572, 2
  br i1 %exitcond573.not.1, label %for.body21.1.for.end33_crit_edge, label %for.body21.2

for.body21.1.for.end33_crit_edge:                 ; preds = %for.body21.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end33

for.body21.2:                                     ; preds = %for.body21.1
  %netdev.2 = getelementptr %struct.sge_eth_rxq, ptr %arrayidx, i32 2, i32 0, i32 19
  %12 = ptrtoint ptr %netdev.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %netdev.2, align 8
  %tobool23.not.2 = icmp eq ptr %13, null
  %spec.select.2 = select i1 %tobool23.not.2, ptr @.str.173, ptr %13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.170, ptr noundef nonnull %spec.select.2) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %smax572)
  %exitcond573.not.2 = icmp eq i32 %smax572, 3
  br i1 %exitcond573.not.2, label %for.body21.2.for.end33_crit_edge, label %for.body21.3

for.body21.2.for.end33_crit_edge:                 ; preds = %for.body21.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end33

for.body21.3:                                     ; preds = %for.body21.2
  call void @__sanitizer_cov_trace_pc() #20
  %netdev.3 = getelementptr %struct.sge_eth_rxq, ptr %arrayidx, i32 3, i32 0, i32 19
  %14 = ptrtoint ptr %netdev.3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %netdev.3, align 8
  %tobool23.not.3 = icmp eq ptr %15, null
  %spec.select.3 = select i1 %tobool23.not.3, ptr @.str.173, ptr %15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.170, ptr noundef nonnull %spec.select.3) #18
  br label %for.end33

for.end33.critedge:                               ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.172) #18
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.174) #18
  br label %for.end78.critedge.sink.split

for.end33:                                        ; preds = %for.body21.3, %for.body21.2.for.end33_crit_edge, %for.body21.1.for.end33_crit_edge, %for.body21.preheader.for.end33_crit_edge
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.174) #18
  br i1 %cmp15532, label %for.body40.preheader, label %for.end33.for.end78.critedge.sink.split_crit_edge

for.end33.for.end78.critedge.sink.split_crit_edge: ; preds = %for.end33
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end78.critedge.sink.split

for.body40.preheader:                             ; preds = %for.end33
  %smax574 = call i32 @llvm.smax.i32(i32 %7, i32 1)
  %netdev43 = getelementptr %struct.adapter, ptr %1, i32 0, i32 10, i32 1, i32 %mul, i32 0, i32 19
  %16 = ptrtoint ptr %netdev43 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %netdev43, align 8
  %tobool44.not = icmp eq ptr %17, null
  br i1 %tobool44.not, label %for.body40.preheader.cond.end51_crit_edge, label %cond.true45

for.body40.preheader.cond.end51_crit_edge:        ; preds = %for.body40.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end51

cond.true45:                                      ; preds = %for.body40.preheader
  call void @__sanitizer_cov_trace_pc() #20
  %port_id = getelementptr i8, ptr %17, i32 2326
  %18 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %port_id, align 2
  %conv49 = zext i8 %19 to i32
  br label %cond.end51

cond.end51:                                       ; preds = %cond.true45, %for.body40.preheader.cond.end51_crit_edge
  %cond52 = phi i32 [ %conv49, %cond.true45 ], [ -1, %for.body40.preheader.cond.end51_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.175, i32 noundef %cond52) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %exitcond575.not = icmp slt i32 %7, 2
  br i1 %exitcond575.not, label %cond.end51.for.end55_crit_edge, label %for.body40.1

cond.end51.for.end55_crit_edge:                   ; preds = %cond.end51
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end55

for.body40.1:                                     ; preds = %cond.end51
  %netdev43.1 = getelementptr %struct.sge_eth_rxq, ptr %arrayidx, i32 1, i32 0, i32 19
  %20 = ptrtoint ptr %netdev43.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %netdev43.1, align 8
  %tobool44.not.1 = icmp eq ptr %21, null
  br i1 %tobool44.not.1, label %for.body40.1.cond.end51.1_crit_edge, label %cond.true45.1

for.body40.1.cond.end51.1_crit_edge:              ; preds = %for.body40.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end51.1

cond.true45.1:                                    ; preds = %for.body40.1
  call void @__sanitizer_cov_trace_pc() #20
  %port_id.1 = getelementptr i8, ptr %21, i32 2326
  %22 = ptrtoint ptr %port_id.1 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %port_id.1, align 2
  %conv49.1 = zext i8 %23 to i32
  br label %cond.end51.1

cond.end51.1:                                     ; preds = %cond.true45.1, %for.body40.1.cond.end51.1_crit_edge
  %cond52.1 = phi i32 [ %conv49.1, %cond.true45.1 ], [ -1, %for.body40.1.cond.end51.1_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.175, i32 noundef %cond52.1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %smax574)
  %exitcond575.not.1 = icmp eq i32 %smax574, 2
  br i1 %exitcond575.not.1, label %cond.end51.1.for.end55_crit_edge, label %for.body40.2

cond.end51.1.for.end55_crit_edge:                 ; preds = %cond.end51.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end55

for.body40.2:                                     ; preds = %cond.end51.1
  %netdev43.2 = getelementptr %struct.sge_eth_rxq, ptr %arrayidx, i32 2, i32 0, i32 19
  %24 = ptrtoint ptr %netdev43.2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %netdev43.2, align 8
  %tobool44.not.2 = icmp eq ptr %25, null
  br i1 %tobool44.not.2, label %for.body40.2.cond.end51.2_crit_edge, label %cond.true45.2

for.body40.2.cond.end51.2_crit_edge:              ; preds = %for.body40.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end51.2

cond.true45.2:                                    ; preds = %for.body40.2
  call void @__sanitizer_cov_trace_pc() #20
  %port_id.2 = getelementptr i8, ptr %25, i32 2326
  %26 = ptrtoint ptr %port_id.2 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %port_id.2, align 2
  %conv49.2 = zext i8 %27 to i32
  br label %cond.end51.2

cond.end51.2:                                     ; preds = %cond.true45.2, %for.body40.2.cond.end51.2_crit_edge
  %cond52.2 = phi i32 [ %conv49.2, %cond.true45.2 ], [ -1, %for.body40.2.cond.end51.2_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.175, i32 noundef %cond52.2) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %smax574)
  %exitcond575.not.2 = icmp eq i32 %smax574, 3
  br i1 %exitcond575.not.2, label %cond.end51.2.for.end55_crit_edge, label %for.body40.3

cond.end51.2.for.end55_crit_edge:                 ; preds = %cond.end51.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end55

for.body40.3:                                     ; preds = %cond.end51.2
  %netdev43.3 = getelementptr %struct.sge_eth_rxq, ptr %arrayidx, i32 3, i32 0, i32 19
  %28 = ptrtoint ptr %netdev43.3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %netdev43.3, align 8
  %tobool44.not.3 = icmp eq ptr %29, null
  br i1 %tobool44.not.3, label %for.body40.3.cond.end51.3_crit_edge, label %cond.true45.3

for.body40.3.cond.end51.3_crit_edge:              ; preds = %for.body40.3
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end51.3

cond.true45.3:                                    ; preds = %for.body40.3
  call void @__sanitizer_cov_trace_pc() #20
  %port_id.3 = getelementptr i8, ptr %29, i32 2326
  %30 = ptrtoint ptr %port_id.3 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %port_id.3, align 2
  %conv49.3 = zext i8 %31 to i32
  br label %cond.end51.3

cond.end51.3:                                     ; preds = %cond.true45.3, %for.body40.3.cond.end51.3_crit_edge
  %cond52.3 = phi i32 [ %conv49.3, %cond.true45.3 ], [ -1, %for.body40.3.cond.end51.3_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.175, i32 noundef %cond52.3) #18
  br label %for.end55

for.end55:                                        ; preds = %cond.end51.3, %cond.end51.2.for.end55_crit_edge, %cond.end51.1.for.end55_crit_edge, %cond.end51.for.end55_crit_edge
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.176) #18
  br i1 %cmp15532, label %for.body62.preheader, label %for.end55.for.end78.critedge_crit_edge

for.end55.for.end78.critedge_crit_edge:           ; preds = %for.end55
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end78.critedge

for.body62.preheader:                             ; preds = %for.end55
  %smax576 = call i32 @llvm.smax.i32(i32 %7, i32 1)
  %abs_id = getelementptr [8 x %struct.sge_eth_txq], ptr %sge, i32 0, i32 %mul, i32 0, i32 7
  %32 = ptrtoint ptr %abs_id to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %abs_id, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, i32 noundef %33) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %exitcond577.not = icmp slt i32 %7, 2
  br i1 %exitcond577.not, label %for.body73.preheader.critedge626, label %for.body62.1

for.body62.1:                                     ; preds = %for.body62.preheader
  %abs_id.1 = getelementptr %struct.sge_eth_txq, ptr %arrayidx7, i32 1, i32 0, i32 7
  %34 = ptrtoint ptr %abs_id.1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %abs_id.1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, i32 noundef %35) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %smax576)
  %exitcond577.not.1 = icmp eq i32 %smax576, 2
  br i1 %exitcond577.not.1, label %for.body73.preheader.critedge625, label %for.body62.2

for.body62.2:                                     ; preds = %for.body62.1
  %abs_id.2 = getelementptr %struct.sge_eth_txq, ptr %arrayidx7, i32 2, i32 0, i32 7
  %36 = ptrtoint ptr %abs_id.2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %abs_id.2, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, i32 noundef %37) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %smax576)
  %exitcond577.not.2 = icmp eq i32 %smax576, 3
  br i1 %exitcond577.not.2, label %for.body73.preheader.critedge624, label %for.body62.3

for.body62.3:                                     ; preds = %for.body62.2
  call void @__sanitizer_cov_trace_pc() #20
  %abs_id.3 = getelementptr %struct.sge_eth_txq, ptr %arrayidx7, i32 3, i32 0, i32 7
  %38 = ptrtoint ptr %abs_id.3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %abs_id.3, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, i32 noundef %39) #18
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.178) #18
  br label %for.body73.preheader

for.body73.preheader.critedge624:                 ; preds = %for.body62.2
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.178) #18
  br label %for.body73.preheader

for.body73.preheader.critedge625:                 ; preds = %for.body62.1
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.178) #18
  br label %for.body73.preheader

for.body73.preheader.critedge626:                 ; preds = %for.body62.preheader
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.178) #18
  br label %for.body73.preheader

for.body73.preheader:                             ; preds = %for.body73.preheader.critedge626, %for.body73.preheader.critedge625, %for.body73.preheader.critedge624, %for.body62.3
  %smax578 = call i32 @llvm.smax.i32(i32 %7, i32 1)
  %size = getelementptr [8 x %struct.sge_eth_txq], ptr %sge, i32 0, i32 %mul, i32 0, i32 1
  %40 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %size, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, i32 noundef %41) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %exitcond579.not = icmp slt i32 %7, 2
  br i1 %exitcond579.not, label %for.body73.preheader.for.end78_crit_edge, label %for.body73.1

for.body73.preheader.for.end78_crit_edge:         ; preds = %for.body73.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end78

for.body73.1:                                     ; preds = %for.body73.preheader
  %size.1 = getelementptr %struct.sge_eth_txq, ptr %arrayidx7, i32 1, i32 0, i32 1
  %42 = ptrtoint ptr %size.1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %size.1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, i32 noundef %43) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %smax578)
  %exitcond579.not.1 = icmp eq i32 %smax578, 2
  br i1 %exitcond579.not.1, label %for.body73.1.for.end78_crit_edge, label %for.body73.2

for.body73.1.for.end78_crit_edge:                 ; preds = %for.body73.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end78

for.body73.2:                                     ; preds = %for.body73.1
  %size.2 = getelementptr %struct.sge_eth_txq, ptr %arrayidx7, i32 2, i32 0, i32 1
  %44 = ptrtoint ptr %size.2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %size.2, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, i32 noundef %45) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %smax578)
  %exitcond579.not.2 = icmp eq i32 %smax578, 3
  br i1 %exitcond579.not.2, label %for.body73.2.for.end78_crit_edge, label %for.body73.3

for.body73.2.for.end78_crit_edge:                 ; preds = %for.body73.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end78

for.body73.3:                                     ; preds = %for.body73.2
  call void @__sanitizer_cov_trace_pc() #20
  %size.3 = getelementptr %struct.sge_eth_txq, ptr %arrayidx7, i32 3, i32 0, i32 1
  %46 = ptrtoint ptr %size.3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %size.3, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, i32 noundef %47) #18
  br label %for.end78

for.end78.critedge.sink.split:                    ; preds = %for.end33.for.end78.critedge.sink.split_crit_edge, %for.end33.critedge
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.176) #18
  br label %for.end78.critedge

for.end78.critedge:                               ; preds = %for.end78.critedge.sink.split, %for.end55.for.end78.critedge_crit_edge
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.178) #18
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.179) #18
  br label %for.end114.critedge.sink.split

for.end78:                                        ; preds = %for.body73.3, %for.body73.2.for.end78_crit_edge, %for.body73.1.for.end78_crit_edge, %for.body73.preheader.for.end78_crit_edge
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.179) #18
  br i1 %cmp15532, label %for.body85.preheader, label %for.end78.for.end114.critedge.sink.split_crit_edge

for.end78.for.end114.critedge.sink.split_crit_edge: ; preds = %for.end78
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end114.critedge.sink.split

for.body85.preheader:                             ; preds = %for.end78
  %smax580 = call i32 @llvm.smax.i32(i32 %7, i32 1)
  %48 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx7, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, i32 noundef %49) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %exitcond581.not = icmp slt i32 %7, 2
  br i1 %exitcond581.not, label %for.body97.preheader.critedge629, label %for.body85.1

for.body85.1:                                     ; preds = %for.body85.preheader
  %arrayidx86.1 = getelementptr %struct.sge_eth_txq, ptr %arrayidx7, i32 1
  %50 = ptrtoint ptr %arrayidx86.1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx86.1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, i32 noundef %51) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %smax580)
  %exitcond581.not.1 = icmp eq i32 %smax580, 2
  br i1 %exitcond581.not.1, label %for.body97.preheader.critedge628, label %for.body85.2

for.body85.2:                                     ; preds = %for.body85.1
  %arrayidx86.2 = getelementptr %struct.sge_eth_txq, ptr %arrayidx7, i32 2
  %52 = ptrtoint ptr %arrayidx86.2 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx86.2, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, i32 noundef %53) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %smax580)
  %exitcond581.not.2 = icmp eq i32 %smax580, 3
  br i1 %exitcond581.not.2, label %for.body97.preheader.critedge627, label %for.body85.3

for.body85.3:                                     ; preds = %for.body85.2
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx86.3 = getelementptr %struct.sge_eth_txq, ptr %arrayidx7, i32 3
  %54 = ptrtoint ptr %arrayidx86.3 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx86.3, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, i32 noundef %55) #18
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.180) #18
  br label %for.body97.preheader

for.body97.preheader.critedge627:                 ; preds = %for.body85.2
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.180) #18
  br label %for.body97.preheader

for.body97.preheader.critedge628:                 ; preds = %for.body85.1
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.180) #18
  br label %for.body97.preheader

for.body97.preheader.critedge629:                 ; preds = %for.body85.preheader
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.180) #18
  br label %for.body97.preheader

for.body97.preheader:                             ; preds = %for.body97.preheader.critedge629, %for.body97.preheader.critedge628, %for.body97.preheader.critedge627, %for.body85.3
  %smax582 = call i32 @llvm.smax.i32(i32 %7, i32 1)
  %pidx = getelementptr [8 x %struct.sge_eth_txq], ptr %sge, i32 0, i32 %mul, i32 0, i32 3
  %56 = ptrtoint ptr %pidx to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pidx, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, i32 noundef %57) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %exitcond583.not = icmp slt i32 %7, 2
  br i1 %exitcond583.not, label %for.body97.preheader.for.end102_crit_edge, label %for.body97.1

for.body97.preheader.for.end102_crit_edge:        ; preds = %for.body97.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end102

for.body97.1:                                     ; preds = %for.body97.preheader
  %pidx.1 = getelementptr %struct.sge_eth_txq, ptr %arrayidx7, i32 1, i32 0, i32 3
  %58 = ptrtoint ptr %pidx.1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pidx.1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, i32 noundef %59) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %smax582)
  %exitcond583.not.1 = icmp eq i32 %smax582, 2
  br i1 %exitcond583.not.1, label %for.body97.1.for.end102_crit_edge, label %for.body97.2

for.body97.1.for.end102_crit_edge:                ; preds = %for.body97.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end102

for.body97.2:                                     ; preds = %for.body97.1
  %pidx.2 = getelementptr %struct.sge_eth_txq, ptr %arrayidx7, i32 2, i32 0, i32 3
  %60 = ptrtoint ptr %pidx.2 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pidx.2, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, i32 noundef %61) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %smax582)
  %exitcond583.not.2 = icmp eq i32 %smax582, 3
  br i1 %exitcond583.not.2, label %for.body97.2.for.end102_crit_edge, label %for.body97.3

for.body97.2.for.end102_crit_edge:                ; preds = %for.body97.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end102

for.body97.3:                                     ; preds = %for.body97.2
  call void @__sanitizer_cov_trace_pc() #20
  %pidx.3 = getelementptr %struct.sge_eth_txq, ptr %arrayidx7, i32 3, i32 0, i32 3
  %62 = ptrtoint ptr %pidx.3 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %pidx.3, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, i32 noundef %63) #18
  br label %for.end102

for.end102:                                       ; preds = %for.body97.3, %for.body97.2.for.end102_crit_edge, %for.body97.1.for.end102_crit_edge, %for.body97.preheader.for.end102_crit_edge
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.181) #18
  br i1 %cmp15532, label %for.body109.preheader, label %for.end102.for.end128.sink.split_crit_edge

for.end102.for.end128.sink.split_crit_edge:       ; preds = %for.end102
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end128.sink.split

for.body109.preheader:                            ; preds = %for.end102
  %smax584 = call i32 @llvm.smax.i32(i32 %7, i32 1)
  %cidx = getelementptr [8 x %struct.sge_eth_txq], ptr %sge, i32 0, i32 %mul, i32 0, i32 2
  %64 = ptrtoint ptr %cidx to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %cidx, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, i32 noundef %65) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %exitcond585.not = icmp slt i32 %7, 2
  br i1 %exitcond585.not, label %for.body121.preheader.critedge632, label %for.body109.1

for.body109.1:                                    ; preds = %for.body109.preheader
  %cidx.1 = getelementptr %struct.sge_eth_txq, ptr %arrayidx7, i32 1, i32 0, i32 2
  %66 = ptrtoint ptr %cidx.1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %cidx.1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, i32 noundef %67) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %smax584)
  %exitcond585.not.1 = icmp eq i32 %smax584, 2
  br i1 %exitcond585.not.1, label %for.body121.preheader.critedge631, label %for.body109.2

for.body109.2:                                    ; preds = %for.body109.1
  %cidx.2 = getelementptr %struct.sge_eth_txq, ptr %arrayidx7, i32 2, i32 0, i32 2
  %68 = ptrtoint ptr %cidx.2 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %cidx.2, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, i32 noundef %69) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %smax584)
  %exitcond585.not.2 = icmp eq i32 %smax584, 3
  br i1 %exitcond585.not.2, label %for.body121.preheader.critedge630, label %for.body109.3

for.body109.3:                                    ; preds = %for.body109.2
  call void @__sanitizer_cov_trace_pc() #20
  %cidx.3 = getelementptr %struct.sge_eth_txq, ptr %arrayidx7, i32 3, i32 0, i32 2
  %70 = ptrtoint ptr %cidx.3 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %cidx.3, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, i32 noundef %71) #18
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.182) #18
  br label %for.body121.preheader

for.end114.critedge.sink.split:                   ; preds = %for.end78.for.end114.critedge.sink.split_crit_edge, %for.end78.critedge
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.180) #18
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.181) #18
  br label %for.end128.sink.split

for.body121.preheader.critedge630:                ; preds = %for.body109.2
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.182) #18
  br label %for.body121.preheader

for.body121.preheader.critedge631:                ; preds = %for.body109.1
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.182) #18
  br label %for.body121.preheader

for.body121.preheader.critedge632:                ; preds = %for.body109.preheader
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.182) #18
  br label %for.body121.preheader

for.body121.preheader:                            ; preds = %for.body121.preheader.critedge632, %for.body121.preheader.critedge631, %for.body121.preheader.critedge630, %for.body109.3
  %smax586 = call i32 @llvm.smax.i32(i32 %7, i32 1)
  %abs_id124 = getelementptr %struct.adapter, ptr %1, i32 0, i32 10, i32 1, i32 %mul, i32 0, i32 11
  %72 = ptrtoint ptr %abs_id124 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %abs_id124, align 2
  %conv125 = zext i16 %73 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, i32 noundef %conv125) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %exitcond587.not = icmp slt i32 %7, 2
  br i1 %exitcond587.not, label %for.body121.preheader.for.end128_crit_edge, label %for.body121.1

for.body121.preheader.for.end128_crit_edge:       ; preds = %for.body121.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end128

for.body121.1:                                    ; preds = %for.body121.preheader
  %abs_id124.1 = getelementptr %struct.sge_eth_rxq, ptr %arrayidx, i32 1, i32 0, i32 11
  %74 = ptrtoint ptr %abs_id124.1 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %abs_id124.1, align 2
  %conv125.1 = zext i16 %75 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, i32 noundef %conv125.1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %smax586)
  %exitcond587.not.1 = icmp eq i32 %smax586, 2
  br i1 %exitcond587.not.1, label %for.body121.1.for.end128_crit_edge, label %for.body121.2

for.body121.1.for.end128_crit_edge:               ; preds = %for.body121.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end128

for.body121.2:                                    ; preds = %for.body121.1
  %abs_id124.2 = getelementptr %struct.sge_eth_rxq, ptr %arrayidx, i32 2, i32 0, i32 11
  %76 = ptrtoint ptr %abs_id124.2 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %abs_id124.2, align 2
  %conv125.2 = zext i16 %77 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, i32 noundef %conv125.2) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %smax586)
  %exitcond587.not.2 = icmp eq i32 %smax586, 3
  br i1 %exitcond587.not.2, label %for.body121.2.for.end128_crit_edge, label %for.body121.3

for.body121.2.for.end128_crit_edge:               ; preds = %for.body121.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end128

for.body121.3:                                    ; preds = %for.body121.2
  call void @__sanitizer_cov_trace_pc() #20
  %abs_id124.3 = getelementptr %struct.sge_eth_rxq, ptr %arrayidx, i32 3, i32 0, i32 11
  %78 = ptrtoint ptr %abs_id124.3 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %abs_id124.3, align 2
  %conv125.3 = zext i16 %79 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, i32 noundef %conv125.3) #18
  br label %for.end128

for.end128.sink.split:                            ; preds = %for.end114.critedge.sink.split, %for.end102.for.end128.sink.split_crit_edge
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.182) #18
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.183) #18
  br label %for.end153.critedge

for.end128:                                       ; preds = %for.body121.3, %for.body121.2.for.end128_crit_edge, %for.body121.1.for.end128_crit_edge, %for.body121.preheader.for.end128_crit_edge
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.183) #18
  br i1 %cmp15532, label %for.body135.preheader, label %for.end128.for.end153.critedge_crit_edge

for.end128.for.end153.critedge_crit_edge:         ; preds = %for.end128
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end153.critedge

for.body135.preheader:                            ; preds = %for.end128
  %smax588 = call i32 @llvm.smax.i32(i32 %7, i32 1)
  %size138 = getelementptr %struct.adapter, ptr %1, i32 0, i32 10, i32 1, i32 %mul, i32 0, i32 17
  %80 = ptrtoint ptr %size138 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %size138, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, i32 noundef %81) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %exitcond589.not = icmp slt i32 %7, 2
  br i1 %exitcond589.not, label %for.body148.preheader.critedge635, label %for.body135.1

for.body135.1:                                    ; preds = %for.body135.preheader
  %size138.1 = getelementptr %struct.sge_eth_rxq, ptr %arrayidx, i32 1, i32 0, i32 17
  %82 = ptrtoint ptr %size138.1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %size138.1, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, i32 noundef %83) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %smax588)
  %exitcond589.not.1 = icmp eq i32 %smax588, 2
  br i1 %exitcond589.not.1, label %for.body148.preheader.critedge634, label %for.body135.2

for.body135.2:                                    ; preds = %for.body135.1
  %size138.2 = getelementptr %struct.sge_eth_rxq, ptr %arrayidx, i32 2, i32 0, i32 17
  %84 = ptrtoint ptr %size138.2 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %size138.2, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, i32 noundef %85) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %smax588)
  %exitcond589.not.2 = icmp eq i32 %smax588, 3
  br i1 %exitcond589.not.2, label %for.body148.preheader.critedge633, label %for.body135.3

for.body135.3:                                    ; preds = %for.body135.2
  call void @__sanitizer_cov_trace_pc() #20
  %size138.3 = getelementptr %struct.sge_eth_rxq, ptr %arrayidx, i32 3, i32 0, i32 17
  %86 = ptrtoint ptr %size138.3 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %size138.3, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, i32 noundef %87) #18
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.184) #18
  br label %for.body148.preheader

for.body148.preheader.critedge633:                ; preds = %for.body135.2
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.184) #18
  br label %for.body148.preheader

for.body148.preheader.critedge634:                ; preds = %for.body135.1
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.184) #18
  br label %for.body148.preheader

for.body148.preheader.critedge635:                ; preds = %for.body135.preheader
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.184) #18
  br label %for.body148.preheader

for.body148.preheader:                            ; preds = %for.body148.preheader.critedge635, %for.body148.preheader.critedge634, %for.body148.preheader.critedge633, %for.body135.3
  %smax590 = call i32 @llvm.smax.i32(i32 %7, i32 1)
  %iqe_len = getelementptr %struct.adapter, ptr %1, i32 0, i32 10, i32 1, i32 %mul, i32 0, i32 16
  %88 = ptrtoint ptr %iqe_len to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %iqe_len, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, i32 noundef %89) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %exitcond591.not = icmp slt i32 %7, 2
  br i1 %exitcond591.not, label %for.body148.preheader.for.end153_crit_edge, label %for.body148.1

for.body148.preheader.for.end153_crit_edge:       ; preds = %for.body148.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end153

for.body148.1:                                    ; preds = %for.body148.preheader
  %iqe_len.1 = getelementptr %struct.sge_eth_rxq, ptr %arrayidx, i32 1, i32 0, i32 16
  %90 = ptrtoint ptr %iqe_len.1 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %iqe_len.1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, i32 noundef %91) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %smax590)
  %exitcond591.not.1 = icmp eq i32 %smax590, 2
  br i1 %exitcond591.not.1, label %for.body148.1.for.end153_crit_edge, label %for.body148.2

for.body148.1.for.end153_crit_edge:               ; preds = %for.body148.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end153

for.body148.2:                                    ; preds = %for.body148.1
  %iqe_len.2 = getelementptr %struct.sge_eth_rxq, ptr %arrayidx, i32 2, i32 0, i32 16
  %92 = ptrtoint ptr %iqe_len.2 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %iqe_len.2, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, i32 noundef %93) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %smax590)
  %exitcond591.not.2 = icmp eq i32 %smax590, 3
  br i1 %exitcond591.not.2, label %for.body148.2.for.end153_crit_edge, label %for.body148.3

for.body148.2.for.end153_crit_edge:               ; preds = %for.body148.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end153

for.body148.3:                                    ; preds = %for.body148.2
  call void @__sanitizer_cov_trace_pc() #20
  %iqe_len.3 = getelementptr %struct.sge_eth_rxq, ptr %arrayidx, i32 3, i32 0, i32 16
  %94 = ptrtoint ptr %iqe_len.3 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %iqe_len.3, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, i32 noundef %95) #18
  br label %for.end153

for.end153.critedge:                              ; preds = %for.end128.for.end153.critedge_crit_edge, %for.end128.sink.split
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.184) #18
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.185) #18
  br label %for.end194.critedge.sink.split

for.end153:                                       ; preds = %for.body148.3, %for.body148.2.for.end153_crit_edge, %for.body148.1.for.end153_crit_edge, %for.body148.preheader.for.end153_crit_edge
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.185) #18
  br i1 %cmp15532, label %for.body160.preheader, label %for.end153.for.end194.critedge.sink.split_crit_edge

for.end153.for.end194.critedge.sink.split_crit_edge: ; preds = %for.end153
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end194.critedge.sink.split

for.body160.preheader:                            ; preds = %for.end153
  %smax592 = call i32 @llvm.smax.i32(i32 %7, i32 1)
  %intr_params.i = getelementptr %struct.adapter, ptr %1, i32 0, i32 10, i32 1, i32 %mul, i32 0, i32 7
  %96 = ptrtoint ptr %intr_params.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %intr_params.i, align 4
  %98 = lshr i8 %97, 1
  %99 = and i8 %98, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %99)
  %cmp.i = icmp ult i8 %99, 6
  br i1 %cmp.i, label %cond.true.i, label %for.body160.preheader.qtimer_val.exit_crit_edge

for.body160.preheader.qtimer_val.exit_crit_edge:  ; preds = %for.body160.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %qtimer_val.exit

cond.true.i:                                      ; preds = %for.body160.preheader
  call void @__sanitizer_cov_trace_pc() #20
  %and.i = zext i8 %99 to i32
  %arrayidx.i = getelementptr %struct.adapter, ptr %1, i32 0, i32 10, i32 13, i32 %and.i
  %100 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %arrayidx.i, align 2
  %conv2.i = zext i16 %101 to i32
  br label %qtimer_val.exit

qtimer_val.exit:                                  ; preds = %cond.true.i, %for.body160.preheader.qtimer_val.exit_crit_edge
  %cond.i = phi i32 [ %conv2.i, %cond.true.i ], [ 0, %for.body160.preheader.qtimer_val.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, i32 noundef %cond.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %exitcond593.not = icmp slt i32 %7, 2
  br i1 %exitcond593.not, label %qtimer_val.exit.for.end166_crit_edge, label %for.body160.1

qtimer_val.exit.for.end166_crit_edge:             ; preds = %qtimer_val.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end166

for.body160.1:                                    ; preds = %qtimer_val.exit
  %intr_params.i.1 = getelementptr %struct.sge_eth_rxq, ptr %arrayidx, i32 1, i32 0, i32 7
  %102 = ptrtoint ptr %intr_params.i.1 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %intr_params.i.1, align 4
  %104 = lshr i8 %103, 1
  %105 = and i8 %104, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %105)
  %cmp.i.1 = icmp ult i8 %105, 6
  br i1 %cmp.i.1, label %cond.true.i.1, label %for.body160.1.qtimer_val.exit.1_crit_edge

for.body160.1.qtimer_val.exit.1_crit_edge:        ; preds = %for.body160.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %qtimer_val.exit.1

cond.true.i.1:                                    ; preds = %for.body160.1
  call void @__sanitizer_cov_trace_pc() #20
  %and.i.1 = zext i8 %105 to i32
  %arrayidx.i.1 = getelementptr %struct.adapter, ptr %1, i32 0, i32 10, i32 13, i32 %and.i.1
  %106 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %arrayidx.i.1, align 2
  %conv2.i.1 = zext i16 %107 to i32
  br label %qtimer_val.exit.1

qtimer_val.exit.1:                                ; preds = %cond.true.i.1, %for.body160.1.qtimer_val.exit.1_crit_edge
  %cond.i.1 = phi i32 [ %conv2.i.1, %cond.true.i.1 ], [ 0, %for.body160.1.qtimer_val.exit.1_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, i32 noundef %cond.i.1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %smax592)
  %exitcond593.not.1 = icmp eq i32 %smax592, 2
  br i1 %exitcond593.not.1, label %qtimer_val.exit.1.for.end166_crit_edge, label %for.body160.2

qtimer_val.exit.1.for.end166_crit_edge:           ; preds = %qtimer_val.exit.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end166

for.body160.2:                                    ; preds = %qtimer_val.exit.1
  %intr_params.i.2 = getelementptr %struct.sge_eth_rxq, ptr %arrayidx, i32 2, i32 0, i32 7
  %108 = ptrtoint ptr %intr_params.i.2 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %intr_params.i.2, align 4
  %110 = lshr i8 %109, 1
  %111 = and i8 %110, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %111)
  %cmp.i.2 = icmp ult i8 %111, 6
  br i1 %cmp.i.2, label %cond.true.i.2, label %for.body160.2.qtimer_val.exit.2_crit_edge

for.body160.2.qtimer_val.exit.2_crit_edge:        ; preds = %for.body160.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %qtimer_val.exit.2

cond.true.i.2:                                    ; preds = %for.body160.2
  call void @__sanitizer_cov_trace_pc() #20
  %and.i.2 = zext i8 %111 to i32
  %arrayidx.i.2 = getelementptr %struct.adapter, ptr %1, i32 0, i32 10, i32 13, i32 %and.i.2
  %112 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %arrayidx.i.2, align 2
  %conv2.i.2 = zext i16 %113 to i32
  br label %qtimer_val.exit.2

qtimer_val.exit.2:                                ; preds = %cond.true.i.2, %for.body160.2.qtimer_val.exit.2_crit_edge
  %cond.i.2 = phi i32 [ %conv2.i.2, %cond.true.i.2 ], [ 0, %for.body160.2.qtimer_val.exit.2_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, i32 noundef %cond.i.2) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %smax592)
  %exitcond593.not.2 = icmp eq i32 %smax592, 3
  br i1 %exitcond593.not.2, label %qtimer_val.exit.2.for.end166_crit_edge, label %for.body160.3

qtimer_val.exit.2.for.end166_crit_edge:           ; preds = %qtimer_val.exit.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end166

for.body160.3:                                    ; preds = %qtimer_val.exit.2
  %intr_params.i.3 = getelementptr %struct.sge_eth_rxq, ptr %arrayidx, i32 3, i32 0, i32 7
  %114 = ptrtoint ptr %intr_params.i.3 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %intr_params.i.3, align 4
  %116 = lshr i8 %115, 1
  %117 = and i8 %116, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %117)
  %cmp.i.3 = icmp ult i8 %117, 6
  br i1 %cmp.i.3, label %cond.true.i.3, label %for.body160.3.qtimer_val.exit.3_crit_edge

for.body160.3.qtimer_val.exit.3_crit_edge:        ; preds = %for.body160.3
  call void @__sanitizer_cov_trace_pc() #20
  br label %qtimer_val.exit.3

cond.true.i.3:                                    ; preds = %for.body160.3
  call void @__sanitizer_cov_trace_pc() #20
  %and.i.3 = zext i8 %117 to i32
  %arrayidx.i.3 = getelementptr %struct.adapter, ptr %1, i32 0, i32 10, i32 13, i32 %and.i.3
  %118 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %arrayidx.i.3, align 2
  %conv2.i.3 = zext i16 %119 to i32
  br label %qtimer_val.exit.3

qtimer_val.exit.3:                                ; preds = %cond.true.i.3, %for.body160.3.qtimer_val.exit.3_crit_edge
  %cond.i.3 = phi i32 [ %conv2.i.3, %cond.true.i.3 ], [ 0, %for.body160.3.qtimer_val.exit.3_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, i32 noundef %cond.i.3) #18
  br label %for.end166

for.end166:                                       ; preds = %qtimer_val.exit.3, %qtimer_val.exit.2.for.end166_crit_edge, %qtimer_val.exit.1.for.end166_crit_edge, %qtimer_val.exit.for.end166_crit_edge
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.186) #18
  br i1 %cmp15532, label %for.body173.preheader, label %for.end166.for.end194.critedge_crit_edge

for.end166.for.end194.critedge_crit_edge:         ; preds = %for.end166
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end194.critedge

for.body173.preheader:                            ; preds = %for.end166
  %smax594 = call i32 @llvm.smax.i32(i32 %7, i32 1)
  %pktcnt_idx = getelementptr %struct.adapter, ptr %1, i32 0, i32 10, i32 1, i32 %mul, i32 0, i32 8
  %120 = ptrtoint ptr %pktcnt_idx to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %pktcnt_idx, align 1
  %idxprom = zext i8 %121 to i32
  %arrayidx177 = getelementptr %struct.adapter, ptr %1, i32 0, i32 10, i32 14, i32 %idxprom
  %122 = ptrtoint ptr %arrayidx177 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx177, align 1
  %conv178 = zext i8 %123 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, i32 noundef %conv178) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %exitcond595.not = icmp slt i32 %7, 2
  br i1 %exitcond595.not, label %for.body188.preheader.critedge638, label %for.body173.1

for.body173.1:                                    ; preds = %for.body173.preheader
  %pktcnt_idx.1 = getelementptr %struct.sge_eth_rxq, ptr %arrayidx, i32 1, i32 0, i32 8
  %124 = ptrtoint ptr %pktcnt_idx.1 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %pktcnt_idx.1, align 1
  %idxprom.1 = zext i8 %125 to i32
  %arrayidx177.1 = getelementptr %struct.adapter, ptr %1, i32 0, i32 10, i32 14, i32 %idxprom.1
  %126 = ptrtoint ptr %arrayidx177.1 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx177.1, align 1
  %conv178.1 = zext i8 %127 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, i32 noundef %conv178.1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %smax594)
  %exitcond595.not.1 = icmp eq i32 %smax594, 2
  br i1 %exitcond595.not.1, label %for.body188.preheader.critedge637, label %for.body173.2

for.body173.2:                                    ; preds = %for.body173.1
  %pktcnt_idx.2 = getelementptr %struct.sge_eth_rxq, ptr %arrayidx, i32 2, i32 0, i32 8
  %128 = ptrtoint ptr %pktcnt_idx.2 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %pktcnt_idx.2, align 1
  %idxprom.2 = zext i8 %129 to i32
  %arrayidx177.2 = getelementptr %struct.adapter, ptr %1, i32 0, i32 10, i32 14, i32 %idxprom.2
  %130 = ptrtoint ptr %arrayidx177.2 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx177.2, align 1
  %conv178.2 = zext i8 %131 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, i32 noundef %conv178.2) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %smax594)
  %exitcond595.not.2 = icmp eq i32 %smax594, 3
  br i1 %exitcond595.not.2, label %for.body188.preheader.critedge636, label %for.body173.3

for.body173.3:                                    ; preds = %for.body173.2
  call void @__sanitizer_cov_trace_pc() #20
  %pktcnt_idx.3 = getelementptr %struct.sge_eth_rxq, ptr %arrayidx, i32 3, i32 0, i32 8
  %132 = ptrtoint ptr %pktcnt_idx.3 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %pktcnt_idx.3, align 1
  %idxprom.3 = zext i8 %133 to i32
  %arrayidx177.3 = getelementptr %struct.adapter, ptr %1, i32 0, i32 10, i32 14, i32 %idxprom.3
  %134 = ptrtoint ptr %arrayidx177.3 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx177.3, align 1
  %conv178.3 = zext i8 %135 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, i32 noundef %conv178.3) #18
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.187) #18
  br label %for.body188.preheader

for.body188.preheader.critedge636:                ; preds = %for.body173.2
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.187) #18
  br label %for.body188.preheader

for.body188.preheader.critedge637:                ; preds = %for.body173.1
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.187) #18
  br label %for.body188.preheader

for.body188.preheader.critedge638:                ; preds = %for.body173.preheader
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.187) #18
  br label %for.body188.preheader

for.body188.preheader:                            ; preds = %for.body188.preheader.critedge638, %for.body188.preheader.critedge637, %for.body188.preheader.critedge636, %for.body173.3
  %smax596 = call i32 @llvm.smax.i32(i32 %7, i32 1)
  %cidx191 = getelementptr %struct.adapter, ptr %1, i32 0, i32 10, i32 1, i32 %mul, i32 0, i32 2
  %136 = ptrtoint ptr %cidx191 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %cidx191, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, i32 noundef %137) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %exitcond597.not = icmp slt i32 %7, 2
  br i1 %exitcond597.not, label %for.body188.preheader.for.end194_crit_edge, label %for.body188.1

for.body188.preheader.for.end194_crit_edge:       ; preds = %for.body188.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end194

for.body188.1:                                    ; preds = %for.body188.preheader
  %cidx191.1 = getelementptr %struct.sge_eth_rxq, ptr %arrayidx, i32 1, i32 0, i32 2
  %138 = ptrtoint ptr %cidx191.1 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %cidx191.1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, i32 noundef %139) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %smax596)
  %exitcond597.not.1 = icmp eq i32 %smax596, 2
  br i1 %exitcond597.not.1, label %for.body188.1.for.end194_crit_edge, label %for.body188.2

for.body188.1.for.end194_crit_edge:               ; preds = %for.body188.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end194

for.body188.2:                                    ; preds = %for.body188.1
  %cidx191.2 = getelementptr %struct.sge_eth_rxq, ptr %arrayidx, i32 2, i32 0, i32 2
  %140 = ptrtoint ptr %cidx191.2 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %cidx191.2, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, i32 noundef %141) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %smax596)
  %exitcond597.not.2 = icmp eq i32 %smax596, 3
  br i1 %exitcond597.not.2, label %for.body188.2.for.end194_crit_edge, label %for.body188.3

for.body188.2.for.end194_crit_edge:               ; preds = %for.body188.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end194

for.body188.3:                                    ; preds = %for.body188.2
  call void @__sanitizer_cov_trace_pc() #20
  %cidx191.3 = getelementptr %struct.sge_eth_rxq, ptr %arrayidx, i32 3, i32 0, i32 2
  %142 = ptrtoint ptr %cidx191.3 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %cidx191.3, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, i32 noundef %143) #18
  br label %for.end194

for.end194.critedge.sink.split:                   ; preds = %for.end153.for.end194.critedge.sink.split_crit_edge, %for.end153.critedge
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.186) #18
  br label %for.end194.critedge

for.end194.critedge:                              ; preds = %for.end194.critedge.sink.split, %for.end166.for.end194.critedge_crit_edge
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.187) #18
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.188) #18
  br label %for.end233.critedge.sink.split

for.end194:                                       ; preds = %for.body188.3, %for.body188.2.for.end194_crit_edge, %for.body188.1.for.end194_crit_edge, %for.body188.preheader.for.end194_crit_edge
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.188) #18
  br i1 %cmp15532, label %for.body201.preheader, label %for.end194.for.end233.critedge.sink.split_crit_edge

for.end194.for.end233.critedge.sink.split_crit_edge: ; preds = %for.end194
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end233.critedge.sink.split

for.body201.preheader:                            ; preds = %for.end194
  %smax598 = call i32 @llvm.smax.i32(i32 %7, i32 1)
  %gen = getelementptr %struct.adapter, ptr %1, i32 0, i32 10, i32 1, i32 %mul, i32 0, i32 3
  %144 = ptrtoint ptr %gen to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %gen, align 8
  %conv204 = zext i8 %145 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, i32 noundef %conv204) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %exitcond599.not = icmp slt i32 %7, 2
  br i1 %exitcond599.not, label %for.body214.preheader.critedge641, label %for.body201.1

for.body201.1:                                    ; preds = %for.body201.preheader
  %gen.1 = getelementptr %struct.sge_eth_rxq, ptr %arrayidx, i32 1, i32 0, i32 3
  %146 = ptrtoint ptr %gen.1 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %gen.1, align 8
  %conv204.1 = zext i8 %147 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, i32 noundef %conv204.1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %smax598)
  %exitcond599.not.1 = icmp eq i32 %smax598, 2
  br i1 %exitcond599.not.1, label %for.body214.preheader.critedge640, label %for.body201.2

for.body201.2:                                    ; preds = %for.body201.1
  %gen.2 = getelementptr %struct.sge_eth_rxq, ptr %arrayidx, i32 2, i32 0, i32 3
  %148 = ptrtoint ptr %gen.2 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %gen.2, align 8
  %conv204.2 = zext i8 %149 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, i32 noundef %conv204.2) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %smax598)
  %exitcond599.not.2 = icmp eq i32 %smax598, 3
  br i1 %exitcond599.not.2, label %for.body214.preheader.critedge639, label %for.body201.3

for.body201.3:                                    ; preds = %for.body201.2
  call void @__sanitizer_cov_trace_pc() #20
  %gen.3 = getelementptr %struct.sge_eth_rxq, ptr %arrayidx, i32 3, i32 0, i32 3
  %150 = ptrtoint ptr %gen.3 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %gen.3, align 8
  %conv204.3 = zext i8 %151 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, i32 noundef %conv204.3) #18
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.189) #18
  br label %for.body214.preheader

for.body214.preheader.critedge639:                ; preds = %for.body201.2
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.189) #18
  br label %for.body214.preheader

for.body214.preheader.critedge640:                ; preds = %for.body201.1
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.189) #18
  br label %for.body214.preheader

for.body214.preheader.critedge641:                ; preds = %for.body201.preheader
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.189) #18
  br label %for.body214.preheader

for.body214.preheader:                            ; preds = %for.body214.preheader.critedge641, %for.body214.preheader.critedge640, %for.body214.preheader.critedge639, %for.body201.3
  %smax600 = call i32 @llvm.smax.i32(i32 %7, i32 1)
  %abs_id216 = getelementptr %struct.adapter, ptr %1, i32 0, i32 10, i32 1, i32 %mul, i32 1, i32 8
  %152 = ptrtoint ptr %abs_id216 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %abs_id216, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, i32 noundef %153) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %exitcond601.not = icmp slt i32 %7, 2
  br i1 %exitcond601.not, label %for.body214.preheader.for.end219_crit_edge, label %for.body214.1

for.body214.preheader.for.end219_crit_edge:       ; preds = %for.body214.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end219

for.body214.1:                                    ; preds = %for.body214.preheader
  %abs_id216.1 = getelementptr %struct.sge_eth_rxq, ptr %arrayidx, i32 1, i32 1, i32 8
  %154 = ptrtoint ptr %abs_id216.1 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %abs_id216.1, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, i32 noundef %155) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %smax600)
  %exitcond601.not.1 = icmp eq i32 %smax600, 2
  br i1 %exitcond601.not.1, label %for.body214.1.for.end219_crit_edge, label %for.body214.2

for.body214.1.for.end219_crit_edge:               ; preds = %for.body214.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end219

for.body214.2:                                    ; preds = %for.body214.1
  %abs_id216.2 = getelementptr %struct.sge_eth_rxq, ptr %arrayidx, i32 2, i32 1, i32 8
  %156 = ptrtoint ptr %abs_id216.2 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %abs_id216.2, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, i32 noundef %157) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %smax600)
  %exitcond601.not.2 = icmp eq i32 %smax600, 3
  br i1 %exitcond601.not.2, label %for.body214.2.for.end219_crit_edge, label %for.body214.3

for.body214.2.for.end219_crit_edge:               ; preds = %for.body214.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end219

for.body214.3:                                    ; preds = %for.body214.2
  call void @__sanitizer_cov_trace_pc() #20
  %abs_id216.3 = getelementptr %struct.sge_eth_rxq, ptr %arrayidx, i32 3, i32 1, i32 8
  %158 = ptrtoint ptr %abs_id216.3 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %abs_id216.3, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, i32 noundef %159) #18
  br label %for.end219

for.end219:                                       ; preds = %for.body214.3, %for.body214.2.for.end219_crit_edge, %for.body214.1.for.end219_crit_edge, %for.body214.preheader.for.end219_crit_edge
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.190) #18
  br i1 %cmp15532, label %for.body226.preheader, label %for.end219.for.end245.sink.split_crit_edge

for.end219.for.end245.sink.split_crit_edge:       ; preds = %for.end219
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end245.sink.split

for.body226.preheader:                            ; preds = %for.end219
  %smax602 = call i32 @llvm.smax.i32(i32 %7, i32 1)
  %size229 = getelementptr %struct.adapter, ptr %1, i32 0, i32 10, i32 1, i32 %mul, i32 1, i32 9
  %160 = ptrtoint ptr %size229 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %size229, align 4
  %sub230 = add i32 %161, -8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, i32 noundef %sub230) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %exitcond603.not = icmp slt i32 %7, 2
  br i1 %exitcond603.not, label %for.body240.preheader.critedge644, label %for.body226.1

for.body226.1:                                    ; preds = %for.body226.preheader
  %size229.1 = getelementptr %struct.sge_eth_rxq, ptr %arrayidx, i32 1, i32 1, i32 9
  %162 = ptrtoint ptr %size229.1 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %size229.1, align 4
  %sub230.1 = add i32 %163, -8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, i32 noundef %sub230.1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %smax602)
  %exitcond603.not.1 = icmp eq i32 %smax602, 2
  br i1 %exitcond603.not.1, label %for.body240.preheader.critedge643, label %for.body226.2

for.body226.2:                                    ; preds = %for.body226.1
  %size229.2 = getelementptr %struct.sge_eth_rxq, ptr %arrayidx, i32 2, i32 1, i32 9
  %164 = ptrtoint ptr %size229.2 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %size229.2, align 4
  %sub230.2 = add i32 %165, -8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, i32 noundef %sub230.2) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %smax602)
  %exitcond603.not.2 = icmp eq i32 %smax602, 3
  br i1 %exitcond603.not.2, label %for.body240.preheader.critedge642, label %for.body226.3

for.body226.3:                                    ; preds = %for.body226.2
  call void @__sanitizer_cov_trace_pc() #20
  %size229.3 = getelementptr %struct.sge_eth_rxq, ptr %arrayidx, i32 3, i32 1, i32 9
  %166 = ptrtoint ptr %size229.3 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %size229.3, align 4
  %sub230.3 = add i32 %167, -8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, i32 noundef %sub230.3) #18
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.191) #18
  br label %for.body240.preheader

for.end233.critedge.sink.split:                   ; preds = %for.end194.for.end233.critedge.sink.split_crit_edge, %for.end194.critedge
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.189) #18
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.190) #18
  br label %for.end245.sink.split

for.body240.preheader.critedge642:                ; preds = %for.body226.2
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.191) #18
  br label %for.body240.preheader

for.body240.preheader.critedge643:                ; preds = %for.body226.1
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.191) #18
  br label %for.body240.preheader

for.body240.preheader.critedge644:                ; preds = %for.body226.preheader
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.191) #18
  br label %for.body240.preheader

for.body240.preheader:                            ; preds = %for.body240.preheader.critedge644, %for.body240.preheader.critedge643, %for.body240.preheader.critedge642, %for.body226.3
  %smax604 = call i32 @llvm.smax.i32(i32 %7, i32 1)
  %fl242 = getelementptr %struct.adapter, ptr %1, i32 0, i32 10, i32 1, i32 %mul, i32 1
  %168 = ptrtoint ptr %fl242 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %fl242, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, i32 noundef %169) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %exitcond605.not = icmp slt i32 %7, 2
  br i1 %exitcond605.not, label %for.body240.preheader.for.end245_crit_edge, label %for.body240.1

for.body240.preheader.for.end245_crit_edge:       ; preds = %for.body240.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end245

for.body240.1:                                    ; preds = %for.body240.preheader
  %fl242.1 = getelementptr %struct.sge_eth_rxq, ptr %arrayidx, i32 1, i32 1
  %170 = ptrtoint ptr %fl242.1 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %fl242.1, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, i32 noundef %171) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %smax604)
  %exitcond605.not.1 = icmp eq i32 %smax604, 2
  br i1 %exitcond605.not.1, label %for.body240.1.for.end245_crit_edge, label %for.body240.2

for.body240.1.for.end245_crit_edge:               ; preds = %for.body240.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end245

for.body240.2:                                    ; preds = %for.body240.1
  %fl242.2 = getelementptr %struct.sge_eth_rxq, ptr %arrayidx, i32 2, i32 1
  %172 = ptrtoint ptr %fl242.2 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %fl242.2, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, i32 noundef %173) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %smax604)
  %exitcond605.not.2 = icmp eq i32 %smax604, 3
  br i1 %exitcond605.not.2, label %for.body240.2.for.end245_crit_edge, label %for.body240.3

for.body240.2.for.end245_crit_edge:               ; preds = %for.body240.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end245

for.body240.3:                                    ; preds = %for.body240.2
  call void @__sanitizer_cov_trace_pc() #20
  %fl242.3 = getelementptr %struct.sge_eth_rxq, ptr %arrayidx, i32 3, i32 1
  %174 = ptrtoint ptr %fl242.3 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %fl242.3, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, i32 noundef %175) #18
  br label %for.end245

for.end245.sink.split:                            ; preds = %for.end233.critedge.sink.split, %for.end219.for.end245.sink.split_crit_edge
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.191) #18
  br label %for.end245

for.end245:                                       ; preds = %for.end245.sink.split, %for.body240.3, %for.body240.2.for.end245_crit_edge, %for.body240.1.for.end245_crit_edge, %for.body240.preheader.for.end245_crit_edge
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.192) #18
  br i1 %cmp15532, label %for.body252.preheader, label %for.end271.critedge

for.body252.preheader:                            ; preds = %for.end245
  %smax606 = call i32 @llvm.smax.i32(i32 %7, i32 1)
  %pidx255 = getelementptr %struct.adapter, ptr %1, i32 0, i32 10, i32 1, i32 %mul, i32 1, i32 3
  %176 = ptrtoint ptr %pidx255 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %pidx255, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, i32 noundef %177) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %exitcond607.not = icmp slt i32 %7, 2
  br i1 %exitcond607.not, label %for.body265.preheader.critedge647, label %for.body252.1

for.body252.1:                                    ; preds = %for.body252.preheader
  %pidx255.1 = getelementptr %struct.sge_eth_rxq, ptr %arrayidx, i32 1, i32 1, i32 3
  %178 = ptrtoint ptr %pidx255.1 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %pidx255.1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, i32 noundef %179) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %smax606)
  %exitcond607.not.1 = icmp eq i32 %smax606, 2
  br i1 %exitcond607.not.1, label %for.body265.preheader.critedge646, label %for.body252.2

for.body252.2:                                    ; preds = %for.body252.1
  %pidx255.2 = getelementptr %struct.sge_eth_rxq, ptr %arrayidx, i32 2, i32 1, i32 3
  %180 = ptrtoint ptr %pidx255.2 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %pidx255.2, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, i32 noundef %181) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %smax606)
  %exitcond607.not.2 = icmp eq i32 %smax606, 3
  br i1 %exitcond607.not.2, label %for.body265.preheader.critedge645, label %for.body252.3

for.body252.3:                                    ; preds = %for.body252.2
  call void @__sanitizer_cov_trace_pc() #20
  %pidx255.3 = getelementptr %struct.sge_eth_rxq, ptr %arrayidx, i32 3, i32 1, i32 3
  %182 = ptrtoint ptr %pidx255.3 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %pidx255.3, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, i32 noundef %183) #18
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.193) #18
  br label %for.body265.preheader

for.body265.preheader.critedge645:                ; preds = %for.body252.2
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.193) #18
  br label %for.body265.preheader

for.body265.preheader.critedge646:                ; preds = %for.body252.1
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.193) #18
  br label %for.body265.preheader

for.body265.preheader.critedge647:                ; preds = %for.body252.preheader
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.193) #18
  br label %for.body265.preheader

for.body265.preheader:                            ; preds = %for.body265.preheader.critedge647, %for.body265.preheader.critedge646, %for.body265.preheader.critedge645, %for.body252.3
  %smax608 = call i32 @llvm.smax.i32(i32 %7, i32 1)
  %cidx268 = getelementptr %struct.adapter, ptr %1, i32 0, i32 10, i32 1, i32 %mul, i32 1, i32 2
  %184 = ptrtoint ptr %cidx268 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %cidx268, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, i32 noundef %185) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %exitcond609.not = icmp slt i32 %7, 2
  br i1 %exitcond609.not, label %for.body265.preheader.for.end271_crit_edge, label %for.body265.1

for.body265.preheader.for.end271_crit_edge:       ; preds = %for.body265.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end271

for.body265.1:                                    ; preds = %for.body265.preheader
  %cidx268.1 = getelementptr %struct.sge_eth_rxq, ptr %arrayidx, i32 1, i32 1, i32 2
  %186 = ptrtoint ptr %cidx268.1 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %cidx268.1, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, i32 noundef %187) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %smax608)
  %exitcond609.not.1 = icmp eq i32 %smax608, 2
  br i1 %exitcond609.not.1, label %for.body265.1.for.end271_crit_edge, label %for.body265.2

for.body265.1.for.end271_crit_edge:               ; preds = %for.body265.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end271

for.body265.2:                                    ; preds = %for.body265.1
  %cidx268.2 = getelementptr %struct.sge_eth_rxq, ptr %arrayidx, i32 2, i32 1, i32 2
  %188 = ptrtoint ptr %cidx268.2 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %cidx268.2, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, i32 noundef %189) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %smax608)
  %exitcond609.not.2 = icmp eq i32 %smax608, 3
  br i1 %exitcond609.not.2, label %for.body265.2.for.end271_crit_edge, label %for.body265.3

for.body265.2.for.end271_crit_edge:               ; preds = %for.body265.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end271

for.body265.3:                                    ; preds = %for.body265.2
  call void @__sanitizer_cov_trace_pc() #20
  %cidx268.3 = getelementptr %struct.sge_eth_rxq, ptr %arrayidx, i32 3, i32 1, i32 2
  %190 = ptrtoint ptr %cidx268.3 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %cidx268.3, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, i32 noundef %191) #18
  br label %for.end271

for.end271.critedge:                              ; preds = %for.end245
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.193) #18
  br label %for.end271

for.end271:                                       ; preds = %for.end271.critedge, %for.body265.3, %for.body265.2.for.end271_crit_edge, %for.body265.1.for.end271_crit_edge, %for.body265.preheader.for.end271_crit_edge
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  br label %cleanup

if.end274:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %sub1, i32 %div515)
  %cmp276 = icmp eq i32 %sub1, %div515
  br i1 %cmp276, label %if.then278, label %if.else

if.then278:                                       ; preds = %if.end274
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.194, ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.195) #18
  %abs_id280 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 3, i32 11
  %192 = ptrtoint ptr %abs_id280 to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %abs_id280, align 2
  %conv281 = zext i16 %193 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.196, ptr noundef nonnull @.str.182, i32 noundef %conv281) #18
  %intr_params.i516 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 3, i32 7
  %194 = ptrtoint ptr %intr_params.i516 to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %intr_params.i516, align 4
  %196 = lshr i8 %195, 1
  %197 = and i8 %196, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %197)
  %cmp.i517 = icmp ult i8 %197, 6
  br i1 %cmp.i517, label %cond.true.i521, label %if.then278.qtimer_val.exit523_crit_edge

if.then278.qtimer_val.exit523_crit_edge:          ; preds = %if.then278
  call void @__sanitizer_cov_trace_pc() #20
  br label %qtimer_val.exit523

cond.true.i521:                                   ; preds = %if.then278
  call void @__sanitizer_cov_trace_pc() #20
  %and.i518 = zext i8 %197 to i32
  %arrayidx.i519 = getelementptr %struct.adapter, ptr %1, i32 0, i32 10, i32 13, i32 %and.i518
  %198 = ptrtoint ptr %arrayidx.i519 to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %arrayidx.i519, align 2
  %conv2.i520 = zext i16 %199 to i32
  br label %qtimer_val.exit523

qtimer_val.exit523:                               ; preds = %cond.true.i521, %if.then278.qtimer_val.exit523_crit_edge
  %cond.i522 = phi i32 [ %conv2.i520, %cond.true.i521 ], [ 0, %if.then278.qtimer_val.exit523_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.196, ptr noundef nonnull @.str.185, i32 noundef %cond.i522) #18
  %pktcnt_idx285 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 3, i32 8
  %200 = ptrtoint ptr %pktcnt_idx285 to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %pktcnt_idx285, align 1
  %idxprom286 = zext i8 %201 to i32
  %arrayidx287 = getelementptr %struct.adapter, ptr %1, i32 0, i32 10, i32 14, i32 %idxprom286
  %202 = ptrtoint ptr %arrayidx287 to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %arrayidx287, align 1
  %conv288 = zext i8 %203 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.196, ptr noundef nonnull @.str.186, i32 noundef %conv288) #18
  %cidx289 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 3, i32 2
  %204 = ptrtoint ptr %cidx289 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %cidx289, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.196, ptr noundef nonnull @.str.197, i32 noundef %205) #18
  %gen290 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 3, i32 3
  %206 = ptrtoint ptr %gen290 to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %gen290, align 8
  %conv291 = zext i8 %207 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.196, ptr noundef nonnull @.str.188, i32 noundef %conv291) #18
  br label %cleanup

if.else:                                          ; preds = %if.end274
  %sub275 = sub i32 %sub1, %div515
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub275)
  %cmp292 = icmp eq i32 %sub275, 1
  br i1 %cmp292, label %if.then294, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then294:                                       ; preds = %if.else
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.194, ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.198) #18
  %abs_id297 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 5, i32 11
  %208 = ptrtoint ptr %abs_id297 to i32
  call void @__asan_load2_noabort(i32 %208)
  %209 = load i16, ptr %abs_id297, align 2
  %conv298 = zext i16 %209 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.196, ptr noundef nonnull @.str.182, i32 noundef %conv298) #18
  %intr_params.i524 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 5, i32 7
  %210 = ptrtoint ptr %intr_params.i524 to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %intr_params.i524, align 4
  %212 = lshr i8 %211, 1
  %213 = and i8 %212, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %213)
  %cmp.i525 = icmp ult i8 %213, 6
  br i1 %cmp.i525, label %cond.true.i529, label %if.then294.qtimer_val.exit531_crit_edge

if.then294.qtimer_val.exit531_crit_edge:          ; preds = %if.then294
  call void @__sanitizer_cov_trace_pc() #20
  br label %qtimer_val.exit531

cond.true.i529:                                   ; preds = %if.then294
  call void @__sanitizer_cov_trace_pc() #20
  %and.i526 = zext i8 %213 to i32
  %arrayidx.i527 = getelementptr %struct.adapter, ptr %1, i32 0, i32 10, i32 13, i32 %and.i526
  %214 = ptrtoint ptr %arrayidx.i527 to i32
  call void @__asan_load2_noabort(i32 %214)
  %215 = load i16, ptr %arrayidx.i527, align 2
  %conv2.i528 = zext i16 %215 to i32
  br label %qtimer_val.exit531

qtimer_val.exit531:                               ; preds = %cond.true.i529, %if.then294.qtimer_val.exit531_crit_edge
  %cond.i530 = phi i32 [ %conv2.i528, %cond.true.i529 ], [ 0, %if.then294.qtimer_val.exit531_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.196, ptr noundef nonnull @.str.185, i32 noundef %cond.i530) #18
  %pktcnt_idx302 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 5, i32 8
  %216 = ptrtoint ptr %pktcnt_idx302 to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %pktcnt_idx302, align 1
  %idxprom303 = zext i8 %217 to i32
  %arrayidx304 = getelementptr %struct.adapter, ptr %1, i32 0, i32 10, i32 14, i32 %idxprom303
  %218 = ptrtoint ptr %arrayidx304 to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %arrayidx304, align 1
  %conv305 = zext i8 %219 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.196, ptr noundef nonnull @.str.186, i32 noundef %conv305) #18
  %cidx306 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 5, i32 2
  %220 = ptrtoint ptr %cidx306 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %cidx306, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.196, ptr noundef nonnull @.str.197, i32 noundef %221) #18
  %gen307 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 5, i32 3
  %222 = ptrtoint ptr %gen307 to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %gen307, align 8
  %conv308 = zext i8 %223 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.196, ptr noundef nonnull @.str.188, i32 noundef %conv308) #18
  br label %cleanup

cleanup:                                          ; preds = %qtimer_val.exit531, %if.else.cleanup_crit_edge, %qtimer_val.exit523, %for.end271
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sge_qstats_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @seq_open(ptr noundef %file, ptr noundef nonnull @sge_qstats_sops) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %private, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @sge_qstats_start(ptr nocapture noundef readonly %seq, ptr nocapture noundef readonly %pos) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %ethqsets.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 11
  %2 = ptrtoint ptr %ethqsets.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ethqsets.i, align 2
  %conv.i = zext i16 %3 to i32
  %sub.i = add nuw nsw i32 %conv.i, 3
  %div5.i = lshr i32 %sub.i, 2
  %add1.i = add nuw nsw i32 %div5.i, 1
  %flags.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 8
  %and.i = lshr i32 %5, 1
  %and.lobit.i = and i32 %and.i, 1
  %add3.i = add nuw nsw i32 %add1.i, %and.lobit.i
  %6 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %pos, align 8
  %8 = zext i32 %add3.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %8)
  %cmp = icmp slt i64 %7, %8
  %conv2 = trunc i64 %7 to i32
  %add = add i32 %conv2, 1
  %9 = inttoptr i32 %add to ptr
  %cond = select i1 %cmp, ptr %9, ptr null
  ret ptr %cond
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sge_qstats_stop(ptr nocapture noundef %seq, ptr nocapture noundef %v) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @sge_qstats_next(ptr nocapture noundef readonly %seq, ptr nocapture noundef readnone %v, ptr nocapture noundef %pos) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %ethqsets.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 11
  %2 = ptrtoint ptr %ethqsets.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ethqsets.i, align 2
  %conv.i = zext i16 %3 to i32
  %sub.i = add nuw nsw i32 %conv.i, 3
  %div5.i = lshr i32 %sub.i, 2
  %add1.i = add nuw nsw i32 %div5.i, 1
  %flags.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 8
  %and.i = lshr i32 %5, 1
  %and.lobit.i = and i32 %and.i, 1
  %add3.i = add nuw nsw i32 %add1.i, %and.lobit.i
  %6 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %pos, align 8
  %inc = add i64 %7, 1
  store i64 %inc, ptr %pos, align 8
  %8 = zext i32 %add3.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %inc, i64 %8)
  %cmp = icmp slt i64 %inc, %8
  %conv2 = trunc i64 %inc to i32
  %add = add i32 %conv2, 1
  %9 = inttoptr i32 %add to ptr
  %cond = select i1 %cmp, ptr %9, ptr null
  ret ptr %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sge_qstats_show(ptr noundef %seq, ptr noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %sge = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10
  %ethqsets = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 11
  %2 = ptrtoint ptr %ethqsets to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ethqsets, align 2
  %conv = zext i16 %3 to i32
  %sub = add nuw nsw i32 %conv, 3
  %div411 = lshr i32 %sub, 2
  %4 = ptrtoint ptr %v to i32
  %sub1 = add i32 %4, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub1)
  %tobool.not = icmp eq i32 %sub1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %sub1, i32 %div411)
  %cmp = icmp slt i32 %sub1, %div411
  br i1 %cmp, label %if.then3, label %if.end221

if.then3:                                         ; preds = %if.end
  %mul = shl i32 %sub1, 2
  %arrayidx = getelementptr %struct.adapter, ptr %1, i32 0, i32 10, i32 1, i32 %mul
  %arrayidx7 = getelementptr [8 x %struct.sge_eth_txq], ptr %sge, i32 0, i32 %mul
  %5 = ptrtoint ptr %ethqsets to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %ethqsets, align 2
  %conv10 = zext i16 %6 to i32
  %sub12 = sub i32 %conv10, %mul
  %7 = tail call i32 @llvm.smin.i32(i32 %sub12, i32 4)
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.169) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub12)
  %cmp15412 = icmp sgt i32 %sub12, 0
  br i1 %cmp15412, label %for.body.preheader, label %for.end33.critedge

for.body.preheader:                               ; preds = %if.then3
  %smax = call i32 @llvm.smax.i32(i32 %7, i32 1)
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.200, ptr noundef nonnull @.str.171) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %exitcond.not = icmp slt i32 %7, 2
  br i1 %exitcond.not, label %for.body21.preheader.critedge495, label %for.body.1

for.body.1:                                       ; preds = %for.body.preheader
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.200, ptr noundef nonnull @.str.171) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %smax)
  %exitcond.not.1 = icmp eq i32 %smax, 2
  br i1 %exitcond.not.1, label %for.body21.preheader.critedge494, label %for.body.2

for.body.2:                                       ; preds = %for.body.1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.200, ptr noundef nonnull @.str.171) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %smax)
  %exitcond.not.2 = icmp eq i32 %smax, 3
  br i1 %exitcond.not.2, label %for.body21.preheader.critedge493, label %for.body.3

for.body.3:                                       ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.200, ptr noundef nonnull @.str.171) #18
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.172) #18
  br label %for.body21.preheader

for.body21.preheader.critedge493:                 ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.172) #18
  br label %for.body21.preheader

for.body21.preheader.critedge494:                 ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.172) #18
  br label %for.body21.preheader

for.body21.preheader.critedge495:                 ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.172) #18
  br label %for.body21.preheader

for.body21.preheader:                             ; preds = %for.body21.preheader.critedge495, %for.body21.preheader.critedge494, %for.body21.preheader.critedge493, %for.body.3
  %smax448 = call i32 @llvm.smax.i32(i32 %7, i32 1)
  %netdev = getelementptr %struct.adapter, ptr %1, i32 0, i32 10, i32 1, i32 %mul, i32 0, i32 19
  %8 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %netdev, align 8
  %tobool23.not = icmp eq ptr %9, null
  %spec.select = select i1 %tobool23.not, ptr @.str.173, ptr %9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.200, ptr noundef nonnull %spec.select) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %exitcond449.not = icmp slt i32 %7, 2
  br i1 %exitcond449.not, label %for.body21.preheader.for.end33_crit_edge, label %for.body21.1

for.body21.preheader.for.end33_crit_edge:         ; preds = %for.body21.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end33

for.body21.1:                                     ; preds = %for.body21.preheader
  %netdev.1 = getelementptr %struct.sge_eth_rxq, ptr %arrayidx, i32 1, i32 0, i32 19
  %10 = ptrtoint ptr %netdev.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %netdev.1, align 8
  %tobool23.not.1 = icmp eq ptr %11, null
  %spec.select.1 = select i1 %tobool23.not.1, ptr @.str.173, ptr %11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.200, ptr noundef nonnull %spec.select.1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %smax448)
  %exitcond449.not.1 = icmp eq i32 %smax448, 2
  br i1 %exitcond449.not.1, label %for.body21.1.for.end33_crit_edge, label %for.body21.2

for.body21.1.for.end33_crit_edge:                 ; preds = %for.body21.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end33

for.body21.2:                                     ; preds = %for.body21.1
  %netdev.2 = getelementptr %struct.sge_eth_rxq, ptr %arrayidx, i32 2, i32 0, i32 19
  %12 = ptrtoint ptr %netdev.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %netdev.2, align 8
  %tobool23.not.2 = icmp eq ptr %13, null
  %spec.select.2 = select i1 %tobool23.not.2, ptr @.str.173, ptr %13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.200, ptr noundef nonnull %spec.select.2) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %smax448)
  %exitcond449.not.2 = icmp eq i32 %smax448, 3
  br i1 %exitcond449.not.2, label %for.body21.2.for.end33_crit_edge, label %for.body21.3

for.body21.2.for.end33_crit_edge:                 ; preds = %for.body21.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end33

for.body21.3:                                     ; preds = %for.body21.2
  call void @__sanitizer_cov_trace_pc() #20
  %netdev.3 = getelementptr %struct.sge_eth_rxq, ptr %arrayidx, i32 3, i32 0, i32 19
  %14 = ptrtoint ptr %netdev.3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %netdev.3, align 8
  %tobool23.not.3 = icmp eq ptr %15, null
  %spec.select.3 = select i1 %tobool23.not.3, ptr @.str.173, ptr %15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.200, ptr noundef nonnull %spec.select.3) #18
  br label %for.end33

for.end33.critedge:                               ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.172) #18
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.201) #18
  br label %for.end68.critedge.sink.split

for.end33:                                        ; preds = %for.body21.3, %for.body21.2.for.end33_crit_edge, %for.body21.1.for.end33_crit_edge, %for.body21.preheader.for.end33_crit_edge
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.201) #18
  br i1 %cmp15412, label %for.body40.preheader, label %for.end33.for.end68.critedge.sink.split_crit_edge

for.end33.for.end68.critedge.sink.split_crit_edge: ; preds = %for.end33
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end68.critedge.sink.split

for.body40.preheader:                             ; preds = %for.end33
  %smax450 = call i32 @llvm.smax.i32(i32 %7, i32 1)
  %unhandled_irqs = getelementptr %struct.adapter, ptr %1, i32 0, i32 10, i32 1, i32 %mul, i32 0, i32 6
  %16 = ptrtoint ptr %unhandled_irqs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %unhandled_irqs, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.202, i32 noundef %17) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %exitcond451.not = icmp slt i32 %7, 2
  br i1 %exitcond451.not, label %for.body52.preheader.critedge498, label %for.body40.1

for.body40.1:                                     ; preds = %for.body40.preheader
  %unhandled_irqs.1 = getelementptr %struct.sge_eth_rxq, ptr %arrayidx, i32 1, i32 0, i32 6
  %18 = ptrtoint ptr %unhandled_irqs.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %unhandled_irqs.1, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.202, i32 noundef %19) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %smax450)
  %exitcond451.not.1 = icmp eq i32 %smax450, 2
  br i1 %exitcond451.not.1, label %for.body52.preheader.critedge497, label %for.body40.2

for.body40.2:                                     ; preds = %for.body40.1
  %unhandled_irqs.2 = getelementptr %struct.sge_eth_rxq, ptr %arrayidx, i32 2, i32 0, i32 6
  %20 = ptrtoint ptr %unhandled_irqs.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %unhandled_irqs.2, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.202, i32 noundef %21) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %smax450)
  %exitcond451.not.2 = icmp eq i32 %smax450, 3
  br i1 %exitcond451.not.2, label %for.body52.preheader.critedge496, label %for.body40.3

for.body40.3:                                     ; preds = %for.body40.2
  call void @__sanitizer_cov_trace_pc() #20
  %unhandled_irqs.3 = getelementptr %struct.sge_eth_rxq, ptr %arrayidx, i32 3, i32 0, i32 6
  %22 = ptrtoint ptr %unhandled_irqs.3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %unhandled_irqs.3, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.202, i32 noundef %23) #18
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.203) #18
  br label %for.body52.preheader

for.body52.preheader.critedge496:                 ; preds = %for.body40.2
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.203) #18
  br label %for.body52.preheader

for.body52.preheader.critedge497:                 ; preds = %for.body40.1
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.203) #18
  br label %for.body52.preheader

for.body52.preheader.critedge498:                 ; preds = %for.body40.preheader
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.203) #18
  br label %for.body52.preheader

for.body52.preheader:                             ; preds = %for.body52.preheader.critedge498, %for.body52.preheader.critedge497, %for.body52.preheader.critedge496, %for.body40.3
  %smax452 = call i32 @llvm.smax.i32(i32 %7, i32 1)
  %stats = getelementptr %struct.adapter, ptr %1, i32 0, i32 10, i32 1, i32 %mul, i32 2
  %24 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %stats, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.204, i32 noundef %25) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %exitcond453.not = icmp slt i32 %7, 2
  br i1 %exitcond453.not, label %for.body52.preheader.for.end56_crit_edge, label %for.body52.1

for.body52.preheader.for.end56_crit_edge:         ; preds = %for.body52.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end56

for.body52.1:                                     ; preds = %for.body52.preheader
  %stats.1 = getelementptr %struct.sge_eth_rxq, ptr %arrayidx, i32 1, i32 2
  %26 = ptrtoint ptr %stats.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %stats.1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.204, i32 noundef %27) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %smax452)
  %exitcond453.not.1 = icmp eq i32 %smax452, 2
  br i1 %exitcond453.not.1, label %for.body52.1.for.end56_crit_edge, label %for.body52.2

for.body52.1.for.end56_crit_edge:                 ; preds = %for.body52.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end56

for.body52.2:                                     ; preds = %for.body52.1
  %stats.2 = getelementptr %struct.sge_eth_rxq, ptr %arrayidx, i32 2, i32 2
  %28 = ptrtoint ptr %stats.2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %stats.2, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.204, i32 noundef %29) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %smax452)
  %exitcond453.not.2 = icmp eq i32 %smax452, 3
  br i1 %exitcond453.not.2, label %for.body52.2.for.end56_crit_edge, label %for.body52.3

for.body52.2.for.end56_crit_edge:                 ; preds = %for.body52.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end56

for.body52.3:                                     ; preds = %for.body52.2
  call void @__sanitizer_cov_trace_pc() #20
  %stats.3 = getelementptr %struct.sge_eth_rxq, ptr %arrayidx, i32 3, i32 2
  %30 = ptrtoint ptr %stats.3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %stats.3, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.204, i32 noundef %31) #18
  br label %for.end56

for.end56:                                        ; preds = %for.body52.3, %for.body52.2.for.end56_crit_edge, %for.body52.1.for.end56_crit_edge, %for.body52.preheader.for.end56_crit_edge
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.205) #18
  br i1 %cmp15412, label %for.body63.preheader, label %for.end56.for.end80.sink.split_crit_edge

for.end56.for.end80.sink.split_crit_edge:         ; preds = %for.end56
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end80.sink.split

for.body63.preheader:                             ; preds = %for.end56
  %smax454 = call i32 @llvm.smax.i32(i32 %7, i32 1)
  %rx_cso = getelementptr %struct.adapter, ptr %1, i32 0, i32 10, i32 1, i32 %mul, i32 2, i32 3
  %32 = ptrtoint ptr %rx_cso to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rx_cso, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.204, i32 noundef %33) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %exitcond455.not = icmp slt i32 %7, 2
  br i1 %exitcond455.not, label %for.body75.preheader.critedge501, label %for.body63.1

for.body63.1:                                     ; preds = %for.body63.preheader
  %rx_cso.1 = getelementptr %struct.sge_eth_rxq, ptr %arrayidx, i32 1, i32 2, i32 3
  %34 = ptrtoint ptr %rx_cso.1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rx_cso.1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.204, i32 noundef %35) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %smax454)
  %exitcond455.not.1 = icmp eq i32 %smax454, 2
  br i1 %exitcond455.not.1, label %for.body75.preheader.critedge500, label %for.body63.2

for.body63.2:                                     ; preds = %for.body63.1
  %rx_cso.2 = getelementptr %struct.sge_eth_rxq, ptr %arrayidx, i32 2, i32 2, i32 3
  %36 = ptrtoint ptr %rx_cso.2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rx_cso.2, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.204, i32 noundef %37) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %smax454)
  %exitcond455.not.2 = icmp eq i32 %smax454, 3
  br i1 %exitcond455.not.2, label %for.body75.preheader.critedge499, label %for.body63.3

for.body63.3:                                     ; preds = %for.body63.2
  call void @__sanitizer_cov_trace_pc() #20
  %rx_cso.3 = getelementptr %struct.sge_eth_rxq, ptr %arrayidx, i32 3, i32 2, i32 3
  %38 = ptrtoint ptr %rx_cso.3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rx_cso.3, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.204, i32 noundef %39) #18
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.206) #18
  br label %for.body75.preheader

for.end68.critedge.sink.split:                    ; preds = %for.end33.for.end68.critedge.sink.split_crit_edge, %for.end33.critedge
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.203) #18
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.205) #18
  br label %for.end80.sink.split

for.body75.preheader.critedge499:                 ; preds = %for.body63.2
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.206) #18
  br label %for.body75.preheader

for.body75.preheader.critedge500:                 ; preds = %for.body63.1
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.206) #18
  br label %for.body75.preheader

for.body75.preheader.critedge501:                 ; preds = %for.body63.preheader
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.206) #18
  br label %for.body75.preheader

for.body75.preheader:                             ; preds = %for.body75.preheader.critedge501, %for.body75.preheader.critedge500, %for.body75.preheader.critedge499, %for.body63.3
  %smax456 = call i32 @llvm.smax.i32(i32 %7, i32 1)
  %vlan_ex = getelementptr %struct.adapter, ptr %1, i32 0, i32 10, i32 1, i32 %mul, i32 2, i32 4
  %40 = ptrtoint ptr %vlan_ex to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %vlan_ex, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.204, i32 noundef %41) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %exitcond457.not = icmp slt i32 %7, 2
  br i1 %exitcond457.not, label %for.body75.preheader.for.end80_crit_edge, label %for.body75.1

for.body75.preheader.for.end80_crit_edge:         ; preds = %for.body75.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end80

for.body75.1:                                     ; preds = %for.body75.preheader
  %vlan_ex.1 = getelementptr %struct.sge_eth_rxq, ptr %arrayidx, i32 1, i32 2, i32 4
  %42 = ptrtoint ptr %vlan_ex.1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %vlan_ex.1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.204, i32 noundef %43) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %smax456)
  %exitcond457.not.1 = icmp eq i32 %smax456, 2
  br i1 %exitcond457.not.1, label %for.body75.1.for.end80_crit_edge, label %for.body75.2

for.body75.1.for.end80_crit_edge:                 ; preds = %for.body75.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end80

for.body75.2:                                     ; preds = %for.body75.1
  %vlan_ex.2 = getelementptr %struct.sge_eth_rxq, ptr %arrayidx, i32 2, i32 2, i32 4
  %44 = ptrtoint ptr %vlan_ex.2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %vlan_ex.2, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.204, i32 noundef %45) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %smax456)
  %exitcond457.not.2 = icmp eq i32 %smax456, 3
  br i1 %exitcond457.not.2, label %for.body75.2.for.end80_crit_edge, label %for.body75.3

for.body75.2.for.end80_crit_edge:                 ; preds = %for.body75.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end80

for.body75.3:                                     ; preds = %for.body75.2
  call void @__sanitizer_cov_trace_pc() #20
  %vlan_ex.3 = getelementptr %struct.sge_eth_rxq, ptr %arrayidx, i32 3, i32 2, i32 4
  %46 = ptrtoint ptr %vlan_ex.3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %vlan_ex.3, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.204, i32 noundef %47) #18
  br label %for.end80

for.end80.sink.split:                             ; preds = %for.end68.critedge.sink.split, %for.end56.for.end80.sink.split_crit_edge
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.206) #18
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.207) #18
  br label %for.end104.critedge

for.end80:                                        ; preds = %for.body75.3, %for.body75.2.for.end80_crit_edge, %for.body75.1.for.end80_crit_edge, %for.body75.preheader.for.end80_crit_edge
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.207) #18
  br i1 %cmp15412, label %for.body87.preheader, label %for.end80.for.end104.critedge_crit_edge

for.end80.for.end104.critedge_crit_edge:          ; preds = %for.end80
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end104.critedge

for.body87.preheader:                             ; preds = %for.end80
  %smax458 = call i32 @llvm.smax.i32(i32 %7, i32 1)
  %lro_merged = getelementptr %struct.adapter, ptr %1, i32 0, i32 10, i32 1, i32 %mul, i32 2, i32 2
  %48 = ptrtoint ptr %lro_merged to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %lro_merged, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.204, i32 noundef %49) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %exitcond459.not = icmp slt i32 %7, 2
  br i1 %exitcond459.not, label %for.body99.preheader.critedge504, label %for.body87.1

for.body87.1:                                     ; preds = %for.body87.preheader
  %lro_merged.1 = getelementptr %struct.sge_eth_rxq, ptr %arrayidx, i32 1, i32 2, i32 2
  %50 = ptrtoint ptr %lro_merged.1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %lro_merged.1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.204, i32 noundef %51) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %smax458)
  %exitcond459.not.1 = icmp eq i32 %smax458, 2
  br i1 %exitcond459.not.1, label %for.body99.preheader.critedge503, label %for.body87.2

for.body87.2:                                     ; preds = %for.body87.1
  %lro_merged.2 = getelementptr %struct.sge_eth_rxq, ptr %arrayidx, i32 2, i32 2, i32 2
  %52 = ptrtoint ptr %lro_merged.2 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %lro_merged.2, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.204, i32 noundef %53) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %smax458)
  %exitcond459.not.2 = icmp eq i32 %smax458, 3
  br i1 %exitcond459.not.2, label %for.body99.preheader.critedge502, label %for.body87.3

for.body87.3:                                     ; preds = %for.body87.2
  call void @__sanitizer_cov_trace_pc() #20
  %lro_merged.3 = getelementptr %struct.sge_eth_rxq, ptr %arrayidx, i32 3, i32 2, i32 2
  %54 = ptrtoint ptr %lro_merged.3 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %lro_merged.3, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.204, i32 noundef %55) #18
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.208) #18
  br label %for.body99.preheader

for.body99.preheader.critedge502:                 ; preds = %for.body87.2
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.208) #18
  br label %for.body99.preheader

for.body99.preheader.critedge503:                 ; preds = %for.body87.1
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.208) #18
  br label %for.body99.preheader

for.body99.preheader.critedge504:                 ; preds = %for.body87.preheader
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.208) #18
  br label %for.body99.preheader

for.body99.preheader:                             ; preds = %for.body99.preheader.critedge504, %for.body99.preheader.critedge503, %for.body99.preheader.critedge502, %for.body87.3
  %smax460 = call i32 @llvm.smax.i32(i32 %7, i32 1)
  %lro_pkts = getelementptr %struct.adapter, ptr %1, i32 0, i32 10, i32 1, i32 %mul, i32 2, i32 1
  %56 = ptrtoint ptr %lro_pkts to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %lro_pkts, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.204, i32 noundef %57) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %exitcond461.not = icmp slt i32 %7, 2
  br i1 %exitcond461.not, label %for.body99.preheader.for.end104_crit_edge, label %for.body99.1

for.body99.preheader.for.end104_crit_edge:        ; preds = %for.body99.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end104

for.body99.1:                                     ; preds = %for.body99.preheader
  %lro_pkts.1 = getelementptr %struct.sge_eth_rxq, ptr %arrayidx, i32 1, i32 2, i32 1
  %58 = ptrtoint ptr %lro_pkts.1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %lro_pkts.1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.204, i32 noundef %59) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %smax460)
  %exitcond461.not.1 = icmp eq i32 %smax460, 2
  br i1 %exitcond461.not.1, label %for.body99.1.for.end104_crit_edge, label %for.body99.2

for.body99.1.for.end104_crit_edge:                ; preds = %for.body99.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end104

for.body99.2:                                     ; preds = %for.body99.1
  %lro_pkts.2 = getelementptr %struct.sge_eth_rxq, ptr %arrayidx, i32 2, i32 2, i32 1
  %60 = ptrtoint ptr %lro_pkts.2 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %lro_pkts.2, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.204, i32 noundef %61) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %smax460)
  %exitcond461.not.2 = icmp eq i32 %smax460, 3
  br i1 %exitcond461.not.2, label %for.body99.2.for.end104_crit_edge, label %for.body99.3

for.body99.2.for.end104_crit_edge:                ; preds = %for.body99.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end104

for.body99.3:                                     ; preds = %for.body99.2
  call void @__sanitizer_cov_trace_pc() #20
  %lro_pkts.3 = getelementptr %struct.sge_eth_rxq, ptr %arrayidx, i32 3, i32 2, i32 1
  %62 = ptrtoint ptr %lro_pkts.3 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %lro_pkts.3, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.204, i32 noundef %63) #18
  br label %for.end104

for.end104.critedge:                              ; preds = %for.end80.for.end104.critedge_crit_edge, %for.end80.sink.split
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.208) #18
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.209) #18
  br label %for.end138.critedge.sink.split

for.end104:                                       ; preds = %for.body99.3, %for.body99.2.for.end104_crit_edge, %for.body99.1.for.end104_crit_edge, %for.body99.preheader.for.end104_crit_edge
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.209) #18
  br i1 %cmp15412, label %for.body111.preheader, label %for.end104.for.end138.critedge.sink.split_crit_edge

for.end104.for.end138.critedge.sink.split_crit_edge: ; preds = %for.end104
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end138.critedge.sink.split

for.body111.preheader:                            ; preds = %for.end104
  %smax462 = call i32 @llvm.smax.i32(i32 %7, i32 1)
  %rx_drops = getelementptr %struct.adapter, ptr %1, i32 0, i32 10, i32 1, i32 %mul, i32 2, i32 5
  %64 = ptrtoint ptr %rx_drops to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rx_drops, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.204, i32 noundef %65) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %exitcond463.not = icmp slt i32 %7, 2
  br i1 %exitcond463.not, label %for.body123.preheader.critedge507, label %for.body111.1

for.body111.1:                                    ; preds = %for.body111.preheader
  %rx_drops.1 = getelementptr %struct.sge_eth_rxq, ptr %arrayidx, i32 1, i32 2, i32 5
  %66 = ptrtoint ptr %rx_drops.1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %rx_drops.1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.204, i32 noundef %67) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %smax462)
  %exitcond463.not.1 = icmp eq i32 %smax462, 2
  br i1 %exitcond463.not.1, label %for.body123.preheader.critedge506, label %for.body111.2

for.body111.2:                                    ; preds = %for.body111.1
  %rx_drops.2 = getelementptr %struct.sge_eth_rxq, ptr %arrayidx, i32 2, i32 2, i32 5
  %68 = ptrtoint ptr %rx_drops.2 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %rx_drops.2, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.204, i32 noundef %69) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %smax462)
  %exitcond463.not.2 = icmp eq i32 %smax462, 3
  br i1 %exitcond463.not.2, label %for.body123.preheader.critedge505, label %for.body111.3

for.body111.3:                                    ; preds = %for.body111.2
  call void @__sanitizer_cov_trace_pc() #20
  %rx_drops.3 = getelementptr %struct.sge_eth_rxq, ptr %arrayidx, i32 3, i32 2, i32 5
  %70 = ptrtoint ptr %rx_drops.3 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %rx_drops.3, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.204, i32 noundef %71) #18
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.210) #18
  br label %for.body123.preheader

for.body123.preheader.critedge505:                ; preds = %for.body111.2
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.210) #18
  br label %for.body123.preheader

for.body123.preheader.critedge506:                ; preds = %for.body111.1
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.210) #18
  br label %for.body123.preheader

for.body123.preheader.critedge507:                ; preds = %for.body111.preheader
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.210) #18
  br label %for.body123.preheader

for.body123.preheader:                            ; preds = %for.body123.preheader.critedge507, %for.body123.preheader.critedge506, %for.body123.preheader.critedge505, %for.body111.3
  %smax464 = call i32 @llvm.smax.i32(i32 %7, i32 1)
  %tso = getelementptr [8 x %struct.sge_eth_txq], ptr %sge, i32 0, i32 %mul, i32 2
  %72 = ptrtoint ptr %tso to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %tso, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.204, i32 noundef %73) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %exitcond465.not = icmp slt i32 %7, 2
  br i1 %exitcond465.not, label %for.body123.preheader.for.end127_crit_edge, label %for.body123.1

for.body123.preheader.for.end127_crit_edge:       ; preds = %for.body123.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end127

for.body123.1:                                    ; preds = %for.body123.preheader
  %tso.1 = getelementptr %struct.sge_eth_txq, ptr %arrayidx7, i32 1, i32 2
  %74 = ptrtoint ptr %tso.1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %tso.1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.204, i32 noundef %75) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %smax464)
  %exitcond465.not.1 = icmp eq i32 %smax464, 2
  br i1 %exitcond465.not.1, label %for.body123.1.for.end127_crit_edge, label %for.body123.2

for.body123.1.for.end127_crit_edge:               ; preds = %for.body123.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end127

for.body123.2:                                    ; preds = %for.body123.1
  %tso.2 = getelementptr %struct.sge_eth_txq, ptr %arrayidx7, i32 2, i32 2
  %76 = ptrtoint ptr %tso.2 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %tso.2, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.204, i32 noundef %77) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %smax464)
  %exitcond465.not.2 = icmp eq i32 %smax464, 3
  br i1 %exitcond465.not.2, label %for.body123.2.for.end127_crit_edge, label %for.body123.3

for.body123.2.for.end127_crit_edge:               ; preds = %for.body123.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end127

for.body123.3:                                    ; preds = %for.body123.2
  call void @__sanitizer_cov_trace_pc() #20
  %tso.3 = getelementptr %struct.sge_eth_txq, ptr %arrayidx7, i32 3, i32 2
  %78 = ptrtoint ptr %tso.3 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %tso.3, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.204, i32 noundef %79) #18
  br label %for.end127

for.end127:                                       ; preds = %for.body123.3, %for.body123.2.for.end127_crit_edge, %for.body123.1.for.end127_crit_edge, %for.body123.preheader.for.end127_crit_edge
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.211) #18
  br i1 %cmp15412, label %for.body134.preheader, label %for.end127.for.end149.sink.split_crit_edge

for.end127.for.end149.sink.split_crit_edge:       ; preds = %for.end127
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end149.sink.split

for.body134.preheader:                            ; preds = %for.end127
  %smax466 = call i32 @llvm.smax.i32(i32 %7, i32 1)
  %tx_cso = getelementptr [8 x %struct.sge_eth_txq], ptr %sge, i32 0, i32 %mul, i32 3
  %80 = ptrtoint ptr %tx_cso to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %tx_cso, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.204, i32 noundef %81) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %exitcond467.not = icmp slt i32 %7, 2
  br i1 %exitcond467.not, label %for.body145.preheader.critedge510, label %for.body134.1

for.body134.1:                                    ; preds = %for.body134.preheader
  %tx_cso.1 = getelementptr %struct.sge_eth_txq, ptr %arrayidx7, i32 1, i32 3
  %82 = ptrtoint ptr %tx_cso.1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %tx_cso.1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.204, i32 noundef %83) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %smax466)
  %exitcond467.not.1 = icmp eq i32 %smax466, 2
  br i1 %exitcond467.not.1, label %for.body145.preheader.critedge509, label %for.body134.2

for.body134.2:                                    ; preds = %for.body134.1
  %tx_cso.2 = getelementptr %struct.sge_eth_txq, ptr %arrayidx7, i32 2, i32 3
  %84 = ptrtoint ptr %tx_cso.2 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %tx_cso.2, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.204, i32 noundef %85) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %smax466)
  %exitcond467.not.2 = icmp eq i32 %smax466, 3
  br i1 %exitcond467.not.2, label %for.body145.preheader.critedge508, label %for.body134.3

for.body134.3:                                    ; preds = %for.body134.2
  call void @__sanitizer_cov_trace_pc() #20
  %tx_cso.3 = getelementptr %struct.sge_eth_txq, ptr %arrayidx7, i32 3, i32 3
  %86 = ptrtoint ptr %tx_cso.3 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %tx_cso.3, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.204, i32 noundef %87) #18
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.212) #18
  br label %for.body145.preheader

for.end138.critedge.sink.split:                   ; preds = %for.end104.for.end138.critedge.sink.split_crit_edge, %for.end104.critedge
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.210) #18
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.211) #18
  br label %for.end149.sink.split

for.body145.preheader.critedge508:                ; preds = %for.body134.2
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.212) #18
  br label %for.body145.preheader

for.body145.preheader.critedge509:                ; preds = %for.body134.1
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.212) #18
  br label %for.body145.preheader

for.body145.preheader.critedge510:                ; preds = %for.body134.preheader
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.212) #18
  br label %for.body145.preheader

for.body145.preheader:                            ; preds = %for.body145.preheader.critedge510, %for.body145.preheader.critedge509, %for.body145.preheader.critedge508, %for.body134.3
  %smax468 = call i32 @llvm.smax.i32(i32 %7, i32 1)
  %vlan_ins = getelementptr [8 x %struct.sge_eth_txq], ptr %sge, i32 0, i32 %mul, i32 4
  %88 = ptrtoint ptr %vlan_ins to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %vlan_ins, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.204, i32 noundef %89) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %exitcond469.not = icmp slt i32 %7, 2
  br i1 %exitcond469.not, label %for.body145.preheader.for.end149_crit_edge, label %for.body145.1

for.body145.preheader.for.end149_crit_edge:       ; preds = %for.body145.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end149

for.body145.1:                                    ; preds = %for.body145.preheader
  %vlan_ins.1 = getelementptr %struct.sge_eth_txq, ptr %arrayidx7, i32 1, i32 4
  %90 = ptrtoint ptr %vlan_ins.1 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %vlan_ins.1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.204, i32 noundef %91) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %smax468)
  %exitcond469.not.1 = icmp eq i32 %smax468, 2
  br i1 %exitcond469.not.1, label %for.body145.1.for.end149_crit_edge, label %for.body145.2

for.body145.1.for.end149_crit_edge:               ; preds = %for.body145.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end149

for.body145.2:                                    ; preds = %for.body145.1
  %vlan_ins.2 = getelementptr %struct.sge_eth_txq, ptr %arrayidx7, i32 2, i32 4
  %92 = ptrtoint ptr %vlan_ins.2 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %vlan_ins.2, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.204, i32 noundef %93) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %smax468)
  %exitcond469.not.2 = icmp eq i32 %smax468, 3
  br i1 %exitcond469.not.2, label %for.body145.2.for.end149_crit_edge, label %for.body145.3

for.body145.2.for.end149_crit_edge:               ; preds = %for.body145.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end149

for.body145.3:                                    ; preds = %for.body145.2
  call void @__sanitizer_cov_trace_pc() #20
  %vlan_ins.3 = getelementptr %struct.sge_eth_txq, ptr %arrayidx7, i32 3, i32 4
  %94 = ptrtoint ptr %vlan_ins.3 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %vlan_ins.3, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.204, i32 noundef %95) #18
  br label %for.end149

for.end149.sink.split:                            ; preds = %for.end138.critedge.sink.split, %for.end127.for.end149.sink.split_crit_edge
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.212) #18
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.213) #18
  br label %for.end172.critedge

for.end149:                                       ; preds = %for.body145.3, %for.body145.2.for.end149_crit_edge, %for.body145.1.for.end149_crit_edge, %for.body145.preheader.for.end149_crit_edge
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.213) #18
  br i1 %cmp15412, label %for.body156.preheader, label %for.end149.for.end172.critedge_crit_edge

for.end149.for.end172.critedge_crit_edge:         ; preds = %for.end149
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end172.critedge

for.body156.preheader:                            ; preds = %for.end149
  %smax470 = call i32 @llvm.smax.i32(i32 %7, i32 1)
  %stops = getelementptr [8 x %struct.sge_eth_txq], ptr %sge, i32 0, i32 %mul, i32 0, i32 4
  %96 = ptrtoint ptr %stops to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %stops, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.204, i32 noundef %97) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %exitcond471.not = icmp slt i32 %7, 2
  br i1 %exitcond471.not, label %for.body167.preheader.critedge513, label %for.body156.1

for.body156.1:                                    ; preds = %for.body156.preheader
  %stops.1 = getelementptr %struct.sge_eth_txq, ptr %arrayidx7, i32 1, i32 0, i32 4
  %98 = ptrtoint ptr %stops.1 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %stops.1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.204, i32 noundef %99) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %smax470)
  %exitcond471.not.1 = icmp eq i32 %smax470, 2
  br i1 %exitcond471.not.1, label %for.body167.preheader.critedge512, label %for.body156.2

for.body156.2:                                    ; preds = %for.body156.1
  %stops.2 = getelementptr %struct.sge_eth_txq, ptr %arrayidx7, i32 2, i32 0, i32 4
  %100 = ptrtoint ptr %stops.2 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %stops.2, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.204, i32 noundef %101) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %smax470)
  %exitcond471.not.2 = icmp eq i32 %smax470, 3
  br i1 %exitcond471.not.2, label %for.body167.preheader.critedge511, label %for.body156.3

for.body156.3:                                    ; preds = %for.body156.2
  call void @__sanitizer_cov_trace_pc() #20
  %stops.3 = getelementptr %struct.sge_eth_txq, ptr %arrayidx7, i32 3, i32 0, i32 4
  %102 = ptrtoint ptr %stops.3 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %stops.3, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.204, i32 noundef %103) #18
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.214) #18
  br label %for.body167.preheader

for.body167.preheader.critedge511:                ; preds = %for.body156.2
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.214) #18
  br label %for.body167.preheader

for.body167.preheader.critedge512:                ; preds = %for.body156.1
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.214) #18
  br label %for.body167.preheader

for.body167.preheader.critedge513:                ; preds = %for.body156.preheader
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.214) #18
  br label %for.body167.preheader

for.body167.preheader:                            ; preds = %for.body167.preheader.critedge513, %for.body167.preheader.critedge512, %for.body167.preheader.critedge511, %for.body156.3
  %smax472 = call i32 @llvm.smax.i32(i32 %7, i32 1)
  %restarts = getelementptr [8 x %struct.sge_eth_txq], ptr %sge, i32 0, i32 %mul, i32 0, i32 5
  %104 = ptrtoint ptr %restarts to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %restarts, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.204, i32 noundef %105) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %exitcond473.not = icmp slt i32 %7, 2
  br i1 %exitcond473.not, label %for.body167.preheader.for.end172_crit_edge, label %for.body167.1

for.body167.preheader.for.end172_crit_edge:       ; preds = %for.body167.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end172

for.body167.1:                                    ; preds = %for.body167.preheader
  %restarts.1 = getelementptr %struct.sge_eth_txq, ptr %arrayidx7, i32 1, i32 0, i32 5
  %106 = ptrtoint ptr %restarts.1 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %restarts.1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.204, i32 noundef %107) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %smax472)
  %exitcond473.not.1 = icmp eq i32 %smax472, 2
  br i1 %exitcond473.not.1, label %for.body167.1.for.end172_crit_edge, label %for.body167.2

for.body167.1.for.end172_crit_edge:               ; preds = %for.body167.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end172

for.body167.2:                                    ; preds = %for.body167.1
  %restarts.2 = getelementptr %struct.sge_eth_txq, ptr %arrayidx7, i32 2, i32 0, i32 5
  %108 = ptrtoint ptr %restarts.2 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %restarts.2, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.204, i32 noundef %109) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %smax472)
  %exitcond473.not.2 = icmp eq i32 %smax472, 3
  br i1 %exitcond473.not.2, label %for.body167.2.for.end172_crit_edge, label %for.body167.3

for.body167.2.for.end172_crit_edge:               ; preds = %for.body167.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end172

for.body167.3:                                    ; preds = %for.body167.2
  call void @__sanitizer_cov_trace_pc() #20
  %restarts.3 = getelementptr %struct.sge_eth_txq, ptr %arrayidx7, i32 3, i32 0, i32 5
  %110 = ptrtoint ptr %restarts.3 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %restarts.3, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.204, i32 noundef %111) #18
  br label %for.end172

for.end172.critedge:                              ; preds = %for.end149.for.end172.critedge_crit_edge, %for.end149.sink.split
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.214) #18
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.215) #18
  br label %for.end206.critedge.sink.split

for.end172:                                       ; preds = %for.body167.3, %for.body167.2.for.end172_crit_edge, %for.body167.1.for.end172_crit_edge, %for.body167.preheader.for.end172_crit_edge
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.215) #18
  br i1 %cmp15412, label %for.body179.preheader, label %for.end172.for.end206.critedge.sink.split_crit_edge

for.end172.for.end206.critedge.sink.split_crit_edge: ; preds = %for.end172
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end206.critedge.sink.split

for.body179.preheader:                            ; preds = %for.end172
  %smax474 = call i32 @llvm.smax.i32(i32 %7, i32 1)
  %mapping_err = getelementptr [8 x %struct.sge_eth_txq], ptr %sge, i32 0, i32 %mul, i32 5
  %112 = ptrtoint ptr %mapping_err to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %mapping_err, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.204, i32 noundef %113) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %exitcond475.not = icmp slt i32 %7, 2
  br i1 %exitcond475.not, label %for.body190.preheader.critedge516, label %for.body179.1

for.body179.1:                                    ; preds = %for.body179.preheader
  %mapping_err.1 = getelementptr %struct.sge_eth_txq, ptr %arrayidx7, i32 1, i32 5
  %114 = ptrtoint ptr %mapping_err.1 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %mapping_err.1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.204, i32 noundef %115) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %smax474)
  %exitcond475.not.1 = icmp eq i32 %smax474, 2
  br i1 %exitcond475.not.1, label %for.body190.preheader.critedge515, label %for.body179.2

for.body179.2:                                    ; preds = %for.body179.1
  %mapping_err.2 = getelementptr %struct.sge_eth_txq, ptr %arrayidx7, i32 2, i32 5
  %116 = ptrtoint ptr %mapping_err.2 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %mapping_err.2, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.204, i32 noundef %117) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %smax474)
  %exitcond475.not.2 = icmp eq i32 %smax474, 3
  br i1 %exitcond475.not.2, label %for.body190.preheader.critedge514, label %for.body179.3

for.body179.3:                                    ; preds = %for.body179.2
  call void @__sanitizer_cov_trace_pc() #20
  %mapping_err.3 = getelementptr %struct.sge_eth_txq, ptr %arrayidx7, i32 3, i32 5
  %118 = ptrtoint ptr %mapping_err.3 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %mapping_err.3, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.204, i32 noundef %119) #18
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.216) #18
  br label %for.body190.preheader

for.body190.preheader.critedge514:                ; preds = %for.body179.2
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.216) #18
  br label %for.body190.preheader

for.body190.preheader.critedge515:                ; preds = %for.body179.1
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.216) #18
  br label %for.body190.preheader

for.body190.preheader.critedge516:                ; preds = %for.body179.preheader
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.216) #18
  br label %for.body190.preheader

for.body190.preheader:                            ; preds = %for.body190.preheader.critedge516, %for.body190.preheader.critedge515, %for.body190.preheader.critedge514, %for.body179.3
  %smax476 = call i32 @llvm.smax.i32(i32 %7, i32 1)
  %alloc_failed = getelementptr %struct.adapter, ptr %1, i32 0, i32 10, i32 1, i32 %mul, i32 1, i32 4
  %120 = ptrtoint ptr %alloc_failed to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %alloc_failed, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.204, i32 noundef %121) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %exitcond477.not = icmp slt i32 %7, 2
  br i1 %exitcond477.not, label %for.body190.preheader.for.end194_crit_edge, label %for.body190.1

for.body190.preheader.for.end194_crit_edge:       ; preds = %for.body190.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end194

for.body190.1:                                    ; preds = %for.body190.preheader
  %alloc_failed.1 = getelementptr %struct.sge_eth_rxq, ptr %arrayidx, i32 1, i32 1, i32 4
  %122 = ptrtoint ptr %alloc_failed.1 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %alloc_failed.1, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.204, i32 noundef %123) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %smax476)
  %exitcond477.not.1 = icmp eq i32 %smax476, 2
  br i1 %exitcond477.not.1, label %for.body190.1.for.end194_crit_edge, label %for.body190.2

for.body190.1.for.end194_crit_edge:               ; preds = %for.body190.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end194

for.body190.2:                                    ; preds = %for.body190.1
  %alloc_failed.2 = getelementptr %struct.sge_eth_rxq, ptr %arrayidx, i32 2, i32 1, i32 4
  %124 = ptrtoint ptr %alloc_failed.2 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %alloc_failed.2, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.204, i32 noundef %125) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %smax476)
  %exitcond477.not.2 = icmp eq i32 %smax476, 3
  br i1 %exitcond477.not.2, label %for.body190.2.for.end194_crit_edge, label %for.body190.3

for.body190.2.for.end194_crit_edge:               ; preds = %for.body190.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end194

for.body190.3:                                    ; preds = %for.body190.2
  call void @__sanitizer_cov_trace_pc() #20
  %alloc_failed.3 = getelementptr %struct.sge_eth_rxq, ptr %arrayidx, i32 3, i32 1, i32 4
  %126 = ptrtoint ptr %alloc_failed.3 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %alloc_failed.3, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.204, i32 noundef %127) #18
  br label %for.end194

for.end194:                                       ; preds = %for.body190.3, %for.body190.2.for.end194_crit_edge, %for.body190.1.for.end194_crit_edge, %for.body190.preheader.for.end194_crit_edge
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.217) #18
  br i1 %cmp15412, label %for.body201.preheader, label %for.end194.for.end218.sink.split_crit_edge

for.end194.for.end218.sink.split_crit_edge:       ; preds = %for.end194
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end218.sink.split

for.body201.preheader:                            ; preds = %for.end194
  %smax478 = call i32 @llvm.smax.i32(i32 %7, i32 1)
  %large_alloc_failed = getelementptr %struct.adapter, ptr %1, i32 0, i32 10, i32 1, i32 %mul, i32 1, i32 5
  %128 = ptrtoint ptr %large_alloc_failed to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %large_alloc_failed, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.204, i32 noundef %129) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %exitcond479.not = icmp slt i32 %7, 2
  br i1 %exitcond479.not, label %for.body213.preheader.critedge519, label %for.body201.1

for.body201.1:                                    ; preds = %for.body201.preheader
  %large_alloc_failed.1 = getelementptr %struct.sge_eth_rxq, ptr %arrayidx, i32 1, i32 1, i32 5
  %130 = ptrtoint ptr %large_alloc_failed.1 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %large_alloc_failed.1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.204, i32 noundef %131) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %smax478)
  %exitcond479.not.1 = icmp eq i32 %smax478, 2
  br i1 %exitcond479.not.1, label %for.body213.preheader.critedge518, label %for.body201.2

for.body201.2:                                    ; preds = %for.body201.1
  %large_alloc_failed.2 = getelementptr %struct.sge_eth_rxq, ptr %arrayidx, i32 2, i32 1, i32 5
  %132 = ptrtoint ptr %large_alloc_failed.2 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %large_alloc_failed.2, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.204, i32 noundef %133) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %smax478)
  %exitcond479.not.2 = icmp eq i32 %smax478, 3
  br i1 %exitcond479.not.2, label %for.body213.preheader.critedge517, label %for.body201.3

for.body201.3:                                    ; preds = %for.body201.2
  call void @__sanitizer_cov_trace_pc() #20
  %large_alloc_failed.3 = getelementptr %struct.sge_eth_rxq, ptr %arrayidx, i32 3, i32 1, i32 5
  %134 = ptrtoint ptr %large_alloc_failed.3 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %large_alloc_failed.3, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.204, i32 noundef %135) #18
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.218) #18
  br label %for.body213.preheader

for.end206.critedge.sink.split:                   ; preds = %for.end172.for.end206.critedge.sink.split_crit_edge, %for.end172.critedge
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.216) #18
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.217) #18
  br label %for.end218.sink.split

for.body213.preheader.critedge517:                ; preds = %for.body201.2
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.218) #18
  br label %for.body213.preheader

for.body213.preheader.critedge518:                ; preds = %for.body201.1
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.218) #18
  br label %for.body213.preheader

for.body213.preheader.critedge519:                ; preds = %for.body201.preheader
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.218) #18
  br label %for.body213.preheader

for.body213.preheader:                            ; preds = %for.body213.preheader.critedge519, %for.body213.preheader.critedge518, %for.body213.preheader.critedge517, %for.body201.3
  %smax480 = call i32 @llvm.smax.i32(i32 %7, i32 1)
  %starving = getelementptr %struct.adapter, ptr %1, i32 0, i32 10, i32 1, i32 %mul, i32 1, i32 6
  %136 = ptrtoint ptr %starving to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %starving, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.204, i32 noundef %137) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %exitcond481.not = icmp slt i32 %7, 2
  br i1 %exitcond481.not, label %for.body213.preheader.for.end218_crit_edge, label %for.body213.1

for.body213.preheader.for.end218_crit_edge:       ; preds = %for.body213.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end218

for.body213.1:                                    ; preds = %for.body213.preheader
  %starving.1 = getelementptr %struct.sge_eth_rxq, ptr %arrayidx, i32 1, i32 1, i32 6
  %138 = ptrtoint ptr %starving.1 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %starving.1, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.204, i32 noundef %139) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %smax480)
  %exitcond481.not.1 = icmp eq i32 %smax480, 2
  br i1 %exitcond481.not.1, label %for.body213.1.for.end218_crit_edge, label %for.body213.2

for.body213.1.for.end218_crit_edge:               ; preds = %for.body213.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end218

for.body213.2:                                    ; preds = %for.body213.1
  %starving.2 = getelementptr %struct.sge_eth_rxq, ptr %arrayidx, i32 2, i32 1, i32 6
  %140 = ptrtoint ptr %starving.2 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %starving.2, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.204, i32 noundef %141) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %smax480)
  %exitcond481.not.2 = icmp eq i32 %smax480, 3
  br i1 %exitcond481.not.2, label %for.body213.2.for.end218_crit_edge, label %for.body213.3

for.body213.2.for.end218_crit_edge:               ; preds = %for.body213.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end218

for.body213.3:                                    ; preds = %for.body213.2
  call void @__sanitizer_cov_trace_pc() #20
  %starving.3 = getelementptr %struct.sge_eth_rxq, ptr %arrayidx, i32 3, i32 1, i32 6
  %142 = ptrtoint ptr %starving.3 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %starving.3, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.204, i32 noundef %143) #18
  br label %for.end218

for.end218.sink.split:                            ; preds = %for.end206.critedge.sink.split, %for.end194.for.end218.sink.split_crit_edge
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.218) #18
  br label %for.end218

for.end218:                                       ; preds = %for.end218.sink.split, %for.body213.3, %for.body213.2.for.end218_crit_edge, %for.body213.1.for.end218_crit_edge, %for.body213.preheader.for.end218_crit_edge
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  br label %cleanup

if.end221:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %sub1, i32 %div411)
  %cmp223 = icmp eq i32 %sub1, %div411
  br i1 %cmp223, label %if.then225, label %if.else

if.then225:                                       ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.195) #18
  %unhandled_irqs227 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 3, i32 6
  %144 = ptrtoint ptr %unhandled_irqs227 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %unhandled_irqs227, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.220, ptr noundef nonnull @.str.201, i32 noundef %145) #18
  %cidx = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 3, i32 2
  %146 = ptrtoint ptr %cidx to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %cidx, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.220, ptr noundef nonnull @.str.187, i32 noundef %147) #18
  %gen = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 3, i32 3
  %148 = ptrtoint ptr %gen to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %gen, align 8
  %conv228 = zext i8 %149 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.220, ptr noundef nonnull @.str.188, i32 noundef %conv228) #18
  br label %cleanup

if.else:                                          ; preds = %if.end221
  %sub222 = sub i32 %sub1, %div411
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub222)
  %cmp229 = icmp eq i32 %sub222, 1
  br i1 %cmp229, label %if.then231, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then231:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.198) #18
  %unhandled_irqs234 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 5, i32 6
  %150 = ptrtoint ptr %unhandled_irqs234 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %unhandled_irqs234, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.220, ptr noundef nonnull @.str.201, i32 noundef %151) #18
  %cidx235 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 5, i32 2
  %152 = ptrtoint ptr %cidx235 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %cidx235, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.220, ptr noundef nonnull @.str.187, i32 noundef %153) #18
  %gen236 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 5, i32 3
  %154 = ptrtoint ptr %gen236 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %gen236, align 8
  %conv237 = zext i8 %155 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.220, ptr noundef nonnull @.str.188, i32 noundef %conv237) #18
  br label %cleanup

cleanup:                                          ; preds = %if.then231, %if.else.cleanup_crit_edge, %if.then225, %for.end218
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @resources_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @resources_show, ptr noundef %1) #18
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @resources_show(ptr noundef %seq, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %vfres1 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 7, i32 4
  %2 = ptrtoint ptr %vfres1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vfres1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.221, ptr noundef nonnull @.str.222, i32 noundef %3) #18
  %neq = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 7, i32 4, i32 1
  %4 = ptrtoint ptr %neq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %neq, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.221, ptr noundef nonnull @.str.223, i32 noundef %5) #18
  %nethctrl = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 7, i32 4, i32 2
  %6 = ptrtoint ptr %nethctrl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nethctrl, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.221, ptr noundef nonnull @.str.224, i32 noundef %7) #18
  %niqflint = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 7, i32 4, i32 3
  %8 = ptrtoint ptr %niqflint to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %niqflint, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.221, ptr noundef nonnull @.str.225, i32 noundef %9) #18
  %niq = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 7, i32 4, i32 4
  %10 = ptrtoint ptr %niq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %niq, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.221, ptr noundef nonnull @.str.226, i32 noundef %11) #18
  %tc = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 7, i32 4, i32 5
  %12 = ptrtoint ptr %tc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tc, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.221, ptr noundef nonnull @.str.227, i32 noundef %13) #18
  %pmask = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 7, i32 4, i32 6
  %14 = ptrtoint ptr %pmask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pmask, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.228, ptr noundef nonnull @.str.229, i32 noundef %15) #18
  %nexactf = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 7, i32 4, i32 7
  %16 = ptrtoint ptr %nexactf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nexactf, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.221, ptr noundef nonnull @.str.230, i32 noundef %17) #18
  %r_caps = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 7, i32 4, i32 8
  %18 = ptrtoint ptr %r_caps to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %r_caps, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.228, ptr noundef nonnull @.str.231, i32 noundef %19) #18
  %wx_caps = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 7, i32 4, i32 9
  %20 = ptrtoint ptr %wx_caps to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %wx_caps, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.228, ptr noundef nonnull @.str.232, i32 noundef %21) #18
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @interfaces_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @seq_open(ptr noundef %file, ptr noundef nonnull @interfaces_sops) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %private, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @interfaces_start(ptr nocapture noundef readonly %seq, ptr nocapture noundef readonly %pos) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  %nports.i = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 7, i32 7
  %4 = ptrtoint ptr %nports.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nports.i, align 4
  %conv.i = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %conv.i)
  %cmp.not.i = icmp sgt i64 %1, %conv.i
  %6 = trunc i64 %1 to i32
  %conv2.i = add i32 %6, 1
  %7 = inttoptr i32 %conv2.i to ptr
  %cond.i = select i1 %cmp.not.i, ptr null, ptr %7
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %cond.i, %cond.true ], [ inttoptr (i32 1 to ptr), %entry.cond.end_crit_edge ]
  ret ptr %cond
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @interfaces_stop(ptr nocapture noundef %seq, ptr nocapture noundef %v) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @interfaces_next(ptr nocapture noundef readonly %seq, ptr nocapture noundef readnone %v, ptr nocapture noundef %pos) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %inc = add i64 %1, 1
  store i64 %inc, ptr %pos, align 8
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  %nports.i = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 7, i32 7
  %4 = ptrtoint ptr %nports.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nports.i, align 4
  %conv.i = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %inc, i64 %conv.i)
  %cmp.not.i = icmp sgt i64 %inc, %conv.i
  %6 = trunc i64 %inc to i32
  %conv2.i = add i32 %6, 1
  %7 = inttoptr i32 %conv2.i to ptr
  %cond.i = select i1 %cmp.not.i, ptr null, ptr %7
  ret ptr %cond.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @interfaces_show(ptr noundef %seq, ptr noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.233) #18
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %v to i32
  %sub = add i32 %2, -2
  %arrayidx = getelementptr %struct.adapter, ptr %1, i32 0, i32 11, i32 %sub
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %port_id = getelementptr i8, ptr %4, i32 2326
  %5 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %port_id, align 2
  %conv = zext i8 %6 to i32
  %viid = getelementptr i8, ptr %4, i32 2312
  %7 = ptrtoint ptr %viid to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %viid, align 4
  %conv1 = zext i16 %8 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.234, ptr noundef %4, i32 noundef %conv, i32 noundef %conv1) #18
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @t4vf_sge_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #18

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #19 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 230)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #19 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 230)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #18 = { nounwind }
attributes #19 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #20 = { nomerge }
attributes #21 = { cold nounwind }
attributes #22 = { nounwind allocsize(2) }
attributes #23 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !48, !49, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !77, !79, !80, !82, !84, !86, !87, !89, !91, !93, !95, !97, !99, !100, !101, !102, !103, !105, !106, !107, !109, !110, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !141, !143, !144, !145, !147, !148, !149, !151, !152, !153, !155, !156, !157, !159, !160, !161, !162, !164, !165, !166, !168, !169, !170, !171, !172, !173, !175, !176, !177, !178, !180, !181, !182, !184, !185, !186, !188, !189, !190, !192, !193, !194, !196, !197, !198, !200, !201, !202, !204, !205, !206, !208, !209, !210, !212, !213, !214, !216, !218, !219, !220, !221, !223, !224, !225, !226, !228, !229, !230, !232, !233, !234, !236, !237, !238, !240, !241, !242, !244, !246, !248, !250, !252, !254, !255, !256, !257, !259, !260, !261, !262, !264, !265, !266, !268, !269, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !311, !312, !313, !315, !316, !318, !319, !321, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !371, !373, !374, !376, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !411, !413, !414, !416, !418, !420, !422, !424, !426, !427, !429, !431, !433, !435, !437, !439, !441, !443, !444, !445}
!llvm.module.flags = !{!446, !447, !448, !449, !450, !451, !452, !453}
!llvm.ident = !{!454}

!0 = !{ptr @__param_msi, !1, !"__param_msi", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 90, i32 1}
!2 = !{ptr @__UNIQUE_ID_msitype351, !1, !"__UNIQUE_ID_msitype351", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_msi352, !4, !"__UNIQUE_ID_msi352", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 91, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 161, i32 8}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 164, i32 8}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 167, i32 8}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 170, i32 8}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 173, i32 8}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 176, i32 8}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 180, i32 8}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 186, i32 9}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 190, i32 9}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 194, i32 9}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 198, i32 9}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 202, i32 20}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 205, i32 20}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 216, i32 9}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 216, i32 15}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 216, i32 21}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 216, i32 27}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 216, i32 41}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 216, i32 54}
!43 = !{ptr @t4vf_os_portmod_changed.mod_str, !44, !"mod_str", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 215, i32 28}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 222, i32 3}
!47 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @t4vf_os_portmod_changed._entry, !46, !"_entry", i1 false, i1 false}
!52 = !{ptr @t4vf_os_portmod_changed._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 225, i32 3}
!55 = !{ptr @t4vf_os_portmod_changed._entry.24, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @t4vf_os_portmod_changed._entry_ptr.26, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 228, i32 3}
!59 = !{ptr @t4vf_os_portmod_changed._entry.27, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @t4vf_os_portmod_changed._entry_ptr.29, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 231, i32 3}
!63 = !{ptr @t4vf_os_portmod_changed._entry.30, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @t4vf_os_portmod_changed._entry_ptr.32, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.34, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 234, i32 3}
!67 = !{ptr @t4vf_os_portmod_changed._entry.33, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @t4vf_os_portmod_changed._entry_ptr.35, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.37, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 237, i32 3}
!71 = !{ptr @t4vf_os_portmod_changed._entry.36, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @t4vf_os_portmod_changed._entry_ptr.38, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @__UNIQUE_ID_description359, !74, !"__UNIQUE_ID_description359", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 3399, i32 1}
!75 = !{ptr @__UNIQUE_ID_author360, !76, !"__UNIQUE_ID_author360", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 3400, i32 1}
!77 = !{ptr @__UNIQUE_ID_file361, !78, !"__UNIQUE_ID_file361", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 3401, i32 1}
!79 = !{ptr @__UNIQUE_ID_license362, !78, !"__UNIQUE_ID_license362", i1 false, i1 false}
!80 = !{ptr @__initcall__kmod_cxgb4vf__363_3446_cxgb4vf_module_init6, !81, !"__initcall__kmod_cxgb4vf__363_3446_cxgb4vf_module_init6", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 3446, i32 1}
!82 = !{ptr @__exitcall_cxgb4vf_module_exit, !83, !"__exitcall_cxgb4vf_module_exit", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 3447, i32 1}
!84 = !{ptr @cxgb4vf_debugfs_root, !85, !"cxgb4vf_debugfs_root", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 127, i32 23}
!86 = !{ptr @__param_str_msi, !1, !"__param_str_msi", i1 false, i1 false}
!87 = !{ptr @msi, !88, !"msi", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 88, i32 12}
!89 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 3405, i32 11}
!91 = !{ptr @cxgb4vf_driver, !92, !"cxgb4vf_driver", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 3404, i32 26}
!93 = !{ptr @cxgb4vf_pci_tbl, !94, !"cxgb4vf_pci_tbl", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/../cxgb4/t4_pci_id_tbl.h", i32 94, i32 1}
!95 = !{ptr @.str.40, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2909, i32 41}
!97 = !{ptr @.str.41, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2917, i32 3}
!99 = !{ptr @.str.42, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.43, !98, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @cxgb4vf_pci_probe._entry, !98, !"_entry", i1 false, i1 false}
!102 = !{ptr @cxgb4vf_pci_probe._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.45, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2926, i32 3}
!105 = !{ptr @cxgb4vf_pci_probe._entry.44, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @cxgb4vf_pci_probe._entry_ptr.46, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @cxgb4vf_pci_probe.__key, !108, !"__key", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2960, i32 2}
!109 = !{ptr @.str.47, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @cxgb4vf_pci_probe.__key.48, !111, !"__key", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2961, i32 2}
!112 = !{ptr @.str.49, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.51, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2969, i32 3}
!115 = !{ptr @cxgb4vf_pci_probe._entry.50, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @cxgb4vf_pci_probe._entry_ptr.52, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.54, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2978, i32 3}
!119 = !{ptr @cxgb4vf_pci_probe._entry.53, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @cxgb4vf_pci_probe._entry_ptr.55, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.57, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2990, i32 4}
!123 = !{ptr @cxgb4vf_pci_probe._entry.56, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @cxgb4vf_pci_probe._entry_ptr.58, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.60, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 3020, i32 3}
!127 = !{ptr @cxgb4vf_pci_probe._entry.59, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @cxgb4vf_pci_probe._entry_ptr.61, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.63, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 3093, i32 4}
!131 = !{ptr @cxgb4vf_pci_probe._entry.62, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @cxgb4vf_pci_probe._entry_ptr.64, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.66, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 3106, i32 4}
!135 = !{ptr @cxgb4vf_pci_probe._entry.65, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @cxgb4vf_pci_probe._entry_ptr.67, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.69, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 3113, i32 4}
!139 = !{ptr @cxgb4vf_pci_probe._entry.68, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @cxgb4vf_pci_probe._entry_ptr.70, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.72, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 3122, i32 5}
!143 = !{ptr @cxgb4vf_pci_probe._entry.71, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @cxgb4vf_pci_probe._entry_ptr.73, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.75, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 3127, i32 4}
!147 = !{ptr @cxgb4vf_pci_probe._entry.74, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @cxgb4vf_pci_probe._entry_ptr.76, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.78, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 3141, i32 4}
!151 = !{ptr @cxgb4vf_pci_probe._entry.77, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @cxgb4vf_pci_probe._entry_ptr.79, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.81, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 3154, i32 4}
!155 = !{ptr @cxgb4vf_pci_probe._entry.80, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @cxgb4vf_pci_probe._entry_ptr.82, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.84, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 3183, i32 4}
!159 = !{ptr @.str.85, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @cxgb4vf_pci_probe._entry.83, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @cxgb4vf_pci_probe._entry_ptr.86, !158, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.88, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 3192, i32 3}
!164 = !{ptr @cxgb4vf_pci_probe._entry.87, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @cxgb4vf_pci_probe._entry_ptr.89, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.91, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 3212, i32 3}
!168 = !{ptr @cxgb4vf_pci_probe._entry.90, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @cxgb4vf_pci_probe._entry_ptr.92, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.93, !167, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @.str.94, !167, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @.str.95, !167, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @.str.96, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2534, i32 3}
!175 = !{ptr @.str.97, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @adap_init0._entry, !174, !"_entry", i1 false, i1 false}
!177 = !{ptr @adap_init0._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.99, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2548, i32 3}
!180 = !{ptr @adap_init0._entry.98, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @adap_init0._entry_ptr.100, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.102, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2554, i32 3}
!184 = !{ptr @adap_init0._entry.101, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @adap_init0._entry_ptr.103, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.105, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2560, i32 3}
!188 = !{ptr @adap_init0._entry.104, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @adap_init0._entry_ptr.106, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.108, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2566, i32 3}
!192 = !{ptr @adap_init0._entry.107, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @adap_init0._entry_ptr.109, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.111, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2572, i32 3}
!196 = !{ptr @adap_init0._entry.110, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @adap_init0._entry_ptr.112, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.114, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2578, i32 3}
!200 = !{ptr @adap_init0._entry.113, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @adap_init0._entry_ptr.115, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.117, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2622, i32 3}
!204 = !{ptr @adap_init0._entry.116, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @adap_init0._entry_ptr.118, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.120, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2629, i32 3}
!208 = !{ptr @adap_init0._entry.119, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @adap_init0._entry_ptr.121, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.123, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2634, i32 3}
!212 = !{ptr @adap_init0._entry.122, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @adap_init0._entry_ptr.124, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @cxgb4vf_netdev_ops, !215, !"cxgb4vf_netdev_ops", i1 false, i1 false}
!215 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2840, i32 36}
!216 = !{ptr @.str.125, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 795, i32 3}
!218 = !{ptr @.str.126, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @adapter_up._entry, !217, !"_entry", i1 false, i1 false}
!220 = !{ptr @adapter_up._entry_ptr, !217, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.127, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 514, i32 4}
!223 = !{ptr @.str.128, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @fwevtq_handler._entry, !222, !"_entry", i1 false, i1 false}
!225 = !{ptr @fwevtq_handler._entry_ptr, !222, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.130, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 548, i32 4}
!228 = !{ptr @fwevtq_handler._entry.129, !227, !"_entry", i1 false, i1 false}
!229 = !{ptr @fwevtq_handler._entry_ptr.131, !227, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.133, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 554, i32 4}
!232 = !{ptr @fwevtq_handler._entry.132, !231, !"_entry", i1 false, i1 false}
!233 = !{ptr @fwevtq_handler._entry_ptr.134, !231, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.136, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 560, i32 4}
!236 = !{ptr @fwevtq_handler._entry.135, !235, !"_entry", i1 false, i1 false}
!237 = !{ptr @fwevtq_handler._entry_ptr.137, !235, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.139, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 576, i32 3}
!240 = !{ptr @fwevtq_handler._entry.138, !239, !"_entry", i1 false, i1 false}
!241 = !{ptr @fwevtq_handler._entry_ptr.140, !239, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @.str.141, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 358, i32 4}
!244 = !{ptr @.str.142, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 371, i32 6}
!246 = !{ptr @cxgb4vf_ethtool_ops, !247, !"cxgb4vf_ethtool_ops", i1 false, i1 false}
!247 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 1928, i32 33}
!248 = !{ptr @.str.143, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 1560, i32 4}
!250 = !{ptr @stats_strings, !251, !"stats_strings", i1 false, i1 false}
!251 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 1739, i32 19}
!252 = !{ptr @.str.144, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2828, i32 3}
!254 = !{ptr @.str.145, !253, !"<string literal>", i1 false, i1 false}
!255 = !{ptr @enable_msix._entry, !253, !"_entry", i1 false, i1 false}
!256 = !{ptr @enable_msix._entry_ptr, !253, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.146, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2457, i32 3}
!259 = !{ptr @.str.147, !258, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @size_nports_qsets._entry, !258, !"_entry", i1 false, i1 false}
!261 = !{ptr @size_nports_qsets._entry_ptr, !258, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @.str.149, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2470, i32 3}
!264 = !{ptr @size_nports_qsets._entry.148, !263, !"_entry", i1 false, i1 false}
!265 = !{ptr @size_nports_qsets._entry_ptr.150, !263, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @.str.152, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2503, i32 3}
!268 = !{ptr @size_nports_qsets._entry.151, !267, !"_entry", i1 false, i1 false}
!269 = !{ptr @size_nports_qsets._entry_ptr.153, !267, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @.str.154, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2392, i32 4}
!272 = !{ptr @.str.155, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2393, i32 4}
!274 = !{ptr @.str.156, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2394, i32 4}
!276 = !{ptr @.str.157, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2395, i32 4}
!278 = !{ptr @.str.158, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2396, i32 4}
!280 = distinct !{null, !281, !"debugfs_files", i1 false, i1 false}
!281 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2391, i32 37}
!282 = !{ptr @mboxlog_fops, !283, !"mboxlog_fops", i1 false, i1 false}
!283 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2035, i32 1}
!284 = !{ptr @mboxlog_sops, !285, !"mboxlog_sops", i1 false, i1 false}
!285 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2028, i32 36}
!286 = !{ptr @.str.159, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 1976, i32 7}
!288 = !{ptr @.str.160, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 1977, i32 7}
!290 = !{ptr @.str.161, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 1977, i32 15}
!292 = !{ptr @.str.162, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 1977, i32 25}
!294 = !{ptr @.str.163, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 1977, i32 34}
!296 = !{ptr @.str.164, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 1978, i32 7}
!298 = !{ptr @.str.165, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 1991, i32 18}
!300 = !{ptr @.str.166, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 1999, i32 19}
!302 = !{ptr @.str.167, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2001, i32 16}
!304 = !{ptr @sge_qinfo_fops, !305, !"sge_qinfo_fops", i1 false, i1 false}
!305 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2170, i32 1}
!306 = !{ptr @sge_qinfo_sops, !307, !"sge_qinfo_sops", i1 false, i1 false}
!307 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2163, i32 36}
!308 = !{ptr @.str.168, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2066, i32 3}
!310 = !{ptr @.str.169, !309, !"<string literal>", i1 false, i1 false}
!311 = !{ptr @.str.170, !309, !"<string literal>", i1 false, i1 false}
!312 = !{ptr @.str.171, !309, !"<string literal>", i1 false, i1 false}
!313 = !{ptr @.str.172, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2067, i32 3}
!315 = !{ptr @.str.173, !314, !"<string literal>", i1 false, i1 false}
!316 = !{ptr @.str.174, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2071, i32 3}
!318 = !{ptr @.str.175, !317, !"<string literal>", i1 false, i1 false}
!319 = !{ptr @.str.176, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2076, i32 3}
!321 = !{ptr @.str.177, !320, !"<string literal>", i1 false, i1 false}
!322 = !{ptr @.str.178, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2077, i32 3}
!324 = !{ptr @.str.179, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2078, i32 3}
!326 = !{ptr @.str.180, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2079, i32 3}
!328 = !{ptr @.str.181, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2080, i32 3}
!330 = !{ptr @.str.182, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2081, i32 3}
!332 = !{ptr @.str.183, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2082, i32 3}
!334 = !{ptr @.str.184, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2083, i32 3}
!336 = !{ptr @.str.185, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2084, i32 3}
!338 = !{ptr @.str.186, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2085, i32 3}
!340 = !{ptr @.str.187, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2087, i32 3}
!342 = !{ptr @.str.188, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2088, i32 3}
!344 = !{ptr @.str.189, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2089, i32 3}
!346 = !{ptr @.str.190, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2090, i32 3}
!348 = !{ptr @.str.191, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2091, i32 3}
!350 = !{ptr @.str.192, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2092, i32 3}
!352 = !{ptr @.str.193, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2093, i32 3}
!354 = !{ptr @.str.194, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2101, i32 19}
!356 = !{ptr @.str.195, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2101, i32 45}
!358 = !{ptr @.str.196, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2102, i32 19}
!360 = !{ptr @.str.197, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2107, i32 35}
!362 = !{ptr @.str.198, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2112, i32 45}
!364 = !{ptr @sge_qstats_fops, !365, !"sge_qstats_fops", i1 false, i1 false}
!365 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2299, i32 1}
!366 = !{ptr @sge_qstats_sops, !367, !"sge_qstats_sops", i1 false, i1 false}
!367 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2292, i32 36}
!368 = !{ptr @.str.199, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2206, i32 3}
!370 = !{ptr @.str.200, !369, !"<string literal>", i1 false, i1 false}
!371 = !{ptr @.str.201, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2211, i32 3}
!373 = !{ptr @.str.202, !372, !"<string literal>", i1 false, i1 false}
!374 = !{ptr @.str.203, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2212, i32 3}
!376 = !{ptr @.str.204, !375, !"<string literal>", i1 false, i1 false}
!377 = !{ptr @.str.205, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2213, i32 3}
!379 = !{ptr @.str.206, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2214, i32 3}
!381 = !{ptr @.str.207, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2215, i32 3}
!383 = !{ptr @.str.208, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2216, i32 3}
!385 = !{ptr @.str.209, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2217, i32 3}
!387 = !{ptr @.str.210, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2218, i32 3}
!389 = !{ptr @.str.211, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2219, i32 3}
!391 = !{ptr @.str.212, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2220, i32 3}
!393 = !{ptr @.str.213, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2221, i32 3}
!395 = !{ptr @.str.214, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2222, i32 3}
!397 = !{ptr @.str.215, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2223, i32 3}
!399 = !{ptr @.str.216, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2224, i32 3}
!401 = !{ptr @.str.217, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2225, i32 3}
!403 = !{ptr @.str.218, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2226, i32 3}
!405 = !{ptr @.str.219, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2234, i32 19}
!407 = !{ptr @.str.220, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2235, i32 19}
!409 = !{ptr @resources_fops, !410, !"resources_fops", i1 false, i1 false}
!410 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2328, i32 1}
!411 = !{ptr @.str.221, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2313, i32 2}
!413 = !{ptr @.str.222, !412, !"<string literal>", i1 false, i1 false}
!414 = !{ptr @.str.223, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2314, i32 2}
!416 = !{ptr @.str.224, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2315, i32 2}
!418 = !{ptr @.str.225, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2316, i32 2}
!420 = !{ptr @.str.226, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2317, i32 2}
!422 = !{ptr @.str.227, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2318, i32 2}
!424 = !{ptr @.str.228, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2319, i32 2}
!426 = !{ptr @.str.229, !425, !"<string literal>", i1 false, i1 false}
!427 = !{ptr @.str.230, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2320, i32 2}
!429 = !{ptr @.str.231, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2321, i32 2}
!431 = !{ptr @.str.232, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2322, i32 2}
!433 = !{ptr @interfaces_fops, !434, !"interfaces_fops", i1 false, i1 false}
!434 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2380, i32 1}
!435 = !{ptr @interfaces_sops, !436, !"interfaces_sops", i1 false, i1 false}
!436 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2373, i32 36}
!437 = !{ptr @.str.233, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2336, i32 17}
!439 = !{ptr @.str.234, !440, !"<string literal>", i1 false, i1 false}
!440 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 2343, i32 19}
!441 = !{ptr @.str.235, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c", i32 3423, i32 3}
!443 = !{ptr @.str.236, !442, !"<string literal>", i1 false, i1 false}
!444 = !{ptr @cxgb4vf_module_init._entry, !442, !"_entry", i1 false, i1 false}
!445 = !{ptr @cxgb4vf_module_init._entry_ptr, !442, !"_entry_ptr", i1 false, i1 false}
!446 = !{i32 1, !"wchar_size", i32 2}
!447 = !{i32 1, !"min_enum_size", i32 4}
!448 = !{i32 8, !"branch-target-enforcement", i32 0}
!449 = !{i32 8, !"sign-return-address", i32 0}
!450 = !{i32 8, !"sign-return-address-all", i32 0}
!451 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!452 = !{i32 7, !"uwtable", i32 1}
!453 = !{i32 7, !"frame-pointer", i32 2}
!454 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!455 = !{i32 0, i32 33}
!456 = !{!"branch_weights", i32 2000, i32 1}
!457 = !{i64 2157240403, i64 2157240920, i64 2157240440, i64 2157240496, i64 2157240530, i64 2157240554, i64 2157240595, i64 2157240616, i64 2157240644, i64 2157240678}
!458 = !{!"branch_weights", i32 1, i32 2000}
!459 = !{i64 2157238538, i64 2157239055, i64 2157238575, i64 2157238631, i64 2157238665, i64 2157238689, i64 2157238730, i64 2157238751, i64 2157238779, i64 2157238813}
!460 = !{i64 2157203534, i64 2157204051, i64 2157203571, i64 2157203627, i64 2157203661, i64 2157203685, i64 2157203726, i64 2157203747, i64 2157203775, i64 2157203809}
!461 = !{!"auto-init"}
!462 = !{i64 2157148934, i64 2157149450, i64 2157148971, i64 2157149027, i64 2157149061, i64 2157149085, i64 2157149126, i64 2157149147, i64 2157149175, i64 2157149209}
!463 = !{i64 2156930353}
!464 = !{i64 5073458}
!465 = !{i64 5073876}
!466 = !{i64 2156929963}
