; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/rdc/r6040.c_pt.bc'
source_filename = "../drivers/net/ethernet/rdc/r6040.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.softnet_data = type { %struct.list_head, %struct.sk_buff_head, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.sk_buff_head, %struct.anon.122, [100 x i8], i32, [124 x i8], %struct.__call_single_data, ptr, i32, i32, i32, %struct.sk_buff_head, %struct.napi_struct, [72 x i8] }
%struct.anon.122 = type { i16, i8 }
%struct.__call_single_data = type { %struct.__call_single_node, ptr, ptr }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.121, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.121 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.120, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.120 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.r6040_descriptor = type { i16, i16, i32, i32, i32, ptr, ptr, ptr, i32 }
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
%struct.page = type { i32, %union.anon.2, %union.anon.96, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.96 = type { %struct.atomic_t }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.r6040_private = type { %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, ptr, ptr, %struct.napi_struct, ptr, i32, i32 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }

@__UNIQUE_ID_author351 = internal constant [146 x i8] c"r6040.author=Sten Wang <sten.wang@rdc.com.tw>,Daniel Gimpelevich <daniel@gimpelevich.san-francisco.ca.us>,Florian Fainelli <f.fainelli@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file352 = internal constant [42 x i8] c"r6040.file=drivers/net/ethernet/rdc/r6040\00", section ".modinfo", align 1
@__UNIQUE_ID_license353 = internal constant [18 x i8] c"r6040.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description354 = internal constant [57 x i8] c"r6040.description=RDC R6040 NAPI PCI FastEthernet driver\00", section ".modinfo", align 1
@__UNIQUE_ID_version355 = internal constant [29 x i8] c"r6040.version=0.29 04Jul2016\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"r6040\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"0.29 04Jul2016\00", [17 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__initcall__kmod_r6040__356_1212_r6040_driver_init6 = internal global ptr @r6040_driver_init, section ".initcall6.init", align 4
@r6040_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @r6040_pci_tbl, ptr @r6040_init_one, ptr @r6040_remove_one, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_r6040_driver_exit = internal global ptr @r6040_driver_exit, section ".exitcall.exit", align 4
@r6040_pci_tbl = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 6131, i32 24640, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@r6040_init_one.card_idx = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@r6040_init_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1037, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\016%s\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"r6040_init_one\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/net/ethernet/rdc/r6040.c\00", [63 x i8] zeroinitializer }, align 32
@r6040_init_one._entry_ptr = internal global ptr @r6040_init_one._entry, section ".printk_index", align 4
@version = internal global { [58 x i8], [38 x i8] } { [58 x i8] c"r6040: RDC R6040 NAPI net driver,version 0.29 (04Jul2016)\00", [38 x i8] zeroinitializer }, align 32
@r6040_init_one._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 1046, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"32-bit PCI DMA addresses not supported by the card\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@r6040_init_one._entry_ptr.10 = internal global ptr @r6040_init_one._entry.6, section ".printk_index", align 4
@r6040_init_one._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 1051, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@r6040_init_one._entry_ptr.12 = internal global ptr @r6040_init_one._entry.11, section ".printk_index", align 4
@r6040_init_one._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.4, ptr @.str.5, i32 1057, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Insufficient PCI resources, aborting\0A\00", [58 x i8] zeroinitializer }, align 32
@r6040_init_one._entry_ptr.15 = internal global ptr @r6040_init_one._entry.13, section ".printk_index", align 4
@r6040_init_one._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.4, ptr @.str.5, i32 1075, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to request PCI regions\0A\00", [33 x i8] zeroinitializer }, align 32
@r6040_init_one._entry_ptr.18 = internal global ptr @r6040_init_one._entry.16, section ".printk_index", align 4
@r6040_init_one._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.4, ptr @.str.5, i32 1081, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ioremap failed for device\0A\00", [37 x i8] zeroinitializer }, align 32
@r6040_init_one._entry_ptr.21 = internal global ptr @r6040_init_one._entry.19, section ".printk_index", align 4
@r6040_init_one.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&lp->lock\00", [22 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"MAC address not initialized, generating random\0A\00", [48 x i8] zeroinitializer }, align 32
@r6040_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @r6040_open, ptr @r6040_close, ptr @r6040_start_xmit, ptr null, ptr null, ptr null, ptr @r6040_multicast_list, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr @phy_do_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @r6040_tx_timeout, ptr null, ptr null, ptr null, ptr @r6040_get_stats, ptr null, ptr null, ptr @r6040_poll_controller, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@netdev_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @netdev_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @phy_ethtool_nway_reset, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_ts_info, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @phy_ethtool_get_link_ksettings, ptr @phy_ethtool_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@r6040_init_one._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.4, ptr @.str.5, i32 1134, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mdiobus_alloc() failed\0A\00", [40 x i8] zeroinitializer }, align 32
@r6040_init_one._entry_ptr.26 = internal global ptr @r6040_init_one._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"r6040_eth_mii\00", [18 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s-%x\00", [26 x i8] zeroinitializer }, align 32
@r6040_init_one._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.4, ptr @.str.5, i32 1148, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to register MII bus\0A\00", [36 x i8] zeroinitializer }, align 32
@r6040_init_one._entry_ptr.31 = internal global ptr @r6040_init_one._entry.29, section ".printk_index", align 4
@r6040_init_one._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.4, ptr @.str.5, i32 1154, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to probe MII bus\0A\00", [39 x i8] zeroinitializer }, align 32
@r6040_init_one._entry_ptr.34 = internal global ptr @r6040_init_one._entry.32, section ".printk_index", align 4
@r6040_init_one._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.4, ptr @.str.5, i32 1161, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to register net device\0A\00", [33 x i8] zeroinitializer }, align 32
@r6040_init_one._entry_ptr.37 = internal global ptr @r6040_init_one._entry.35, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.38 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c": no tx descriptor\0A\00", [44 x i8] zeroinitializer }, align 32
@softnet_data = external dso_local global %struct.softnet_data, section ".data..percpu..shared_aligned", align 128
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@.str.42 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"transmit timed out, int enable %4.4x status %4.4x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0.29\00", [27 x i8] zeroinitializer }, align 32
@r6040_mii_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.5, i32 1005, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"no PHY found\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"r6040_mii_probe\00", [16 x i8] zeroinitializer }, align 32
@r6040_mii_probe._entry_ptr = internal global ptr @r6040_mii_probe._entry, section ".printk_index", align 4
@r6040_mii_probe._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.5, i32 1013, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"could not attach to PHY\0A\00", [39 x i8] zeroinitializer }, align 32
@r6040_mii_probe._entry_ptr.48 = internal global ptr @r6040_mii_probe._entry.46, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 156, i32 1 }
@___asan_gen_.58 = private unnamed_addr constant [13 x i8] c"r6040_driver\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1205, i32 26 }
@___asan_gen_.61 = private unnamed_addr constant [14 x i8] c"r6040_pci_tbl\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1199, i32 35 }
@___asan_gen_.64 = private unnamed_addr constant [9 x i8] c"card_idx\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1033, i32 13 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1037, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 195, i32 13 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1046, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1051, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1057, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1075, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1081, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1099, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1113, i32 20 }
@___asan_gen_.124 = private unnamed_addr constant [17 x i8] c"r6040_netdev_ops\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 956, i32 36 }
@___asan_gen_.127 = private unnamed_addr constant [19 x i8] c"netdev_ethtool_ops\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 947, i32 33 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1134, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1142, i32 22 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1143, i32 45 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1148, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1154, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1161, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 326, i32 6 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 816, i32 19 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 426, i32 19 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 943, i32 25 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1005, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.187 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.188 = private constant [36 x i8] c"../drivers/net/ethernet/rdc/r6040.c\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1013, i32 3 }
@llvm.compiler.used = appending global [68 x ptr] [ptr @__UNIQUE_ID_author351, ptr @__UNIQUE_ID_description354, ptr @__UNIQUE_ID_file352, ptr @__UNIQUE_ID_license353, ptr @__UNIQUE_ID_version355, ptr @__exitcall_r6040_driver_exit, ptr @__initcall__kmod_r6040__356_1212_r6040_driver_init6, ptr @__modver_attr, ptr @r6040_driver_exit, ptr @r6040_init_one._entry, ptr @r6040_init_one._entry.11, ptr @r6040_init_one._entry.13, ptr @r6040_init_one._entry.16, ptr @r6040_init_one._entry.19, ptr @r6040_init_one._entry.24, ptr @r6040_init_one._entry.29, ptr @r6040_init_one._entry.32, ptr @r6040_init_one._entry.35, ptr @r6040_init_one._entry.6, ptr @r6040_init_one._entry_ptr, ptr @r6040_init_one._entry_ptr.10, ptr @r6040_init_one._entry_ptr.12, ptr @r6040_init_one._entry_ptr.15, ptr @r6040_init_one._entry_ptr.18, ptr @r6040_init_one._entry_ptr.21, ptr @r6040_init_one._entry_ptr.26, ptr @r6040_init_one._entry_ptr.31, ptr @r6040_init_one._entry_ptr.34, ptr @r6040_init_one._entry_ptr.37, ptr @r6040_mii_probe._entry, ptr @r6040_mii_probe._entry.46, ptr @r6040_mii_probe._entry_ptr, ptr @r6040_mii_probe._entry_ptr.48, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @r6040_driver, ptr @r6040_pci_tbl, ptr @r6040_init_one.card_idx, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @version, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @r6040_init_one.__key, ptr @.str.22, ptr @.str.23, ptr @r6040_netdev_ops, ptr @netdev_ethtool_ops, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r6040_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r6040_pci_tbl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r6040_init_one.card_idx to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r6040_init_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @version to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r6040_init_one._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r6040_init_one._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r6040_init_one._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r6040_init_one._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r6040_init_one._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r6040_init_one.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r6040_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r6040_init_one._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r6040_init_one._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r6040_init_one._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r6040_init_one._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r6040_mii_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r6040_mii_probe._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @r6040_driver_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @r6040_driver, ptr noundef null, ptr noundef nonnull @.str.1) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @r6040_driver_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @pci_unregister_driver(ptr noundef nonnull @r6040_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r6040_init_one(ptr noundef %pdev, ptr nocapture noundef readnone %ent) #2 align 64 {
entry:
  %addr = alloca [3 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #12
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %addr, align 2, !annotation !111
  %1 = getelementptr inbounds [3 x i16], ptr %addr, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %1, align 2, !annotation !111
  %3 = getelementptr inbounds [3 x i16], ptr %addr, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %3, align 2, !annotation !111
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @version) #15
  %call1 = tail call i32 @pci_enable_device(ptr noundef %pdev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call3 = tail call i32 @dma_set_mask(ptr noundef %dev2, i64 noundef 4294967295) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end10, label %do.end8

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.7) #15
  br label %err_out_disable_dev

if.end10:                                         ; preds = %if.end
  %call12 = tail call i32 @dma_set_coherent_mask(ptr noundef %dev2, i64 noundef 4294967295) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end19, label %do.end17

do.end17:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.7) #15
  br label %err_out_disable_dev

if.end19:                                         ; preds = %if.end10
  %end = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %5 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.end19.do.end29_crit_edge, label %cond.false

if.end19.do.end29_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end29

cond.false:                                       ; preds = %if.end19
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %7 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %resource, align 8
  %sub = add i32 %6, 1
  %add = sub i32 %sub, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %add)
  %phi.cmp = icmp ult i32 %add, 256
  br i1 %phi.cmp, label %cond.false.do.end29_crit_edge, label %if.end31

cond.false.do.end29_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end29

do.end29:                                         ; preds = %cond.false.do.end29_crit_edge, %if.end19.do.end29_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.14) #15
  br label %err_out_disable_dev

if.end31:                                         ; preds = %cond.false
  tail call void @pci_set_master(ptr noundef %pdev) #12
  %call32 = tail call ptr @alloc_etherdev_mqs(i32 noundef 336, i32 noundef 1, i32 noundef 1) #12
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %if.end31.err_out_disable_dev_crit_edge, label %if.end35

if.end31.err_out_disable_dev_crit_edge:           ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_out_disable_dev

if.end35:                                         ; preds = %if.end31
  %parent = getelementptr inbounds %struct.net_device, ptr %call32, i32 0, i32 133, i32 1
  %9 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev2, ptr %parent, align 8
  %add.ptr.i = getelementptr i8, ptr %call32, i32 2304
  %call39 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str.1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end46, label %do.end44

do.end44:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.17) #15
  br label %err_out_free_dev

if.end46:                                         ; preds = %if.end35
  %call47 = tail call ptr @pci_iomap(ptr noundef %pdev, i32 noundef 0, i32 noundef 256) #12
  %tobool48.not = icmp eq ptr %call47, null
  br i1 %tobool48.not, label %do.end52, label %if.end54

do.end52:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.20) #15
  br label %err_out_free_res

if.end54:                                         ; preds = %if.end46
  %add.ptr = getelementptr i8, ptr %call47, i32 136
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #12, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !113
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp56 = icmp eq i16 %10, 0
  br i1 %cmp56, label %if.then58, label %if.end54.if.end60_crit_edge

if.end54.if.end60_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60

if.then58:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 1952) #12, !srcloc !115
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %if.end54.if.end60_crit_edge
  %base = getelementptr i8, ptr %call32, i32 2624
  %11 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call47, ptr %base, align 8
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %12 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq, align 4
  %irq61 = getelementptr inbounds %struct.net_device, ptr %call32, i32 0, i32 64
  %14 = ptrtoint ptr %irq61 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %irq61, align 4
  tail call void @__raw_spin_lock_init(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.22, ptr noundef nonnull @r6040_init_one.__key, i16 noundef signext 3) #12
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %15 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call32, ptr %driver_data.i.i, align 4
  %16 = load i32, ptr @r6040_init_one.card_idx, align 4
  %inc = add i32 %16, 1
  store i32 %inc, ptr @r6040_init_one.card_idx, align 4
  %add.ptr66 = getelementptr i8, ptr %call47, i32 104
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr66) #12, !srcloc !112
  %18 = tail call i16 @llvm.bswap.i16(i16 %17) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !113
  %19 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %addr, align 2
  %add.ptr69 = getelementptr i8, ptr %call47, i32 106
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr69) #12, !srcloc !112
  %21 = tail call i16 @llvm.bswap.i16(i16 %20) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !113
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %1, align 2
  %add.ptr72 = getelementptr i8, ptr %call47, i32 108
  %23 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr72) #12, !srcloc !112
  %24 = tail call i16 @llvm.bswap.i16(i16 %23) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !113
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %3, align 2
  call void @dev_addr_mod(ptr noundef nonnull %call32, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #12
  %26 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %addr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool77.not = icmp eq i16 %27, 0
  br i1 %tobool77.not, label %lor.lhs.false, label %if.end60.if.end86_crit_edge

if.end60.if.end86_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end86

lor.lhs.false:                                    ; preds = %if.end60
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool80.not = icmp eq i16 %29, 0
  br i1 %tobool80.not, label %lor.lhs.false81, label %lor.lhs.false.if.end86_crit_edge

lor.lhs.false.if.end86_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end86

lor.lhs.false81:                                  ; preds = %lor.lhs.false
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool84.not = icmp eq i16 %31, 0
  br i1 %tobool84.not, label %if.then85, label %lor.lhs.false81.if.end86_crit_edge

lor.lhs.false81.if.end86_crit_edge:               ; preds = %lor.lhs.false81
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end86

if.then85:                                        ; preds = %lor.lhs.false81
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef nonnull %call32, ptr noundef nonnull @.str.23) #15
  call fastcc void @eth_hw_addr_random(ptr noundef nonnull %call32)
  br label %if.end86

