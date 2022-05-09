; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/broadcom/b44.c_pt.bc'
source_filename = "../drivers/net/ethernet/broadcom/b44.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.ssb_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ssb_device_id = type { i16, i16, i8, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ssb_device = type { ptr, ptr, ptr, ptr, %struct.ssb_device_id, i8, i32, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.120, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ssb_bus = type { ptr, ptr, ptr, %union.anon.121, %struct.spinlock, i32, %union.anon.122, i32, %struct.mutex, i16, i8, i16, i16, i8, [16 x %struct.ssb_device], i8, i32, %struct.ssb_chipcommon, %struct.ssb_pcicore, %struct.ssb_mipscore, %struct.ssb_extif, %struct.ssb_boardinfo, %struct.ssb_sprom, i8, %struct.gpio_chip, ptr, %struct.list_head, i8, i32 }
%union.anon.121 = type { i32 }
%union.anon.122 = type { ptr }
%struct.ssb_chipcommon = type { ptr, i32, i32, i16, %struct.spinlock, %struct.ssb_chipcommon_pmu, i32, i32 }
%struct.ssb_chipcommon_pmu = type { i8, i32 }
%struct.ssb_pcicore = type { ptr, i8 }
%struct.ssb_mipscore = type {}
%struct.ssb_extif = type {}
%struct.ssb_boardinfo = type { i16, i16 }
%struct.ssb_sprom = type { i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, [2 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [4 x %struct.ssb_sprom_core_pwr_info], %struct.anon.124, %struct.anon.125, [8 x i16], [8 x i16], [8 x i16], [8 x i16], i8, [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8 }
%struct.ssb_sprom_core_pwr_info = type { i8, i8, i8, i8, i8, i8, [4 x i16], [4 x i16], [4 x i16], [4 x i16] }
%struct.anon.124 = type { i8, i8, i8, i8 }
%struct.anon.125 = type { %struct.anon.126, %struct.anon.127 }
%struct.anon.126 = type { i8, i8, i8, i8, i8 }
%struct.anon.127 = type { i8, i8, i8, i8, i8 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.128, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.128 = type { ptr }
%struct.ssb_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ring_info = type { ptr, i32 }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.rx_header = type { i16, i16, [12 x i16] }
%struct.b44 = type { %struct.spinlock, i32, i32, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %struct.napi_struct, i32, i32, i32, %struct.timer_list, %struct.b44_hw_stats, ptr, ptr, i32, i32, i32, i32, i8, i8, ptr, i32, %struct.mii_if_info }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.b44_hw_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mii_if_info = type { i32, i32, i32, i32, i8, ptr, ptr, ptr }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.page = type { i32, %union.anon.2, %union.anon.96, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.96 = type { %struct.atomic_t }
%struct.dma_desc = type { i32, i32 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.ifreq = type { %union.anon.104, %union.anon.105 }
%union.anon.104 = type { [16 x i8] }
%union.anon.105 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.123, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.123 = type { ptr }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.119, i32 }
%struct.anon.119 = type { [3 x i32], [3 x i32], [3 x i32] }

@__UNIQUE_ID_author353 = internal constant [79 x i8] c"b44.author=Felix Fietkau, Florian Schirmer, Pekka Pietikainen, David S. Miller\00", section ".modinfo", align 1
@__UNIQUE_ID_description354 = internal constant [62 x i8] c"b44.description=Broadcom 44xx/47xx 10/100 PCI ethernet driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file355 = internal constant [43 x i8] c"b44.file=drivers/net/ethernet/broadcom/b44\00", section ".modinfo", align 1
@__UNIQUE_ID_license356 = internal constant [16 x i8] c"b44.license=GPL\00", section ".modinfo", align 1
@__param_str_b44_debug = internal constant [14 x i8] c"b44.b44_debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@b44_debug = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_b44_debug = internal constant %struct.kernel_param { ptr @__param_str_b44_debug, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @b44_debug } }, section "__param", align 4
@__UNIQUE_ID_b44_debugtype357 = internal constant [27 x i8] c"b44.parmtype=b44_debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_b44_debug358 = internal constant [64 x i8] c"b44.parm=b44_debug:B44 bitmapped debugging message enable value\00", section ".modinfo", align 1
@b44_ssb_driver = internal global { %struct.ssb_driver, [56 x i8] } { %struct.ssb_driver { ptr @.str, ptr @b44_ssb_tbl, ptr @b44_init_one, ptr @b44_remove_one, ptr @b44_suspend, ptr @b44_resume, ptr null, %struct.device_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__initcall__kmod_b44__363_2613_b44_init6 = internal global ptr @b44_init, section ".initcall6.init", align 4
@__exitcall_b44_cleanup = internal global ptr @b44_cleanup, section ".exitcall.exit", align 4
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"b44\00", [28 x i8] zeroinitializer }, align 32
@b44_ssb_tbl = internal constant { [2 x %struct.ssb_device_id], [20 x i8] } { [2 x %struct.ssb_device_id] [%struct.ssb_device_id { i16 16963, i16 2054, i8 -1, i8 0 }, %struct.ssb_device_id zeroinitializer], [20 x i8] zeroinitializer }, align 32
@instance = internal global { i32, [28 x i8] } zeroinitializer, align 32
@b44_init_one.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&bp->lock\00", [22 x i8] zeroinitializer }, align 32
@b44_init_one.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&(&bp->hw_stats.syncp)->seq\00", [36 x i8] zeroinitializer }, align 32
@b44_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @b44_open, ptr @b44_close, ptr @b44_start_xmit, ptr null, ptr null, ptr null, ptr @b44_set_rx_mode, ptr @b44_set_mac_addr, ptr @eth_validate_addr, ptr null, ptr @b44_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @b44_change_mtu, ptr null, ptr @b44_tx_timeout, ptr @b44_get_stats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @b44_poll_controller, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@b44_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @b44_get_drvinfo, ptr null, ptr null, ptr @b44_get_wol, ptr @b44_set_wol, ptr @b44_get_msglevel, ptr @b44_set_msglevel, ptr @b44_nway_reset, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @b44_get_ringparam, ptr @b44_set_ringparam, ptr null, ptr @b44_get_pauseparam, ptr @b44_set_pauseparam, ptr null, ptr @b44_get_strings, ptr null, ptr @b44_get_ethtool_stats, ptr null, ptr null, ptr null, ptr null, ptr @b44_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @b44_get_link_ksettings, ptr @b44_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@b44_init_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 2388, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to powerup the bus\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"b44_init_one\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/net/ethernet/broadcom/b44.c\00", [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@b44_init_one._entry_ptr = internal global ptr @b44_init_one._entry, section ".printk_index", align 4
@b44_init_one._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 2395, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Required 30BIT DMA mask unsupported by the system\0A\00", [45 x i8] zeroinitializer }, align 32
@b44_init_one._entry_ptr.11 = internal global ptr @b44_init_one._entry.9, section ".printk_index", align 4
@b44_init_one._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.6, i32 2402, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Problem fetching invariants of chip, aborting\0A\00", [49 x i8] zeroinitializer }, align 32
@b44_init_one._entry_ptr.14 = internal global ptr @b44_init_one._entry.12, section ".printk_index", align 4
@b44_init_one._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.5, ptr @.str.6, i32 2407, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"No PHY present on this MAC, aborting\0A\00", [58 x i8] zeroinitializer }, align 32
@b44_init_one._entry_ptr.17 = internal global ptr @b44_init_one._entry.15, section ".printk_index", align 4
@b44_init_one._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.5, ptr @.str.6, i32 2428, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Cannot register net device, aborting\0A\00", [58 x i8] zeroinitializer }, align 32
@b44_init_one._entry_ptr.20 = internal global ptr @b44_init_one._entry.18, section ".printk_index", align 4
@b44_init_one._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.5, ptr @.str.6, i32 2444, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"phy reset failed\0A\00", [46 x i8] zeroinitializer }, align 32
@b44_init_one._entry_ptr.23 = internal global ptr @b44_init_one._entry.21, section ".printk_index", align 4
@b44_init_one._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.5, ptr @.str.6, i32 2451, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Cannot register PHY, aborting\0A\00", [33 x i8] zeroinitializer }, align 32
@b44_init_one._entry_ptr.26 = internal global ptr @b44_init_one._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %pM\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Broadcom 44xx/47xx 10/100 PCI ethernet driver\00", [50 x i8] zeroinitializer }, align 32
@b44_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"(&bp->timer)\00", [19 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@dma_desc_sync_size = internal global { i1, [31 x i8] } zeroinitializer, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.32 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"BUG!  Timeout waiting for bit %08x of register %lx to %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"clear\00", [26 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"set\00", [28 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Remote fault detected in PHY\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Jabber detected in PHY\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Link is down\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Link is up at %d Mbps, %s duplex\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"full\00", [27 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"half\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Flow control is %s for TX and %s for RX\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"late interrupt\0A\00", [16 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"powering down PHY\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"BUG! Tx Ring full when queue awake!\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"transmit timed out, resetting\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SSB\00", [28 x i8] zeroinitializer }, align 32
@b44_gstrings = internal constant { [47 x [32 x i8]], [352 x i8] } { [47 x [32 x i8]] [[32 x i8] c"tx_good_octets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_good_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_octets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_broadcast_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_multicast_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_len_64\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_len_65_to_127\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_len_128_to_255\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_len_256_to_511\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_len_512_to_1023\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_len_1024_to_max\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_jabber_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_oversize_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_fragment_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_underruns\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_total_cols\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_single_cols\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_multiple_cols\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_excessive_cols\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_late_cols\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_defered\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_carrier_lost\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_pause_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_good_octets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_good_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_octets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_broadcast_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_multicast_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_len_64\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_len_65_to_127\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_len_128_to_255\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_len_256_to_511\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_len_512_to_1023\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_len_1024_to_max\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_jabber_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_oversize_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_fragment_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_missed_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_crc_align_errs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_undersize\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_crc_errs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_align_errs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_symbol_errs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_pause_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_nonpause_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], [352 x i8] zeroinitializer }, align 32
@b44_get_invariants._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.6, i32 2183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013b44: Invalid MAC address found in EEPROM\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"b44_get_invariants\00", [45 x i8] zeroinitializer }, align 32
@b44_get_invariants._entry_ptr = internal global ptr @b44_get_invariants._entry, section ".printk_index", align 4
@.str.52 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"PHY Reset would not complete\0A\00", [34 x i8] zeroinitializer }, align 32
@b44_register_phy_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.6, i32 2264, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mdiobus_alloc() failed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"b44_register_phy_one\00", [43 x i8] zeroinitializer }, align 32
@b44_register_phy_one._entry_ptr = internal global ptr @b44_register_phy_one._entry, section ".printk_index", align 4
@.str.55 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"b44_eth_mii\00", [20 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%x\00", [29 x i8] zeroinitializer }, align 32
@b44_register_phy_one._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.54, ptr @.str.6, i32 2281, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to register MII bus\0A\00", [36 x i8] zeroinitializer }, align 32
@b44_register_phy_one._entry_ptr.59 = internal global ptr @b44_register_phy_one._entry.57, section ".printk_index", align 4
@b44_register_phy_one._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.54, ptr @.str.6, i32 2290, ptr @.str.62, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"could not find PHY at %i, use fixed one\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@b44_register_phy_one._entry_ptr.63 = internal global ptr @b44_register_phy_one._entry.60, section ".printk_index", align 4
@.str.64 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s:%02x\00", [24 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fixed-0\00", [24 x i8] zeroinitializer }, align 32
@b44_register_phy_one._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.54, ptr @.str.6, i32 2304, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"could not attach PHY at %i\0A\00", [36 x i8] zeroinitializer }, align 32
@b44_register_phy_one._entry_ptr.68 = internal global ptr @b44_register_phy_one._entry.66, section ".printk_index", align 4
@b44_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.69, ptr @.str.6, i32 2528, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"b44_resume\00", [21 x i8] zeroinitializer }, align 32
@b44_resume._entry_ptr = internal global ptr @b44_resume._entry, section ".printk_index", align 4
@.str.70 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"request_irq failed\0A\00", [44 x i8] zeroinitializer }, align 32
@b44_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @b44_pci_tbl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@b44_pci_tbl = internal constant { [4 x %struct.pci_device_id], [32 x i8] } { [4 x %struct.pci_device_id] [%struct.pci_device_id { i32 5348, i32 17409, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5348, i32 17410, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5348, i32 5900, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.71 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 100]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.74 = private unnamed_addr constant [10 x i8] c"b44_debug\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 100, i32 12 }
@___asan_gen_.77 = private unnamed_addr constant [15 x i8] c"b44_ssb_driver\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 2565, i32 26 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 2566, i32 11 }
@___asan_gen_.83 = private unnamed_addr constant [12 x i8] c"b44_ssb_tbl\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 120, i32 35 }
@___asan_gen_.86 = private unnamed_addr constant [9 x i8] c"instance\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 138, i32 12 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 2371, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 2372, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant [15 x i8] c"b44_netdev_ops\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 2199, i32 36 }
@___asan_gen_.104 = private unnamed_addr constant [16 x i8] c"b44_ethtool_ops\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 2120, i32 33 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 2387, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 2394, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 2401, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 2407, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 2428, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 2444, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 2451, i32 4 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 2457, i32 19 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 2457, i32 31 }
@___asan_gen_.167 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 1473, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 326, i32 6 }
@___asan_gen_.179 = private unnamed_addr constant [19 x i8] c"dma_desc_sync_size\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 191, i32 24 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 192, i32 26 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 192, i32 36 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 592, i32 25 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 594, i32 25 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 523, i32 24 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 525, i32 24 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 527, i32 45 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 527, i32 54 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 529, i32 24 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 530, i32 42 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 530, i32 49 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 929, i32 21 }
@___asan_gen_.220 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 271, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 1352, i32 23 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 983, i32 19 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 954, i32 18 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 1799, i32 27 }
@___asan_gen_.234 = private unnamed_addr constant [13 x i8] c"b44_gstrings\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 140, i32 19 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 2183, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 351, i32 24 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 2264, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 2272, i32 18 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 2275, i32 41 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 2281, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 2288, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 2293, i32 36 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 2293, i32 48 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 2303, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 2527, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 2547, i32 19 }
@___asan_gen_.300 = private unnamed_addr constant [15 x i8] c"b44_pci_driver\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 114, i32 26 }
@___asan_gen_.303 = private unnamed_addr constant [12 x i8] c"b44_pci_tbl\00", align 1
@___asan_gen_.304 = private constant [39 x i8] c"../drivers/net/ethernet/broadcom/b44.c\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 106, i32 35 }
@llvm.compiler.used = appending global [101 x ptr] [ptr @__UNIQUE_ID_author353, ptr @__UNIQUE_ID_b44_debug358, ptr @__UNIQUE_ID_b44_debugtype357, ptr @__UNIQUE_ID_description354, ptr @__UNIQUE_ID_file355, ptr @__UNIQUE_ID_license356, ptr @__exitcall_b44_cleanup, ptr @__initcall__kmod_b44__363_2613_b44_init6, ptr @__param_b44_debug, ptr @b44_cleanup, ptr @b44_get_invariants._entry, ptr @b44_get_invariants._entry_ptr, ptr @b44_init_one._entry, ptr @b44_init_one._entry.12, ptr @b44_init_one._entry.15, ptr @b44_init_one._entry.18, ptr @b44_init_one._entry.21, ptr @b44_init_one._entry.24, ptr @b44_init_one._entry.9, ptr @b44_init_one._entry_ptr, ptr @b44_init_one._entry_ptr.11, ptr @b44_init_one._entry_ptr.14, ptr @b44_init_one._entry_ptr.17, ptr @b44_init_one._entry_ptr.20, ptr @b44_init_one._entry_ptr.23, ptr @b44_init_one._entry_ptr.26, ptr @b44_register_phy_one._entry, ptr @b44_register_phy_one._entry.57, ptr @b44_register_phy_one._entry.60, ptr @b44_register_phy_one._entry.66, ptr @b44_register_phy_one._entry_ptr, ptr @b44_register_phy_one._entry_ptr.59, ptr @b44_register_phy_one._entry_ptr.63, ptr @b44_register_phy_one._entry_ptr.68, ptr @b44_resume._entry, ptr @b44_resume._entry_ptr, ptr @b44_debug, ptr @b44_ssb_driver, ptr @.str, ptr @b44_ssb_tbl, ptr @instance, ptr @b44_init_one.__key, ptr @.str.1, ptr @b44_init_one.__key.2, ptr @.str.3, ptr @b44_netdev_ops, ptr @b44_ethtool_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @b44_open.__key, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @dma_desc_sync_size, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @b44_gstrings, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @b44_pci_driver, ptr @b44_pci_tbl], section "llvm.metadata"
@0 = internal global [78 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b44_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b44_ssb_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b44_ssb_tbl to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @instance to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b44_init_one.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b44_init_one.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b44_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b44_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b44_init_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b44_init_one._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b44_init_one._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b44_init_one._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b44_init_one._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b44_init_one._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b44_init_one._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b44_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_desc_sync_size to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b44_gstrings to i32), i32 1504, i32 1856, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b44_get_invariants._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b44_register_phy_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b44_register_phy_one._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b44_register_phy_one._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b44_register_phy_one._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b44_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b44_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b44_pci_tbl to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @b44_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @ssb_driver_unregister(ptr noundef nonnull @b44_ssb_driver) #17
  tail call void @pci_unregister_driver(ptr noundef nonnull @b44_pci_driver) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ssb_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @b44_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  store i1 true, ptr @dma_desc_sync_size, align 4
  %call.i = tail call i32 @ssb_pcihost_register(ptr noundef nonnull @b44_pci_driver) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @__ssb_driver_register(ptr noundef nonnull @b44_ssb_driver, ptr noundef null) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @pci_unregister_driver(ptr noundef nonnull @b44_pci_driver) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call2, %if.then4 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b44_init_one(ptr noundef %sdev, ptr nocapture noundef readnone %ent) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @instance, align 4
  %inc = add i32 %0, 1
  store i32 %inc, ptr @instance, align 4
  %call = tail call ptr @alloc_etherdev_mqs(i32 noundef 856, i32 noundef 1, i32 noundef 1) #17
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev1 = getelementptr inbounds %struct.ssb_device, ptr %sdev, i32 0, i32 1
  %1 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev1, align 4
  %parent = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 133, i32 1
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %parent, align 8
  %add.ptr.i = getelementptr i8, ptr %call, i32 2304
  %sdev4 = getelementptr i8, ptr %call, i32 3088
  %4 = ptrtoint ptr %sdev4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %sdev, ptr %sdev4, align 8
  %dev5 = getelementptr i8, ptr %call, i32 3092
  %5 = ptrtoint ptr %dev5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %dev5, align 4
  %force_copybreak = getelementptr i8, ptr %call, i32 3113
  %6 = ptrtoint ptr %force_copybreak to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %force_copybreak, align 1
  %7 = load i32, ptr @b44_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %7)
  %cmp1.i = icmp ugt i32 %7, 31
  br i1 %cmp1.i, label %if.end.netif_msg_init.exit_crit_edge, label %if.end.i

if.end.netif_msg_init.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %netif_msg_init.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp2.i = icmp eq i32 %7, 0
  br i1 %cmp2.i, label %if.end.i.netif_msg_init.exit_crit_edge, label %if.end4.i

if.end.i.netif_msg_init.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %netif_msg_init.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %notmask.i = shl nsw i32 -1, %7
  %sub.i = xor i32 %notmask.i, -1
  br label %netif_msg_init.exit

netif_msg_init.exit:                              ; preds = %if.end4.i, %if.end.i.netif_msg_init.exit_crit_edge, %if.end.netif_msg_init.exit_crit_edge
  %retval.0.i = phi i32 [ %sub.i, %if.end4.i ], [ 255, %if.end.netif_msg_init.exit_crit_edge ], [ 0, %if.end.i.netif_msg_init.exit_crit_edge ]
  %msg_enable = getelementptr i8, ptr %call, i32 2624
  %8 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %retval.0.i, ptr %msg_enable, align 8
  tail call void @__raw_spin_lock_init(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @b44_init_one.__key, i16 noundef signext 3) #17
  %syncp = getelementptr i8, ptr %call, i32 3056
  %dep_map.i = getelementptr i8, ptr %call, i32 3060
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @b44_init_one.__key.2, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %9 = ptrtoint ptr %syncp to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %syncp, align 4
  %rx_pending = getelementptr i8, ptr %call, i32 3104
  %10 = ptrtoint ptr %rx_pending to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 200, ptr %rx_pending, align 8
  %tx_pending = getelementptr i8, ptr %call, i32 3108
  %11 = ptrtoint ptr %tx_pending to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 511, ptr %tx_pending, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 16
  %12 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @b44_netdev_ops, ptr %netdev_ops, align 8
  %napi = getelementptr i8, ptr %call, i32 2392
  tail call void @netif_napi_add(ptr noundef nonnull %call, ptr noundef %napi, ptr noundef nonnull @b44_poll, i32 noundef 64) #17
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 115
  %13 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 500, ptr %watchdog_timeo, align 4
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 30
  %14 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 60, ptr %min_mtu, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 31
  %15 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1500, ptr %max_mtu, align 4
  %irq = getelementptr inbounds %struct.ssb_device, ptr %sdev, i32 0, i32 6
  %16 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq, align 4
  %irq11 = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 64
  %18 = ptrtoint ptr %irq11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %irq11, align 4
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 44
  %19 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @b44_ethtool_ops, ptr %ethtool_ops, align 16
  %bus = getelementptr inbounds %struct.ssb_device, ptr %sdev, i32 0, i32 3
  %20 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus, align 4
  %call12 = tail call i32 @ssb_bus_powerup(ptr noundef %21, i1 noundef zeroext false) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end19, label %do.end17

do.end17:                                         ; preds = %netif_msg_init.exit
  call void @__sanitizer_cov_trace_pc() #19
  %22 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.4) #20
  br label %err_out_free_dev

if.end19:                                         ; preds = %netif_msg_init.exit
  %dma_dev = getelementptr inbounds %struct.ssb_device, ptr %sdev, i32 0, i32 2
  %24 = ptrtoint ptr %dma_dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dma_dev, align 4
  %call.i = tail call i32 @dma_set_mask(ptr noundef %25, i64 noundef 1073741823) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end27, label %do.end25

do.end25:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #19
  %26 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.10) #20
  br label %err_out_powerdown

if.end27:                                         ; preds = %if.end19
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %25, i64 noundef 1073741823) #17
  %call28 = tail call fastcc i32 @b44_get_invariants(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end35, label %do.end33

do.end33:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #19
  %28 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.13) #20
  br label %err_out_powerdown

if.end35:                                         ; preds = %if.end27
  %phy_addr = getelementptr i8, ptr %call, i32 3112
  %30 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %phy_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %31)
  %cmp = icmp eq i8 %31, 31
  br i1 %cmp, label %do.end40, label %if.end42

do.end40:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #19
  %32 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.16) #20
  br label %err_out_powerdown

if.end42:                                         ; preds = %if.end35
  %mii_if = getelementptr i8, ptr %call, i32 3124
  %dev43 = getelementptr i8, ptr %call, i32 3144
  %34 = ptrtoint ptr %dev43 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call, ptr %dev43, align 4
  %mdio_read = getelementptr i8, ptr %call, i32 3148
  %35 = ptrtoint ptr %mdio_read to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @b44_mdio_read_mii, ptr %mdio_read, align 4
  %mdio_write = getelementptr i8, ptr %call, i32 3152
  %36 = ptrtoint ptr %mdio_write to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @b44_mdio_write_mii, ptr %mdio_write, align 4
  %conv47 = zext i8 %31 to i32
  %37 = ptrtoint ptr %mii_if to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv47, ptr %mii_if, align 4
  %phy_id_mask = getelementptr i8, ptr %call, i32 3132
  %38 = ptrtoint ptr %phy_id_mask to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 31, ptr %phy_id_mask, align 4
  %reg_num_mask = getelementptr i8, ptr %call, i32 3136
  %39 = ptrtoint ptr %reg_num_mask to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 31, ptr %reg_num_mask, align 4
  %flags = getelementptr i8, ptr %call, i32 2620
  %40 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags, align 4
  %or53 = or i32 %41, 251691008
  store i32 %or53, ptr %flags, align 4
  %call54 = tail call i32 @register_netdev(ptr noundef nonnull %call) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end61, label %do.end59

do.end59:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #19
  %42 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.19) #20
  br label %err_out_powerdown

if.end61:                                         ; preds = %if.end42
  tail call void @netif_carrier_off(ptr noundef nonnull %call) #17
  %drvdata.i = getelementptr inbounds %struct.ssb_device, ptr %sdev, i32 0, i32 7
  %44 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call, ptr %drvdata.i, align 4
  tail call fastcc void @b44_chip_reset(ptr noundef %add.ptr.i, i32 noundef 4)
  %call62 = tail call fastcc i32 @b44_phy_reset(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp63 = icmp slt i32 %call62, 0
  br i1 %cmp63, label %if.end61.err_out_unregister_netdev_crit_edge, label %if.end70

if.end61.err_out_unregister_netdev_crit_edge:     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_out_unregister_netdev

if.end70:                                         ; preds = %if.end61
  %45 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flags, align 4
  %and = and i32 %46, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool72.not = icmp eq i32 %and, 0
  br i1 %tobool72.not, label %if.end70.if.end82_crit_edge, label %if.then73

if.end70.if.end82_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end82

if.then73:                                        ; preds = %if.end70
  %call74 = tail call fastcc i32 @b44_register_phy_one(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.then73.if.end82_crit_edge, label %if.then73.err_out_unregister_netdev_crit_edge

if.then73.err_out_unregister_netdev_crit_edge:    ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_out_unregister_netdev

if.then73.if.end82_crit_edge:                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end82

if.end82:                                         ; preds = %if.then73.if.end82_crit_edge, %if.end70.if.end82_crit_edge
  %47 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev1, align 4
  tail call void @device_set_wakeup_capable(ptr noundef %48, i1 noundef zeroext true) #17
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 86
  %49 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev_addr, align 64
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef nonnull %call, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, ptr noundef %50) #20
  br label %cleanup

err_out_unregister_netdev:                        ; preds = %if.then73.err_out_unregister_netdev_crit_edge, %if.end61.err_out_unregister_netdev_crit_edge
  %.str.25.sink = phi ptr [ @.str.22, %if.end61.err_out_unregister_netdev_crit_edge ], [ @.str.25, %if.then73.err_out_unregister_netdev_crit_edge ]
  %err.0 = phi i32 [ %call62, %if.end61.err_out_unregister_netdev_crit_edge ], [ %call74, %if.then73.err_out_unregister_netdev_crit_edge ]
  %51 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull %.str.25.sink) #20
  tail call void @unregister_netdev(ptr noundef nonnull %call) #17
  br label %err_out_powerdown

err_out_powerdown:                                ; preds = %err_out_unregister_netdev, %do.end59, %do.end40, %do.end33, %do.end25
  %err.1 = phi i32 [ %call.i, %do.end25 ], [ %call28, %do.end33 ], [ -19, %do.end40 ], [ %call54, %do.end59 ], [ %err.0, %err_out_unregister_netdev ]
  %53 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bus, align 4
  %call85 = tail call i32 @ssb_bus_may_powerdown(ptr noundef %54) #17
  br label %err_out_free_dev

err_out_free_dev:                                 ; preds = %err_out_powerdown, %do.end17
  %err.2 = phi i32 [ %call12, %do.end17 ], [ %err.1, %err_out_powerdown ]
  tail call void @__netif_napi_del(ptr noundef %napi) #17
  tail call void @synchronize_net() #17
  tail call void @free_netdev(ptr noundef nonnull %call) #17
  br label %cleanup

cleanup:                                          ; preds = %err_out_free_dev, %if.end82, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end82 ], [ %err.2, %err_out_free_dev ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @b44_remove_one(ptr noundef %sdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata.i = getelementptr inbounds %struct.ssb_device, ptr %sdev, i32 0, i32 7
  %0 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata.i, align 4
  tail call void @unregister_netdev(ptr noundef %1) #17
  %flags = getelementptr i8, ptr %1, i32 2620
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %dev1.i = getelementptr i8, ptr %1, i32 3092
  %4 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1.i, align 4
  %mii_bus2.i = getelementptr i8, ptr %1, i32 3116
  %6 = ptrtoint ptr %mii_bus2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mii_bus2.i, align 4
  %phydev.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 145
  %8 = ptrtoint ptr %phydev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phydev.i, align 16
  tail call void @phy_disconnect(ptr noundef %9) #17
  tail call void @mdiobus_unregister(ptr noundef %7) #17
  tail call void @mdiobus_free(ptr noundef %7) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @ssb_device_disable(ptr noundef %sdev, i32 noundef 0) #17
  %bus = getelementptr inbounds %struct.ssb_device, ptr %sdev, i32 0, i32 3
  %10 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus, align 4
  %call2 = tail call i32 @ssb_bus_may_powerdown(ptr noundef %11) #17
  %napi = getelementptr i8, ptr %1, i32 2392
  tail call void @__netif_napi_del(ptr noundef %napi) #17
  tail call void @synchronize_net() #17
  tail call void @free_netdev(ptr noundef %1) #17
  %12 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus, align 4
  %bustype.i = getelementptr inbounds %struct.ssb_bus, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %bustype.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bustype.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp.i = icmp eq i32 %15, 1
  br i1 %cmp.i, label %if.then.i, label %if.end.ssb_pcihost_set_power_state.exit_crit_edge

if.end.ssb_pcihost_set_power_state.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %ssb_pcihost_set_power_state.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %16 = getelementptr inbounds %struct.ssb_bus, ptr %13, i32 0, i32 6
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %call.i = tail call i32 @pci_set_power_state(ptr noundef %18, i32 noundef 3) #17
  br label %ssb_pcihost_set_power_state.exit

ssb_pcihost_set_power_state.exit:                 ; preds = %if.then.i, %if.end.ssb_pcihost_set_power_state.exit_crit_edge
  %19 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %drvdata.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b44_suspend(ptr nocapture noundef readonly %sdev, [1 x i32] %state.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata.i = getelementptr inbounds %struct.ssb_device, ptr %sdev, i32 0, i32 7
  %0 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %timer = getelementptr i8, ptr %1, i32 2628
  %call3 = tail call i32 @del_timer_sync(ptr noundef %timer) #17
  tail call void @_raw_spin_lock_irq(ptr noundef %add.ptr.i) #17
  %sdev.i.i.i.i = getelementptr i8, ptr %1, i32 3088
  %4 = ptrtoint ptr %sdev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sdev.i.i.i.i, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %write32.i.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %write32.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write32.i.i.i.i.i, align 4
  tail call void %9(ptr noundef %5, i16 noundef zeroext 36, i32 noundef 0) #17
  %10 = ptrtoint ptr %sdev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sdev.i.i.i.i, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %read32.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %read32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read32.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 %15(ptr noundef %11, i16 noundef zeroext 36) #17
  %call.i = tail call fastcc i32 @b44_phy_reset(ptr noundef %add.ptr.i) #17
  %dev.i = getelementptr i8, ptr %1, i32 3092
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %17, ptr noundef nonnull @.str.46) #20
  %18 = ptrtoint ptr %sdev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sdev.i.i.i.i, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %write32.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %23(ptr noundef %19, i16 noundef zeroext 168, i32 noundef 4) #17
  %flags.i = getelementptr i8, ptr %1, i32 2620
  %24 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %25, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %..i = select i1 %tobool.not.i, i32 5, i32 4
  tail call fastcc void @b44_chip_reset(ptr noundef %add.ptr.i, i32 noundef %..i) #17
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 4
  tail call void @netif_carrier_off(ptr noundef %27) #17
  %28 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i, align 4
  tail call void @netif_device_detach(ptr noundef %29) #17
  tail call fastcc void @b44_free_rings(ptr noundef %add.ptr.i)
  tail call void @_raw_spin_unlock_irq(ptr noundef %add.ptr.i) #17
  %irq = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 64
  %30 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %irq, align 4
  %call7 = tail call ptr @free_irq(i32 noundef %31, ptr noundef %1) #17
  %32 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %tobool.not = icmp sgt i32 %33, -1
  br i1 %tobool.not, label %if.end.if.end9_crit_edge, label %if.then8

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end9

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @b44_init_hw(ptr noundef %add.ptr.i, i32 noundef 3)
  tail call fastcc void @b44_setup_wol(ptr noundef %add.ptr.i)
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end.if.end9_crit_edge
  %bus.i = getelementptr inbounds %struct.ssb_device, ptr %sdev, i32 0, i32 3
  %34 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bus.i, align 4
  %bustype.i = getelementptr inbounds %struct.ssb_bus, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %bustype.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bustype.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cmp.i = icmp eq i32 %37, 1
  br i1 %cmp.i, label %if.then.i, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  %38 = getelementptr inbounds %struct.ssb_bus, ptr %35, i32 0, i32 6
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %call.i24 = tail call i32 @pci_set_power_state(ptr noundef %40, i32 noundef 3) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end9.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b44_resume(ptr nocapture noundef readonly %sdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata.i = getelementptr inbounds %struct.ssb_device, ptr %sdev, i32 0, i32 7
  %0 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %bus = getelementptr inbounds %struct.ssb_device, ptr %sdev, i32 0, i32 3
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus, align 4
  %call2 = tail call i32 @ssb_bus_powerup(ptr noundef %3, i1 noundef zeroext false) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %dev3 = getelementptr inbounds %struct.ssb_device, ptr %sdev, i32 0, i32 1
  %4 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.4) #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end6:                                          ; preds = %if.end
  tail call void @_raw_spin_lock_irq(ptr noundef %add.ptr.i) #17
  tail call fastcc void @b44_init_rings(ptr noundef %add.ptr.i)
  tail call fastcc void @b44_init_hw(ptr noundef %add.ptr.i, i32 noundef 1)
  tail call void @_raw_spin_unlock_irq(ptr noundef %add.ptr.i) #17
  %irq = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 64
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %9, ptr noundef nonnull @b44_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %1, ptr noundef %1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not = icmp eq i32 %call.i, 0
  br i1 %tobool9.not, label %if.end13, label %if.then10

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.70) #20
  tail call void @_raw_spin_lock_irq(ptr noundef %add.ptr.i) #17
  %sdev.i.i.i.i = getelementptr i8, ptr %1, i32 3088
  %10 = ptrtoint ptr %sdev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sdev.i.i.i.i, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %write32.i.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %write32.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write32.i.i.i.i.i, align 4
  tail call void %15(ptr noundef %11, i16 noundef zeroext 36, i32 noundef 0) #17
  %16 = ptrtoint ptr %sdev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sdev.i.i.i.i, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %read32.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %read32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read32.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 %21(ptr noundef %17, i16 noundef zeroext 36) #17
  %call.i39 = tail call fastcc i32 @b44_phy_reset(ptr noundef %add.ptr.i) #17
  %dev.i = getelementptr i8, ptr %1, i32 3092
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %23, ptr noundef nonnull @.str.46) #20
  %24 = ptrtoint ptr %sdev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sdev.i.i.i.i, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %write32.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %29(ptr noundef %25, i16 noundef zeroext 168, i32 noundef 4) #17
  %flags.i = getelementptr i8, ptr %1, i32 2620
  %30 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %31, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %..i = select i1 %tobool.not.i, i32 5, i32 4
  tail call fastcc void @b44_chip_reset(ptr noundef %add.ptr.i, i32 noundef %..i) #17
  tail call fastcc void @b44_free_rings(ptr noundef %add.ptr.i)
  tail call void @_raw_spin_unlock_irq(ptr noundef %add.ptr.i) #17
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #19
  %dev14 = getelementptr i8, ptr %1, i32 3092
  %32 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev14, align 4
  tail call void @netif_device_attach(ptr noundef %33) #17
  %imask.i = getelementptr i8, ptr %1, i32 2348
  %34 = ptrtoint ptr %imask.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %imask.i, align 4
  %sdev.i.i = getelementptr i8, ptr %1, i32 3088
  %36 = ptrtoint ptr %sdev.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sdev.i.i, align 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %write32.i.i.i40 = getelementptr inbounds %struct.ssb_bus_ops, ptr %39, i32 0, i32 5
  %40 = ptrtoint ptr %write32.i.i.i40 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write32.i.i.i40, align 4
  tail call void %41(ptr noundef %37, i16 noundef zeroext 36, i32 noundef %35) #17
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %42 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %43) #17
  %timer = getelementptr i8, ptr %1, i32 2628
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %44 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %44, 1
  %call15 = tail call i32 @mod_timer(ptr noundef %timer, i32 noundef %add) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then10, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ %call.i, %if.then10 ], [ 0, %if.end13 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b44_poll(ptr noundef %napi, i32 noundef %budget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -88
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #17
  %istat = getelementptr i8, ptr %napi, i32 -40
  %0 = ptrtoint ptr %istat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %istat, align 8
  %and = and i32 %1, 16777344
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  %sdev.i.i = getelementptr i8, ptr %napi, i32 696
  %2 = ptrtoint ptr %sdev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sdev.i.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %read32.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %7(ptr noundef %3, i16 noundef zeroext 524) #17
  %and.i = lshr i32 %call.i.i.i, 3
  %div62.i = and i32 %and.i, 511
  %tx_cons.i = getelementptr i8, ptr %napi, i32 -24
  %8 = ptrtoint ptr %tx_cons.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_cons.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %div62.i)
  %cmp.not69.i = icmp eq i32 %9, %div62.i
  br i1 %cmp.not69.i, label %for.end.thread.i, label %for.body.lr.ph.i

for.end.thread.i:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %dev74.i = getelementptr i8, ptr %napi, i32 700
  br label %netdev_completed_queue.exit.i

for.body.lr.ph.i:                                 ; preds = %if.then
  %tx_buffers.i = getelementptr i8, ptr %napi, i32 -8
  br label %for.body.i

for.body.i:                                       ; preds = %do.end9.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %bytes_compl.071.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add.i, %do.end9.i.for.body.i_crit_edge ]
  %cons.070.i = phi i32 [ %9, %for.body.lr.ph.i ], [ %and13.i, %do.end9.i.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %tx_buffers.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tx_buffers.i, align 8
  %arrayidx.i = getelementptr %struct.ring_info, ptr %11, i32 %cons.070.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %cmp2.i = icmp eq ptr %13, null
  br i1 %cmp2.i, label %do.body4.i, label %do.end9.i, !prof !174

do.body4.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/broadcom/b44.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 626, 0\0A.popsection", ""() #17, !srcloc !175
  unreachable

do.end9.i:                                        ; preds = %for.body.i
  %14 = ptrtoint ptr %sdev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sdev.i.i, align 8
  %dma_dev.i = getelementptr inbounds %struct.ssb_device, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %dma_dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dma_dev.i, align 4
  %mapping.i = getelementptr %struct.ring_info, ptr %11, i32 %cons.070.i, i32 1
  %18 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mapping.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 6
  %20 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef 1, i32 noundef 0) #17
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %arrayidx.i, align 4
  %23 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len.i, align 4
  %add.i = add i32 %24, %bytes_compl.071.i
  tail call void @__dev_kfree_skb_irq(ptr noundef nonnull %13, i32 noundef 0) #17
  %add12.i = add i32 %cons.070.i, 1
  %and13.i = and i32 %add12.i, 511
  %cmp.not.i = icmp eq i32 %and13.i, %div62.i
  br i1 %cmp.not.i, label %for.end.i, label %do.end9.i.for.body.i_crit_edge

do.end9.i.for.body.i_crit_edge:                   ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.end.i:                                        ; preds = %do.end9.i
  %dev.i = getelementptr i8, ptr %napi, i32 700
  %25 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i, align 4
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 103
  %27 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %_tx.i.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %tobool.not.i.i.i = icmp eq i32 %add.i, 0
  br i1 %tobool.not.i.i.i, label %for.end.i.netdev_completed_queue.exit.i_crit_edge, label %if.end.i.i.i, !prof !174

for.end.i.netdev_completed_queue.exit.i_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %netdev_completed_queue.exit.i

if.end.i.i.i:                                     ; preds = %for.end.i
  %dql.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %28, i32 0, i32 15
  tail call void @dql_completed(ptr noundef %dql.i.i.i, i32 noundef %add.i) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !176
  %adj_limit.i.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %28, i32 0, i32 15, i32 1
  %29 = ptrtoint ptr %adj_limit.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %adj_limit.i.i.i.i, align 4
  %31 = ptrtoint ptr %dql.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %dql.i.i.i, align 128
  %sub.i.i.i.i = sub i32 %30, %32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i.i)
  %cmp.i.i.i = icmp slt i32 %sub.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end.i.i.i.netdev_completed_queue.exit.i_crit_edge, label %if.end14.i.i.i, !prof !174

if.end.i.i.i.netdev_completed_queue.exit.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %netdev_completed_queue.exit.i

if.end14.i.i.i:                                   ; preds = %if.end.i.i.i
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %28, i32 0, i32 13
  %call15.i.i.i = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %state.i.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i.i)
  %tobool16.not.i.i.i = icmp eq i32 %call15.i.i.i, 0
  br i1 %tobool16.not.i.i.i, label %if.end14.i.i.i.netdev_completed_queue.exit.i_crit_edge, label %if.then17.i.i.i

if.end14.i.i.i.netdev_completed_queue.exit.i_crit_edge: ; preds = %if.end14.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %netdev_completed_queue.exit.i

if.then17.i.i.i:                                  ; preds = %if.end14.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @netif_schedule_queue(ptr noundef %28) #17
  br label %netdev_completed_queue.exit.i

netdev_completed_queue.exit.i:                    ; preds = %if.then17.i.i.i, %if.end14.i.i.i.netdev_completed_queue.exit.i_crit_edge, %if.end.i.i.i.netdev_completed_queue.exit.i_crit_edge, %for.end.i.netdev_completed_queue.exit.i_crit_edge, %for.end.thread.i
  %dev77.i = phi ptr [ %dev74.i, %for.end.thread.i ], [ %dev.i, %for.end.i.netdev_completed_queue.exit.i_crit_edge ], [ %dev.i, %if.end.i.i.i.netdev_completed_queue.exit.i_crit_edge ], [ %dev.i, %if.end14.i.i.i.netdev_completed_queue.exit.i_crit_edge ], [ %dev.i, %if.then17.i.i.i ]
  %33 = ptrtoint ptr %tx_cons.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %div62.i, ptr %tx_cons.i, align 8
  %34 = ptrtoint ptr %dev77.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev77.i, align 4
  %_tx.i.i63.i = getelementptr inbounds %struct.net_device, ptr %35, i32 0, i32 103
  %36 = ptrtoint ptr %_tx.i.i63.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %_tx.i.i63.i, align 128
  %state.i.i64.i = getelementptr inbounds %struct.netdev_queue, ptr %37, i32 0, i32 13
  %38 = ptrtoint ptr %state.i.i64.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %state.i.i64.i, align 4
  %and1.i.i.i.i = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.i.not.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.i.i.not.i, label %netdev_completed_queue.exit.i.b44_tx.exit_crit_edge, label %land.lhs.true.i

netdev_completed_queue.exit.i.b44_tx.exit_crit_edge: ; preds = %netdev_completed_queue.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %b44_tx.exit

land.lhs.true.i:                                  ; preds = %netdev_completed_queue.exit.i
  %tx_prod.i = getelementptr i8, ptr %napi, i32 -28
  %40 = ptrtoint ptr %tx_prod.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tx_prod.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div62.i, i32 %41)
  %cmp18.not.i = icmp ugt i32 %div62.i, %41
  %tx_pending25.i = getelementptr i8, ptr %napi, i32 716
  %42 = ptrtoint ptr %tx_pending25.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tx_pending25.i, align 4
  %masksel.i = select i1 %cmp18.not.i, i32 -512, i32 0
  %sub26.neg.sink.i = sub i32 %div62.i, %41
  %sub24.i = add i32 %sub26.neg.sink.i, %43
  %sub27.i = add i32 %sub24.i, %masksel.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %sub27.i)
  %cmp28.i = icmp ugt i32 %sub27.i, 128
  br i1 %cmp28.i, label %if.then29.i, label %land.lhs.true.i.b44_tx.exit_crit_edge

land.lhs.true.i.b44_tx.exit_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %b44_tx.exit

if.then29.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @netif_tx_wake_queue(ptr noundef %37) #17
  br label %b44_tx.exit

b44_tx.exit:                                      ; preds = %if.then29.i, %land.lhs.true.i.b44_tx.exit_crit_edge, %netdev_completed_queue.exit.i.b44_tx.exit_crit_edge
  %44 = ptrtoint ptr %sdev.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sdev.i.i, align 8
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %write32.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %47, i32 0, i32 5
  %48 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %49(ptr noundef %45, i16 noundef zeroext 40, i32 noundef 0) #17
  br label %if.end

if.end:                                           ; preds = %b44_tx.exit, %entry.if.end_crit_edge
  %50 = ptrtoint ptr %istat to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %istat, align 8
  %and7 = and i32 %51, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end.if.end12_crit_edge, label %if.then9

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %and11 = and i32 %51, -16385
  %52 = ptrtoint ptr %istat to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %and11, ptr %istat, align 8
  %sdev.i.i.i = getelementptr i8, ptr %napi, i32 696
  %53 = ptrtoint ptr %sdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %sdev.i.i.i, align 8
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 4
  %write32.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %56, i32 0, i32 5
  %57 = ptrtoint ptr %write32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %write32.i.i.i.i, align 4
  tail call void %58(ptr noundef %54, i16 noundef zeroext 36, i32 noundef 0) #17
  %59 = ptrtoint ptr %sdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %sdev.i.i.i, align 8
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 4
  %read32.i.i.i72 = getelementptr inbounds %struct.ssb_bus_ops, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %read32.i.i.i72 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %read32.i.i.i72, align 4
  %call.i.i.i73 = tail call i32 %64(ptr noundef %60, i16 noundef zeroext 36) #17
  %65 = ptrtoint ptr %sdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %sdev.i.i.i, align 8
  tail call void @ssb_device_enable(ptr noundef %66, i32 noundef 0) #17
  tail call fastcc void @b44_init_rings(ptr noundef %add.ptr)
  tail call fastcc void @b44_init_hw(ptr noundef %add.ptr, i32 noundef 2)
  %dev = getelementptr i8, ptr %napi, i32 700
  %67 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %68, i32 0, i32 103
  %69 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %70) #17
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end.if.end12_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call3) #17
  %71 = ptrtoint ptr %istat to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %istat, align 8
  %and15 = and i32 %72, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end12.if.end19_crit_edge, label %if.then17

if.end12.if.end19_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end19

if.then17:                                        ; preds = %if.end12
  %sdev.i.i74 = getelementptr i8, ptr %napi, i32 696
  %73 = ptrtoint ptr %sdev.i.i74 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %sdev.i.i74, align 8
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 4
  %read32.i.i.i75 = getelementptr inbounds %struct.ssb_bus_ops, ptr %76, i32 0, i32 2
  %77 = ptrtoint ptr %read32.i.i.i75 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %read32.i.i.i75, align 4
  %call.i.i.i76 = tail call i32 %78(ptr noundef %74, i16 noundef zeroext 540) #17
  %and.i77 = lshr i32 %call.i.i.i76, 3
  %div131.i = and i32 %and.i77, 511
  %rx_cons.i = getelementptr i8, ptr %napi, i32 -16
  %79 = ptrtoint ptr %rx_cons.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %rx_cons.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %div131.i)
  %cmp.not140.i = icmp ne i32 %80, %div131.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %cmp1141.i = icmp sgt i32 %budget, 0
  %or.cond142.i = and i1 %cmp1141.i, %cmp.not140.i
  br i1 %or.cond142.i, label %while.body.lr.ph.i, label %if.then17.b44_rx.exit_crit_edge

if.then17.b44_rx.exit_crit_edge:                  ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #19
  br label %b44_rx.exit

while.body.lr.ph.i:                               ; preds = %if.then17
  %rx_buffers.i = getelementptr i8, ptr %napi, i32 -12
  %force_copybreak.i = getelementptr i8, ptr %napi, i32 721
  %rx_prod48.i = getelementptr i8, ptr %napi, i32 -20
  %dev63.i = getelementptr i8, ptr %napi, i32 700
  br label %while.body.i

while.body.i:                                     ; preds = %next_pkt.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %budget.addr.0151.i = phi i32 [ %budget, %while.body.lr.ph.i ], [ %budget.addr.1.i, %next_pkt.i.while.body.i_crit_edge ]
  %cons.0146.i = phi i32 [ %80, %while.body.lr.ph.i ], [ %and72.i, %next_pkt.i.while.body.i_crit_edge ]
  %received.0143.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %received.1.i, %next_pkt.i.while.body.i_crit_edge ]
  %81 = ptrtoint ptr %rx_buffers.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %rx_buffers.i, align 4
  %arrayidx.i78 = getelementptr %struct.ring_info, ptr %82, i32 %cons.0146.i
  %83 = ptrtoint ptr %arrayidx.i78 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx.i78, align 4
  %mapping.i79 = getelementptr %struct.ring_info, ptr %82, i32 %cons.0146.i, i32 1
  %85 = ptrtoint ptr %mapping.i79 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %mapping.i79, align 4
  %87 = ptrtoint ptr %sdev.i.i74 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %sdev.i.i74, align 8
  %dma_dev.i80 = getelementptr inbounds %struct.ssb_device, ptr %88, i32 0, i32 2
  %89 = ptrtoint ptr %dma_dev.i80 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dma_dev.i80, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %90, i32 noundef %86, i32 noundef 1566, i32 noundef 2) #17
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %84, i32 0, i32 19
  %91 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %data.i, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %92, align 2
  %95 = tail call i16 @llvm.bswap.i16(i16 %94) #17
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %95)
  %cmp4.i = icmp ugt i16 %95, 1536
  br i1 %cmp4.i, label %while.body.i.drop_it.i_crit_edge, label %lor.lhs.false.i

while.body.i.drop_it.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %drop_it.i

lor.lhs.false.i:                                  ; preds = %while.body.i
  %flags.i = getelementptr inbounds %struct.rx_header, ptr %92, i32 0, i32 1
  %96 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %flags.i, align 2
  %98 = and i16 %97, 3840
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %98)
  %tobool.not.i = icmp eq i16 %98, 0
  br i1 %tobool.not.i, label %if.end.i, label %lor.lhs.false.i.drop_it.i_crit_edge

lor.lhs.false.i.drop_it.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %drop_it.i

drop_it.i:                                        ; preds = %if.then33.i.drop_it.i_crit_edge, %do.end.i.drop_it.i_crit_edge, %lor.lhs.false.i.drop_it.i_crit_edge, %while.body.i.drop_it.i_crit_edge
  %99 = ptrtoint ptr %rx_prod48.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %rx_prod48.i, align 4
  tail call fastcc void @b44_recycle_rx(ptr noundef %add.ptr, i32 noundef %cons.0146.i, i32 noundef %100) #17
  br label %drop_it_no_recycle.i

drop_it_no_recycle.i:                             ; preds = %if.else.i.drop_it_no_recycle.i_crit_edge, %drop_it.i
  %101 = ptrtoint ptr %dev63.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev63.i, align 4
  %rx_dropped.i = getelementptr inbounds %struct.net_device, ptr %102, i32 0, i32 36, i32 6
  %103 = ptrtoint ptr %rx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %rx_dropped.i, align 8
  %inc.i = add i32 %104, 1
  store i32 %inc.i, ptr %rx_dropped.i, align 8
  br label %next_pkt.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %94)
  %cmp9.i = icmp eq i16 %94, 0
  br i1 %cmp9.i, label %do.body.i, label %if.end.i.if.end26.i_crit_edge

if.end.i.if.end26.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end26.i

do.body.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %105 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %105(i32 noundef 429496) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !177
  %106 = ptrtoint ptr %92 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %92, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %107)
  %cmp14.i = icmp eq i16 %107, 0
  br i1 %cmp14.i, label %do.body.i.1, label %do.body.i.do.end.i_crit_edge

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

do.body.i.1:                                      ; preds = %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %108 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %108(i32 noundef 429496) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !177
  %109 = ptrtoint ptr %92 to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %92, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %110)
  %cmp14.i.1 = icmp eq i16 %110, 0
  br i1 %cmp14.i.1, label %do.body.i.2, label %do.body.i.1.do.end.i_crit_edge

do.body.i.1.do.end.i_crit_edge:                   ; preds = %do.body.i.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

do.body.i.2:                                      ; preds = %do.body.i.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %111 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %111(i32 noundef 429496) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !177
  %112 = ptrtoint ptr %92 to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %92, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %113)
  %cmp14.i.2 = icmp eq i16 %113, 0
  br i1 %cmp14.i.2, label %do.body.i.3, label %do.body.i.2.do.end.i_crit_edge

do.body.i.2.do.end.i_crit_edge:                   ; preds = %do.body.i.2
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

do.body.i.3:                                      ; preds = %do.body.i.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %114 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %114(i32 noundef 429496) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !177
  %115 = ptrtoint ptr %92 to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %92, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %116)
  %cmp14.i.3 = icmp eq i16 %116, 0
  br i1 %cmp14.i.3, label %do.body.i.4, label %do.body.i.3.do.end.i_crit_edge

do.body.i.3.do.end.i_crit_edge:                   ; preds = %do.body.i.3
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

do.body.i.4:                                      ; preds = %do.body.i.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %117 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %117(i32 noundef 429496) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !177
  %118 = ptrtoint ptr %92 to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %92, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %119)
  %cmp14.i.4 = icmp eq i16 %119, 0
  br i1 %cmp14.i.4, label %do.body.i.5, label %do.body.i.4.do.end.i_crit_edge

do.body.i.4.do.end.i_crit_edge:                   ; preds = %do.body.i.4
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

do.body.i.5:                                      ; preds = %do.body.i.4
  call void @__sanitizer_cov_trace_pc() #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %120 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %120(i32 noundef 429496) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !177
  %121 = ptrtoint ptr %92 to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %92, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %122)
  %cmp14.i.5 = icmp eq i16 %122, 0
  br label %do.end.i

do.end.i:                                         ; preds = %do.body.i.5, %do.body.i.4.do.end.i_crit_edge, %do.body.i.3.do.end.i_crit_edge, %do.body.i.2.do.end.i_crit_edge, %do.body.i.1.do.end.i_crit_edge, %do.body.i.do.end.i_crit_edge
  %.lcssa = phi i16 [ %107, %do.body.i.do.end.i_crit_edge ], [ %110, %do.body.i.1.do.end.i_crit_edge ], [ %113, %do.body.i.2.do.end.i_crit_edge ], [ %116, %do.body.i.3.do.end.i_crit_edge ], [ %119, %do.body.i.4.do.end.i_crit_edge ], [ %122, %do.body.i.5 ]
  %cmp14.i.lcssa = phi i1 [ %cmp14.i, %do.body.i.do.end.i_crit_edge ], [ %cmp14.i.1, %do.body.i.1.do.end.i_crit_edge ], [ %cmp14.i.2, %do.body.i.2.do.end.i_crit_edge ], [ %cmp14.i.3, %do.body.i.3.do.end.i_crit_edge ], [ %cmp14.i.4, %do.body.i.4.do.end.i_crit_edge ], [ %cmp14.i.5, %do.body.i.5 ]
  %123 = tail call i16 @llvm.bswap.i16(i16 %.lcssa) #17
  br i1 %cmp14.i.lcssa, label %do.end.i.drop_it.i_crit_edge, label %do.end.i.if.end26.i_crit_edge

do.end.i.if.end26.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end26.i

do.end.i.drop_it.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %drop_it.i

if.end26.i:                                       ; preds = %do.end.i.if.end26.i_crit_edge, %if.end.i.if.end26.i_crit_edge
  %len.0.i = phi i16 [ %123, %do.end.i.if.end26.i_crit_edge ], [ %95, %if.end.i.if.end26.i_crit_edge ]
  %sub.i = add i16 %len.0.i, -4
  %124 = ptrtoint ptr %force_copybreak.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %force_copybreak.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %tobool29.not.i = icmp eq i8 %125, 0
  %conv30.i = zext i16 %sub.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %sub.i)
  %cmp31.i = icmp ugt i16 %sub.i, 256
  %or.cond154.i = select i1 %tobool29.not.i, i1 %cmp31.i, i1 false
  %126 = ptrtoint ptr %rx_prod48.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %rx_prod48.i, align 4
  br i1 %or.cond154.i, label %if.then33.i, label %if.else.i

if.then33.i:                                      ; preds = %if.end26.i
  %call35.i = tail call fastcc i32 @b44_alloc_rx_skb(ptr noundef %add.ptr, i32 noundef %cons.0146.i, i32 noundef %127) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %cmp36.i = icmp slt i32 %call35.i, 0
  br i1 %cmp36.i, label %if.then33.i.drop_it.i_crit_edge, label %cleanup45.thread.i

if.then33.i.drop_it.i_crit_edge:                  ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %drop_it.i

cleanup45.thread.i:                               ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #19
  %128 = ptrtoint ptr %sdev.i.i74 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %sdev.i.i74, align 8
  %dma_dev41.i = getelementptr inbounds %struct.ssb_device, ptr %129, i32 0, i32 2
  %130 = ptrtoint ptr %dma_dev41.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dma_dev41.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %131, i32 noundef %86, i32 noundef %call35.i, i32 noundef 2, i32 noundef 0) #17
  %add.i81 = add nuw nsw i32 %conv30.i, 30
  %call43.i = tail call ptr @skb_put(ptr noundef %84, i32 noundef %add.i81) #17
  %call44.i = tail call ptr @skb_pull(ptr noundef %84, i32 noundef 30) #17
  br label %if.end62.i

if.else.i:                                        ; preds = %if.end26.i
  tail call fastcc void @b44_recycle_rx(ptr noundef %add.ptr, i32 noundef %cons.0146.i, i32 noundef %127) #17
  %call.i.i = tail call ptr @__napi_alloc_skb(ptr noundef %napi, i32 noundef %conv30.i, i32 noundef 2592) #17
  %cmp51.i = icmp eq ptr %call.i.i, null
  br i1 %cmp51.i, label %if.else.i.drop_it_no_recycle.i_crit_edge, label %cleanup59.thread.i

if.else.i.drop_it_no_recycle.i_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %drop_it_no_recycle.i

cleanup59.thread.i:                               ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  %call56.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %conv30.i) #17
  %data57.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %132 = ptrtoint ptr %data57.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %data57.i, align 4
  %134 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %135, i32 30
  %136 = call ptr @memcpy(ptr %133, ptr %add.ptr.i.i, i32 %conv30.i)
  br label %if.end62.i

if.end62.i:                                       ; preds = %cleanup59.thread.i, %cleanup45.thread.i
  %skb.1.i = phi ptr [ %84, %cleanup45.thread.i ], [ %call.i.i, %cleanup59.thread.i ]
  %137 = ptrtoint ptr %dev63.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %dev63.i, align 4
  %call64.i = tail call zeroext i16 @eth_type_trans(ptr noundef %skb.1.i, ptr noundef %138) #17
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1.i, i32 0, i32 15, i32 0, i32 18
  %139 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 %call64.i, ptr %protocol.i, align 8
  %call65.i = tail call i32 @netif_receive_skb(ptr noundef %skb.1.i) #17
  %inc66.i = add i32 %received.0143.i, 1
  %dec.i = add i32 %budget.addr.0151.i, -1
  br label %next_pkt.i

next_pkt.i:                                       ; preds = %if.end62.i, %drop_it_no_recycle.i
  %received.1.i = phi i32 [ %received.0143.i, %drop_it_no_recycle.i ], [ %inc66.i, %if.end62.i ]
  %budget.addr.1.i = phi i32 [ %budget.addr.0151.i, %drop_it_no_recycle.i ], [ %dec.i, %if.end62.i ]
  %140 = ptrtoint ptr %rx_prod48.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %rx_prod48.i, align 4
  %add68.i = add i32 %141, 1
  %and69.i = and i32 %add68.i, 511
  store i32 %and69.i, ptr %rx_prod48.i, align 4
  %add71.i = add i32 %cons.0146.i, 1
  %and72.i = and i32 %add71.i, 511
  call void @__sanitizer_cov_trace_cmp4(i32 %and72.i, i32 %div131.i)
  %cmp.not.i82 = icmp ne i32 %and72.i, %div131.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget.addr.1.i)
  %cmp1.i = icmp sgt i32 %budget.addr.1.i, 0
  %or.cond.i = select i1 %cmp.not.i82, i1 %cmp1.i, i1 false
  br i1 %or.cond.i, label %next_pkt.i.while.body.i_crit_edge, label %next_pkt.i.b44_rx.exit_crit_edge

next_pkt.i.b44_rx.exit_crit_edge:                 ; preds = %next_pkt.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %b44_rx.exit

next_pkt.i.while.body.i_crit_edge:                ; preds = %next_pkt.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i

b44_rx.exit:                                      ; preds = %next_pkt.i.b44_rx.exit_crit_edge, %if.then17.b44_rx.exit_crit_edge
  %received.0.lcssa.i = phi i32 [ 0, %if.then17.b44_rx.exit_crit_edge ], [ %received.1.i, %next_pkt.i.b44_rx.exit_crit_edge ]
  %cons.0.lcssa.i = phi i32 [ %80, %if.then17.b44_rx.exit_crit_edge ], [ %and72.i, %next_pkt.i.b44_rx.exit_crit_edge ]
  %142 = ptrtoint ptr %rx_cons.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %cons.0.lcssa.i, ptr %rx_cons.i, align 8
  %mul.i = shl i32 %cons.0.lcssa.i, 3
  %143 = ptrtoint ptr %sdev.i.i74 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %sdev.i.i74, align 8
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %144, align 4
  %write32.i.i.i83 = getelementptr inbounds %struct.ssb_bus_ops, ptr %146, i32 0, i32 5
  %147 = ptrtoint ptr %write32.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %write32.i.i.i83, align 4
  tail call void %148(ptr noundef %144, i16 noundef zeroext 536, i32 noundef %mul.i) #17
  br label %if.end19

if.end19:                                         ; preds = %b44_rx.exit, %if.end12.if.end19_crit_edge
  %work_done.0 = phi i32 [ %received.0.lcssa.i, %b44_rx.exit ], [ 0, %if.end12.if.end19_crit_edge ]
  %149 = ptrtoint ptr %istat to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %istat, align 8
  %and21 = and i32 %150, 64512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end19.if.end40_crit_edge, label %do.body25

if.end19.if.end40_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end40

do.body25:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #19
  %call33 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #17
  %sdev.i.i.i.i = getelementptr i8, ptr %napi, i32 696
  %151 = ptrtoint ptr %sdev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %sdev.i.i.i.i, align 8
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %152, align 4
  %write32.i.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %154, i32 0, i32 5
  %155 = ptrtoint ptr %write32.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %write32.i.i.i.i.i, align 4
  tail call void %156(ptr noundef %152, i16 noundef zeroext 36, i32 noundef 0) #17
  %157 = ptrtoint ptr %sdev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %sdev.i.i.i.i, align 8
  %159 = ptrtoint ptr %158 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %158, align 4
  %read32.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %160, i32 0, i32 2
  %161 = ptrtoint ptr %read32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %read32.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 %162(ptr noundef %158, i16 noundef zeroext 36) #17
  %call.i = tail call fastcc i32 @b44_phy_reset(ptr noundef %add.ptr) #17
  %dev.i84 = getelementptr i8, ptr %napi, i32 700
  %163 = ptrtoint ptr %dev.i84 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %dev.i84, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %164, ptr noundef nonnull @.str.46) #20
  %165 = ptrtoint ptr %sdev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %sdev.i.i.i.i, align 8
  %167 = ptrtoint ptr %166 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %166, align 4
  %write32.i.i.i85 = getelementptr inbounds %struct.ssb_bus_ops, ptr %168, i32 0, i32 5
  %169 = ptrtoint ptr %write32.i.i.i85 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %write32.i.i.i85, align 4
  tail call void %170(ptr noundef %166, i16 noundef zeroext 168, i32 noundef 4) #17
  %flags.i86 = getelementptr i8, ptr %napi, i32 228
  %171 = ptrtoint ptr %flags.i86 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %flags.i86, align 4
  %and.i87 = and i32 %172, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i87)
  %tobool.not.i88 = icmp eq i32 %and.i87, 0
  %..i = select i1 %tobool.not.i88, i32 5, i32 4
  tail call fastcc void @b44_chip_reset(ptr noundef %add.ptr, i32 noundef %..i) #17
  tail call fastcc void @b44_init_rings(ptr noundef %add.ptr)
  tail call fastcc void @b44_init_hw(ptr noundef %add.ptr, i32 noundef 2)
  %173 = ptrtoint ptr %dev.i84 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %dev.i84, align 4
  %_tx.i.i89 = getelementptr inbounds %struct.net_device, ptr %174, i32 0, i32 103
  %175 = ptrtoint ptr %_tx.i.i89 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %_tx.i.i89, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %176) #17
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call33) #17
  br label %if.end40

if.end40:                                         ; preds = %do.body25, %if.end19.if.end40_crit_edge
  %work_done.1 = phi i32 [ 0, %do.body25 ], [ %work_done.0, %if.end19.if.end40_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %work_done.1, i32 %budget)
  %cmp41 = icmp slt i32 %work_done.1, %budget
  br i1 %cmp41, label %if.then43, label %if.end40.if.end45_crit_edge

if.end40.if.end45_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end45

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #19
  %call44 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %work_done.1) #17
  %imask.i = getelementptr i8, ptr %napi, i32 -44
  %177 = ptrtoint ptr %imask.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %imask.i, align 4
  %sdev.i.i90 = getelementptr i8, ptr %napi, i32 696
  %179 = ptrtoint ptr %sdev.i.i90 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %sdev.i.i90, align 8
  %181 = ptrtoint ptr %180 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %180, align 4
  %write32.i.i.i91 = getelementptr inbounds %struct.ssb_bus_ops, ptr %182, i32 0, i32 5
  %183 = ptrtoint ptr %write32.i.i.i91 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %write32.i.i.i91, align 4
  tail call void %184(ptr noundef %180, i16 noundef zeroext 36, i32 noundef %178) #17
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end40.if.end45_crit_edge
  ret i32 %work_done.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssb_bus_powerup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @b44_get_invariants(ptr nocapture noundef %bp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %sdev1 = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 17
  %0 = ptrtoint ptr %sdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev1, align 8
  %call = tail call i32 @ssb_dma_translation(ptr noundef %1) #17
  %dma_offset = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 12
  %2 = ptrtoint ptr %dma_offset to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call, ptr %dma_offset, align 8
  %bus = getelementptr inbounds %struct.ssb_device, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bus, align 4
  %bustype = getelementptr inbounds %struct.ssb_bus, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %bustype to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bustype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %7 = load i32, ptr @instance, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp2 = icmp sgt i32 %7, 1
  br i1 %cmp2, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %et1mac = getelementptr inbounds %struct.ssb_bus, ptr %4, i32 0, i32 22, i32 4
  %et1phyaddr = getelementptr inbounds %struct.ssb_bus, ptr %4, i32 0, i32 22, i32 7
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %et0mac = getelementptr inbounds %struct.ssb_bus, ptr %4, i32 0, i32 22, i32 3
  %et0phyaddr = getelementptr inbounds %struct.ssb_bus, ptr %4, i32 0, i32 22, i32 6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink.in = phi ptr [ %et0phyaddr, %if.else ], [ %et1phyaddr, %if.then ]
  %addr.0 = phi ptr [ %et0mac, %if.else ], [ %et1mac, %if.then ]
  %8 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load1_noabort(i32 %8)
  %.sink = load i8, ptr %.sink.in, align 1
  %phy_addr12 = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 23
  %9 = and i8 %.sink, 31
  %10 = ptrtoint ptr %phy_addr12 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %phy_addr12, align 8
  %dev = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 18
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  tail call void @dev_addr_mod(ptr noundef %12, i32 noundef 0, ptr noundef %addr.0, i32 noundef 6) #17
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 86
  %15 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_addr, align 64
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %19 = and i32 %18, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.i.not.i = icmp eq i32 %19, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

is_valid_ether_addr.exit:                         ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 4
  %20 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %21 to i32
  %or.i.i = or i32 %18, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.do.end_crit_edge, label %if.end18

is_valid_ether_addr.exit.do.end_crit_edge:        ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

do.end:                                           ; preds = %is_valid_ether_addr.exit.do.end_crit_edge, %if.end.do.end_crit_edge
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #20
  br label %cleanup

if.end18:                                         ; preds = %is_valid_ether_addr.exit
  %imask = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 1
  %22 = ptrtoint ptr %imask to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 16907392, ptr %imask, align 4
  %23 = ptrtoint ptr %sdev1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sdev1, align 8
  %revision = getelementptr inbounds %struct.ssb_device, ptr %24, i32 0, i32 4, i32 2
  %25 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %26)
  %cmp21 = icmp ugt i8 %26, 6
  br i1 %cmp21, label %if.then23, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #19
  %flags = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 13
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags, align 4
  %or = or i32 %28, 1
  store i32 %or, ptr %flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %if.end18.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then23 ], [ 0, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b44_mdio_read_mii(ptr nocapture noundef readonly %dev, i32 noundef %phy_id, i32 noundef %location) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #17
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !178
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %call1 = call fastcc i32 @__b44_readphy(ptr noundef %add.ptr.i, i32 noundef %phy_id, i32 noundef %location, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @b44_mdio_write_mii(ptr nocapture noundef readonly %dev, i32 noundef %phy_id, i32 noundef %location, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %call1 = tail call fastcc i32 @__b44_writephy(ptr noundef %add.ptr.i, i32 noundef %phy_id, i32 noundef %location, i32 noundef %val)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @b44_chip_reset(ptr noundef %bp, i32 noundef %reset_kind) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %sdev1 = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 17
  %0 = ptrtoint ptr %sdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev1, align 8
  %call = tail call i32 @ssb_device_is_enabled(ptr noundef %1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %2 = ptrtoint ptr %sdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sdev1, align 8
  tail call void @ssb_device_enable(ptr noundef %3, i32 noundef 0) #17
  %bus = getelementptr inbounds %struct.ssb_device, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 4
  %pcicore = getelementptr inbounds %struct.ssb_bus, ptr %5, i32 0, i32 18
  %call4 = tail call i32 @ssb_pcicore_dev_irqvecs_enable(ptr noundef %pcicore, ptr noundef %1) #17
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end11

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %sdev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sdev1, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %write32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write32.i.i, align 4
  tail call void %11(ptr noundef %7, i16 noundef zeroext 256, i32 noundef 0) #17
  %12 = ptrtoint ptr %sdev1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sdev1, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %write32.i.i89 = getelementptr inbounds %struct.ssb_bus_ops, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %write32.i.i89 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write32.i.i89, align 4
  tail call void %17(ptr noundef %13, i16 noundef zeroext 1068, i32 noundef 2) #17
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then
  %i.033.i = phi i32 [ 0, %if.then ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %18 = ptrtoint ptr %sdev1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sdev1, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %read32.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %23(ptr noundef %19, i16 noundef zeroext 1068) #17
  %and.i = and i32 %call.i.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i.not, label %for.end.i, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 2147480) #17
  %inc.i = add nuw nsw i32 %i.033.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 200
  br i1 %exitcond.not.i, label %for.inc.i.if.then9.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.inc.i.if.then9.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then9.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %i.033.i)
  %cmp8.i = icmp eq i32 %i.033.i, 200
  br i1 %cmp8.i, label %for.end.i.if.then9.i_crit_edge, label %for.end.i.b44_wait_bit.exit_crit_edge

for.end.i.b44_wait_bit.exit_crit_edge:            ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %b44_wait_bit.exit

for.end.i.if.then9.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then9.i

if.then9.i:                                       ; preds = %for.end.i.if.then9.i_crit_edge, %for.inc.i.if.then9.i_crit_edge
  %call10.i = tail call i32 @net_ratelimit() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.then9.i.b44_wait_bit.exit_crit_edge, label %if.then12.i

if.then9.i.b44_wait_bit.exit_crit_edge:           ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %b44_wait_bit.exit

if.then12.i:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #19
  %dev.i = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 18
  %25 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %26, ptr noundef nonnull @.str.32, i32 noundef 2, i32 noundef 1068, ptr noundef nonnull @.str.33) #20
  br label %b44_wait_bit.exit

b44_wait_bit.exit:                                ; preds = %if.then12.i, %if.then9.i.b44_wait_bit.exit_crit_edge, %for.end.i.b44_wait_bit.exit_crit_edge
  %27 = ptrtoint ptr %sdev1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sdev1, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %write32.i.i91 = getelementptr inbounds %struct.ssb_bus_ops, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %write32.i.i91 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %write32.i.i91, align 4
  tail call void %32(ptr noundef %28, i16 noundef zeroext 512, i32 noundef 0) #17
  %tx_cons = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 6
  %33 = ptrtoint ptr %tx_cons to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %tx_cons, align 8
  %tx_prod = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 5
  %34 = ptrtoint ptr %tx_prod to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %tx_prod, align 4
  %35 = ptrtoint ptr %sdev1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sdev1, align 8
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %read32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %40(ptr noundef %36, i16 noundef zeroext 540) #17
  %and = and i32 %call.i.i, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %b44_wait_bit.exit.if.end_crit_edge, label %b44_wait_bit.exit.for.body.i99_crit_edge

b44_wait_bit.exit.for.body.i99_crit_edge:         ; preds = %b44_wait_bit.exit
  br label %for.body.i99

b44_wait_bit.exit.if.end_crit_edge:               ; preds = %b44_wait_bit.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

for.body.i99:                                     ; preds = %for.inc.i102.for.body.i99_crit_edge, %b44_wait_bit.exit.for.body.i99_crit_edge
  %i.033.i94 = phi i32 [ %inc.i100, %for.inc.i102.for.body.i99_crit_edge ], [ 0, %b44_wait_bit.exit.for.body.i99_crit_edge ]
  %41 = ptrtoint ptr %sdev1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sdev1, align 8
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %read32.i.i.i95 = getelementptr inbounds %struct.ssb_bus_ops, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %read32.i.i.i95 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %read32.i.i.i95, align 4
  %call.i.i.i96 = tail call i32 %46(ptr noundef %42, i16 noundef zeroext 540) #17
  %and.i97 = and i32 %call.i.i.i96, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i97)
  %tobool1.not.i98 = icmp eq i32 %and.i97, 0
  br i1 %tobool1.not.i98, label %for.inc.i102, label %for.end.i104

for.inc.i102:                                     ; preds = %for.body.i99
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 2147480) #17
  %inc.i100 = add nuw nsw i32 %i.033.i94, 1
  %exitcond.not.i101 = icmp eq i32 %inc.i100, 100
  br i1 %exitcond.not.i101, label %for.inc.i102.if.then9.i107_crit_edge, label %for.inc.i102.for.body.i99_crit_edge

for.inc.i102.for.body.i99_crit_edge:              ; preds = %for.inc.i102
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i99

for.inc.i102.if.then9.i107_crit_edge:             ; preds = %for.inc.i102
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then9.i107

for.end.i104:                                     ; preds = %for.body.i99
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %i.033.i94)
  %cmp8.i103 = icmp eq i32 %i.033.i94, 100
  br i1 %cmp8.i103, label %for.end.i104.if.then9.i107_crit_edge, label %for.end.i104.if.end_crit_edge

for.end.i104.if.end_crit_edge:                    ; preds = %for.end.i104
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

for.end.i104.if.then9.i107_crit_edge:             ; preds = %for.end.i104
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then9.i107

if.then9.i107:                                    ; preds = %for.end.i104.if.then9.i107_crit_edge, %for.inc.i102.if.then9.i107_crit_edge
  %call10.i105 = tail call i32 @net_ratelimit() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i105)
  %tobool11.not.i106 = icmp eq i32 %call10.i105, 0
  br i1 %tobool11.not.i106, label %if.then9.i107.if.end_crit_edge, label %if.then12.i109

if.then9.i107.if.end_crit_edge:                   ; preds = %if.then9.i107
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then12.i109:                                   ; preds = %if.then9.i107
  call void @__sanitizer_cov_trace_pc() #19
  %dev.i108 = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 18
  %48 = ptrtoint ptr %dev.i108 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i108, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %49, ptr noundef nonnull @.str.32, i32 noundef 8192, i32 noundef 540, ptr noundef nonnull @.str.34) #20
  br label %if.end

if.end:                                           ; preds = %if.then12.i109, %if.then9.i107.if.end_crit_edge, %for.end.i104.if.end_crit_edge, %b44_wait_bit.exit.if.end_crit_edge
  %50 = ptrtoint ptr %sdev1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sdev1, align 8
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %write32.i.i113 = getelementptr inbounds %struct.ssb_bus_ops, ptr %53, i32 0, i32 5
  %54 = ptrtoint ptr %write32.i.i113 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %write32.i.i113, align 4
  tail call void %55(ptr noundef %51, i16 noundef zeroext 528, i32 noundef 0) #17
  %rx_cons = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 8
  %56 = ptrtoint ptr %rx_cons to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %rx_cons, align 8
  %rx_prod = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 7
  %57 = ptrtoint ptr %rx_prod to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %rx_prod, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.end, %entry.if.end11_crit_edge
  %58 = ptrtoint ptr %sdev1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %sdev1, align 8
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %write32.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %61, i32 0, i32 5
  %62 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %63(ptr noundef %59, i16 noundef zeroext 1080, i32 noundef 1) #17
  br label %for.body.i117

for.body.i117:                                    ; preds = %for.body.i117.for.body.i117_crit_edge, %if.end11
  %reg.020.i = phi i32 [ 1280, %if.end11 ], [ %add.i, %for.body.i117.for.body.i117_crit_edge ]
  %64 = ptrtoint ptr %sdev1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %sdev1, align 8
  %conv.i.i = trunc i32 %reg.020.i to i16
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 4
  %read32.i.i.i115 = getelementptr inbounds %struct.ssb_bus_ops, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %read32.i.i.i115 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %read32.i.i.i115, align 4
  %call.i.i.i116 = tail call i32 %69(ptr noundef %65, i16 noundef zeroext %conv.i.i) #17
  %add.i = add nuw nsw i32 %reg.020.i, 4
  %cmp.i = icmp ult i32 %reg.020.i, 1369
  br i1 %cmp.i, label %for.body.i117.for.body.i117_crit_edge, label %for.body.i117.for.body3.i_crit_edge

for.body.i117.for.body3.i_crit_edge:              ; preds = %for.body.i117
  br label %for.body3.i

for.body.i117.for.body.i117_crit_edge:            ; preds = %for.body.i117
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i117

for.body3.i:                                      ; preds = %for.body3.i.for.body3.i_crit_edge, %for.body.i117.for.body3.i_crit_edge
  %reg.121.i = phi i32 [ %add6.i, %for.body3.i.for.body3.i_crit_edge ], [ 1408, %for.body.i117.for.body3.i_crit_edge ]
  %70 = ptrtoint ptr %sdev1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %sdev1, align 8
  %conv.i17.i = trunc i32 %reg.121.i to i16
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 4
  %read32.i.i18.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %read32.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %read32.i.i18.i, align 4
  %call.i.i19.i = tail call i32 %75(ptr noundef %71, i16 noundef zeroext %conv.i17.i) #17
  %add6.i = add nuw nsw i32 %reg.121.i, 4
  %cmp2.i = icmp ult i32 %reg.121.i, 1493
  br i1 %cmp2.i, label %for.body3.i.for.body3.i_crit_edge, label %b44_clear_stats.exit