if.end86:                                         ; preds = %if.then85, %lor.lhs.false81.if.end86_crit_edge, %lor.lhs.false.if.end86_crit_edge, %if.end60.if.end86_crit_edge
  %pdev87 = getelementptr i8, ptr %call32, i32 2348
  %32 = ptrtoint ptr %pdev87 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %pdev, ptr %pdev87, align 4
  %dev88 = getelementptr i8, ptr %call32, i32 2388
  %33 = ptrtoint ptr %dev88 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call32, ptr %dev88, align 4
  %mcr0 = getelementptr i8, ptr %call32, i32 2386
  %34 = ptrtoint ptr %mcr0 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 4098, ptr %mcr0, align 2
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call32, i32 0, i32 16
  %35 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @r6040_netdev_ops, ptr %netdev_ops, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call32, i32 0, i32 44
  %36 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @netdev_ethtool_ops, ptr %ethtool_ops, align 16
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call32, i32 0, i32 115
  %37 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 600, ptr %watchdog_timeo, align 4
  %napi = getelementptr i8, ptr %call32, i32 2400
  call void @netif_napi_add(ptr noundef nonnull %call32, ptr noundef %napi, ptr noundef nonnull @r6040_poll, i32 noundef 64) #12
  %call.i = call ptr @mdiobus_alloc_size(i32 noundef 0) #12
  %mii_bus = getelementptr i8, ptr %call32, i32 2392
  %38 = ptrtoint ptr %mii_bus to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i, ptr %mii_bus, align 8
  %tobool91.not = icmp eq ptr %call.i, null
  br i1 %tobool91.not, label %do.end95, label %if.end97

do.end95:                                         ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.25) #15
  br label %err_out_unmap

if.end97:                                         ; preds = %if.end86
  %priv = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 3
  %39 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call32, ptr %priv, align 8
  %40 = ptrtoint ptr %mii_bus to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mii_bus, align 8
  %read = getelementptr inbounds %struct.mii_bus, ptr %41, i32 0, i32 4
  %42 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @r6040_mdiobus_read, ptr %read, align 4
  %43 = load ptr, ptr %mii_bus, align 8
  %write = getelementptr inbounds %struct.mii_bus, ptr %43, i32 0, i32 5
  %44 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @r6040_mdiobus_write, ptr %write, align 8
  %45 = load ptr, ptr %mii_bus, align 8
  %name = getelementptr inbounds %struct.mii_bus, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @.str.27, ptr %name, align 4
  %47 = load ptr, ptr %mii_bus, align 8
  %id = getelementptr inbounds %struct.mii_bus, ptr %47, i32 0, i32 2
  %init_name.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %48 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %49, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end97.dev_name.exit_crit_edge

if.end97.dev_name.exit_crit_edge:                 ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #14
  %50 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev2, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end97.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %51, %if.end.i ], [ %49, %if.end97.dev_name.exit_crit_edge ]
  %52 = load i32, ptr @r6040_init_one.card_idx, align 4
  %call106 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %id, i32 noundef 61, ptr noundef nonnull @.str.28, ptr noundef %retval.0.i, i32 noundef %52)
  %53 = ptrtoint ptr %mii_bus to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mii_bus, align 8
  %call108 = call i32 @__mdiobus_register(ptr noundef %54, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %if.end115, label %do.end113

do.end113:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.30) #15
  br label %err_out_mdio

if.end115:                                        ; preds = %dev_name.exit
  %55 = ptrtoint ptr %mii_bus to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mii_bus, align 8
  %call1.i = call ptr @phy_find_first(ptr noundef %56) #12
  %tobool.not.i216 = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i216, label %r6040_mii_probe.exit.thread221, label %if.end.i217

r6040_mii_probe.exit.thread221:                   ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #14
  %57 = ptrtoint ptr %pdev87 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pdev87, align 4
  %dev2.i = getelementptr inbounds %struct.pci_dev, ptr %58, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.44) #15
  br label %err_out_mdio_unregister

if.end.i217:                                      ; preds = %if.end115
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %call1.i, i32 0, i32 3
  %59 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %60, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end.i217.phydev_name.exit.i_crit_edge

if.end.i217.phydev_name.exit.i_crit_edge:         ; preds = %if.end.i217
  call void @__sanitizer_cov_trace_pc() #14
  br label %phydev_name.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i217
  call void @__sanitizer_cov_trace_pc() #14
  %61 = ptrtoint ptr %call1.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %call1.i, align 4
  br label %phydev_name.exit.i

phydev_name.exit.i:                               ; preds = %if.end.i.i.i, %if.end.i217.phydev_name.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %62, %if.end.i.i.i ], [ %60, %if.end.i217.phydev_name.exit.i_crit_edge ]
  %call4.i = call ptr @phy_connect(ptr noundef nonnull %call32, ptr noundef %retval.0.i.i.i, ptr noundef nonnull @r6040_adjust_link, i32 noundef 2) #12
  %cmp.i.i = icmp ugt ptr %call4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %r6040_mii_probe.exit, label %r6040_mii_probe.exit.thread

r6040_mii_probe.exit.thread:                      ; preds = %phydev_name.exit.i
  %call14.i = call i32 @phy_set_max_speed(ptr noundef %call4.i, i32 noundef 100) #12
  %old_link.i = getelementptr i8, ptr %call32, i32 2628
  %63 = ptrtoint ptr %old_link.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %old_link.i, align 4
  %old_duplex.i = getelementptr i8, ptr %call32, i32 2632
  %64 = ptrtoint ptr %old_duplex.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 -1, ptr %old_duplex.i, align 8
  call void @phy_attached_info(ptr noundef %call4.i) #12
  %call124 = call i32 @register_netdev(ptr noundef nonnull %call32) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %r6040_mii_probe.exit.thread.cleanup_crit_edge, label %r6040_mii_probe.exit.thread.err_out_mdio_unregister_crit_edge

r6040_mii_probe.exit.thread.err_out_mdio_unregister_crit_edge: ; preds = %r6040_mii_probe.exit.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_out_mdio_unregister

r6040_mii_probe.exit.thread.cleanup_crit_edge:    ; preds = %r6040_mii_probe.exit.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

r6040_mii_probe.exit:                             ; preds = %phydev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %65 = ptrtoint ptr %pdev87 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pdev87, align 4
  %dev11.i = getelementptr inbounds %struct.pci_dev, ptr %66, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11.i, ptr noundef nonnull @.str.47) #15
  %67 = ptrtoint ptr %call4.i to i32
  br label %err_out_mdio_unregister

err_out_mdio_unregister:                          ; preds = %r6040_mii_probe.exit, %r6040_mii_probe.exit.thread.err_out_mdio_unregister_crit_edge, %r6040_mii_probe.exit.thread221
  %.str.36.sink = phi ptr [ @.str.33, %r6040_mii_probe.exit ], [ @.str.33, %r6040_mii_probe.exit.thread221 ], [ @.str.36, %r6040_mii_probe.exit.thread.err_out_mdio_unregister_crit_edge ]
  %err.0 = phi i32 [ %67, %r6040_mii_probe.exit ], [ -19, %r6040_mii_probe.exit.thread221 ], [ %call124, %r6040_mii_probe.exit.thread.err_out_mdio_unregister_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull %.str.36.sink) #15
  %68 = ptrtoint ptr %mii_bus to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mii_bus, align 8
  call void @mdiobus_unregister(ptr noundef %69) #12
  br label %err_out_mdio

err_out_mdio:                                     ; preds = %err_out_mdio_unregister, %do.end113
  %err.1 = phi i32 [ %call108, %do.end113 ], [ %err.0, %err_out_mdio_unregister ]
  %70 = ptrtoint ptr %mii_bus to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mii_bus, align 8
  call void @mdiobus_free(ptr noundef %71) #12
  br label %err_out_unmap

err_out_unmap:                                    ; preds = %err_out_mdio, %do.end95
  %err.2 = phi i32 [ %err.1, %err_out_mdio ], [ -12, %do.end95 ]
  call void @__netif_napi_del(ptr noundef %napi) #12
  call void @synchronize_net() #12
  call void @pci_iounmap(ptr noundef %pdev, ptr noundef nonnull %call47) #12
  br label %err_out_free_res

err_out_free_res:                                 ; preds = %err_out_unmap, %do.end52
  %err.3 = phi i32 [ %err.2, %err_out_unmap ], [ -5, %do.end52 ]
  call void @pci_release_regions(ptr noundef %pdev) #12
  br label %err_out_free_dev

err_out_free_dev:                                 ; preds = %err_out_free_res, %do.end44
  %err.4 = phi i32 [ %call39, %do.end44 ], [ %err.3, %err_out_free_res ]
  call void @free_netdev(ptr noundef nonnull %call32) #12
  br label %err_out_disable_dev

err_out_disable_dev:                              ; preds = %err_out_free_dev, %if.end31.err_out_disable_dev_crit_edge, %do.end29, %do.end17, %do.end8
  %err.5 = phi i32 [ %call3, %do.end8 ], [ %call12, %do.end17 ], [ -5, %do.end29 ], [ %err.4, %err_out_free_dev ], [ -12, %if.end31.err_out_disable_dev_crit_edge ]
  call void @pci_disable_device(ptr noundef %pdev) #12
  br label %cleanup

cleanup:                                          ; preds = %err_out_disable_dev, %r6040_mii_probe.exit.thread.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %r6040_mii_probe.exit.thread.cleanup_crit_edge ], [ %call1, %entry.cleanup_crit_edge ], [ %err.5, %err_out_disable_dev ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @r6040_remove_one(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @unregister_netdev(ptr noundef %1) #12
  %mii_bus = getelementptr i8, ptr %1, i32 2392
  %2 = ptrtoint ptr %mii_bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mii_bus, align 8
  tail call void @mdiobus_unregister(ptr noundef %3) #12
  %4 = ptrtoint ptr %mii_bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mii_bus, align 8
  tail call void @mdiobus_free(ptr noundef %5) #12
  %napi = getelementptr i8, ptr %1, i32 2400
  tail call void @__netif_napi_del(ptr noundef %napi) #12
  tail call void @synchronize_net() #12
  %base = getelementptr i8, ptr %1, i32 2624
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 8
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef %7) #12
  tail call void @pci_release_regions(ptr noundef %pdev) #12
  tail call void @free_netdev(ptr noundef %1) #12
  tail call void @pci_disable_device(ptr noundef %pdev) #12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @eth_hw_addr_random(ptr noundef %dev) unnamed_addr #5 align 64 {
entry:
  %addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #12
  %0 = call ptr @memset(ptr %addr, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr, i32 noundef 6) #12
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %addr, align 1
  %3 = and i8 %2, -4
  %4 = or i8 %3, 2
  store i8 %4, ptr %addr, align 1
  call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #12
  %addr_assign_type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 55
  %5 = ptrtoint ptr %addr_assign_type to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %addr_assign_type, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r6040_poll(ptr noundef %napi, i32 noundef %budget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr i8, ptr %napi, i32 -12
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %base = getelementptr i8, ptr %napi, i32 224
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 8
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 2304
  %base.i = getelementptr i8, ptr %1, i32 2624
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 8
  tail call void @_raw_spin_lock(ptr noundef %add.ptr.i.i) #12
  %tx_remove_ptr.i = getelementptr i8, ptr %1, i32 2364
  %6 = ptrtoint ptr %tx_remove_ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_remove_ptr.i, align 4
  %tx_free_desc.i = getelementptr i8, ptr %1, i32 2384
  %8 = ptrtoint ptr %tx_free_desc.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %tx_free_desc.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %9)
  %cmp55.i = icmp ult i16 %9, 128
  br i1 %cmp55.i, label %while.body.lr.ph.i, label %entry.while.end.thread.i_crit_edge

entry.while.end.thread.i_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.thread.i

while.body.lr.ph.i:                               ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %5, i32 28
  %tx_fifo_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 18
  %tx_carrier_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 17
  %tx_packets.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 1
  %tx_bytes.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 3
  %pdev.i = getelementptr i8, ptr %1, i32 2348
  br label %while.body.i

while.end.thread.i:                               ; preds = %if.end15.i.while.end.thread.i_crit_edge, %entry.while.end.thread.i_crit_edge
  %descptr.0.lcssa.i = phi ptr [ %7, %entry.while.end.thread.i_crit_edge ], [ %36, %if.end15.i.while.end.thread.i_crit_edge ]
  %10 = ptrtoint ptr %tx_remove_ptr.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %descptr.0.lcssa.i, ptr %tx_remove_ptr.i, align 4
  br label %if.then28.i

while.body.i:                                     ; preds = %if.end15.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %descptr.056.i = phi ptr [ %7, %while.body.lr.ph.i ], [ %36, %if.end15.i.while.body.i_crit_edge ]
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #12, !srcloc !112
  %12 = tail call i16 @llvm.bswap.i16(i16 %11) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !113
  %conv3.i = zext i16 %12 to i32
  %and.i = and i32 %conv3.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %while.body.i.if.end.i_crit_edge, label %if.then.i

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %tx_fifo_errors.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_fifo_errors.i, align 8
  %inc.i = add i32 %14, 1
  store i32 %inc.i, ptr %tx_fifo_errors.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %while.body.i.if.end.i_crit_edge
  %and5.i = and i32 %conv3.i, 24576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.end.i.if.end10.i_crit_edge, label %if.then7.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %tx_carrier_errors.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tx_carrier_errors.i, align 4
  %inc9.i = add i32 %16, 1
  store i32 %inc9.i, ptr %tx_carrier_errors.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then7.i, %if.end.i.if.end10.i_crit_edge
  %17 = ptrtoint ptr %descptr.056.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %descptr.056.i, align 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %18)
  %tobool13.not.i = icmp sgt i16 %18, -1
  br i1 %tobool13.not.i, label %if.end15.i, label %while.end.i

if.end15.i:                                       ; preds = %if.end10.i
  %skb_ptr16.i = getelementptr inbounds %struct.r6040_descriptor, ptr %descptr.056.i, i32 0, i32 7
  %19 = ptrtoint ptr %skb_ptr16.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %skb_ptr16.i, align 8
  %21 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tx_packets.i, align 4
  %inc18.i = add i32 %22, 1
  store i32 %inc18.i, ptr %tx_packets.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 6
  %23 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len.i, align 4
  %25 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tx_bytes.i, align 4
  %add.i = add i32 %26, %24
  store i32 %add.i, ptr %tx_bytes.i, align 4
  %27 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdev.i, align 4
  %dev20.i = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  %buf.i = getelementptr inbounds %struct.r6040_descriptor, ptr %descptr.056.i, i32 0, i32 2
  %29 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %buf.i, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #12
  %32 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev20.i, i32 noundef %31, i32 noundef %33, i32 noundef 1, i32 noundef 0) #12
  tail call void @consume_skb(ptr noundef %20) #12
  %34 = ptrtoint ptr %skb_ptr16.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %skb_ptr16.i, align 8
  %vndescp.i = getelementptr inbounds %struct.r6040_descriptor, ptr %descptr.056.i, i32 0, i32 6
  %35 = ptrtoint ptr %vndescp.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %vndescp.i, align 4
  %37 = ptrtoint ptr %tx_free_desc.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %tx_free_desc.i, align 8
  %inc24.i = add i16 %38, 1
  store i16 %inc24.i, ptr %tx_free_desc.i, align 8
  %cmp.i = icmp ult i16 %inc24.i, 128
  br i1 %cmp.i, label %if.end15.i.while.body.i_crit_edge, label %if.end15.i.while.end.thread.i_crit_edge

if.end15.i.while.end.thread.i_crit_edge:          ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.thread.i

if.end15.i.while.body.i_crit_edge:                ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

while.end.i:                                      ; preds = %if.end10.i
  %39 = ptrtoint ptr %tx_free_desc.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %.pr.i = load i16, ptr %tx_free_desc.i, align 8
  %40 = ptrtoint ptr %tx_remove_ptr.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %descptr.056.i, ptr %tx_remove_ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.pr.i)
  %tobool27.not.i = icmp eq i16 %.pr.i, 0
  br i1 %tobool27.not.i, label %while.end.i.r6040_tx.exit_crit_edge, label %while.end.i.if.then28.i_crit_edge

while.end.i.if.then28.i_crit_edge:                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then28.i

while.end.i.r6040_tx.exit_crit_edge:              ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %r6040_tx.exit

if.then28.i:                                      ; preds = %while.end.i.if.then28.i_crit_edge, %while.end.thread.i
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %41 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %_tx.i.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %42) #12
  br label %r6040_tx.exit

r6040_tx.exit:                                    ; preds = %if.then28.i, %while.end.i.r6040_tx.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %add.ptr.i.i) #12
  %rx_remove_ptr.i = getelementptr i8, ptr %1, i32 2356
  %43 = ptrtoint ptr %rx_remove_ptr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %descptr.0111.i = load ptr, ptr %rx_remove_ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %cmp112.i = icmp sgt i32 %budget, 0
  br i1 %cmp112.i, label %land.rhs.lr.ph.i, label %r6040_tx.exit.r6040_rx.exit_crit_edge

r6040_tx.exit.r6040_rx.exit_crit_edge:            ; preds = %r6040_tx.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %r6040_rx.exit

land.rhs.lr.ph.i:                                 ; preds = %r6040_tx.exit
  %rx_frame_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 13
  %rx_length_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 10
  %rx_crc_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 12
  %dev48.i = getelementptr i8, ptr %1, i32 2388
  %pdev.i16 = getelementptr i8, ptr %1, i32 2348
  %stats55.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36
  %rx_bytes.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 2
  %rx_dropped.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 6
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %next_descr.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %descptr.0114.i = phi ptr [ %descptr.0111.i, %land.rhs.lr.ph.i ], [ %descptr.0.i, %next_descr.i.land.rhs.i_crit_edge ]
  %count.0113.i = phi i32 [ 0, %land.rhs.lr.ph.i ], [ %inc68.i, %next_descr.i.land.rhs.i_crit_edge ]
  %44 = ptrtoint ptr %descptr.0114.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %descptr.0114.i, align 32
  %conv.i = zext i16 %45 to i32
  %and.i17 = and i32 %conv.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i17)
  %tobool.not.i18 = icmp eq i32 %and.i17, 0
  br i1 %tobool.not.i18, label %while.body.i19, label %land.rhs.i.r6040_rx.exit_crit_edge

land.rhs.i.r6040_rx.exit_crit_edge:               ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %r6040_rx.exit

while.body.i19:                                   ; preds = %land.rhs.i
  %and3.i = and i32 %conv.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %if.end40.i, label %if.then.i20

if.then.i20:                                      ; preds = %while.body.i19
  %and6.i = and i32 %conv.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.then.i20.if.end.i22_crit_edge, label %if.then8.i

if.then.i20.if.end.i22_crit_edge:                 ; preds = %if.then.i20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i22

if.then8.i:                                       ; preds = %if.then.i20
  call void @__sanitizer_cov_trace_pc() #14
  %46 = ptrtoint ptr %rx_frame_errors.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rx_frame_errors.i, align 4
  %inc.i21 = add i32 %47, 1
  store i32 %inc.i21, ptr %rx_frame_errors.i, align 4
  br label %if.end.i22

if.end.i22:                                       ; preds = %if.then8.i, %if.then.i20.if.end.i22_crit_edge
  %and10.i = and i32 %conv.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %if.end.i22.if.end15.i23_crit_edge, label %if.then12.i

if.end.i22.if.end15.i23_crit_edge:                ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.i23

if.then12.i:                                      ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #14
  %48 = ptrtoint ptr %rx_length_errors.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rx_length_errors.i, align 8
  %inc14.i = add i32 %49, 1
  store i32 %inc14.i, ptr %rx_length_errors.i, align 8
  br label %if.end15.i23

if.end15.i23:                                     ; preds = %if.then12.i, %if.end.i22.if.end15.i23_crit_edge
  %and17.i = and i32 %conv.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %if.end15.i23.if.end23.i_crit_edge, label %if.then19.i

if.end15.i23.if.end23.i_crit_edge:                ; preds = %if.end15.i23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23.i

if.then19.i:                                      ; preds = %if.end15.i23
  call void @__sanitizer_cov_trace_pc() #14
  %50 = ptrtoint ptr %rx_length_errors.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rx_length_errors.i, align 8
  %inc22.i = add i32 %51, 1
  store i32 %inc22.i, ptr %rx_length_errors.i, align 8
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then19.i, %if.end15.i23.if.end23.i_crit_edge
  %and25.i = and i32 %conv.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i, label %if.end23.i.if.end31.i_crit_edge, label %if.then27.i

if.end23.i.if.end31.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31.i

if.then27.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #14
  %52 = ptrtoint ptr %rx_length_errors.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rx_length_errors.i, align 8
  %inc30.i = add i32 %53, 1
  store i32 %inc30.i, ptr %rx_length_errors.i, align 8
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then27.i, %if.end23.i.if.end31.i_crit_edge
  %and33.i = and i32 %conv.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool34.not.i = icmp eq i32 %and33.i, 0
  br i1 %tobool34.not.i, label %if.end31.i.next_descr.i_crit_edge, label %if.then35.i

if.end31.i.next_descr.i_crit_edge:                ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %next_descr.i

if.then35.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_lock(ptr noundef %add.ptr.i.i) #12
  %54 = ptrtoint ptr %rx_crc_errors.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rx_crc_errors.i, align 8
  %inc37.i = add i32 %55, 1
  store i32 %inc37.i, ptr %rx_crc_errors.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %add.ptr.i.i) #12
  br label %next_descr.i

if.end40.i:                                       ; preds = %while.body.i19
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %1, i32 noundef 1536, i32 noundef 2592) #12
  %tobool42.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool42.not.i, label %if.then43.i, label %if.end46.i

if.then43.i:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #14
  %56 = ptrtoint ptr %rx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rx_dropped.i, align 8
  %inc45.i = add i32 %57, 1
  store i32 %inc45.i, ptr %rx_dropped.i, align 8
  br label %next_descr.i

if.end46.i:                                       ; preds = %if.end40.i
  %skb_ptr47.i = getelementptr inbounds %struct.r6040_descriptor, ptr %descptr.0114.i, i32 0, i32 7
  %58 = ptrtoint ptr %skb_ptr47.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %skb_ptr47.i, align 8
  %60 = ptrtoint ptr %dev48.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev48.i, align 4
  %62 = getelementptr inbounds %struct.anon.44, ptr %59, i32 0, i32 2
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %61, ptr %62, align 8
  %len.i24 = getelementptr inbounds %struct.r6040_descriptor, ptr %descptr.0114.i, i32 0, i32 1
  %64 = ptrtoint ptr %len.i24 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %len.i24, align 2
  %conv49.i = zext i16 %65 to i32
  %sub.i = add nsw i32 %conv49.i, -4
  %call50.i = tail call ptr @skb_put(ptr noundef %59, i32 noundef %sub.i) #12
  %66 = ptrtoint ptr %pdev.i16 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pdev.i16, align 4
  %dev51.i = getelementptr inbounds %struct.pci_dev, ptr %67, i32 0, i32 44
  %buf.i25 = getelementptr inbounds %struct.r6040_descriptor, ptr %descptr.0114.i, i32 0, i32 2
  %68 = ptrtoint ptr %buf.i25 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %buf.i25, align 4
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #12
  tail call void @dma_unmap_page_attrs(ptr noundef %dev51.i, i32 noundef %70, i32 noundef 1536, i32 noundef 2, i32 noundef 0) #12
  %71 = ptrtoint ptr %dev48.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev48.i, align 4
  %call53.i = tail call zeroext i16 @eth_type_trans(ptr noundef %59, ptr noundef %72) #12
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %59, i32 0, i32 15, i32 0, i32 18
  %73 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %call53.i, ptr %protocol.i, align 8
  %call54.i = tail call i32 @netif_receive_skb(ptr noundef %59) #12
  %74 = ptrtoint ptr %stats55.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %stats55.i, align 8
  %inc56.i = add i32 %75, 1
  store i32 %inc56.i, ptr %stats55.i, align 8
  %76 = ptrtoint ptr %len.i24 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %len.i24, align 2
  %conv58.i = zext i16 %77 to i32
  %sub59.i = add nsw i32 %conv58.i, -4
  %78 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %rx_bytes.i, align 8
  %add.i26 = add i32 %sub59.i, %79
  store i32 %add.i26, ptr %rx_bytes.i, align 8
  %80 = ptrtoint ptr %skb_ptr47.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call.i.i, ptr %skb_ptr47.i, align 8
  %81 = ptrtoint ptr %pdev.i16 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pdev.i16, align 4
  %dev63.i = getelementptr inbounds %struct.pci_dev, ptr %82, i32 0, i32 44
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %83 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %data.i, align 4
  %call.i109.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %84) #12
  br i1 %call.i109.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.end46.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge, label %if.then.i.i, !prof !116

land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dma_map_single_attrs.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %dev63.i) #12
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %82, i32 0, i32 44, i32 3
  %85 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %86, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %87 = ptrtoint ptr %dev63.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev63.i, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %88, %if.end.i.i.i ], [ %86, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.39, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #12
  br label %dma_map_single_attrs.exit.i

if.end39.i.i:                                     ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @debug_dma_map_single(ptr noundef %dev63.i, ptr noundef %84, i32 noundef 1536) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %89 = load ptr, ptr @mem_map, align 4
  %90 = ptrtoint ptr %84 to i32
  %sub.i.i = add i32 %90, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i110.i = getelementptr %struct.page, ptr %89, i32 %shr.i.i
  %and.i.i = and i32 %90, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev63.i, ptr noundef %add.ptr.i110.i, i32 noundef %and.i.i, i32 noundef 1536, i32 noundef 2, i32 noundef 0) #12
  br label %dma_map_single_attrs.exit.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge ]
  %91 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i.i) #12
  %92 = ptrtoint ptr %buf.i25 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %buf.i25, align 4
  br label %next_descr.i

next_descr.i:                                     ; preds = %dma_map_single_attrs.exit.i, %if.then43.i, %if.then35.i, %if.end31.i.next_descr.i_crit_edge
  %93 = ptrtoint ptr %descptr.0114.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 -32768, ptr %descptr.0114.i, align 32
  %vndescp.i27 = getelementptr inbounds %struct.r6040_descriptor, ptr %descptr.0114.i, i32 0, i32 6
  %inc68.i = add nuw nsw i32 %count.0113.i, 1
  %94 = ptrtoint ptr %vndescp.i27 to i32
  call void @__asan_load4_noabort(i32 %94)
  %descptr.0.i = load ptr, ptr %vndescp.i27, align 4
  %exitcond.not.i = icmp eq i32 %inc68.i, %budget
  br i1 %exitcond.not.i, label %r6040_rx.exit.thread, label %next_descr.i.land.rhs.i_crit_edge

next_descr.i.land.rhs.i_crit_edge:                ; preds = %next_descr.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

r6040_rx.exit.thread:                             ; preds = %next_descr.i
  call void @__sanitizer_cov_trace_pc() #14
  %95 = ptrtoint ptr %rx_remove_ptr.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %descptr.0.i, ptr %rx_remove_ptr.i, align 4
  br label %if.end

r6040_rx.exit:                                    ; preds = %land.rhs.i.r6040_rx.exit_crit_edge, %r6040_tx.exit.r6040_rx.exit_crit_edge
  %count.0.lcssa.i = phi i32 [ 0, %r6040_tx.exit.r6040_rx.exit_crit_edge ], [ %count.0113.i, %land.rhs.i.r6040_rx.exit_crit_edge ]
  %descptr.0.lcssa.i28 = phi ptr [ %descptr.0111.i, %r6040_tx.exit.r6040_rx.exit_crit_edge ], [ %descptr.0114.i, %land.rhs.i.r6040_rx.exit_crit_edge ]
  %96 = ptrtoint ptr %rx_remove_ptr.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %descptr.0.lcssa.i28, ptr %rx_remove_ptr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %count.0.lcssa.i, i32 %budget)
  %cmp = icmp slt i32 %count.0.lcssa.i, %budget
  br i1 %cmp, label %if.then, label %r6040_rx.exit.if.end_crit_edge

r6040_rx.exit.if.end_crit_edge:                   ; preds = %r6040_rx.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %r6040_rx.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call2 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %count.0.lcssa.i) #12
  %add.ptr3 = getelementptr i8, ptr %3, i32 64
  %97 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr3) #12, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !113
  %98 = or i16 %97, 5888
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr3, i16 %98) #12, !srcloc !115
  br label %if.end

if.end:                                           ; preds = %if.then, %r6040_rx.exit.if.end_crit_edge, %r6040_rx.exit.thread
  %count.0.lcssa.i33 = phi i32 [ %budget, %r6040_rx.exit.thread ], [ %count.0.lcssa.i, %if.then ], [ %count.0.lcssa.i, %r6040_rx.exit.if.end_crit_edge ]
  ret i32 %count.0.lcssa.i33
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r6040_mdiobus_read(ptr nocapture noundef readonly %bus, i32 noundef %phy_addr, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %base = getelementptr i8, ptr %1, i32 2624
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 8
  %shl.i = shl i32 %phy_addr, 8
  %or.i = or i32 %shl.i, %reg
  %4 = trunc i32 %or.i to i16
  %conv.i = or i16 %4, 8192
  %add.ptr.i2 = getelementptr i8, ptr %3, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @arm_heavy_mb() #12
  %5 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i2, i16 %5) #12, !srcloc !115
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %entry
  %dec17.i = phi i32 [ 2047, %entry ], [ %dec.i, %if.end.i.while.body.i_crit_edge ]
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i2) #12, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !113
  %7 = and i16 %6, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool4.not.i = icmp eq i16 %7, 0
  br i1 %tobool4.not.i, label %while.end.i, label %if.end.i

if.end.i:                                         ; preds = %while.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #12
  %dec.i = add nsw i32 %dec17.i, -1
  %tobool.not.i = icmp eq i32 %dec17.i, 0
  br i1 %tobool.not.i, label %if.end.i.r6040_phy_read.exit_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

if.end.i.r6040_phy_read.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %r6040_phy_read.exit

while.end.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec17.i)
  %cmp.i = icmp slt i32 %dec17.i, 0
  br i1 %cmp.i, label %while.end.i.r6040_phy_read.exit_crit_edge, label %if.end7.i

while.end.i.r6040_phy_read.exit_crit_edge:        ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %r6040_phy_read.exit

if.end7.i:                                        ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr8.i = getelementptr i8, ptr %3, i32 36
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr8.i) #12, !srcloc !112
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !113
  %conv10.i = zext i16 %10 to i32
  br label %r6040_phy_read.exit

r6040_phy_read.exit:                              ; preds = %if.end7.i, %while.end.i.r6040_phy_read.exit_crit_edge, %if.end.i.r6040_phy_read.exit_crit_edge
  %retval.0.i = phi i32 [ %conv10.i, %if.end7.i ], [ -110, %while.end.i.r6040_phy_read.exit_crit_edge ], [ -110, %if.end.i.r6040_phy_read.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r6040_mdiobus_write(ptr nocapture noundef readonly %bus, i32 noundef %phy_addr, i32 noundef %reg, i16 noundef zeroext %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %base = getelementptr i8, ptr %1, i32 2624
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 8
  %add.ptr.i2 = getelementptr i8, ptr %3, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @arm_heavy_mb() #12
  %4 = tail call i16 @llvm.bswap.i16(i16 %value) #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i2, i16 %4) #12, !srcloc !115
  %shl.i = shl i32 %phy_addr, 8
  %or.i = or i32 %shl.i, %reg
  %5 = trunc i32 %or.i to i16
  %conv.i = or i16 %5, 16384
  %add.ptr2.i = getelementptr i8, ptr %3, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @arm_heavy_mb() #12
  %6 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i, i16 %6) #12, !srcloc !115
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %entry
  %dec10.i = phi i32 [ 2047, %entry ], [ %dec.i, %if.end.i.while.body.i_crit_edge ]
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr2.i) #12, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !113
  %8 = and i16 %7, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool5.not.i = icmp eq i16 %8, 0
  br i1 %tobool5.not.i, label %while.end.i, label %if.end.i