for.body3.i.for.body3.i_crit_edge:                ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body3.i

b44_clear_stats.exit:                             ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %reset_kind)
  %cmp = icmp eq i32 %reset_kind, 5
  br i1 %cmp, label %b44_clear_stats.exit.cleanup_crit_edge, label %if.end13

b44_clear_stats.exit.cleanup_crit_edge:           ; preds = %b44_clear_stats.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end13:                                         ; preds = %b44_clear_stats.exit
  %76 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %bus, align 4
  %bustype = getelementptr inbounds %struct.ssb_bus, ptr %77, i32 0, i32 5
  %78 = ptrtoint ptr %bustype to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %bustype, align 4
  %80 = zext i32 %79 to i64
  call void @__sanitizer_cov_trace_switch(i64 %80, ptr @__sancov_gen_cov_switch_values)
  switch i32 %79, label %if.end13.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb19
    i32 2, label %if.end13.do.end_crit_edge
    i32 3, label %if.end13.do.end_crit_edge153
  ]

if.end13.do.end_crit_edge153:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

if.end13.do.end_crit_edge:                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

if.end13.sw.epilog_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  %call16 = tail call i32 @ssb_clockspeed(ptr noundef %77) #17
  %add = add i32 %call16, 2500000
  %div17 = udiv i32 %add, 5000000
  %and18 = and i32 %div17, 127
  %or = or i32 %and18, 128
  %81 = ptrtoint ptr %sdev1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %sdev1, align 8
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %82, align 4
  %write32.i.i119 = getelementptr inbounds %struct.ssb_bus_ops, ptr %84, i32 0, i32 5
  %85 = ptrtoint ptr %write32.i.i119 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %write32.i.i119, align 4
  tail call void %86(ptr noundef %82, i16 noundef zeroext 1040, i32 noundef %or) #17
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  %87 = ptrtoint ptr %sdev1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %sdev1, align 8
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %88, align 4
  %write32.i.i121 = getelementptr inbounds %struct.ssb_bus_ops, ptr %90, i32 0, i32 5
  %91 = ptrtoint ptr %write32.i.i121 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %write32.i.i121, align 4
  tail call void %92(ptr noundef %88, i16 noundef zeroext 1040, i32 noundef 141) #17
  br label %sw.epilog

do.end:                                           ; preds = %if.end13.do.end_crit_edge, %if.end13.do.end_crit_edge153
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1323, i32 noundef 9, ptr noundef null) #17
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb19, %sw.bb, %if.end13.sw.epilog_crit_edge
  %93 = ptrtoint ptr %sdev1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %sdev1, align 8
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %94, align 4
  %read32.i.i123 = getelementptr inbounds %struct.ssb_bus_ops, ptr %96, i32 0, i32 2
  %97 = ptrtoint ptr %read32.i.i123 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %read32.i.i123, align 4
  %call.i.i124 = tail call i32 %98(ptr noundef %94, i16 noundef zeroext 1040) #17
  %99 = ptrtoint ptr %sdev1 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %sdev1, align 8
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %100, align 4
  %read32.i.i126 = getelementptr inbounds %struct.ssb_bus_ops, ptr %102, i32 0, i32 2
  %103 = ptrtoint ptr %read32.i.i126 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %read32.i.i126, align 4
  %call.i.i127 = tail call i32 %104(ptr noundef %100, i16 noundef zeroext 0) #17
  %and41 = and i32 %call.i.i127, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  %105 = ptrtoint ptr %sdev1 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %sdev1, align 8
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %106, align 4
  br i1 %tobool42.not, label %if.then43, label %if.else

if.then43:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  %write32.i.i129 = getelementptr inbounds %struct.ssb_bus_ops, ptr %108, i32 0, i32 5
  %109 = ptrtoint ptr %write32.i.i129 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %write32.i.i129, align 4
  tail call void %110(ptr noundef %106, i16 noundef zeroext 1068, i32 noundef 8) #17
  %111 = ptrtoint ptr %sdev1 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %sdev1, align 8
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %112, align 4
  %read32.i.i131 = getelementptr inbounds %struct.ssb_bus_ops, ptr %114, i32 0, i32 2
  %115 = ptrtoint ptr %read32.i.i131 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %read32.i.i131, align 4
  %call.i.i132 = tail call i32 %116(ptr noundef %112, i16 noundef zeroext 1068) #17
  %flags = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 13
  %117 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %flags, align 4
  %or45 = or i32 %118, 268435456
  store i32 %or45, ptr %flags, align 4
  br label %cleanup

if.else:                                          ; preds = %sw.epilog
  %read32.i.i134 = getelementptr inbounds %struct.ssb_bus_ops, ptr %108, i32 0, i32 2
  %119 = ptrtoint ptr %read32.i.i134 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %read32.i.i134, align 4
  %call.i.i135 = tail call i32 %120(ptr noundef %106, i16 noundef zeroext 0) #17
  %and47 = and i32 %call.i.i135, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.else.if.end52_crit_edge, label %if.then49

if.else.if.end52_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end52

if.then49:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %and50 = and i32 %call.i.i135, -32769
  %121 = ptrtoint ptr %sdev1 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %sdev1, align 8
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %122, align 4
  %write32.i.i137 = getelementptr inbounds %struct.ssb_bus_ops, ptr %124, i32 0, i32 5
  %125 = ptrtoint ptr %write32.i.i137 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %write32.i.i137, align 4
  tail call void %126(ptr noundef %122, i16 noundef zeroext 0, i32 noundef %and50) #17
  %127 = ptrtoint ptr %sdev1 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %sdev1, align 8
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %128, align 4
  %read32.i.i139 = getelementptr inbounds %struct.ssb_bus_ops, ptr %130, i32 0, i32 2
  %131 = ptrtoint ptr %read32.i.i139 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %read32.i.i139, align 4
  %call.i.i140 = tail call i32 %132(ptr noundef %128, i16 noundef zeroext 0) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %133 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %133(i32 noundef 21474800) #17
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %if.else.if.end52_crit_edge
  %flags53 = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 13
  %134 = ptrtoint ptr %flags53 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %flags53, align 4
  %and54 = and i32 %135, -268435457
  store i32 %and54, ptr %flags53, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %if.then43, %b44_clear_stats.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @b44_phy_reset(ptr nocapture noundef readonly %bp) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #17
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !178
  %flags = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 13
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 4
  %and = and i32 %2, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %phy_addr.i = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 23
  %3 = ptrtoint ptr %phy_addr.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %phy_addr.i, align 8
  %conv.i = zext i8 %4 to i32
  %sdev.i.i = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 17
  %5 = ptrtoint ptr %sdev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sdev.i.i, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %write32.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %10(ptr noundef %6, i16 noundef zeroext 1052, i32 noundef 1) #17
  %shl.i = shl nuw nsw i32 %conv.i, 23
  %or4.i = or i32 %shl.i, 1342341120
  %11 = ptrtoint ptr %sdev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sdev.i.i, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %write32.i.i8.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %write32.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write32.i.i8.i, align 4
  tail call void %16(ptr noundef %12, i16 noundef zeroext 1044, i32 noundef %or4.i) #17
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i
  %i.033.i.i = phi i32 [ 0, %if.end.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %17 = ptrtoint ptr %sdev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sdev.i.i, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %read32.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %read32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read32.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 %22(ptr noundef %18, i16 noundef zeroext 1052) #17
  %and.i.i = and i32 %call.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool1.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool1.not.i.i, label %for.inc.i.i, label %for.end.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 2147480) #17
  %inc.i.i = add nuw nsw i32 %i.033.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 100
  br i1 %exitcond.not.i.i, label %for.inc.i.i.if.then9.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.i

for.inc.i.i.if.then9.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then9.i.i

for.end.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %i.033.i.i)
  %cmp8.i.i = icmp eq i32 %i.033.i.i, 100
  br i1 %cmp8.i.i, label %for.end.i.i.if.then9.i.i_crit_edge, label %if.end3

for.end.i.i.if.then9.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then9.i.i

if.then9.i.i:                                     ; preds = %for.end.i.i.if.then9.i.i_crit_edge, %for.inc.i.i.if.then9.i.i_crit_edge
  %call10.i.i = tail call i32 @net_ratelimit() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %tobool11.not.i.i = icmp eq i32 %call10.i.i, 0
  br i1 %tobool11.not.i.i, label %if.then9.i.i.cleanup_crit_edge, label %if.then12.i.i

if.then9.i.i.cleanup_crit_edge:                   ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then12.i.i:                                    ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %dev.i.i = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 18
  %24 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %25, ptr noundef nonnull @.str.32, i32 noundef 1, i32 noundef 1052, ptr noundef nonnull @.str.34) #20
  br label %cleanup

if.end3:                                          ; preds = %for.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 21474800) #17
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags, align 4
  %and.i20 = and i32 %28, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i20)
  %tobool.not.i21 = icmp eq i32 %and.i20, 0
  br i1 %tobool.not.i21, label %b44_readphy.exit, label %if.end3.if.then6_crit_edge

if.end3.if.then6_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then6

b44_readphy.exit:                                 ; preds = %if.end3
  %29 = ptrtoint ptr %phy_addr.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %phy_addr.i, align 8
  %conv.i23 = zext i8 %30 to i32
  %call.i24 = call fastcc i32 @__b44_readphy(ptr noundef %bp, i32 noundef %conv.i23, i32 noundef 0, ptr noundef nonnull %val) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24)
  %tobool5.not = icmp eq i32 %call.i24, 0
  br i1 %tobool5.not, label %b44_readphy.exit.if.then6_crit_edge, label %b44_readphy.exit.cleanup_crit_edge

b44_readphy.exit.cleanup_crit_edge:               ; preds = %b44_readphy.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

b44_readphy.exit.if.then6_crit_edge:              ; preds = %b44_readphy.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then6

if.then6:                                         ; preds = %b44_readphy.exit.if.then6_crit_edge, %if.end3.if.then6_crit_edge
  %31 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %val, align 4
  %and7 = and i32 %32, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.then6.cleanup_crit_edge, label %if.then9

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #19
  %dev = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 18
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %34, ptr noundef nonnull @.str.52) #20
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.then6.cleanup_crit_edge, %b44_readphy.exit.cleanup_crit_edge, %if.then12.i.i, %if.then9.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call.i24, %b44_readphy.exit.cleanup_crit_edge ], [ -19, %if.then9 ], [ 0, %if.then6.cleanup_crit_edge ], [ -19, %if.then12.i.i ], [ -19, %if.then9.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @b44_register_phy_one(ptr noundef %bp) unnamed_addr #2 align 64 {
entry:
  %mask = alloca [3 x i32], align 4
  %bus_id = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %mask) #17
  %0 = call ptr @memset(ptr %mask, i32 0, i32 12)
  %sdev1 = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 17
  %1 = ptrtoint ptr %sdev1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sdev1, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %bus_id) #17
  %3 = call ptr @memset(ptr %bus_id, i32 255, i32 64)
  %bus = getelementptr inbounds %struct.ssb_device, ptr %2, i32 0, i32 3
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 4
  %call.i = tail call ptr @mdiobus_alloc_size(i32 noundef 0) #17
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %dev = getelementptr inbounds %struct.ssb_device, ptr %2, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.53) #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %bp, ptr %priv, align 8
  %read = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 4
  %9 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @b44_mdio_read_phylib, ptr %read, align 4
  %write = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 5
  %10 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @b44_mdio_write_phylib, ptr %write, align 8
  %name = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.55, ptr %name, align 4
  %dev3 = getelementptr inbounds %struct.ssb_device, ptr %2, i32 0, i32 1
  %12 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev3, align 4
  %parent = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 9
  %14 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %parent, align 4
  %phy_addr = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 23
  %15 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %phy_addr, align 8
  %conv = zext i8 %16 to i32
  %shl = shl nuw i32 1, %conv
  %neg = xor i32 %shl, -1
  %phy_mask = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 13
  %17 = ptrtoint ptr %phy_mask to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %neg, ptr %phy_mask, align 8
  %id = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 2
  %18 = load i32, ptr @instance, align 4
  %call4 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %id, i32 noundef 61, ptr noundef nonnull @.str.56, i32 noundef %18)
  %mii_bus5 = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 25
  %19 = ptrtoint ptr %mii_bus5 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %mii_bus5, align 4
  %call6 = tail call i32 @__mdiobus_register(ptr noundef nonnull %call.i, ptr noundef null) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end13, label %do.end11

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %20 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.58) #20
  br label %err_out_mdiobus

if.end13:                                         ; preds = %if.end
  %22 = ptrtoint ptr %mii_bus5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mii_bus5, align 4
  %24 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %phy_addr, align 8
  %conv16 = zext i8 %25 to i32
  %call17 = tail call zeroext i1 @mdiobus_is_registered_device(ptr noundef %23, i32 noundef %conv16) #17
  br i1 %call17, label %if.end13.if.else_crit_edge, label %land.lhs.true

if.end13.if.else_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else

land.lhs.true:                                    ; preds = %if.end13
  %boardflags_lo = getelementptr inbounds %struct.ssb_bus, ptr %5, i32 0, i32 22, i32 70
  %26 = ptrtoint ptr %boardflags_lo to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %boardflags_lo, align 4
  %28 = and i16 %27, 144
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool19.not = icmp eq i16 %28, 0
  br i1 %tobool19.not, label %land.lhs.true.if.else_crit_edge, label %do.end23

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else

do.end23:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %29 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev3, align 4
  %31 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %phy_addr, align 8
  %conv26 = zext i8 %32 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %30, ptr noundef nonnull @.str.61, i32 noundef %conv26) #20
  %33 = ptrtoint ptr %phy_addr to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %phy_addr, align 8
  %call31 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %bus_id, i32 noundef 64, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.65, i32 noundef 0)
  br label %if.end38

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end13.if.else_crit_edge
  %34 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %phy_addr, align 8
  %conv36 = zext i8 %35 to i32
  %call37 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %bus_id, i32 noundef 64, ptr noundef nonnull @.str.64, ptr noundef %id, i32 noundef %conv36)
  br label %if.end38

if.end38:                                         ; preds = %if.else, %do.end23
  %dev39 = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 18
  %36 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev39, align 4
  %call41 = call ptr @phy_connect(ptr noundef %37, ptr noundef nonnull %bus_id, ptr noundef nonnull @b44_adjust_link, i32 noundef 2) #17
  %cmp.i = icmp ugt ptr %call41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end46, label %if.end51

do.end46:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #19
  %38 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev3, align 4
  %40 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %phy_addr, align 8
  %conv49 = zext i8 %41 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.67, i32 noundef %conv49) #20
  %42 = ptrtoint ptr %call41 to i32
  call void @mdiobus_unregister(ptr noundef nonnull %call.i) #17
  br label %err_out_mdiobus

if.end51:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #19
  %43 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %mask, align 4
  %or.i.i111 = or i32 %44, 588
  store i32 %or.i.i111, ptr %mask, align 4
  %supported = getelementptr inbounds %struct.phy_device, ptr %call41, i32 0, i32 16
  %call.i.i = call i32 @__bitmap_and(ptr noundef %supported, ptr noundef %supported, ptr noundef nonnull %mask, i32 noundef 92) #17
  %advertising = getelementptr inbounds %struct.phy_device, ptr %call41, i32 0, i32 17
  %45 = call ptr @memcpy(ptr %advertising, ptr %supported, i32 12)
  %old_link = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 26
  %46 = ptrtoint ptr %old_link to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %old_link, align 8
  %addr = getelementptr inbounds %struct.mdio_device, ptr %call41, i32 0, i32 6
  %47 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %addr, align 8
  %conv63 = trunc i32 %48 to i8
  %49 = ptrtoint ptr %phy_addr to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv63, ptr %phy_addr, align 8
  call void @phy_attached_info(ptr noundef %call41) #17
  br label %cleanup

err_out_mdiobus:                                  ; preds = %do.end46, %do.end11
  %err.0 = phi i32 [ %call6, %do.end11 ], [ %42, %do.end46 ]
  call void @mdiobus_free(ptr noundef nonnull %call.i) #17
  br label %cleanup

cleanup:                                          ; preds = %err_out_mdiobus, %if.end51, %do.end
  %retval.0 = phi i32 [ 0, %if.end51 ], [ %err.0, %err_out_mdiobus ], [ -12, %do.end ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %bus_id) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mask) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssb_bus_may_powerdown(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b44_open(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 4096) #21
  %rx_buffers.i = getelementptr i8, ptr %dev, i32 2380
  %1 = ptrtoint ptr %rx_buffers.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i.i, ptr %rx_buffers.i, align 4
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.b44_alloc_consistent.exit_crit_edge, label %if.end.i

entry.b44_alloc_consistent.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %b44_alloc_consistent.exit

if.end.i:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i5.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 4096) #21
  %tx_buffers.i = getelementptr i8, ptr %dev, i32 2384
  %3 = ptrtoint ptr %tx_buffers.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i5.i, ptr %tx_buffers.i, align 8
  %tobool4.not.i = icmp eq ptr %call7.i.i5.i, null
  br i1 %tobool4.not.i, label %if.end.i.b44_alloc_consistent.exit_crit_edge, label %if.end6.i

if.end.i.b44_alloc_consistent.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %b44_alloc_consistent.exit

if.end6.i:                                        ; preds = %if.end.i
  %sdev.i = getelementptr i8, ptr %dev, i32 3088
  %4 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sdev.i, align 8
  %dma_dev.i = getelementptr inbounds %struct.ssb_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dma_dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_dev.i, align 4
  %rx_ring_dma.i = getelementptr i8, ptr %dev, i32 3096
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %7, i32 noundef 4096, ptr noundef %rx_ring_dma.i, i32 noundef 3264, i32 noundef 0) #17
  %rx_ring.i = getelementptr i8, ptr %dev, i32 2356
  %8 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i.i, ptr %rx_ring.i, align 4
  %tobool9.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool9.not.i, label %if.then10.i, label %if.end6.i.if.end30.i_crit_edge

if.end6.i.if.end30.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end30.i

if.then10.i:                                      ; preds = %if.end6.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i6.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 4096) #21
  %tobool14.not.i = icmp eq ptr %call7.i.i6.i, null
  br i1 %tobool14.not.i, label %if.then10.i.b44_alloc_consistent.exit_crit_edge, label %if.end16.i

if.then10.i.b44_alloc_consistent.exit_crit_edge:  ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %b44_alloc_consistent.exit

if.end16.i:                                       ; preds = %if.then10.i
  %10 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sdev.i, align 8
  %dma_dev18.i = getelementptr inbounds %struct.ssb_device, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %dma_dev18.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dma_dev18.i, align 4
  %call.i7.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call7.i.i6.i) #17
  br i1 %call.i7.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.end16.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge, label %if.then.i.i, !prof !179

land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %dma_map_single_attrs.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %13) #17
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %13, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %17, %if.end.i.i.i ], [ %15, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.31, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #17
  br label %dma_map_single_attrs.exit.i

if.end39.i.i:                                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @debug_dma_map_single(ptr noundef %13, ptr noundef nonnull %call7.i.i6.i, i32 noundef 4096) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %18 = load ptr, ptr @mem_map, align 4
  %19 = ptrtoint ptr %call7.i.i6.i to i32
  %sub.i.i = add i32 %19, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %18, i32 %shr.i.i
  %and.i.i = and i32 %19, 4088
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %13, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #17
  br label %dma_map_single_attrs.exit.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge ]
  %20 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sdev.i, align 8
  %dma_dev21.i = getelementptr inbounds %struct.ssb_device, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %dma_dev21.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dma_dev21.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %23, i32 noundef %retval.0.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i)
  %cmp.i.i = icmp eq i32 %retval.0.i.i, -1
  %24 = add i32 %retval.0.i.i, -1073737728
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073741824, i32 %24)
  %cmp.i = icmp ult i32 %24, -1073741824
  %or.cond.i = or i1 %cmp.i.i, %cmp.i
  br i1 %or.cond.i, label %dma_map_single_attrs.exit.i.out_err.sink.split.i_crit_edge, label %cleanup.i

dma_map_single_attrs.exit.i.out_err.sink.split.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_err.sink.split.i

cleanup.i:                                        ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %25 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call7.i.i6.i, ptr %rx_ring.i, align 4
  %26 = ptrtoint ptr %rx_ring_dma.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %retval.0.i.i, ptr %rx_ring_dma.i, align 8
  %flags.i = getelementptr i8, ptr %dev, i32 2620
  %27 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %28, 536870912
  store i32 %or.i, ptr %flags.i, align 4
  br label %if.end30.i

if.end30.i:                                       ; preds = %cleanup.i, %if.end6.i.if.end30.i_crit_edge
  %29 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sdev.i, align 8
  %dma_dev32.i = getelementptr inbounds %struct.ssb_device, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %dma_dev32.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dma_dev32.i, align 4
  %tx_ring_dma.i = getelementptr i8, ptr %dev, i32 3100
  %call.i8.i = tail call ptr @dma_alloc_attrs(ptr noundef %32, i32 noundef 4096, ptr noundef %tx_ring_dma.i, i32 noundef 3264, i32 noundef 0) #17
  %tx_ring.i = getelementptr i8, ptr %dev, i32 2360
  %33 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i8.i, ptr %tx_ring.i, align 8
  %tobool35.not.i = icmp eq ptr %call.i8.i, null
  br i1 %tobool35.not.i, label %if.then36.i, label %if.end30.i.if.end_crit_edge

if.end30.i.if.end_crit_edge:                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then36.i:                                      ; preds = %if.end30.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %34 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i10.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %34, i32 noundef 3520, i32 noundef 4096) #21
  %tobool40.not.i = icmp eq ptr %call7.i.i10.i, null
  br i1 %tobool40.not.i, label %if.then36.i.b44_alloc_consistent.exit_crit_edge, label %if.end42.i

if.then36.i.b44_alloc_consistent.exit_crit_edge:  ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %b44_alloc_consistent.exit

if.end42.i:                                       ; preds = %if.then36.i
  %35 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sdev.i, align 8
  %dma_dev44.i = getelementptr inbounds %struct.ssb_device, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %dma_dev44.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dma_dev44.i, align 4
  %call.i11.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call7.i.i10.i) #17
  br i1 %call.i11.i, label %land.rhs.i13.i, label %if.end39.i26.i

land.rhs.i13.i:                                   ; preds = %if.end42.i
  %.b1.i12.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i12.i, label %land.rhs.i13.i.dma_map_single_attrs.exit28.i_crit_edge, label %if.then.i17.i, !prof !179

land.rhs.i13.i.dma_map_single_attrs.exit28.i_crit_edge: ; preds = %land.rhs.i13.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %dma_map_single_attrs.exit28.i

if.then.i17.i:                                    ; preds = %land.rhs.i13.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i14.i = tail call ptr @dev_driver_string(ptr noundef %38) #17
  %init_name.i.i15.i = getelementptr inbounds %struct.device, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %init_name.i.i15.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %init_name.i.i15.i, align 8
  %tobool.not.i.i16.i = icmp eq ptr %40, null
  br i1 %tobool.not.i.i16.i, label %if.end.i.i18.i, label %if.then.i17.i.dev_name.exit.i20.i_crit_edge

if.then.i17.i.dev_name.exit.i20.i_crit_edge:      ; preds = %if.then.i17.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %dev_name.exit.i20.i

if.end.i.i18.i:                                   ; preds = %if.then.i17.i
  call void @__sanitizer_cov_trace_pc() #19
  %41 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %38, align 4
  br label %dev_name.exit.i20.i

dev_name.exit.i20.i:                              ; preds = %if.end.i.i18.i, %if.then.i17.i.dev_name.exit.i20.i_crit_edge
  %retval.0.i.i19.i = phi ptr [ %42, %if.end.i.i18.i ], [ %40, %if.then.i17.i.dev_name.exit.i20.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.31, ptr noundef %call16.i14.i, ptr noundef %retval.0.i.i19.i) #17
  br label %dma_map_single_attrs.exit28.i

if.end39.i26.i:                                   ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @debug_dma_map_single(ptr noundef %38, ptr noundef nonnull %call7.i.i10.i, i32 noundef 4096) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %43 = load ptr, ptr @mem_map, align 4
  %44 = ptrtoint ptr %call7.i.i10.i to i32
  %sub.i21.i = add i32 %44, 1073741824
  %shr.i22.i = lshr i32 %sub.i21.i, 12
  %add.ptr.i23.i = getelementptr %struct.page, ptr %43, i32 %shr.i22.i
  %and.i24.i = and i32 %44, 4088
  %call41.i25.i = tail call i32 @dma_map_page_attrs(ptr noundef %38, ptr noundef %add.ptr.i23.i, i32 noundef %and.i24.i, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #17
  br label %dma_map_single_attrs.exit28.i

dma_map_single_attrs.exit28.i:                    ; preds = %if.end39.i26.i, %dev_name.exit.i20.i, %land.rhs.i13.i.dma_map_single_attrs.exit28.i_crit_edge
  %retval.0.i27.i = phi i32 [ %call41.i25.i, %if.end39.i26.i ], [ -1, %dev_name.exit.i20.i ], [ -1, %land.rhs.i13.i.dma_map_single_attrs.exit28.i_crit_edge ]
  %45 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sdev.i, align 8
  %dma_dev47.i = getelementptr inbounds %struct.ssb_device, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %dma_dev47.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dma_dev47.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %48, i32 noundef %retval.0.i27.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i27.i)
  %cmp.i29.i = icmp eq i32 %retval.0.i27.i, -1
  %49 = add i32 %retval.0.i27.i, -1073737728
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073741824, i32 %49)
  %cmp53.i = icmp ult i32 %49, -1073741824
  %or.cond2.i = or i1 %cmp.i29.i, %cmp53.i
  br i1 %or.cond2.i, label %dma_map_single_attrs.exit28.i.out_err.sink.split.i_crit_edge, label %cleanup61.i

dma_map_single_attrs.exit28.i.out_err.sink.split.i_crit_edge: ; preds = %dma_map_single_attrs.exit28.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_err.sink.split.i

cleanup61.i:                                      ; preds = %dma_map_single_attrs.exit28.i
  call void @__sanitizer_cov_trace_pc() #19
  %50 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call7.i.i10.i, ptr %tx_ring.i, align 8
  %51 = ptrtoint ptr %tx_ring_dma.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %retval.0.i27.i, ptr %tx_ring_dma.i, align 4
  %flags59.i = getelementptr i8, ptr %dev, i32 2620
  %52 = ptrtoint ptr %flags59.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flags59.i, align 4
  %or60.i = or i32 %53, 1073741824
  store i32 %or60.i, ptr %flags59.i, align 4
  br label %if.end

out_err.sink.split.i:                             ; preds = %dma_map_single_attrs.exit28.i.out_err.sink.split.i_crit_edge, %dma_map_single_attrs.exit.i.out_err.sink.split.i_crit_edge
  %call7.i.i10.sink.i = phi ptr [ %call7.i.i6.i, %dma_map_single_attrs.exit.i.out_err.sink.split.i_crit_edge ], [ %call7.i.i10.i, %dma_map_single_attrs.exit28.i.out_err.sink.split.i_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i10.sink.i) #17
  br label %b44_alloc_consistent.exit

b44_alloc_consistent.exit:                        ; preds = %out_err.sink.split.i, %if.then36.i.b44_alloc_consistent.exit_crit_edge, %if.then10.i.b44_alloc_consistent.exit_crit_edge, %if.end.i.b44_alloc_consistent.exit_crit_edge, %entry.b44_alloc_consistent.exit_crit_edge
  tail call fastcc void @b44_free_consistent(ptr noundef %add.ptr.i) #17
  br label %out

if.end:                                           ; preds = %cleanup61.i, %if.end30.i.if.end_crit_edge
  %napi = getelementptr i8, ptr %dev, i32 2392
  tail call void @napi_enable(ptr noundef %napi) #17
  tail call fastcc void @b44_init_rings(ptr noundef %add.ptr.i)
  tail call fastcc void @b44_init_hw(ptr noundef %add.ptr.i, i32 noundef 1)
  tail call fastcc void @b44_check_phy(ptr noundef %add.ptr.i)
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %54 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %55, ptr noundef nonnull @b44_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %dev, ptr noundef %dev) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then5, label %do.body, !prof !174

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @napi_disable(ptr noundef %napi) #17
  tail call fastcc void @b44_chip_reset(ptr noundef %add.ptr.i, i32 noundef 5)
  tail call fastcc void @b44_free_rings(ptr noundef %add.ptr.i)
  tail call fastcc void @b44_free_consistent(ptr noundef %add.ptr.i)
  br label %out

do.body:                                          ; preds = %if.end
  %timer = getelementptr i8, ptr %dev, i32 2628
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @b44_timer, i32 noundef 0, ptr noundef nonnull @.str.29, ptr noundef nonnull @b44_open.__key) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %56 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %56, 100
  %expires = getelementptr i8, ptr %dev, i32 2636
  %57 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %add, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %timer) #17
  %imask.i = getelementptr i8, ptr %dev, i32 2348
  %58 = ptrtoint ptr %imask.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %imask.i, align 4
  %60 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %sdev.i, align 8
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 4
  %write32.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %63, i32 0, i32 5
  %64 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %65(ptr noundef %61, i16 noundef zeroext 36, i32 noundef %59) #17
  %flags = getelementptr i8, ptr %dev, i32 2620
  %66 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %flags, align 4
  %and = and i32 %67, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %do.body.if.end12_crit_edge, label %if.then11

do.body.if.end12_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %68 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %phydev, align 16
  tail call void @phy_start(ptr noundef %69) #17
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %do.body.if.end12_crit_edge
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %70 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %71, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #17
  br label %out

out:                                              ; preds = %if.end12, %if.then5, %b44_alloc_consistent.exit
  %err.0 = phi i32 [ -12, %b44_alloc_consistent.exit ], [ %call.i, %if.then5 ], [ %call.i, %if.end12 ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b44_close(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #17
  %flags = getelementptr i8, ptr %dev, i32 2620
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %4 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phydev, align 16
  tail call void @phy_stop(ptr noundef %5) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %napi = getelementptr i8, ptr %dev, i32 2392
  tail call void @napi_disable(ptr noundef %napi) #17
  %timer = getelementptr i8, ptr %dev, i32 2628
  %call1 = tail call i32 @del_timer_sync(ptr noundef %timer) #17
  tail call void @_raw_spin_lock_irq(ptr noundef %add.ptr.i) #17
  %sdev.i.i.i.i = getelementptr i8, ptr %dev, i32 3088
  %6 = ptrtoint ptr %sdev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sdev.i.i.i.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %write32.i.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %write32.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write32.i.i.i.i.i, align 4
  tail call void %11(ptr noundef %7, i16 noundef zeroext 36, i32 noundef 0) #17
  %12 = ptrtoint ptr %sdev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sdev.i.i.i.i, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %read32.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %read32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read32.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 %17(ptr noundef %13, i16 noundef zeroext 36) #17
  %call.i = tail call fastcc i32 @b44_phy_reset(ptr noundef %add.ptr.i) #17
  %dev.i = getelementptr i8, ptr %dev, i32 3092
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %19, ptr noundef nonnull @.str.46) #20
  %20 = ptrtoint ptr %sdev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sdev.i.i.i.i, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %write32.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %25(ptr noundef %21, i16 noundef zeroext 168, i32 noundef 4) #17
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags, align 4
  %and.i = and i32 %27, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %..i = select i1 %tobool.not.i, i32 5, i32 4
  tail call fastcc void @b44_chip_reset(ptr noundef %add.ptr.i, i32 noundef %..i) #17
  tail call fastcc void @b44_free_rings(ptr noundef %add.ptr.i)
  tail call void @netif_carrier_off(ptr noundef %dev) #17
  tail call void @_raw_spin_unlock_irq(ptr noundef %add.ptr.i) #17
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %28 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irq, align 4
  %call3 = tail call ptr @free_irq(i32 noundef %29, ptr noundef %dev) #17
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %31)
  %tobool6.not = icmp sgt i32 %31, -1
  br i1 %tobool6.not, label %if.end.if.end8_crit_edge, label %if.then7

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @b44_init_hw(ptr noundef %add.ptr.i, i32 noundef 3)
  tail call fastcc void @b44_setup_wol(ptr noundef %add.ptr.i)
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end.if.end8_crit_edge
  tail call fastcc void @b44_free_consistent(ptr noundef %add.ptr.i)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b44_start_xmit(ptr noundef %skb, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %len2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len2, align 4
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr.i) #17
  %tx_cons = getelementptr i8, ptr %dev, i32 2368
  %2 = ptrtoint ptr %tx_cons to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_cons, align 8
  %tx_prod = getelementptr i8, ptr %dev, i32 2364
  %4 = ptrtoint ptr %tx_prod to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_prod, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp8.not = icmp ugt i32 %3, %5
  %tx_pending15 = getelementptr i8, ptr %dev, i32 3108
  %6 = ptrtoint ptr %tx_pending15 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_pending15, align 4
  %sub16.neg = add i32 %3, -512
  %sub16.neg.sink = select i1 %cmp8.not, i32 %sub16.neg, i32 %3
  %sub14 = sub i32 %sub16.neg.sink, %5
  %sub17 = sub i32 0, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %sub14, i32 %sub17)
  %cmp18 = icmp eq i32 %sub14, %sub17
  br i1 %cmp18, label %if.then, label %if.end, !prof !174

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %8 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %9, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #17
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.47) #20
  br label %cleanup133

if.end:                                           ; preds = %entry
  %sdev = getelementptr i8, ptr %dev, i32 3088
  %10 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sdev, align 8
  %dma_dev = getelementptr inbounds %struct.ssb_device, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %dma_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dma_dev, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %15) #17
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !179

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %13) #17
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 3
  %16 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  %18 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %13, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %19, %if.end.i.i ], [ %17, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.31, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #17
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @debug_dma_map_single(ptr noundef %13, ptr noundef %15, i32 noundef %1) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %20 = load ptr, ptr @mem_map, align 4
  %21 = ptrtoint ptr %15 to i32
  %sub.i = add i32 %21, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i229 = getelementptr %struct.page, ptr %20, i32 %shr.i
  %and.i = and i32 %21, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %13, ptr noundef %add.ptr.i229, i32 noundef %and.i, i32 noundef %1, i32 noundef 1, i32 noundef 0) #17
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %22 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sdev, align 8
  %dma_dev23 = getelementptr inbounds %struct.ssb_device, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %dma_dev23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dma_dev23, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %25, i32 noundef %retval.0.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %retval.0.i, -1
  %add26 = add i32 %retval.0.i, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741823, i32 %add26)
  %cmp28 = icmp ugt i32 %add26, 1073741823
  %or.cond = select i1 %cmp.i, i1 true, i1 %cmp28
  br i1 %or.cond, label %if.then30, label %dma_map_single_attrs.exit.if.end67_crit_edge

dma_map_single_attrs.exit.if.end67_crit_edge:     ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end67

if.then30:                                        ; preds = %dma_map_single_attrs.exit
  %26 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sdev, align 8
  %dma_dev32 = getelementptr inbounds %struct.ssb_device, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %dma_dev32 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dma_dev32, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %29, i32 noundef %retval.0.i) #17
  br i1 %cmp.i, label %if.then30.if.end38_crit_edge, label %if.then35

if.then30.if.end38_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end38

if.then35:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #19
  %30 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sdev, align 8
  %dma_dev37 = getelementptr inbounds %struct.ssb_device, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %dma_dev37 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dma_dev37, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %33, i32 noundef %retval.0.i, i32 noundef %1, i32 noundef 1, i32 noundef 0) #17
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %if.then30.if.end38_crit_edge
  %call.i232 = tail call ptr @__alloc_skb(i32 noundef %1, i32 noundef 2593, i32 noundef 0, i32 noundef -1) #17
  %tobool40.not = icmp eq ptr %call.i232, null
  br i1 %tobool40.not, label %if.end38.cleanup133_crit_edge, label %if.end42

if.end38.cleanup133_crit_edge:                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup133

if.end42:                                         ; preds = %if.end38
  %34 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sdev, align 8
  %dma_dev44 = getelementptr inbounds %struct.ssb_device, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %dma_dev44 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dma_dev44, align 4
  %data45 = getelementptr inbounds %struct.sk_buff, ptr %call.i232, i32 0, i32 19
  %38 = ptrtoint ptr %data45 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data45, align 4
  %call.i233 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %39) #17
  br i1 %call.i233, label %land.rhs.i235, label %if.end39.i248

land.rhs.i235:                                    ; preds = %if.end42
  %.b1.i234 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i234, label %land.rhs.i235.dma_map_single_attrs.exit250_crit_edge, label %if.then.i239, !prof !179

land.rhs.i235.dma_map_single_attrs.exit250_crit_edge: ; preds = %land.rhs.i235
  call void @__sanitizer_cov_trace_pc() #19
  br label %dma_map_single_attrs.exit250

if.then.i239:                                     ; preds = %land.rhs.i235
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i236 = tail call ptr @dev_driver_string(ptr noundef %37) #17
  %init_name.i.i237 = getelementptr inbounds %struct.device, ptr %37, i32 0, i32 3
  %40 = ptrtoint ptr %init_name.i.i237 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %init_name.i.i237, align 8
  %tobool.not.i.i238 = icmp eq ptr %41, null
  br i1 %tobool.not.i.i238, label %if.end.i.i240, label %if.then.i239.dev_name.exit.i242_crit_edge

if.then.i239.dev_name.exit.i242_crit_edge:        ; preds = %if.then.i239
  call void @__sanitizer_cov_trace_pc() #19
  br label %dev_name.exit.i242

if.end.i.i240:                                    ; preds = %if.then.i239
  call void @__sanitizer_cov_trace_pc() #19
  %42 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %37, align 4
  br label %dev_name.exit.i242

dev_name.exit.i242:                               ; preds = %if.end.i.i240, %if.then.i239.dev_name.exit.i242_crit_edge
  %retval.0.i.i241 = phi ptr [ %43, %if.end.i.i240 ], [ %41, %if.then.i239.dev_name.exit.i242_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.31, ptr noundef %call16.i236, ptr noundef %retval.0.i.i241) #17
  br label %dma_map_single_attrs.exit250

if.end39.i248:                                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @debug_dma_map_single(ptr noundef %37, ptr noundef %39, i32 noundef %1) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %44 = load ptr, ptr @mem_map, align 4
  %45 = ptrtoint ptr %39 to i32
  %sub.i243 = add i32 %45, 1073741824
  %shr.i244 = lshr i32 %sub.i243, 12
  %add.ptr.i245 = getelementptr %struct.page, ptr %44, i32 %shr.i244
  %and.i246 = and i32 %45, 4095
  %call41.i247 = tail call i32 @dma_map_page_attrs(ptr noundef %37, ptr noundef %add.ptr.i245, i32 noundef %and.i246, i32 noundef %1, i32 noundef 1, i32 noundef 0) #17
  br label %dma_map_single_attrs.exit250

dma_map_single_attrs.exit250:                     ; preds = %if.end39.i248, %dev_name.exit.i242, %land.rhs.i235.dma_map_single_attrs.exit250_crit_edge
  %retval.0.i249 = phi i32 [ %call41.i247, %if.end39.i248 ], [ -1, %dev_name.exit.i242 ], [ -1, %land.rhs.i235.dma_map_single_attrs.exit250_crit_edge ]
  %46 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sdev, align 8
  %dma_dev48 = getelementptr inbounds %struct.ssb_device, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %dma_dev48 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dma_dev48, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %49, i32 noundef %retval.0.i249) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i249)
  %cmp.i251 = icmp eq i32 %retval.0.i249, -1
  %add52 = add i32 %retval.0.i249, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741823, i32 %add52)
  %cmp54 = icmp ugt i32 %add52, 1073741823
  %or.cond228 = select i1 %cmp.i251, i1 true, i1 %cmp54
  br i1 %or.cond228, label %if.then56, label %cleanup

if.then56:                                        ; preds = %dma_map_single_attrs.exit250
  %50 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sdev, align 8
  %dma_dev58 = getelementptr inbounds %struct.ssb_device, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %dma_dev58 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dma_dev58, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %53, i32 noundef %retval.0.i249) #17
  br i1 %cmp.i251, label %if.then56.if.end64_crit_edge, label %if.then61

if.then56.if.end64_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end64

if.then61:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #19
  %54 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sdev, align 8
  %dma_dev63 = getelementptr inbounds %struct.ssb_device, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %dma_dev63 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dma_dev63, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %57, i32 noundef %retval.0.i249, i32 noundef %1, i32 noundef 1, i32 noundef 0) #17
  br label %if.end64

if.end64:                                         ; preds = %if.then61, %if.then56.if.end64_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i232, i32 noundef 1) #17
  br label %cleanup133

cleanup:                                          ; preds = %dma_map_single_attrs.exit250
  call void @__sanitizer_cov_trace_pc() #19
  %call66 = tail call ptr @skb_put(ptr noundef nonnull %call.i232, i32 noundef %1) #17
  %58 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data, align 4
  %60 = call ptr @memcpy(ptr %call66, ptr %59, i32 %1)
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 0) #17
  br label %if.end67

if.end67:                                         ; preds = %cleanup, %dma_map_single_attrs.exit.if.end67_crit_edge
  %skb.addr.1 = phi ptr [ %call.i232, %cleanup ], [ %skb, %dma_map_single_attrs.exit.if.end67_crit_edge ]
  %mapping.1 = phi i32 [ %retval.0.i249, %cleanup ], [ %retval.0.i, %dma_map_single_attrs.exit.if.end67_crit_edge ]
  %61 = ptrtoint ptr %tx_prod to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %tx_prod, align 4
  %tx_buffers = getelementptr i8, ptr %dev, i32 2384
  %63 = ptrtoint ptr %tx_buffers to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %tx_buffers, align 8
  %arrayidx = getelementptr %struct.ring_info, ptr %64, i32 %62
  %65 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %skb.addr.1, ptr %arrayidx, align 4
  %66 = load ptr, ptr %tx_buffers, align 8
  %mapping72 = getelementptr %struct.ring_info, ptr %66, i32 %62, i32 1
  %67 = ptrtoint ptr %mapping72 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %mapping.1, ptr %mapping72, align 4
  %and = and i32 %1, 8191
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %62)
  %cmp73 = icmp eq i32 %62, 511
  %spec.select.v = select i1 %cmp73, i32 -268435456, i32 -536870912
  %spec.select = or i32 %spec.select.v, %and
  %68 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  %tx_ring = getelementptr i8, ptr %dev, i32 2360
  %69 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %tx_ring, align 8
  %arrayidx78 = getelementptr %struct.dma_desc, ptr %70, i32 %62
  %71 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %68, ptr %arrayidx78, align 4
  %dma_offset = getelementptr i8, ptr %dev, i32 2616
  %72 = ptrtoint ptr %dma_offset to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %dma_offset, align 8
  %add80 = add i32 %73, %mapping.1
  %74 = tail call i32 @llvm.bswap.i32(i32 %add80)
  %75 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %tx_ring, align 8
  %addr = getelementptr %struct.dma_desc, ptr %76, i32 %62, i32 1
  %77 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %74, ptr %addr, align 4
  %flags83 = getelementptr i8, ptr %dev, i32 2620
  %78 = ptrtoint ptr %flags83 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %flags83, align 4
  %and84 = and i32 %79, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %if.end67.if.end88_crit_edge, label %if.then86

if.end67.if.end88_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end88

if.then86:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #19
  %80 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %sdev, align 8
  %tx_ring_dma = getelementptr i8, ptr %dev, i32 3100
  %82 = ptrtoint ptr %tx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %tx_ring_dma, align 4
  %mul = shl i32 %62, 3
  %dma_dev.i = getelementptr inbounds %struct.ssb_device, ptr %81, i32 0, i32 2
  %84 = ptrtoint ptr %dma_dev.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dma_dev.i, align 4
  %add.i = add i32 %83, %mul
  %.b.i = load i1, ptr @dma_desc_sync_size, align 4
  %86 = select i1 %.b.i, i32 128, i32 0
  tail call void @dma_sync_single_for_device(ptr noundef %85, i32 noundef %add.i, i32 noundef %86, i32 noundef 1) #17
  br label %if.end88

if.end88:                                         ; preds = %if.then86, %if.end67.if.end88_crit_edge
  %add89 = add i32 %62, 1
  %and90 = and i32 %add89, 511
  %87 = ptrtoint ptr %tx_prod to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %and90, ptr %tx_prod, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !180
  tail call void @arm_heavy_mb() #17
  %mul95 = shl nuw nsw i32 %and90, 3
  %88 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %sdev, align 8
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %89, align 4
  %write32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %91, i32 0, i32 5
  %92 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %write32.i.i, align 4
  tail call void %93(ptr noundef %89, i16 noundef zeroext 520, i32 noundef %mul95) #17
  %94 = ptrtoint ptr %flags83 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %flags83, align 4
  %and97 = and i32 %95, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %if.end88.if.end101_crit_edge, label %if.then99

if.end88.if.end101_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end101

if.then99:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #19
  %96 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %sdev, align 8
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %97, align 4
  %write32.i.i256 = getelementptr inbounds %struct.ssb_bus_ops, ptr %99, i32 0, i32 5
  %100 = ptrtoint ptr %write32.i.i256 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %write32.i.i256, align 4
  tail call void %101(ptr noundef %97, i16 noundef zeroext 520, i32 noundef %mul95) #17
  br label %if.end101

if.end101:                                        ; preds = %if.then99, %if.end88.if.end101_crit_edge
  %102 = ptrtoint ptr %flags83 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %flags83, align 4
  %and103 = and i32 %103, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  br i1 %tobool104.not, label %if.end101.if.end107_crit_edge, label %if.then105

if.end101.if.end107_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end107

if.then105:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #19
  %104 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %sdev, align 8
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %105, align 4
  %read32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %107, i32 0, i32 2
  %108 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %109(ptr noundef %105, i16 noundef zeroext 520) #17
  br label %if.end107

if.end107:                                        ; preds = %if.then105, %if.end101.if.end107_crit_edge
  %len108 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 6
  %110 = ptrtoint ptr %len108 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %len108, align 4
  %_tx.i.i258 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %112 = ptrtoint ptr %_tx.i.i258 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %_tx.i.i258, align 128
  %dql.i.i = getelementptr inbounds %struct.netdev_queue, ptr %113, i32 0, i32 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %111)
  %cmp.i.i.i = icmp ugt i32 %111, 268435455
  br i1 %cmp.i.i.i, label %do.body2.i.i.i, label %dql_queued.exit.i.i, !prof !174

do.body2.i.i.i:                                   ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/dynamic_queue_limits.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #17, !srcloc !181
  unreachable

dql_queued.exit.i.i:                              ; preds = %if.end107
  %last_obj_cnt.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %113, i32 0, i32 15, i32 2
  %114 = ptrtoint ptr %last_obj_cnt.i.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %111, ptr %last_obj_cnt.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !182
  %115 = ptrtoint ptr %dql.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %dql.i.i, align 128
  %add.i.i.i = add i32 %116, %111
  store i32 %add.i.i.i, ptr %dql.i.i, align 128
  %adj_limit.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %113, i32 0, i32 15, i32 1
  %117 = ptrtoint ptr %adj_limit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load volatile i32, ptr %adj_limit.i.i.i, align 4
  %119 = load volatile i32, ptr %dql.i.i, align 128
  %sub.i.i.i = sub i32 %118, %119
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i.i)
  %cmp.i.i = icmp sgt i32 %sub.i.i.i, -1
  br i1 %cmp.i.i, label %dql_queued.exit.i.i.netdev_sent_queue.exit_crit_edge, label %if.end.i.i260, !prof !179

dql_queued.exit.i.i.netdev_sent_queue.exit_crit_edge: ; preds = %dql_queued.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %netdev_sent_queue.exit

if.end.i.i260:                                    ; preds = %dql_queued.exit.i.i
  %state.i.i259 = getelementptr inbounds %struct.netdev_queue, ptr %113, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 1, ptr noundef %state.i.i259) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !183
  %120 = ptrtoint ptr %adj_limit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load volatile i32, ptr %adj_limit.i.i.i, align 4
  %122 = ptrtoint ptr %dql.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load volatile i32, ptr %dql.i.i, align 128
  %sub.i22.i.i = sub i32 %121, %123
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i22.i.i)
  %cmp7.i.i = icmp sgt i32 %sub.i22.i.i, -1
  br i1 %cmp7.i.i, label %if.then14.i.i, label %if.end.i.i260.netdev_sent_queue.exit_crit_edge, !prof !174

if.end.i.i260.netdev_sent_queue.exit_crit_edge:   ; preds = %if.end.i.i260
  call void @__sanitizer_cov_trace_pc() #19
  br label %netdev_sent_queue.exit

if.then14.i.i:                                    ; preds = %if.end.i.i260
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state.i.i259) #17
  br label %netdev_sent_queue.exit

netdev_sent_queue.exit:                           ; preds = %if.then14.i.i, %if.end.i.i260.netdev_sent_queue.exit_crit_edge, %dql_queued.exit.i.i.netdev_sent_queue.exit_crit_edge
  %124 = ptrtoint ptr %tx_cons to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %tx_cons, align 8
  %126 = ptrtoint ptr %tx_prod to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %tx_prod, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %125, i32 %127)
  %cmp111.not = icmp ugt i32 %125, %127
  %tx_pending123 = getelementptr i8, ptr %dev, i32 3108
  %128 = ptrtoint ptr %tx_pending123 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %tx_pending123, align 4
  %sub124.neg = add i32 %125, -512
  %sub124.neg.sink = select i1 %cmp111.not, i32 %sub124.neg, i32 %125
  %sub122 = sub i32 %sub124.neg.sink, %127
  %sub125 = sub i32 0, %129
  call void @__sanitizer_cov_trace_cmp4(i32 %sub122, i32 %sub125)
  %cmp128 = icmp eq i32 %sub122, %sub125
  br i1 %cmp128, label %if.then130, label %netdev_sent_queue.exit.cleanup133_crit_edge

netdev_sent_queue.exit.cleanup133_crit_edge:      ; preds = %netdev_sent_queue.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup133

if.then130:                                       ; preds = %netdev_sent_queue.exit
  call void @__sanitizer_cov_trace_pc() #19
  %130 = ptrtoint ptr %_tx.i.i258 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %_tx.i.i258, align 128
  %state.i.i262 = getelementptr inbounds %struct.netdev_queue, ptr %131, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i262) #17
  br label %cleanup133

cleanup133:                                       ; preds = %if.then130, %netdev_sent_queue.exit.cleanup133_crit_edge, %if.end64, %if.end38.cleanup133_crit_edge, %if.then
  %rc.0 = phi i32 [ 0, %if.then130 ], [ 0, %netdev_sent_queue.exit.cleanup133_crit_edge ], [ 16, %if.then ], [ 16, %if.end64 ], [ 16, %if.end38.cleanup133_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr.i, i32 noundef %call5) #17
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @b44_set_rx_mode(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  tail call void @_raw_spin_lock_irq(ptr noundef %add.ptr.i) #17
  tail call fastcc void @__b44_set_rx_mode(ptr noundef %dev)
  tail call void @_raw_spin_unlock_irq(ptr noundef %add.ptr.i) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b44_set_mac_addr(ptr noundef %dev, ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %p, i32 0, i32 1
  %2 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sa_data, align 4
  %4 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not.i = icmp eq i32 %4, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %if.end
  %add.ptr.i.i = getelementptr %struct.sockaddr, ptr %p, i32 0, i32 1, i32 4
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %6 to i32
  %or.i.i = or i32 %3, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %if.end4

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end4:                                          ; preds = %is_valid_ether_addr.exit
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #17
  tail call void @_raw_spin_lock_irq(ptr noundef %add.ptr.i) #17
  %sdev.i = getelementptr i8, ptr %dev, i32 3088
  %7 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sdev.i, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %read32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %12(ptr noundef %8, i16 noundef zeroext 1024) #17
  %and = and i32 %call.i.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then8, label %if.end4.if.end9_crit_edge

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end9

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @__b44_set_mac_addr(ptr noundef %add.ptr.i)
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end4.if.end9_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %add.ptr.i) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %is_valid_ether_addr.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ -16, %entry.cleanup_crit_edge ], [ -22, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b44_ioctl(ptr noundef %dev, ptr noundef %ifr, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_lock_irq(ptr noundef %add.ptr.i) #17
  %flags = getelementptr i8, ptr %dev, i32 2620
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %do.body

do.body:                                          ; preds = %if.end
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %4 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phydev, align 16
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %do.body8, label %do.end14, !prof !174

do.body8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/broadcom/b44.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2149, 0\0A.popsection", ""() #17, !srcloc !184
  unreachable

do.end14:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  %call16 = tail call i32 @phy_mii_ioctl(ptr noundef nonnull %5, ptr noundef %ifr, i32 noundef %cmd) #17
  br label %if.end19

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %mii_if = getelementptr i8, ptr %dev, i32 3124
  %ifr_ifru.i = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %call18 = tail call i32 @generic_mii_ioctl(ptr noundef %mii_if, ptr noundef %ifr_ifru.i, i32 noundef %cmd, ptr noundef null) #17
  br label %if.end19

if.end19:                                         ; preds = %if.else, %do.end14
  %err.0 = phi i32 [ %call16, %do.end14 ], [ %call18, %if.else ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %add.ptr.i) #17
  br label %out

out:                                              ; preds = %if.end19, %entry.out_crit_edge
  %err.1 = phi i32 [ %err.0, %if.end19 ], [ -22, %entry.out_crit_edge ]
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b44_change_mtu(ptr noundef %dev, i32 noundef %new_mtu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %2 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %new_mtu, ptr %mtu, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  tail call void @_raw_spin_lock_irq(ptr noundef %add.ptr.i) #17
  %sdev.i.i.i.i = getelementptr i8, ptr %dev, i32 3088
  %3 = ptrtoint ptr %sdev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sdev.i.i.i.i, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %write32.i.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %write32.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write32.i.i.i.i.i, align 4
  tail call void %8(ptr noundef %4, i16 noundef zeroext 36, i32 noundef 0) #17
  %9 = ptrtoint ptr %sdev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sdev.i.i.i.i, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %read32.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %read32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read32.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 %14(ptr noundef %10, i16 noundef zeroext 36) #17
  %call.i = tail call fastcc i32 @b44_phy_reset(ptr noundef %add.ptr.i) #17
  %dev.i = getelementptr i8, ptr %dev, i32 3092
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %16, ptr noundef nonnull @.str.46) #20
  %17 = ptrtoint ptr %sdev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sdev.i.i.i.i, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %write32.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %22(ptr noundef %18, i16 noundef zeroext 168, i32 noundef 4) #17
  %flags.i = getelementptr i8, ptr %dev, i32 2620
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %24, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %..i = select i1 %tobool.not.i, i32 5, i32 4
  tail call fastcc void @b44_chip_reset(ptr noundef %add.ptr.i, i32 noundef %..i) #17
  %mtu2 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %25 = ptrtoint ptr %mtu2 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %new_mtu, ptr %mtu2, align 4
  tail call fastcc void @b44_init_rings(ptr noundef %add.ptr.i)
  tail call fastcc void @b44_init_hw(ptr noundef %add.ptr.i, i32 noundef 1)
  tail call void @_raw_spin_unlock_irq(ptr noundef %add.ptr.i) #17
  %imask.i = getelementptr i8, ptr %dev, i32 2348
  %26 = ptrtoint ptr %imask.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %imask.i, align 4
  %28 = ptrtoint ptr %sdev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sdev.i.i.i.i, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %write32.i.i.i13 = getelementptr inbounds %struct.ssb_bus_ops, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %write32.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write32.i.i.i13, align 4
  tail call void %33(ptr noundef %29, i16 noundef zeroext 36, i32 noundef %27) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @b44_tx_timeout(ptr noundef %dev, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.48) #20
  tail call void @_raw_spin_lock_irq(ptr noundef %add.ptr.i) #17
  %sdev.i.i.i.i = getelementptr i8, ptr %dev, i32 3088
  %0 = ptrtoint ptr %sdev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev.i.i.i.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %write32.i.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %write32.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write32.i.i.i.i.i, align 4
  tail call void %5(ptr noundef %1, i16 noundef zeroext 36, i32 noundef 0) #17
  %6 = ptrtoint ptr %sdev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sdev.i.i.i.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %read32.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %read32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read32.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 %11(ptr noundef %7, i16 noundef zeroext 36) #17
  %call.i = tail call fastcc i32 @b44_phy_reset(ptr noundef %add.ptr.i) #17
  %dev.i = getelementptr i8, ptr %dev, i32 3092
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %13, ptr noundef nonnull @.str.46) #20
  %14 = ptrtoint ptr %sdev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sdev.i.i.i.i, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %write32.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %19(ptr noundef %15, i16 noundef zeroext 168, i32 noundef 4) #17
  %flags.i = getelementptr i8, ptr %dev, i32 2620
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %21, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %..i = select i1 %tobool.not.i, i32 5, i32 4
  tail call fastcc void @b44_chip_reset(ptr noundef %add.ptr.i, i32 noundef %..i) #17
  tail call fastcc void @b44_init_rings(ptr noundef %add.ptr.i)
  tail call fastcc void @b44_init_hw(ptr noundef %add.ptr.i, i32 noundef 1)
  tail call void @_raw_spin_unlock_irq(ptr noundef %add.ptr.i) #17
  %imask.i = getelementptr i8, ptr %dev, i32 2348
  %22 = ptrtoint ptr %imask.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %imask.i, align 4
  %24 = ptrtoint ptr %sdev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sdev.i.i.i.i, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %write32.i.i.i9 = getelementptr inbounds %struct.ssb_bus_ops, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %write32.i.i.i9 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write32.i.i.i9, align 4
  tail call void %29(ptr noundef %25, i16 noundef zeroext 36, i32 noundef %23) #17
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %30 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %31) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @b44_get_stats64(ptr noundef %dev, ptr nocapture noundef writeonly %nstat) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %syncp = getelementptr i8, ptr %dev, i32 3056
  %rx_pkts = getelementptr i8, ptr %dev, i32 2896
  %tx_pkts = getelementptr i8, ptr %dev, i32 2704
  %tx_packets = getelementptr inbounds %struct.rtnl_link_stats64, ptr %nstat, i32 0, i32 1
  %rx_octets = getelementptr i8, ptr %dev, i32 2888
  %rx_bytes = getelementptr inbounds %struct.rtnl_link_stats64, ptr %nstat, i32 0, i32 2
  %tx_octets = getelementptr i8, ptr %dev, i32 2696
  %tx_bytes = getelementptr inbounds %struct.rtnl_link_stats64, ptr %nstat, i32 0, i32 3
  %tx_jabber_pkts = getelementptr i8, ptr %dev, i32 2776
  %tx_oversize_pkts = getelementptr i8, ptr %dev, i32 2784
  %tx_underruns = getelementptr i8, ptr %dev, i32 2800
  %tx_excessive_cols = getelementptr i8, ptr %dev, i32 2832
  %tx_late_cols = getelementptr i8, ptr %dev, i32 2840
  %tx_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %nstat, i32 0, i32 5
  %rx_multicast_pkts = getelementptr i8, ptr %dev, i32 2912
  %multicast = getelementptr inbounds %struct.rtnl_link_stats64, ptr %nstat, i32 0, i32 8
  %tx_total_cols = getelementptr i8, ptr %dev, i32 2808
  %collisions = getelementptr inbounds %struct.rtnl_link_stats64, ptr %nstat, i32 0, i32 9
  %rx_oversize_pkts = getelementptr i8, ptr %dev, i32 2976
  %rx_undersize = getelementptr i8, ptr %dev, i32 3008
  %rx_length_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %nstat, i32 0, i32 10
  %rx_missed_pkts = getelementptr i8, ptr %dev, i32 2992
  %rx_over_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %nstat, i32 0, i32 11
  %rx_align_errs = getelementptr i8, ptr %dev, i32 3024
  %rx_frame_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %nstat, i32 0, i32 13
  %rx_crc_errs = getelementptr i8, ptr %dev, i32 3016
  %rx_crc_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %nstat, i32 0, i32 12
  %rx_jabber_pkts = getelementptr i8, ptr %dev, i32 2968
  %rx_crc_align_errs = getelementptr i8, ptr %dev, i32 3000
  %rx_symbol_errs = getelementptr i8, ptr %dev, i32 3032
  %rx_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %nstat, i32 0, i32 4
  %tx_aborted_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %nstat, i32 0, i32 16
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %call1 = tail call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp)
  %0 = ptrtoint ptr %rx_pkts to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %rx_pkts, align 8
  %2 = ptrtoint ptr %nstat to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %nstat, align 8
  %3 = ptrtoint ptr %tx_pkts to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %tx_pkts, align 8
  %5 = ptrtoint ptr %tx_packets to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %tx_packets, align 8
  %6 = ptrtoint ptr %rx_octets to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %rx_octets, align 8
  %8 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %rx_bytes, align 8
  %9 = ptrtoint ptr %tx_octets to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %tx_octets, align 8
  %11 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %tx_bytes, align 8
  %12 = ptrtoint ptr %tx_jabber_pkts to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %tx_jabber_pkts, align 8
  %14 = ptrtoint ptr %tx_oversize_pkts to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %tx_oversize_pkts, align 8
  %add = add i64 %15, %13
  %16 = ptrtoint ptr %tx_underruns to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %tx_underruns, align 8
  %add2 = add i64 %add, %17
  %18 = ptrtoint ptr %tx_excessive_cols to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %tx_excessive_cols, align 8
  %add3 = add i64 %add2, %19
  %20 = ptrtoint ptr %tx_late_cols to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %tx_late_cols, align 8
  %add4 = add i64 %add3, %21
  %22 = ptrtoint ptr %tx_errors to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %add4, ptr %tx_errors, align 8
  %23 = ptrtoint ptr %rx_multicast_pkts to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %rx_multicast_pkts, align 8
  %25 = ptrtoint ptr %multicast to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %multicast, align 8
  %26 = ptrtoint ptr %tx_total_cols to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %tx_total_cols, align 8
  %28 = ptrtoint ptr %collisions to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %collisions, align 8
  %29 = ptrtoint ptr %rx_oversize_pkts to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %rx_oversize_pkts, align 8
  %31 = ptrtoint ptr %rx_undersize to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %rx_undersize, align 8
  %add5 = add i64 %32, %30
  %33 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %add5, ptr %rx_length_errors, align 8
  %34 = ptrtoint ptr %rx_missed_pkts to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %rx_missed_pkts, align 8
  %36 = ptrtoint ptr %rx_over_errors to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %rx_over_errors, align 8
  %37 = ptrtoint ptr %rx_align_errs to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %rx_align_errs, align 8
  %39 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %38, ptr %rx_frame_errors, align 8
  %40 = ptrtoint ptr %rx_crc_errs to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %rx_crc_errs, align 8
  %42 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %rx_crc_errors, align 8
  %43 = ptrtoint ptr %rx_jabber_pkts to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %rx_jabber_pkts, align 8
  %45 = load i64, ptr %rx_oversize_pkts, align 8
  %add7 = add i64 %45, %44
  %46 = load i64, ptr %rx_missed_pkts, align 8
  %add9 = add i64 %add7, %46
  %47 = ptrtoint ptr %rx_crc_align_errs to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %rx_crc_align_errs, align 8
  %add10 = add i64 %add9, %48
  %49 = load i64, ptr %rx_undersize, align 8
  %add12 = add i64 %add10, %49
  %50 = load i64, ptr %rx_crc_errs, align 8
  %add14 = add i64 %add12, %50
  %51 = load i64, ptr %rx_align_errs, align 8
  %add16 = add i64 %add14, %51
  %52 = ptrtoint ptr %rx_symbol_errs to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %rx_symbol_errs, align 8
  %add17 = add i64 %add16, %53
  %54 = ptrtoint ptr %rx_errors to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %add17, ptr %rx_errors, align 8
  %55 = load i64, ptr %tx_underruns, align 8
  %56 = ptrtoint ptr %tx_aborted_errors to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %55, ptr %tx_aborted_errors, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !185
  %57 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %syncp, align 4
  %cmp.i.i.i.i.not = icmp eq i32 %58, %call1
  br i1 %cmp.i.i.i.i.not, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @b44_poll_controller(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %1) #17
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call = tail call i32 @b44_interrupt(i32 noundef %3, ptr noundef %dev)
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %5) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @b44_init_rings(ptr nocapture noundef %bp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @b44_free_rings(ptr noundef %bp)
  %rx_ring = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 3
  %0 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_ring, align 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 4096)
  %tx_ring = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 4
  %3 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tx_ring, align 8
  %5 = call ptr @memset(ptr %4, i32 0, i32 4096)
  %flags = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 13
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %sdev = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 17
  %8 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sdev, align 8
  %dma_dev = getelementptr inbounds %struct.ssb_device, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %dma_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dma_dev, align 4
  %rx_ring_dma = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 19
  %12 = ptrtoint ptr %rx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_ring_dma, align 8
  tail call void @dma_sync_single_for_device(ptr noundef %11, i32 noundef %13, i32 noundef 4096, i32 noundef 0) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %and2 = and i32 %15, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %sdev5 = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 17
  %16 = ptrtoint ptr %sdev5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sdev5, align 8
  %dma_dev6 = getelementptr inbounds %struct.ssb_device, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %dma_dev6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dma_dev6, align 4
  %tx_ring_dma = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 20
  %20 = ptrtoint ptr %tx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_ring_dma, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %19, i32 noundef %21, i32 noundef 4096, i32 noundef 1) #17
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %rx_pending = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 21
  %22 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_pending, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp23.not = icmp eq i32 %23, 0
  br i1 %cmp23.not, label %if.end7.for.end_crit_edge, label %if.end7.for.body_crit_edge

if.end7.for.body_crit_edge:                       ; preds = %if.end7
  br label %for.body

if.end7.for.end_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.024, 1
  %24 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx_pending, align 8
  %cmp = icmp ult i32 %inc, %25
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end7.for.body_crit_edge
  %i.024 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.end7.for.body_crit_edge ]
  %call = tail call fastcc i32 @b44_alloc_rx_skb(ptr noundef %bp, i32 noundef -1, i32 noundef %i.024)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp8 = icmp slt i32 %call, 0
  br i1 %cmp8, label %for.body.for.end_crit_edge, label %for.cond

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge, %if.end7.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @b44_init_hw(ptr noundef %bp, i32 noundef %reset_kind) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @b44_chip_reset(ptr noundef %bp, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %reset_kind)
  %cmp = icmp eq i32 %reset_kind, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call = tail call fastcc i32 @b44_phy_reset(ptr noundef %bp)
  tail call fastcc void @b44_setup_phy(ptr noundef %bp)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %sdev.i = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 17
  %0 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %write32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write32.i.i, align 4
  tail call void %5(ptr noundef %1, i16 noundef zeroext 168, i32 noundef 225) #17
  %6 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sdev.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %write32.i.i48 = getelementptr inbounds %struct.ssb_bus_ops, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %write32.i.i48 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write32.i.i48, align 4
  tail call void %11(ptr noundef %7, i16 noundef zeroext 256, i32 noundef 16777216) #17
  %dev = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 18
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call fastcc void @__b44_set_rx_mode(ptr noundef %13)
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %mtu = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 20
  %16 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mtu, align 4
  %add4 = add i32 %17, 50
  %18 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sdev.i, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %write32.i.i50 = getelementptr inbounds %struct.ssb_bus_ops, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %write32.i.i50 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write32.i.i50, align 4
  tail call void %23(ptr noundef %19, i16 noundef zeroext 1028, i32 noundef %add4) #17
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  %mtu6 = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 20
  %26 = ptrtoint ptr %mtu6 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mtu6, align 4
  %add9 = add i32 %27, 50
  %28 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sdev.i, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %write32.i.i52 = getelementptr inbounds %struct.ssb_bus_ops, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %write32.i.i52 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write32.i.i52, align 4
  tail call void %33(ptr noundef %29, i16 noundef zeroext 1032, i32 noundef %add9) #17
  %34 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sdev.i, align 8
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %write32.i.i54 = getelementptr inbounds %struct.ssb_bus_ops, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %write32.i.i54 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write32.i.i54, align 4
  tail call void %39(ptr noundef %35, i16 noundef zeroext 1076, i32 noundef 56) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %reset_kind)
  %cmp10 = icmp eq i32 %reset_kind, 3
  %40 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sdev.i, align 8
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %write32.i.i56 = getelementptr inbounds %struct.ssb_bus_ops, ptr %43, i32 0, i32 5
  %44 = ptrtoint ptr %write32.i.i56 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %write32.i.i56, align 4
  br i1 %cmp10, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void %45(ptr noundef %41, i16 noundef zeroext 528, i32 noundef 61) #17
  br label %if.end16

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void %45(ptr noundef %41, i16 noundef zeroext 512, i32 noundef 1) #17
  %tx_ring_dma = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 20
  %46 = ptrtoint ptr %tx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tx_ring_dma, align 4
  %dma_offset = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 12
  %48 = ptrtoint ptr %dma_offset to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dma_offset, align 8
  %add12 = add i32 %49, %47
  %50 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sdev.i, align 8
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %write32.i.i60 = getelementptr inbounds %struct.ssb_bus_ops, ptr %53, i32 0, i32 5
  %54 = ptrtoint ptr %write32.i.i60 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %write32.i.i60, align 4
  tail call void %55(ptr noundef %51, i16 noundef zeroext 516, i32 noundef %add12) #17
  %56 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %sdev.i, align 8
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  %write32.i.i62 = getelementptr inbounds %struct.ssb_bus_ops, ptr %59, i32 0, i32 5
  %60 = ptrtoint ptr %write32.i.i62 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %write32.i.i62, align 4
  tail call void %61(ptr noundef %57, i16 noundef zeroext 528, i32 noundef 61) #17
  %rx_ring_dma = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 19
  %62 = ptrtoint ptr %rx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rx_ring_dma, align 8
  %64 = ptrtoint ptr %dma_offset to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %dma_offset, align 8
  %add14 = add i32 %65, %63
  %66 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %sdev.i, align 8
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  %write32.i.i64 = getelementptr inbounds %struct.ssb_bus_ops, ptr %69, i32 0, i32 5
  %70 = ptrtoint ptr %write32.i.i64 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %write32.i.i64, align 4
  tail call void %71(ptr noundef %67, i16 noundef zeroext 532, i32 noundef %add14) #17
  %rx_pending = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 21
  %72 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %rx_pending, align 8
  %74 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %sdev.i, align 8
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 4
  %write32.i.i66 = getelementptr inbounds %struct.ssb_bus_ops, ptr %77, i32 0, i32 5
  %78 = ptrtoint ptr %write32.i.i66 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %write32.i.i66, align 4
  tail call void %79(ptr noundef %75, i16 noundef zeroext 536, i32 noundef %73) #17
  %80 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %rx_pending, align 8
  %rx_prod = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 7
  %82 = ptrtoint ptr %rx_prod to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %rx_prod, align 4
  %83 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %sdev.i, align 8
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %84, align 4
  %write32.i.i68 = getelementptr inbounds %struct.ssb_bus_ops, ptr %86, i32 0, i32 5
  %87 = ptrtoint ptr %write32.i.i68 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %write32.i.i68, align 4
  tail call void %88(ptr noundef %84, i16 noundef zeroext 1080, i32 noundef 1) #17
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then11
  %89 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %sdev.i, align 8
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %90, align 4
  %read32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %92, i32 0, i32 2
  %93 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %94(ptr noundef %90, i16 noundef zeroext 1068) #17
  %or = or i32 %call.i.i, 1
  %95 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %sdev.i, align 8
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %96, align 4
  %write32.i.i71 = getelementptr inbounds %struct.ssb_bus_ops, ptr %98, i32 0, i32 5
  %99 = ptrtoint ptr %write32.i.i71 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %write32.i.i71, align 4
  tail call void %100(ptr noundef %96, i16 noundef zeroext 1068, i32 noundef %or) #17
  %101 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %102, i32 0, i32 103
  %103 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %104, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state.i.i) #17
  %dql.i.i = getelementptr inbounds %struct.netdev_queue, ptr %104, i32 0, i32 15
  tail call void @dql_reset(ptr noundef %dql.i.i) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @b44_check_phy(ptr noundef %bp) unnamed_addr #2 align 64 {
entry:
  %bmsr = alloca i32, align 4
  %aux = alloca i32, align 4
  %local_adv = alloca i32, align 4
  %remote_adv = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bmsr) #17
  %0 = ptrtoint ptr %bmsr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %bmsr, align 4, !annotation !178
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %aux) #17
  %1 = ptrtoint ptr %aux to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %aux, align 4, !annotation !178
  %flags = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 13
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %b44_readphy.exit, label %if.then

if.then:                                          ; preds = %entry
  %or = or i32 %3, 131072
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or, ptr %flags, align 4
  %dev = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 18
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %state.i, align 4
  %9 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.then.cleanup_crit_edge, label %if.then2

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then2:                                         ; preds = %if.then
  %sdev.i = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 17
  %10 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sdev.i, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %read32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %15(ptr noundef %11, i16 noundef zeroext 1072) #17
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 4
  %and9 = and i32 %call.i.i, -2
  %and5 = lshr i32 %17, 16
  %and5.lobit = and i32 %and5, 1
  %val.0 = or i32 %and5.lobit, %and9
  %18 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sdev.i, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %write32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write32.i.i, align 4
  tail call void %23(ptr noundef %19, i16 noundef zeroext 1072, i32 noundef %val.0) #17
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  tail call void @netif_carrier_on(ptr noundef %25) #17
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %state.i.i, align 4
  %30 = and i32 %29, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %27, ptr noundef nonnull @.str.37) #20
  br label %cleanup

if.else.i:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #19
  %31 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags, align 4
  %and.i = and i32 %32, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i121 = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i121, i32 10, i32 100
  %and4.i = and i32 %32, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  %cond6.i = select i1 %tobool5.not.i, ptr @.str.40, ptr @.str.39
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %27, ptr noundef nonnull @.str.38, i32 noundef %cond.i, ptr noundef nonnull %cond6.i) #20
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 4
  %35 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags, align 4
  %and9.i = and i32 %36, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  %cond11.i = select i1 %tobool10.not.i, ptr @.str.43, ptr @.str.42
  %and13.i = and i32 %36, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  %cond15.i = select i1 %tobool14.not.i, ptr @.str.43, ptr @.str.42
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %34, ptr noundef nonnull @.str.41, ptr noundef nonnull %cond11.i, ptr noundef nonnull %cond15.i) #20
  br label %cleanup

b44_readphy.exit:                                 ; preds = %entry
  %phy_addr.i = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 23
  %37 = ptrtoint ptr %phy_addr.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %phy_addr.i, align 8
  %conv.i = zext i8 %38 to i32
  %call.i = call fastcc i32 @__b44_readphy(ptr noundef %bp, i32 noundef %conv.i, i32 noundef 1, ptr noundef nonnull %bmsr) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool14.not = icmp eq i32 %call.i, 0
  br i1 %tobool14.not, label %land.lhs.true, label %b44_readphy.exit.cleanup_crit_edge

b44_readphy.exit.cleanup_crit_edge:               ; preds = %b44_readphy.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

land.lhs.true:                                    ; preds = %b44_readphy.exit
  %39 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags, align 4
  %and.i126 = and i32 %40, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i126)
  %tobool.not.i127 = icmp eq i32 %and.i126, 0
  br i1 %tobool.not.i127, label %b44_readphy.exit133, label %land.lhs.true.land.lhs.true17_crit_edge

land.lhs.true.land.lhs.true17_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true17

b44_readphy.exit133:                              ; preds = %land.lhs.true
  %41 = ptrtoint ptr %phy_addr.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %phy_addr.i, align 8
  %conv.i129 = zext i8 %42 to i32
  %call.i130 = call fastcc i32 @__b44_readphy(ptr noundef %bp, i32 noundef %conv.i129, i32 noundef 24, ptr noundef nonnull %aux) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i130)
  %tobool16.not = icmp eq i32 %call.i130, 0
  br i1 %tobool16.not, label %b44_readphy.exit133.land.lhs.true17_crit_edge, label %b44_readphy.exit133.cleanup_crit_edge

b44_readphy.exit133.cleanup_crit_edge:            ; preds = %b44_readphy.exit133
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

b44_readphy.exit133.land.lhs.true17_crit_edge:    ; preds = %b44_readphy.exit133
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true17

land.lhs.true17:                                  ; preds = %b44_readphy.exit133.land.lhs.true17_crit_edge, %land.lhs.true.land.lhs.true17_crit_edge
  %43 = ptrtoint ptr %bmsr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bmsr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %44)
  %cmp.not = icmp eq i32 %44, 65535
  br i1 %cmp.not, label %land.lhs.true17.cleanup_crit_edge, label %if.then18

land.lhs.true17.cleanup_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then18:                                        ; preds = %land.lhs.true17
  %45 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %aux, align 4
  %47 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %flags, align 4
  %and26 = and i32 %48, -196609
  %and19 = shl i32 %46, 16
  %49 = and i32 %and19, 131072
  %storemerge = or i32 %and26, %49
  %and28 = shl i32 %46, 16
  %50 = and i32 %and28, 65536
  %storemerge119 = or i32 %storemerge, %50
  store i32 %storemerge119, ptr %flags, align 4
  %dev37 = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 18
  %51 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev37, align 4
  %state.i134 = getelementptr inbounds %struct.net_device, ptr %52, i32 0, i32 6
  %53 = ptrtoint ptr %state.i134 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %state.i134, align 4
  %55 = and i32 %54, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not.i135 = icmp eq i32 %55, 0
  %and40 = and i32 %44, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  %or.cond = select i1 %tobool.not.i135, i1 true, i1 %tobool41.not
  br i1 %or.cond, label %if.else65, label %if.then42

if.then42:                                        ; preds = %if.then18
  %sdev.i136 = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 17
  %56 = ptrtoint ptr %sdev.i136 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %sdev.i136, align 8
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  %read32.i.i137 = getelementptr inbounds %struct.ssb_bus_ops, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %read32.i.i137 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %read32.i.i137, align 4
  %call.i.i138 = tail call i32 %61(ptr noundef %57, i16 noundef zeroext 1072) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %local_adv) #17
  %62 = ptrtoint ptr %local_adv to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -1, ptr %local_adv, align 4, !annotation !178
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remote_adv) #17
  %63 = ptrtoint ptr %remote_adv to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 -1, ptr %remote_adv, align 4, !annotation !178
  %64 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %flags, align 4
  %and51 = and i32 %call.i.i138, -2
  %and46 = lshr i32 %65, 16
  %and46.lobit = and i32 %and46, 1
  %val43.0 = or i32 %and46.lobit, %and51
  %66 = ptrtoint ptr %sdev.i136 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %sdev.i136, align 8
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  %write32.i.i140 = getelementptr inbounds %struct.ssb_bus_ops, ptr %69, i32 0, i32 5
  %70 = ptrtoint ptr %write32.i.i140 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %write32.i.i140, align 4
  tail call void %71(ptr noundef %67, i16 noundef zeroext 1072, i32 noundef %val43.0) #17
  %72 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %flags, align 4
  %and54 = and i32 %73, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %land.lhs.true56, label %if.then42.if.end63_crit_edge