if.end.i:                                         ; preds = %while.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748) #12
  %dec.i = add nsw i32 %dec10.i, -1
  %tobool.not.i = icmp eq i32 %dec10.i, 0
  br i1 %tobool.not.i, label %if.end.i.while.end.thread.i_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

if.end.i.while.end.thread.i_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.thread.i

while.end.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec10.i)
  %cmp.i = icmp slt i32 %dec10.i, 0
  br i1 %cmp.i, label %while.end.i.while.end.thread.i_crit_edge, label %while.end.i.r6040_phy_write.exit_crit_edge

while.end.i.r6040_phy_write.exit_crit_edge:       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %r6040_phy_write.exit

while.end.i.while.end.thread.i_crit_edge:         ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.thread.i

while.end.thread.i:                               ; preds = %while.end.i.while.end.thread.i_crit_edge, %if.end.i.while.end.thread.i_crit_edge
  br label %r6040_phy_write.exit

r6040_phy_write.exit:                             ; preds = %while.end.thread.i, %while.end.i.r6040_phy_write.exit_crit_edge
  %10 = phi i32 [ -110, %while.end.thread.i ], [ 0, %while.end.i.r6040_phy_write.exit_crit_edge ]
  ret i32 %10
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_free(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r6040_open(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %1, ptr noundef nonnull @r6040_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %dev, ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %base.i = getelementptr i8, ptr %dev, i32 2624
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 8
  tail call fastcc void @r6040_reset_mac(ptr noundef %add.ptr.i) #12
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %4 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_addr.i, align 64
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %5, align 2
  %add.ptr.i54 = getelementptr i8, ptr %3, i32 104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @arm_heavy_mb() #12
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i54, i16 %8) #12, !srcloc !115
  %arrayidx1.i = getelementptr i16, ptr %5, i32 1
  %9 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx1.i, align 2
  %add.ptr2.i = getelementptr i8, ptr %3, i32 106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @arm_heavy_mb() #12
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i, i16 %11) #12, !srcloc !115
  %arrayidx3.i = getelementptr i16, ptr %5, i32 2
  %12 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx3.i, align 2
  %add.ptr4.i = getelementptr i8, ptr %3, i32 108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @arm_heavy_mb() #12
  %14 = tail call i16 @llvm.bswap.i16(i16 %13) #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr4.i, i16 %14) #12, !srcloc !115
  %pdev = getelementptr i8, ptr %dev, i32 2348
  %15 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev, align 4
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %rx_ring_dma = getelementptr i8, ptr %dev, i32 2376
  %call.i55 = tail call ptr @dma_alloc_attrs(ptr noundef %dev2, i32 noundef 4096, ptr noundef %rx_ring_dma, i32 noundef 3264, i32 noundef 0) #12
  %rx_ring = getelementptr i8, ptr %dev, i32 2368
  %17 = ptrtoint ptr %rx_ring to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i55, ptr %rx_ring, align 8
  %tobool5.not = icmp eq ptr %call.i55, null
  br i1 %tobool5.not, label %if.end.err_free_irq_crit_edge, label %if.end7

if.end.err_free_irq_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free_irq

if.end7:                                          ; preds = %if.end
  %18 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev, align 4
  %dev9 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %tx_ring_dma = getelementptr i8, ptr %dev, i32 2380
  %call.i56 = tail call ptr @dma_alloc_attrs(ptr noundef %dev9, i32 noundef 4096, ptr noundef %tx_ring_dma, i32 noundef 3264, i32 noundef 0) #12
  %tx_ring = getelementptr i8, ptr %dev, i32 2372
  %20 = ptrtoint ptr %tx_ring to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i56, ptr %tx_ring, align 4
  %tobool12.not = icmp eq ptr %call.i56, null
  br i1 %tobool12.not, label %if.end7.err_free_rx_ring_crit_edge, label %if.end14

if.end7.err_free_rx_ring_crit_edge:               ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free_rx_ring

if.end14:                                         ; preds = %if.end7
  %21 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i, align 8
  %tx_free_desc.i.i = getelementptr i8, ptr %dev, i32 2384
  %23 = ptrtoint ptr %tx_free_desc.i.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 128, ptr %tx_free_desc.i.i, align 8
  %24 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tx_ring, align 4
  %tx_insert_ptr.i.i = getelementptr i8, ptr %dev, i32 2360
  %26 = ptrtoint ptr %tx_insert_ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %tx_insert_ptr.i.i, align 8
  %tx_remove_ptr.i.i = getelementptr i8, ptr %dev, i32 2364
  %27 = ptrtoint ptr %tx_remove_ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %25, ptr %tx_remove_ptr.i.i, align 4
  %28 = ptrtoint ptr %tx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tx_ring_dma, align 4
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %while.body.i.i.i.while.body.i.i.i_crit_edge, %if.end14
  %mapping.03.i.i.i = phi i32 [ %29, %if.end14 ], [ %add.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ]
  %desc.02.i.i.i = phi ptr [ %25, %if.end14 ], [ %add.ptr.i7.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ]
  %size.addr.01.i.i.i = phi i32 [ 128, %if.end14 ], [ %dec.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ]
  %dec.i.i.i = add nsw i32 %size.addr.01.i.i.i, -1
  %add.i.i.i = add i32 %mapping.03.i.i.i, 32
  %30 = tail call i32 @llvm.bswap.i32(i32 %add.i.i.i) #12
  %ndesc.i.i.i = getelementptr %struct.r6040_descriptor, ptr %desc.02.i.i.i, i32 0, i32 3
  %31 = ptrtoint ptr %ndesc.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %ndesc.i.i.i, align 8
  %add.ptr.i7.i.i = getelementptr %struct.r6040_descriptor, ptr %desc.02.i.i.i, i32 1
  %vndescp.i.i.i = getelementptr %struct.r6040_descriptor, ptr %desc.02.i.i.i, i32 0, i32 6
  %32 = ptrtoint ptr %vndescp.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %add.ptr.i7.i.i, ptr %vndescp.i.i.i, align 4
  %cmp.i.i.i = icmp ugt i32 %size.addr.01.i.i.i, 1
  br i1 %cmp.i.i.i, label %while.body.i.i.i.while.body.i.i.i_crit_edge, label %r6040_init_txbufs.exit.i

while.body.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i.i

r6040_init_txbufs.exit.i:                         ; preds = %while.body.i.i.i
  %ndesc.i.i.i.le = getelementptr %struct.r6040_descriptor, ptr %desc.02.i.i.i, i32 0, i32 3
  %vndescp.i.i.i.le = getelementptr %struct.r6040_descriptor, ptr %desc.02.i.i.i, i32 0, i32 6
  %33 = tail call i32 @llvm.bswap.i32(i32 %29) #12
  %34 = ptrtoint ptr %ndesc.i.i.i.le to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %ndesc.i.i.i.le, align 8
  %35 = ptrtoint ptr %vndescp.i.i.i.le to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %25, ptr %vndescp.i.i.i.le, align 4
  %36 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rx_ring, align 8
  %rx_insert_ptr.i.i = getelementptr i8, ptr %dev, i32 2352
  %38 = ptrtoint ptr %rx_insert_ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %rx_insert_ptr.i.i, align 8
  %rx_remove_ptr.i.i = getelementptr i8, ptr %dev, i32 2356
  %39 = ptrtoint ptr %rx_remove_ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %37, ptr %rx_remove_ptr.i.i, align 4
  %40 = ptrtoint ptr %rx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rx_ring_dma, align 8
  br label %while.body.i.i31.i

while.body.i.i31.i:                               ; preds = %while.body.i.i31.i.while.body.i.i31.i_crit_edge, %r6040_init_txbufs.exit.i
  %mapping.03.i.i23.i = phi i32 [ %41, %r6040_init_txbufs.exit.i ], [ %add.i.i27.i, %while.body.i.i31.i.while.body.i.i31.i_crit_edge ]
  %desc.02.i.i24.i = phi ptr [ %37, %r6040_init_txbufs.exit.i ], [ %add.ptr.i26.i.i, %while.body.i.i31.i.while.body.i.i31.i_crit_edge ]
  %size.addr.01.i.i25.i = phi i32 [ 128, %r6040_init_txbufs.exit.i ], [ %dec.i.i26.i, %while.body.i.i31.i.while.body.i.i31.i_crit_edge ]
  %dec.i.i26.i = add nsw i32 %size.addr.01.i.i25.i, -1
  %add.i.i27.i = add i32 %mapping.03.i.i23.i, 32
  %42 = tail call i32 @llvm.bswap.i32(i32 %add.i.i27.i) #12
  %ndesc.i.i28.i = getelementptr %struct.r6040_descriptor, ptr %desc.02.i.i24.i, i32 0, i32 3
  %43 = ptrtoint ptr %ndesc.i.i28.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %ndesc.i.i28.i, align 8
  %add.ptr.i26.i.i = getelementptr %struct.r6040_descriptor, ptr %desc.02.i.i24.i, i32 1
  %vndescp.i.i29.i = getelementptr %struct.r6040_descriptor, ptr %desc.02.i.i24.i, i32 0, i32 6
  %44 = ptrtoint ptr %vndescp.i.i29.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %add.ptr.i26.i.i, ptr %vndescp.i.i29.i, align 4
  %cmp.i.i30.i = icmp ugt i32 %size.addr.01.i.i25.i, 1
  br i1 %cmp.i.i30.i, label %while.body.i.i31.i.while.body.i.i31.i_crit_edge, label %r6040_init_ring_desc.exit.i.i

while.body.i.i31.i.while.body.i.i31.i_crit_edge:  ; preds = %while.body.i.i31.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i31.i

r6040_init_ring_desc.exit.i.i:                    ; preds = %while.body.i.i31.i
  %ndesc.i.i28.i.le = getelementptr %struct.r6040_descriptor, ptr %desc.02.i.i24.i, i32 0, i32 3
  %vndescp.i.i29.i.le = getelementptr %struct.r6040_descriptor, ptr %desc.02.i.i24.i, i32 0, i32 6
  %45 = tail call i32 @llvm.bswap.i32(i32 %41) #12
  %46 = ptrtoint ptr %ndesc.i.i28.i.le to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %ndesc.i.i28.i.le, align 8
  %47 = ptrtoint ptr %vndescp.i.i29.i.le to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %37, ptr %vndescp.i.i29.i.le, align 4
  %48 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rx_ring, align 8
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %dma_map_single_attrs.exit.i.i.do.body.i.i_crit_edge, %r6040_init_ring_desc.exit.i.i
  %desc.0.i.i = phi ptr [ %49, %r6040_init_ring_desc.exit.i.i ], [ %85, %dma_map_single_attrs.exit.i.i.do.body.i.i_crit_edge ]
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %dev, i32 noundef 1536, i32 noundef 2592) #12
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %do.body.i.i.for.body.i.i.i_crit_edge, label %if.end.i.i

do.body.i.i.for.body.i.i.i_crit_edge:             ; preds = %do.body.i.i
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %if.end.i.i.i.for.body.i.i.i_crit_edge, %do.body.i.i.for.body.i.i.i_crit_edge
  %i.016.i.i.i = phi i32 [ %inc.i.i.i, %if.end.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %do.body.i.i.for.body.i.i.i_crit_edge ]
  %50 = ptrtoint ptr %rx_insert_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rx_insert_ptr.i.i, align 8
  %skb_ptr.i.i.i = getelementptr inbounds %struct.r6040_descriptor, ptr %51, i32 0, i32 7
  %52 = ptrtoint ptr %skb_ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %skb_ptr.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %53, null
  br i1 %tobool.not.i.i.i, label %for.body.i.i.i.if.end.i.i.i_crit_edge, label %if.then.i.i.i

for.body.i.i.i.if.end.i.i.i_crit_edge:            ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %54 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pdev, align 4
  %dev1.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %55, i32 0, i32 44
  %buf.i.i.i = getelementptr inbounds %struct.r6040_descriptor, ptr %51, i32 0, i32 2
  %56 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %buf.i.i.i, align 4
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #12
  tail call void @dma_unmap_page_attrs(ptr noundef %dev1.i.i.i, i32 noundef %58, i32 noundef 1536, i32 noundef 2, i32 noundef 0) #12
  %59 = ptrtoint ptr %rx_insert_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rx_insert_ptr.i.i, align 8
  %skb_ptr4.i.i.i = getelementptr inbounds %struct.r6040_descriptor, ptr %60, i32 0, i32 7
  %61 = ptrtoint ptr %skb_ptr4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %skb_ptr4.i.i.i, align 8
  tail call void @consume_skb(ptr noundef %62) #12
  %63 = ptrtoint ptr %rx_insert_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %rx_insert_ptr.i.i, align 8
  %skb_ptr6.i.i.i = getelementptr inbounds %struct.r6040_descriptor, ptr %64, i32 0, i32 7
  %65 = ptrtoint ptr %skb_ptr6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %skb_ptr6.i.i.i, align 8
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %for.body.i.i.i.if.end.i.i.i_crit_edge
  %66 = ptrtoint ptr %rx_insert_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rx_insert_ptr.i.i, align 8
  %vndescp.i27.i.i = getelementptr inbounds %struct.r6040_descriptor, ptr %67, i32 0, i32 6
  %68 = ptrtoint ptr %vndescp.i27.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %vndescp.i27.i.i, align 4
  store ptr %69, ptr %rx_insert_ptr.i.i, align 8
  %inc.i.i.i = add nuw nsw i32 %i.016.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 128
  br i1 %exitcond.not.i.i.i, label %err_free_tx_ring, label %if.end.i.i.i.for.body.i.i.i_crit_edge

if.end.i.i.i.for.body.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i

if.end.i.i:                                       ; preds = %do.body.i.i
  %skb_ptr.i.i = getelementptr inbounds %struct.r6040_descriptor, ptr %desc.0.i.i, i32 0, i32 7
  %70 = ptrtoint ptr %skb_ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call.i.i.i, ptr %skb_ptr.i.i, align 8
  %71 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pdev, align 4
  %dev4.i.i = getelementptr inbounds %struct.pci_dev, ptr %72, i32 0, i32 44
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %73 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %data.i.i, align 4
  %call.i28.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %74) #12
  br i1 %call.i28.i.i, label %land.rhs.i.i.i, label %if.end39.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.end.i.i
  %.b1.i.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge, label %if.then.i29.i.i, !prof !116

land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dma_map_single_attrs.exit.i.i

if.then.i29.i.i:                                  ; preds = %land.rhs.i.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i.i = tail call ptr @dev_driver_string(ptr noundef %dev4.i.i) #12
  %init_name.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %72, i32 0, i32 44, i32 3
  %75 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %76, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i29.i.i.dev_name.exit.i.i.i_crit_edge

if.then.i29.i.i.dev_name.exit.i.i.i_crit_edge:    ; preds = %if.then.i29.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i29.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %77 = ptrtoint ptr %dev4.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev4.i.i, align 4
  br label %dev_name.exit.i.i.i

dev_name.exit.i.i.i:                              ; preds = %if.end.i.i.i.i, %if.then.i29.i.i.dev_name.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %78, %if.end.i.i.i.i ], [ %76, %if.then.i29.i.i.dev_name.exit.i.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.39, ptr noundef %call16.i.i.i, ptr noundef %retval.0.i.i.i.i) #12
  br label %dma_map_single_attrs.exit.i.i