if.then42.if.end63_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end63

land.lhs.true56:                                  ; preds = %if.then42
  %and.i142 = and i32 %73, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i142)
  %tobool.not.i143 = icmp eq i32 %and.i142, 0
  br i1 %tobool.not.i143, label %b44_readphy.exit149, label %land.lhs.true56.land.lhs.true59_crit_edge

land.lhs.true56.land.lhs.true59_crit_edge:        ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true59

b44_readphy.exit149:                              ; preds = %land.lhs.true56
  %74 = ptrtoint ptr %phy_addr.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %phy_addr.i, align 8
  %conv.i145 = zext i8 %75 to i32
  %call.i146 = call fastcc i32 @__b44_readphy(ptr noundef %bp, i32 noundef %conv.i145, i32 noundef 4, ptr noundef nonnull %local_adv) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i146)
  %tobool58.not = icmp eq i32 %call.i146, 0
  br i1 %tobool58.not, label %b44_readphy.exit149.land.lhs.true59_crit_edge, label %b44_readphy.exit149.if.end63_crit_edge

b44_readphy.exit149.if.end63_crit_edge:           ; preds = %b44_readphy.exit149
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end63

b44_readphy.exit149.land.lhs.true59_crit_edge:    ; preds = %b44_readphy.exit149
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true59

land.lhs.true59:                                  ; preds = %b44_readphy.exit149.land.lhs.true59_crit_edge, %land.lhs.true56.land.lhs.true59_crit_edge
  %76 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %flags, align 4
  %and.i151 = and i32 %77, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i151)
  %tobool.not.i152 = icmp eq i32 %and.i151, 0
  br i1 %tobool.not.i152, label %b44_readphy.exit158, label %land.lhs.true59.if.then62_crit_edge

land.lhs.true59.if.then62_crit_edge:              ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then62

b44_readphy.exit158:                              ; preds = %land.lhs.true59
  %78 = ptrtoint ptr %phy_addr.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %phy_addr.i, align 8
  %conv.i154 = zext i8 %79 to i32
  %call.i155 = call fastcc i32 @__b44_readphy(ptr noundef %bp, i32 noundef %conv.i154, i32 noundef 5, ptr noundef nonnull %remote_adv) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i155)
  %tobool61.not = icmp eq i32 %call.i155, 0
  br i1 %tobool61.not, label %b44_readphy.exit158.if.then62_crit_edge, label %b44_readphy.exit158.if.end63_crit_edge

b44_readphy.exit158.if.end63_crit_edge:           ; preds = %b44_readphy.exit158
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end63

b44_readphy.exit158.if.then62_crit_edge:          ; preds = %b44_readphy.exit158
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then62

if.then62:                                        ; preds = %b44_readphy.exit158.if.then62_crit_edge, %land.lhs.true59.if.then62_crit_edge
  %80 = ptrtoint ptr %local_adv to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %local_adv, align 4
  %82 = ptrtoint ptr %remote_adv to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %remote_adv, align 4
  tail call fastcc void @b44_set_flow_ctrl(ptr noundef %bp, i32 noundef %81, i32 noundef %83)
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %b44_readphy.exit158.if.end63_crit_edge, %b44_readphy.exit149.if.end63_crit_edge, %if.then42.if.end63_crit_edge
  %84 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev37, align 4
  tail call void @netif_carrier_on(ptr noundef %85) #17
  tail call fastcc void @b44_link_report(ptr noundef %bp)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remote_adv) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %local_adv) #17
  br label %if.end74

if.else65:                                        ; preds = %if.then18
  %86 = ptrtoint ptr %state.i134 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %state.i134, align 4
  %88 = and i32 %87, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool.not.i160 = icmp eq i32 %88, 0
  %or.cond167 = select i1 %tobool.not.i160, i1 %tobool41.not, i1 false
  br i1 %or.cond167, label %if.then71, label %if.else65.if.end74_crit_edge

if.else65.if.end74_crit_edge:                     ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end74

if.then71:                                        ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @netif_carrier_off(ptr noundef %52) #17
  tail call fastcc void @b44_link_report(ptr noundef %bp)
  br label %if.end74

if.end74:                                         ; preds = %if.then71, %if.else65.if.end74_crit_edge, %if.end63
  %and75 = and i32 %44, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %if.end74.if.end79_crit_edge, label %if.then77

if.end74.if.end79_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end79

if.then77:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #19
  %89 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev37, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %90, ptr noundef nonnull @.str.35) #20
  br label %if.end79

if.end79:                                         ; preds = %if.then77, %if.end74.if.end79_crit_edge
  %and80 = and i32 %44, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %if.end79.cleanup_crit_edge, label %if.then82

if.end79.cleanup_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then82:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #19
  %91 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev37, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %92, ptr noundef nonnull @.str.36) #20
  br label %cleanup

cleanup:                                          ; preds = %if.then82, %if.end79.cleanup_crit_edge, %land.lhs.true17.cleanup_crit_edge, %b44_readphy.exit133.cleanup_crit_edge, %b44_readphy.exit.cleanup_crit_edge, %if.else.i, %if.then.i, %if.then.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %aux) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bmsr) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b44_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev_id, i32 2304
  tail call void @_raw_spin_lock(ptr noundef %add.ptr.i) #17
  %sdev.i = getelementptr i8, ptr %dev_id, i32 3088
  %0 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %read32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1, i16 noundef zeroext 32) #17
  %6 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sdev.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %read32.i.i32 = getelementptr inbounds %struct.ssb_bus_ops, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %read32.i.i32 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read32.i.i32, align 4
  %call.i.i33 = tail call i32 %11(ptr noundef %7, i16 noundef zeroext 36) #17
  %and = and i32 %call.i.i33, %call.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end14_crit_edge, label %if.then

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end14

if.then:                                          ; preds = %entry
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 6
  %12 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then7, label %if.end, !prof !174

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev_id, ptr noundef nonnull @.str.44) #20
  br label %irq_ack

if.end:                                           ; preds = %if.then
  %napi = getelementptr i8, ptr %dev_id, i32 2392
  %call8 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #17
  br i1 %call8, label %if.then9, label %if.end.irq_ack_crit_edge

if.end.irq_ack_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %irq_ack

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %istat10 = getelementptr i8, ptr %dev_id, i32 2352
  %14 = ptrtoint ptr %istat10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and, ptr %istat10, align 8
  %15 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sdev.i, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %write32.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %20(ptr noundef %16, i16 noundef zeroext 36, i32 noundef 0) #17
  tail call void @__napi_schedule(ptr noundef %napi) #17
  br label %irq_ack

irq_ack:                                          ; preds = %if.then9, %if.end.irq_ack_crit_edge, %if.then7
  %21 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sdev.i, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %write32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write32.i.i, align 4
  tail call void %26(ptr noundef %22, i16 noundef zeroext 32, i32 noundef %and) #17
  %27 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sdev.i, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %read32.i.i36 = getelementptr inbounds %struct.ssb_bus_ops, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %read32.i.i36 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %read32.i.i36, align 4
  %call.i.i37 = tail call i32 %32(ptr noundef %28, i16 noundef zeroext 32) #17
  br label %if.end14

if.end14:                                         ; preds = %irq_ack, %entry.if.end14_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %add.ptr.i) #17
  %not.tobool.not = xor i1 %tobool.not, true
  %cond = zext i1 %not.tobool.not to i32
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @b44_free_rings(ptr nocapture noundef readonly %bp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_buffers = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 9
  %sdev = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 17
  br label %for.body

for.cond4.preheader:                              ; preds = %for.inc
  %tx_buffers = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 10
  br label %for.body6

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.037 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %0 = ptrtoint ptr %rx_buffers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_buffers, align 4
  %arrayidx = getelementptr %struct.ring_info, ptr %1, i32 %i.037
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %cmp1 = icmp eq ptr %3, null
  br i1 %cmp1, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  %4 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sdev, align 8
  %dma_dev = getelementptr inbounds %struct.ssb_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dma_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_dev, align 4
  %mapping = getelementptr %struct.ring_info, ptr %1, i32 %i.037, i32 1
  %8 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mapping, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %7, i32 noundef %9, i32 noundef 1566, i32 noundef 2, i32 noundef 0) #17
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %11, i32 noundef 1) #17
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.037, 1
  %exitcond.not = icmp eq i32 %inc, 512
  br i1 %exitcond.not, label %for.cond4.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.body6:                                        ; preds = %for.inc18.for.body6_crit_edge, %for.cond4.preheader
  %i.139 = phi i32 [ 0, %for.cond4.preheader ], [ %inc19, %for.inc18.for.body6_crit_edge ]
  %13 = ptrtoint ptr %tx_buffers to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tx_buffers, align 8
  %arrayidx7 = getelementptr %struct.ring_info, ptr %14, i32 %i.139
  %15 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx7, align 4
  %cmp9 = icmp eq ptr %16, null
  br i1 %cmp9, label %for.body6.for.inc18_crit_edge, label %if.end11

for.body6.for.inc18_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc18

if.end11:                                         ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #19
  %17 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sdev, align 8
  %dma_dev13 = getelementptr inbounds %struct.ssb_device, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %dma_dev13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dma_dev13, align 4
  %mapping14 = getelementptr %struct.ring_info, ptr %14, i32 %i.139, i32 1
  %21 = ptrtoint ptr %mapping14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mapping14, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 6
  %23 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %20, i32 noundef %22, i32 noundef %24, i32 noundef 1, i32 noundef 0) #17
  %25 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx7, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %26, i32 noundef 1) #17
  %27 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %arrayidx7, align 4
  br label %for.inc18

for.inc18:                                        ; preds = %if.end11, %for.body6.for.inc18_crit_edge
  %inc19 = add nuw nsw i32 %i.139, 1
  %exitcond41.not = icmp eq i32 %inc19, 512
  br i1 %exitcond41.not, label %for.end20, label %for.inc18.for.body6_crit_edge

for.inc18.for.body6_crit_edge:                    ; preds = %for.inc18
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body6

for.end20:                                        ; preds = %for.inc18
  call void @__sanitizer_cov_trace_pc() #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @b44_free_consistent(ptr nocapture noundef %bp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_buffers = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 9
  %0 = ptrtoint ptr %rx_buffers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_buffers, align 4
  tail call void @kfree(ptr noundef %1) #17
  %2 = ptrtoint ptr %rx_buffers to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %rx_buffers, align 4
  %tx_buffers = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 10
  %3 = ptrtoint ptr %tx_buffers to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tx_buffers, align 8
  tail call void @kfree(ptr noundef %4) #17
  %5 = ptrtoint ptr %tx_buffers to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %tx_buffers, align 8
  %rx_ring = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 3
  %6 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_ring, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %if.then

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13

if.then:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 13
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %and = and i32 %9, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  %sdev6 = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 17
  %10 = ptrtoint ptr %sdev6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sdev6, align 8
  %dma_dev7 = getelementptr inbounds %struct.ssb_device, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %dma_dev7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dma_dev7, align 4
  %rx_ring_dma9 = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 19
  %14 = ptrtoint ptr %rx_ring_dma9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_ring_dma9, align 8
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @dma_unmap_page_attrs(ptr noundef %13, i32 noundef %15, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #17
  %16 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rx_ring, align 4
  tail call void @kfree(ptr noundef %17) #17
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @dma_free_attrs(ptr noundef %13, i32 noundef 4096, ptr noundef nonnull %7, i32 noundef %15, i32 noundef 0) #17
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then4
  %18 = ptrtoint ptr %rx_ring to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %rx_ring, align 4
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags, align 4
  %and12 = and i32 %20, -536870913
  store i32 %and12, ptr %flags, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.end, %entry.if.end13_crit_edge
  %tx_ring = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 4
  %21 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tx_ring, align 8
  %tobool14.not = icmp eq ptr %22, null
  br i1 %tobool14.not, label %if.end13.if.end32_crit_edge, label %if.then15

if.end13.if.end32_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end32

if.then15:                                        ; preds = %if.end13
  %flags16 = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 13
  %23 = ptrtoint ptr %flags16 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags16, align 4
  %and17 = and i32 %24, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  %sdev24 = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 17
  %25 = ptrtoint ptr %sdev24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sdev24, align 8
  %dma_dev25 = getelementptr inbounds %struct.ssb_device, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %dma_dev25 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dma_dev25, align 4
  %tx_ring_dma27 = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 20
  %29 = ptrtoint ptr %tx_ring_dma27 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tx_ring_dma27, align 4
  br i1 %tobool18.not, label %if.else23, label %if.then19

if.then19:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @dma_unmap_page_attrs(ptr noundef %28, i32 noundef %30, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #17
  %31 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tx_ring, align 8
  tail call void @kfree(ptr noundef %32) #17
  br label %if.end28

if.else23:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @dma_free_attrs(ptr noundef %28, i32 noundef 4096, ptr noundef nonnull %22, i32 noundef %30, i32 noundef 0) #17
  br label %if.end28

if.end28:                                         ; preds = %if.else23, %if.then19
  %33 = ptrtoint ptr %tx_ring to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %tx_ring, align 8
  %34 = ptrtoint ptr %flags16 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags16, align 4
  %and31 = and i32 %35, -1073741825
  store i32 %and31, ptr %flags16, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.end28, %if.end13.if.end32_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @b44_timer(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -324
  tail call void @_raw_spin_lock_irq(ptr noundef %add.ptr) #17
  tail call fastcc void @b44_check_phy(ptr noundef %add.ptr)
  tail call fastcc void @b44_stats_update(ptr noundef %add.ptr)
  tail call void @_raw_spin_unlock_irq(ptr noundef %add.ptr) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, 100
  %call = tail call i32 @round_jiffies(i32 noundef %add) #17
  %call2 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %call) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @b44_alloc_rx_skb(ptr nocapture noundef %bp, i32 noundef %src_idx, i32 noundef %dest_idx_unmasked) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %src_idx)
  %cmp = icmp sgt i32 %src_idx, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %rx_buffers = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 9
  %0 = ptrtoint ptr %rx_buffers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_buffers, align 4
  %arrayidx = getelementptr %struct.ring_info, ptr %1, i32 %src_idx
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %src_map.0 = phi ptr [ %arrayidx, %if.then ], [ null, %entry.if.end_crit_edge ]
  %and = and i32 %dest_idx_unmasked, 511
  %rx_buffers1 = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 9
  %2 = ptrtoint ptr %rx_buffers1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_buffers1, align 4
  %arrayidx2 = getelementptr %struct.ring_info, ptr %3, i32 %and
  %dev = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 18
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef %5, i32 noundef 1566, i32 noundef 2592) #17
  %cmp3 = icmp eq ptr %call.i, null
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %sdev = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 17
  %6 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sdev, align 8
  %dma_dev = getelementptr inbounds %struct.ssb_device, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dma_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dma_dev, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %call.i120 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %11) #17
  br i1 %call.i120, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end5
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !179

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %9) #17
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 3
  %12 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %9, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %15, %if.end.i.i ], [ %13, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.31, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #17
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @debug_dma_map_single(ptr noundef %9, ptr noundef %11, i32 noundef 1566) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %16 = load ptr, ptr @mem_map, align 4
  %17 = ptrtoint ptr %11 to i32
  %sub.i = add i32 %17, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %16, i32 %shr.i
  %and.i = and i32 %17, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %9, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef 1566, i32 noundef 2, i32 noundef 0) #17
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %18 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sdev, align 8
  %dma_dev8 = getelementptr inbounds %struct.ssb_device, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %dma_dev8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dma_dev8, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %21, i32 noundef %retval.0.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %retval.0.i, -1
  %22 = add i32 %retval.0.i, -1073740258
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073741824, i32 %22)
  %cmp10 = icmp ult i32 %22, -1073741824
  %or.cond = or i1 %cmp.i, %cmp10
  br i1 %or.cond, label %if.then12, label %dma_map_single_attrs.exit.if.end49_crit_edge

dma_map_single_attrs.exit.if.end49_crit_edge:     ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end49

if.then12:                                        ; preds = %dma_map_single_attrs.exit
  %23 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sdev, align 8
  %dma_dev14 = getelementptr inbounds %struct.ssb_device, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %dma_dev14 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dma_dev14, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %26, i32 noundef %retval.0.i) #17
  br i1 %cmp.i, label %if.then12.if.end20_crit_edge, label %if.then17

if.then12.if.end20_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end20

if.then17:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #19
  %27 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sdev, align 8
  %dma_dev19 = getelementptr inbounds %struct.ssb_device, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %dma_dev19 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dma_dev19, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %30, i32 noundef %retval.0.i, i32 noundef 1566, i32 noundef 2, i32 noundef 0) #17
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.then12.if.end20_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i, i32 noundef 1) #17
  %call.i123 = tail call ptr @__alloc_skb(i32 noundef 1566, i32 noundef 2593, i32 noundef 0, i32 noundef -1) #17
  %cmp22 = icmp eq ptr %call.i123, null
  br i1 %cmp22, label %if.end20.cleanup_crit_edge, label %if.end25

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end25:                                         ; preds = %if.end20
  %31 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sdev, align 8
  %dma_dev27 = getelementptr inbounds %struct.ssb_device, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %dma_dev27 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dma_dev27, align 4
  %data28 = getelementptr inbounds %struct.sk_buff, ptr %call.i123, i32 0, i32 19
  %35 = ptrtoint ptr %data28 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data28, align 4
  %call.i124 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %36) #17
  br i1 %call.i124, label %land.rhs.i126, label %if.end39.i139

land.rhs.i126:                                    ; preds = %if.end25
  %.b1.i125 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i125, label %land.rhs.i126.dma_map_single_attrs.exit141_crit_edge, label %if.then.i130, !prof !179

land.rhs.i126.dma_map_single_attrs.exit141_crit_edge: ; preds = %land.rhs.i126
  call void @__sanitizer_cov_trace_pc() #19
  br label %dma_map_single_attrs.exit141

if.then.i130:                                     ; preds = %land.rhs.i126
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i127 = tail call ptr @dev_driver_string(ptr noundef %34) #17
  %init_name.i.i128 = getelementptr inbounds %struct.device, ptr %34, i32 0, i32 3
  %37 = ptrtoint ptr %init_name.i.i128 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %init_name.i.i128, align 8
  %tobool.not.i.i129 = icmp eq ptr %38, null
  br i1 %tobool.not.i.i129, label %if.end.i.i131, label %if.then.i130.dev_name.exit.i133_crit_edge

if.then.i130.dev_name.exit.i133_crit_edge:        ; preds = %if.then.i130
  call void @__sanitizer_cov_trace_pc() #19
  br label %dev_name.exit.i133

if.end.i.i131:                                    ; preds = %if.then.i130
  call void @__sanitizer_cov_trace_pc() #19
  %39 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %34, align 4
  br label %dev_name.exit.i133

dev_name.exit.i133:                               ; preds = %if.end.i.i131, %if.then.i130.dev_name.exit.i133_crit_edge
  %retval.0.i.i132 = phi ptr [ %40, %if.end.i.i131 ], [ %38, %if.then.i130.dev_name.exit.i133_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.31, ptr noundef %call16.i127, ptr noundef %retval.0.i.i132) #17
  br label %dma_map_single_attrs.exit141

if.end39.i139:                                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @debug_dma_map_single(ptr noundef %34, ptr noundef %36, i32 noundef 1566) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %41 = load ptr, ptr @mem_map, align 4
  %42 = ptrtoint ptr %36 to i32
  %sub.i134 = add i32 %42, 1073741824
  %shr.i135 = lshr i32 %sub.i134, 12
  %add.ptr.i136 = getelementptr %struct.page, ptr %41, i32 %shr.i135
  %and.i137 = and i32 %42, 4095
  %call41.i138 = tail call i32 @dma_map_page_attrs(ptr noundef %34, ptr noundef %add.ptr.i136, i32 noundef %and.i137, i32 noundef 1566, i32 noundef 2, i32 noundef 0) #17
  br label %dma_map_single_attrs.exit141

dma_map_single_attrs.exit141:                     ; preds = %if.end39.i139, %dev_name.exit.i133, %land.rhs.i126.dma_map_single_attrs.exit141_crit_edge
  %retval.0.i140 = phi i32 [ %call41.i138, %if.end39.i139 ], [ -1, %dev_name.exit.i133 ], [ -1, %land.rhs.i126.dma_map_single_attrs.exit141_crit_edge ]
  %43 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %sdev, align 8
  %dma_dev31 = getelementptr inbounds %struct.ssb_device, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %dma_dev31 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dma_dev31, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %46, i32 noundef %retval.0.i140) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i140)
  %cmp.i142 = icmp eq i32 %retval.0.i140, -1
  %47 = add i32 %retval.0.i140, -1073740258
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073741824, i32 %47)
  %cmp37 = icmp ult i32 %47, -1073741824
  %or.cond119 = or i1 %cmp.i142, %cmp37
  br i1 %or.cond119, label %if.then39, label %if.end48

if.then39:                                        ; preds = %dma_map_single_attrs.exit141
  %48 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sdev, align 8
  %dma_dev41 = getelementptr inbounds %struct.ssb_device, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %dma_dev41 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dma_dev41, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %51, i32 noundef %retval.0.i140) #17
  br i1 %cmp.i142, label %if.then39.if.end47_crit_edge, label %if.then44

if.then39.if.end47_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end47

if.then44:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #19
  %52 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sdev, align 8
  %dma_dev46 = getelementptr inbounds %struct.ssb_device, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %dma_dev46 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dma_dev46, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %55, i32 noundef %retval.0.i140, i32 noundef 1566, i32 noundef 2, i32 noundef 0) #17
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %if.then39.if.end47_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i123, i32 noundef 1) #17
  br label %cleanup

if.end48:                                         ; preds = %dma_map_single_attrs.exit141
  call void @__sanitizer_cov_trace_pc() #19
  %force_copybreak = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 24
  %56 = ptrtoint ptr %force_copybreak to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %force_copybreak, align 1
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %dma_map_single_attrs.exit.if.end49_crit_edge
  %skb.0 = phi ptr [ %call.i123, %if.end48 ], [ %call.i, %dma_map_single_attrs.exit.if.end49_crit_edge ]
  %mapping.0 = phi i32 [ %retval.0.i140, %if.end48 ], [ %retval.0.i, %dma_map_single_attrs.exit.if.end49_crit_edge ]
  %data50 = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 19
  %57 = ptrtoint ptr %data50 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %data50, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 0, ptr %58, align 2
  %flags = getelementptr inbounds %struct.rx_header, ptr %58, i32 0, i32 1
  %60 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 0, ptr %flags, align 2
  %61 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %skb.0, ptr %arrayidx2, align 4
  %mapping52 = getelementptr %struct.ring_info, ptr %3, i32 %and, i32 1
  %62 = ptrtoint ptr %mapping52 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %mapping.0, ptr %mapping52, align 4
  %cmp53.not = icmp eq ptr %src_map.0, null
  br i1 %cmp53.not, label %if.end49.if.end57_crit_edge, label %if.then55

if.end49.if.end57_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end57

if.then55:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #19
  %63 = ptrtoint ptr %src_map.0 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %src_map.0, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %if.end49.if.end57_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %and)
  %cmp58 = icmp eq i32 %and, 511
  %spec.select = select i1 %cmp58, i32 268437022, i32 1566
  %rx_ring = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 3
  %64 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rx_ring, align 4
  %arrayidx62 = getelementptr %struct.dma_desc, ptr %65, i32 %and
  %66 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  %67 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %arrayidx62, align 4
  %dma_offset = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 12
  %68 = ptrtoint ptr %dma_offset to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %dma_offset, align 8
  %add64 = add i32 %69, %mapping.0
  %70 = tail call i32 @llvm.bswap.i32(i32 %add64)
  %addr = getelementptr %struct.dma_desc, ptr %65, i32 %and, i32 1
  %71 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %addr, align 4
  %flags65 = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 13
  %72 = ptrtoint ptr %flags65 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %flags65, align 4
  %and66 = and i32 %73, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %if.end57.cleanup_crit_edge, label %if.then68

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then68:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #19
  %74 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %sdev, align 8
  %rx_ring_dma = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 19
  %76 = ptrtoint ptr %rx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %rx_ring_dma, align 8
  %mul = shl nuw nsw i32 %and, 3
  %dma_dev.i = getelementptr inbounds %struct.ssb_device, ptr %75, i32 0, i32 2
  %78 = ptrtoint ptr %dma_dev.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dma_dev.i, align 4
  %add.i = add i32 %77, %mul
  %.b.i = load i1, ptr @dma_desc_sync_size, align 4
  %80 = select i1 %.b.i, i32 128, i32 0
  tail call void @dma_sync_single_for_device(ptr noundef %79, i32 noundef %add.i, i32 noundef %80, i32 noundef 0) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then68, %if.end57.cleanup_crit_edge, %if.end47, %if.end20.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end47 ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end20.cleanup_crit_edge ], [ 1566, %if.then68 ], [ 1566, %if.end57.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @b44_setup_phy(ptr noundef %bp) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  %bmcr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #17
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !178
  %flags = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 13
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 4
  %and = and i32 %2, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %b44_readphy.exit, label %entry.cleanup83_crit_edge

entry.cleanup83_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup83

b44_readphy.exit:                                 ; preds = %entry
  %phy_addr.i = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 23
  %3 = ptrtoint ptr %phy_addr.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %phy_addr.i, align 8
  %conv.i = zext i8 %4 to i32
  %call.i = call fastcc i32 @__b44_readphy(ptr noundef %bp, i32 noundef %conv.i, i32 noundef 26, ptr noundef nonnull %val) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %if.end2, label %b44_readphy.exit.cleanup83_crit_edge

b44_readphy.exit.cleanup83_crit_edge:             ; preds = %b44_readphy.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup83

if.end2:                                          ; preds = %b44_readphy.exit
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %and.i2 = and i32 %6, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2)
  %tobool.not.i3 = icmp eq i32 %and.i2, 0
  br i1 %tobool.not.i3, label %b44_writephy.exit, label %if.end2.if.end7_crit_edge

if.end2.if.end7_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end7

b44_writephy.exit:                                ; preds = %if.end2
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %and3 = and i32 %8, 32767
  %9 = ptrtoint ptr %phy_addr.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %phy_addr.i, align 8
  %conv.i5 = zext i8 %10 to i32
  %call.i6 = tail call fastcc i32 @__b44_writephy(ptr noundef %bp, i32 noundef %conv.i5, i32 noundef 26, i32 noundef %and3) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6)
  %cmp5.not = icmp eq i32 %call.i6, 0
  br i1 %cmp5.not, label %b44_writephy.exit.if.end7_crit_edge, label %b44_writephy.exit.cleanup83_crit_edge

b44_writephy.exit.cleanup83_crit_edge:            ; preds = %b44_writephy.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup83

b44_writephy.exit.if.end7_crit_edge:              ; preds = %b44_writephy.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end7

if.end7:                                          ; preds = %b44_writephy.exit.if.end7_crit_edge, %if.end2.if.end7_crit_edge
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  %and.i10 = and i32 %12, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i10)
  %tobool.not.i11 = icmp eq i32 %and.i10, 0
  br i1 %tobool.not.i11, label %b44_readphy.exit17, label %if.end7.if.end11_crit_edge

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end11

b44_readphy.exit17:                               ; preds = %if.end7
  %13 = ptrtoint ptr %phy_addr.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %phy_addr.i, align 8
  %conv.i13 = zext i8 %14 to i32
  %call.i14 = call fastcc i32 @__b44_readphy(ptr noundef %bp, i32 noundef %conv.i13, i32 noundef 27, ptr noundef nonnull %val) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14)
  %cmp9.not = icmp eq i32 %call.i14, 0
  br i1 %cmp9.not, label %b44_readphy.exit17.if.end11_crit_edge, label %b44_readphy.exit17.cleanup83_crit_edge

b44_readphy.exit17.cleanup83_crit_edge:           ; preds = %b44_readphy.exit17
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup83

b44_readphy.exit17.if.end11_crit_edge:            ; preds = %b44_readphy.exit17
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end11

if.end11:                                         ; preds = %b44_readphy.exit17.if.end11_crit_edge, %if.end7.if.end11_crit_edge
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 4
  %and.i19 = and i32 %16, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i19)
  %tobool.not.i20 = icmp eq i32 %and.i19, 0
  br i1 %tobool.not.i20, label %b44_writephy.exit26, label %if.end11.if.end15_crit_edge

if.end11.if.end15_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15

b44_writephy.exit26:                              ; preds = %if.end11
  %17 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val, align 4
  %or = or i32 %18, 64
  %19 = ptrtoint ptr %phy_addr.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %phy_addr.i, align 8
  %conv.i22 = zext i8 %20 to i32
  %call.i23 = tail call fastcc i32 @__b44_writephy(ptr noundef %bp, i32 noundef %conv.i22, i32 noundef 27, i32 noundef %or) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23)
  %cmp13.not = icmp eq i32 %call.i23, 0
  br i1 %cmp13.not, label %b44_writephy.exit26.if.end15_crit_edge, label %b44_writephy.exit26.cleanup83_crit_edge

b44_writephy.exit26.cleanup83_crit_edge:          ; preds = %b44_writephy.exit26
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup83

b44_writephy.exit26.if.end15_crit_edge:           ; preds = %b44_writephy.exit26
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15

if.end15:                                         ; preds = %b44_writephy.exit26.if.end15_crit_edge, %if.end11.if.end15_crit_edge
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags, align 4
  %and17 = and i32 %22, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.end15
  %and.i28 = and i32 %22, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i28)
  %tobool.not.i29 = icmp eq i32 %and.i28, 0
  br i1 %tobool.not.i29, label %b44_writephy.exit35, label %if.then19.if.end53_crit_edge

if.then19.if.end53_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end53

b44_writephy.exit35:                              ; preds = %if.then19
  %and45 = and i32 %22, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  %and39 = lshr i32 %22, 19
  %and21 = and i32 %22, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  %spec.select = select i1 %tobool22.not, i32 1, i32 33
  %23 = and i32 %and39, 448
  %24 = or i32 %23, %spec.select
  %or48 = or i32 %24, 3072
  %adv.4 = select i1 %tobool46.not, i32 %24, i32 %or48
  %25 = ptrtoint ptr %phy_addr.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %phy_addr.i, align 8
  %conv.i31 = zext i8 %26 to i32
  %call.i32 = tail call fastcc i32 @__b44_writephy(ptr noundef %bp, i32 noundef %conv.i31, i32 noundef 4, i32 noundef %adv.4) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32)
  %cmp51.not = icmp eq i32 %call.i32, 0
  br i1 %cmp51.not, label %b44_writephy.exit35.if.end53_crit_edge, label %b44_writephy.exit35.cleanup83_crit_edge

b44_writephy.exit35.cleanup83_crit_edge:          ; preds = %b44_writephy.exit35
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup83

b44_writephy.exit35.if.end53_crit_edge:           ; preds = %b44_writephy.exit35
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end53

if.end53:                                         ; preds = %b44_writephy.exit35.if.end53_crit_edge, %if.then19.if.end53_crit_edge
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags, align 4
  %and.i37 = and i32 %28, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i37)
  %tobool.not.i38 = icmp eq i32 %and.i37, 0
  br i1 %tobool.not.i38, label %if.end.i42, label %if.end53.cleanup83_crit_edge

if.end53.cleanup83_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup83

if.end.i42:                                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #19
  %29 = ptrtoint ptr %phy_addr.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %phy_addr.i, align 8
  %conv.i40 = zext i8 %30 to i32
  %call.i41 = tail call fastcc i32 @__b44_writephy(ptr noundef %bp, i32 noundef %conv.i40, i32 noundef 0, i32 noundef 4608) #17
  br label %cleanup83

if.else:                                          ; preds = %if.end15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bmcr) #17
  %31 = ptrtoint ptr %bmcr to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %bmcr, align 4, !annotation !178
  %and.i46 = and i32 %22, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i46)
  %tobool.not.i47 = icmp eq i32 %and.i46, 0
  br i1 %tobool.not.i47, label %b44_readphy.exit53, label %if.else.if.end61_crit_edge

if.else.if.end61_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end61

b44_readphy.exit53:                               ; preds = %if.else
  %32 = ptrtoint ptr %phy_addr.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %phy_addr.i, align 8
  %conv.i49 = zext i8 %33 to i32
  %call.i50 = call fastcc i32 @__b44_readphy(ptr noundef %bp, i32 noundef %conv.i49, i32 noundef 0, ptr noundef nonnull %bmcr) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i50)
  %cmp59.not = icmp eq i32 %call.i50, 0
  br i1 %cmp59.not, label %b44_readphy.exit53.if.end61_crit_edge, label %b44_readphy.exit53.cleanup79_crit_edge

b44_readphy.exit53.cleanup79_crit_edge:           ; preds = %b44_readphy.exit53
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup79

b44_readphy.exit53.if.end61_crit_edge:            ; preds = %b44_readphy.exit53
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end61

if.end61:                                         ; preds = %b44_readphy.exit53.if.end61_crit_edge, %if.else.if.end61_crit_edge
  %34 = ptrtoint ptr %bmcr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bmcr, align 4
  %and62 = and i32 %35, -12545
  store i32 %and62, ptr %bmcr, align 4
  %36 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags, align 4
  %and64 = and i32 %37, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %if.end61.if.end68_crit_edge, label %if.then66

if.end61.if.end68_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end68

if.then66:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #19
  %or67 = or i32 %and62, 8192
  %38 = ptrtoint ptr %bmcr to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %or67, ptr %bmcr, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.then66, %if.end61.if.end68_crit_edge
  %and70 = and i32 %37, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %if.end68.if.end74_crit_edge, label %if.then72

if.end68.if.end74_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end74

if.then72:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #19
  %39 = ptrtoint ptr %bmcr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bmcr, align 4
  %or73 = or i32 %40, 256
  store i32 %or73, ptr %bmcr, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.then72, %if.end68.if.end74_crit_edge
  %and.i55 = and i32 %37, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i55)
  %tobool.not.i56 = icmp eq i32 %and.i55, 0
  br i1 %tobool.not.i56, label %b44_writephy.exit62, label %if.end74.if.end78_crit_edge

if.end74.if.end78_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end78

b44_writephy.exit62:                              ; preds = %if.end74
  %41 = ptrtoint ptr %bmcr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bmcr, align 4
  %43 = ptrtoint ptr %phy_addr.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %phy_addr.i, align 8
  %conv.i58 = zext i8 %44 to i32
  %call.i59 = tail call fastcc i32 @__b44_writephy(ptr noundef %bp, i32 noundef %conv.i58, i32 noundef 0, i32 noundef %42) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i59)
  %cmp76.not = icmp eq i32 %call.i59, 0
  br i1 %cmp76.not, label %b44_writephy.exit62.if.end78_crit_edge, label %b44_writephy.exit62.cleanup79_crit_edge

b44_writephy.exit62.cleanup79_crit_edge:          ; preds = %b44_writephy.exit62
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup79

b44_writephy.exit62.if.end78_crit_edge:           ; preds = %b44_writephy.exit62
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end78

if.end78:                                         ; preds = %b44_writephy.exit62.if.end78_crit_edge, %if.end74.if.end78_crit_edge
  tail call fastcc void @b44_set_flow_ctrl(ptr noundef %bp, i32 noundef 0, i32 noundef 0)
  br label %cleanup79

cleanup79:                                        ; preds = %if.end78, %b44_writephy.exit62.cleanup79_crit_edge, %b44_readphy.exit53.cleanup79_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bmcr) #17
  br label %cleanup83

cleanup83:                                        ; preds = %cleanup79, %if.end.i42, %if.end53.cleanup83_crit_edge, %b44_writephy.exit35.cleanup83_crit_edge, %b44_writephy.exit26.cleanup83_crit_edge, %b44_readphy.exit17.cleanup83_crit_edge, %b44_writephy.exit.cleanup83_crit_edge, %b44_readphy.exit.cleanup83_crit_edge, %entry.cleanup83_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__b44_set_rx_mode(ptr noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %sdev.i = getelementptr i8, ptr %dev, i32 3088
  %0 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %read32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1, i16 noundef zeroext 1024) #17
  %and = and i32 %call.i.i, -11
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 8
  %and2 = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  %and3 = and i32 %call.i.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %or.cond = select i1 %tobool.not, i1 %tobool4.not, i1 false
  br i1 %or.cond, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %or = or i32 %and, 8
  %8 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sdev.i, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %write32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write32.i.i, align 4
  tail call void %13(ptr noundef %9, i16 noundef zeroext 1024, i32 noundef %or) #17
  br label %if.end16

if.else:                                          ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  tail call fastcc void @__b44_set_mac_addr(ptr noundef %add.ptr.i)
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 8
  %and6 = and i32 %15, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %lor.lhs.false8, label %if.else.if.then9_crit_edge

if.else.if.then9_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then9

lor.lhs.false8:                                   ; preds = %if.else
  %count = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66, i32 1
  %16 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %17)
  %cmp = icmp sgt i32 %17, 32
  br i1 %cmp, label %lor.lhs.false8.if.then9_crit_edge, label %if.else11

lor.lhs.false8.if.then9_crit_edge:                ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then9

if.then9:                                         ; preds = %lor.lhs.false8.if.then9_crit_edge, %if.else.if.then9_crit_edge
  %or10 = or i32 %and, 2
  br label %for.body.lr.ph

if.else11:                                        ; preds = %lor.lhs.false8
  %mc.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66
  %18 = ptrtoint ptr %mc.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %ha.022.i = load ptr, ptr %mc.i, align 4
  %cmp6.not23.i = icmp eq ptr %ha.022.i, %mc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp724.i = icmp eq i32 %17, 0
  %or.cond25.i = select i1 %cmp6.not23.i, i1 true, i1 %cmp724.i
  br i1 %or.cond25.i, label %if.else11.for.body.lr.ph_crit_edge, label %if.end.i.preheader

if.else11.for.body.lr.ph_crit_edge:               ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.lr.ph

if.end.i.preheader:                               ; preds = %if.else11
  %dev.i.i83 = getelementptr i8, ptr %dev, i32 3092
  br label %if.end.i