if.end39.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @debug_dma_map_single(ptr noundef %dev4.i.i, ptr noundef %74, i32 noundef 1536) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %79 = load ptr, ptr @mem_map, align 4
  %80 = ptrtoint ptr %74 to i32
  %sub.i.i.i = add i32 %80, 1073741824
  %shr.i.i.i = lshr i32 %sub.i.i.i, 12
  %add.ptr.i30.i.i = getelementptr %struct.page, ptr %79, i32 %shr.i.i.i
  %and.i.i.i = and i32 %80, 4095
  %call41.i.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev4.i.i, ptr noundef %add.ptr.i30.i.i, i32 noundef %and.i.i.i, i32 noundef 1536, i32 noundef 2, i32 noundef 0) #12
  br label %dma_map_single_attrs.exit.i.i

dma_map_single_attrs.exit.i.i:                    ; preds = %if.end39.i.i.i, %dev_name.exit.i.i.i, %land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %call41.i.i.i, %if.end39.i.i.i ], [ -1, %dev_name.exit.i.i.i ], [ -1, %land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge ]
  %81 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i.i.i) #12
  %buf.i.i = getelementptr inbounds %struct.r6040_descriptor, ptr %desc.0.i.i, i32 0, i32 2
  %82 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %buf.i.i, align 4
  %83 = ptrtoint ptr %desc.0.i.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 -32768, ptr %desc.0.i.i, align 32
  %vndescp.i.i = getelementptr inbounds %struct.r6040_descriptor, ptr %desc.0.i.i, i32 0, i32 6
  %84 = ptrtoint ptr %vndescp.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %vndescp.i.i, align 4
  %86 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %rx_ring, align 8
  %cmp.not.i.i = icmp eq ptr %85, %87
  br i1 %cmp.not.i.i, label %if.end.i, label %dma_map_single_attrs.exit.i.i.do.body.i.i_crit_edge

dma_map_single_attrs.exit.i.i.do.body.i.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i

if.end.i:                                         ; preds = %dma_map_single_attrs.exit.i.i
  %add.ptr.i34.i = getelementptr i8, ptr %22, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i34.i, i16 4414) #12, !srcloc !115
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i36.i.while.body.i.i_crit_edge, %if.end.i
  %dec17.i.i = phi i32 [ 2047, %if.end.i ], [ %dec.i.i, %if.end.i36.i.while.body.i.i_crit_edge ]
  %88 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i34.i) #12, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !113
  %89 = and i16 %88, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %89)
  %tobool4.not.i.i = icmp eq i16 %89, 0
  br i1 %tobool4.not.i.i, label %while.end.i.i, label %if.end.i36.i

if.end.i36.i:                                     ; preds = %while.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %90 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %90(i32 noundef 214748) #12
  %dec.i.i = add nsw i32 %dec17.i.i, -1
  %tobool.not.i35.i = icmp eq i32 %dec17.i.i, 0
  br i1 %tobool.not.i35.i, label %if.end.i36.i.r6040_phy_read.exit.i_crit_edge, label %if.end.i36.i.while.body.i.i_crit_edge

if.end.i36.i.while.body.i.i_crit_edge:            ; preds = %if.end.i36.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i

if.end.i36.i.r6040_phy_read.exit.i_crit_edge:     ; preds = %if.end.i36.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %r6040_phy_read.exit.i

while.end.i.i:                                    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec17.i.i)
  %cmp.i.i = icmp slt i32 %dec17.i.i, 0
  br i1 %cmp.i.i, label %while.end.i.i.r6040_phy_read.exit.i_crit_edge, label %if.end7.i.i

while.end.i.i.r6040_phy_read.exit.i_crit_edge:    ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %r6040_phy_read.exit.i

if.end7.i.i:                                      ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr8.i.i = getelementptr i8, ptr %22, i32 36
  %91 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr8.i.i) #12, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !113
  %92 = or i16 %91, 64
  %93 = tail call i16 @llvm.bswap.i16(i16 %92) #12
  br label %r6040_phy_read.exit.i

r6040_phy_read.exit.i:                            ; preds = %if.end7.i.i, %while.end.i.i.r6040_phy_read.exit.i_crit_edge, %if.end.i36.i.r6040_phy_read.exit.i_crit_edge
  %retval.0.i37.i = phi i16 [ %93, %if.end7.i.i ], [ -110, %while.end.i.i.r6040_phy_read.exit.i_crit_edge ], [ -110, %if.end.i36.i.r6040_phy_read.exit.i_crit_edge ]
  %add.ptr.i38.i = getelementptr i8, ptr %22, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @arm_heavy_mb() #12
  %94 = tail call i16 @llvm.bswap.i16(i16 %retval.0.i37.i) #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i38.i, i16 %94) #12, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i34.i, i16 4446) #12, !srcloc !115
  br label %while.body.i39.i

while.body.i39.i:                                 ; preds = %if.end.i42.i.while.body.i39.i_crit_edge, %r6040_phy_read.exit.i
  %dec10.i.i = phi i32 [ 2047, %r6040_phy_read.exit.i ], [ %dec.i40.i, %if.end.i42.i.while.body.i39.i_crit_edge ]
  %95 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i34.i) #12, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !113
  %96 = and i16 %95, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %96)
  %tobool5.not.i.i = icmp eq i16 %96, 0
  br i1 %tobool5.not.i.i, label %while.body.i39.i.r6040_phy_write.exit.i_crit_edge, label %if.end.i42.i

while.body.i39.i.r6040_phy_write.exit.i_crit_edge: ; preds = %while.body.i39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %r6040_phy_write.exit.i

if.end.i42.i:                                     ; preds = %while.body.i39.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %97 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %97(i32 noundef 214748) #12
  %dec.i40.i = add nsw i32 %dec10.i.i, -1
  %tobool.not.i41.i = icmp eq i32 %dec10.i.i, 0
  br i1 %tobool.not.i41.i, label %if.end.i42.i.r6040_phy_write.exit.i_crit_edge, label %if.end.i42.i.while.body.i39.i_crit_edge

if.end.i42.i.while.body.i39.i_crit_edge:          ; preds = %if.end.i42.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i39.i

if.end.i42.i.r6040_phy_write.exit.i_crit_edge:    ; preds = %if.end.i42.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %r6040_phy_write.exit.i

r6040_phy_write.exit.i:                           ; preds = %if.end.i42.i.r6040_phy_write.exit.i_crit_edge, %while.body.i39.i.r6040_phy_write.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i34.i, i16 4414) #12, !srcloc !115
  br label %while.body.i48.i

while.body.i48.i:                                 ; preds = %if.end.i51.i.while.body.i48.i_crit_edge, %r6040_phy_write.exit.i
  %dec17.i46.i = phi i32 [ 2047, %r6040_phy_write.exit.i ], [ %dec.i49.i, %if.end.i51.i.while.body.i48.i_crit_edge ]
  %98 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i34.i) #12, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !113
  %99 = and i16 %98, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %99)
  %tobool4.not.i47.i = icmp eq i16 %99, 0
  br i1 %tobool4.not.i47.i, label %while.end.i53.i, label %if.end.i51.i

if.end.i51.i:                                     ; preds = %while.body.i48.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %100 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %100(i32 noundef 214748) #12
  %dec.i49.i = add nsw i32 %dec17.i46.i, -1
  %tobool.not.i50.i = icmp eq i32 %dec17.i46.i, 0
  br i1 %tobool.not.i50.i, label %if.end.i51.i.r6040_phy_read.exit58.i_crit_edge, label %if.end.i51.i.while.body.i48.i_crit_edge

if.end.i51.i.while.body.i48.i_crit_edge:          ; preds = %if.end.i51.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i48.i

if.end.i51.i.r6040_phy_read.exit58.i_crit_edge:   ; preds = %if.end.i51.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %r6040_phy_read.exit58.i

while.end.i53.i:                                  ; preds = %while.body.i48.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec17.i46.i)
  %cmp.i52.i = icmp slt i32 %dec17.i46.i, 0
  br i1 %cmp.i52.i, label %while.end.i53.i.r6040_phy_read.exit58.i_crit_edge, label %if.end7.i56.i

while.end.i53.i.r6040_phy_read.exit58.i_crit_edge: ; preds = %while.end.i53.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %r6040_phy_read.exit58.i

if.end7.i56.i:                                    ; preds = %while.end.i53.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr8.i54.i = getelementptr i8, ptr %22, i32 36
  %101 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr8.i54.i) #12, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !113
  %102 = and i16 %101, -33
  %103 = tail call i16 @llvm.bswap.i16(i16 %102) #12
  br label %r6040_phy_read.exit58.i

r6040_phy_read.exit58.i:                          ; preds = %if.end7.i56.i, %while.end.i53.i.r6040_phy_read.exit58.i_crit_edge, %if.end.i51.i.r6040_phy_read.exit58.i_crit_edge
  %retval.0.i57.i = phi i16 [ %103, %if.end7.i56.i ], [ -8302, %while.end.i53.i.r6040_phy_read.exit58.i_crit_edge ], [ -8302, %if.end.i51.i.r6040_phy_read.exit58.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @arm_heavy_mb() #12
  %104 = tail call i16 @llvm.bswap.i16(i16 %retval.0.i57.i) #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i38.i, i16 %104) #12, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i34.i, i16 4446) #12, !srcloc !115
  br label %while.body.i63.i

while.body.i63.i:                                 ; preds = %if.end.i66.i.while.body.i63.i_crit_edge, %r6040_phy_read.exit58.i
  %dec10.i61.i = phi i32 [ 2047, %r6040_phy_read.exit58.i ], [ %dec.i64.i, %if.end.i66.i.while.body.i63.i_crit_edge ]
  %105 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i34.i) #12, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !113
  %106 = and i16 %105, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %106)
  %tobool5.not.i62.i = icmp eq i16 %106, 0
  br i1 %tobool5.not.i62.i, label %while.body.i63.i.r6040_phy_write.exit70.i_crit_edge, label %if.end.i66.i

while.body.i63.i.r6040_phy_write.exit70.i_crit_edge: ; preds = %while.body.i63.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %r6040_phy_write.exit70.i

if.end.i66.i:                                     ; preds = %while.body.i63.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %107 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %107(i32 noundef 214748) #12
  %dec.i64.i = add nsw i32 %dec10.i61.i, -1
  %tobool.not.i65.i = icmp eq i32 %dec10.i61.i, 0
  br i1 %tobool.not.i65.i, label %if.end.i66.i.r6040_phy_write.exit70.i_crit_edge, label %if.end.i66.i.while.body.i63.i_crit_edge

if.end.i66.i.while.body.i63.i_crit_edge:          ; preds = %if.end.i66.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i63.i

if.end.i66.i.r6040_phy_write.exit70.i_crit_edge:  ; preds = %if.end.i66.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %r6040_phy_write.exit70.i

r6040_phy_write.exit70.i:                         ; preds = %if.end.i66.i.r6040_phy_write.exit70.i_crit_edge, %while.body.i63.i.r6040_phy_write.exit70.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i38.i, i16 0) #12, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i34.i, i16 4928) #12, !srcloc !115
  br label %while.body.i75.i

while.body.i75.i:                                 ; preds = %if.end.i78.i.while.body.i75.i_crit_edge, %r6040_phy_write.exit70.i
  %dec10.i73.i = phi i32 [ 2047, %r6040_phy_write.exit70.i ], [ %dec.i76.i, %if.end.i78.i.while.body.i75.i_crit_edge ]
  %108 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i34.i) #12, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !113
  %109 = and i16 %108, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %109)
  %tobool5.not.i74.i = icmp eq i16 %109, 0
  br i1 %tobool5.not.i74.i, label %while.body.i75.i.r6040_phy_write.exit82.i_crit_edge, label %if.end.i78.i

while.body.i75.i.r6040_phy_write.exit82.i_crit_edge: ; preds = %while.body.i75.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %r6040_phy_write.exit82.i

if.end.i78.i:                                     ; preds = %while.body.i75.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %110 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %110(i32 noundef 214748) #12
  %dec.i76.i = add nsw i32 %dec10.i73.i, -1
  %tobool.not.i77.i = icmp eq i32 %dec10.i73.i, 0
  br i1 %tobool.not.i77.i, label %if.end.i78.i.r6040_phy_write.exit82.i_crit_edge, label %if.end.i78.i.while.body.i75.i_crit_edge

if.end.i78.i.while.body.i75.i_crit_edge:          ; preds = %if.end.i78.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i75.i

if.end.i78.i.r6040_phy_write.exit82.i_crit_edge:  ; preds = %if.end.i78.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %r6040_phy_write.exit82.i

r6040_phy_write.exit82.i:                         ; preds = %if.end.i78.i.r6040_phy_write.exit82.i_crit_edge, %while.body.i75.i.r6040_phy_write.exit82.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i38.i, i16 -4095) #12, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i34.i, i16 7744) #12, !srcloc !115
  br label %while.body.i87.i

while.body.i87.i:                                 ; preds = %if.end.i90.i.while.body.i87.i_crit_edge, %r6040_phy_write.exit82.i
  %dec10.i85.i = phi i32 [ 2047, %r6040_phy_write.exit82.i ], [ %dec.i88.i, %if.end.i90.i.while.body.i87.i_crit_edge ]
  %111 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i34.i) #12, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !113
  %112 = and i16 %111, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %112)
  %tobool5.not.i86.i = icmp eq i16 %112, 0
  br i1 %tobool5.not.i86.i, label %while.body.i87.i.if.end18_crit_edge, label %if.end.i90.i

while.body.i87.i.if.end18_crit_edge:              ; preds = %while.body.i87.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.end.i90.i:                                     ; preds = %while.body.i87.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %113 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %113(i32 noundef 214748) #12
  %dec.i88.i = add nsw i32 %dec10.i85.i, -1
  %tobool.not.i89.i = icmp eq i32 %dec10.i85.i, 0
  br i1 %tobool.not.i89.i, label %if.end.i90.i.if.end18_crit_edge, label %if.end.i90.i.while.body.i87.i_crit_edge

if.end.i90.i.while.body.i87.i_crit_edge:          ; preds = %if.end.i90.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i87.i

if.end.i90.i.if.end18_crit_edge:                  ; preds = %if.end.i90.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.end18:                                         ; preds = %if.end.i90.i.if.end18_crit_edge, %while.body.i87.i.if.end18_crit_edge
  tail call fastcc void @r6040_init_mac_regs(ptr noundef %dev) #12
  %phydev.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %114 = ptrtoint ptr %phydev.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %phydev.i, align 16
  tail call void @phy_start(ptr noundef %115) #12
  %napi = getelementptr i8, ptr %dev, i32 2400
  tail call void @napi_enable(ptr noundef %napi) #12
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %116 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %117, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #12
  br label %cleanup

err_free_tx_ring:                                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %118 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %pdev, align 4
  %dev20 = getelementptr inbounds %struct.pci_dev, ptr %119, i32 0, i32 44
  %120 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %tx_ring, align 4
  %122 = ptrtoint ptr %tx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %tx_ring_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev20, i32 noundef 4096, ptr noundef %121, i32 noundef %123, i32 noundef 0) #12
  br label %err_free_rx_ring

err_free_rx_ring:                                 ; preds = %err_free_tx_ring, %if.end7.err_free_rx_ring_crit_edge
  %124 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %pdev, align 4
  %dev24 = getelementptr inbounds %struct.pci_dev, ptr %125, i32 0, i32 44
  %126 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %rx_ring, align 8
  %128 = ptrtoint ptr %rx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %rx_ring_dma, align 8
  tail call void @dma_free_attrs(ptr noundef %dev24, i32 noundef 4096, ptr noundef %127, i32 noundef %129, i32 noundef 0) #12
  br label %err_free_irq

err_free_irq:                                     ; preds = %err_free_rx_ring, %if.end.err_free_irq_crit_edge
  %130 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %irq, align 4
  %call28 = tail call ptr @free_irq(i32 noundef %131, ptr noundef %dev) #12
  br label %cleanup