if.end.i:                                         ; preds = %__b44_cam_write.exit85.if.end.i_crit_edge, %if.end.i.preheader
  %ha.027.i = phi ptr [ %ha.0.i, %__b44_cam_write.exit85.if.end.i_crit_edge ], [ %ha.022.i, %if.end.i.preheader ]
  %i.026.i = phi i32 [ %inc.i, %__b44_cam_write.exit85.if.end.i_crit_edge ], [ 0, %if.end.i.preheader ]
  %addr.i = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.027.i, i32 0, i32 2
  %inc.i = add nuw i32 %i.026.i, 1
  %arrayidx.i44 = getelementptr %struct.netdev_hw_addr, ptr %ha.027.i, i32 0, i32 2, i32 2
  %19 = ptrtoint ptr %arrayidx.i44 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i44, align 1
  %conv.i45 = zext i8 %20 to i32
  %shl.i46 = shl nuw i32 %conv.i45, 24
  %arrayidx1.i47 = getelementptr %struct.netdev_hw_addr, ptr %ha.027.i, i32 0, i32 2, i32 3
  %21 = ptrtoint ptr %arrayidx1.i47 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx1.i47, align 1
  %conv2.i48 = zext i8 %22 to i32
  %shl3.i49 = shl nuw nsw i32 %conv2.i48, 16
  %or.i50 = or i32 %shl3.i49, %shl.i46
  %arrayidx4.i51 = getelementptr %struct.netdev_hw_addr, ptr %ha.027.i, i32 0, i32 2, i32 4
  %23 = ptrtoint ptr %arrayidx4.i51 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx4.i51, align 1
  %conv5.i52 = zext i8 %24 to i32
  %shl6.i53 = shl nuw nsw i32 %conv5.i52, 8
  %or7.i54 = or i32 %or.i50, %shl6.i53
  %arrayidx8.i55 = getelementptr %struct.netdev_hw_addr, ptr %ha.027.i, i32 0, i32 2, i32 5
  %25 = ptrtoint ptr %arrayidx8.i55 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx8.i55, align 1
  %conv9.i56 = zext i8 %26 to i32
  %or11.i57 = or i32 %or7.i54, %conv9.i56
  %27 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sdev.i, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %write32.i.i.i59 = getelementptr inbounds %struct.ssb_bus_ops, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %write32.i.i.i59 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %write32.i.i.i59, align 4
  tail call void %32(ptr noundef %28, i16 noundef zeroext 1056, i32 noundef %or11.i57) #17
  %33 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %addr.i, align 1
  %conv13.i60 = zext i8 %34 to i32
  %shl14.i61 = shl nuw nsw i32 %conv13.i60, 8
  %arrayidx16.i62 = getelementptr %struct.netdev_hw_addr, ptr %ha.027.i, i32 0, i32 2, i32 1
  %35 = ptrtoint ptr %arrayidx16.i62 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx16.i62, align 1
  %conv17.i63 = zext i8 %36 to i32
  %or15.i64 = or i32 %shl14.i61, %conv17.i63
  %or19.i65 = or i32 %or15.i64, 65536
  %37 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sdev.i, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %write32.i.i35.i66 = getelementptr inbounds %struct.ssb_bus_ops, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %write32.i.i35.i66 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write32.i.i35.i66, align 4
  tail call void %42(ptr noundef %38, i16 noundef zeroext 1060, i32 noundef %or19.i65) #17
  %shl20.i67 = shl i32 %inc.i, 16
  %or21.i68 = or i32 %shl20.i67, 8
  %43 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %sdev.i, align 8
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %write32.i.i37.i69 = getelementptr inbounds %struct.ssb_bus_ops, ptr %46, i32 0, i32 5
  %47 = ptrtoint ptr %write32.i.i37.i69 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %write32.i.i37.i69, align 4
  tail call void %48(ptr noundef %44, i16 noundef zeroext 1064, i32 noundef %or21.i68) #17
  br label %for.body.i.i74

for.body.i.i74:                                   ; preds = %for.inc.i.i77.for.body.i.i74_crit_edge, %if.end.i
  %i.033.i.i70 = phi i32 [ 0, %if.end.i ], [ %inc.i.i75, %for.inc.i.i77.for.body.i.i74_crit_edge ]
  %49 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sdev.i, align 8
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %read32.i.i.i.i71 = getelementptr inbounds %struct.ssb_bus_ops, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %read32.i.i.i.i71 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %read32.i.i.i.i71, align 4
  %call.i.i.i.i72 = tail call i32 %54(ptr noundef %50, i16 noundef zeroext 1064) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i72)
  %tobool1.not.i.i73 = icmp slt i32 %call.i.i.i.i72, 0
  br i1 %tobool1.not.i.i73, label %for.inc.i.i77, label %for.end.i.i79

for.inc.i.i77:                                    ; preds = %for.body.i.i74
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 2147480) #17
  %inc.i.i75 = add nuw nsw i32 %i.033.i.i70, 1
  %exitcond.not.i.i76 = icmp eq i32 %inc.i.i75, 100
  br i1 %exitcond.not.i.i76, label %for.inc.i.i77.if.then9.i.i82_crit_edge, label %for.inc.i.i77.for.body.i.i74_crit_edge

for.inc.i.i77.for.body.i.i74_crit_edge:           ; preds = %for.inc.i.i77
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.i74

for.inc.i.i77.if.then9.i.i82_crit_edge:           ; preds = %for.inc.i.i77
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then9.i.i82

for.end.i.i79:                                    ; preds = %for.body.i.i74
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %i.033.i.i70)
  %cmp8.i.i78 = icmp eq i32 %i.033.i.i70, 100
  br i1 %cmp8.i.i78, label %for.end.i.i79.if.then9.i.i82_crit_edge, label %for.end.i.i79.__b44_cam_write.exit85_crit_edge

for.end.i.i79.__b44_cam_write.exit85_crit_edge:   ; preds = %for.end.i.i79
  call void @__sanitizer_cov_trace_pc() #19
  br label %__b44_cam_write.exit85

for.end.i.i79.if.then9.i.i82_crit_edge:           ; preds = %for.end.i.i79
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then9.i.i82

if.then9.i.i82:                                   ; preds = %for.end.i.i79.if.then9.i.i82_crit_edge, %for.inc.i.i77.if.then9.i.i82_crit_edge
  %call10.i.i80 = tail call i32 @net_ratelimit() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i80)
  %tobool11.not.i.i81 = icmp eq i32 %call10.i.i80, 0
  br i1 %tobool11.not.i.i81, label %if.then9.i.i82.__b44_cam_write.exit85_crit_edge, label %if.then12.i.i84

if.then9.i.i82.__b44_cam_write.exit85_crit_edge:  ; preds = %if.then9.i.i82
  call void @__sanitizer_cov_trace_pc() #19
  br label %__b44_cam_write.exit85

if.then12.i.i84:                                  ; preds = %if.then9.i.i82
  call void @__sanitizer_cov_trace_pc() #19
  %56 = ptrtoint ptr %dev.i.i83 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev.i.i83, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %57, ptr noundef nonnull @.str.32, i32 noundef -2147483648, i32 noundef 1064, ptr noundef nonnull @.str.33) #20
  br label %__b44_cam_write.exit85

__b44_cam_write.exit85:                           ; preds = %if.then12.i.i84, %if.then9.i.i82.__b44_cam_write.exit85_crit_edge, %for.end.i.i79.__b44_cam_write.exit85_crit_edge
  %58 = ptrtoint ptr %ha.027.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %ha.0.i = load ptr, ptr %ha.027.i, align 4
  %cmp6.not.i = icmp eq ptr %ha.0.i, %mc.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %17)
  %cmp7.i = icmp eq i32 %inc.i, %17
  %or.cond.i = select i1 %cmp6.not.i, i1 true, i1 %cmp7.i
  br i1 %or.cond.i, label %if.end, label %__b44_cam_write.exit85.if.end.i_crit_edge

__b44_cam_write.exit85.if.end.i_crit_edge:        ; preds = %__b44_cam_write.exit85
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

if.end:                                           ; preds = %__b44_cam_write.exit85
  %phi.bo.i = add i32 %i.026.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %phi.bo.i)
  %cmp1388 = icmp slt i32 %phi.bo.i, 64
  br i1 %cmp1388, label %if.end.for.body.lr.ph_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

if.end.for.body.lr.ph_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end.for.body.lr.ph_crit_edge, %if.else11.for.body.lr.ph_crit_edge, %if.then9
  %i.097 = phi i32 [ %phi.bo.i, %if.end.for.body.lr.ph_crit_edge ], [ 1, %if.then9 ], [ 1, %if.else11.for.body.lr.ph_crit_edge ]
  %val.096 = phi i32 [ %and, %if.end.for.body.lr.ph_crit_edge ], [ %or10, %if.then9 ], [ %and, %if.else11.for.body.lr.ph_crit_edge ]
  %dev.i.i = getelementptr i8, ptr %dev, i32 3092
  br label %for.body

for.body:                                         ; preds = %__b44_cam_write.exit.for.body_crit_edge, %for.body.lr.ph
  %i.189 = phi i32 [ %i.097, %for.body.lr.ph ], [ %inc, %__b44_cam_write.exit.for.body_crit_edge ]
  %59 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %sdev.i, align 8
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 4
  %write32.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %62, i32 0, i32 5
  %63 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %64(ptr noundef %60, i16 noundef zeroext 1056, i32 noundef 0) #17
  %65 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %sdev.i, align 8
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 4
  %write32.i.i35.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %68, i32 0, i32 5
  %69 = ptrtoint ptr %write32.i.i35.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %write32.i.i35.i, align 4
  tail call void %70(ptr noundef %66, i16 noundef zeroext 1060, i32 noundef 65536) #17
  %shl20.i = shl i32 %i.189, 16
  %or21.i = or i32 %shl20.i, 8
  %71 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %sdev.i, align 8
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %72, align 4
  %write32.i.i37.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %74, i32 0, i32 5
  %75 = ptrtoint ptr %write32.i.i37.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %write32.i.i37.i, align 4
  tail call void %76(ptr noundef %72, i16 noundef zeroext 1064, i32 noundef %or21.i) #17
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body
  %i.033.i.i = phi i32 [ 0, %for.body ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %77 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %sdev.i, align 8
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %78, align 4
  %read32.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %read32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %read32.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 %82(ptr noundef %78, i16 noundef zeroext 1064) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool1.not.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %tobool1.not.i.i, label %for.inc.i.i, label %for.end.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %83 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %83(i32 noundef 2147480) #17
  %inc.i.i = add nuw nsw i32 %i.033.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 100
  br i1 %exitcond.not.i.i, label %for.inc.i.i.if.then9.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.i

for.inc.i.i.if.then9.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then9.i.i

for.end.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %i.033.i.i)
  %cmp8.i.i = icmp eq i32 %i.033.i.i, 100
  br i1 %cmp8.i.i, label %for.end.i.i.if.then9.i.i_crit_edge, label %for.end.i.i.__b44_cam_write.exit_crit_edge

for.end.i.i.__b44_cam_write.exit_crit_edge:       ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__b44_cam_write.exit

for.end.i.i.if.then9.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then9.i.i

if.then9.i.i:                                     ; preds = %for.end.i.i.if.then9.i.i_crit_edge, %for.inc.i.i.if.then9.i.i_crit_edge
  %call10.i.i = tail call i32 @net_ratelimit() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %tobool11.not.i.i = icmp eq i32 %call10.i.i, 0
  br i1 %tobool11.not.i.i, label %if.then9.i.i.__b44_cam_write.exit_crit_edge, label %if.then12.i.i

if.then9.i.i.__b44_cam_write.exit_crit_edge:      ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__b44_cam_write.exit

if.then12.i.i:                                    ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %84 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %85, ptr noundef nonnull @.str.32, i32 noundef -2147483648, i32 noundef 1064, ptr noundef nonnull @.str.33) #20
  br label %__b44_cam_write.exit

__b44_cam_write.exit:                             ; preds = %if.then12.i.i, %if.then9.i.i.__b44_cam_write.exit_crit_edge, %for.end.i.i.__b44_cam_write.exit_crit_edge
  %inc = add nsw i32 %i.189, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %__b44_cam_write.exit.for.end_crit_edge, label %__b44_cam_write.exit.for.body_crit_edge

__b44_cam_write.exit.for.body_crit_edge:          ; preds = %__b44_cam_write.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

__b44_cam_write.exit.for.end_crit_edge:           ; preds = %__b44_cam_write.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %__b44_cam_write.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  %val.095 = phi i32 [ %and, %if.end.for.end_crit_edge ], [ %val.096, %__b44_cam_write.exit.for.end_crit_edge ]
  %86 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %sdev.i, align 8
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 4
  %write32.i.i38 = getelementptr inbounds %struct.ssb_bus_ops, ptr %89, i32 0, i32 5
  %90 = ptrtoint ptr %write32.i.i38 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %write32.i.i38, align 4
  tail call void %91(ptr noundef %87, i16 noundef zeroext 1024, i32 noundef %val.095) #17
  %92 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %sdev.i, align 8
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %93, align 4
  %read32.i.i40 = getelementptr inbounds %struct.ssb_bus_ops, ptr %95, i32 0, i32 2
  %96 = ptrtoint ptr %read32.i.i40 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %read32.i.i40, align 4
  %call.i.i41 = tail call i32 %97(ptr noundef %93, i16 noundef zeroext 1064) #17
  %or15 = or i32 %call.i.i41, 1
  %98 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %sdev.i, align 8
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %99, align 4
  %write32.i.i43 = getelementptr inbounds %struct.ssb_bus_ops, ptr %101, i32 0, i32 5
  %102 = ptrtoint ptr %write32.i.i43 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %write32.i.i43, align 4
  tail call void %103(ptr noundef %99, i16 noundef zeroext 1064, i32 noundef %or15) #17
  br label %if.end16

if.end16:                                         ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @b44_set_flow_ctrl(ptr nocapture noundef %bp, i32 noundef %local, i32 noundef %remote) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %local, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 3072, i32 %0)
  %1 = icmp eq i32 %0, 3072
  %2 = and i32 %remote, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %2)
  %3 = icmp eq i32 %2, 2048
  %4 = and i1 %1, %3
  %pause_enab.0 = select i1 %4, i32 524288, i32 0
  %flags.i = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 13
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %6, -786433
  %or.i = or i32 %and.i, %pause_enab.0
  store i32 %or.i, ptr %flags.i, align 4
  %sdev.i.i = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 17
  %7 = ptrtoint ptr %sdev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sdev.i.i, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %read32.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %12(ptr noundef %8, i16 noundef zeroext 1024) #17
  %and4.i = and i32 %call.i.i.i, -33
  %and2.i = lshr exact i32 %pause_enab.0, 14
  %val.0.i = or i32 %and4.i, %and2.i
  %13 = ptrtoint ptr %sdev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sdev.i.i, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %write32.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %18(ptr noundef %14, i16 noundef zeroext 1024, i32 noundef %val.0.i) #17
  %19 = ptrtoint ptr %sdev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sdev.i.i, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %read32.i.i27.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %read32.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read32.i.i27.i, align 4
  %call.i.i28.i = tail call i32 %24(ptr noundef %20, i16 noundef zeroext 172) #17
  %and11.i = and i32 %call.i.i28.i, -32769
  %25 = ptrtoint ptr %sdev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sdev.i.i, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %write32.i.i30.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %write32.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write32.i.i30.i, align 4
  tail call void %30(ptr noundef %26, i16 noundef zeroext 172, i32 noundef %and11.i) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__b44_readphy(ptr nocapture noundef readonly %bp, i32 noundef %phy_addr, i32 noundef %reg, ptr nocapture noundef writeonly %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %sdev.i = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 17
  %0 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %write32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write32.i.i, align 4
  tail call void %5(ptr noundef %1, i16 noundef zeroext 1052, i32 noundef 1) #17
  %shl = shl i32 %phy_addr, 23
  %shl1 = shl i32 %reg, 18
  %or = or i32 %shl, %shl1
  %or3 = or i32 %or, 1610743808
  %6 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sdev.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %write32.i.i9 = getelementptr inbounds %struct.ssb_bus_ops, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %write32.i.i9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write32.i.i9, align 4
  tail call void %11(ptr noundef %7, i16 noundef zeroext 1044, i32 noundef %or3) #17
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.033.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %12 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sdev.i, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %read32.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %17(ptr noundef %13, i16 noundef zeroext 1052) #17
  %and.i = and i32 %call.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %for.inc.i, label %for.end.i

for.inc.i:                                        ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 2147480) #17
  %inc.i = add nuw nsw i32 %i.033.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond.not.i, label %for.inc.i.if.then9.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.inc.i.if.then9.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then9.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %i.033.i)
  %cmp8.i = icmp eq i32 %i.033.i, 100
  br i1 %cmp8.i, label %for.end.i.if.then9.i_crit_edge, label %for.end.i.b44_wait_bit.exit_crit_edge

for.end.i.b44_wait_bit.exit_crit_edge:            ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %b44_wait_bit.exit

for.end.i.if.then9.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then9.i

if.then9.i:                                       ; preds = %for.end.i.if.then9.i_crit_edge, %for.inc.i.if.then9.i_crit_edge
  %call10.i = tail call i32 @net_ratelimit() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.then9.i.b44_wait_bit.exit_crit_edge, label %if.then12.i

if.then9.i.b44_wait_bit.exit_crit_edge:           ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %b44_wait_bit.exit

if.then12.i:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #19
  %dev.i = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 18
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %20, ptr noundef nonnull @.str.32, i32 noundef 1, i32 noundef 1052, ptr noundef nonnull @.str.34) #20
  br label %b44_wait_bit.exit

b44_wait_bit.exit:                                ; preds = %if.then12.i, %if.then9.i.b44_wait_bit.exit_crit_edge, %for.end.i.b44_wait_bit.exit_crit_edge
  %retval.0.i = phi i32 [ -19, %if.then12.i ], [ -19, %if.then9.i.b44_wait_bit.exit_crit_edge ], [ 0, %for.end.i.b44_wait_bit.exit_crit_edge ]
  %21 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sdev.i, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %read32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %26(ptr noundef %22, i16 noundef zeroext 1044) #17
  %and = and i32 %call.i.i, 65535
  %27 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %and, ptr %val, align 4
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__b44_writephy(ptr nocapture noundef readonly %bp, i32 noundef %phy_addr, i32 noundef %reg, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %sdev.i = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 17
  %0 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %write32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write32.i.i, align 4
  tail call void %5(ptr noundef %1, i16 noundef zeroext 1052, i32 noundef 1) #17
  %shl = shl i32 %phy_addr, 23
  %shl1 = shl i32 %reg, 18
  %and = and i32 %val, 65535
  %or = or i32 %shl, %shl1
  %or3 = or i32 %or, %and
  %or4 = or i32 %or3, 1342308352
  %6 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sdev.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %write32.i.i8 = getelementptr inbounds %struct.ssb_bus_ops, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %write32.i.i8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write32.i.i8, align 4
  tail call void %11(ptr noundef %7, i16 noundef zeroext 1044, i32 noundef %or4) #17
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.033.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %12 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sdev.i, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %read32.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %17(ptr noundef %13, i16 noundef zeroext 1052) #17
  %and.i = and i32 %call.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %for.inc.i, label %for.end.i

for.inc.i:                                        ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 2147480) #17
  %inc.i = add nuw nsw i32 %i.033.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond.not.i, label %for.inc.i.if.then9.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.inc.i.if.then9.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then9.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %i.033.i)
  %cmp8.i = icmp eq i32 %i.033.i, 100
  br i1 %cmp8.i, label %for.end.i.if.then9.i_crit_edge, label %for.end.i.b44_wait_bit.exit_crit_edge

for.end.i.b44_wait_bit.exit_crit_edge:            ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %b44_wait_bit.exit

for.end.i.if.then9.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then9.i

if.then9.i:                                       ; preds = %for.end.i.if.then9.i_crit_edge, %for.inc.i.if.then9.i_crit_edge
  %call10.i = tail call i32 @net_ratelimit() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.then9.i.b44_wait_bit.exit_crit_edge, label %if.then12.i

if.then9.i.b44_wait_bit.exit_crit_edge:           ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %b44_wait_bit.exit

if.then12.i:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #19
  %dev.i = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 18
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %20, ptr noundef nonnull @.str.32, i32 noundef 1, i32 noundef 1052, ptr noundef nonnull @.str.34) #20
  br label %b44_wait_bit.exit

b44_wait_bit.exit:                                ; preds = %if.then12.i, %if.then9.i.b44_wait_bit.exit_crit_edge, %for.end.i.b44_wait_bit.exit_crit_edge
  %retval.0.i = phi i32 [ -19, %if.then12.i ], [ -19, %if.then9.i.b44_wait_bit.exit_crit_edge ], [ 0, %for.end.i.b44_wait_bit.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__b44_set_mac_addr(ptr nocapture noundef readonly %bp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %sdev.i = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 17
  %0 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %write32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write32.i.i, align 4
  tail call void %5(ptr noundef %1, i16 noundef zeroext 1064, i32 noundef 0) #17
  %dev = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 18
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 14
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 8
  %and = and i32 %9, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 86
  %10 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_addr, align 64
  %arrayidx.i = getelementptr i8, ptr %11, i32 2
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %13 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx1.i = getelementptr i8, ptr %11, i32 3
  %14 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %15 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr i8, ptr %11, i32 4
  %16 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %17 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %or7.i = or i32 %or.i, %shl6.i
  %arrayidx8.i = getelementptr i8, ptr %11, i32 5
  %18 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %19 to i32
  %or11.i = or i32 %or7.i, %conv9.i
  %20 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sdev.i, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %write32.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %25(ptr noundef %21, i16 noundef zeroext 1056, i32 noundef %or11.i) #17
  %26 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %11, align 1
  %conv13.i = zext i8 %27 to i32
  %shl14.i = shl nuw nsw i32 %conv13.i, 8
  %arrayidx16.i = getelementptr i8, ptr %11, i32 1
  %28 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx16.i, align 1
  %conv17.i = zext i8 %29 to i32
  %or15.i = or i32 %shl14.i, %conv17.i
  %or19.i = or i32 %or15.i, 65536
  %30 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sdev.i, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %write32.i.i35.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %write32.i.i35.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write32.i.i35.i, align 4
  tail call void %35(ptr noundef %31, i16 noundef zeroext 1060, i32 noundef %or19.i) #17
  %36 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sdev.i, align 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %write32.i.i37.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %39, i32 0, i32 5
  %40 = ptrtoint ptr %write32.i.i37.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write32.i.i37.i, align 4
  tail call void %41(ptr noundef %37, i16 noundef zeroext 1064, i32 noundef 8) #17
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then
  %i.033.i.i = phi i32 [ 0, %if.then ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %42 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sdev.i, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %read32.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %read32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %read32.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 %47(ptr noundef %43, i16 noundef zeroext 1064) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool1.not.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %tobool1.not.i.i, label %for.inc.i.i, label %for.end.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 2147480) #17
  %inc.i.i = add nuw nsw i32 %i.033.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 100
  br i1 %exitcond.not.i.i, label %for.inc.i.i.if.then9.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.i

for.inc.i.i.if.then9.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then9.i.i

for.end.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %i.033.i.i)
  %cmp8.i.i = icmp eq i32 %i.033.i.i, 100
  br i1 %cmp8.i.i, label %for.end.i.i.if.then9.i.i_crit_edge, label %for.end.i.i.__b44_cam_write.exit_crit_edge

for.end.i.i.__b44_cam_write.exit_crit_edge:       ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__b44_cam_write.exit

for.end.i.i.if.then9.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then9.i.i

if.then9.i.i:                                     ; preds = %for.end.i.i.if.then9.i.i_crit_edge, %for.inc.i.i.if.then9.i.i_crit_edge
  %call10.i.i = tail call i32 @net_ratelimit() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %tobool11.not.i.i = icmp eq i32 %call10.i.i, 0
  br i1 %tobool11.not.i.i, label %if.then9.i.i.__b44_cam_write.exit_crit_edge, label %if.then12.i.i

if.then9.i.i.__b44_cam_write.exit_crit_edge:      ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__b44_cam_write.exit

if.then12.i.i:                                    ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %49 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %50, ptr noundef nonnull @.str.32, i32 noundef -2147483648, i32 noundef 1064, ptr noundef nonnull @.str.33) #20
  br label %__b44_cam_write.exit

__b44_cam_write.exit:                             ; preds = %if.then12.i.i, %if.then9.i.i.__b44_cam_write.exit_crit_edge, %for.end.i.i.__b44_cam_write.exit_crit_edge
  %51 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %sdev.i, align 8
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %read32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %56(ptr noundef %52, i16 noundef zeroext 1064) #17
  %or = or i32 %call.i.i, 1
  %57 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %sdev.i, align 8
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  %write32.i.i9 = getelementptr inbounds %struct.ssb_bus_ops, ptr %60, i32 0, i32 5
  %61 = ptrtoint ptr %write32.i.i9 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %write32.i.i9, align 4
  tail call void %62(ptr noundef %58, i16 noundef zeroext 1064, i32 noundef %or) #17
  br label %if.end

if.end:                                           ; preds = %__b44_cam_write.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @b44_link_report(ptr nocapture noundef readonly %bp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 18
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.37) #20
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %flags = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 13
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %and = and i32 %6, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 10, i32 100
  %and4 = and i32 %6, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  %cond6 = select i1 %tobool5.not, ptr @.str.40, ptr @.str.39
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.38, i32 noundef %cond, ptr noundef nonnull %cond6) #20
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 4
  %and9 = and i32 %10, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %cond11 = select i1 %tobool10.not, ptr @.str.43, ptr @.str.42
  %and13 = and i32 %10, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %cond15 = select i1 %tobool14.not, ptr @.str.43, ptr @.str.42
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %8, ptr noundef nonnull @.str.41, ptr noundef nonnull %cond11, ptr noundef nonnull %cond15) #20
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @b44_stats_update(ptr noundef %bp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_stats = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 16
  %syncp = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 16, i32 47
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i.i, label %entry.u64_stats_update_begin.exit_crit_edge, label %land.lhs.true.i.i

entry.u64_stats_update_begin.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %u64_stats_update_begin.exit

land.lhs.true.i.i:                                ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !164) #17
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !186
  %5 = tail call i32 @llvm.read_register.i32(metadata !164) #17
  %and.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %10, ptrtoint (ptr @lockdep_recursion to i32)
  %11 = inttoptr i32 %add.i.i to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !187
  %14 = tail call i32 @llvm.read_register.i32(metadata !164) #17
  %and.i.i.i7.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i7.i.i to ptr
  %preempt_count.i.i8.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i8.i.i, align 4
  %sub.i.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool20.not.i.i = icmp eq i32 %13, 0
  br i1 %tobool20.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.u64_stats_update_begin.exit_crit_edge

land.lhs.true.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %u64_stats_update_begin.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %18 = tail call i32 @llvm.read_register.i32(metadata !164) #17
  %and.i.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i.i = icmp eq i32 %21, 0
  br i1 %cmp.i.i, label %land.rhs22.i.i, label %land.rhs.i.i.u64_stats_update_begin.exit_crit_edge

land.rhs.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %u64_stats_update_begin.exit

land.rhs22.i.i:                                   ; preds = %land.rhs.i.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !164) #17
  %and.i.i.i9.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i9.i.i to ptr
  %preempt_count.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i10.i.i, align 4
  %add.i11.i.i = add i32 %25, 1
  store volatile i32 %add.i11.i.i, ptr %preempt_count.i.i10.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !188
  %26 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu.i.i, align 4
  %arrayidx46.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx46.i.i, align 4
  %add47.i.i = add i32 %29, ptrtoint (ptr @hardirqs_enabled to i32)
  %30 = inttoptr i32 %add47.i.i to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !189
  %33 = tail call i32 @llvm.read_register.i32(metadata !164) #17
  %and.i.i.i12.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i12.i.i to ptr
  %preempt_count.i.i13.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i13.i.i, align 4
  %sub.i14.i.i = add i32 %36, -1
  store volatile i32 %sub.i14.i.i, ptr %preempt_count.i.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool54.not.i.i = icmp eq i32 %32, 0
  br i1 %tobool54.not.i.i, label %land.rhs22.i.i.u64_stats_update_begin.exit_crit_edge, label %land.rhs58.i.i

land.rhs22.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.rhs22.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %u64_stats_update_begin.exit

land.rhs58.i.i:                                   ; preds = %land.rhs22.i.i
  %.b1.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge, label %if.then.i.i, !prof !179

land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %u64_stats_update_begin.exit

if.then.i.i:                                      ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 271, i32 noundef 9, ptr noundef null) #17
  br label %u64_stats_update_begin.exit

u64_stats_update_begin.exit:                      ; preds = %if.then.i.i, %land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge, %land.rhs22.i.i.u64_stats_update_begin.exit_crit_edge, %land.rhs.i.i.u64_stats_update_begin.exit_crit_edge, %land.lhs.true.i.i.u64_stats_update_begin.exit_crit_edge, %entry.u64_stats_update_begin.exit_crit_edge
  %37 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %syncp, align 4
  %inc.i.i.i.i = add i32 %38, 1
  store i32 %inc.i.i.i.i, ptr %syncp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !190
  %dep_map.i.i.i = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 16, i32 47, i32 0, i32 1
  %39 = tail call ptr @llvm.returnaddress(i32 0) #17
  %40 = ptrtoint ptr %39 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %40) #17
  %sdev.i = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 17
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %u64_stats_update_begin.exit
  %val.031 = phi ptr [ %hw_stats, %u64_stats_update_begin.exit ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %reg.030 = phi i32 [ 1280, %u64_stats_update_begin.exit ], [ %add2, %for.body.for.body_crit_edge ]
  %41 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sdev.i, align 8
  %conv.i = trunc i32 %reg.030 to i16
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %read32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %46(ptr noundef %42, i16 noundef zeroext %conv.i) #17
  %conv = zext i32 %call.i.i to i64
  %incdec.ptr = getelementptr i64, ptr %val.031, i32 1
  %47 = ptrtoint ptr %val.031 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %val.031, align 8
  %add = add i64 %48, %conv
  store i64 %add, ptr %val.031, align 8
  %add2 = add nuw nsw i32 %reg.030, 4
  %cmp = icmp ult i32 %reg.030, 1369
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.body6_crit_edge

for.body.for.body6_crit_edge:                     ; preds = %for.body
  br label %for.body6

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.body6:                                        ; preds = %for.body6.for.body6_crit_edge, %for.body.for.body6_crit_edge
  %val.133 = phi ptr [ %incdec.ptr9, %for.body6.for.body6_crit_edge ], [ %incdec.ptr, %for.body.for.body6_crit_edge ]
  %reg.132 = phi i32 [ %add12, %for.body6.for.body6_crit_edge ], [ 1408, %for.body.for.body6_crit_edge ]
  %49 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sdev.i, align 8
  %conv.i27 = trunc i32 %reg.132 to i16
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %read32.i.i28 = getelementptr inbounds %struct.ssb_bus_ops, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %read32.i.i28 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %read32.i.i28, align 4
  %call.i.i29 = tail call i32 %54(ptr noundef %50, i16 noundef zeroext %conv.i27) #17
  %conv8 = zext i32 %call.i.i29 to i64
  %incdec.ptr9 = getelementptr i64, ptr %val.133, i32 1
  %55 = ptrtoint ptr %val.133 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %val.133, align 8
  %add10 = add i64 %56, %conv8
  store i64 %add10, ptr %val.133, align 8
  %add12 = add nuw nsw i32 %reg.132, 4
  %cmp4 = icmp ult i32 %reg.132, 1493
  br i1 %cmp4, label %for.body6.for.body6_crit_edge, label %for.end13

for.body6.for.body6_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body6

for.end13:                                        ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %40) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !191
  %57 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %58, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @b44_setup_wol(ptr noundef readonly %bp) unnamed_addr #2 align 64 {
entry:
  %val.i = alloca i16, align 2
  %pwol_mask.i = alloca [16 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %sdev.i = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 17
  %0 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %write32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write32.i.i, align 4
  tail call void %5(ptr noundef %1, i16 noundef zeroext 1024, i32 noundef 2) #17
  %flags = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 13
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %8 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sdev.i, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %write32.i.i46 = getelementptr inbounds %struct.ssb_bus_ops, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %write32.i.i46 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write32.i.i46, align 4
  tail call void %13(ptr noundef %9, i16 noundef zeroext 16, i32 noundef -2139062144) #17
  %dev = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 18
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 86
  %16 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_addr, align 64
  %arrayidx = getelementptr i8, ptr %17, i32 2
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %19 to i32
  %shl = shl nuw i32 %conv, 24
  %arrayidx3 = getelementptr i8, ptr %17, i32 3
  %20 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %21 to i32
  %shl5 = shl nuw nsw i32 %conv4, 16
  %or = or i32 %shl5, %shl
  %arrayidx8 = getelementptr i8, ptr %17, i32 4
  %22 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %23 to i32
  %shl10 = shl nuw nsw i32 %conv9, 8
  %or11 = or i32 %or, %shl10
  %arrayidx14 = getelementptr i8, ptr %17, i32 5
  %24 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %25 to i32
  %or16 = or i32 %or11, %conv15
  %26 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sdev.i, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %write32.i.i48 = getelementptr inbounds %struct.ssb_bus_ops, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %write32.i.i48 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write32.i.i48, align 4
  tail call void %31(ptr noundef %27, i16 noundef zeroext 136, i32 noundef %or16) #17
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  %dev_addr18 = getelementptr inbounds %struct.net_device, ptr %33, i32 0, i32 86
  %34 = ptrtoint ptr %dev_addr18 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev_addr18, align 64
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %35, align 1
  %conv20 = zext i8 %37 to i32
  %shl21 = shl nuw nsw i32 %conv20, 8
  %arrayidx24 = getelementptr i8, ptr %35, i32 1
  %38 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx24, align 1
  %conv25 = zext i8 %39 to i32
  %or26 = or i32 %shl21, %conv25
  %40 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sdev.i, align 8
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %write32.i.i50 = getelementptr inbounds %struct.ssb_bus_ops, ptr %43, i32 0, i32 5
  %44 = ptrtoint ptr %write32.i.i50 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %write32.i.i50, align 4
  tail call void %45(ptr noundef %41, i16 noundef zeroext 140, i32 noundef %or26) #17
  %46 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sdev.i, align 8
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %read32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %51(ptr noundef %47, i16 noundef zeroext 0) #17
  %or28 = or i32 %call.i.i, 192
  %52 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sdev.i, align 8
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %write32.i.i53 = getelementptr inbounds %struct.ssb_bus_ops, ptr %55, i32 0, i32 5
  %56 = ptrtoint ptr %write32.i.i53 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %write32.i.i53, align 4
  tail call void %57(ptr noundef %53, i16 noundef zeroext 0, i32 noundef %or28) #17
  br label %if.end

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pwol_mask.i) #17
  %58 = getelementptr inbounds [16 x i8], ptr %pwol_mask.i, i32 0, i32 1
  %59 = getelementptr inbounds [16 x i8], ptr %pwol_mask.i, i32 0, i32 2
  %60 = getelementptr inbounds [16 x i8], ptr %pwol_mask.i, i32 0, i32 4
  %61 = getelementptr inbounds [16 x i8], ptr %pwol_mask.i, i32 0, i32 7
  %62 = getelementptr inbounds [16 x i8], ptr %pwol_mask.i, i32 0, i32 8
  %63 = getelementptr inbounds [16 x i8], ptr %pwol_mask.i, i32 0, i32 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %64 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %64, i32 noundef 3520, i32 noundef 128) #21
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.else.b44_setup_pseudo_magicp.exit_crit_edge, label %if.end.i

if.else.b44_setup_pseudo_magicp.exit_crit_edge:   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %b44_setup_pseudo_magicp.exit

if.end.i:                                         ; preds = %if.else
  %65 = getelementptr inbounds [16 x i8], ptr %pwol_mask.i, i32 0, i32 5
  %66 = call ptr @memset(ptr %pwol_mask.i, i32 0, i32 16)
  %dev.i = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 18
  %67 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev.i, align 4
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %68, i32 0, i32 86
  %69 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev_addr.i, align 64
  %add.ptr.i.i = getelementptr i8, ptr %call7.i.i.i, i32 42
  %71 = call ptr @memset(ptr %add.ptr.i.i, i32 255, i32 6)
  %72 = ptrtoint ptr %65 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 -4, ptr %65, align 1
  br label %for.body6.i.i

for.body6.i.i:                                    ; preds = %for.inc33.i.i.for.body6.i.i_crit_edge, %if.end.i
  %len.166.i.i = phi i32 [ 48, %if.end.i ], [ %inc29.i.i, %for.inc33.i.i.for.body6.i.i_crit_edge ]
  %j.164.i.i = phi i32 [ 0, %if.end.i ], [ %inc34.i.i, %for.inc33.i.i.for.body6.i.i_crit_edge ]
  %sub.i.i = sub i32 128, %len.166.i.i
  %73 = tail call i32 @llvm.smin.i32(i32 %sub.i.i, i32 6) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %73)
  %cmp10.i.i = icmp slt i32 %73, 1
  br i1 %cmp10.i.i, label %for.body6.i.i.b44_magic_pattern.exit.i_crit_edge, label %for.body17.lr.ph.i.i

for.body6.i.i.b44_magic_pattern.exit.i_crit_edge: ; preds = %for.body6.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %b44_magic_pattern.exit.i

for.body17.lr.ph.i.i:                             ; preds = %for.body6.i.i
  %mul.i.i = mul nuw nsw i32 %j.164.i.i, 6
  %add19.i.i = add nuw nsw i32 %mul.i.i, 48
  br label %for.body17.i.i

for.body17.i.i:                                   ; preds = %for.body17.i.i.for.body17.i.i_crit_edge, %for.body17.lr.ph.i.i
  %len.263.i.i = phi i32 [ %len.166.i.i, %for.body17.lr.ph.i.i ], [ %inc29.i.i, %for.body17.i.i.for.body17.i.i_crit_edge ]
  %k.062.i.i = phi i32 [ 0, %for.body17.lr.ph.i.i ], [ %inc31.i.i, %for.body17.i.i.for.body17.i.i_crit_edge ]
  %arrayidx18.i.i = getelementptr i8, ptr %70, i32 %k.062.i.i
  %74 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx18.i.i, align 1
  %add20.i.i = add nuw i32 %add19.i.i, %k.062.i.i
  %arrayidx21.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %add20.i.i
  %76 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %arrayidx21.i.i, align 1
  %and22.i.i = and i32 %len.263.i.i, 7
  %shl23.i.i = shl nuw nsw i32 1, %and22.i.i
  %shr24.i.i = ashr i32 %len.263.i.i, 3
  %arrayidx25.i.i = getelementptr i8, ptr %pwol_mask.i, i32 %shr24.i.i
  %77 = ptrtoint ptr %arrayidx25.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx25.i.i, align 1
  %79 = trunc i32 %shl23.i.i to i8
  %conv28.i.i = or i8 %78, %79
  store i8 %conv28.i.i, ptr %arrayidx25.i.i, align 1
  %inc29.i.i = add i32 %len.263.i.i, 1
  %inc31.i.i = add nuw nsw i32 %k.062.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc31.i.i, %73
  br i1 %exitcond.not.i.i, label %for.inc33.i.i, label %for.body17.i.i.for.body17.i.i_crit_edge

for.body17.i.i.for.body17.i.i_crit_edge:          ; preds = %for.body17.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body17.i.i

for.inc33.i.i:                                    ; preds = %for.body17.i.i
  %inc34.i.i = add nuw nsw i32 %j.164.i.i, 1
  %exitcond67.not.i.i = icmp eq i32 %inc34.i.i, 16
  br i1 %exitcond67.not.i.i, label %for.inc33.i.i.b44_magic_pattern.exit.i_crit_edge, label %for.inc33.i.i.for.body6.i.i_crit_edge

for.inc33.i.i.for.body6.i.i_crit_edge:            ; preds = %for.inc33.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body6.i.i

for.inc33.i.i.b44_magic_pattern.exit.i_crit_edge: ; preds = %for.inc33.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %b44_magic_pattern.exit.i