cleanup:                                          ; preds = %err_free_irq, %if.end18, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end18 ], [ %call.i, %entry.cleanup_crit_edge ], [ -12, %err_free_irq ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r6040_close(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %pdev1 = getelementptr i8, ptr %dev, i32 2348
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %2 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phydev, align 16
  tail call void @phy_stop(ptr noundef %3) #12
  %napi = getelementptr i8, ptr %dev, i32 2400
  tail call void @napi_disable(ptr noundef %napi) #12
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %4 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %5, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #12
  tail call void @_raw_spin_lock_irq(ptr noundef %add.ptr.i) #12
  %base.i = getelementptr i8, ptr %dev, i32 2624
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 8
  %add.ptr.i33 = getelementptr i8, ptr %7, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i33, i16 0) #12, !srcloc !115
  tail call fastcc void @r6040_reset_mac(ptr noundef %add.ptr.i) #12
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %8 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_addr.i, align 64
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %9, align 2
  %add.ptr1.i = getelementptr i8, ptr %7, i32 104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @arm_heavy_mb() #12
  %12 = tail call i16 @llvm.bswap.i16(i16 %11) #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr1.i, i16 %12) #12, !srcloc !115
  %arrayidx2.i = getelementptr i16, ptr %9, i32 1
  %13 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx2.i, align 2
  %add.ptr3.i = getelementptr i8, ptr %7, i32 106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @arm_heavy_mb() #12
  %15 = tail call i16 @llvm.bswap.i16(i16 %14) #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr3.i, i16 %15) #12, !srcloc !115
  %arrayidx4.i = getelementptr i16, ptr %9, i32 2
  %16 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx4.i, align 2
  %add.ptr5.i = getelementptr i8, ptr %7, i32 108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @arm_heavy_mb() #12
  %18 = tail call i16 @llvm.bswap.i16(i16 %17) #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5.i, i16 %18) #12, !srcloc !115
  %rx_insert_ptr.i = getelementptr i8, ptr %dev, i32 2352
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry
  %i.016.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %19 = ptrtoint ptr %rx_insert_ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rx_insert_ptr.i, align 8
  %skb_ptr.i = getelementptr inbounds %struct.r6040_descriptor, ptr %20, i32 0, i32 7
  %21 = ptrtoint ptr %skb_ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %skb_ptr.i, align 8
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev1, align 4
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  %buf.i = getelementptr inbounds %struct.r6040_descriptor, ptr %20, i32 0, i32 2
  %25 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %buf.i, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #12
  tail call void @dma_unmap_page_attrs(ptr noundef %dev1.i, i32 noundef %27, i32 noundef 1536, i32 noundef 2, i32 noundef 0) #12
  %28 = ptrtoint ptr %rx_insert_ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rx_insert_ptr.i, align 8
  %skb_ptr4.i = getelementptr inbounds %struct.r6040_descriptor, ptr %29, i32 0, i32 7
  %30 = ptrtoint ptr %skb_ptr4.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %skb_ptr4.i, align 8
  tail call void @consume_skb(ptr noundef %31) #12
  %32 = ptrtoint ptr %rx_insert_ptr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rx_insert_ptr.i, align 8
  %skb_ptr6.i = getelementptr inbounds %struct.r6040_descriptor, ptr %33, i32 0, i32 7
  %34 = ptrtoint ptr %skb_ptr6.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %skb_ptr6.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %35 = ptrtoint ptr %rx_insert_ptr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rx_insert_ptr.i, align 8
  %vndescp.i = getelementptr inbounds %struct.r6040_descriptor, ptr %36, i32 0, i32 6
  %37 = ptrtoint ptr %vndescp.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %vndescp.i, align 4
  store ptr %38, ptr %rx_insert_ptr.i, align 8
  %inc.i = add nuw nsw i32 %i.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 128
  br i1 %exitcond.not.i, label %r6040_free_rxbufs.exit, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

r6040_free_rxbufs.exit:                           ; preds = %if.end.i
  %tx_insert_ptr.i = getelementptr i8, ptr %dev, i32 2360
  br label %for.body.i38

for.body.i38:                                     ; preds = %if.end.i47.for.body.i38_crit_edge, %r6040_free_rxbufs.exit
  %i.016.i35 = phi i32 [ 0, %r6040_free_rxbufs.exit ], [ %inc.i45, %if.end.i47.for.body.i38_crit_edge ]
  %39 = ptrtoint ptr %tx_insert_ptr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tx_insert_ptr.i, align 8
  %skb_ptr.i36 = getelementptr inbounds %struct.r6040_descriptor, ptr %40, i32 0, i32 7
  %41 = ptrtoint ptr %skb_ptr.i36 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %skb_ptr.i36, align 8
  %tobool.not.i37 = icmp eq ptr %42, null
  br i1 %tobool.not.i37, label %for.body.i38.if.end.i47_crit_edge, label %if.then.i43

for.body.i38.if.end.i47_crit_edge:                ; preds = %for.body.i38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i47

if.then.i43:                                      ; preds = %for.body.i38
  call void @__sanitizer_cov_trace_pc() #14
  %43 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pdev1, align 4
  %dev1.i39 = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44
  %buf.i40 = getelementptr inbounds %struct.r6040_descriptor, ptr %40, i32 0, i32 2
  %45 = ptrtoint ptr %buf.i40 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %buf.i40, align 4
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #12
  tail call void @dma_unmap_page_attrs(ptr noundef %dev1.i39, i32 noundef %47, i32 noundef 1536, i32 noundef 1, i32 noundef 0) #12
  %48 = ptrtoint ptr %tx_insert_ptr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tx_insert_ptr.i, align 8
  %skb_ptr4.i41 = getelementptr inbounds %struct.r6040_descriptor, ptr %49, i32 0, i32 7
  %50 = ptrtoint ptr %skb_ptr4.i41 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %skb_ptr4.i41, align 8
  tail call void @consume_skb(ptr noundef %51) #12
  %52 = ptrtoint ptr %tx_insert_ptr.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tx_insert_ptr.i, align 8
  %skb_ptr6.i42 = getelementptr inbounds %struct.r6040_descriptor, ptr %53, i32 0, i32 7
  %54 = ptrtoint ptr %skb_ptr6.i42 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %skb_ptr6.i42, align 8
  br label %if.end.i47

if.end.i47:                                       ; preds = %if.then.i43, %for.body.i38.if.end.i47_crit_edge
  %55 = ptrtoint ptr %tx_insert_ptr.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %tx_insert_ptr.i, align 8
  %vndescp.i44 = getelementptr inbounds %struct.r6040_descriptor, ptr %56, i32 0, i32 6
  %57 = ptrtoint ptr %vndescp.i44 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %vndescp.i44, align 4
  store ptr %58, ptr %tx_insert_ptr.i, align 8
  %inc.i45 = add nuw nsw i32 %i.016.i35, 1
  %exitcond.not.i46 = icmp eq i32 %inc.i45, 128
  br i1 %exitcond.not.i46, label %r6040_free_txbufs.exit, label %if.end.i47.for.body.i38_crit_edge

if.end.i47.for.body.i38_crit_edge:                ; preds = %if.end.i47
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i38

r6040_free_txbufs.exit:                           ; preds = %if.end.i47
  tail call void @_raw_spin_unlock_irq(ptr noundef %add.ptr.i) #12
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %59 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %irq, align 4
  %call3 = tail call ptr @free_irq(i32 noundef %60, ptr noundef %dev) #12
  %rx_ring = getelementptr i8, ptr %dev, i32 2368
  %61 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rx_ring, align 8
  %tobool.not = icmp eq ptr %62, null
  br i1 %tobool.not, label %r6040_free_txbufs.exit.if.end_crit_edge, label %if.then

r6040_free_txbufs.exit.if.end_crit_edge:          ; preds = %r6040_free_txbufs.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %r6040_free_txbufs.exit
  call void @__sanitizer_cov_trace_pc() #14
  %dev4 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %rx_ring_dma = getelementptr i8, ptr %dev, i32 2376
  %63 = ptrtoint ptr %rx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rx_ring_dma, align 8
  tail call void @dma_free_attrs(ptr noundef %dev4, i32 noundef 4096, ptr noundef nonnull %62, i32 noundef %64, i32 noundef 0) #12
  %65 = ptrtoint ptr %rx_ring to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %rx_ring, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %r6040_free_txbufs.exit.if.end_crit_edge
  %tx_ring = getelementptr i8, ptr %dev, i32 2372
  %66 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %tx_ring, align 4
  %tobool7.not = icmp eq ptr %67, null
  br i1 %tobool7.not, label %if.end.if.end12_crit_edge, label %if.then8

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev9 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %tx_ring_dma = getelementptr i8, ptr %dev, i32 2380
  %68 = ptrtoint ptr %tx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %tx_ring_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev9, i32 noundef 4096, ptr noundef nonnull %67, i32 noundef %69, i32 noundef 0) #12
  %70 = ptrtoint ptr %tx_ring to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %tx_ring, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.end.if.end12_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r6040_start_xmit(ptr noundef %skb, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %base = getelementptr i8, ptr %dev, i32 2624
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %len1.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %3)
  %cmp.i.i = icmp ult i32 %3, 60
  br i1 %cmp.i.i, label %if.then.i.i, label %entry.do.body2_crit_edge, !prof !117

entry.do.body2_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2

if.then.i.i:                                      ; preds = %entry
  %sub.i.i = sub nuw nsw i32 60, %3
  %call.i.i = tail call i32 @__skb_pad(ptr noundef %skb, i32 noundef %sub.i.i, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i, label %if.then.i.i.cleanup_crit_edge

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then.i.i
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %4 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not.i.i.i = icmp eq i32 %5, 0
  br i1 %tobool.i.not.i.i.i, label %__skb_put.exit.i.i, label %do.body3.i.i.i, !prof !116

do.body3.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #12, !srcloc !118
  unreachable

__skb_put.exit.i.i:                               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %6 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 %sub.i.i
  store ptr %add.ptr.i.i.i, ptr %tail.i.i.i, align 8
  %8 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len1.i.i, align 4
  %add.i.i.i = add i32 %9, %sub.i.i
  store i32 %add.i.i.i, ptr %len1.i.i, align 4
  br label %do.body2

do.body2:                                         ; preds = %__skb_put.exit.i.i, %entry.do.body2_crit_edge
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr.i) #12
  %tx_free_desc = getelementptr i8, ptr %dev, i32 2384
  %10 = ptrtoint ptr %tx_free_desc to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %tx_free_desc, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.not = icmp eq i16 %11, 0
  br i1 %tobool.not, label %if.then8, label %if.end10

if.then8:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr.i, i32 noundef %call5) #12
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %12 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %13, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.40) #15
  br label %cleanup

if.end10:                                         ; preds = %do.body2
  %dec = add i16 %11, -1
  %14 = ptrtoint ptr %tx_free_desc to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %dec, ptr %tx_free_desc, align 8
  %tx_insert_ptr = getelementptr i8, ptr %dev, i32 2360
  %15 = ptrtoint ptr %tx_insert_ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tx_insert_ptr, align 8
  %17 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len1.i.i, align 4
  %conv12 = trunc i32 %18 to i16
  %len13 = getelementptr inbounds %struct.r6040_descriptor, ptr %16, i32 0, i32 1
  %19 = ptrtoint ptr %len13 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv12, ptr %len13, align 2
  %skb_ptr = getelementptr inbounds %struct.r6040_descriptor, ptr %16, i32 0, i32 7
  %20 = ptrtoint ptr %skb_ptr to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %skb, ptr %skb_ptr, align 8
  %pdev = getelementptr i8, ptr %dev, i32 2348
  %21 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev, align 4
  %dev14 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data, align 4
  %25 = load i32, ptr %len1.i.i, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %24) #12
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end10
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !116

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev14) #12
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44, i32 3
  %26 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %27, null
  br i1 %tobool.not.i.i, label %if.end.i.i54, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i

if.end.i.i54:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev14, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i54, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i55 = phi ptr [ %29, %if.end.i.i54 ], [ %27, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.39, ptr noundef %call16.i, ptr noundef %retval.0.i.i55) #12
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @debug_dma_map_single(ptr noundef %dev14, ptr noundef %24, i32 noundef %25) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %30 = load ptr, ptr @mem_map, align 4
  %31 = ptrtoint ptr %24 to i32
  %sub.i = add i32 %31, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i56 = getelementptr %struct.page, ptr %30, i32 %shr.i
  %and.i = and i32 %31, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev14, ptr noundef %add.ptr.i56, i32 noundef %and.i, i32 noundef %25, i32 noundef 1, i32 noundef 0) #12
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %32 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i)
  %buf = getelementptr inbounds %struct.r6040_descriptor, ptr %16, i32 0, i32 2
  %33 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %buf, align 4
  %34 = ptrtoint ptr %16 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 -32768, ptr %16, align 32
  tail call void @skb_clone_tx_timestamp(ptr noundef %skb) #12
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %35 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %end.i.i, align 4
  %tx_flags.i = getelementptr inbounds %struct.skb_shared_info, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %tx_flags.i, align 1
  %39 = and i8 %38, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i = icmp eq i8 %39, 0
  br i1 %tobool.not.i, label %dma_map_single_attrs.exit.skb_tx_timestamp.exit_crit_edge, label %if.then.i57

dma_map_single_attrs.exit.skb_tx_timestamp.exit_crit_edge: ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_tx_timestamp.exit

if.then.i57:                                      ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @skb_tstamp_tx(ptr noundef %skb, ptr noundef null) #12
  br label %skb_tx_timestamp.exit

skb_tx_timestamp.exit:                            ; preds = %if.then.i57, %dma_map_single_attrs.exit.skb_tx_timestamp.exit_crit_edge
  %40 = tail call i32 @llvm.read_register.i32(metadata !101) #12
  %and.i.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %43
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %45, ptrtoint (ptr getelementptr inbounds (%struct.softnet_data, ptr @softnet_data, i32 0, i32 11, i32 1) to i32)
  %46 = inttoptr i32 %add.i to ptr
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %46, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.i.not = icmp eq i8 %48, 0
  br i1 %tobool.i.not, label %skb_tx_timestamp.exit.if.then20_crit_edge, label %lor.lhs.false

skb_tx_timestamp.exit.if.then20_crit_edge:        ; preds = %skb_tx_timestamp.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then20

lor.lhs.false:                                    ; preds = %skb_tx_timestamp.exit
  %_tx.i.i58 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %49 = ptrtoint ptr %_tx.i.i58 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %_tx.i.i58, align 128
  %state.i.i59 = getelementptr inbounds %struct.netdev_queue, ptr %50, i32 0, i32 13
  %51 = ptrtoint ptr %state.i.i59 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %state.i.i59, align 4
  %and1.i.i.i = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %lor.lhs.false.if.end21_crit_edge, label %lor.lhs.false.if.then20_crit_edge

lor.lhs.false.if.then20_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then20

lor.lhs.false.if.end21_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then20:                                        ; preds = %lor.lhs.false.if.then20_crit_edge, %skb_tx_timestamp.exit.if.then20_crit_edge
  %add.ptr = getelementptr i8, ptr %1, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 256) #12, !srcloc !115
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %lor.lhs.false.if.end21_crit_edge
  %vndescp = getelementptr inbounds %struct.r6040_descriptor, ptr %16, i32 0, i32 6
  %53 = ptrtoint ptr %vndescp to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %vndescp, align 4
  %55 = ptrtoint ptr %tx_insert_ptr to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %54, ptr %tx_insert_ptr, align 8
  %56 = ptrtoint ptr %tx_free_desc to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %tx_free_desc, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %tobool24.not = icmp eq i16 %57, 0
  br i1 %tobool24.not, label %if.then25, label %if.end21.if.end26_crit_edge