b44_magic_pattern.exit.i:                         ; preds = %for.inc33.i.i.b44_magic_pattern.exit.i_crit_edge, %for.body6.i.i.b44_magic_pattern.exit.i_crit_edge
  %len.1.lcssa.i.i = phi i32 [ %len.166.i.i, %for.body6.i.i.b44_magic_pattern.exit.i_crit_edge ], [ %inc29.i.i, %for.inc33.i.i.b44_magic_pattern.exit.i_crit_edge ]
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %b44_magic_pattern.exit.i
  %i.010.i.i = phi i32 [ 0, %b44_magic_pattern.exit.i ], [ %add1.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %add.i.i = add nuw nsw i32 %i.010.i.i, 1024
  %80 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %sdev.i, align 8
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 4
  %write32.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %83, i32 0, i32 5
  %84 = ptrtoint ptr %write32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %write32.i.i.i.i, align 4
  tail call void %85(ptr noundef %81, i16 noundef zeroext 144, i32 noundef %add.i.i) #17
  %div6.i.i = lshr exact i32 %i.010.i.i, 2
  %arrayidx.i47.i = getelementptr i32, ptr %call7.i.i.i, i32 %div6.i.i
  %86 = ptrtoint ptr %arrayidx.i47.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx.i47.i, align 4
  %88 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %sdev.i, align 8
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %89, align 4
  %write32.i.i8.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %91, i32 0, i32 5
  %92 = ptrtoint ptr %write32.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %write32.i.i8.i.i, align 4
  tail call void %93(ptr noundef %89, i16 noundef zeroext 148, i32 noundef %87) #17
  %add1.i.i = add nuw nsw i32 %i.010.i.i, 4
  %cmp.i.i = icmp ult i32 %i.010.i.i, 124
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i57.preheader.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.i

for.body.i57.preheader.i:                         ; preds = %for.body.i.i
  %94 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %sdev.i, align 8
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %95, align 4
  %write32.i.i.i51.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %97, i32 0, i32 5
  %98 = ptrtoint ptr %write32.i.i.i51.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %write32.i.i.i51.i, align 4
  tail call void %99(ptr noundef %95, i16 noundef zeroext 144, i32 noundef 1536) #17
  %100 = ptrtoint ptr %pwol_mask.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %pwol_mask.i, align 4
  %102 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %sdev.i, align 8
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %103, align 4
  %write32.i.i8.i54.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %105, i32 0, i32 5
  %106 = ptrtoint ptr %write32.i.i8.i54.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %write32.i.i8.i54.i, align 4
  tail call void %107(ptr noundef %103, i16 noundef zeroext 148, i32 noundef %101) #17
  %108 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %sdev.i, align 8
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %109, align 4
  %write32.i.i.i51.1.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %111, i32 0, i32 5
  %112 = ptrtoint ptr %write32.i.i.i51.1.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %write32.i.i.i51.1.i, align 4
  tail call void %113(ptr noundef %109, i16 noundef zeroext 144, i32 noundef 1540) #17
  %114 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %60, align 4
  %116 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %sdev.i, align 8
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %117, align 4
  %write32.i.i8.i54.1.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %119, i32 0, i32 5
  %120 = ptrtoint ptr %write32.i.i8.i54.1.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %write32.i.i8.i54.1.i, align 4
  tail call void %121(ptr noundef %117, i16 noundef zeroext 148, i32 noundef %115) #17
  %122 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %sdev.i, align 8
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %123, align 4
  %write32.i.i.i51.2.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %125, i32 0, i32 5
  %126 = ptrtoint ptr %write32.i.i.i51.2.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %write32.i.i.i51.2.i, align 4
  tail call void %127(ptr noundef %123, i16 noundef zeroext 144, i32 noundef 1544) #17
  %128 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %62, align 4
  %130 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %sdev.i, align 8
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %131, align 4
  %write32.i.i8.i54.2.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %133, i32 0, i32 5
  %134 = ptrtoint ptr %write32.i.i8.i54.2.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %write32.i.i8.i54.2.i, align 4
  tail call void %135(ptr noundef %131, i16 noundef zeroext 148, i32 noundef %129) #17
  %136 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %sdev.i, align 8
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %137, align 4
  %write32.i.i.i51.3.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %139, i32 0, i32 5
  %140 = ptrtoint ptr %write32.i.i.i51.3.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %write32.i.i.i51.3.i, align 4
  tail call void %141(ptr noundef %137, i16 noundef zeroext 144, i32 noundef 1548) #17
  %142 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %63, align 4
  %144 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %sdev.i, align 8
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %145, align 4
  %write32.i.i8.i54.3.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %147, i32 0, i32 5
  %148 = ptrtoint ptr %write32.i.i8.i54.3.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %write32.i.i8.i54.3.i, align 4
  tail call void %149(ptr noundef %145, i16 noundef zeroext 148, i32 noundef %143) #17
  %sub36.i.i = add i32 %len.1.lcssa.i.i, 2147483647
  %150 = call ptr @memset(ptr %call7.i.i.i, i32 0, i32 128)
  %151 = call ptr @memset(ptr %pwol_mask.i, i32 0, i32 16)
  %152 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %dev.i, align 4
  %dev_addr6.i = getelementptr inbounds %struct.net_device, ptr %153, i32 0, i32 86
  %154 = ptrtoint ptr %dev_addr6.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %dev_addr6.i, align 64
  %add.ptr.i59.i = getelementptr i8, ptr %call7.i.i.i, i32 14
  %156 = call ptr @memset(ptr %add.ptr.i59.i, i32 255, i32 6)
  %157 = ptrtoint ptr %58 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 -64, ptr %58, align 1
  %158 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 15, ptr %59, align 2
  br label %for.body6.i76.i

for.body6.i76.i:                                  ; preds = %for.inc33.i96.i.for.body6.i76.i_crit_edge, %for.body.i57.preheader.i
  %len.166.i72.i = phi i32 [ 20, %for.body.i57.preheader.i ], [ %inc29.i90.i, %for.inc33.i96.i.for.body6.i76.i_crit_edge ]
  %j.164.i73.i = phi i32 [ 0, %for.body.i57.preheader.i ], [ %inc34.i94.i, %for.inc33.i96.i.for.body6.i76.i_crit_edge ]
  %sub.i74.i = sub i32 128, %len.166.i72.i
  %159 = tail call i32 @llvm.smin.i32(i32 %sub.i74.i, i32 6) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %159)
  %cmp10.i75.i = icmp slt i32 %159, 1
  br i1 %cmp10.i75.i, label %for.body6.i76.i.b44_magic_pattern.exit99.i_crit_edge, label %for.body17.lr.ph.i79.i

for.body6.i76.i.b44_magic_pattern.exit99.i_crit_edge: ; preds = %for.body6.i76.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %b44_magic_pattern.exit99.i

for.body17.lr.ph.i79.i:                           ; preds = %for.body6.i76.i
  %mul.i77.i = mul nuw nsw i32 %j.164.i73.i, 6
  %add19.i78.i = add nuw nsw i32 %mul.i77.i, 20
  br label %for.body17.i93.i

for.body17.i93.i:                                 ; preds = %for.body17.i93.i.for.body17.i93.i_crit_edge, %for.body17.lr.ph.i79.i
  %len.263.i80.i = phi i32 [ %len.166.i72.i, %for.body17.lr.ph.i79.i ], [ %inc29.i90.i, %for.body17.i93.i.for.body17.i93.i_crit_edge ]
  %k.062.i81.i = phi i32 [ 0, %for.body17.lr.ph.i79.i ], [ %inc31.i91.i, %for.body17.i93.i.for.body17.i93.i_crit_edge ]
  %arrayidx18.i82.i = getelementptr i8, ptr %155, i32 %k.062.i81.i
  %160 = ptrtoint ptr %arrayidx18.i82.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %arrayidx18.i82.i, align 1
  %add20.i83.i = add nuw i32 %add19.i78.i, %k.062.i81.i
  %arrayidx21.i84.i = getelementptr i8, ptr %call7.i.i.i, i32 %add20.i83.i
  %162 = ptrtoint ptr %arrayidx21.i84.i to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 %161, ptr %arrayidx21.i84.i, align 1
  %and22.i85.i = and i32 %len.263.i80.i, 7
  %shl23.i86.i = shl nuw nsw i32 1, %and22.i85.i
  %shr24.i87.i = ashr i32 %len.263.i80.i, 3
  %arrayidx25.i88.i = getelementptr i8, ptr %pwol_mask.i, i32 %shr24.i87.i
  %163 = ptrtoint ptr %arrayidx25.i88.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %arrayidx25.i88.i, align 1
  %165 = trunc i32 %shl23.i86.i to i8
  %conv28.i89.i = or i8 %164, %165
  store i8 %conv28.i89.i, ptr %arrayidx25.i88.i, align 1
  %inc29.i90.i = add i32 %len.263.i80.i, 1
  %inc31.i91.i = add nuw nsw i32 %k.062.i81.i, 1
  %exitcond.not.i92.i = icmp eq i32 %inc31.i91.i, %159
  br i1 %exitcond.not.i92.i, label %for.inc33.i96.i, label %for.body17.i93.i.for.body17.i93.i_crit_edge

for.body17.i93.i.for.body17.i93.i_crit_edge:      ; preds = %for.body17.i93.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body17.i93.i

for.inc33.i96.i:                                  ; preds = %for.body17.i93.i
  %inc34.i94.i = add nuw nsw i32 %j.164.i73.i, 1
  %exitcond67.not.i95.i = icmp eq i32 %inc34.i94.i, 16
  br i1 %exitcond67.not.i95.i, label %for.inc33.i96.i.b44_magic_pattern.exit99.i_crit_edge, label %for.inc33.i96.i.for.body6.i76.i_crit_edge

for.inc33.i96.i.for.body6.i76.i_crit_edge:        ; preds = %for.inc33.i96.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body6.i76.i

for.inc33.i96.i.b44_magic_pattern.exit99.i_crit_edge: ; preds = %for.inc33.i96.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %b44_magic_pattern.exit99.i

b44_magic_pattern.exit99.i:                       ; preds = %for.inc33.i96.i.b44_magic_pattern.exit99.i_crit_edge, %for.body6.i76.i.b44_magic_pattern.exit99.i_crit_edge
  %len.1.lcssa.i97.i = phi i32 [ %len.166.i72.i, %for.body6.i76.i.b44_magic_pattern.exit99.i_crit_edge ], [ %inc29.i90.i, %for.inc33.i96.i.b44_magic_pattern.exit99.i_crit_edge ]
  br label %for.body.i109.i

for.body.i109.i:                                  ; preds = %for.body.i109.i.for.body.i109.i_crit_edge, %b44_magic_pattern.exit99.i
  %i.010.i101.i = phi i32 [ 0, %b44_magic_pattern.exit99.i ], [ %add1.i107.i, %for.body.i109.i.for.body.i109.i_crit_edge ]
  %add.i102.i = add nuw nsw i32 %i.010.i101.i, 1152
  %166 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %sdev.i, align 8
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %167, align 4
  %write32.i.i.i103.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %169, i32 0, i32 5
  %170 = ptrtoint ptr %write32.i.i.i103.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %write32.i.i.i103.i, align 4
  tail call void %171(ptr noundef %167, i16 noundef zeroext 144, i32 noundef %add.i102.i) #17
  %div6.i104.i = lshr exact i32 %i.010.i101.i, 2
  %arrayidx.i105.i = getelementptr i32, ptr %call7.i.i.i, i32 %div6.i104.i
  %172 = ptrtoint ptr %arrayidx.i105.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %arrayidx.i105.i, align 4
  %174 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %sdev.i, align 8
  %176 = ptrtoint ptr %175 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %175, align 4
  %write32.i.i8.i106.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %177, i32 0, i32 5
  %178 = ptrtoint ptr %write32.i.i8.i106.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %write32.i.i8.i106.i, align 4
  tail call void %179(ptr noundef %175, i16 noundef zeroext 148, i32 noundef %173) #17
  %add1.i107.i = add nuw nsw i32 %i.010.i101.i, 4
  %cmp.i108.i = icmp ult i32 %i.010.i101.i, 124
  br i1 %cmp.i108.i, label %for.body.i109.i.for.body.i109.i_crit_edge, label %for.body.i120.preheader.i

for.body.i109.i.for.body.i109.i_crit_edge:        ; preds = %for.body.i109.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i109.i

for.body.i120.preheader.i:                        ; preds = %for.body.i109.i
  %180 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %sdev.i, align 8
  %182 = ptrtoint ptr %181 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %181, align 4
  %write32.i.i.i114.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %183, i32 0, i32 5
  %184 = ptrtoint ptr %write32.i.i.i114.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %write32.i.i.i114.i, align 4
  tail call void %185(ptr noundef %181, i16 noundef zeroext 144, i32 noundef 1552) #17
  %186 = ptrtoint ptr %pwol_mask.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %pwol_mask.i, align 4
  %188 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %sdev.i, align 8
  %190 = ptrtoint ptr %189 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %189, align 4
  %write32.i.i8.i117.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %191, i32 0, i32 5
  %192 = ptrtoint ptr %write32.i.i8.i117.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %write32.i.i8.i117.i, align 4
  tail call void %193(ptr noundef %189, i16 noundef zeroext 148, i32 noundef %187) #17
  %194 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %sdev.i, align 8
  %196 = ptrtoint ptr %195 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %195, align 4
  %write32.i.i.i114.1.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %197, i32 0, i32 5
  %198 = ptrtoint ptr %write32.i.i.i114.1.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %write32.i.i.i114.1.i, align 4
  tail call void %199(ptr noundef %195, i16 noundef zeroext 144, i32 noundef 1556) #17
  %200 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %60, align 4
  %202 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %sdev.i, align 8
  %204 = ptrtoint ptr %203 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %203, align 4
  %write32.i.i8.i117.1.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %205, i32 0, i32 5
  %206 = ptrtoint ptr %write32.i.i8.i117.1.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %write32.i.i8.i117.1.i, align 4
  tail call void %207(ptr noundef %203, i16 noundef zeroext 148, i32 noundef %201) #17
  %208 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %sdev.i, align 8
  %210 = ptrtoint ptr %209 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %209, align 4
  %write32.i.i.i114.2.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %211, i32 0, i32 5
  %212 = ptrtoint ptr %write32.i.i.i114.2.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %write32.i.i.i114.2.i, align 4
  tail call void %213(ptr noundef %209, i16 noundef zeroext 144, i32 noundef 1560) #17
  %214 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %62, align 4
  %216 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %sdev.i, align 8
  %218 = ptrtoint ptr %217 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %217, align 4
  %write32.i.i8.i117.2.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %219, i32 0, i32 5
  %220 = ptrtoint ptr %write32.i.i8.i117.2.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %write32.i.i8.i117.2.i, align 4
  tail call void %221(ptr noundef %217, i16 noundef zeroext 148, i32 noundef %215) #17
  %222 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %sdev.i, align 8
  %224 = ptrtoint ptr %223 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %223, align 4
  %write32.i.i.i114.3.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %225, i32 0, i32 5
  %226 = ptrtoint ptr %write32.i.i.i114.3.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %write32.i.i.i114.3.i, align 4
  tail call void %227(ptr noundef %223, i16 noundef zeroext 144, i32 noundef 1564) #17
  %228 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %63, align 4
  %230 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %sdev.i, align 8
  %232 = ptrtoint ptr %231 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %231, align 4
  %write32.i.i8.i117.3.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %233, i32 0, i32 5
  %234 = ptrtoint ptr %write32.i.i8.i117.3.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %write32.i.i8.i117.3.i, align 4
  tail call void %235(ptr noundef %231, i16 noundef zeroext 148, i32 noundef %229) #17
  %236 = call ptr @memset(ptr %call7.i.i.i, i32 0, i32 128)
  %237 = call ptr @memset(ptr %pwol_mask.i, i32 0, i32 16)
  %238 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %dev.i, align 4
  %dev_addr12.i = getelementptr inbounds %struct.net_device, ptr %239, i32 0, i32 86
  %240 = ptrtoint ptr %dev_addr12.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %dev_addr12.i, align 64
  %add.ptr.i122.i = getelementptr i8, ptr %call7.i.i.i, i32 62
  %242 = call ptr @memset(ptr %add.ptr.i122.i, i32 255, i32 6)
  %243 = ptrtoint ptr %61 to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 -64, ptr %61, align 1
  %244 = ptrtoint ptr %62 to i32
  call void @__asan_store1_noabort(i32 %244)
  store i8 15, ptr %62, align 4
  br label %for.body6.i139.i

for.body6.i139.i:                                 ; preds = %for.inc33.i159.i.for.body6.i139.i_crit_edge, %for.body.i120.preheader.i
  %len.166.i135.i = phi i32 [ 68, %for.body.i120.preheader.i ], [ %inc29.i153.i, %for.inc33.i159.i.for.body6.i139.i_crit_edge ]
  %j.164.i136.i = phi i32 [ 0, %for.body.i120.preheader.i ], [ %inc34.i157.i, %for.inc33.i159.i.for.body6.i139.i_crit_edge ]
  %sub.i137.i = sub i32 128, %len.166.i135.i
  %245 = tail call i32 @llvm.smin.i32(i32 %sub.i137.i, i32 6) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %245)
  %cmp10.i138.i = icmp slt i32 %245, 1
  br i1 %cmp10.i138.i, label %for.body6.i139.i.b44_magic_pattern.exit162.i_crit_edge, label %for.body17.lr.ph.i142.i

for.body6.i139.i.b44_magic_pattern.exit162.i_crit_edge: ; preds = %for.body6.i139.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %b44_magic_pattern.exit162.i

for.body17.lr.ph.i142.i:                          ; preds = %for.body6.i139.i
  %mul.i140.i = mul nuw nsw i32 %j.164.i136.i, 6
  %add19.i141.i = add nuw nsw i32 %mul.i140.i, 68
  br label %for.body17.i156.i

for.body17.i156.i:                                ; preds = %for.body17.i156.i.for.body17.i156.i_crit_edge, %for.body17.lr.ph.i142.i
  %len.263.i143.i = phi i32 [ %len.166.i135.i, %for.body17.lr.ph.i142.i ], [ %inc29.i153.i, %for.body17.i156.i.for.body17.i156.i_crit_edge ]
  %k.062.i144.i = phi i32 [ 0, %for.body17.lr.ph.i142.i ], [ %inc31.i154.i, %for.body17.i156.i.for.body17.i156.i_crit_edge ]
  %arrayidx18.i145.i = getelementptr i8, ptr %241, i32 %k.062.i144.i
  %246 = ptrtoint ptr %arrayidx18.i145.i to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %arrayidx18.i145.i, align 1
  %add20.i146.i = add nuw i32 %add19.i141.i, %k.062.i144.i
  %arrayidx21.i147.i = getelementptr i8, ptr %call7.i.i.i, i32 %add20.i146.i
  %248 = ptrtoint ptr %arrayidx21.i147.i to i32
  call void @__asan_store1_noabort(i32 %248)
  store i8 %247, ptr %arrayidx21.i147.i, align 1
  %and22.i148.i = and i32 %len.263.i143.i, 7
  %shl23.i149.i = shl nuw nsw i32 1, %and22.i148.i
  %shr24.i150.i = ashr i32 %len.263.i143.i, 3
  %arrayidx25.i151.i = getelementptr i8, ptr %pwol_mask.i, i32 %shr24.i150.i
  %249 = ptrtoint ptr %arrayidx25.i151.i to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %arrayidx25.i151.i, align 1
  %251 = trunc i32 %shl23.i149.i to i8
  %conv28.i152.i = or i8 %250, %251
  store i8 %conv28.i152.i, ptr %arrayidx25.i151.i, align 1
  %inc29.i153.i = add i32 %len.263.i143.i, 1
  %inc31.i154.i = add nuw nsw i32 %k.062.i144.i, 1
  %exitcond.not.i155.i = icmp eq i32 %inc31.i154.i, %245
  br i1 %exitcond.not.i155.i, label %for.inc33.i159.i, label %for.body17.i156.i.for.body17.i156.i_crit_edge

for.body17.i156.i.for.body17.i156.i_crit_edge:    ; preds = %for.body17.i156.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body17.i156.i

for.inc33.i159.i:                                 ; preds = %for.body17.i156.i
  %inc34.i157.i = add nuw nsw i32 %j.164.i136.i, 1
  %exitcond67.not.i158.i = icmp eq i32 %inc34.i157.i, 16
  br i1 %exitcond67.not.i158.i, label %for.inc33.i159.i.b44_magic_pattern.exit162.i_crit_edge, label %for.inc33.i159.i.for.body6.i139.i_crit_edge

for.inc33.i159.i.for.body6.i139.i_crit_edge:      ; preds = %for.inc33.i159.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body6.i139.i

for.inc33.i159.i.b44_magic_pattern.exit162.i_crit_edge: ; preds = %for.inc33.i159.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %b44_magic_pattern.exit162.i

b44_magic_pattern.exit162.i:                      ; preds = %for.inc33.i159.i.b44_magic_pattern.exit162.i_crit_edge, %for.body6.i139.i.b44_magic_pattern.exit162.i_crit_edge
  %len.1.lcssa.i160.i = phi i32 [ %len.166.i135.i, %for.body6.i139.i.b44_magic_pattern.exit162.i_crit_edge ], [ %inc29.i153.i, %for.inc33.i159.i.b44_magic_pattern.exit162.i_crit_edge ]
  br label %for.body.i172.i

for.body.i172.i:                                  ; preds = %for.body.i172.i.for.body.i172.i_crit_edge, %b44_magic_pattern.exit162.i
  %i.010.i164.i = phi i32 [ 0, %b44_magic_pattern.exit162.i ], [ %add1.i170.i, %for.body.i172.i.for.body.i172.i_crit_edge ]
  %add.i165.i = add nuw nsw i32 %i.010.i164.i, 1280
  %252 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %sdev.i, align 8
  %254 = ptrtoint ptr %253 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %253, align 4
  %write32.i.i.i166.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %255, i32 0, i32 5
  %256 = ptrtoint ptr %write32.i.i.i166.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %write32.i.i.i166.i, align 4
  tail call void %257(ptr noundef %253, i16 noundef zeroext 144, i32 noundef %add.i165.i) #17
  %div6.i167.i = lshr exact i32 %i.010.i164.i, 2
  %arrayidx.i168.i = getelementptr i32, ptr %call7.i.i.i, i32 %div6.i167.i
  %258 = ptrtoint ptr %arrayidx.i168.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %arrayidx.i168.i, align 4
  %260 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %sdev.i, align 8
  %262 = ptrtoint ptr %261 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %261, align 4
  %write32.i.i8.i169.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %263, i32 0, i32 5
  %264 = ptrtoint ptr %write32.i.i8.i169.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %write32.i.i8.i169.i, align 4
  tail call void %265(ptr noundef %261, i16 noundef zeroext 148, i32 noundef %259) #17
  %add1.i170.i = add nuw nsw i32 %i.010.i164.i, 4
  %cmp.i171.i = icmp ult i32 %i.010.i164.i, 124
  br i1 %cmp.i171.i, label %for.body.i172.i.for.body.i172.i_crit_edge, label %for.body.i183.preheader.i

for.body.i172.i.for.body.i172.i_crit_edge:        ; preds = %for.body.i172.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i172.i

for.body.i183.preheader.i:                        ; preds = %for.body.i172.i
  call void @__sanitizer_cov_trace_pc() #19
  %266 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %sdev.i, align 8
  %268 = ptrtoint ptr %267 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %267, align 4
  %write32.i.i.i177.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %269, i32 0, i32 5
  %270 = ptrtoint ptr %write32.i.i.i177.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %write32.i.i.i177.i, align 4
  tail call void %271(ptr noundef %267, i16 noundef zeroext 144, i32 noundef 1568) #17
  %272 = ptrtoint ptr %pwol_mask.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %pwol_mask.i, align 4
  %274 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %sdev.i, align 8
  %276 = ptrtoint ptr %275 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %275, align 4
  %write32.i.i8.i180.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %277, i32 0, i32 5
  %278 = ptrtoint ptr %write32.i.i8.i180.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %write32.i.i8.i180.i, align 4
  tail call void %279(ptr noundef %275, i16 noundef zeroext 148, i32 noundef %273) #17
  %280 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %sdev.i, align 8
  %282 = ptrtoint ptr %281 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %281, align 4
  %write32.i.i.i177.1.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %283, i32 0, i32 5
  %284 = ptrtoint ptr %write32.i.i.i177.1.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %write32.i.i.i177.1.i, align 4
  tail call void %285(ptr noundef %281, i16 noundef zeroext 144, i32 noundef 1572) #17
  %286 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %60, align 4
  %288 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %sdev.i, align 8
  %290 = ptrtoint ptr %289 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %289, align 4
  %write32.i.i8.i180.1.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %291, i32 0, i32 5
  %292 = ptrtoint ptr %write32.i.i8.i180.1.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %write32.i.i8.i180.1.i, align 4
  tail call void %293(ptr noundef %289, i16 noundef zeroext 148, i32 noundef %287) #17
  %294 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %sdev.i, align 8
  %296 = ptrtoint ptr %295 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %295, align 4
  %write32.i.i.i177.2.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %297, i32 0, i32 5
  %298 = ptrtoint ptr %write32.i.i.i177.2.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %write32.i.i.i177.2.i, align 4
  tail call void %299(ptr noundef %295, i16 noundef zeroext 144, i32 noundef 1576) #17
  %300 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %62, align 4
  %302 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %sdev.i, align 8
  %304 = ptrtoint ptr %303 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %303, align 4
  %write32.i.i8.i180.2.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %305, i32 0, i32 5
  %306 = ptrtoint ptr %write32.i.i8.i180.2.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %write32.i.i8.i180.2.i, align 4
  tail call void %307(ptr noundef %303, i16 noundef zeroext 148, i32 noundef %301) #17
  %308 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %sdev.i, align 8
  %310 = ptrtoint ptr %309 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %309, align 4
  %write32.i.i.i177.3.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %311, i32 0, i32 5
  %312 = ptrtoint ptr %write32.i.i.i177.3.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %write32.i.i.i177.3.i, align 4
  tail call void %313(ptr noundef %309, i16 noundef zeroext 144, i32 noundef 1580) #17
  %314 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %63, align 4
  %316 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %sdev.i, align 8
  %318 = ptrtoint ptr %317 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %317, align 4
  %write32.i.i8.i180.3.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %319, i32 0, i32 5
  %320 = ptrtoint ptr %write32.i.i8.i180.3.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %write32.i.i8.i180.3.i, align 4
  tail call void %321(ptr noundef %317, i16 noundef zeroext 148, i32 noundef %315) #17
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #17
  %sub36.i98.i = shl i32 %len.1.lcssa.i97.i, 8
  %shl.i = add i32 %sub36.i98.i, 2147483392
  %sub36.i161.i = shl i32 %len.1.lcssa.i160.i, 16
  %shl16.i = add i32 %sub36.i161.i, 2147418112
  %or.i = or i32 %sub36.i.i, %shl.i
  %or17.i = or i32 %or.i, %shl16.i
  %or18.i = or i32 %or17.i, -2147483648
  %322 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %sdev.i, align 8
  %324 = ptrtoint ptr %323 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %323, align 4
  %write32.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %325, i32 0, i32 5
  %326 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %327(ptr noundef %323, i16 noundef zeroext 16, i32 noundef %or18.i) #17
  %328 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %sdev.i, align 8
  %330 = ptrtoint ptr %329 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %329, align 4
  %read32.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %331, i32 0, i32 2
  %332 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %333(ptr noundef %329, i16 noundef zeroext 0) #17
  %or20.i = or i32 %call.i.i.i, 128
  %334 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %sdev.i, align 8
  %336 = ptrtoint ptr %335 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %335, align 4
  %write32.i.i187.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %337, i32 0, i32 5
  %338 = ptrtoint ptr %write32.i.i187.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %write32.i.i187.i, align 4
  tail call void %339(ptr noundef %335, i16 noundef zeroext 0, i32 noundef %or20.i) #17
  br label %b44_setup_pseudo_magicp.exit

b44_setup_pseudo_magicp.exit:                     ; preds = %for.body.i183.preheader.i, %if.else.b44_setup_pseudo_magicp.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pwol_mask.i) #17
  br label %if.end

if.end:                                           ; preds = %b44_setup_pseudo_magicp.exit, %if.then
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #17
  %340 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %340)
  store i16 -1, ptr %val.i, align 2, !annotation !178
  %341 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %sdev.i, align 8
  %bus.i = getelementptr inbounds %struct.ssb_device, ptr %342, i32 0, i32 3
  %343 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %bus.i, align 4
  %bustype.i = getelementptr inbounds %struct.ssb_bus, ptr %344, i32 0, i32 5
  %345 = ptrtoint ptr %bustype.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %bustype.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %346)
  %cmp.not.i = icmp eq i32 %346, 0
  br i1 %cmp.not.i, label %if.end.b44_setup_wol_pci.exit_crit_edge, label %if.then.i

if.end.b44_setup_wol_pci.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %b44_setup_wol_pci.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %347 = ptrtoint ptr %342 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %342, align 4
  %read32.i.i.i55 = getelementptr inbounds %struct.ssb_bus_ops, ptr %348, i32 0, i32 2
  %349 = ptrtoint ptr %read32.i.i.i55 to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %read32.i.i.i55, align 4
  %call.i.i.i56 = tail call i32 %350(ptr noundef %342, i16 noundef zeroext 3992) #17
  %or.i57 = or i32 %call.i.i.i56, 1073741824
  %351 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %sdev.i, align 8
  %353 = ptrtoint ptr %352 to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %352, align 4
  %write32.i.i.i58 = getelementptr inbounds %struct.ssb_bus_ops, ptr %354, i32 0, i32 5
  %355 = ptrtoint ptr %write32.i.i.i58 to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %write32.i.i.i58, align 4
  tail call void %356(ptr noundef %352, i16 noundef zeroext 3992, i32 noundef %or.i57) #17
  %357 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %sdev.i, align 8
  %bus2.i = getelementptr inbounds %struct.ssb_device, ptr %358, i32 0, i32 3
  %359 = ptrtoint ptr %bus2.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %bus2.i, align 4
  %361 = getelementptr inbounds %struct.ssb_bus, ptr %360, i32 0, i32 6
  %362 = ptrtoint ptr %361 to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %361, align 4
  %call3.i = call i32 @pci_read_config_word(ptr noundef %363, i32 noundef 68, ptr noundef nonnull %val.i) #17
  %364 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %sdev.i, align 8
  %bus5.i = getelementptr inbounds %struct.ssb_device, ptr %365, i32 0, i32 3
  %366 = ptrtoint ptr %bus5.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %bus5.i, align 4
  %368 = getelementptr inbounds %struct.ssb_bus, ptr %367, i32 0, i32 6
  %369 = ptrtoint ptr %368 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %368, align 4
  %371 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %371)
  %372 = load i16, ptr %val.i, align 2
  %373 = or i16 %372, 256
  %call8.i = call i32 @pci_write_config_word(ptr noundef %370, i32 noundef 68, i16 noundef zeroext %373) #17
  br label %b44_setup_wol_pci.exit

b44_setup_wol_pci.exit:                           ; preds = %if.then.i, %if.end.b44_setup_wol_pci.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_mii_ioctl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_mii_ioctl(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !192
  %and.i.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @trace_hardirqs_off() #17
  %dep_map.c.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %1 = tail call ptr @llvm.returnaddress(i32 0) #17
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #17
  tail call void @lock_release(ptr noundef %dep_map.c.i.i, i32 noundef %2) #17
  tail call void @trace_hardirqs_on() #17
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %dep_map.c48.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %3 = tail call ptr @llvm.returnaddress(i32 0) #17
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #17
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %4) #17
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #17, !srcloc !193
  %and.i.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !174

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @warn_bogus_irq_restore() #17
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #17, !srcloc !194
  %6 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %syncp, align 4
  %and18.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool.not19.i = icmp eq i32 %and18.i, 0
  br i1 %tobool.not19.i, label %seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__u64_stats_fetch_begin.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !195
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !196
  %8 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %syncp, align 4
  %and.i = and i32 %9, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.__u64_stats_fetch_begin.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

do.end.i.__u64_stats_fetch_begin.exit_crit_edge:  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__u64_stats_fetch_begin.exit

__u64_stats_fetch_begin.exit:                     ; preds = %do.end.i.__u64_stats_fetch_begin.exit_crit_edge, %seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge
  %.lcssa.i = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge ], [ %9, %do.end.i.__u64_stats_fetch_begin.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !197
  ret i32 %.lcssa.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ssb_device_enable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_completed(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_schedule_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @b44_recycle_rx(ptr nocapture noundef readonly %bp, i32 noundef %src_idx, i32 noundef %dest_idx_unmasked) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %dest_idx_unmasked, 511
  %rx_ring = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 3
  %0 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_ring, align 4
  %arrayidx = getelementptr %struct.dma_desc, ptr %1, i32 %and
  %rx_buffers = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 9
  %2 = ptrtoint ptr %rx_buffers to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_buffers, align 4
  %arrayidx1 = getelementptr %struct.ring_info, ptr %3, i32 %and
  %arrayidx3 = getelementptr %struct.dma_desc, ptr %1, i32 %src_idx
  %arrayidx5 = getelementptr %struct.ring_info, ptr %3, i32 %src_idx
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx5, align 4
  %6 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %arrayidx1, align 4
  %7 = load ptr, ptr %arrayidx5, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 19
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %9, align 2
  %flags = getelementptr inbounds %struct.rx_header, ptr %9, i32 0, i32 1
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags, align 2
  %mapping = getelementptr %struct.ring_info, ptr %3, i32 %src_idx, i32 1
  %12 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mapping, align 4
  %mapping8 = getelementptr %struct.ring_info, ptr %3, i32 %and, i32 1
  %14 = ptrtoint ptr %mapping8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %mapping8, align 4
  %flags9 = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 13
  %15 = ptrtoint ptr %flags9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags9, align 4
  %and10 = and i32 %16, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool.not = icmp eq i32 %and10, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %sdev = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 17
  %17 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sdev, align 8
  %rx_ring_dma = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 19
  %19 = ptrtoint ptr %rx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rx_ring_dma, align 8
  %mul = shl i32 %src_idx, 3
  %dma_dev.i = getelementptr inbounds %struct.ssb_device, ptr %18, i32 0, i32 2
  %21 = ptrtoint ptr %dma_dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dma_dev.i, align 4
  %add.i = add i32 %20, %mul
  %.b.i = load i1, ptr @dma_desc_sync_size, align 4
  %23 = select i1 %.b.i, i32 128, i32 0
  tail call void @dma_sync_single_for_cpu(ptr noundef %22, i32 noundef %add.i, i32 noundef %23, i32 noundef 0) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %24 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %and)
  %cmp = icmp eq i32 %and, 511
  %and13 = and i32 %25, -17
  %masksel = select i1 %cmp, i32 16, i32 0
  %ctrl.0 = or i32 %and13, %masksel
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %ctrl.0, ptr %arrayidx, align 4
  %addr = getelementptr %struct.dma_desc, ptr %1, i32 %src_idx, i32 1
  %27 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %addr, align 4
  %addr16 = getelementptr %struct.dma_desc, ptr %1, i32 %and, i32 1
  %29 = ptrtoint ptr %addr16 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %addr16, align 4
  %30 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %arrayidx5, align 4
  %31 = ptrtoint ptr %flags9 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags9, align 4
  %and19 = and i32 %32, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end.if.end25_crit_edge, label %if.then21

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end25

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %sdev22 = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 17
  %33 = ptrtoint ptr %sdev22 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sdev22, align 8
  %rx_ring_dma23 = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 19
  %35 = ptrtoint ptr %rx_ring_dma23 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rx_ring_dma23, align 8
  %mul24 = shl nuw nsw i32 %and, 3
  %dma_dev.i53 = getelementptr inbounds %struct.ssb_device, ptr %34, i32 0, i32 2
  %37 = ptrtoint ptr %dma_dev.i53 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dma_dev.i53, align 4
  %add.i54 = add i32 %36, %mul24
  %.b.i55 = load i1, ptr @dma_desc_sync_size, align 4
  %39 = select i1 %.b.i55, i32 128, i32 0
  tail call void @dma_sync_single_for_device(ptr noundef %38, i32 noundef %add.i54, i32 noundef %39, i32 noundef 0) #17
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %if.end.if.end25_crit_edge
  %sdev26 = getelementptr inbounds %struct.b44, ptr %bp, i32 0, i32 17
  %40 = ptrtoint ptr %sdev26 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sdev26, align 8
  %dma_dev = getelementptr inbounds %struct.ssb_device, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %dma_dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dma_dev, align 4
  %44 = ptrtoint ptr %mapping8 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %mapping8, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %43, i32 noundef %45, i32 noundef 1566, i32 noundef 2) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__napi_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @b44_get_drvinfo(ptr nocapture noundef readonly %dev, ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %sdev = getelementptr i8, ptr %dev, i32 3088
  %0 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev, align 8
  %bus1 = getelementptr inbounds %struct.ssb_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus1, align 4
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call2 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str, i32 noundef 32) #17
  %bustype = getelementptr inbounds %struct.ssb_bus, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %bustype to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bustype, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %5, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb6
    i32 2, label %entry.do.end_crit_edge
    i32 3, label %entry.do.end_crit_edge29
  ]

entry.do.end_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %7 = getelementptr inbounds %struct.ssb_bus, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44, i32 3
  %10 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %sw.bb.pci_name.exit_crit_edge

sw.bb.pci_name.exit_crit_edge:                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %sw.bb.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %13, %if.end.i.i ], [ %11, %sw.bb.pci_name.exit_crit_edge ]
  %call5 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i.i, i32 noundef 32) #17
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %bus_info7 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %call9 = tail call i32 @strlcpy(ptr noundef %bus_info7, ptr noundef nonnull @.str.49, i32 noundef 32) #17
  br label %sw.epilog

do.end:                                           ; preds = %entry.do.end_crit_edge, %entry.do.end_crit_edge29
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1803, i32 noundef 9, ptr noundef null) #17
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb6, %pci_name.exit, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @b44_get_wol(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %wol) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %supported = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 1
  %0 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 32, ptr %supported, align 4
  %flags = getelementptr i8, ptr %dev, i32 2620
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 4
  %3 = lshr i32 %2, 26
  %4 = and i32 %3, 32
  %5 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %4, ptr %5, align 4
  %sopass = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 3
  %7 = call ptr @memset(ptr %sopass, i32 0, i32 6)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b44_set_wol(ptr noundef %dev, ptr nocapture noundef readonly %wol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  tail call void @_raw_spin_lock_irq(ptr noundef %add.ptr.i) #17
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %0 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wolopts, align 4
  %flags1 = getelementptr i8, ptr %dev, i32 2620
  %2 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags1, align 4
  %and2 = and i32 %3, 2147483647
  %and = shl i32 %1, 26
  %4 = and i32 %and, -2147483648
  %and2.sink = or i32 %and2, %4
  store i32 %and2.sink, ptr %flags1, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %add.ptr.i) #17
  %sdev = getelementptr i8, ptr %dev, i32 3088
  %5 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sdev, align 8
  %dev4 = getelementptr inbounds %struct.ssb_device, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev4, align 4
  %9 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %wolopts, align 4
  %and6 = and i32 %10, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7 = icmp ne i32 %and6, 0
  %call8 = tail call i32 @device_set_wakeup_enable(ptr noundef %8, i1 noundef zeroext %tobool7) #17
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @b44_get_msglevel(ptr nocapture noundef readonly %dev) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %dev, i32 2624
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @b44_set_msglevel(ptr nocapture noundef writeonly %dev, i32 noundef %value) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %dev, i32 2624
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %value, ptr %msg_enable, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b44_nway_reset(ptr noundef %dev) #2 align 64 {
entry:
  %bmcr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bmcr) #17
  %0 = ptrtoint ptr %bmcr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %bmcr, align 4, !annotation !178
  tail call void @_raw_spin_lock_irq(ptr noundef %add.ptr.i) #17
  %flags.i = getelementptr i8, ptr %dev, i32 2620
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.b44_readphy.exit_crit_edge

entry.b44_readphy.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %b44_readphy.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %phy_addr.i = getelementptr i8, ptr %dev, i32 3112
  %3 = ptrtoint ptr %phy_addr.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %phy_addr.i, align 8
  %conv.i = zext i8 %4 to i32
  %call.i = call fastcc i32 @__b44_readphy(ptr noundef %add.ptr.i, i32 noundef %conv.i, i32 noundef 0, ptr noundef nonnull %bmcr) #17
  br label %b44_readphy.exit