if.end21.if.end26_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  %_tx.i.i60 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %58 = ptrtoint ptr %_tx.i.i60 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %_tx.i.i60, align 128
  %state.i.i61 = getelementptr inbounds %struct.netdev_queue, ptr %59, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i61) #12
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end21.if.end26_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr.i, i32 noundef %call5) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.then8, %if.then.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end26 ], [ 16, %if.then8 ], [ 0, %if.then.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @r6040_multicast_list(ptr noundef %dev) #2 align 64 {
entry:
  %hash_table = alloca [4 x i16], align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %base = getelementptr i8, ptr %dev, i32 2624
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %hash_table) #12
  %2 = ptrtoint ptr %hash_table to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %hash_table, align 8
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr.i) #12
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %3 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_addr, align 64
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %4, align 2
  %add.ptr = getelementptr i8, ptr %1, i32 104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @arm_heavy_mb() #12
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %7) #12, !srcloc !115
  %arrayidx6 = getelementptr i16, ptr %4, i32 1
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx6, align 2
  %add.ptr7 = getelementptr i8, ptr %1, i32 106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @arm_heavy_mb() #12
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr7, i16 %10) #12, !srcloc !115
  %arrayidx8 = getelementptr i16, ptr %4, i32 2
  %11 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx8, align 2
  %add.ptr9 = getelementptr i8, ptr %1, i32 108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @arm_heavy_mb() #12
  %13 = tail call i16 @llvm.bswap.i16(i16 %12) #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr9, i16 %13) #12, !srcloc !115
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %1) #12, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !113
  %15 = and i16 %14, -8194
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  %mcr0 = getelementptr i8, ptr %dev, i32 2386
  %17 = ptrtoint ptr %mcr0 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %mcr0, align 2
  %flags14 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %18 = ptrtoint ptr %flags14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags14, align 8
  %and15 = and i32 %19, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool.not = icmp eq i32 %and15, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %20 = or i16 %16, 32
  %21 = ptrtoint ptr %mcr0 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %mcr0, align 2
  br label %if.end170

if.else:                                          ; preds = %entry
  %and20 = and i32 %19, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.else45, label %if.then22

if.then22:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %22 = or i16 %16, 256
  %23 = ptrtoint ptr %mcr0 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %mcr0, align 2
  %add.ptr29 = getelementptr i8, ptr %1, i32 112
  %add.ptr31 = getelementptr i8, ptr %1, i32 114
  %add.ptr34 = getelementptr i8, ptr %1, i32 116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr29, i16 0) #12, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr31, i16 0) #12, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr34, i16 0) #12, !srcloc !115
  %add.ptr30.1 = getelementptr i8, ptr %1, i32 120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr30.1, i16 0) #12, !srcloc !115
  %add.ptr33.1 = getelementptr i8, ptr %1, i32 122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr33.1, i16 0) #12, !srcloc !115
  %add.ptr36.1 = getelementptr i8, ptr %1, i32 124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr36.1, i16 0) #12, !srcloc !115
  %add.ptr30.2 = getelementptr i8, ptr %1, i32 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr30.2, i16 0) #12, !srcloc !115
  %add.ptr33.2 = getelementptr i8, ptr %1, i32 130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr33.2, i16 0) #12, !srcloc !115
  %add.ptr36.2 = getelementptr i8, ptr %1, i32 132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr36.2, i16 0) #12, !srcloc !115
  %24 = ptrtoint ptr %hash_table to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 -1, ptr %hash_table, align 8
  br label %if.end170

if.else45:                                        ; preds = %if.else
  %mc = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66
  %count = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66, i32 1
  %25 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %26)
  %cmp46 = icmp slt i32 %26, 4
  br i1 %cmp46, label %for.cond52.preheader, label %if.else92

for.cond52.preheader:                             ; preds = %if.else45
  %27 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %27)
  %ha.0276 = load ptr, ptr %mc, align 4
  %cmp56.not277 = icmp eq ptr %ha.0276, %mc
  br i1 %cmp56.not277, label %for.cond52.preheader.while.body.lr.ph_crit_edge, label %for.body58.lr.ph

for.cond52.preheader.while.body.lr.ph_crit_edge:  ; preds = %for.cond52.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.lr.ph

for.body58.lr.ph:                                 ; preds = %for.cond52.preheader
  %add.ptr61 = getelementptr i8, ptr %1, i32 112
  %add.ptr65 = getelementptr i8, ptr %1, i32 114
  %add.ptr69 = getelementptr i8, ptr %1, i32 116
  br label %for.body58

while.cond.preheader:                             ; preds = %for.body58
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc72)
  %cmp80280 = icmp slt i32 %inc72, 3
  br i1 %cmp80280, label %while.cond.preheader.while.body.lr.ph_crit_edge, label %while.cond.preheader.if.end170_crit_edge

while.cond.preheader.if.end170_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end170

while.cond.preheader.while.body.lr.ph_crit_edge:  ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.cond.preheader.while.body.lr.ph_crit_edge, %for.cond52.preheader.while.body.lr.ph_crit_edge
  %i.2.lcssa286 = phi i32 [ %inc72, %while.cond.preheader.while.body.lr.ph_crit_edge ], [ 0, %for.cond52.preheader.while.body.lr.ph_crit_edge ]
  %add.ptr82 = getelementptr i8, ptr %1, i32 112
  %add.ptr85 = getelementptr i8, ptr %1, i32 114
  %add.ptr88 = getelementptr i8, ptr %1, i32 116
  br label %while.body

for.body58:                                       ; preds = %for.body58.for.body58_crit_edge, %for.body58.lr.ph
  %ha.0279 = phi ptr [ %ha.0276, %for.body58.lr.ph ], [ %ha.0, %for.body58.for.body58_crit_edge ]
  %i.2278 = phi i32 [ 0, %for.body58.lr.ph ], [ %inc72, %for.body58.for.body58_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0279, i32 0, i32 2
  %28 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %addr, align 2
  %mul62 = shl i32 %i.2278, 3
  %add.ptr63 = getelementptr i8, ptr %add.ptr61, i32 %mul62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @arm_heavy_mb() #12
  %30 = tail call i16 @llvm.bswap.i16(i16 %29) #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr63, i16 %30) #12, !srcloc !115
  %arrayidx64 = getelementptr %struct.netdev_hw_addr, ptr %ha.0279, i32 0, i32 2, i32 2
  %31 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx64, align 2
  %add.ptr67 = getelementptr i8, ptr %add.ptr65, i32 %mul62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @arm_heavy_mb() #12
  %33 = tail call i16 @llvm.bswap.i16(i16 %32) #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr67, i16 %33) #12, !srcloc !115
  %arrayidx68 = getelementptr %struct.netdev_hw_addr, ptr %ha.0279, i32 0, i32 2, i32 4
  %34 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx68, align 2
  %add.ptr71 = getelementptr i8, ptr %add.ptr69, i32 %mul62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @arm_heavy_mb() #12
  %36 = tail call i16 @llvm.bswap.i16(i16 %35) #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr71, i16 %36) #12, !srcloc !115
  %inc72 = add i32 %i.2278, 1
  %37 = ptrtoint ptr %ha.0279 to i32
  call void @__asan_load4_noabort(i32 %37)
  %ha.0 = load ptr, ptr %ha.0279, align 4
  %cmp56.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp56.not, label %while.cond.preheader, label %for.body58.for.body58_crit_edge

for.body58.for.body58_crit_edge:                  ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body58

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %i.3281 = phi i32 [ %i.2.lcssa286, %while.body.lr.ph ], [ %inc91, %while.body.while.body_crit_edge ]
  %mul83 = shl i32 %i.3281, 3
  %add.ptr84 = getelementptr i8, ptr %add.ptr82, i32 %mul83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr84, i16 0) #12, !srcloc !115
  %add.ptr87 = getelementptr i8, ptr %add.ptr85, i32 %mul83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr87, i16 0) #12, !srcloc !115
  %add.ptr90 = getelementptr i8, ptr %add.ptr88, i32 %mul83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr90, i16 0) #12, !srcloc !115
  %inc91 = add i32 %i.3281, 1
  %exitcond.not = icmp eq i32 %inc91, 3
  br i1 %exitcond.not, label %while.body.if.end170_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.body.if.end170_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end170

if.else92:                                        ; preds = %if.else45
  %38 = or i16 %16, 256
  %39 = ptrtoint ptr %mcr0 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %mcr0, align 2
  %add.ptr101 = getelementptr i8, ptr %1, i32 112
  %add.ptr104 = getelementptr i8, ptr %1, i32 114
  %add.ptr107 = getelementptr i8, ptr %1, i32 116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr101, i16 0) #12, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr104, i16 0) #12, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr107, i16 0) #12, !srcloc !115
  %add.ptr103.1 = getelementptr i8, ptr %1, i32 120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr103.1, i16 0) #12, !srcloc !115
  %add.ptr106.1 = getelementptr i8, ptr %1, i32 122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr106.1, i16 0) #12, !srcloc !115
  %add.ptr109.1 = getelementptr i8, ptr %1, i32 124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr109.1, i16 0) #12, !srcloc !115
  %add.ptr103.2 = getelementptr i8, ptr %1, i32 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr103.2, i16 0) #12, !srcloc !115
  %add.ptr106.2 = getelementptr i8, ptr %1, i32 130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr106.2, i16 0) #12, !srcloc !115
  %add.ptr109.2 = getelementptr i8, ptr %1, i32 132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr109.2, i16 0) #12, !srcloc !115
  %40 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %40)
  %ha.1273 = load ptr, ptr %mc, align 4
  %cmp123.not274 = icmp eq ptr %ha.1273, %mc
  br i1 %cmp123.not274, label %if.else92.if.end170_crit_edge, label %if.else92.cond.end_crit_edge

if.else92.cond.end_crit_edge:                     ; preds = %if.else92
  br label %cond.end

if.else92.if.end170_crit_edge:                    ; preds = %if.else92
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end170

cond.end:                                         ; preds = %cond.end.cond.end_crit_edge, %if.else92.cond.end_crit_edge
  %ha.1275 = phi ptr [ %ha.1, %cond.end.cond.end_crit_edge ], [ %ha.1273, %if.else92.cond.end_crit_edge ]
  %addr127 = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.1275, i32 0, i32 2
  %call129 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr127, i32 noundef 6) #16
  %41 = and i32 %call129, 255
  %arrayidx.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %41
  %42 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv2.i.i = zext i8 %43 to i32
  %shr154 = lshr i32 %conv2.i.i, 2
  %and155 = and i32 %shr154, 15
  %shl156 = shl nuw nsw i32 1, %and155
  %shr157 = lshr i32 %conv2.i.i, 6
  %arrayidx158 = getelementptr [4 x i16], ptr %hash_table, i32 0, i32 %shr157
  %44 = ptrtoint ptr %arrayidx158 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %arrayidx158, align 2
  %46 = trunc i32 %shl156 to i16
  %conv161 = or i16 %45, %46
  store i16 %conv161, ptr %arrayidx158, align 2
  %47 = ptrtoint ptr %ha.1275 to i32
  call void @__asan_load4_noabort(i32 %47)
  %ha.1 = load ptr, ptr %ha.1275, align 4
  %cmp123.not = icmp eq ptr %ha.1, %mc
  br i1 %cmp123.not, label %cond.end.if.end170_crit_edge, label %cond.end.cond.end_crit_edge

cond.end.cond.end_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.end.if.end170_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end170

if.end170:                                        ; preds = %cond.end.if.end170_crit_edge, %if.else92.if.end170_crit_edge, %while.body.if.end170_crit_edge, %while.cond.preheader.if.end170_crit_edge, %if.then22, %if.then
  %48 = ptrtoint ptr %mcr0 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %mcr0, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @arm_heavy_mb() #12
  %50 = tail call i16 @llvm.bswap.i16(i16 %49) #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %1, i16 %50) #12, !srcloc !115
  %51 = ptrtoint ptr %mcr0 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %mcr0, align 2
  %53 = and i16 %52, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %tobool176.not = icmp eq i16 %53, 0
  br i1 %tobool176.not, label %if.end170.if.end186_crit_edge, label %if.then177

if.end170.if.end186_crit_edge:                    ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end186

if.then177:                                       ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #14
  %54 = ptrtoint ptr %hash_table to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %hash_table, align 8
  %add.ptr179 = getelementptr i8, ptr %1, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @arm_heavy_mb() #12
  %56 = tail call i16 @llvm.bswap.i16(i16 %55) #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr179, i16 %56) #12, !srcloc !115
  %arrayidx180 = getelementptr inbounds [4 x i16], ptr %hash_table, i32 0, i32 1
  %57 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %arrayidx180, align 2
  %add.ptr181 = getelementptr i8, ptr %1, i32 98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @arm_heavy_mb() #12
  %59 = tail call i16 @llvm.bswap.i16(i16 %58) #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr181, i16 %59) #12, !srcloc !115
  %arrayidx182 = getelementptr inbounds [4 x i16], ptr %hash_table, i32 0, i32 2
  %60 = ptrtoint ptr %arrayidx182 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %arrayidx182, align 4
  %add.ptr183 = getelementptr i8, ptr %1, i32 100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @arm_heavy_mb() #12
  %62 = tail call i16 @llvm.bswap.i16(i16 %61) #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr183, i16 %62) #12, !srcloc !115
  %arrayidx184 = getelementptr inbounds [4 x i16], ptr %hash_table, i32 0, i32 3
  %63 = ptrtoint ptr %arrayidx184 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %arrayidx184, align 2
  %add.ptr185 = getelementptr i8, ptr %1, i32 102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @arm_heavy_mb() #12
  %65 = tail call i16 @llvm.bswap.i16(i16 %64) #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr185, i16 %65) #12, !srcloc !115
  br label %if.end186

if.end186:                                        ; preds = %if.then177, %if.end170.if.end186_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr.i, i32 noundef %call3) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hash_table) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_do_ioctl(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @r6040_tx_timeout(ptr noundef %dev, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr i8, ptr %dev, i32 2624
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 64
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #12, !srcloc !112
  %3 = tail call i16 @llvm.bswap.i16(i16 %2) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !113
  %conv = zext i16 %3 to i32
  %add.ptr2 = getelementptr i8, ptr %1, i32 60
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr2) #12, !srcloc !112
  %5 = tail call i16 @llvm.bswap.i16(i16 %4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !113
  %conv4 = zext i16 %5 to i32
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.42, i32 noundef %conv, i32 noundef %conv4) #15
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %6 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %tx_errors, align 4
  tail call fastcc void @r6040_init_mac_regs(ptr noundef %dev)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @r6040_get_stats(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %base = getelementptr i8, ptr %dev, i32 2624
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr.i) #12
  %add.ptr = getelementptr i8, ptr %1, i32 84
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #12, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !120
  %conv7 = zext i8 %2 to i32
  %stats = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  %rx_crc_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 12
  %3 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rx_crc_errors, align 8
  %add = add i32 %4, %conv7
  store i32 %add, ptr %rx_crc_errors, align 8
  %add.ptr8 = getelementptr i8, ptr %1, i32 82
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr8) #12, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !120
  %conv10 = zext i8 %5 to i32
  %multicast = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 8
  %6 = ptrtoint ptr %multicast to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %multicast, align 8
  %add12 = add i32 %7, %conv10
  store i32 %add12, ptr %multicast, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr.i, i32 noundef %call3) #12
  ret ptr %stats
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @r6040_poll_controller(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %1) #12
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call = tail call i32 @r6040_interrupt(i32 noundef %3, ptr noundef %dev)
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %5) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r6040_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr i8, ptr %dev_id, i32 2624
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 64
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #12, !srcloc !112
  %3 = tail call i16 @llvm.bswap.i16(i16 %2) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 0) #12, !srcloc !115
  %add.ptr3 = getelementptr i8, ptr %1, i32 60
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr3) #12, !srcloc !112
  %5 = tail call i16 @llvm.bswap.i16(i16 %4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !113
  %conv = zext i16 %5 to i32
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i16 %5, label %if.end [
    i16 0, label %entry.if.then_crit_edge
    i16 -1, label %entry.if.then_crit_edge56
  ]

entry.if.then_crit_edge56:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %2) #12, !srcloc !115
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %conv, 23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end35_crit_edge, label %if.then11