b44_readphy.exit:                                 ; preds = %if.end.i, %entry.b44_readphy.exit_crit_edge
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i, align 4
  %and.i10 = and i32 %6, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i10)
  %tobool.not.i11 = icmp eq i32 %and.i10, 0
  br i1 %tobool.not.i11, label %if.end.i15, label %b44_readphy.exit.b44_readphy.exit17_crit_edge

b44_readphy.exit.b44_readphy.exit17_crit_edge:    ; preds = %b44_readphy.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %b44_readphy.exit17

if.end.i15:                                       ; preds = %b44_readphy.exit
  call void @__sanitizer_cov_trace_pc() #19
  %phy_addr.i12 = getelementptr i8, ptr %dev, i32 3112
  %7 = ptrtoint ptr %phy_addr.i12 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %phy_addr.i12, align 8
  %conv.i13 = zext i8 %8 to i32
  %call.i14 = call fastcc i32 @__b44_readphy(ptr noundef %add.ptr.i, i32 noundef %conv.i13, i32 noundef 0, ptr noundef nonnull %bmcr) #17
  br label %b44_readphy.exit17

b44_readphy.exit17:                               ; preds = %if.end.i15, %b44_readphy.exit.b44_readphy.exit17_crit_edge
  %9 = ptrtoint ptr %bmcr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bmcr, align 4
  %and = and i32 %10, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %b44_readphy.exit17.if.end_crit_edge, label %if.then

b44_readphy.exit17.if.end_crit_edge:              ; preds = %b44_readphy.exit17
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %b44_readphy.exit17
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i, align 4
  %and.i19 = and i32 %12, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i19)
  %tobool.not.i20 = icmp eq i32 %and.i19, 0
  br i1 %tobool.not.i20, label %if.end.i24, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.end.i24:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %or = or i32 %10, 512
  %phy_addr.i21 = getelementptr i8, ptr %dev, i32 3112
  %13 = ptrtoint ptr %phy_addr.i21 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %phy_addr.i21, align 8
  %conv.i22 = zext i8 %14 to i32
  %call.i23 = tail call fastcc i32 @__b44_writephy(ptr noundef %add.ptr.i, i32 noundef %conv.i22, i32 noundef 0, i32 noundef %or) #17
  br label %if.end

if.end:                                           ; preds = %if.end.i24, %if.then.if.end_crit_edge, %b44_readphy.exit17.if.end_crit_edge
  %r.0 = phi i32 [ -22, %b44_readphy.exit17.if.end_crit_edge ], [ 0, %if.then.if.end_crit_edge ], [ 0, %if.end.i24 ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %add.ptr.i) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bmcr) #17
  ret i32 %r.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @b44_get_ringparam(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %ering, ptr nocapture noundef readnone %kernel_ering, ptr nocapture noundef readnone %extack) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ering, i32 0, i32 1
  %0 = ptrtoint ptr %rx_max_pending to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 511, ptr %rx_max_pending, align 4
  %rx_pending = getelementptr i8, ptr %dev, i32 3104
  %1 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %rx_pending, align 8
  %rx_pending1 = getelementptr inbounds %struct.ethtool_ringparam, ptr %ering, i32 0, i32 5
  %3 = ptrtoint ptr %rx_pending1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %rx_pending1, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b44_set_ringparam(ptr noundef %dev, ptr nocapture noundef readonly %ering, ptr nocapture noundef readnone %kernel_ering, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ering, i32 0, i32 5
  %0 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %1)
  %cmp = icmp ugt i32 %1, 511
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %rx_mini_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ering, i32 0, i32 6
  %2 = ptrtoint ptr %rx_mini_pending to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_mini_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1.not = icmp eq i32 %3, 0
  br i1 %cmp1.not, label %lor.lhs.false2, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %rx_jumbo_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ering, i32 0, i32 7
  %4 = ptrtoint ptr %rx_jumbo_pending to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_jumbo_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp3.not = icmp eq i32 %5, 0
  br i1 %cmp3.not, label %lor.lhs.false4, label %lor.lhs.false2.cleanup_crit_edge

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ering, i32 0, i32 8
  %6 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %7)
  %cmp5 = icmp ugt i32 %7, 511
  br i1 %cmp5, label %lor.lhs.false4.cleanup_crit_edge, label %if.end

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_raw_spin_lock_irq(ptr noundef %add.ptr.i) #17
  %8 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_pending, align 4
  %rx_pending7 = getelementptr i8, ptr %dev, i32 3104
  %10 = ptrtoint ptr %rx_pending7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %rx_pending7, align 8
  %11 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tx_pending, align 4
  %tx_pending9 = getelementptr i8, ptr %dev, i32 3108
  %13 = ptrtoint ptr %tx_pending9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %tx_pending9, align 4
  %sdev.i.i.i.i = getelementptr i8, ptr %dev, i32 3088
  %14 = ptrtoint ptr %sdev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sdev.i.i.i.i, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %write32.i.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %write32.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write32.i.i.i.i.i, align 4
  tail call void %19(ptr noundef %15, i16 noundef zeroext 36, i32 noundef 0) #17
  %20 = ptrtoint ptr %sdev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sdev.i.i.i.i, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %read32.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %read32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read32.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 %25(ptr noundef %21, i16 noundef zeroext 36) #17
  %call.i = tail call fastcc i32 @b44_phy_reset(ptr noundef %add.ptr.i) #17
  %dev.i = getelementptr i8, ptr %dev, i32 3092
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %27, ptr noundef nonnull @.str.46) #20
  %28 = ptrtoint ptr %sdev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sdev.i.i.i.i, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %write32.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %33(ptr noundef %29, i16 noundef zeroext 168, i32 noundef 4) #17
  %flags.i = getelementptr i8, ptr %dev, i32 2620
  %34 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %35, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %..i = select i1 %tobool.not.i, i32 5, i32 4
  tail call fastcc void @b44_chip_reset(ptr noundef %add.ptr.i, i32 noundef %..i) #17
  tail call fastcc void @b44_init_rings(ptr noundef %add.ptr.i)
  tail call fastcc void @b44_init_hw(ptr noundef %add.ptr.i, i32 noundef 1)
  %36 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 103
  %38 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %39) #17
  tail call void @_raw_spin_unlock_irq(ptr noundef %add.ptr.i) #17
  %imask.i = getelementptr i8, ptr %dev, i32 2348
  %40 = ptrtoint ptr %imask.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %imask.i, align 4
  %42 = ptrtoint ptr %sdev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sdev.i.i.i.i, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %write32.i.i.i25 = getelementptr inbounds %struct.ssb_bus_ops, ptr %45, i32 0, i32 5
  %46 = ptrtoint ptr %write32.i.i.i25 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write32.i.i.i25, align 4
  tail call void %47(ptr noundef %43, i16 noundef zeroext 36, i32 noundef %41) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false4.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false4.cleanup_crit_edge ], [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @b44_get_pauseparam(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %epause) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr i8, ptr %dev, i32 2620
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = lshr i32 %1, 15
  %and.lobit = and i32 %and, 1
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %epause, i32 0, i32 1
  %2 = ptrtoint ptr %autoneg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and.lobit, ptr %autoneg, align 4
  %3 = load i32, ptr %flags, align 4
  %and2 = lshr i32 %3, 19
  %and2.lobit = and i32 %and2, 1
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %epause, i32 0, i32 2
  %4 = ptrtoint ptr %rx_pause to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and2.lobit, ptr %rx_pause, align 4
  %5 = load i32, ptr %flags, align 4
  %and6 = lshr i32 %5, 18
  %and6.lobit = and i32 %and6, 1
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %epause, i32 0, i32 3
  %6 = ptrtoint ptr %tx_pause to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and6.lobit, ptr %tx_pause, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b44_set_pauseparam(ptr noundef %dev, ptr nocapture noundef readonly %epause) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  tail call void @_raw_spin_lock_irq(ptr noundef %add.ptr.i) #17
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %epause, i32 0, i32 1
  %0 = ptrtoint ptr %autoneg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %autoneg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %flags1 = getelementptr i8, ptr %dev, i32 2620
  %2 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags1, align 4
  %and = and i32 %3, -32769
  %masksel = select i1 %tobool.not, i32 0, i32 32768
  %and.sink = or i32 %and, %masksel
  store i32 %and.sink, ptr %flags1, align 4
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %epause, i32 0, i32 2
  %4 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  %flags7 = getelementptr i8, ptr %dev, i32 2620
  %and8 = and i32 %and.sink, -524289
  %masksel47 = select i1 %tobool2.not, i32 0, i32 524288
  %and8.sink = or i32 %and8, %masksel47
  %6 = ptrtoint ptr %flags7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and8.sink, ptr %flags7, align 4
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %epause, i32 0, i32 3
  %7 = ptrtoint ptr %tx_pause to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool10.not = icmp eq i32 %8, 0
  %flags15 = getelementptr i8, ptr %dev, i32 2620
  %and16 = and i32 %and8.sink, -262145
  %masksel48 = select i1 %tobool10.not, i32 0, i32 262144
  %and16.sink = or i32 %and16, %masksel48
  %9 = ptrtoint ptr %flags15 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and16.sink, ptr %flags15, align 4
  %sdev.i.i = getelementptr i8, ptr %dev, i32 3088
  %10 = ptrtoint ptr %sdev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sdev.i.i, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  br i1 %tobool.not, label %if.else22, label %if.then21

if.then21:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %flags18 = getelementptr i8, ptr %dev, i32 2620
  %write32.i.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %write32.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write32.i.i.i.i.i, align 4
  tail call void %15(ptr noundef %11, i16 noundef zeroext 36, i32 noundef 0) #17
  %16 = ptrtoint ptr %sdev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sdev.i.i, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %read32.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %read32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read32.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 %21(ptr noundef %17, i16 noundef zeroext 36) #17
  %call.i = tail call fastcc i32 @b44_phy_reset(ptr noundef %add.ptr.i) #17
  %dev.i = getelementptr i8, ptr %dev, i32 3092
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %23, ptr noundef nonnull @.str.46) #20
  %24 = ptrtoint ptr %sdev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sdev.i.i, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %write32.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %29(ptr noundef %25, i16 noundef zeroext 168, i32 noundef 4) #17
  %30 = ptrtoint ptr %flags18 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags18, align 4
  %and.i = and i32 %31, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %..i = select i1 %tobool.not.i, i32 5, i32 4
  tail call fastcc void @b44_chip_reset(ptr noundef %add.ptr.i, i32 noundef %..i) #17
  tail call fastcc void @b44_init_rings(ptr noundef %add.ptr.i)
  tail call fastcc void @b44_init_hw(ptr noundef %add.ptr.i, i32 noundef 1)
  br label %if.end24

if.else22:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %read32.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %13, i32 0, i32 2
  %32 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %33(ptr noundef %11, i16 noundef zeroext 1024) #17
  %and4.i = and i32 %call.i.i.i, -33
  %and2.i = lshr exact i32 %masksel47, 14
  %val.0.i = or i32 %and4.i, %and2.i
  %34 = ptrtoint ptr %sdev.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sdev.i.i, align 8
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %write32.i.i.i44 = getelementptr inbounds %struct.ssb_bus_ops, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %write32.i.i.i44 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write32.i.i.i44, align 4
  tail call void %39(ptr noundef %35, i16 noundef zeroext 1024, i32 noundef %val.0.i) #17
  %40 = ptrtoint ptr %sdev.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sdev.i.i, align 8
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %read32.i.i27.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %read32.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %read32.i.i27.i, align 4
  %call.i.i28.i = tail call i32 %45(ptr noundef %41, i16 noundef zeroext 172) #17
  %or9.i = or i32 %call.i.i28.i, 32960
  %and11.i = and i32 %call.i.i28.i, -32769
  %val.1.i = select i1 %tobool10.not, i32 %and11.i, i32 %or9.i
  %46 = ptrtoint ptr %sdev.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sdev.i.i, align 8
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %write32.i.i30.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %49, i32 0, i32 5
  %50 = ptrtoint ptr %write32.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %write32.i.i30.i, align 4
  tail call void %51(ptr noundef %47, i16 noundef zeroext 172, i32 noundef %val.1.i) #17
  br label %if.end24

if.end24:                                         ; preds = %if.else22, %if.then21
  tail call void @_raw_spin_unlock_irq(ptr noundef %add.ptr.i) #17
  %imask.i = getelementptr i8, ptr %dev, i32 2348
  %52 = ptrtoint ptr %imask.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %imask.i, align 4
  %sdev.i.i45 = getelementptr i8, ptr %dev, i32 3088
  %54 = ptrtoint ptr %sdev.i.i45 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sdev.i.i45, align 8
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %write32.i.i.i46 = getelementptr inbounds %struct.ssb_bus_ops, ptr %57, i32 0, i32 5
  %58 = ptrtoint ptr %write32.i.i.i46 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %write32.i.i.i46, align 4
  tail call void %59(ptr noundef %55, i16 noundef zeroext 36, i32 noundef %53) #17
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @b44_get_strings(ptr nocapture noundef readnone %dev, i32 noundef %stringset, ptr nocapture noundef writeonly %data) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %stringset)
  %cond = icmp eq i32 %stringset, 1
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %0 = call ptr @memcpy(ptr %data, ptr @b44_gstrings, i32 1504)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @b44_get_ethtool_stats(ptr noundef %dev, ptr nocapture noundef readnone %stats, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %hw_stats = getelementptr i8, ptr %dev, i32 2680
  tail call void @_raw_spin_lock_irq(ptr noundef %add.ptr.i) #17
  tail call fastcc void @b44_stats_update(ptr noundef %add.ptr.i)
  tail call void @_raw_spin_unlock_irq(ptr noundef %add.ptr.i) #17
  %syncp = getelementptr i8, ptr %dev, i32 3056
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %call2 = tail call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.body
  %i.014 = phi i32 [ 0, %do.body ], [ %inc, %for.body.for.body_crit_edge ]
  %data_dst.013 = phi ptr [ %data, %do.body ], [ %incdec.ptr3, %for.body.for.body_crit_edge ]
  %data_src.012 = phi ptr [ %hw_stats, %do.body ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %incdec.ptr = getelementptr i64, ptr %data_src.012, i32 1
  %0 = ptrtoint ptr %data_src.012 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %data_src.012, align 8
  %incdec.ptr3 = getelementptr i64, ptr %data_dst.013, i32 1
  %2 = ptrtoint ptr %data_dst.013 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %data_dst.013, align 8
  %inc = add nuw nsw i32 %i.014, 1
  %exitcond.not = icmp eq i32 %inc, 47
  br i1 %exitcond.not, label %do.cond, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

do.cond:                                          ; preds = %for.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !185
  %3 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %syncp, align 4
  %cmp.i.i.i.i.not = icmp eq i32 %4, %call2
  br i1 %cmp.i.i.i.i.not, label %do.end, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body

do.end:                                           ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #19
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @b44_get_sset_count(ptr nocapture noundef readnone %dev, i32 noundef %sset) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %cond = icmp eq i32 %sset, 1
  %. = select i1 %cond, i32 47, i32 -95
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b44_get_link_ksettings(ptr noundef %dev, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr i8, ptr %dev, i32 2620
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end13, label %do.body

do.body:                                          ; preds = %entry
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %2 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phydev, align 16
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %do.body6, label %do.end11, !prof !174

do.body6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/broadcom/b44.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1835, 0\0A.popsection", ""() #17, !srcloc !198
  unreachable

do.end11:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @phy_ethtool_ksettings_get(ptr noundef nonnull %3, ptr noundef %cmd) #17
  br label %cleanup

if.end13:                                         ; preds = %entry
  %and15 = lshr i32 %1, 24
  %4 = and i32 %and15, 15
  %and40 = and i32 %1, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  %cond = select i1 %tobool41.not, i32 10, i32 100
  %speed = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %5 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cond, ptr %speed, align 4
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and43 = lshr i32 %7, 16
  %8 = trunc i32 %and43 to i8
  %9 = and i8 %8, 1
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %10 = ptrtoint ptr %duplex to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %duplex, align 4
  %port = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %11 = ptrtoint ptr %port to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %port, align 1
  %phy_addr = getelementptr i8, ptr %dev, i32 3112
  %12 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %phy_addr, align 8
  %phy_address = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 4
  %14 = ptrtoint ptr %phy_address to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %phy_address, align 2
  %15 = load i32, ptr %flags, align 4
  %and50 = lshr i32 %15, 20
  %16 = trunc i32 %and50 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %19 = ptrtoint ptr %autoneg to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %autoneg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp = icmp eq i8 %17, 0
  %advertising.4.v = select i1 %cmp, i32 24640, i32 24576
  %advertising.4 = or i32 %4, %advertising.4.v
  %link_modes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %link_modes, i32 noundef 591) #17
  %advertising64 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %advertising64, i32 noundef %advertising.4) #17
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %20 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then67, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then67:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  %22 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %speed, align 4
  %23 = ptrtoint ptr %duplex to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -1, ptr %duplex, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then67, %if.end13.cleanup_crit_edge, %do.end11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b44_set_link_ksettings(ptr noundef %dev, ptr noundef %cmd) #2 align 64 {
entry:
  %advertising = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %advertising) #17
  %0 = ptrtoint ptr %advertising to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %advertising, align 4, !annotation !178
  %flags = getelementptr i8, ptr %dev, i32 2620
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 4
  %and = and i32 %2, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end19, label %do.body

do.body:                                          ; preds = %entry
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %3 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %phydev, align 16
  %tobool1.not = icmp eq ptr %4, null
  br i1 %tobool1.not, label %do.body6, label %do.end11, !prof !174

do.body6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/broadcom/b44.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1891, 0\0A.popsection", ""() #17, !srcloc !199
  unreachable

do.end11:                                         ; preds = %do.body
  tail call void @_raw_spin_lock_irq(ptr noundef %add.ptr.i) #17
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %do.end11.if.end15_crit_edge, label %if.then13

do.end11.if.end15_crit_edge:                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15

if.then13:                                        ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @b44_setup_phy(ptr noundef %add.ptr.i)
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %do.end11.if.end15_crit_edge
  %7 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %phydev, align 16
  %call17 = tail call i32 @phy_ethtool_ksettings_set(ptr noundef %8, ptr noundef %cmd) #17
  tail call void @_raw_spin_unlock_irq(ptr noundef %add.ptr.i) #17
  br label %cleanup

if.end19:                                         ; preds = %entry
  %speed20 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %9 = ptrtoint ptr %speed20 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %speed20, align 4
  %advertising21 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1
  %call22 = call zeroext i1 @ethtool_convert_link_mode_to_legacy_u32(ptr noundef nonnull %advertising, ptr noundef %advertising21) #17
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %11 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %autoneg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp = icmp eq i8 %12, 1
  br i1 %cmp, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.end19
  %13 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %advertising, align 4
  %and26 = and i32 %14, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.then25.if.end46_crit_edge, label %if.then25.cleanup_crit_edge

if.then25.cleanup_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then25.if.end46_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end46

if.else:                                          ; preds = %if.end19
  %15 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %10, label %if.else.cleanup_crit_edge [
    i32 100, label %if.else.lor.lhs.false_crit_edge
    i32 10, label %if.else.lor.lhs.false_crit_edge148
  ]

if.else.lor.lhs.false_crit_edge148:               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.lhs.false

if.else.lor.lhs.false_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.lhs.false

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.else.lor.lhs.false_crit_edge, %if.else.lor.lhs.false_crit_edge148
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %16 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %17)
  %switch = icmp ult i8 %17, 2
  br i1 %switch, label %lor.lhs.false.if.end46_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false.if.end46_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end46

if.end46:                                         ; preds = %lor.lhs.false.if.end46_crit_edge, %if.then25.if.end46_crit_edge
  call void @_raw_spin_lock_irq(ptr noundef %add.ptr.i) #17
  %18 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %autoneg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %19)
  %cmp51 = icmp eq i8 %19, 1
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags, align 4
  br i1 %cmp51, label %if.then53, label %if.else86

if.then53:                                        ; preds = %if.end46
  %and55 = and i32 %21, -252903425
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %and55, ptr %flags, align 4
  %23 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %advertising, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp56 = icmp eq i32 %24, 0
  br i1 %cmp56, label %if.then58, label %if.else60

if.then58:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #19
  %or = or i32 %and55, 251658240
  br label %if.end106.sink.split

if.else60:                                        ; preds = %if.then53
  %and61 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.else60.if.end66_crit_edge, label %if.then63

if.else60.if.end66_crit_edge:                     ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end66

if.then63:                                        ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #19
  %or65 = or i32 %and55, 16777216
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or65, ptr %flags, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then63, %if.else60.if.end66_crit_edge
  %and67 = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.end66.if.end72_crit_edge, label %if.then69

if.end66.if.end72_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end72

if.then69:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #19
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags, align 4
  %or71 = or i32 %27, 33554432
  store i32 %or71, ptr %flags, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.then69, %if.end66.if.end72_crit_edge
  %and73 = and i32 %24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  br i1 %tobool74.not, label %if.end72.if.end78_crit_edge, label %if.then75

if.end72.if.end78_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end78

if.then75:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #19
  %28 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags, align 4
  %or77 = or i32 %29, 67108864
  store i32 %or77, ptr %flags, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.then75, %if.end72.if.end78_crit_edge
  %and79 = and i32 %24, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %if.end78.if.end106_crit_edge, label %if.then81

if.end78.if.end106_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end106

if.then81:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #19
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags, align 4
  %or83 = or i32 %31, 134217728
  br label %if.end106.sink.split

if.else86:                                        ; preds = %if.end46
  %or88 = and i32 %21, -1245185
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %10)
  %cmp91 = icmp eq i32 %10, 100
  %spec.select.v = select i1 %cmp91, i32 1179648, i32 1048576
  %spec.select = or i32 %or88, %spec.select.v
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %spec.select, ptr %flags, align 4
  %duplex98 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %33 = ptrtoint ptr %duplex98 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %duplex98, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %34)
  %cmp100 = icmp eq i8 %34, 1
  br i1 %cmp100, label %if.then102, label %if.else86.if.end106_crit_edge

if.else86.if.end106_crit_edge:                    ; preds = %if.else86
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end106

if.then102:                                       ; preds = %if.else86
  call void @__sanitizer_cov_trace_pc() #19
  %or104 = or i32 %spec.select, 65536
  br label %if.end106.sink.split

if.end106.sink.split:                             ; preds = %if.then102, %if.then81, %if.then58
  %or104.sink = phi i32 [ %or104, %if.then102 ], [ %or, %if.then58 ], [ %or83, %if.then81 ]
  %35 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or104.sink, ptr %flags, align 4
  br label %if.end106

if.end106:                                        ; preds = %if.end106.sink.split, %if.else86.if.end106_crit_edge, %if.end78.if.end106_crit_edge
  %state.i145 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %36 = ptrtoint ptr %state.i145 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %state.i145, align 4
  %and1.i.i146 = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i146)
  %tobool.i147.not = icmp eq i32 %and1.i.i146, 0
  br i1 %tobool.i147.not, label %if.end106.if.end110_crit_edge, label %if.then108

if.end106.if.end110_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end110

if.then108:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #19
  call fastcc void @b44_setup_phy(ptr noundef %add.ptr.i)
  br label %if.end110

if.end110:                                        ; preds = %if.then108, %if.end106.if.end110_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %add.ptr.i) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end110, %lor.lhs.false.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then25.cleanup_crit_edge, %if.end15
  %retval.0 = phi i32 [ %call17, %if.end15 ], [ 0, %if.end110 ], [ -22, %if.then25.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %advertising) #17
  ret i32 %retval.0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_ethtool_ksettings_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_ksettings_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ethtool_convert_link_mode_to_legacy_u32(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssb_dma_translation(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssb_device_is_enabled(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssb_pcicore_dev_irqvecs_enable(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssb_clockspeed(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b44_mdio_read_phylib(ptr nocapture noundef readonly %bus, i32 noundef %phy_id, i32 noundef %location) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #17
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !178
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv, align 8
  %call = call fastcc i32 @__b44_readphy(ptr noundef %2, i32 noundef %phy_id, i32 noundef %location, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b44_mdio_write_phylib(ptr nocapture noundef readonly %bus, i32 noundef %phy_id, i32 noundef %location, i16 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %conv = zext i16 %val to i32
  %call = tail call fastcc i32 @__b44_writephy(ptr noundef %1, i32 noundef %phy_id, i32 noundef %location, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mdiobus_is_registered_device(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phy_connect(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @b44_adjust_link(ptr nocapture noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %phydev1 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev1, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body5, label %do.end10, !prof !174

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/broadcom/b44.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2221, 0\0A.popsection", ""() #17, !srcloc !200
  unreachable

do.end10:                                         ; preds = %entry
  %old_link = getelementptr i8, ptr %dev, i32 3120
  %2 = ptrtoint ptr %old_link to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %old_link, align 8
  %link = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %link, align 8
  %bf.lshr = lshr i16 %bf.load, 2
  %bf.clear = and i16 %bf.lshr, 1
  %bf.cast = zext i16 %bf.clear to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %bf.cast)
  %cmp.not = icmp eq i32 %3, %bf.cast
  br i1 %cmp.not, label %do.end10.if.end18_crit_edge, label %if.then11

do.end10.if.end18_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end18

if.then11:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #19
  %5 = ptrtoint ptr %old_link to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %bf.cast, ptr %old_link, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then11, %do.end10.if.end18_crit_edge
  %6 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load20 = load i16, ptr %link, align 8
  %7 = and i16 %bf.load20, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool24.not = icmp eq i16 %7, 0
  br i1 %tobool24.not, label %if.end18.if.end41_crit_edge, label %if.then25

if.end18.if.end41_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end41

if.then25:                                        ; preds = %if.end18
  %duplex = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %duplex, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %9, label %if.then25.if.end41_crit_edge [
    i32 0, label %land.lhs.true
    i32 1, label %land.lhs.true33
  ]

if.then25.if.end41_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end41

land.lhs.true:                                    ; preds = %if.then25
  %flags = getelementptr i8, ptr %dev, i32 2620
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  %and = and i32 %12, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool27.not = icmp eq i32 %and, 0
  br i1 %tobool27.not, label %land.lhs.true.if.end41_crit_edge, label %if.then28

land.lhs.true.if.end41_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end41

if.then28:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %and30 = and i32 %12, -65537
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and30, ptr %flags, align 4
  br label %if.then43

land.lhs.true33:                                  ; preds = %if.then25
  %flags34 = getelementptr i8, ptr %dev, i32 2620
  %14 = ptrtoint ptr %flags34 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags34, align 4
  %and35 = and i32 %15, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.then37, label %land.lhs.true33.if.end41_crit_edge

land.lhs.true33.if.end41_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end41

if.then37:                                        ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #19
  %or = or i32 %15, 65536
  %16 = ptrtoint ptr %flags34 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or, ptr %flags34, align 4
  br label %if.then43

if.end41:                                         ; preds = %land.lhs.true33.if.end41_crit_edge, %land.lhs.true.if.end41_crit_edge, %if.then25.if.end41_crit_edge, %if.end18.if.end41_crit_edge
  br i1 %cmp.not, label %if.end41.if.end53_crit_edge, label %if.end41.if.then43_crit_edge

if.end41.if.then43_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then43

if.end41.if.end53_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end53

if.then43:                                        ; preds = %if.end41.if.then43_crit_edge, %if.then37, %if.then28
  %sdev.i = getelementptr i8, ptr %dev, i32 3088
  %17 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sdev.i, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %read32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %22(ptr noundef %18, i16 noundef zeroext 1072) #17
  %flags45 = getelementptr i8, ptr %dev, i32 2620
  %23 = ptrtoint ptr %flags45 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags45, align 4
  %and51 = and i32 %call.i.i, -2
  %and46 = lshr i32 %24, 16
  %and46.lobit = and i32 %and46, 1
  %val.0 = or i32 %and46.lobit, %and51
  %25 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sdev.i, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %write32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write32.i.i, align 4
  tail call void %30(ptr noundef %26, i16 noundef zeroext 1072, i32 noundef %val.0) #17
  tail call void @phy_print_status(ptr noundef nonnull %1) #17
  br label %if.end53

if.end53:                                         ; preds = %if.then43, %if.end41.if.end53_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_attached_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdiobus_alloc_size(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_print_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_and(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ssb_device_disable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_set_power_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ssb_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssb_pcihost_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #17

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #18 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #18 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { nounwind }
attributes #18 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #19 = { nomerge }
attributes #20 = { cold nounwind }
attributes #21 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !16, !17, !19, !21, !23, !25, !27, !28, !30, !31, !33, !34, !35, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !67, !69, !71, !73, !74, !76, !77, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !109, !111, !113, !115, !117, !119, !121, !123, !124, !125, !126, !128, !130, !131, !132, !133, !135, !137, !139, !140, !141, !143, !144, !145, !146, !148, !150, !152, !153, !154, !156, !157, !158, !160, !162}
!llvm.named.register.sp = !{!164}
!llvm.module.flags = !{!165, !166, !167, !168, !169, !170, !171, !172}
!llvm.ident = !{!173}

!0 = !{ptr @__UNIQUE_ID_author353, !1, !"__UNIQUE_ID_author353", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/broadcom/b44.c", i32 96, i32 1}
!2 = !{ptr @__UNIQUE_ID_description354, !3, !"__UNIQUE_ID_description354", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/broadcom/b44.c", i32 97, i32 1}
!4 = !{ptr @__UNIQUE_ID_file355, !5, !"__UNIQUE_ID_file355", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/broadcom/b44.c", i32 98, i32 1}
!6 = !{ptr @__UNIQUE_ID_license356, !5, !"__UNIQUE_ID_license356", i1 false, i1 false}
!7 = !{ptr @__param_b44_debug, !8, !"__param_b44_debug", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/broadcom/b44.c", i32 101, i32 1}
!9 = !{ptr @__UNIQUE_ID_b44_debugtype357, !8, !"__UNIQUE_ID_b44_debugtype357", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_b44_debug358, !11, !"__UNIQUE_ID_b44_debug358", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/broadcom/b44.c", i32 102, i32 1}
!12 = !{ptr @__initcall__kmod_b44__363_2613_b44_init6, !13, !"__initcall__kmod_b44__363_2613_b44_init6", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/broadcom/b44.c", i32 2613, i32 1}
!14 = !{ptr @__exitcall_b44_cleanup, !15, !"__exitcall_b44_cleanup", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/broadcom/b44.c", i32 2614, i32 1}
!16 = !{ptr @__param_str_b44_debug, !8, !"__param_str_b44_debug", i1 false, i1 false}
!17 = !{ptr @b44_debug, !18, !"b44_debug", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/broadcom/b44.c", i32 100, i32 12}
!19 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/broadcom/b44.c", i32 2566, i32 11}
!21 = !{ptr @b44_ssb_driver, !22, !"b44_ssb_driver", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/broadcom/b44.c", i32 2565, i32 26}
!23 = !{ptr @b44_ssb_tbl, !24, !"b44_ssb_tbl", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/broadcom/b44.c", i32 120, i32 35}
!25 = !{ptr @b44_init_one.__key, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/broadcom/b44.c", i32 2371, i32 2}
!27 = !{ptr @.str.1, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @b44_init_one.__key.2, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/broadcom/b44.c", i32 2372, i32 2}
!30 = !{ptr @.str.3, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.4, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/broadcom/b44.c", i32 2387, i32 3}
!33 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @b44_init_one._entry, !32, !"_entry", i1 false, i1 false}
!38 = !{ptr @b44_init_one._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/broadcom/b44.c", i32 2394, i32 3}
!41 = !{ptr @b44_init_one._entry.9, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @b44_init_one._entry_ptr.11, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/broadcom/b44.c", i32 2401, i32 3}
!45 = !{ptr @b44_init_one._entry.12, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @b44_init_one._entry_ptr.14, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/broadcom/b44.c", i32 2407, i32 3}
!49 = !{ptr @b44_init_one._entry.15, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @b44_init_one._entry_ptr.17, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/broadcom/b44.c", i32 2428, i32 3}
!53 = !{ptr @b44_init_one._entry.18, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @b44_init_one._entry_ptr.20, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/broadcom/b44.c", i32 2444, i32 3}
!57 = !{ptr @b44_init_one._entry.21, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @b44_init_one._entry_ptr.23, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/broadcom/b44.c", i32 2451, i32 4}
!61 = !{ptr @b44_init_one._entry.24, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @b44_init_one._entry_ptr.26, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/broadcom/b44.c", i32 2457, i32 19}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/broadcom/b44.c", i32 2457, i32 31}
!67 = !{ptr @instance, !68, !"instance", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/broadcom/b44.c", i32 138, i32 12}
!69 = !{ptr @b44_netdev_ops, !70, !"b44_netdev_ops", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/broadcom/b44.c", i32 2199, i32 36}
!71 = !{ptr @b44_open.__key, !72, !"__key", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/broadcom/b44.c", i32 1473, i32 2}
!73 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!74 = distinct !{null, !75, !"__already_done", i1 false, i1 false}
!75 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!76 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!78 = distinct !{null, !79, !"dma_desc_sync_size", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/broadcom/b44.c", i32 137, i32 12}
!80 = !{ptr @.str.32, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/broadcom/b44.c", i32 191, i32 24}
!82 = !{ptr @.str.33, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/broadcom/b44.c", i32 192, i32 26}
!84 = !{ptr @.str.34, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/broadcom/b44.c", i32 192, i32 36}
!86 = !{ptr @.str.35, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/broadcom/b44.c", i32 592, i32 25}
!88 = !{ptr @.str.36, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/broadcom/b44.c", i32 594, i32 25}
!90 = !{ptr @.str.37, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/broadcom/b44.c", i32 523, i32 24}
!92 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/broadcom/b44.c", i32 525, i32 24}
!94 = !{ptr @.str.39, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/broadcom/b44.c", i32 527, i32 45}
!96 = !{ptr @.str.40, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/broadcom/b44.c", i32 527, i32 54}
!98 = !{ptr @.str.41, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/broadcom/b44.c", i32 529, i32 24}
!100 = !{ptr @.str.42, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/broadcom/b44.c", i32 530, i32 42}
!102 = !{ptr @.str.43, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/ethernet/broadcom/b44.c", i32 530, i32 49}
!104 = !{ptr @.str.44, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/broadcom/b44.c", i32 929, i32 21}
!106 = distinct !{null, !107, !"__already_done", i1 false, i1 false}
!107 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!108 = !{ptr @.str.45, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.46, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/broadcom/b44.c", i32 1352, i32 23}
!111 = !{ptr @.str.47, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/broadcom/b44.c", i32 983, i32 19}
!113 = !{ptr @.str.48, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/broadcom/b44.c", i32 954, i32 18}
!115 = !{ptr @b44_ethtool_ops, !116, !"b44_ethtool_ops", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/broadcom/b44.c", i32 2120, i32 33}
!117 = !{ptr @.str.49, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/broadcom/b44.c", i32 1799, i32 27}
!119 = !{ptr @b44_gstrings, !120, !"b44_gstrings", i1 false, i1 false}
!120 = !{!"../drivers/net/ethernet/broadcom/b44.c", i32 140, i32 19}
!121 = !{ptr @.str.50, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/ethernet/broadcom/b44.c", i32 2183, i32 3}
!123 = !{ptr @.str.51, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @b44_get_invariants._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @b44_get_invariants._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.52, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/broadcom/b44.c", i32 351, i32 24}
!128 = !{ptr @.str.53, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/ethernet/broadcom/b44.c", i32 2264, i32 3}
!130 = !{ptr @.str.54, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @b44_register_phy_one._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @b44_register_phy_one._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.55, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/ethernet/broadcom/b44.c", i32 2272, i32 18}
!135 = !{ptr @.str.56, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/ethernet/broadcom/b44.c", i32 2275, i32 41}
!137 = !{ptr @.str.58, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/ethernet/broadcom/b44.c", i32 2281, i32 3}
!139 = !{ptr @b44_register_phy_one._entry.57, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @b44_register_phy_one._entry_ptr.59, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.61, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/ethernet/broadcom/b44.c", i32 2288, i32 3}
!143 = !{ptr @.str.62, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @b44_register_phy_one._entry.60, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @b44_register_phy_one._entry_ptr.63, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.64, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/ethernet/broadcom/b44.c", i32 2293, i32 36}
!148 = !{ptr @.str.65, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/ethernet/broadcom/b44.c", i32 2293, i32 48}
!150 = !{ptr @.str.67, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/ethernet/broadcom/b44.c", i32 2303, i32 3}
!152 = !{ptr @b44_register_phy_one._entry.66, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @b44_register_phy_one._entry_ptr.68, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.69, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/ethernet/broadcom/b44.c", i32 2527, i32 3}
!156 = !{ptr @b44_resume._entry, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @b44_resume._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.70, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/ethernet/broadcom/b44.c", i32 2547, i32 19}
!160 = !{ptr @b44_pci_driver, !161, !"b44_pci_driver", i1 false, i1 false}
!161 = !{!"../drivers/net/ethernet/broadcom/b44.c", i32 114, i32 26}
!162 = !{ptr @b44_pci_tbl, !163, !"b44_pci_tbl", i1 false, i1 false}
!163 = !{!"../drivers/net/ethernet/broadcom/b44.c", i32 106, i32 35}
!164 = !{!"sp"}
!165 = !{i32 1, !"wchar_size", i32 2}
!166 = !{i32 1, !"min_enum_size", i32 4}
!167 = !{i32 8, !"branch-target-enforcement", i32 0}
!168 = !{i32 8, !"sign-return-address", i32 0}
!169 = !{i32 8, !"sign-return-address-all", i32 0}
!170 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!171 = !{i32 7, !"uwtable", i32 1}
!172 = !{i32 7, !"frame-pointer", i32 2}
!173 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!174 = !{!"branch_weights", i32 1, i32 2000}
!175 = !{i64 2157207549, i64 2157208049, i64 2157207586, i64 2157207642, i64 2157207676, i64 2157207700, i64 2157207741, i64 2157207762, i64 2157207790, i64 2157207824}
!176 = !{i64 2155820420}
!177 = !{i64 2157212204}
!178 = !{!"auto-init"}
!179 = !{!"branch_weights", i32 2000, i32 1}
!180 = !{i64 2157216505}
!181 = !{i64 2152241672, i64 2152242172, i64 2152241709, i64 2152241765, i64 2152241799, i64 2152241823, i64 2152241864, i64 2152241885, i64 2152241913, i64 2152241947}
!182 = !{i64 2152243016}
!183 = !{i64 2155819349}
!184 = !{i64 2157235010, i64 2157235511, i64 2157235047, i64 2157235103, i64 2157235137, i64 2157235161, i64 2157235202, i64 2157235223, i64 2157235251, i64 2157235285}
!185 = !{i64 2150034880}
!186 = !{i64 2149927212}
!187 = !{i64 2149932144}
!188 = !{i64 2149953856}
!189 = !{i64 2149958748}
!190 = !{i64 2150035205}
!191 = !{i64 2150035530}
!192 = !{i64 665225, i64 665286}
!193 = !{i64 667957}
!194 = !{i64 668242}
!195 = !{i64 2152422925}
!196 = !{i64 2152422767}
!197 = !{i64 2152423095}
!198 = !{i64 2157227678, i64 2157228179, i64 2157227715, i64 2157227771, i64 2157227805, i64 2157227829, i64 2157227870, i64 2157227891, i64 2157227919, i64 2157227953}
!199 = !{i64 2157231242, i64 2157231743, i64 2157231279, i64 2157231335, i64 2157231369, i64 2157231393, i64 2157231434, i64 2157231455, i64 2157231483, i64 2157231517}
!200 = !{i64 2157238588, i64 2157239089, i64 2157238625, i64 2157238681, i64 2157238715, i64 2157238739, i64 2157238780, i64 2157238801, i64 2157238829, i64 2157238863}