if.end.if.end35_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.then11:                                        ; preds = %if.end
  %and13 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.then11.if.end18_crit_edge, label %if.then15

if.then11.if.end18_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then15:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 6
  %7 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rx_dropped, align 8
  %inc = add i32 %8, 1
  store i32 %inc, ptr %rx_dropped, align 8
  %rx_missed_errors = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 15
  %9 = ptrtoint ptr %rx_missed_errors to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rx_missed_errors, align 4
  %inc17 = add i32 %10, 1
  store i32 %inc17, ptr %rx_missed_errors, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.then11.if.end18_crit_edge
  %and20 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end18.if.end25_crit_edge, label %if.then22

if.end18.if.end25_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  %rx_fifo_errors = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 14
  %11 = ptrtoint ptr %rx_fifo_errors to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rx_fifo_errors, align 8
  %inc24 = add i32 %12, 1
  store i32 %inc24, ptr %rx_fifo_errors, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.end18.if.end25_crit_edge
  %napi = getelementptr i8, ptr %dev_id, i32 2400
  %call26 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #12
  br i1 %call26, label %if.then29, label %if.end25.if.end35_crit_edge, !prof !116

if.end25.if.end35_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  %13 = and i16 %3, -24
  tail call void @__napi_schedule_irqoff(ptr noundef %napi) #12
  br label %if.end35

if.end35:                                         ; preds = %if.then29, %if.end25.if.end35_crit_edge, %if.end.if.end35_crit_edge
  %misr.0 = phi i16 [ %13, %if.then29 ], [ %3, %if.end25.if.end35_crit_edge ], [ %3, %if.end.if.end35_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @arm_heavy_mb() #12
  %14 = tail call i16 @llvm.bswap.i16(i16 %misr.0) #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %14) #12, !srcloc !115
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end35 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule_irqoff(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @r6040_reset_mac(ptr nocapture noundef readonly %lp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.r6040_private, ptr %lp, i32 0, i32 15
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 182
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #12, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !113
  %add.ptr1 = getelementptr i8, ptr %1, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr1, i16 256) #12, !srcloc !115
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %limit.0 = phi i32 [ 2048, %entry ], [ %dec, %while.body.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %limit.0)
  %tobool.not = icmp eq i32 %limit.0, 0
  br i1 %tobool.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %while.cond
  %dec = add nsw i32 %limit.0, -1
  %3 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr1) #12, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !113
  %4 = and i16 %3, 256
  %tobool4.not = icmp eq i16 %4, 0
  br i1 %tobool4.not, label %while.body.while.cond_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.while.end_crit_edge
  %add.ptr5 = getelementptr i8, ptr %1, i32 172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5, i16 512) #12, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5, i16 0) #12, !srcloc !115
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 12288, i16 %2)
  %cmp.not = icmp eq i16 %2, 12288
  br i1 %cmp.not, label %while.end.if.end16_crit_edge, label %if.then14

while.end.if.end16_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then14:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %2) #12, !srcloc !115
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %while.end.if.end16_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @r6040_init_mac_regs(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %base = getelementptr i8, ptr %dev, i32 2624
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 0) #12, !srcloc !115
  tail call fastcc void @r6040_reset_mac(ptr noundef %add.ptr.i)
  %add.ptr1 = getelementptr i8, ptr %1, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr1, i16 10753) #12, !srcloc !115
  %add.ptr2 = getelementptr i8, ptr %1, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2, i16 6) #12, !srcloc !115
  %tx_ring_dma = getelementptr i8, ptr %dev, i32 2380
  %2 = ptrtoint ptr %tx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_ring_dma, align 4
  %conv = trunc i32 %3 to i16
  %add.ptr3 = getelementptr i8, ptr %1, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @arm_heavy_mb() #12
  %4 = tail call i16 @llvm.bswap.i16(i16 %conv) #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr3, i16 %4) #12, !srcloc !115
  %5 = ptrtoint ptr %tx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tx_ring_dma, align 4
  %shr = lshr i32 %6, 16
  %conv5 = trunc i32 %shr to i16
  %add.ptr6 = getelementptr i8, ptr %1, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @arm_heavy_mb() #12
  %7 = tail call i16 @llvm.bswap.i16(i16 %conv5) #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr6, i16 %7) #12, !srcloc !115
  %rx_ring_dma = getelementptr i8, ptr %dev, i32 2376
  %8 = ptrtoint ptr %rx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_ring_dma, align 8
  %conv7 = trunc i32 %9 to i16
  %add.ptr8 = getelementptr i8, ptr %1, i32 52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @arm_heavy_mb() #12
  %10 = tail call i16 @llvm.bswap.i16(i16 %conv7) #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8, i16 %10) #12, !srcloc !115
  %11 = ptrtoint ptr %rx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rx_ring_dma, align 8
  %shr10 = lshr i32 %12, 16
  %conv11 = trunc i32 %shr10 to i16
  %add.ptr12 = getelementptr i8, ptr %1, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @arm_heavy_mb() #12
  %13 = tail call i16 @llvm.bswap.i16(i16 %conv11) #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr12, i16 %13) #12, !srcloc !115
  %add.ptr13 = getelementptr i8, ptr %1, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr13, i16 0) #12, !srcloc !115
  %add.ptr14 = getelementptr i8, ptr %1, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr14, i16 0) #12, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 5888) #12, !srcloc !115
  %mcr0 = getelementptr i8, ptr %dev, i32 2386
  %14 = ptrtoint ptr %mcr0 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %mcr0, align 2
  %16 = or i16 %15, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @arm_heavy_mb() #12
  %17 = tail call i16 @llvm.bswap.i16(i16 %16) #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %1, i16 %17) #12, !srcloc !115
  %add.ptr18 = getelementptr i8, ptr %1, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr18, i16 256) #12, !srcloc !115
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_start(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_stop(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__skb_pad(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_clone_tx_timestamp(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netdev_get_drvinfo(ptr nocapture noundef readonly %dev, ptr noundef %info) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call1 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str.1, i32 noundef 32) #12
  %version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 2
  %call3 = tail call i32 @strlcpy(ptr noundef %version, ptr noundef nonnull @.str.43, i32 noundef 32) #12
  %pdev = getelementptr i8, ptr %dev, i32 2348
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.pci_name.exit_crit_edge

entry.pci_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %entry.pci_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %call6 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i.i, i32 noundef 32) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_nway_reset(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_ts_info(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_link_ksettings(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_set_link_ksettings(ptr noundef, ptr noundef) #0

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdiobus_alloc_size(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phy_find_first(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phy_connect(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @r6040_adjust_link(ptr nocapture noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %phydev1 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev1, align 16
  %base = getelementptr i8, ptr %dev, i32 2624
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body5, label %do.end10, !prof !117

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/rdc/r6040.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 978, 0\0A.popsection", ""() #12, !srcloc !121
  unreachable

do.end10:                                         ; preds = %entry
  %old_link = getelementptr i8, ptr %dev, i32 2628
  %4 = ptrtoint ptr %old_link to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %old_link, align 4
  %link = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load = load i16, ptr %link, align 8
  %bf.lshr = lshr i16 %bf.load, 2
  %bf.clear = and i16 %bf.lshr, 1
  %bf.cast = zext i16 %bf.clear to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %bf.cast)
  %cmp.not = icmp eq i32 %5, %bf.cast
  br i1 %cmp.not, label %do.end10.if.end18_crit_edge, label %if.then11

do.end10.if.end18_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then11:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %old_link to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %bf.cast, ptr %old_link, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then11, %do.end10.if.end18_crit_edge
  %8 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load20 = load i16, ptr %link, align 8
  %9 = and i16 %bf.load20, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool24.not = icmp eq i16 %9, 0
  br i1 %tobool24.not, label %if.end18.if.end33_crit_edge, label %land.lhs.true

if.end18.if.end33_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

land.lhs.true:                                    ; preds = %if.end18
  %old_duplex = getelementptr i8, ptr %dev, i32 2632
  %10 = ptrtoint ptr %old_duplex to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %old_duplex, align 8
  %duplex = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 9
  %12 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %duplex, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp25.not = icmp eq i32 %11, %13
  br i1 %cmp25.not, label %land.lhs.true.if.end33_crit_edge, label %if.end33.thread

land.lhs.true.if.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.end33.thread:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp28 = icmp eq i32 %13, 1
  %cond = select i1 %cmp28, i16 -32768, i16 0
  %mcr0 = getelementptr i8, ptr %dev, i32 2386
  %14 = ptrtoint ptr %mcr0 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %mcr0, align 2
  %or = or i16 %15, %cond
  store i16 %or, ptr %mcr0, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @arm_heavy_mb() #12
  %16 = tail call i16 @llvm.bswap.i16(i16 %or) #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %3, i16 %16) #12, !srcloc !115
  %17 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %duplex, align 4
  %19 = ptrtoint ptr %old_duplex to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %old_duplex, align 8
  br label %if.then35

if.end33:                                         ; preds = %land.lhs.true.if.end33_crit_edge, %if.end18.if.end33_crit_edge
  br i1 %cmp.not, label %if.end33.if.end36_crit_edge, label %if.end33.if.then35_crit_edge

if.end33.if.then35_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then35

if.end33.if.end36_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.then35:                                        ; preds = %if.end33.if.then35_crit_edge, %if.end33.thread
  tail call void @phy_print_status(ptr noundef nonnull %1) #12
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.end33.if.end36_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_set_max_speed(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_attached_info(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_print_status(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !11, !12, !13, !15, !16, !18, !20, !22, !24, !25, !26, !27, !28, !30, !31, !32, !33, !34, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !54, !56, !57, !58, !60, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !78, !80, !81, !82, !84, !86, !88, !90, !92, !94, !95, !96, !97, !99, !100}
!llvm.named.register.sp = !{!101}
!llvm.module.flags = !{!102, !103, !104, !105, !106, !107, !108, !109}
!llvm.ident = !{!110}

!0 = !{ptr @__UNIQUE_ID_author351, !1, !"__UNIQUE_ID_author351", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/rdc/r6040.c", i32 151, i32 1}
!2 = !{ptr @__UNIQUE_ID_file352, !3, !"__UNIQUE_ID_file352", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/rdc/r6040.c", i32 154, i32 1}
!4 = !{ptr @__UNIQUE_ID_license353, !3, !"__UNIQUE_ID_license353", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_description354, !6, !"__UNIQUE_ID_description354", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/rdc/r6040.c", i32 155, i32 1}
!7 = !{ptr @__UNIQUE_ID_version355, !8, !"__UNIQUE_ID_version355", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/rdc/r6040.c", i32 156, i32 1}
!9 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__modver_attr, !8, !"__modver_attr", i1 false, i1 false}
!13 = !{ptr @__initcall__kmod_r6040__356_1212_r6040_driver_init6, !14, !"__initcall__kmod_r6040__356_1212_r6040_driver_init6", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/rdc/r6040.c", i32 1212, i32 1}
!15 = !{ptr @__exitcall_r6040_driver_exit, !14, !"__exitcall_r6040_driver_exit", i1 false, i1 false}
!16 = !{ptr @r6040_driver, !17, !"r6040_driver", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/rdc/r6040.c", i32 1205, i32 26}
!18 = !{ptr @r6040_pci_tbl, !19, !"r6040_pci_tbl", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/rdc/r6040.c", i32 1199, i32 35}
!20 = !{ptr @r6040_init_one.card_idx, !21, !"card_idx", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/rdc/r6040.c", i32 1033, i32 13}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/rdc/r6040.c", i32 1037, i32 2}
!24 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @r6040_init_one._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @r6040_init_one._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/rdc/r6040.c", i32 1046, i32 3}
!30 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @r6040_init_one._entry.6, !29, !"_entry", i1 false, i1 false}
!33 = !{ptr @r6040_init_one._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @r6040_init_one._entry.11, !35, !"_entry", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/rdc/r6040.c", i32 1051, i32 3}
!36 = !{ptr @r6040_init_one._entry_ptr.12, !35, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/rdc/r6040.c", i32 1057, i32 3}
!39 = !{ptr @r6040_init_one._entry.13, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @r6040_init_one._entry_ptr.15, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/rdc/r6040.c", i32 1075, i32 3}
!43 = !{ptr @r6040_init_one._entry.16, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @r6040_init_one._entry_ptr.18, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/rdc/r6040.c", i32 1081, i32 3}
!47 = !{ptr @r6040_init_one._entry.19, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @r6040_init_one._entry_ptr.21, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @r6040_init_one.__key, !50, !"__key", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/rdc/r6040.c", i32 1099, i32 2}
!51 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/rdc/r6040.c", i32 1113, i32 20}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/rdc/r6040.c", i32 1134, i32 3}
!56 = !{ptr @r6040_init_one._entry.24, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @r6040_init_one._entry_ptr.26, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/rdc/r6040.c", i32 1142, i32 22}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/rdc/r6040.c", i32 1143, i32 45}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/rdc/r6040.c", i32 1148, i32 3}
!64 = !{ptr @r6040_init_one._entry.29, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @r6040_init_one._entry_ptr.31, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/rdc/r6040.c", i32 1154, i32 3}
!68 = !{ptr @r6040_init_one._entry.32, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @r6040_init_one._entry_ptr.34, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/rdc/r6040.c", i32 1161, i32 3}
!72 = !{ptr @r6040_init_one._entry.35, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @r6040_init_one._entry_ptr.37, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @version, !75, !"version", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/rdc/r6040.c", i32 195, i32 13}
!76 = !{ptr @r6040_netdev_ops, !77, !"r6040_netdev_ops", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/rdc/r6040.c", i32 956, i32 36}
!78 = distinct !{null, !79, !"__already_done", i1 false, i1 false}
!79 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!80 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/rdc/r6040.c", i32 816, i32 19}
!84 = distinct !{null, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../include/linux/netdevice.h", i32 4690, i32 9}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/rdc/r6040.c", i32 426, i32 19}
!88 = !{ptr @netdev_ethtool_ops, !89, !"netdev_ethtool_ops", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/rdc/r6040.c", i32 947, i32 33}
!90 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/rdc/r6040.c", i32 943, i32 25}
!92 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/rdc/r6040.c", i32 1005, i32 3}
!94 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @r6040_mii_probe._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @r6040_mii_probe._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.47, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/rdc/r6040.c", i32 1013, i32 3}
!99 = !{ptr @r6040_mii_probe._entry.46, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @r6040_mii_probe._entry_ptr.48, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{!"sp"}
!102 = !{i32 1, !"wchar_size", i32 2}
!103 = !{i32 1, !"min_enum_size", i32 4}
!104 = !{i32 8, !"branch-target-enforcement", i32 0}
!105 = !{i32 8, !"sign-return-address", i32 0}
!106 = !{i32 8, !"sign-return-address-all", i32 0}
!107 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!108 = !{i32 7, !"uwtable", i32 1}
!109 = !{i32 7, !"frame-pointer", i32 2}
!110 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!111 = !{!"auto-init"}
!112 = !{i64 4665377}
!113 = !{i64 2152205952}
!114 = !{i64 2152207369}
!115 = !{i64 4665177}
!116 = !{!"branch_weights", i32 2000, i32 1}
!117 = !{!"branch_weights", i32 1, i32 2000}
!118 = !{i64 2155420514, i64 2155421002, i64 2155420551, i64 2155420607, i64 2155420641, i64 2155420665, i64 2155420706, i64 2155420727, i64 2155420755, i64 2155420789}
!119 = !{i64 4665995}
!120 = !{i64 2152205340}
!121 = !{i64 2156795329, i64 2156795826, i64 2156795366, i64 2156795422, i64 2156795456, i64 2156795480, i64 2156795521, i64 2156795542, i64 2156795570, i64 2156795604}
