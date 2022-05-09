; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/realtek/8139cp.c_pt.bc'
source_filename = "../drivers/net/ethernet/realtek/8139cp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.124 }
%union.anon.124 = type { ptr }
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
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.anon.153 = type { [32 x i8] }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.148, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.148 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.130, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.147, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.130 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.147 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.cp_private = type { ptr, ptr, %struct.spinlock, i32, %struct.napi_struct, ptr, i32, i16, %struct.cp_extra_stats, [88 x i8], i32, i32, ptr, [64 x ptr], [116 x i8], i32, i32, ptr, [64 x ptr], [64 x i32], i32, i8, i32, %struct.mii_if_info, [72 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.cp_extra_stats = type { i32 }
%struct.mii_if_info = type { i32, i32, i32, i32, i8, ptr, ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.cp_desc = type { i32, i32, i64 }
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
%struct.page = type { i32, %union.anon.2, %union.anon.123, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.123 = type { %struct.atomic_t }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.vlan_ethhdr = type { %union.anon.150, i16, i16, i16 }
%union.anon.150 = type { %struct.anon.151 }
%struct.anon.151 = type { [6 x i8], [6 x i8] }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.ifreq = type { %union.anon.131, %union.anon.132 }
%union.anon.131 = type { [16 x i8] }
%union.anon.132 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_regs = type { i32, i32, i32, [0 x i8] }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.ethtool_eeprom = type { i32, i32, i32, i32, [0 x i8] }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cp_dma_stats = type { i64, i64, i64, i32, i16, i16, i32, i32, i64, i64, i32, i16, i16 }

@__UNIQUE_ID_author476 = internal constant [46 x i8] c"8139cp.author=Jeff Garzik <jgarzik@pobox.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description477 = internal constant [72 x i8] c"8139cp.description=RealTek RTL-8139C+ series 10/100 PCI Ethernet driver\00", section ".modinfo", align 1
@__UNIQUE_ID_version478 = internal constant [19 x i8] c"8139cp.version=1.3\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"8139cp\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.3\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file479 = internal constant [48 x i8] c"8139cp.file=drivers/net/ethernet/realtek/8139cp\00", section ".modinfo", align 1
@__UNIQUE_ID_license480 = internal constant [19 x i8] c"8139cp.license=GPL\00", section ".modinfo", align 1
@__param_str_debug = internal constant [13 x i8] c"8139cp.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype481 = internal constant [26 x i8] c"8139cp.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug482 = internal constant [58 x i8] c"8139cp.parm=debug:8139cp: bitmapped message enable number\00", section ".modinfo", align 1
@__param_str_multicast_filter_limit = internal constant [30 x i8] c"8139cp.multicast_filter_limit\00", align 1
@multicast_filter_limit = internal global { i32, [28 x i8] } { i32 32, [28 x i8] zeroinitializer }, align 32
@__param_multicast_filter_limit = internal constant %struct.kernel_param { ptr @__param_str_multicast_filter_limit, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @multicast_filter_limit } }, section "__param", align 4
@__UNIQUE_ID_multicast_filter_limittype483 = internal constant [43 x i8] c"8139cp.parmtype=multicast_filter_limit:int\00", section ".modinfo", align 1
@__UNIQUE_ID_multicast_filter_limit484 = internal constant [90 x i8] c"8139cp.parm=multicast_filter_limit:8139cp: maximum number of filtered multicast addresses\00", section ".modinfo", align 1
@__initcall__kmod_8139cp__496_2121_cp_driver_init6 = internal global ptr @cp_driver_init, section ".initcall6.init", align 4
@cp_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @cp_pci_tbl, ptr @cp_init_one, ptr @cp_remove_one, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cp_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_cp_driver_exit = internal global ptr @cp_driver_exit, section ".exitcall.exit", align 4
@cp_pci_tbl = internal constant { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 4332, i32 33081, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 855, i32 10, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@cp_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @cp_suspend, ptr @cp_resume, ptr @cp_suspend, ptr @cp_resume, ptr @cp_suspend, ptr @cp_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@cp_init_one.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@cp_init_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1896, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\0168139cp: %s\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cp_init_one\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/net/ethernet/realtek/8139cp.c\00", [58 x i8] zeroinitializer }, align 32
@cp_init_one._entry_ptr = internal global ptr @cp_init_one._entry, section ".printk_index", align 4
@version = internal global { [56 x i8], [40 x i8] } { [56 x i8] c"8139cp: 10/100 PCI Ethernet driver v1.3 (Mar 22, 2004)\0A\00", [40 x i8] zeroinitializer }, align 32
@cp_init_one._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 1902, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"This (id %04x:%04x rev %02x) is not an 8139C+ compatible chip, use 8139too\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cp_init_one._entry_ptr.10 = internal global ptr @cp_init_one._entry.6, section ".printk_index", align 4
@cp_init_one.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&cp->lock\00", [22 x i8] zeroinitializer }, align 32
@cp_init_one._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.5, i32 1939, ptr @.str.14, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"no MMIO resource\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@cp_init_one._entry_ptr.15 = internal global ptr @cp_init_one._entry.12, section ".printk_index", align 4
@cp_init_one._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.4, ptr @.str.5, i32 1945, ptr @.str.14, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"MMIO resource (%llx) too small\0A\00", [32 x i8] zeroinitializer }, align 32
@cp_init_one._entry_ptr.18 = internal global ptr @cp_init_one._entry.16, section ".printk_index", align 4
@cp_init_one._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.4, ptr @.str.5, i32 1959, ptr @.str.14, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"No usable DMA configuration, aborting\0A\00", [57 x i8] zeroinitializer }, align 32
@cp_init_one._entry_ptr.21 = internal global ptr @cp_init_one._entry.19, section ".printk_index", align 4
@cp_init_one._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.4, ptr @.str.5, i32 1975, ptr @.str.14, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Cannot map PCI MMIO (%Lx@%Lx)\0A\00", [33 x i8] zeroinitializer }, align 32
@cp_init_one._entry_ptr.24 = internal global ptr @cp_init_one._entry.22, section ".printk_index", align 4
@cp_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @cp_open, ptr @cp_close, ptr @cp_start_xmit, ptr @cp_features_check, ptr null, ptr null, ptr @cp_set_rx_mode, ptr @cp_set_mac_address, ptr @eth_validate_addr, ptr null, ptr @cp_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @cp_change_mtu, ptr null, ptr @cp_tx_timeout, ptr null, ptr null, ptr null, ptr @cp_get_stats, ptr null, ptr null, ptr @cp_poll_controller, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cp_set_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@cp_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @cp_get_drvinfo, ptr @cp_get_regs_len, ptr @cp_get_regs, ptr @cp_get_wol, ptr @cp_set_wol, ptr @cp_get_msglevel, ptr @cp_set_msglevel, ptr @cp_nway_reset, ptr @ethtool_op_get_link, ptr null, ptr @cp_get_eeprom_len, ptr @cp_get_eeprom, ptr @cp_set_eeprom, ptr null, ptr null, ptr @cp_get_ringparam, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cp_get_strings, ptr null, ptr @cp_get_ethtool_stats, ptr null, ptr null, ptr null, ptr null, ptr @cp_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cp_get_link_ksettings, ptr @cp_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"RTL-8139C+ at 0x%p, %pM, IRQ %d\0A\00", [63 x i8] zeroinitializer }, align 32
@mii_2_8139_map = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bd\00\00fhj\00", [24 x i8] zeroinitializer }, align 32
@cp_open.__UNIQUE_ID_ddebug492 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.26, ptr @.str.5, ptr @.str.27, i8 1, i8 40, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cp_open\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"enabling interface\0A\00", [44 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hardware reset timeout\0A\00", [40 x i8] zeroinitializer }, align 32
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@cp_interrupt.__UNIQUE_ID_ddebug487 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.31, ptr @.str.5, ptr @.str.32, i8 0, i8 -108, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cp_interrupt\00", [19 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"intr, status %04x cmd %02x cpcmd %04x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"PCI bus error, status=%04x, PCI status=%04x\0A\00", [51 x i8] zeroinitializer }, align 32
@cp_tx.__UNIQUE_ID_ddebug488 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.34, ptr @.str.5, ptr @.str.35, i8 0, i8 -88, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cp_tx\00", [26 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tx err, status 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@cp_tx.__UNIQUE_ID_ddebug489 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.34, ptr @.str.5, ptr @.str.36, i8 0, i8 -84, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tx done, slot %d\0A\00", [46 x i8] zeroinitializer }, align 32
@cp_close.__UNIQUE_ID_ddebug493 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.37, ptr @.str.5, ptr @.str.38, i8 1, i8 49, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cp_close\00", [23 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"disabling interface\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"BUG! Tx Ring full when queue awake!\0A\00", [59 x i8] zeroinitializer }, align 32
@cp_start_xmit.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.40 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"netdevice: %s%s: Net bug: GSO size %d too large for 8139CP\0A\00", [36 x i8] zeroinitializer }, align 32
@cp_start_xmit.__already_done.41 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.42 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Net bug: asked to checksum invalid Legacy IP packet\0A\00", [43 x i8] zeroinitializer }, align 32
@cp_start_xmit.__UNIQUE_ID_ddebug490 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.43, ptr @.str.5, ptr @.str.44, i8 0, i8 -56, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cp_start_xmit\00", [18 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"tx queued, slot %d, skblen %d\0A\00", [33 x i8] zeroinitializer }, align 32
@cp_start_xmit.__UNIQUE_ID_ddebug491 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.43, ptr @.str.5, ptr @.str.45, i8 0, i8 -40, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"tx queued, slots %d-%d, skblen %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(unnamed net_device)\00", [43 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c" (uninitialized)\00", [47 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.49 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c" (unregistering)\00", [47 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c" (unregistered)\00", [16 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" (released)\00", [20 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" (dummy)\00", [23 x i8] zeroinitializer }, align 32
@netdev_reg_state.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.53 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/netdevice.h\00", [38 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: unknown reg_state %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" (unknown)\00", [21 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Transmit timeout, status %2x %4x %4x %4x\0A\00", [54 x i8] zeroinitializer }, align 32
@cp_tx_timeout.__UNIQUE_ID_ddebug494 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.57, ptr @.str.5, ptr @.str.58, i8 1, i8 56, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cp_tx_timeout\00", [18 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"TX ring head %d tail %d desc %x\0A\00", [63 x i8] zeroinitializer }, align 32
@cp_tx_timeout.__UNIQUE_ID_ddebug495 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.57, ptr @.str.5, ptr @.str.59, i8 1, i8 58, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"TX slot %d @%p: %08x (%08x) %08x %llx %p\0A\00", [54 x i8] zeroinitializer }, align 32
@cp_rx_poll.__UNIQUE_ID_ddebug486 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.60, ptr @.str.5, ptr @.str.61, i8 0, i8 127, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cp_rx_poll\00", [21 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rx slot %d status 0x%x len %d\0A\00", [33 x i8] zeroinitializer }, align 32
@cp_rx_err_acct.__UNIQUE_ID_ddebug485 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.62, ptr @.str.5, ptr @.str.63, i8 0, i8 109, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cp_rx_err_acct\00", [17 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"rx err, slot %d status 0x%x len %d\0A\00", [60 x i8] zeroinitializer }, align 32
@ethtool_stats_keys = internal constant { [14 x %struct.anon.153], [96 x i8] } { [14 x %struct.anon.153] [%struct.anon.153 { [32 x i8] c"tx_ok\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.153 { [32 x i8] c"rx_ok\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.153 { [32 x i8] c"tx_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.153 { [32 x i8] c"rx_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.153 { [32 x i8] c"rx_fifo\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.153 { [32 x i8] c"frame_align\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.153 { [32 x i8] c"tx_ok_1col\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.153 { [32 x i8] c"tx_ok_mcol\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.153 { [32 x i8] c"rx_ok_phys\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.153 { [32 x i8] c"rx_ok_bcast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.153 { [32 x i8] c"rx_ok_mcast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.153 { [32 x i8] c"tx_abort\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.153 { [32 x i8] c"tx_underrun\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.153 { [32 x i8] c"rx_frags\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }], [96 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@switch.table.netdev_reg_state = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 87, i32 1 }
@___asan_gen_.75 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 90, i32 12 }
@___asan_gen_.78 = private unnamed_addr constant [23 x i8] c"multicast_filter_limit\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 96, i32 12 }
@___asan_gen_.81 = private unnamed_addr constant [10 x i8] c"cp_driver\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 2113, i32 26 }
@___asan_gen_.84 = private unnamed_addr constant [11 x i8] c"cp_pci_tbl\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 2104, i32 35 }
@___asan_gen_.87 = private unnamed_addr constant [10 x i8] c"cp_pm_ops\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 2111, i32 8 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 1896, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 82, i32 13 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 1900, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 1915, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 1939, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 1944, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 1958, i32 4 }
@___asan_gen_.144 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 1973, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant [14 x i8] c"cp_netdev_ops\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 1867, i32 36 }
@___asan_gen_.153 = private unnamed_addr constant [15 x i8] c"cp_ethtool_ops\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 1585, i32 33 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 2012, i32 19 }
@___asan_gen_.159 = private unnamed_addr constant [15 x i8] c"mii_2_8139_map\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 1292, i32 19 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 1185, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 326, i32 6 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 984, i32 22 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 592, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 620, i32 19 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 673, i32 5 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 689, i32 5 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 1221, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 747, i32 19 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 756, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 772, i32 4 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 799, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 864, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 4963, i32 10 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 4975, i32 36 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 4976, i32 33 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 4977, i32 36 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 4978, i32 35 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 4979, i32 31 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 4980, i32 28 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 4983, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant [29 x i8] c"../include/linux/netdevice.h\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 4984, i32 9 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 1244, i32 19 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 1250, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 1253, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 507, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 437, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant [19 x i8] c"ethtool_stats_keys\00", align 1
@___asan_gen_.274 = private constant [41 x i8] c"../drivers/net/ethernet/realtek/8139cp.c\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 389, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant [30 x i8] c"switch.table.netdev_reg_state\00", align 1
@llvm.compiler.used = appending global [92 x ptr] [ptr @__UNIQUE_ID_author476, ptr @__UNIQUE_ID_debug482, ptr @__UNIQUE_ID_debugtype481, ptr @__UNIQUE_ID_description477, ptr @__UNIQUE_ID_file479, ptr @__UNIQUE_ID_license480, ptr @__UNIQUE_ID_multicast_filter_limit484, ptr @__UNIQUE_ID_multicast_filter_limittype483, ptr @__UNIQUE_ID_version478, ptr @__exitcall_cp_driver_exit, ptr @__initcall__kmod_8139cp__496_2121_cp_driver_init6, ptr @__modver_attr, ptr @__param_debug, ptr @__param_multicast_filter_limit, ptr @cp_driver_exit, ptr @cp_init_one._entry, ptr @cp_init_one._entry.12, ptr @cp_init_one._entry.16, ptr @cp_init_one._entry.19, ptr @cp_init_one._entry.22, ptr @cp_init_one._entry.6, ptr @cp_init_one._entry_ptr, ptr @cp_init_one._entry_ptr.10, ptr @cp_init_one._entry_ptr.15, ptr @cp_init_one._entry_ptr.18, ptr @cp_init_one._entry_ptr.21, ptr @cp_init_one._entry_ptr.24, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @debug, ptr @multicast_filter_limit, ptr @cp_driver, ptr @cp_pci_tbl, ptr @cp_pm_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @version, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @cp_init_one.__key, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @cp_netdev_ops, ptr @cp_ethtool_ops, ptr @.str.25, ptr @mii_2_8139_map, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @ethtool_stats_keys, ptr @switch.table.netdev_reg_state], section "llvm.metadata"
@0 = internal global [71 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @multicast_filter_limit to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp_pci_tbl to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp_init_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @version to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp_init_one._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp_init_one.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp_init_one._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp_init_one._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp_init_one._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp_init_one._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mii_2_8139_map to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethtool_stats_keys to i32), i32 448, i32 544, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.netdev_reg_state to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cp_driver_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @cp_driver, ptr noundef null, ptr noundef nonnull @.str.1) #14
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cp_driver_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @pci_unregister_driver(ptr noundef nonnull @cp_driver) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cp_init_one(ptr noundef %pdev, ptr nocapture noundef readnone %ent) #2 align 64 {
entry:
  %addr = alloca [3 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #14
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %addr, align 2, !annotation !171
  %1 = getelementptr inbounds [3 x i16], ptr %addr, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %1, align 2, !annotation !171
  %3 = getelementptr inbounds [3 x i16], ptr %addr, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %3, align 2, !annotation !171
  %.b282 = load i1, ptr @cp_init_one.__already_done, align 1
  br i1 %.b282, label %entry.if.end_crit_edge, label %if.then, !prof !172

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cp_init_one.__already_done, align 1
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @version) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 7
  %5 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %vendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4332, i16 %6)
  %cmp = icmp eq i16 %6, 4332
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end31_crit_edge

if.end.if.end31_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

land.lhs.true:                                    ; preds = %if.end
  %device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %7 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32455, i16 %8)
  %cmp14 = icmp eq i16 %8, -32455
  br i1 %cmp14, label %land.lhs.true16, label %land.lhs.true.if.end31_crit_edge

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

land.lhs.true16:                                  ; preds = %land.lhs.true
  %revision = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 12
  %9 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %10)
  %cmp18 = icmp ult i8 %10, 32
  br i1 %cmp18, label %do.end23, label %land.lhs.true16.if.end31_crit_edge

land.lhs.true16.if.end31_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

do.end23:                                         ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #16
  %conv17 = zext i8 %10 to i32
  %dev24 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev24, ptr noundef nonnull @.str.7, i32 noundef 4332, i32 noundef 33081, i32 noundef %conv17) #17
  br label %cleanup

if.end31:                                         ; preds = %land.lhs.true16.if.end31_crit_edge, %land.lhs.true.if.end31_crit_edge, %if.end.if.end31_crit_edge
  %call32 = tail call ptr @alloc_etherdev_mqs(i32 noundef 1408, i32 noundef 1, i32 noundef 1) #14
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %if.end31.cleanup_crit_edge, label %if.end35

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end35:                                         ; preds = %if.end31
  %dev36 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %parent = getelementptr inbounds %struct.net_device, ptr %call32, i32 0, i32 133, i32 1
  %11 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dev36, ptr %parent, align 8
  %add.ptr.i = getelementptr i8, ptr %call32, i32 2304
  %pdev39 = getelementptr i8, ptr %call32, i32 2584
  %12 = ptrtoint ptr %pdev39 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %pdev, ptr %pdev39, align 8
  %dev40 = getelementptr i8, ptr %call32, i32 2308
  %13 = ptrtoint ptr %dev40 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call32, ptr %dev40, align 4
  %14 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp41 = icmp slt i32 %14, 0
  %spec.select = select i1 %cmp41, i32 7, i32 %14
  %msg_enable = getelementptr i8, ptr %call32, i32 2356
  %15 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %spec.select, ptr %msg_enable, align 4
  %lock = getelementptr i8, ptr %call32, i32 2312
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.11, ptr noundef nonnull @cp_init_one.__key, i16 noundef signext 3) #14
  %mii_if = getelementptr i8, ptr %call32, i32 3608
  %dev47 = getelementptr i8, ptr %call32, i32 3628
  %16 = ptrtoint ptr %dev47 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call32, ptr %dev47, align 4
  %mdio_read = getelementptr i8, ptr %call32, i32 3632
  %17 = ptrtoint ptr %mdio_read to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @mdio_read, ptr %mdio_read, align 8
  %mdio_write = getelementptr i8, ptr %call32, i32 3636
  %18 = ptrtoint ptr %mdio_write to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @mdio_write, ptr %mdio_write, align 4
  %19 = ptrtoint ptr %mii_if to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 32, ptr %mii_if, align 8
  %phy_id_mask = getelementptr i8, ptr %call32, i32 3616
  %20 = ptrtoint ptr %phy_id_mask to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 31, ptr %phy_id_mask, align 8
  %reg_num_mask = getelementptr i8, ptr %call32, i32 3620
  %21 = ptrtoint ptr %reg_num_mask to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 31, ptr %reg_num_mask, align 4
  %22 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev40, align 4
  %mtu1.i = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 20
  %24 = ptrtoint ptr %mtu1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mtu1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500, i32 %25)
  %cmp.i = icmp ugt i32 %25, 1500
  %add2.i = add i32 %25, 22
  %spec.select.i = select i1 %cmp.i, i32 %add2.i, i32 1536
  %26 = getelementptr i8, ptr %call32, i32 3596
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %spec.select.i, ptr %26, align 4
  %call53 = tail call i32 @pci_enable_device(ptr noundef %pdev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %if.end35.err_out_free_crit_edge

if.end35.err_out_free_crit_edge:                  ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_out_free

if.end56:                                         ; preds = %if.end35
  %call57 = tail call i32 @pci_set_mwi(ptr noundef %pdev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end60, label %if.end56.err_out_disable_crit_edge

if.end56.err_out_disable_crit_edge:               ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_out_disable

if.end60:                                         ; preds = %if.end56
  %call61 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str.1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end64, label %if.end60.err_out_mwi_crit_edge

if.end60.err_out_mwi_crit_edge:                   ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_out_mwi

if.end64:                                         ; preds = %if.end60
  %arrayidx = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool65.not = icmp eq i32 %29, 0
  br i1 %tobool65.not, label %if.then66, label %if.end71

if.then66:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev36, ptr noundef nonnull @.str.13) #17
  br label %err_out_res

if.end71:                                         ; preds = %if.end64
  %end = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1, i32 1
  %30 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp74 = icmp eq i32 %31, 0
  %sub = sub i32 %31, %29
  %add = add i32 %sub, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %add)
  %phi.cmp = icmp ult i32 %add, 256
  %cond85 = select i1 %cmp74, i1 true, i1 %phi.cmp
  br i1 %cond85, label %if.then88, label %if.end111

if.then88:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #16
  %spec.select284 = select i1 %cmp74, i32 0, i32 %add
  %conv110 = zext i32 %spec.select284 to i64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev36, ptr noundef nonnull @.str.17, i64 noundef %conv110) #17
  br label %err_out_res

if.end111:                                        ; preds = %if.end71
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev36, i64 noundef 4294967295) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i283 = icmp eq i32 %call.i, 0
  br i1 %cmp.i283, label %if.end120, label %do.end118

do.end118:                                        ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev36, ptr noundef nonnull @.str.20) #17
  br label %err_out_res

if.end120:                                        ; preds = %if.end111
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev36, i64 noundef 4294967295) #14
  %cpcmd = getelementptr i8, ptr %call32, i32 2592
  %32 = ptrtoint ptr %cpcmd to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 43, ptr %cpcmd, align 32
  %features = getelementptr inbounds %struct.net_device, ptr %call32, i32 0, i32 23
  %33 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %features, align 16
  %or127 = or i64 %34, 1099511627776
  store i64 %or127, ptr %features, align 16
  %hw_features = getelementptr inbounds %struct.net_device, ptr %call32, i32 0, i32 24
  %35 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %hw_features, align 8
  %or128 = or i64 %36, 1099511627776
  store i64 %or128, ptr %hw_features, align 8
  %call129 = tail call ptr @ioremap(i32 noundef %29, i32 noundef 256) #14
  %tobool130.not = icmp eq ptr %call129, null
  br i1 %tobool130.not, label %if.then131, label %if.end155

if.then131:                                       ; preds = %if.end120
  %37 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp139 = icmp eq i32 %38, 0
  br i1 %cmp139, label %if.then131.cond.end151_crit_edge, label %cond.false142

if.then131.cond.end151_crit_edge:                 ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end151

cond.false142:                                    ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #16
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx, align 8
  %sub149 = add i32 %38, 1
  %add150 = sub i32 %sub149, %40
  br label %cond.end151

cond.end151:                                      ; preds = %cond.false142, %if.then131.cond.end151_crit_edge
  %cond152 = phi i32 [ %add150, %cond.false142 ], [ 0, %if.then131.cond.end151_crit_edge ]
  %conv153 = zext i32 %cond152 to i64
  %conv154 = zext i32 %29 to i64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev36, ptr noundef nonnull @.str.23, i64 noundef %conv153, i64 noundef %conv154) #17
  br label %err_out_res

if.end155:                                        ; preds = %if.end120
  %41 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call129, ptr %add.ptr.i, align 128
  tail call fastcc void @cp_stop_hw(ptr noundef %add.ptr.i)
  %call157 = tail call fastcc zeroext i16 @read_eeprom(ptr noundef nonnull %call129, i32 noundef 0, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32471, i16 %call157)
  %cmp159 = icmp eq i16 %call157, -32471
  %cond161 = select i1 %cmp159, i32 8, i32 6
  %call165 = tail call fastcc zeroext i16 @read_eeprom(ptr noundef nonnull %call129, i32 noundef 7, i32 noundef %cond161)
  %42 = tail call i16 @llvm.bswap.i16(i16 %call165)
  %43 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %addr, align 2
  %call165.1 = tail call fastcc zeroext i16 @read_eeprom(ptr noundef nonnull %call129, i32 noundef 8, i32 noundef %cond161)
  %44 = tail call i16 @llvm.bswap.i16(i16 %call165.1)
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %1, align 2
  %call165.2 = tail call fastcc zeroext i16 @read_eeprom(ptr noundef nonnull %call129, i32 noundef 9, i32 noundef %cond161)
  %46 = tail call i16 @llvm.bswap.i16(i16 %call165.2)
  %47 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %3, align 2
  call void @dev_addr_mod(ptr noundef nonnull %call32, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #14
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call32, i32 0, i32 16
  %48 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @cp_netdev_ops, ptr %netdev_ops, align 8
  %napi = getelementptr i8, ptr %call32, i32 2360
  call void @netif_napi_add(ptr noundef nonnull %call32, ptr noundef %napi, ptr noundef nonnull @cp_rx_poll, i32 noundef 16) #14
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call32, i32 0, i32 44
  %49 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @cp_ethtool_ops, ptr %ethtool_ops, align 16
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call32, i32 0, i32 115
  %50 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 600, ptr %watchdog_timeo, align 4
  %51 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %features, align 16
  %or168 = or i64 %52, 65923
  store i64 %or168, ptr %features, align 16
  %53 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %hw_features, align 8
  %or175 = or i64 %54, 65923
  store i64 %or175, ptr %hw_features, align 8
  %vlan_features = getelementptr inbounds %struct.net_device, ptr %call32, i32 0, i32 26
  %55 = ptrtoint ptr %vlan_features to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 65571, ptr %vlan_features, align 8
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %call32, i32 0, i32 30
  %56 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 60, ptr %min_mtu, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %call32, i32 0, i32 31
  %57 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 4096, ptr %max_mtu, align 4
  %call176 = call i32 @register_netdev(ptr noundef nonnull %call32) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call176)
  %tobool177.not = icmp eq i32 %call176, 0
  br i1 %tobool177.not, label %if.end179, label %err_out_iomap

if.end179:                                        ; preds = %if.end155
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %call32, i32 0, i32 86
  %58 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev_addr, align 64
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %60 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef nonnull %call32, ptr noundef nonnull @.str.25, ptr noundef nonnull %call129, ptr noundef %59, i32 noundef %61) #17
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %62 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call32, ptr %driver_data.i.i, align 4
  call void @pci_set_master(ptr noundef %pdev) #14
  %wol_enabled = getelementptr i8, ptr %call32, i32 3600
  %63 = ptrtoint ptr %wol_enabled to i32
  call void @__asan_load1_noabort(i32 %63)
  %bf.load = load i8, ptr %wol_enabled, align 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool180.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool180.not, label %if.end179.cleanup_crit_edge, label %if.then181

if.end179.cleanup_crit_edge:                      ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then181:                                       ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @cp_set_d3_state(ptr noundef %add.ptr.i)
  br label %cleanup

err_out_iomap:                                    ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #16
  call void @iounmap(ptr noundef nonnull %call129) #14
  br label %err_out_res

err_out_res:                                      ; preds = %err_out_iomap, %cond.end151, %do.end118, %if.then88, %if.then66
  %rc.0 = phi i32 [ -5, %if.then88 ], [ %call.i, %do.end118 ], [ %call176, %err_out_iomap ], [ -5, %cond.end151 ], [ -5, %if.then66 ]
  call void @pci_release_regions(ptr noundef %pdev) #14
  br label %err_out_mwi

err_out_mwi:                                      ; preds = %err_out_res, %if.end60.err_out_mwi_crit_edge
  %rc.1 = phi i32 [ %call61, %if.end60.err_out_mwi_crit_edge ], [ %rc.0, %err_out_res ]
  call void @pci_clear_mwi(ptr noundef %pdev) #14
  br label %err_out_disable

err_out_disable:                                  ; preds = %err_out_mwi, %if.end56.err_out_disable_crit_edge
  %rc.2 = phi i32 [ %call57, %if.end56.err_out_disable_crit_edge ], [ %rc.1, %err_out_mwi ]
  call void @pci_disable_device(ptr noundef %pdev) #14
  br label %err_out_free

err_out_free:                                     ; preds = %err_out_disable, %if.end35.err_out_free_crit_edge
  %rc.3 = phi i32 [ %call53, %if.end35.err_out_free_crit_edge ], [ %rc.2, %err_out_disable ]
  call void @free_netdev(ptr noundef nonnull %call32) #14
  br label %cleanup

cleanup:                                          ; preds = %err_out_free, %if.then181, %if.end179.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %do.end23
  %retval.0 = phi i32 [ -19, %do.end23 ], [ %rc.3, %err_out_free ], [ -12, %if.end31.cleanup_crit_edge ], [ 0, %if.then181 ], [ 0, %if.end179.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cp_remove_one(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  tail call void @unregister_netdev(ptr noundef %1) #14
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 128
  tail call void @iounmap(ptr noundef %3) #14
  %wol_enabled = getelementptr i8, ptr %1, i32 3600
  %4 = ptrtoint ptr %wol_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %wol_enabled, align 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call2 = tail call i32 @pci_set_power_state(ptr noundef %pdev, i32 noundef 0) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @pci_release_regions(ptr noundef %pdev) #14
  tail call void @pci_clear_mwi(ptr noundef %pdev) #14
  tail call void @pci_disable_device(ptr noundef %pdev) #14
  tail call void @free_netdev(ptr noundef %1) #14
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdio_read(ptr nocapture noundef readonly %dev, i32 noundef %phy_id, i32 noundef %location) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %location)
  %cmp = icmp slt i32 %location, 8
  br i1 %cmp, label %land.lhs.true, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

land.lhs.true:                                    ; preds = %entry
  %0 = lshr i32 140, %location
  %1 = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.not = icmp eq i32 %1, 0
  br i1 %tobool.not.not, label %cond.true, label %land.lhs.true.cond.end_crit_edge

land.lhs.true.cond.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.true:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx = getelementptr [8 x i8], ptr @mii_2_8139_map, i32 0, i32 %location
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr = getelementptr i8, ptr %5, i32 %conv
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #14, !srcloc !173
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !174
  %conv5 = zext i16 %7 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %land.lhs.true.cond.end_crit_edge, %entry.cond.end_crit_edge
  %cond = phi i32 [ %conv5, %cond.true ], [ 0, %land.lhs.true.cond.end_crit_edge ], [ 0, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdio_write(ptr nocapture noundef readonly %dev, i32 noundef %phy_id, i32 noundef %location, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %location)
  %cmp = icmp eq i32 %location, 0
  br i1 %cmp, label %do.body, label %if.else

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !175
  tail call void @arm_heavy_mb() #14
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr = getelementptr i8, ptr %1, i32 80
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 -64) #14, !srcloc !176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !177
  tail call void @arm_heavy_mb() #14
  %conv = trunc i32 %value to i16
  %2 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr5 = getelementptr i8, ptr %4, i32 98
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5, i16 %2) #14, !srcloc !178
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !179
  tail call void @arm_heavy_mb() #14
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr10 = getelementptr i8, ptr %6, i32 80
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr10, i8 0) #14, !srcloc !176
  br label %if.end23

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %location)
  %cmp11 = icmp slt i32 %location, 8
  br i1 %cmp11, label %land.lhs.true, label %if.else.if.end23_crit_edge

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

land.lhs.true:                                    ; preds = %if.else
  %7 = lshr i32 140, %location
  %8 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.not = icmp eq i32 %8, 0
  br i1 %tobool.not.not, label %do.body15, label %land.lhs.true.if.end23_crit_edge

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

do.body15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx = getelementptr [8 x i8], ptr @mii_2_8139_map, i32 0, i32 %location
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !180
  tail call void @arm_heavy_mb() #14
  %conv18 = trunc i32 %value to i16
  %9 = tail call i16 @llvm.bswap.i16(i16 %conv18)
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 128
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1
  %conv21 = zext i8 %13 to i32
  %add.ptr22 = getelementptr i8, ptr %11, i32 %conv21
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr22, i16 %9) #14, !srcloc !178
  br label %if.end23

if.end23:                                         ; preds = %do.body15, %land.lhs.true.if.end23_crit_edge, %if.else.if.end23_crit_edge, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_set_mwi(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cp_stop_hw(ptr nocapture noundef %cp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !181
  tail call void @arm_heavy_mb() #14
  %0 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cp, align 128
  %add.ptr = getelementptr i8, ptr %1, i32 62
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #14, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !182
  %3 = xor i16 %2, -1
  %4 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cp, align 128
  %add.ptr4 = getelementptr i8, ptr %5, i32 62
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr4, i16 %3) #14, !srcloc !178
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !183
  tail call void @arm_heavy_mb() #14
  %6 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cp, align 128
  %add.ptr9 = getelementptr i8, ptr %7, i32 60
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr9, i16 0) #14, !srcloc !178
  %8 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cp, align 128
  %add.ptr13 = getelementptr i8, ptr %9, i32 60
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr13) #14, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !185
  tail call void @arm_heavy_mb() #14
  %11 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cp, align 128
  %add.ptr21 = getelementptr i8, ptr %12, i32 55
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr21, i8 0) #14, !srcloc !176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !186
  tail call void @arm_heavy_mb() #14
  %13 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cp, align 128
  %add.ptr26 = getelementptr i8, ptr %14, i32 224
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr26, i16 0) #14, !srcloc !178
  %15 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cp, align 128
  %add.ptr30 = getelementptr i8, ptr %16, i32 224
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr30) #14, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !188
  tail call void @arm_heavy_mb() #14
  %18 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cp, align 128
  %add.ptr41 = getelementptr i8, ptr %19, i32 62
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr41) #14, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !189
  %21 = xor i16 %20, -1
  %22 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cp, align 128
  %add.ptr49 = getelementptr i8, ptr %23, i32 62
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr49, i16 %21) #14, !srcloc !178
  %24 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cp, align 128
  %add.ptr53 = getelementptr i8, ptr %25, i32 62
  %26 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr53) #14, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !190
  %rx_tail = getelementptr inbounds %struct.cp_private, ptr %cp, i32 0, i32 11
  %27 = ptrtoint ptr %rx_tail to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %rx_tail, align 4
  %tx_tail = getelementptr inbounds %struct.cp_private, ptr %cp, i32 0, i32 16
  %28 = ptrtoint ptr %tx_tail to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %tx_tail, align 4
  %tx_head = getelementptr inbounds %struct.cp_private, ptr %cp, i32 0, i32 15
  %29 = ptrtoint ptr %tx_head to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %tx_head, align 128
  %dev = getelementptr inbounds %struct.cp_private, ptr %cp, i32 0, i32 1
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %31, i32 0, i32 103
  %32 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %33, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state.i.i) #14
  %dql.i.i = getelementptr inbounds %struct.netdev_queue, ptr %33, i32 0, i32 15
  tail call void @dql_reset(ptr noundef %dql.i.i) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @read_eeprom(ptr noundef %ioaddr, i32 noundef %location, i32 noundef %addr_len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 80
  %shl = shl i32 6, %addr_len
  %or = or i32 %shl, %location
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !191
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 -128) #14, !srcloc !176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !192
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 -120) #14, !srcloc !176
  %0 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #14, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !194
  %add = add i32 %addr_len, 3
  tail call fastcc void @eeprom_cmd(ptr noundef %add.ptr, i32 noundef %or, i32 noundef %add)
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %i.031 = phi i32 [ 16, %entry ], [ %dec, %do.body.do.body_crit_edge ]
  %retval1.030 = phi i16 [ 0, %entry ], [ %or10, %do.body.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !195
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 -116) #14, !srcloc !176
  %1 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #14, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !196
  %shl3 = shl i16 %retval1.030, 1
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #14, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !197
  %3 = and i8 %2, 1
  %4 = zext i8 %3 to i16
  %or10 = or i16 %shl3, %4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !198
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 -120) #14, !srcloc !176
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #14, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !199
  %dec = add nsw i32 %i.031, -1
  %cmp = icmp ugt i32 %i.031, 1
  br i1 %cmp, label %do.body.do.body_crit_edge, label %for.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

for.end:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !200
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 0) #14, !srcloc !176
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #14, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !201
  ret i16 %or10
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cp_rx_poll(ptr noundef %napi, i32 noundef %budget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -56
  %dev1 = getelementptr i8, ptr %napi, i32 -52
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %rx_tail2 = getelementptr i8, ptr %napi, i32 332
  %2 = ptrtoint ptr %rx_tail2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_tail2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !202
  tail call void @arm_heavy_mb() #14
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 128
  %add.ptr3 = getelementptr i8, ptr %5, i32 62
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr3, i16 21248) #14, !srcloc !178
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %cmp226 = icmp sgt i32 %budget, 0
  br i1 %cmp226, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %rx_buf_sz = getelementptr i8, ptr %napi, i32 1236
  %rx_skb = getelementptr i8, ptr %napi, i32 340
  %rx_ring = getelementptr i8, ptr %napi, i32 336
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 6
  %cp_stats = getelementptr i8, ptr %napi, i32 236
  %msg_enable = getelementptr i8, ptr %napi, i32 -4
  %pdev = getelementptr i8, ptr %napi, i32 224
  br label %while.body

while.body:                                       ; preds = %rx_next.while.body_crit_edge, %while.body.lr.ph
  %rx_tail.0228 = phi i32 [ %3, %while.body.lr.ph ], [ %and95, %rx_next.while.body_crit_edge ]
  %rx.0227 = phi i32 [ 0, %while.body.lr.ph ], [ %rx.1, %rx_next.while.body_crit_edge ]
  %6 = ptrtoint ptr %rx_buf_sz to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_buf_sz, align 4
  %arrayidx = getelementptr [64 x ptr], ptr %rx_skb, i32 0, i32 %rx_tail.0228
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %do.body8, label %do.end15, !prof !203

do.body8:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/realtek/8139cp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 480, 0\0A.popsection", ""() #14, !srcloc !204
  unreachable

do.end15:                                         ; preds = %while.body
  %10 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_ring, align 8
  %arrayidx16 = getelementptr %struct.cp_desc, ptr %11, i32 %rx_tail.0228
  %12 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx16, align 8
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %tobool17.not = icmp sgt i32 %14, -1
  br i1 %tobool17.not, label %if.end19, label %do.end15.while.end_crit_edge

do.end15.while.end_crit_edge:                     ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.end19:                                         ; preds = %do.end15
  %and20 = and i32 %14, 8191
  %sub = add nsw i32 %and20, -4
  %addr = getelementptr %struct.cp_desc, ptr %11, i32 %rx_tail.0228, i32 2
  %15 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %addr, align 8
  %17 = tail call i64 @llvm.bswap.i64(i64 %16)
  %conv = trunc i64 %17 to i32
  %and21 = and i32 %14, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 805306368, i32 %and21)
  %cmp22.not = icmp eq i32 %and21, 805306368
  br i1 %cmp22.not, label %if.end26, label %if.then24

if.then24:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @cp_rx_err_acct(ptr noundef %add.ptr, i32 noundef %rx_tail.0228, i32 noundef %14, i32 noundef %sub)
  %18 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_dropped, align 8
  %inc = add i32 %19, 1
  store i32 %inc, ptr %rx_dropped, align 8
  %20 = ptrtoint ptr %cp_stats to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cp_stats, align 4
  %inc25 = add i32 %21, 1
  store i32 %inc25, ptr %cp_stats, align 4
  br label %rx_next

if.end26:                                         ; preds = %if.end19
  %and27 = and i32 %14, 5242880
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %do.body31, label %if.then29

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @cp_rx_err_acct(ptr noundef %add.ptr, i32 noundef %rx_tail.0228, i32 noundef %14, i32 noundef %sub)
  br label %rx_next

do.body31:                                        ; preds = %if.end26
  %22 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %msg_enable, align 4
  %and32 = and i32 %23, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %do.body31.do.end50_crit_edge, label %do.body35

do.body31.do.end50_crit_edge:                     ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end50

do.body35:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cp_rx_poll.__UNIQUE_ID_ddebug486, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cp_rx_poll, %if.then44)) #14
          to label %do.end50 [label %if.then44], !srcloc !205

if.then44:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @cp_rx_poll.__UNIQUE_ID_ddebug486, ptr noundef %1, ptr noundef nonnull @.str.61, i32 noundef %rx_tail.0228, i32 noundef %14, i32 noundef %sub) #14
  br label %do.end50

do.end50:                                         ; preds = %if.then44, %do.body35, %do.body31.do.end50_crit_edge
  %call.i = tail call ptr @__napi_alloc_skb(ptr noundef %napi, i32 noundef %7, i32 noundef 2592) #14
  %tobool52.not = icmp eq ptr %call.i, null
  br i1 %tobool52.not, label %if.then53, label %if.end57

if.then53:                                        ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #16
  %24 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx_dropped, align 8
  %inc56 = add i32 %25, 1
  store i32 %inc56, ptr %rx_dropped, align 8
  br label %rx_next

if.end57:                                         ; preds = %do.end50
  %26 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdev, align 8
  %dev58 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data, align 4
  %call.i207 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %29) #14
  br i1 %call.i207, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end57
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !172

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev58) #14
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44, i32 3
  %30 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %31, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %32 = ptrtoint ptr %dev58 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev58, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %33, %if.end.i.i ], [ %31, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.29, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #14
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @debug_dma_map_single(ptr noundef %dev58, ptr noundef %29, i32 noundef %7) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %34 = load ptr, ptr @mem_map, align 4
  %35 = ptrtoint ptr %29 to i32
  %sub.i = add i32 %35, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %34, i32 %shr.i
  %and.i = and i32 %35, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev58, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %7, i32 noundef 2, i32 noundef 0) #14
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i208 = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %36 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdev, align 8
  %dev61 = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev61, i32 noundef %retval.0.i208) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i208)
  %cmp.i = icmp eq i32 %retval.0.i208, -1
  br i1 %cmp.i, label %if.then64, label %if.end68

if.then64:                                        ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #16
  %38 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rx_dropped, align 8
  %inc67 = add i32 %39, 1
  store i32 %inc67, ptr %rx_dropped, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i, i32 noundef 0) #14
  br label %rx_next

if.end68:                                         ; preds = %dma_map_single_attrs.exit
  %40 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pdev, align 8
  %dev70 = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 44
  tail call void @dma_unmap_page_attrs(ptr noundef %dev70, i32 noundef %conv, i32 noundef %7, i32 noundef 2, i32 noundef 0) #14
  %shr.i209 = lshr i32 %14, 16
  %and.i210 = and i32 %shr.i209, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i210)
  %cmp.i211 = icmp eq i32 %and.i210, 1
  %and1.i = and i32 %14, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i = icmp eq i32 %and1.i, 0
  %or.cond.i = and i1 %tobool.not.i, %cmp.i211
  br i1 %or.cond.i, label %if.end68.if.then73_crit_edge, label %cp_rx_csum_ok.exit

if.end68.if.then73_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then73

cp_rx_csum_ok.exit:                               ; preds = %if.end68
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i210)
  %cmp2.i = icmp ne i32 %and.i210, 2
  %and4.i = and i32 %14, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp ne i32 %and4.i, 0
  %tobool72.not = or i1 %tobool5.not.i, %cmp2.i
  br i1 %tobool72.not, label %cp_rx_csum_ok.exit.if.end74_crit_edge, label %cp_rx_csum_ok.exit.if.then73_crit_edge

cp_rx_csum_ok.exit.if.then73_crit_edge:           ; preds = %cp_rx_csum_ok.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then73

cp_rx_csum_ok.exit.if.end74_crit_edge:            ; preds = %cp_rx_csum_ok.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end74

if.then73:                                        ; preds = %cp_rx_csum_ok.exit.if.then73_crit_edge, %if.end68.if.then73_crit_edge
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 15
  %42 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %42)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.clear = and i16 %bf.load, -1537
  %bf.set = or i16 %bf.clear, 512
  store i16 %bf.set, ptr %ip_summed, align 8
  br label %if.end74

if.end74:                                         ; preds = %if.then73, %cp_rx_csum_ok.exit.if.end74_crit_edge
  %call75 = tail call ptr @skb_put(ptr noundef nonnull %9, i32 noundef %sub) #14
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call.i, ptr %arrayidx, align 4
  %opts21.i = getelementptr %struct.cp_desc, ptr %11, i32 %rx_tail.0228, i32 1
  %44 = ptrtoint ptr %opts21.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %opts21.i, align 4
  %46 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev1, align 4
  %call.i213 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %9, ptr noundef %47) #14
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 15, i32 0, i32 18
  %48 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %call.i213, ptr %protocol.i, align 8
  %49 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev1, align 4
  %stats.i = getelementptr inbounds %struct.net_device, ptr %50, i32 0, i32 36
  %51 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %stats.i, align 8
  %inc.i = add i32 %52, 1
  store i32 %inc.i, ptr %stats.i, align 8
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 6
  %53 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %len.i, align 4
  %55 = load ptr, ptr %dev1, align 4
  %rx_bytes.i = getelementptr inbounds %struct.net_device, ptr %55, i32 0, i32 36, i32 2
  %56 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rx_bytes.i, align 8
  %add.i = add i32 %57, %54
  store i32 %add.i, ptr %rx_bytes.i, align 8
  %58 = and i32 %45, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.i214 = icmp eq i32 %58, 0
  br i1 %tobool.not.i214, label %if.end74.cp_rx_skb.exit_crit_edge, label %if.then.i215

if.end74.cp_rx_skb.exit_crit_edge:                ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #16
  br label %cp_rx_skb.exit

if.then.i215:                                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #16
  %59 = lshr i32 %45, 16
  %60 = trunc i32 %59 to i16
  %vlan_proto1.i.i = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 15, i32 0, i32 9
  %61 = ptrtoint ptr %vlan_proto1.i.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 -32512, ptr %vlan_proto1.i.i, align 8
  %vlan_tci2.i.i = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 15, i32 0, i32 10
  %62 = ptrtoint ptr %vlan_tci2.i.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %60, ptr %vlan_tci2.i.i, align 2
  %vlan_present.i.i = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 15, i32 0, i32 3
  %63 = ptrtoint ptr %vlan_present.i.i to i32
  call void @__asan_loadN_noabort(i32 %63, i32 4)
  %bf.load.i.i = load i32, ptr %vlan_present.i.i, align 2
  %bf.set.i.i = or i32 %bf.load.i.i, -2147483648
  store i32 %bf.set.i.i, ptr %vlan_present.i.i, align 2
  br label %cp_rx_skb.exit

cp_rx_skb.exit:                                   ; preds = %if.then.i215, %if.end74.cp_rx_skb.exit_crit_edge
  %call6.i = tail call i32 @napi_gro_receive(ptr noundef %napi, ptr noundef nonnull %9) #14
  %inc78 = add nsw i32 %rx.0227, 1
  br label %rx_next

rx_next:                                          ; preds = %cp_rx_skb.exit, %if.then64, %if.then53, %if.then29, %if.then24
  %mapping.0 = phi i32 [ %conv, %if.then24 ], [ %conv, %if.then29 ], [ %conv, %if.then64 ], [ %retval.0.i208, %cp_rx_skb.exit ], [ %conv, %if.then53 ]
  %rx.1 = phi i32 [ %rx.0227, %if.then24 ], [ %rx.0227, %if.then29 ], [ %rx.0227, %if.then64 ], [ %inc78, %cp_rx_skb.exit ], [ %rx.0227, %if.then53 ]
  %64 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rx_ring, align 8
  %opts2 = getelementptr %struct.cp_desc, ptr %65, i32 %rx_tail.0228, i32 1
  %66 = ptrtoint ptr %opts2 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %opts2, align 4
  %conv81 = zext i32 %mapping.0 to i64
  %67 = tail call i64 @llvm.bswap.i64(i64 %conv81)
  %68 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %rx_ring, align 8
  %addr84 = getelementptr %struct.cp_desc, ptr %69, i32 %rx_tail.0228, i32 2
  %70 = ptrtoint ptr %addr84 to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %67, ptr %addr84, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %rx_tail.0228)
  %cmp85 = icmp eq i32 %rx_tail.0228, 63
  %71 = ptrtoint ptr %rx_buf_sz to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %rx_buf_sz, align 4
  %. = select i1 %cmp85, i32 -1073741824, i32 -2147483648
  %or = or i32 %72, %.
  %73 = tail call i32 @llvm.bswap.i32(i32 %or)
  %74 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %arrayidx16, align 8
  %add = add i32 %rx_tail.0228, 1
  %and95 = and i32 %add, 63
  %cmp = icmp slt i32 %rx.1, %budget
  br i1 %cmp, label %rx_next.while.body_crit_edge, label %rx_next.while.end_crit_edge

rx_next.while.end_crit_edge:                      ; preds = %rx_next
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

rx_next.while.body_crit_edge:                     ; preds = %rx_next
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.end:                                        ; preds = %rx_next.while.end_crit_edge, %do.end15.while.end_crit_edge, %entry.while.end_crit_edge
  %rx.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %rx.0227, %do.end15.while.end_crit_edge ], [ %rx.1, %rx_next.while.end_crit_edge ]
  %rx_tail.0.lcssa = phi i32 [ %3, %entry.while.end_crit_edge ], [ %rx_tail.0228, %do.end15.while.end_crit_edge ], [ %and95, %rx_next.while.end_crit_edge ]
  %75 = ptrtoint ptr %rx_tail2 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %rx_tail.0.lcssa, ptr %rx_tail2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rx.0.lcssa, i32 %budget)
  %cmp104 = icmp slt i32 %rx.0.lcssa, %budget
  br i1 %cmp104, label %land.lhs.true, label %while.end.if.end134_crit_edge

while.end.if.end134_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end134

land.lhs.true:                                    ; preds = %while.end
  %call106 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %rx.0.lcssa) #14
  br i1 %call106, label %if.then108, label %land.lhs.true.if.end134_crit_edge

land.lhs.true.if.end134_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end134

if.then108:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %lock = getelementptr i8, ptr %napi, i32 -48
  %call115 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !206
  tail call void @arm_heavy_mb() #14
  %76 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %add.ptr, align 128
  %add.ptr125 = getelementptr i8, ptr %77, i32 60
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr125, i16 -128) #14, !srcloc !178
  %78 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %add.ptr, align 128
  %add.ptr127 = getelementptr i8, ptr %79, i32 60
  %80 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr127) #14, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !207
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call115) #14
  br label %if.end134

if.end134:                                        ; preds = %if.then108, %land.lhs.true.if.end134_crit_edge, %while.end.if.end134_crit_edge
  ret i32 %rx.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cp_set_d3_state(ptr nocapture noundef readonly %cp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.cp_private, ptr %cp, i32 0, i32 5
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %call = tail call i32 @pci_enable_wake(ptr noundef %1, i32 noundef 0, i1 noundef zeroext true) #14
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %call2 = tail call i32 @pci_set_power_state(ptr noundef %3, i32 noundef 3) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_clear_mwi(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_reset(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @eeprom_cmd(ptr noundef %ee_addr, i32 noundef %cmd, i32 noundef %cmd_len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %i.029 = add i32 %cmd_len, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.029)
  %cmp30 = icmp sgt i32 %i.029, -1
  br i1 %cmp30, label %entry.for.body_crit_edge, label %entry.do.body13_crit_edge

entry.do.body13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body13

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.031 = phi i32 [ %i.0, %for.body.for.body_crit_edge ], [ %i.029, %entry.for.body_crit_edge ]
  %shl = shl nuw i32 1, %i.031
  %and = and i32 %shl, %cmd
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !208
  tail call void @arm_heavy_mb() #14
  %conv = select i1 %tobool.not, i8 -120, i8 -118
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %ee_addr, i8 %conv) #14, !srcloc !176
  %0 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %ee_addr) #14, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !210
  tail call void @arm_heavy_mb() #14
  %conv7 = or i8 %conv, 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %ee_addr, i8 %conv7) #14, !srcloc !176
  %1 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %ee_addr) #14, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !211
  %i.0 = add nsw i32 %i.031, -1
  %cmp = icmp sgt i32 %i.031, 0
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.do.body13_crit_edge

for.body.do.body13_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body13

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

do.body13:                                        ; preds = %for.body.do.body13_crit_edge, %entry.do.body13_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !212
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %ee_addr, i8 -120) #14, !srcloc !176
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %ee_addr) #14, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !213
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cp_open(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %pdev = getelementptr i8, ptr %dev, i32 2584
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %irq1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 46
  %2 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq1, align 4
  %msg_enable = getelementptr i8, ptr %dev, i32 2356
  %4 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable, align 4
  %and = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.body2

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end10

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cp_open.__UNIQUE_ID_ddebug492, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cp_open, %if.then7)) #14
          to label %do.end10 [label %if.then7], !srcloc !205

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @cp_open.__UNIQUE_ID_ddebug492, ptr noundef %dev, ptr noundef nonnull @.str.27) #14
  br label %do.end10

do.end10:                                         ; preds = %if.then7, %do.body2, %entry.do.end10_crit_edge
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %ring_dma.i = getelementptr i8, ptr %dev, i32 3604
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef 2112, ptr noundef %ring_dma.i, i32 noundef 3264, i32 noundef 0) #14
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %do.end10.cleanup_crit_edge, label %if.end.i

do.end10.cleanup_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i:                                         ; preds = %do.end10
  %rx_ring.i = getelementptr i8, ptr %dev, i32 2696
  %8 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i.i, ptr %rx_ring.i, align 8
  %arrayidx.i = getelementptr %struct.cp_desc, ptr %call.i.i, i32 64
  %tx_ring.i = getelementptr i8, ptr %dev, i32 3080
  %9 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %arrayidx.i, ptr %tx_ring.i, align 8
  %call2.i = tail call fastcc i32 @cp_init_rings(ptr noundef %add.ptr.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %if.then3.i, label %cp_alloc_rings.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %10 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_ring.i, align 8
  %12 = ptrtoint ptr %ring_dma.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ring_dma.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef 2112, ptr noundef %11, i32 noundef %13, i32 noundef 0) #14
  br label %cleanup

cp_alloc_rings.exit:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool12.not = icmp eq i32 %call2.i, 0
  br i1 %tobool12.not, label %if.end14, label %cp_alloc_rings.exit.cleanup_crit_edge

cp_alloc_rings.exit.cleanup_crit_edge:            ; preds = %cp_alloc_rings.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end14:                                         ; preds = %cp_alloc_rings.exit
  %napi = getelementptr i8, ptr %dev, i32 2360
  tail call void @napi_enable(ptr noundef %napi) #14
  tail call fastcc void @cp_init_hw(ptr noundef %add.ptr.i)
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %3, ptr noundef nonnull @cp_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %dev, ptr noundef %dev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool16.not = icmp eq i32 %call.i, 0
  br i1 %tobool16.not, label %if.end18, label %err_out_hw

if.end18:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !214
  tail call void @arm_heavy_mb() #14
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr.i44 = getelementptr i8, ptr %15, i32 60
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i44, i16 -128) #14, !srcloc !178
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr3.i = getelementptr i8, ptr %17, i32 60
  %18 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr3.i) #14, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !215
  tail call void @netif_carrier_off(ptr noundef %dev) #14
  %mii_if = getelementptr i8, ptr %dev, i32 3608
  %19 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %msg_enable, align 4
  %and20 = and i32 %20, 4
  %call21 = tail call i32 @mii_check_media(ptr noundef %mii_if, i32 noundef %and20, i32 noundef 1) #14
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %21 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %22, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #14
  br label %cleanup

err_out_hw:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @napi_disable(ptr noundef %napi) #14
  tail call fastcc void @cp_stop_hw(ptr noundef %add.ptr.i)
  tail call fastcc void @cp_clean_rings(ptr noundef %add.ptr.i) #14
  %23 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev, align 8
  %dev.i46 = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  %25 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rx_ring.i, align 8
  %27 = ptrtoint ptr %ring_dma.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ring_dma.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i46, i32 noundef 2112, ptr noundef %26, i32 noundef %28, i32 noundef 0) #14
  %29 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %rx_ring.i, align 8
  %30 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %tx_ring.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %err_out_hw, %if.end18, %cp_alloc_rings.exit.cleanup_crit_edge, %if.then3.i, %do.end10.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %err_out_hw ], [ 0, %if.end18 ], [ %call2.i, %cp_alloc_rings.exit.cleanup_crit_edge ], [ %call2.i, %if.then3.i ], [ -12, %do.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cp_close(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %napi = getelementptr i8, ptr %dev, i32 2360
  tail call void @napi_disable(ptr noundef %napi) #14
  %msg_enable = getelementptr i8, ptr %dev, i32 2356
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body11_crit_edge, label %do.body1

entry.do.body11_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body11

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cp_close.__UNIQUE_ID_ddebug493, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cp_close, %if.then6)) #14
          to label %do.body11 [label %if.then6], !srcloc !205

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @cp_close.__UNIQUE_ID_ddebug493, ptr noundef %dev, ptr noundef nonnull @.str.38) #14
  br label %do.body11

do.body11:                                        ; preds = %if.then6, %do.body1, %entry.do.body11_crit_edge
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %lock = getelementptr i8, ptr %dev, i32 2312
  %call14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #14
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #14
  tail call void @netif_carrier_off(ptr noundef %dev) #14
  tail call fastcc void @cp_stop_hw(ptr noundef %add.ptr.i)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call14) #14
  %pdev = getelementptr i8, ptr %dev, i32 2584
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 8
  %irq = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 46
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  %call20 = tail call ptr @free_irq(i32 noundef %7, ptr noundef %dev) #14
  tail call fastcc void @cp_clean_rings(ptr noundef %add.ptr.i) #14
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %rx_ring.i = getelementptr i8, ptr %dev, i32 2696
  %10 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_ring.i, align 8
  %ring_dma.i = getelementptr i8, ptr %dev, i32 3604
  %12 = ptrtoint ptr %ring_dma.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ring_dma.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef 2112, ptr noundef %11, i32 noundef %13, i32 noundef 0) #14
  %14 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %rx_ring.i, align 8
  %tx_ring.i = getelementptr i8, ptr %dev, i32 3080
  %15 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %tx_ring.i, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cp_start_xmit(ptr noundef %skb, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %lock = getelementptr i8, ptr %dev, i32 2312
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #14
  %tx_tail = getelementptr i8, ptr %dev, i32 3076
  %0 = ptrtoint ptr %tx_tail to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_tail, align 4
  %tx_head = getelementptr i8, ptr %dev, i32 3072
  %2 = ptrtoint ptr %tx_head to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_head, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp7.not = icmp ugt i32 %1, %3
  %add = add i32 %1, 63
  %sub = sub i32 %add, %3
  %4 = xor i32 %3, -1
  %sub14 = add i32 %1, %4
  %cond = select i1 %cmp7.not, i32 %sub14, i32 %sub
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %5 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %nr_frags, align 2
  %conv16 = zext i8 %8 to i32
  %add17 = add nuw nsw i32 %conv16, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %add17)
  %cmp18.not = icmp ugt i32 %cond, %add17
  br i1 %cmp18.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %9 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %10, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #14
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.39) #17
  br label %cleanup359

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %3)
  %cmp22 = icmp eq i32 %3, 63
  %cond24 = select i1 %cmp22, i32 1073741824, i32 0
  %gso_size = getelementptr inbounds %struct.skb_shared_info, ptr %6, i32 0, i32 4
  %11 = ptrtoint ptr %gso_size to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %gso_size, align 4
  %conv26 = zext i16 %12 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 2047, i16 %12)
  %cmp27 = icmp ugt i16 %12, 2047
  br i1 %cmp27, label %land.end, label %if.end71

land.end:                                         ; preds = %if.end
  %.b500 = load i1, ptr @cp_start_xmit.__already_done, align 1
  br i1 %.b500, label %land.end.out_dma_error_crit_edge, label %if.then35, !prof !172

land.end.out_dma_error_crit_edge:                 ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_dma_error

if.then35:                                        ; preds = %land.end
  store i1 true, ptr @cp_start_xmit.__already_done, align 1
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %dev, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i, label %if.then35.netdev_name.exit_crit_edge, label %lor.lhs.false.i

if.then35.netdev_name.exit_crit_edge:             ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #16
  br label %netdev_name.exit

lor.lhs.false.i:                                  ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #16
  %call.i = tail call ptr @strchr(ptr noundef %dev, i32 noundef 37) #14
  %tobool2.not.i = icmp eq ptr %call.i, null
  %spec.select.i = select i1 %tobool2.not.i, ptr %dev, ptr @.str.46
  br label %netdev_name.exit

netdev_name.exit:                                 ; preds = %lor.lhs.false.i, %if.then35.netdev_name.exit_crit_edge
  %retval.0.i505 = phi ptr [ @.str.46, %if.then35.netdev_name.exit_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ]
  %call49 = tail call fastcc ptr @netdev_reg_state(ptr noundef %dev)
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 757, i32 noundef 9, ptr noundef nonnull @.str.40, ptr noundef %retval.0.i505, ptr noundef nonnull %call49, i32 noundef %conv26) #14
  br label %out_dma_error

if.end71:                                         ; preds = %if.end
  %vlan_present.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %15 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %bf.load.i = load i32, ptr %vlan_present.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i)
  %tobool.not.i506 = icmp sgt i32 %bf.load.i, -1
  br i1 %tobool.not.i506, label %if.end71.cp_tx_vlan_tag.exit_crit_edge, label %cond.true.i

if.end71.cp_tx_vlan_tag.exit_crit_edge:           ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #16
  br label %cp_tx_vlan_tag.exit

cond.true.i:                                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #16
  %vlan_tci.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %16 = ptrtoint ptr %vlan_tci.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vlan_tci.i, align 2
  %18 = tail call i16 @llvm.bswap.i16(i16 %17) #14
  %conv1.i = zext i16 %18 to i32
  %or.i = or i32 %conv1.i, 131072
  br label %cp_tx_vlan_tag.exit

cp_tx_vlan_tag.exit:                              ; preds = %cond.true.i, %if.end71.cp_tx_vlan_tag.exit_crit_edge
  %cond.i = phi i32 [ %or.i, %cond.true.i ], [ 0, %if.end71.cp_tx_vlan_tag.exit_crit_edge ]
  %19 = tail call i32 @llvm.bswap.i32(i32 %cond.i)
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool73.not = icmp eq i16 %12, 0
  br i1 %tobool73.not, label %if.else, label %if.then74

if.then74:                                        ; preds = %cp_tx_vlan_tag.exit
  call void @__sanitizer_cov_trace_pc() #16
  %shl = shl nuw i32 %conv26, 16
  %or75 = or i32 %shl, -2013265920
  br label %if.end146

if.else:                                          ; preds = %cp_tx_vlan_tag.exit
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %20 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %20)
  %bf.load = load i16, ptr %ip_summed, align 8
  %21 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %21)
  %cmp77 = icmp eq i16 %21, 1536
  br i1 %cmp77, label %if.then79, label %if.else.if.end146_crit_edge

if.else.if.end146_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end146

if.then79:                                        ; preds = %if.else
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %22 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %24 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %25 to i32
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 %conv.i.i
  %protocol = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 6
  %26 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %protocol, align 1
  %28 = zext i8 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values)
  switch i8 %27, label %land.end101 [
    i8 6, label %if.then79.if.end146_crit_edge
    i8 17, label %if.then91
  ]

if.then79.if.end146_crit_edge:                    ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end146

if.then91:                                        ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end146

land.end101:                                      ; preds = %if.then79
  %.b498499 = load i1, ptr @cp_start_xmit.__already_done.41, align 1
  br i1 %.b498499, label %land.end101.out_dma_error_crit_edge, label %if.then108, !prof !172

land.end101.out_dma_error_crit_edge:              ; preds = %land.end101
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_dma_error

if.then108:                                       ; preds = %land.end101
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cp_start_xmit.__already_done.41, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 773, i32 noundef 9, ptr noundef nonnull @.str.42) #14
  br label %out_dma_error

if.end146:                                        ; preds = %if.then91, %if.then79.if.end146_crit_edge, %if.else.if.end146_crit_edge, %if.then74
  %opts1.2 = phi i32 [ %or75, %if.then74 ], [ -2147483648, %if.else.if.end146_crit_edge ], [ -2147155968, %if.then79.if.end146_crit_edge ], [ -2147090432, %if.then91 ]
  %29 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %end.i, align 4
  %nr_frags148 = getelementptr inbounds %struct.skb_shared_info, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %nr_frags148 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %nr_frags148, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp150 = icmp eq i8 %32, 0
  br i1 %cmp150, label %if.then152, label %if.else204

if.then152:                                       ; preds = %if.end146
  %tx_ring = getelementptr i8, ptr %dev, i32 3080
  %33 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tx_ring, align 8
  %len153 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %35 = ptrtoint ptr %len153 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len153, align 4
  %pdev = getelementptr i8, ptr %dev, i32 2584
  %37 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pdev, align 8
  %dev154 = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %39 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data, align 4
  %call.i508 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %40) #14
  br i1 %call.i508, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.then152
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !172

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev154) #14
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44, i32 3
  %41 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %42, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %43 = ptrtoint ptr %dev154 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev154, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %44, %if.end.i.i ], [ %42, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.29, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #14
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @debug_dma_map_single(ptr noundef %dev154, ptr noundef %40, i32 noundef %36) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %45 = load ptr, ptr @mem_map, align 4
  %46 = ptrtoint ptr %40 to i32
  %sub.i = add i32 %46, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i509 = getelementptr %struct.page, ptr %45, i32 %shr.i
  %and.i = and i32 %46, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev154, ptr noundef %add.ptr.i509, i32 noundef %and.i, i32 noundef %36, i32 noundef 1, i32 noundef 0) #14
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i510 = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %47 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pdev, align 8
  %dev157 = getelementptr inbounds %struct.pci_dev, ptr %48, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev157, i32 noundef %retval.0.i510) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i510)
  %cmp.i = icmp eq i32 %retval.0.i510, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.out_dma_error_crit_edge, label %if.end161

dma_map_single_attrs.exit.out_dma_error_crit_edge: ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_dma_error

if.end161:                                        ; preds = %dma_map_single_attrs.exit
  %arrayidx = getelementptr %struct.cp_desc, ptr %34, i32 %3
  %opts2162 = getelementptr %struct.cp_desc, ptr %34, i32 %3, i32 1
  %49 = ptrtoint ptr %opts2162 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %19, ptr %opts2162, align 4
  %conv163 = zext i32 %retval.0.i510 to i64
  %50 = tail call i64 @llvm.bswap.i64(i64 %conv163)
  %addr = getelementptr %struct.cp_desc, ptr %34, i32 %3, i32 2
  %51 = ptrtoint ptr %addr to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %50, ptr %addr, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !216
  tail call void @arm_heavy_mb() #14
  %or167 = or i32 %opts1.2, %cond24
  %or169 = or i32 %or167, %36
  %or170 = or i32 %or169, 805306368
  %52 = tail call i32 @llvm.bswap.i32(i32 %or170)
  %53 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %arrayidx, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !217
  tail call void @arm_heavy_mb() #14
  %arrayidx175 = getelementptr %struct.cp_private, ptr %add.ptr.i, i32 0, i32 18, i32 %3
  %54 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %skb, ptr %arrayidx175, align 4
  %arrayidx176 = getelementptr %struct.cp_private, ptr %add.ptr.i, i32 0, i32 19, i32 %3
  %55 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %or170, ptr %arrayidx176, align 4
  %msg_enable = getelementptr i8, ptr %dev, i32 2356
  %56 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %msg_enable, align 4
  %and = and i32 %57, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool178.not = icmp eq i32 %and, 0
  br i1 %tobool178.not, label %if.end161.if.end328_crit_edge, label %do.body180

if.end161.if.end328_crit_edge:                    ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end328

do.body180:                                       ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cp_start_xmit.__UNIQUE_ID_ddebug490, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cp_start_xmit, %if.then190)) #14
          to label %if.end328 [label %if.then190], !srcloc !205

if.then190:                                       ; preds = %do.body180
  call void @__sanitizer_cov_trace_pc() #16
  %dev191 = getelementptr i8, ptr %dev, i32 2308
  %58 = ptrtoint ptr %dev191 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev191, align 4
  %60 = ptrtoint ptr %len153 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %len153, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @cp_start_xmit.__UNIQUE_ID_ddebug490, ptr noundef %59, ptr noundef nonnull @.str.44, i32 noundef %3, i32 noundef %61) #14
  br label %if.end328

if.else204:                                       ; preds = %if.end146
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %62 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %64 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %data_len.i, align 8
  %sub.i511 = sub i32 %63, %65
  %pdev207 = getelementptr i8, ptr %dev, i32 2584
  %66 = ptrtoint ptr %pdev207 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pdev207, align 8
  %dev208 = getelementptr inbounds %struct.pci_dev, ptr %67, i32 0, i32 44
  %data209 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %68 = ptrtoint ptr %data209 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %data209, align 4
  %call.i512 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %69) #14
  br i1 %call.i512, label %land.rhs.i514, label %if.end39.i527

land.rhs.i514:                                    ; preds = %if.else204
  %.b1.i513 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i513, label %land.rhs.i514.dma_map_single_attrs.exit529_crit_edge, label %if.then.i518, !prof !172

land.rhs.i514.dma_map_single_attrs.exit529_crit_edge: ; preds = %land.rhs.i514
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_map_single_attrs.exit529

if.then.i518:                                     ; preds = %land.rhs.i514
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i515 = tail call ptr @dev_driver_string(ptr noundef %dev208) #14
  %init_name.i.i516 = getelementptr inbounds %struct.pci_dev, ptr %67, i32 0, i32 44, i32 3
  %70 = ptrtoint ptr %init_name.i.i516 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %init_name.i.i516, align 8
  %tobool.not.i.i517 = icmp eq ptr %71, null
  br i1 %tobool.not.i.i517, label %if.end.i.i519, label %if.then.i518.dev_name.exit.i521_crit_edge

if.then.i518.dev_name.exit.i521_crit_edge:        ; preds = %if.then.i518
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit.i521

if.end.i.i519:                                    ; preds = %if.then.i518
  call void @__sanitizer_cov_trace_pc() #16
  %72 = ptrtoint ptr %dev208 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev208, align 4
  br label %dev_name.exit.i521

dev_name.exit.i521:                               ; preds = %if.end.i.i519, %if.then.i518.dev_name.exit.i521_crit_edge
  %retval.0.i.i520 = phi ptr [ %73, %if.end.i.i519 ], [ %71, %if.then.i518.dev_name.exit.i521_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.29, ptr noundef %call16.i515, ptr noundef %retval.0.i.i520) #14
  br label %dma_map_single_attrs.exit529

if.end39.i527:                                    ; preds = %if.else204
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @debug_dma_map_single(ptr noundef %dev208, ptr noundef %69, i32 noundef %sub.i511) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %74 = load ptr, ptr @mem_map, align 4
  %75 = ptrtoint ptr %69 to i32
  %sub.i522 = add i32 %75, 1073741824
  %shr.i523 = lshr i32 %sub.i522, 12
  %add.ptr.i524 = getelementptr %struct.page, ptr %74, i32 %shr.i523
  %and.i525 = and i32 %75, 4095
  %call41.i526 = tail call i32 @dma_map_page_attrs(ptr noundef %dev208, ptr noundef %add.ptr.i524, i32 noundef %and.i525, i32 noundef %sub.i511, i32 noundef 1, i32 noundef 0) #14
  br label %dma_map_single_attrs.exit529

dma_map_single_attrs.exit529:                     ; preds = %if.end39.i527, %dev_name.exit.i521, %land.rhs.i514.dma_map_single_attrs.exit529_crit_edge
  %retval.0.i528 = phi i32 [ %call41.i526, %if.end39.i527 ], [ -1, %dev_name.exit.i521 ], [ -1, %land.rhs.i514.dma_map_single_attrs.exit529_crit_edge ]
  %76 = ptrtoint ptr %pdev207 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pdev207, align 8
  %dev212 = getelementptr inbounds %struct.pci_dev, ptr %77, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev212, i32 noundef %retval.0.i528) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i528)
  %cmp.i530 = icmp eq i32 %retval.0.i528, -1
  br i1 %cmp.i530, label %dma_map_single_attrs.exit529.out_dma_error_crit_edge, label %if.end216

dma_map_single_attrs.exit529.out_dma_error_crit_edge: ; preds = %dma_map_single_attrs.exit529
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_dma_error

if.end216:                                        ; preds = %dma_map_single_attrs.exit529
  %arrayidx218 = getelementptr %struct.cp_private, ptr %add.ptr.i, i32 0, i32 18, i32 %3
  %78 = ptrtoint ptr %arrayidx218 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %skb, ptr %arrayidx218, align 4
  %79 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %end.i, align 4
  %nr_frags220585 = getelementptr inbounds %struct.skb_shared_info, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %nr_frags220585 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %nr_frags220585, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %cmp222587.not = icmp eq i8 %82, 0
  br i1 %cmp222587.not, label %if.end216.for.end_crit_edge, label %for.body.lr.ph

if.end216.for.end_crit_edge:                      ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end216
  %tx_ring255 = getelementptr i8, ptr %dev, i32 3080
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %83 = phi ptr [ %80, %for.body.lr.ph ], [ %127, %for.inc.for.body_crit_edge ]
  %entry1.0589 = phi i32 [ %3, %for.body.lr.ph ], [ %and229, %for.inc.for.body_crit_edge ]
  %frag.0588 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx225 = getelementptr %struct.skb_shared_info, ptr %83, i32 0, i32 12, i32 %frag.0588
  %add228 = add i32 %entry1.0589, 1
  %and229 = and i32 %add228, 63
  %bv_len.i = getelementptr %struct.skb_shared_info, ptr %83, i32 0, i32 12, i32 %frag.0588, i32 1
  %84 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %bv_len.i, align 4
  %86 = ptrtoint ptr %pdev207 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %pdev207, align 8
  %dev232 = getelementptr inbounds %struct.pci_dev, ptr %87, i32 0, i32 44
  %88 = ptrtoint ptr %arrayidx225 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx225, align 4
  %call1.i = tail call ptr @page_address(ptr noundef %89) #14
  %bv_offset.i.i = getelementptr %struct.skb_shared_info, ptr %83, i32 0, i32 12, i32 %frag.0588, i32 2
  %90 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %bv_offset.i.i, align 4
  %add.ptr.i534 = getelementptr i8, ptr %call1.i, i32 %91
  %call.i535 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr.i534) #14
  br i1 %call.i535, label %land.rhs.i537, label %if.end39.i550

land.rhs.i537:                                    ; preds = %for.body
  %.b1.i536 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i536, label %land.rhs.i537.dma_map_single_attrs.exit552_crit_edge, label %if.then.i541, !prof !172

land.rhs.i537.dma_map_single_attrs.exit552_crit_edge: ; preds = %land.rhs.i537
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_map_single_attrs.exit552

if.then.i541:                                     ; preds = %land.rhs.i537
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i538 = tail call ptr @dev_driver_string(ptr noundef %dev232) #14
  %init_name.i.i539 = getelementptr inbounds %struct.pci_dev, ptr %87, i32 0, i32 44, i32 3
  %92 = ptrtoint ptr %init_name.i.i539 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %init_name.i.i539, align 8
  %tobool.not.i.i540 = icmp eq ptr %93, null
  br i1 %tobool.not.i.i540, label %if.end.i.i542, label %if.then.i541.dev_name.exit.i544_crit_edge

if.then.i541.dev_name.exit.i544_crit_edge:        ; preds = %if.then.i541
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit.i544

if.end.i.i542:                                    ; preds = %if.then.i541
  call void @__sanitizer_cov_trace_pc() #16
  %94 = ptrtoint ptr %dev232 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev232, align 4
  br label %dev_name.exit.i544

dev_name.exit.i544:                               ; preds = %if.end.i.i542, %if.then.i541.dev_name.exit.i544_crit_edge
  %retval.0.i.i543 = phi ptr [ %95, %if.end.i.i542 ], [ %93, %if.then.i541.dev_name.exit.i544_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.29, ptr noundef %call16.i538, ptr noundef %retval.0.i.i543) #14
  br label %dma_map_single_attrs.exit552

if.end39.i550:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @debug_dma_map_single(ptr noundef %dev232, ptr noundef %add.ptr.i534, i32 noundef %85) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %96 = load ptr, ptr @mem_map, align 4
  %97 = ptrtoint ptr %add.ptr.i534 to i32
  %sub.i545 = add i32 %97, 1073741824
  %shr.i546 = lshr i32 %sub.i545, 12
  %add.ptr.i547 = getelementptr %struct.page, ptr %96, i32 %shr.i546
  %and.i548 = and i32 %97, 4095
  %call41.i549 = tail call i32 @dma_map_page_attrs(ptr noundef %dev232, ptr noundef %add.ptr.i547, i32 noundef %and.i548, i32 noundef %85, i32 noundef 1, i32 noundef 0) #14
  br label %dma_map_single_attrs.exit552

dma_map_single_attrs.exit552:                     ; preds = %if.end39.i550, %dev_name.exit.i544, %land.rhs.i537.dma_map_single_attrs.exit552_crit_edge
  %retval.0.i551 = phi i32 [ %call41.i549, %if.end39.i550 ], [ -1, %dev_name.exit.i544 ], [ -1, %land.rhs.i537.dma_map_single_attrs.exit552_crit_edge ]
  %98 = ptrtoint ptr %pdev207 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %pdev207, align 8
  %dev236 = getelementptr inbounds %struct.pci_dev, ptr %99, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev236, i32 noundef %retval.0.i551) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i551)
  %cmp.i553 = icmp eq i32 %retval.0.i551, -1
  br i1 %cmp.i553, label %if.then239, label %for.inc

if.then239:                                       ; preds = %dma_map_single_attrs.exit552
  call void @__sanitizer_cov_trace_cmp4(i32 %and229, i32 %3)
  %cmp12.i = icmp sgt i32 %and229, %3
  br i1 %cmp12.i, label %for.body.lr.ph.i, label %if.then239.out_dma_error_crit_edge

if.then239.out_dma_error_crit_edge:               ; preds = %if.then239
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_dma_error

for.body.lr.ph.i:                                 ; preds = %if.then239
  %100 = sub i32 %and229, %3
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %add14.i = phi i32 [ %3, %for.body.lr.ph.i ], [ %add.i, %for.body.i.for.body.i_crit_edge ]
  %frag.013.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.cp_private, ptr %add.ptr.i, i32 0, i32 18, i32 %add14.i
  %101 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr null, ptr %arrayidx.i, align 4
  %102 = ptrtoint ptr %tx_ring255 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %tx_ring255, align 8
  %104 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %end.i, align 4
  %106 = ptrtoint ptr %pdev207 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %pdev207, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %107, i32 0, i32 44
  %addr.i = getelementptr %struct.cp_desc, ptr %103, i32 %add14.i, i32 2
  %108 = ptrtoint ptr %addr.i to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %addr.i, align 8
  %110 = tail call i64 @llvm.bswap.i64(i64 %109) #14
  %conv.i = trunc i64 %110 to i32
  %bv_len.i.i = getelementptr %struct.skb_shared_info, ptr %105, i32 0, i32 12, i32 %frag.013.i, i32 1
  %111 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %bv_len.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %conv.i, i32 noundef %112, i32 noundef 1, i32 noundef 0) #14
  %inc.i = add nuw i32 %frag.013.i, 1
  %add.i = add i32 %inc.i, %3
  %exitcond.not.i = icmp eq i32 %inc.i, %100
  br i1 %exitcond.not.i, label %for.body.i.out_dma_error_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body.i.out_dma_error_crit_edge:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_dma_error

for.inc:                                          ; preds = %dma_map_single_attrs.exit552
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %and229)
  %cmp241 = icmp eq i32 %and229, 63
  %cond243 = select i1 %cmp241, i32 1073741824, i32 0
  %or244 = or i32 %cond243, %opts1.2
  %or245 = or i32 %or244, %85
  %113 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %end.i, align 4
  %nr_frags247 = getelementptr inbounds %struct.skb_shared_info, ptr %114, i32 0, i32 2
  %115 = ptrtoint ptr %nr_frags247 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %nr_frags247, align 2
  %conv248 = zext i8 %116 to i32
  %sub249 = add nsw i32 %conv248, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %frag.0588, i32 %sub249)
  %cmp250 = icmp eq i32 %frag.0588, %sub249
  %or253 = or i32 %or245, 268435456
  %spec.select = select i1 %cmp250, i32 %or253, i32 %or245
  %117 = ptrtoint ptr %tx_ring255 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %tx_ring255, align 8
  %arrayidx256 = getelementptr %struct.cp_desc, ptr %118, i32 %and229
  %opts2257 = getelementptr %struct.cp_desc, ptr %118, i32 %and229, i32 1
  %119 = ptrtoint ptr %opts2257 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %19, ptr %opts2257, align 4
  %conv258 = zext i32 %retval.0.i551 to i64
  %120 = tail call i64 @llvm.bswap.i64(i64 %conv258)
  %addr259 = getelementptr %struct.cp_desc, ptr %118, i32 %and229, i32 2
  %121 = ptrtoint ptr %addr259 to i32
  call void @__asan_store8_noabort(i32 %121)
  store i64 %120, ptr %addr259, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !218
  tail call void @arm_heavy_mb() #14
  %122 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  %123 = ptrtoint ptr %arrayidx256 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %arrayidx256, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !219
  tail call void @arm_heavy_mb() #14
  %arrayidx268 = getelementptr %struct.cp_private, ptr %add.ptr.i, i32 0, i32 19, i32 %and229
  %124 = ptrtoint ptr %arrayidx268 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %spec.select, ptr %arrayidx268, align 4
  %arrayidx270 = getelementptr %struct.cp_private, ptr %add.ptr.i, i32 0, i32 18, i32 %and229
  %125 = ptrtoint ptr %arrayidx270 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %skb, ptr %arrayidx270, align 4
  %inc = add nuw nsw i32 %frag.0588, 1
  %126 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %end.i, align 4
  %nr_frags220 = getelementptr inbounds %struct.skb_shared_info, ptr %127, i32 0, i32 2
  %128 = ptrtoint ptr %nr_frags220 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %nr_frags220, align 2
  %conv221 = zext i8 %129 to i32
  %cmp222 = icmp ult i32 %inc, %conv221
  br i1 %cmp222, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end216.for.end_crit_edge
  %entry1.0.lcssa = phi i32 [ %3, %if.end216.for.end_crit_edge ], [ %and229, %for.inc.for.end_crit_edge ]
  %tx_ring276 = getelementptr i8, ptr %dev, i32 3080
  %130 = ptrtoint ptr %tx_ring276 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %tx_ring276, align 8
  %arrayidx277 = getelementptr %struct.cp_desc, ptr %131, i32 %3
  %opts2278 = getelementptr %struct.cp_desc, ptr %131, i32 %3, i32 1
  %132 = ptrtoint ptr %opts2278 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %19, ptr %opts2278, align 4
  %conv279 = zext i32 %retval.0.i528 to i64
  %133 = tail call i64 @llvm.bswap.i64(i64 %conv279)
  %addr280 = getelementptr %struct.cp_desc, ptr %131, i32 %3, i32 2
  %134 = ptrtoint ptr %addr280 to i32
  call void @__asan_store8_noabort(i32 %134)
  store i64 %133, ptr %addr280, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !220
  tail call void @arm_heavy_mb() #14
  %or284 = or i32 %opts1.2, %cond24
  %or285 = or i32 %or284, %sub.i511
  %or286 = or i32 %or285, 536870912
  %135 = tail call i32 @llvm.bswap.i32(i32 %or286)
  %136 = ptrtoint ptr %arrayidx277 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %arrayidx277, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !221
  tail call void @arm_heavy_mb() #14
  %arrayidx292 = getelementptr %struct.cp_private, ptr %add.ptr.i, i32 0, i32 19, i32 %3
  %137 = ptrtoint ptr %arrayidx292 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %or286, ptr %arrayidx292, align 4
  %msg_enable294 = getelementptr i8, ptr %dev, i32 2356
  %138 = ptrtoint ptr %msg_enable294 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %msg_enable294, align 4
  %and295 = and i32 %139, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and295)
  %tobool296.not = icmp eq i32 %and295, 0
  br i1 %tobool296.not, label %for.end.if.end328_crit_edge, label %do.body298

for.end.if.end328_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end328

do.body298:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cp_start_xmit.__UNIQUE_ID_ddebug491, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cp_start_xmit, %if.then310)) #14
          to label %if.end328 [label %if.then310], !srcloc !205

if.then310:                                       ; preds = %do.body298
  call void @__sanitizer_cov_trace_pc() #16
  %dev311 = getelementptr i8, ptr %dev, i32 2308
  %140 = ptrtoint ptr %dev311 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %dev311, align 4
  %142 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %len.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @cp_start_xmit.__UNIQUE_ID_ddebug491, ptr noundef %141, ptr noundef nonnull @.str.45, i32 noundef %3, i32 noundef %entry1.0.lcssa, i32 noundef %143) #14
  br label %if.end328

if.end328:                                        ; preds = %if.then310, %do.body298, %for.end.if.end328_crit_edge, %if.then190, %do.body180, %if.end161.if.end328_crit_edge
  %entry1.2 = phi i32 [ %3, %do.body180 ], [ %entry1.0.lcssa, %do.body298 ], [ %3, %if.then190 ], [ %3, %if.end161.if.end328_crit_edge ], [ %entry1.0.lcssa, %if.then310 ], [ %entry1.0.lcssa, %for.end.if.end328_crit_edge ]
  %add329 = add i32 %entry1.2, 1
  %and330 = and i32 %add329, 63
  %144 = ptrtoint ptr %tx_head to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %and330, ptr %tx_head, align 128
  %len332 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %145 = ptrtoint ptr %len332 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %len332, align 4
  %_tx.i.i556 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %147 = ptrtoint ptr %_tx.i.i556 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %_tx.i.i556, align 128
  %dql.i.i = getelementptr inbounds %struct.netdev_queue, ptr %148, i32 0, i32 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %146)
  %cmp.i.i.i = icmp ugt i32 %146, 268435455
  br i1 %cmp.i.i.i, label %do.body2.i.i.i, label %dql_queued.exit.i.i, !prof !203

do.body2.i.i.i:                                   ; preds = %if.end328
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/dynamic_queue_limits.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #14, !srcloc !222
  unreachable

dql_queued.exit.i.i:                              ; preds = %if.end328
  %last_obj_cnt.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %148, i32 0, i32 15, i32 2
  %149 = ptrtoint ptr %last_obj_cnt.i.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %146, ptr %last_obj_cnt.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !223
  %150 = ptrtoint ptr %dql.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %dql.i.i, align 128
  %add.i.i.i = add i32 %151, %146
  store i32 %add.i.i.i, ptr %dql.i.i, align 128
  %adj_limit.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %148, i32 0, i32 15, i32 1
  %152 = ptrtoint ptr %adj_limit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load volatile i32, ptr %adj_limit.i.i.i, align 4
  %154 = load volatile i32, ptr %dql.i.i, align 128
  %sub.i.i.i = sub i32 %153, %154
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i.i)
  %cmp.i.i = icmp sgt i32 %sub.i.i.i, -1
  br i1 %cmp.i.i, label %dql_queued.exit.i.i.netdev_sent_queue.exit_crit_edge, label %if.end.i.i558, !prof !172

dql_queued.exit.i.i.netdev_sent_queue.exit_crit_edge: ; preds = %dql_queued.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %netdev_sent_queue.exit

if.end.i.i558:                                    ; preds = %dql_queued.exit.i.i
  %state.i.i557 = getelementptr inbounds %struct.netdev_queue, ptr %148, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 1, ptr noundef %state.i.i557) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !224
  %155 = ptrtoint ptr %adj_limit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load volatile i32, ptr %adj_limit.i.i.i, align 4
  %157 = ptrtoint ptr %dql.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load volatile i32, ptr %dql.i.i, align 128
  %sub.i22.i.i = sub i32 %156, %158
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i22.i.i)
  %cmp7.i.i = icmp sgt i32 %sub.i22.i.i, -1
  br i1 %cmp7.i.i, label %if.then14.i.i, label %if.end.i.i558.netdev_sent_queue.exit_crit_edge, !prof !203

if.end.i.i558.netdev_sent_queue.exit_crit_edge:   ; preds = %if.end.i.i558
  call void @__sanitizer_cov_trace_pc() #16
  br label %netdev_sent_queue.exit

if.then14.i.i:                                    ; preds = %if.end.i.i558
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state.i.i557) #14
  br label %netdev_sent_queue.exit

netdev_sent_queue.exit:                           ; preds = %if.then14.i.i, %if.end.i.i558.netdev_sent_queue.exit_crit_edge, %dql_queued.exit.i.i.netdev_sent_queue.exit_crit_edge
  %159 = ptrtoint ptr %tx_tail to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %tx_tail, align 4
  %161 = ptrtoint ptr %tx_head to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %tx_head, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %160, i32 %162)
  %cmp335.not = icmp ugt i32 %160, %162
  %add339 = add i32 %160, 63
  %sub341 = sub i32 %add339, %162
  %163 = xor i32 %162, -1
  %sub346 = add i32 %160, %163
  %cond348 = select i1 %cmp335.not, i32 %sub346, i32 %sub341
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %cond348)
  %cmp349 = icmp ult i32 %cond348, 19
  br i1 %cmp349, label %if.then351, label %netdev_sent_queue.exit.out_unlock_crit_edge

netdev_sent_queue.exit.out_unlock_crit_edge:      ; preds = %netdev_sent_queue.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

if.then351:                                       ; preds = %netdev_sent_queue.exit
  call void @__sanitizer_cov_trace_pc() #16
  %164 = ptrtoint ptr %_tx.i.i556 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %_tx.i.i556, align 128
  %state.i.i560 = getelementptr inbounds %struct.netdev_queue, ptr %165, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i560) #14
  br label %out_unlock

out_unlock:                                       ; preds = %out_dma_error, %if.then351, %netdev_sent_queue.exit.out_unlock_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !225
  tail call void @arm_heavy_mb() #14
  %166 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr = getelementptr i8, ptr %167, i32 217
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 64) #14, !srcloc !176
  br label %cleanup359

out_dma_error:                                    ; preds = %for.body.i.out_dma_error_crit_edge, %if.then239.out_dma_error_crit_edge, %dma_map_single_attrs.exit529.out_dma_error_crit_edge, %dma_map_single_attrs.exit.out_dma_error_crit_edge, %if.then108, %land.end101.out_dma_error_crit_edge, %netdev_name.exit, %land.end.out_dma_error_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #14
  %dev357 = getelementptr i8, ptr %dev, i32 2308
  %168 = ptrtoint ptr %dev357 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %dev357, align 4
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %169, i32 0, i32 36, i32 7
  %170 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %tx_dropped, align 4
  %inc358 = add i32 %171, 1
  store i32 %inc358, ptr %tx_dropped, align 4
  br label %out_unlock

cleanup359:                                       ; preds = %out_unlock, %if.then
  %retval.0 = phi i32 [ 16, %if.then ], [ 0, %out_unlock ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @cp_features_check(ptr noundef %skb, ptr nocapture noundef readnone %dev, i64 noundef %features) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %0 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %end.i, align 4
  %gso_size = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %gso_size to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %gso_size, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2047, i16 %3)
  %cmp = icmp ugt i16 %3, 2047
  %and = and i64 %features, -65537
  %spec.select = select i1 %cmp, i64 %and, i64 %features
  %protocol1.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %4 = ptrtoint ptr %protocol1.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %protocol1.i.i, align 8
  %vlan_present.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %6 = ptrtoint ptr %vlan_present.i.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %bf.load.i.i = load i32, ptr %vlan_present.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i32 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %if.then.i.i, label %entry.skb_vlan_tagged_multi.exit.i_crit_edge

entry.skb_vlan_tagged_multi.exit.i_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_vlan_tagged_multi.exit.i

if.then.i.i:                                      ; preds = %entry
  %7 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.64)
  switch i16 %5, label %if.then.i.i.vlan_features_check.exit_crit_edge [
    i16 -30552, label %if.then.i.i.if.end.i.i_crit_edge
    i16 -32512, label %if.then.i.i.if.end.i.i_crit_edge5
  ]

if.then.i.i.if.end.i.i_crit_edge5:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

if.then.i.i.vlan_features_check.exit_crit_edge:   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %vlan_features_check.exit

if.end.i.i:                                       ; preds = %if.then.i.i.if.end.i.i_crit_edge, %if.then.i.i.if.end.i.i_crit_edge5
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %8 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %10 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i = sub i32 %9, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %sub.i.i.i)
  %cmp.i.i = icmp ugt i32 %sub.i.i.i, 17
  br i1 %cmp.i.i, label %if.end.i.i.cleanup.i.i_crit_edge, label %if.end.i2.i, !prof !172

if.end.i.i.cleanup.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.i.i

if.end.i2.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %9)
  %cmp3.i.i = icmp ult i32 %9, 18
  br i1 %cmp3.i.i, label %if.end.i2.i.vlan_features_check.exit_crit_edge, label %pskb_may_pull.exit.i, !prof !203

if.end.i2.i.vlan_features_check.exit_crit_edge:   ; preds = %if.end.i2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %vlan_features_check.exit

pskb_may_pull.exit.i:                             ; preds = %if.end.i2.i
  %sub.i.i = sub nuw nsw i32 18, %sub.i.i.i
  %call13.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i) #14
  %cmp14.i.not.i = icmp eq ptr %call13.i.i, null
  br i1 %cmp14.i.not.i, label %pskb_may_pull.exit.i.vlan_features_check.exit_crit_edge, label %pskb_may_pull.exit.i.cleanup.i.i_crit_edge, !prof !203

pskb_may_pull.exit.i.cleanup.i.i_crit_edge:       ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.i.i

pskb_may_pull.exit.i.vlan_features_check.exit_crit_edge: ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %vlan_features_check.exit

cleanup.i.i:                                      ; preds = %pskb_may_pull.exit.i.cleanup.i.i_crit_edge, %if.end.i.i.cleanup.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %12 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i.i, align 4
  %h_vlan_encapsulated_proto.i.i = getelementptr inbounds %struct.vlan_ethhdr, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %h_vlan_encapsulated_proto.i.i, align 2
  br label %skb_vlan_tagged_multi.exit.i

skb_vlan_tagged_multi.exit.i:                     ; preds = %cleanup.i.i, %entry.skb_vlan_tagged_multi.exit.i_crit_edge
  %protocol.1.i.i = phi i16 [ %5, %entry.skb_vlan_tagged_multi.exit.i_crit_edge ], [ %15, %cleanup.i.i ]
  %16 = zext i16 %protocol.1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.65)
  switch i16 %protocol.1.i.i, label %skb_vlan_tagged_multi.exit.i.vlan_features_check.exit_crit_edge [
    i16 -30552, label %skb_vlan_tagged_multi.exit.i._crit_edge
    i16 -32512, label %skb_vlan_tagged_multi.exit.i._crit_edge6
  ]

skb_vlan_tagged_multi.exit.i._crit_edge6:         ; preds = %skb_vlan_tagged_multi.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %17

skb_vlan_tagged_multi.exit.i._crit_edge:          ; preds = %skb_vlan_tagged_multi.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %17

skb_vlan_tagged_multi.exit.i.vlan_features_check.exit_crit_edge: ; preds = %skb_vlan_tagged_multi.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %vlan_features_check.exit

17:                                               ; preds = %skb_vlan_tagged_multi.exit.i._crit_edge, %skb_vlan_tagged_multi.exit.i._crit_edge6
  %and.i = and i64 %spec.select, 35184372089065
  br label %vlan_features_check.exit

vlan_features_check.exit:                         ; preds = %17, %skb_vlan_tagged_multi.exit.i.vlan_features_check.exit_crit_edge, %pskb_may_pull.exit.i.vlan_features_check.exit_crit_edge, %if.end.i2.i.vlan_features_check.exit_crit_edge, %if.then.i.i.vlan_features_check.exit_crit_edge
  %18 = phi i64 [ %and.i, %17 ], [ %spec.select, %skb_vlan_tagged_multi.exit.i.vlan_features_check.exit_crit_edge ], [ %spec.select, %if.then.i.i.vlan_features_check.exit_crit_edge ], [ %spec.select, %pskb_may_pull.exit.i.vlan_features_check.exit_crit_edge ], [ %spec.select, %if.end.i2.i.vlan_features_check.exit_crit_edge ]
  ret i64 %18
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cp_set_rx_mode(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %dev, i32 2312
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #14
  tail call fastcc void @__cp_set_rx_mode(ptr noundef %dev)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cp_set_mac_address(ptr noundef %dev, ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sa_data, align 4
  %2 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not.i = icmp eq i32 %2, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %entry
  %add.ptr.i.i = getelementptr %struct.sockaddr, ptr %p, i32 0, i32 1, i32 4
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %4 to i32
  %or.i.i = or i32 %1, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %if.end

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #14
  %lock = getelementptr i8, ptr %dev, i32 2312
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !226
  tail call void @arm_heavy_mb() #14
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr = getelementptr i8, ptr %6, i32 80
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 -64) #14, !srcloc !176
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr6 = getelementptr i8, ptr %8, i32 80
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr6) #14, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !228
  tail call void @arm_heavy_mb() #14
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %10 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_addr, align 64
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #14, !srcloc !229
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i, align 128
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #14, !srcloc !230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !232
  tail call void @arm_heavy_mb() #14
  %19 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_addr, align 64
  %add.ptr32 = getelementptr i8, ptr %20, i32 4
  %21 = ptrtoint ptr %add.ptr32 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr32, align 4
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr34 = getelementptr i8, ptr %24, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 %22) #14, !srcloc !229
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr38 = getelementptr i8, ptr %26, i32 4
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38) #14, !srcloc !230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !233
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !234
  tail call void @arm_heavy_mb() #14
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr49 = getelementptr i8, ptr %29, i32 80
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr49, i8 0) #14, !srcloc !176
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr53 = getelementptr i8, ptr %31, i32 80
  %32 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr53) #14, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !235
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %is_valid_ether_addr.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -99, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ -99, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cp_ioctl(ptr noundef %dev, ptr noundef %rq, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %do.body2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %lock = getelementptr i8, ptr %dev, i32 2312
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #14
  %mii_if = getelementptr i8, ptr %dev, i32 3608
  %ifr_ifru.i = getelementptr inbounds %struct.ifreq, ptr %rq, i32 0, i32 1
  %call8 = tail call i32 @generic_mii_ioctl(ptr noundef %mii_if, ptr noundef %ifr_ifru.i, i32 noundef %cmd, ptr noundef null) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #14
  br label %cleanup

cleanup:                                          ; preds = %do.body2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %do.body2 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cp_change_mtu(ptr noundef %dev, i32 noundef %new_mtu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
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
  call void @__sanitizer_cov_trace_pc() #16
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %2 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %new_mtu, ptr %mtu, align 4
  %dev.i = getelementptr i8, ptr %dev, i32 2308
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %mtu1.i = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 20
  %5 = ptrtoint ptr %mtu1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mtu1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500, i32 %6)
  %cmp.i = icmp ugt i32 %6, 1500
  %add2.i = add i32 %6, 22
  %spec.select.i = select i1 %cmp.i, i32 %add2.i, i32 1536
  %7 = getelementptr i8, ptr %dev, i32 3596
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %spec.select.i, ptr %7, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call2 = tail call i32 @cp_close(ptr noundef %dev)
  %mtu3 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %9 = ptrtoint ptr %mtu3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %new_mtu, ptr %mtu3, align 4
  %dev.i12 = getelementptr i8, ptr %dev, i32 2308
  %10 = ptrtoint ptr %dev.i12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i12, align 4
  %mtu1.i13 = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 20
  %12 = ptrtoint ptr %mtu1.i13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mtu1.i13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500, i32 %13)
  %cmp.i14 = icmp ugt i32 %13, 1500
  %add2.i15 = add i32 %13, 22
  %spec.select.i16 = select i1 %cmp.i14, i32 %add2.i15, i32 1536
  %14 = getelementptr i8, ptr %dev, i32 3596
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %spec.select.i16, ptr %14, align 4
  %call4 = tail call i32 @cp_open(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call4, %if.end ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cp_tx_timeout(ptr noundef %dev, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr = getelementptr i8, ptr %1, i32 55
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #14, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !236
  %conv = zext i8 %2 to i32
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr6 = getelementptr i8, ptr %4, i32 224
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr6) #14, !srcloc !173
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !237
  %conv10 = zext i16 %6 to i32
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr14 = getelementptr i8, ptr %8, i32 62
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr14) #14, !srcloc !173
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !238
  %conv18 = zext i16 %10 to i32
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr22 = getelementptr i8, ptr %12, i32 60
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr22) #14, !srcloc !173
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !239
  %conv26 = zext i16 %14 to i32
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.56, i32 noundef %conv, i32 noundef %conv10, i32 noundef %conv18, i32 noundef %conv26) #17
  %lock = getelementptr i8, ptr %dev, i32 2312
  %call31 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #14
  %msg_enable = getelementptr i8, ptr %dev, i32 2356
  %15 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %msg_enable, align 4
  %and = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end55_crit_edge, label %do.body35

entry.do.end55_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end55

do.body35:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cp_tx_timeout.__UNIQUE_ID_ddebug494, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cp_tx_timeout, %if.then41)) #14
          to label %do.end55 [label %if.then41], !srcloc !205

if.then41:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #16
  %dev42 = getelementptr i8, ptr %dev, i32 2308
  %17 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev42, align 4
  %tx_head = getelementptr i8, ptr %dev, i32 3072
  %19 = ptrtoint ptr %tx_head to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tx_head, align 128
  %tx_tail = getelementptr i8, ptr %dev, i32 3076
  %21 = ptrtoint ptr %tx_tail to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tx_tail, align 4
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr46 = getelementptr i8, ptr %24, i32 130
  %25 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr46) #14, !srcloc !173
  %26 = tail call i16 @llvm.bswap.i16(i16 %25)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !240
  %conv50 = zext i16 %26 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @cp_tx_timeout.__UNIQUE_ID_ddebug494, ptr noundef %18, ptr noundef nonnull @.str.58, i32 noundef %20, i32 noundef %22, i32 noundef %conv50) #14
  br label %do.end55

do.end55:                                         ; preds = %if.then41, %do.body35, %entry.do.end55_crit_edge
  %dev76 = getelementptr i8, ptr %dev, i32 2308
  %tx_ring = getelementptr i8, ptr %dev, i32 3080
  br label %do.body58

do.body58:                                        ; preds = %for.inc.do.body58_crit_edge, %do.end55
  %i.0149 = phi i32 [ 0, %do.end55 ], [ %inc, %for.inc.do.body58_crit_edge ]
  %27 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %msg_enable, align 4
  %and60 = and i32 %28, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %do.body58.for.inc_crit_edge, label %do.body63

do.body58.for.inc_crit_edge:                      ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

do.body63:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cp_tx_timeout.__UNIQUE_ID_ddebug495, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cp_tx_timeout, %if.then75)) #14
          to label %for.inc [label %if.then75], !srcloc !205

if.then75:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #16
  %29 = ptrtoint ptr %dev76 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev76, align 4
  %31 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tx_ring, align 8
  %arrayidx = getelementptr %struct.cp_desc, ptr %32, i32 %i.0149
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx, align 8
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  %arrayidx79 = getelementptr %struct.cp_private, ptr %add.ptr.i, i32 0, i32 19, i32 %i.0149
  %36 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx79, align 4
  %opts2 = getelementptr %struct.cp_desc, ptr %32, i32 %i.0149, i32 1
  %38 = ptrtoint ptr %opts2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %opts2, align 4
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  %addr = getelementptr %struct.cp_desc, ptr %32, i32 %i.0149, i32 2
  %41 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %addr, align 8
  %43 = tail call i64 @llvm.bswap.i64(i64 %42)
  %arrayidx84 = getelementptr %struct.cp_private, ptr %add.ptr.i, i32 0, i32 18, i32 %i.0149
  %44 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx84, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @cp_tx_timeout.__UNIQUE_ID_ddebug495, ptr noundef %30, ptr noundef nonnull @.str.59, i32 noundef %i.0149, ptr noundef %arrayidx, i32 noundef %35, i32 noundef %37, i32 noundef %40, i64 noundef %43, ptr noundef %45) #14
  br label %for.inc

for.inc:                                          ; preds = %if.then75, %do.body63, %do.body58.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0149, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.end, label %for.inc.do.body58_crit_edge

for.inc.do.body58_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body58

for.end:                                          ; preds = %for.inc
  tail call fastcc void @cp_stop_hw(ptr noundef %add.ptr.i)
  tail call fastcc void @cp_clean_rings(ptr noundef %add.ptr.i)
  %call91 = tail call fastcc i32 @cp_init_rings(ptr noundef %add.ptr.i)
  tail call fastcc void @cp_start_hw(ptr noundef %add.ptr.i)
  tail call fastcc void @__cp_set_rx_mode(ptr noundef %dev)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !241
  tail call void @arm_heavy_mb() #14
  %46 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr97 = getelementptr i8, ptr %47, i32 60
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr97, i16 -21376) #14, !srcloc !178
  %48 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr101 = getelementptr i8, ptr %49, i32 60
  %50 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr101) #14, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !242
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %51 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %52) #14
  %napi = getelementptr i8, ptr %dev, i32 2360
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #14
  br i1 %call.i, label %if.then.i, label %for.end.napi_schedule_irqoff.exit_crit_edge

for.end.napi_schedule_irqoff.exit_crit_edge:      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %napi_schedule_irqoff.exit

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__napi_schedule_irqoff(ptr noundef %napi) #14
  br label %napi_schedule_irqoff.exit

napi_schedule_irqoff.exit:                        ; preds = %if.then.i, %for.end.napi_schedule_irqoff.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call31) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @cp_get_stats(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %lock = getelementptr i8, ptr %dev, i32 2312
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #14
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i17.not = icmp eq i32 %4, 0
  br i1 %tobool.i17.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr.i18 = getelementptr i8, ptr %6, i32 76
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18) #14, !srcloc !230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !243
  %8 = and i32 %7, -256
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #14
  %dev.i = getelementptr i8, ptr %dev, i32 2308
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  %rx_missed_errors.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 36, i32 15
  %12 = ptrtoint ptr %rx_missed_errors.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_missed_errors.i, align 4
  %add.i = add i32 %13, %9
  store i32 %add.i, ptr %rx_missed_errors.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !244
  tail call void @arm_heavy_mb() #14
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr3.i = getelementptr i8, ptr %15, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 0) #14, !srcloc !229
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #14
  %stats = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  ret ptr %stats
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cp_poll_controller(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr i8, ptr %dev, i32 2584
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %irq1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 46
  %2 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq1, align 4
  tail call void @disable_irq(i32 noundef %3) #14
  %call2 = tail call i32 @cp_interrupt(i32 noundef %3, ptr noundef %dev)
  tail call void @enable_irq(i32 noundef %3) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cp_set_features(ptr noundef %dev, i64 noundef %features) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %features1 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %0 = ptrtoint ptr %features1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %features1, align 16
  %xor = xor i64 %1, %features
  %and = and i64 %xor, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %lock = getelementptr i8, ptr %dev, i32 2312
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #14
  %cpcmd12 = getelementptr i8, ptr %dev, i32 2592
  %2 = ptrtoint ptr %cpcmd12 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %cpcmd12, align 32
  %4 = and i16 %3, -33
  %and7 = lshr i64 %features, 35
  %5 = trunc i64 %and7 to i16
  %6 = and i16 %5, 32
  %.sink = or i16 %4, %6
  store i16 %.sink, ptr %cpcmd12, align 32
  %cpcmd25 = getelementptr i8, ptr %dev, i32 2592
  %7 = and i16 %.sink, -65
  %8 = trunc i64 %features to i16
  %9 = lshr i16 %8, 2
  %10 = and i16 %9, 64
  %.sink55 = or i16 %7, %10
  %11 = ptrtoint ptr %cpcmd25 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %.sink55, ptr %cpcmd25, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !245
  tail call void @arm_heavy_mb() #14
  %cpcmd34 = getelementptr i8, ptr %dev, i32 2592
  %12 = ptrtoint ptr %cpcmd34 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %cpcmd34, align 32
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr = getelementptr i8, ptr %16, i32 224
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %14) #14, !srcloc !178
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr36 = getelementptr i8, ptr %18, i32 224
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr36) #14, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !246
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #14
  br label %cleanup

cleanup:                                          ; preds = %do.body2, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cp_init_hw(ptr noundef %cp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.cp_private, ptr %cp, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !247
  tail call void @arm_heavy_mb() #14
  %2 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cp, align 128
  %add.ptr.i = getelementptr i8, ptr %3, i32 55
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 16) #14, !srcloc !176
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %entry
  %dec8.i = phi i32 [ 999, %entry ], [ %dec.i, %if.end.i.while.body.i_crit_edge ]
  %4 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cp, align 128
  %add.ptr2.i = getelementptr i8, ptr %5, i32 55
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2.i) #14, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !248
  %7 = and i8 %6, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not.i = icmp eq i8 %7, 0
  br i1 %tobool4.not.i, label %while.body.i.cp_reset_hw.exit_crit_edge, label %if.end.i

while.body.i.cp_reset_hw.exit_crit_edge:          ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cp_reset_hw.exit

if.end.i:                                         ; preds = %while.body.i
  %call5.i = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 10) #14
  %dec.i = add nsw i32 %dec8.i, -1
  %tobool.not.i = icmp eq i32 %dec8.i, 0
  br i1 %tobool.not.i, label %while.end.i, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

while.end.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %9, ptr noundef nonnull @.str.30) #17
  br label %cp_reset_hw.exit

cp_reset_hw.exit:                                 ; preds = %while.end.i, %while.body.i.cp_reset_hw.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !249
  tail call void @arm_heavy_mb() #14
  %10 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cp, align 128
  %add.ptr = getelementptr i8, ptr %11, i32 80
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 -64) #14, !srcloc !176
  %12 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cp, align 128
  %add.ptr4 = getelementptr i8, ptr %13, i32 80
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr4) #14, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !250
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !251
  tail call void @arm_heavy_mb() #14
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %15 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_addr, align 64
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %19 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cp, align 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #14, !srcloc !229
  %21 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cp, align 128
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #14, !srcloc !230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !253
  tail call void @arm_heavy_mb() #14
  %24 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_addr, align 64
  %add.ptr29 = getelementptr i8, ptr %25, i32 4
  %26 = ptrtoint ptr %add.ptr29 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr29, align 4
  %28 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cp, align 128
  %add.ptr31 = getelementptr i8, ptr %29, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %27) #14, !srcloc !229
  %30 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cp, align 128
  %add.ptr35 = getelementptr i8, ptr %31, i32 4
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35) #14, !srcloc !230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !254
  tail call fastcc void @cp_start_hw(ptr noundef %cp)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !255
  tail call void @arm_heavy_mb() #14
  %33 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cp, align 128
  %add.ptr45 = getelementptr i8, ptr %34, i32 236
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr45, i8 6) #14, !srcloc !176
  tail call fastcc void @__cp_set_rx_mode(ptr noundef %1)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  tail call void @arm_heavy_mb() #14
  %35 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cp, align 128
  %add.ptr51 = getelementptr i8, ptr %36, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 393219) #14, !srcloc !229
  %37 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cp, align 128
  %add.ptr55 = getelementptr i8, ptr %38, i32 64
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr55) #14, !srcloc !230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !258
  tail call void @arm_heavy_mb() #14
  %40 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cp, align 128
  %add.ptr67 = getelementptr i8, ptr %41, i32 82
  %42 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr67) #14, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !259
  %43 = or i8 %42, 33
  %44 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cp, align 128
  %add.ptr74 = getelementptr i8, ptr %45, i32 82
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr74, i8 %43) #14, !srcloc !176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !260
  tail call void @arm_heavy_mb() #14
  %46 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cp, align 128
  %add.ptr79 = getelementptr i8, ptr %47, i32 89
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr79, i8 64) #14, !srcloc !176
  %wol_enabled = getelementptr inbounds %struct.cp_private, ptr %cp, i32 0, i32 21
  %48 = ptrtoint ptr %wol_enabled to i32
  call void @__asan_load1_noabort(i32 %48)
  %bf.load = load i8, ptr %wol_enabled, align 16
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %wol_enabled, align 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !261
  tail call void @arm_heavy_mb() #14
  %49 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cp, align 128
  %add.ptr86 = getelementptr i8, ptr %50, i32 216
  %51 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr86) #14, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !262
  %52 = and i8 %51, 1
  %53 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cp, align 128
  %add.ptr93 = getelementptr i8, ptr %54, i32 216
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr93, i8 %52) #14, !srcloc !176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !263
  tail call void @arm_heavy_mb() #14
  %55 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cp, align 128
  %add.ptr98 = getelementptr i8, ptr %56, i32 92
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr98, i16 0) #14, !srcloc !178
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !264
  tail call void @arm_heavy_mb() #14
  %57 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cp, align 128
  %add.ptr104 = getelementptr i8, ptr %58, i32 80
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr104, i8 0) #14, !srcloc !176
  %59 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cp, align 128
  %add.ptr108 = getelementptr i8, ptr %60, i32 80
  %61 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr108) #14, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !265
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cp_interrupt(i32 noundef %irq, ptr noundef %dev_instance) #2 align 64 {
entry:
  %pci_status = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %dev_instance, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !203

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %dev_instance, i32 2304
  %lock = getelementptr i8, ptr %dev_instance, i32 2312
  tail call void @_raw_spin_lock(ptr noundef %lock) #14
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr = getelementptr i8, ptr %1, i32 60
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #14, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !266
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool4.not = icmp eq i16 %2, 0
  br i1 %tobool4.not, label %if.end.out_unlock_crit_edge, label %if.end6

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

if.end6:                                          ; preds = %if.end
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr10 = getelementptr i8, ptr %4, i32 62
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr10) #14, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !267
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool14.not = icmp eq i16 %5, 0
  br i1 %tobool14.not, label %if.end6.out_unlock_crit_edge, label %lor.lhs.false

if.end6.out_unlock_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

lor.lhs.false:                                    ; preds = %if.end6
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %conv = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %5)
  %cmp15 = icmp eq i16 %5, -1
  br i1 %cmp15, label %lor.lhs.false.out_unlock_crit_edge, label %if.end18

lor.lhs.false.out_unlock_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

if.end18:                                         ; preds = %lor.lhs.false
  %msg_enable = getelementptr i8, ptr %dev_instance, i32 2356
  %7 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %msg_enable, align 4
  %and = and i32 %8, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %if.end18.do.body53_crit_edge, label %do.body21

if.end18.do.body53_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body53

do.body21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cp_interrupt.__UNIQUE_ID_ddebug487, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cp_interrupt, %if.then31)) #14
          to label %do.body53 [label %if.then31], !srcloc !205

if.then31:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr36 = getelementptr i8, ptr %10, i32 55
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr36) #14, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !268
  %conv40 = zext i8 %11 to i32
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr44 = getelementptr i8, ptr %13, i32 224
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr44) #14, !srcloc !173
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !269
  %conv48 = zext i16 %15 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @cp_interrupt.__UNIQUE_ID_ddebug487, ptr noundef nonnull %dev_instance, ptr noundef nonnull @.str.32, i32 noundef %conv, i32 noundef %conv40, i32 noundef %conv48) #14
  br label %do.body53

do.body53:                                        ; preds = %if.then31, %do.body21, %if.end18.do.body53_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !270
  tail call void @arm_heavy_mb() #14
  %and57 = and i16 %6, -84
  %16 = tail call i16 @llvm.bswap.i16(i16 %and57)
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr60 = getelementptr i8, ptr %18, i32 62
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr60, i16 %16) #14, !srcloc !178
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 6
  %19 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %do.body71, label %if.end76, !prof !203

do.body71:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !271
  tail call void @arm_heavy_mb() #14
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr75 = getelementptr i8, ptr %22, i32 60
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr75, i16 0) #14, !srcloc !178
  br label %out_unlock

if.end76:                                         ; preds = %do.body53
  %and78 = and i32 %conv, 83
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %if.end76.if.end100_crit_edge, label %if.then80

if.end76.if.end100_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end100

if.then80:                                        ; preds = %if.end76
  %napi = getelementptr i8, ptr %dev_instance, i32 2360
  %call81 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #14
  br i1 %call81, label %do.body84, label %if.then80.if.end100_crit_edge

if.then80.if.end100_crit_edge:                    ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end100

do.body84:                                        ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !272
  tail call void @arm_heavy_mb() #14
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr88 = getelementptr i8, ptr %24, i32 60
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr88, i16 -21376) #14, !srcloc !178
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr92 = getelementptr i8, ptr %26, i32 60
  %27 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr92) #14, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !273
  tail call void @__napi_schedule(ptr noundef %napi) #14
  br label %if.end100

if.end100:                                        ; preds = %do.body84, %if.then80.if.end100_crit_edge, %if.end76.if.end100_crit_edge
  %and102 = and i32 %conv, 396
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %tobool103.not = icmp eq i32 %and102, 0
  br i1 %tobool103.not, label %if.end100.if.end105_crit_edge, label %if.then104

if.end100.if.end105_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end105

if.then104:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @cp_tx(ptr noundef %add.ptr.i)
  br label %if.end105

if.end105:                                        ; preds = %if.then104, %if.end100.if.end105_crit_edge
  %and107 = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107)
  %tobool108.not = icmp eq i32 %and107, 0
  br i1 %tobool108.not, label %if.end105.if.end113_crit_edge, label %if.then109

if.end105.if.end113_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end113

if.then109:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #16
  %mii_if = getelementptr i8, ptr %dev_instance, i32 3608
  %28 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %msg_enable, align 4
  %and111 = and i32 %29, 4
  %call112 = tail call i32 @mii_check_media(ptr noundef %mii_if, i32 noundef %and111, i32 noundef 0) #14
  br label %if.end113

if.end113:                                        ; preds = %if.then109, %if.end105.if.end113_crit_edge
  %and115 = and i32 %conv, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115)
  %tobool116.not = icmp eq i32 %and115, 0
  br i1 %tobool116.not, label %if.end113.out_unlock_crit_edge, label %if.then117

if.end113.out_unlock_crit_edge:                   ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

if.then117:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pci_status) #14
  %30 = ptrtoint ptr %pci_status to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 -1, ptr %pci_status, align 2, !annotation !171
  %pdev = getelementptr i8, ptr %dev_instance, i32 2584
  %31 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdev, align 8
  %call118 = call i32 @pci_read_config_word(ptr noundef %32, i32 noundef 6, ptr noundef nonnull %pci_status) #14
  %33 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdev, align 8
  %35 = ptrtoint ptr %pci_status to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %pci_status, align 2
  %call120 = call i32 @pci_write_config_word(ptr noundef %34, i32 noundef 6, i16 noundef zeroext %36) #14
  %37 = ptrtoint ptr %pci_status to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %pci_status, align 2
  %conv122 = zext i16 %38 to i32
  call void (ptr, ptr, ...) @netdev_err(ptr noundef nonnull %dev_instance, ptr noundef nonnull @.str.33, i32 noundef %conv, i32 noundef %conv122) #17
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pci_status) #14
  br label %out_unlock

out_unlock:                                       ; preds = %if.then117, %if.end113.out_unlock_crit_edge, %do.body71, %lor.lhs.false.out_unlock_crit_edge, %if.end6.out_unlock_crit_edge, %if.end.out_unlock_crit_edge
  %tobool125.not = phi i32 [ 1, %if.end113.out_unlock_crit_edge ], [ 1, %if.then117 ], [ 0, %if.end6.out_unlock_crit_edge ], [ 0, %lor.lhs.false.out_unlock_crit_edge ], [ 0, %if.end.out_unlock_crit_edge ], [ 1, %do.body71 ]
  call void @_raw_spin_unlock(ptr noundef %lock) #14
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %tobool125.not, %out_unlock ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_check_media(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cp_init_rings(ptr nocapture noundef %cp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_ring = getelementptr inbounds %struct.cp_private, ptr %cp, i32 0, i32 17
  %0 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_ring, align 8
  %2 = call ptr @memset(ptr %1, i32 0, i32 1024)
  %3 = load ptr, ptr %tx_ring, align 8
  %arrayidx = getelementptr %struct.cp_desc, ptr %3, i32 63
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 64, ptr %arrayidx, align 8
  %tx_opts = getelementptr inbounds %struct.cp_private, ptr %cp, i32 0, i32 19
  %5 = call ptr @memset(ptr %tx_opts, i32 0, i32 256)
  %rx_tail.i = getelementptr inbounds %struct.cp_private, ptr %cp, i32 0, i32 11
  %6 = ptrtoint ptr %rx_tail.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %rx_tail.i, align 4
  %tx_tail.i = getelementptr inbounds %struct.cp_private, ptr %cp, i32 0, i32 16
  %7 = ptrtoint ptr %tx_tail.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %tx_tail.i, align 4
  %tx_head.i = getelementptr inbounds %struct.cp_private, ptr %cp, i32 0, i32 15
  %8 = ptrtoint ptr %tx_head.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %tx_head.i, align 128
  %dev1.i = getelementptr inbounds %struct.cp_private, ptr %cp, i32 0, i32 1
  %9 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev1.i, align 4
  %rx_buf_sz.i = getelementptr inbounds %struct.cp_private, ptr %cp, i32 0, i32 20
  %pdev.i = getelementptr inbounds %struct.cp_private, ptr %cp, i32 0, i32 5
  %rx_ring.i = getelementptr inbounds %struct.cp_private, ptr %cp, i32 0, i32 12
  %11 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rx_buf_sz.i, align 4
  %add.i.i.i8 = add i32 %12, 2
  %call.i.i.i9 = tail call ptr @__netdev_alloc_skb(ptr noundef %10, i32 noundef %add.i.i.i8, i32 noundef 2592) #14
  %tobool.not.i.i.i10 = icmp eq ptr %call.i.i.i9, null
  br i1 %tobool.not.i.i.i10, label %entry.err_out.i_crit_edge, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  br label %if.end.i

entry.err_out.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_out.i

if.end.i:                                         ; preds = %for.inc.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %call.i.i.i12 = phi ptr [ %call.i.i.i, %for.inc.i.if.end.i_crit_edge ], [ %call.i.i.i9, %entry.if.end.i_crit_edge ]
  %i.056.i11 = phi i32 [ %inc.i, %for.inc.i.if.end.i_crit_edge ], [ 0, %entry.if.end.i_crit_edge ]
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i12, i32 0, i32 19
  %13 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %14, i32 2
  store ptr %add.ptr.i.i.i.i, ptr %data.i.i.i.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i12, i32 0, i32 16
  %15 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %16, i32 2
  store ptr %add.ptr1.i.i.i.i, ptr %tail.i.i.i.i, align 8
  %17 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev.i, align 8
  %dev2.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %19 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rx_buf_sz.i, align 4
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr.i.i.i.i) #14
  br i1 %call.i.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.end.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge, label %if.then.i.i, !prof !172

land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_map_single_attrs.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %dev2.i) #14
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44, i32 3
  %21 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i52.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i52.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %23 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev2.i, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %24, %if.end.i.i.i ], [ %22, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.29, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #14
  br label %dma_map_single_attrs.exit.i

if.end39.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @debug_dma_map_single(ptr noundef %dev2.i, ptr noundef %add.ptr.i.i.i.i, i32 noundef %20) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %25 = load ptr, ptr @mem_map, align 4
  %26 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  %sub.i.i = add i32 %26, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %25, i32 %shr.i.i
  %and.i.i = and i32 %26, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev2.i, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef %20, i32 noundef 2, i32 noundef 0) #14
  br label %dma_map_single_attrs.exit.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge ]
  %27 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdev.i, align 8
  %dev6.i = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev6.i, i32 noundef %retval.0.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i)
  %cmp.i.i = icmp eq i32 %retval.0.i.i, -1
  br i1 %cmp.i.i, label %if.then9.i, label %if.end10.i

if.then9.i:                                       ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i12, i32 noundef 0) #14
  br label %err_out.i

if.end10.i:                                       ; preds = %dma_map_single_attrs.exit.i
  %arrayidx.i = getelementptr %struct.cp_private, ptr %cp, i32 0, i32 13, i32 %i.056.i11
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i.i.i12, ptr %arrayidx.i, align 4
  %30 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rx_ring.i, align 8
  %opts2.i = getelementptr %struct.cp_desc, ptr %31, i32 %i.056.i11, i32 1
  %32 = ptrtoint ptr %opts2.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %opts2.i, align 4
  %conv.i = zext i32 %retval.0.i.i to i64
  %33 = tail call i64 @llvm.bswap.i64(i64 %conv.i) #14
  %34 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rx_ring.i, align 8
  %addr.i = getelementptr %struct.cp_desc, ptr %35, i32 %i.056.i11, i32 2
  %36 = ptrtoint ptr %addr.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %33, ptr %addr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %i.056.i11)
  %cmp14.i = icmp eq i32 %i.056.i11, 63
  %37 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rx_buf_sz.i, align 4
  br i1 %cmp14.i, label %cleanup27.loopexit.i, label %for.inc.i

for.inc.i:                                        ; preds = %if.end10.i
  %or21.i = or i32 %38, -2147483648
  %39 = tail call i32 @llvm.bswap.i32(i32 %or21.i) #14
  %40 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rx_ring.i, align 8
  %arrayidx23.i = getelementptr %struct.cp_desc, ptr %41, i32 %i.056.i11
  %42 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %39, ptr %arrayidx23.i, align 8
  %inc.i = add nuw nsw i32 %i.056.i11, 1
  %43 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rx_buf_sz.i, align 4
  %add.i.i.i = add i32 %44, 2
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %10, i32 noundef %add.i.i.i, i32 noundef 2592) #14
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %for.inc.i.err_out.i_crit_edge, label %for.inc.i.if.end.i_crit_edge

for.inc.i.if.end.i_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

for.inc.i.err_out.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_out.i

err_out.i:                                        ; preds = %for.inc.i.err_out.i_crit_edge, %if.then9.i, %entry.err_out.i_crit_edge
  tail call fastcc void @cp_clean_rings(ptr noundef %cp) #14
  br label %cp_refill_rx.exit

cleanup27.loopexit.i:                             ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #16
  %or.i = or i32 %38, -1073741824
  %45 = tail call i32 @llvm.bswap.i32(i32 %or.i) #14
  %46 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rx_ring.i, align 8
  %arrayidx19.i = getelementptr %struct.cp_desc, ptr %47, i32 63
  %48 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %45, ptr %arrayidx19.i, align 8
  br label %cp_refill_rx.exit

cp_refill_rx.exit:                                ; preds = %cleanup27.loopexit.i, %err_out.i
  %retval.0.i = phi i32 [ -12, %err_out.i ], [ 0, %cleanup27.loopexit.i ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cp_clean_rings(ptr nocapture noundef %cp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_ring = getelementptr inbounds %struct.cp_private, ptr %cp, i32 0, i32 12
  %pdev = getelementptr inbounds %struct.cp_private, ptr %cp, i32 0, i32 5
  %rx_buf_sz = getelementptr inbounds %struct.cp_private, ptr %cp, i32 0, i32 20
  br label %for.body

for.cond3.preheader:                              ; preds = %for.inc
  %tx_ring = getelementptr inbounds %struct.cp_private, ptr %cp, i32 0, i32 17
  %dev22 = getelementptr inbounds %struct.cp_private, ptr %cp, i32 0, i32 1
  br label %for.body6

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.062 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.cp_private, ptr %cp, i32 0, i32 13, i32 %i.062
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_ring, align 8
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %addr = getelementptr %struct.cp_desc, ptr %3, i32 %i.062, i32 2
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %addr, align 8
  %8 = tail call i64 @llvm.bswap.i64(i64 %7)
  %conv = trunc i64 %8 to i32
  %9 = ptrtoint ptr %rx_buf_sz to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rx_buf_sz, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %conv, i32 noundef %10, i32 noundef 2, i32 noundef 0) #14
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %12, i32 noundef 1) #14
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.062, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.cond3.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body6:                                        ; preds = %for.inc25.for.body6_crit_edge, %for.cond3.preheader
  %i.164 = phi i32 [ 0, %for.cond3.preheader ], [ %inc26, %for.inc25.for.body6_crit_edge ]
  %arrayidx7 = getelementptr %struct.cp_private, ptr %cp, i32 0, i32 18, i32 %i.164
  %13 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx7, align 4
  %tobool8.not = icmp eq ptr %14, null
  br i1 %tobool8.not, label %for.body6.for.inc25_crit_edge, label %if.then9

for.body6.for.inc25_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc25

if.then9:                                         ; preds = %for.body6
  %15 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tx_ring, align 8
  %add.ptr12 = getelementptr %struct.cp_desc, ptr %16, i32 %i.164
  %17 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev, align 8
  %dev14 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %addr15 = getelementptr %struct.cp_desc, ptr %16, i32 %i.164, i32 2
  %19 = ptrtoint ptr %addr15 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %addr15, align 8
  %21 = tail call i64 @llvm.bswap.i64(i64 %20)
  %conv16 = trunc i64 %21 to i32
  %22 = ptrtoint ptr %add.ptr12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr12, align 8
  %24 = and i32 %23, -65536
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  tail call void @dma_unmap_page_attrs(ptr noundef %dev14, i32 noundef %conv16, i32 noundef %25, i32 noundef 1, i32 noundef 0) #14
  %26 = ptrtoint ptr %add.ptr12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr12, align 8
  %28 = and i32 %27, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool19.not = icmp eq i32 %28, 0
  br i1 %tobool19.not, label %if.then9.if.end21_crit_edge, label %if.then20

if.then9.if.end21_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

if.then20:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %14, i32 noundef 1) #14
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.then9.if.end21_crit_edge
  %29 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev22, align 4
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 36, i32 7
  %31 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tx_dropped, align 4
  %inc23 = add i32 %32, 1
  store i32 %inc23, ptr %tx_dropped, align 4
  br label %for.inc25

for.inc25:                                        ; preds = %if.end21, %for.body6.for.inc25_crit_edge
  %inc26 = add nuw nsw i32 %i.164, 1
  %exitcond66.not = icmp eq i32 %inc26, 64
  br i1 %exitcond66.not, label %for.end27, label %for.inc25.for.body6_crit_edge

for.inc25.for.body6_crit_edge:                    ; preds = %for.inc25
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body6

for.end27:                                        ; preds = %for.inc25
  call void @__sanitizer_cov_trace_pc() #16
  %33 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev22, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 103
  %35 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %36, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state.i.i) #14
  %dql.i.i = getelementptr inbounds %struct.netdev_queue, ptr %36, i32 0, i32 15
  tail call void @dql_reset(ptr noundef %dql.i.i) #14
  %37 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rx_ring, align 8
  %39 = call ptr @memset(ptr %38, i32 0, i32 1024)
  %40 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tx_ring, align 8
  %42 = call ptr @memset(ptr %41, i32 0, i32 1024)
  %rx_skb31 = getelementptr inbounds %struct.cp_private, ptr %cp, i32 0, i32 13
  %43 = call ptr @memset(ptr %rx_skb31, i32 0, i32 256)
  %tx_skb33 = getelementptr inbounds %struct.cp_private, ptr %cp, i32 0, i32 18
  %44 = call ptr @memset(ptr %tx_skb33, i32 0, i32 512)
  ret void
}

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
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cp_start_hw(ptr nocapture noundef readonly %cp) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !274
  tail call void @arm_heavy_mb() #14
  %cpcmd = getelementptr inbounds %struct.cp_private, ptr %cp, i32 0, i32 7
  %0 = ptrtoint ptr %cpcmd to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %cpcmd, align 32
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %3 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cp, align 128
  %add.ptr = getelementptr i8, ptr %4, i32 224
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %2) #14, !srcloc !178
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !275
  tail call void @arm_heavy_mb() #14
  %5 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cp, align 128
  %add.ptr6 = getelementptr i8, ptr %6, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 0) #14, !srcloc !229
  %7 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cp, align 128
  %add.ptr8 = getelementptr i8, ptr %8, i32 40
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #14, !srcloc !230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !277
  tail call void @arm_heavy_mb() #14
  %10 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cp, align 128
  %add.ptr17 = getelementptr i8, ptr %11, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 0) #14, !srcloc !229
  %12 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cp, align 128
  %add.ptr21 = getelementptr i8, ptr %13, i32 44
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #14, !srcloc !230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !278
  %ring_dma27 = getelementptr inbounds %struct.cp_private, ptr %cp, i32 0, i32 22
  %15 = ptrtoint ptr %ring_dma27 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ring_dma27, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !279
  tail call void @arm_heavy_mb() #14
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %18 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cp, align 128
  %add.ptr33 = getelementptr i8, ptr %19, i32 228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 %17) #14, !srcloc !229
  %20 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cp, align 128
  %add.ptr37 = getelementptr i8, ptr %21, i32 228
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37) #14, !srcloc !230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !281
  tail call void @arm_heavy_mb() #14
  %23 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cp, align 128
  %add.ptr49 = getelementptr i8, ptr %24, i32 232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 0) #14, !srcloc !229
  %25 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cp, align 128
  %add.ptr53 = getelementptr i8, ptr %26, i32 232
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr53) #14, !srcloc !230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !282
  %add = add i32 %16, 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !283
  tail call void @arm_heavy_mb() #14
  %28 = tail call i32 @llvm.bswap.i32(i32 %add)
  %29 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cp, align 128
  %add.ptr65 = getelementptr i8, ptr %30, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65, i32 %28) #14, !srcloc !229
  %31 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cp, align 128
  %add.ptr69 = getelementptr i8, ptr %32, i32 32
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr69) #14, !srcloc !230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !284
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !285
  tail call void @arm_heavy_mb() #14
  %34 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cp, align 128
  %add.ptr82 = getelementptr i8, ptr %35, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82, i32 0) #14, !srcloc !229
  %36 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cp, align 128
  %add.ptr86 = getelementptr i8, ptr %37, i32 36
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr86) #14, !srcloc !230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !286
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !287
  tail call void @arm_heavy_mb() #14
  %39 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cp, align 128
  %add.ptr96 = getelementptr i8, ptr %40, i32 55
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr96, i8 12) #14, !srcloc !176
  %dev = getelementptr inbounds %struct.cp_private, ptr %cp, i32 0, i32 1
  %41 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %42, i32 0, i32 103
  %43 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %44, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state.i.i) #14
  %dql.i.i = getelementptr inbounds %struct.netdev_queue, ptr %44, i32 0, i32 15
  tail call void @dql_reset(ptr noundef %dql.i.i) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__cp_set_rx_mode(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %mc_filter = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mc_filter) #14
  %0 = getelementptr inbounds [2 x i32], ptr %mc_filter, i32 0, i32 1
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 8
  %and = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end52.sink.split_crit_edge

entry.if.end52.sink.split_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end52.sink.split

if.else:                                          ; preds = %entry
  %mc = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66
  %count = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66, i32 1
  %3 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %count, align 8
  %5 = load i32, ptr @multicast_filter_limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %5)
  %cmp = icmp sle i32 %4, %5
  %and3 = and i32 %2, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %or.cond = select i1 %cmp, i1 %tobool4.not, i1 false
  br i1 %or.cond, label %if.else8, label %if.else.if.end52.sink.split_crit_edge

if.else.if.end52.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end52.sink.split

if.else8:                                         ; preds = %if.else
  %6 = ptrtoint ptr %mc_filter to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %mc_filter, align 4
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %0, align 4
  %8 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %8)
  %ha.0124 = load ptr, ptr %mc, align 4
  %cmp15.not125 = icmp eq ptr %ha.0124, %mc
  br i1 %cmp15.not125, label %if.else8.if.end52_crit_edge, label %if.else8.cond.end_crit_edge

if.else8.cond.end_crit_edge:                      ; preds = %if.else8
  br label %cond.end

if.else8.if.end52_crit_edge:                      ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end52

cond.end:                                         ; preds = %cond.end.cond.end_crit_edge, %if.else8.cond.end_crit_edge
  %ha.0126 = phi ptr [ %ha.0, %cond.end.cond.end_crit_edge ], [ %ha.0124, %if.else8.cond.end_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0126, i32 0, i32 2
  %call16 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr, i32 noundef 6) #18
  %9 = and i32 %call16, 255
  %arrayidx.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv2.i.i = zext i8 %11 to i32
  %shr40 = lshr i32 %conv2.i.i, 2
  %and41 = and i32 %shr40, 31
  %shl42 = shl nuw i32 1, %and41
  %12 = lshr i32 %conv2.i.i, 7
  %arrayidx44 = getelementptr [2 x i32], ptr %mc_filter, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx44, align 4
  %or45 = or i32 %shl42, %14
  store i32 %or45, ptr %arrayidx44, align 4
  %15 = ptrtoint ptr %ha.0126 to i32
  call void @__asan_load4_noabort(i32 %15)
  %ha.0 = load ptr, ptr %ha.0126, align 4
  %cmp15.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp15.not, label %cond.end.if.end52_crit_edge, label %cond.end.cond.end_crit_edge

cond.end.cond.end_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.end.if.end52_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end52

if.end52.sink.split:                              ; preds = %if.else.if.end52.sink.split_crit_edge, %entry.if.end52.sink.split_crit_edge
  %rx_mode.1.ph = phi i32 [ 41999, %entry.if.end52.sink.split_crit_edge ], [ 41998, %if.else.if.end52.sink.split_crit_edge ]
  %16 = ptrtoint ptr %mc_filter to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %mc_filter, align 4
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %0, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.end52.sink.split, %cond.end.if.end52_crit_edge, %if.else8.if.end52_crit_edge
  %rx_mode.1 = phi i32 [ 41994, %if.else8.if.end52_crit_edge ], [ %rx_mode.1.ph, %if.end52.sink.split ], [ 41998, %cond.end.if.end52_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %rx_config = getelementptr i8, ptr %dev, i32 2588
  %18 = ptrtoint ptr %rx_config to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %rx_mode.1, ptr %rx_config, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !288
  tail call void @arm_heavy_mb() #14
  %19 = ptrtoint ptr %rx_config to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rx_config, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr56 = getelementptr i8, ptr %23, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56, i32 %21) #14, !srcloc !229
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr58 = getelementptr i8, ptr %25, i32 68
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr58) #14, !srcloc !230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !290
  tail call void @arm_heavy_mb() #14
  %27 = ptrtoint ptr %mc_filter to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mc_filter, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr70 = getelementptr i8, ptr %31, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr70, i32 %29) #14, !srcloc !229
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr74 = getelementptr i8, ptr %33, i32 8
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr74) #14, !srcloc !230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !291
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !292
  tail call void @arm_heavy_mb() #14
  %35 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %0, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %38 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr86 = getelementptr i8, ptr %39, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr86, i32 %37) #14, !srcloc !229
  %40 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr90 = getelementptr i8, ptr %41, i32 12
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr90) #14, !srcloc !230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !293
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mc_filter) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cp_tx(ptr nocapture noundef %cp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_head1 = getelementptr inbounds %struct.cp_private, ptr %cp, i32 0, i32 15
  %0 = ptrtoint ptr %tx_head1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_head1, align 128
  %tx_tail2 = getelementptr inbounds %struct.cp_private, ptr %cp, i32 0, i32 16
  %2 = ptrtoint ptr %tx_tail2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_tail2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp.not198 = icmp eq i32 %3, %1
  br i1 %cmp.not198, label %while.end.thread, label %while.body.lr.ph

while.end.thread:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %tx_tail2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %1, ptr %tx_tail2, align 4
  %dev118209 = getelementptr inbounds %struct.cp_private, ptr %cp, i32 0, i32 1
  br label %netdev_completed_queue.exit

while.body.lr.ph:                                 ; preds = %entry
  %tx_ring = getelementptr inbounds %struct.cp_private, ptr %cp, i32 0, i32 17
  %pdev = getelementptr inbounds %struct.cp_private, ptr %cp, i32 0, i32 5
  %msg_enable = getelementptr inbounds %struct.cp_private, ptr %cp, i32 0, i32 3
  %dev36 = getelementptr inbounds %struct.cp_private, ptr %cp, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %tx_tail.0201 = phi i32 [ %3, %while.body.lr.ph ], [ %and114, %cleanup.while.body_crit_edge ]
  %bytes_compl.0200 = phi i32 [ 0, %while.body.lr.ph ], [ %bytes_compl.1, %cleanup.while.body_crit_edge ]
  %5 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tx_ring, align 8
  %add.ptr = getelementptr %struct.cp_desc, ptr %6, i32 %tx_tail.0201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !294
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr, align 8
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %tobool.not = icmp sgt i32 %9, -1
  br i1 %tobool.not, label %if.end, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.end:                                           ; preds = %while.body
  %arrayidx = getelementptr %struct.cp_private, ptr %cp, i32 0, i32 18, i32 %tx_tail.0201
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %tobool3.not = icmp eq ptr %11, null
  br i1 %tobool3.not, label %do.body8, label %do.end14, !prof !203

do.body8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/realtek/8139cp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 665, 0\0A.popsection", ""() #14, !srcloc !295
  unreachable

do.end14:                                         ; preds = %if.end
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %addr = getelementptr %struct.cp_desc, ptr %6, i32 %tx_tail.0201, i32 2
  %14 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %addr, align 8
  %16 = tail call i64 @llvm.bswap.i64(i64 %15)
  %conv = trunc i64 %16 to i32
  %arrayidx15 = getelementptr %struct.cp_private, ptr %cp, i32 0, i32 19, i32 %tx_tail.0201
  %17 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx15, align 4
  %and16 = and i32 %18, 65535
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %conv, i32 noundef %and16, i32 noundef 1, i32 noundef 0) #14
  %and17 = and i32 %9, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %do.end14.cleanup_crit_edge, label %if.then19

do.end14.cleanup_crit_edge:                       ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then19:                                        ; preds = %do.end14
  %and20 = and i32 %9, 41943040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.else, label %do.body23

do.body23:                                        ; preds = %if.then19
  %19 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %msg_enable, align 4
  %and24 = and i32 %20, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %do.body23.do.end42_crit_edge, label %do.body27

do.body23.do.end42_crit_edge:                     ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end42

do.body27:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cp_tx.__UNIQUE_ID_ddebug488, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cp_tx, %if.then35)) #14
          to label %do.end42 [label %if.then35], !srcloc !205

if.then35:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #16
  %21 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev36, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @cp_tx.__UNIQUE_ID_ddebug488, ptr noundef %22, ptr noundef nonnull @.str.35, i32 noundef %9) #14
  br label %do.end42

do.end42:                                         ; preds = %if.then35, %do.body27, %do.body23.do.end42_crit_edge
  %23 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev36, align 4
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 36, i32 5
  %25 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %26, 1
  store i32 %inc, ptr %tx_errors, align 4
  %and44 = and i32 %9, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %do.end42.if.end50_crit_edge, label %if.then46

do.end42.if.end50_crit_edge:                      ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end50

if.then46:                                        ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #16
  %27 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev36, align 4
  %tx_window_errors = getelementptr inbounds %struct.net_device, ptr %28, i32 0, i32 36, i32 20
  %29 = ptrtoint ptr %tx_window_errors to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tx_window_errors, align 8
  %inc49 = add i32 %30, 1
  store i32 %inc49, ptr %tx_window_errors, align 8
  br label %if.end50

if.end50:                                         ; preds = %if.then46, %do.end42.if.end50_crit_edge
  %and51 = and i32 %9, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.end50.if.end57_crit_edge, label %if.then53

if.end50.if.end57_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end57

if.then53:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #16
  %31 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev36, align 4
  %tx_aborted_errors = getelementptr inbounds %struct.net_device, ptr %32, i32 0, i32 36, i32 16
  %33 = ptrtoint ptr %tx_aborted_errors to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tx_aborted_errors, align 8
  %inc56 = add i32 %34, 1
  store i32 %inc56, ptr %tx_aborted_errors, align 8
  br label %if.end57

if.end57:                                         ; preds = %if.then53, %if.end50.if.end57_crit_edge
  %and58 = and i32 %9, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %if.end57.if.end64_crit_edge, label %if.then60

if.end57.if.end64_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end64

if.then60:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #16
  %35 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev36, align 4
  %tx_carrier_errors = getelementptr inbounds %struct.net_device, ptr %36, i32 0, i32 36, i32 17
  %37 = ptrtoint ptr %tx_carrier_errors to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tx_carrier_errors, align 4
  %inc63 = add i32 %38, 1
  store i32 %inc63, ptr %tx_carrier_errors, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then60, %if.end57.if.end64_crit_edge
  %and65 = and i32 %9, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %if.end64.if.end106_crit_edge, label %if.then67

if.end64.if.end106_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end106

if.then67:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #16
  %39 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev36, align 4
  %tx_fifo_errors = getelementptr inbounds %struct.net_device, ptr %40, i32 0, i32 36, i32 18
  %41 = ptrtoint ptr %tx_fifo_errors to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tx_fifo_errors, align 8
  %inc70 = add i32 %42, 1
  store i32 %inc70, ptr %tx_fifo_errors, align 8
  br label %if.end106

if.else:                                          ; preds = %if.then19
  %shr = lshr i32 %9, 16
  %and72 = and i32 %shr, 15
  %43 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev36, align 4
  %collisions = getelementptr inbounds %struct.net_device, ptr %44, i32 0, i32 36, i32 9
  %45 = ptrtoint ptr %collisions to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %collisions, align 4
  %add = add i32 %46, %and72
  store i32 %add, ptr %collisions, align 4
  %47 = load ptr, ptr %dev36, align 4
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %47, i32 0, i32 36, i32 1
  %48 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tx_packets, align 4
  %inc77 = add i32 %49, 1
  store i32 %inc77, ptr %tx_packets, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 6
  %50 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %len, align 4
  %52 = load ptr, ptr %dev36, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %52, i32 0, i32 36, i32 3
  %53 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %tx_bytes, align 4
  %add80 = add i32 %54, %51
  store i32 %add80, ptr %tx_bytes, align 4
  %55 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %msg_enable, align 4
  %and83 = and i32 %56, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %if.else.if.end106_crit_edge, label %do.body86

if.else.if.end106_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end106

do.body86:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cp_tx.__UNIQUE_ID_ddebug489, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cp_tx, %if.then98)) #14
          to label %if.end106 [label %if.then98], !srcloc !205

if.then98:                                        ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #16
  %57 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev36, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @cp_tx.__UNIQUE_ID_ddebug489, ptr noundef %58, ptr noundef nonnull @.str.36, i32 noundef %tx_tail.0201) #14
  br label %if.end106

if.end106:                                        ; preds = %if.then98, %do.body86, %if.else.if.end106_crit_edge, %if.then67, %if.end64.if.end106_crit_edge
  %len107 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 6
  %59 = ptrtoint ptr %len107 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %len107, align 4
  %add108 = add i32 %60, %bytes_compl.0200
  tail call void @__dev_kfree_skb_irq(ptr noundef nonnull %11, i32 noundef 0) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end106, %do.end14.cleanup_crit_edge
  %bytes_compl.1 = phi i32 [ %add108, %if.end106 ], [ %bytes_compl.0200, %do.end14.cleanup_crit_edge ]
  %61 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %arrayidx, align 4
  %add113 = add i32 %tx_tail.0201, 1
  %and114 = and i32 %add113, 63
  %cmp.not = icmp eq i32 %and114, %1
  br i1 %cmp.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %while.body.while.end_crit_edge
  %bytes_compl.0.lcssa = phi i32 [ %bytes_compl.1, %cleanup.while.end_crit_edge ], [ %bytes_compl.0200, %while.body.while.end_crit_edge ]
  %tx_tail.0.lcssa = phi i32 [ %1, %cleanup.while.end_crit_edge ], [ %tx_tail.0201, %while.body.while.end_crit_edge ]
  %62 = ptrtoint ptr %tx_tail2 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %tx_tail.0.lcssa, ptr %tx_tail2, align 4
  %dev118 = getelementptr inbounds %struct.cp_private, ptr %cp, i32 0, i32 1
  %63 = ptrtoint ptr %dev118 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev118, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %64, i32 0, i32 103
  %65 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %_tx.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes_compl.0.lcssa)
  %tobool.not.i.i = icmp eq i32 %bytes_compl.0.lcssa, 0
  br i1 %tobool.not.i.i, label %while.end.netdev_completed_queue.exit_crit_edge, label %if.end.i.i, !prof !203

while.end.netdev_completed_queue.exit_crit_edge:  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %netdev_completed_queue.exit

if.end.i.i:                                       ; preds = %while.end
  %dql.i.i = getelementptr inbounds %struct.netdev_queue, ptr %66, i32 0, i32 15
  tail call void @dql_completed(ptr noundef %dql.i.i, i32 noundef %bytes_compl.0.lcssa) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !296
  %adj_limit.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %66, i32 0, i32 15, i32 1
  %67 = ptrtoint ptr %adj_limit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %adj_limit.i.i.i, align 4
  %69 = ptrtoint ptr %dql.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %dql.i.i, align 128
  %sub.i.i.i = sub i32 %68, %70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i.netdev_completed_queue.exit_crit_edge, label %if.end14.i.i, !prof !203

if.end.i.i.netdev_completed_queue.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %netdev_completed_queue.exit

if.end14.i.i:                                     ; preds = %if.end.i.i
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %66, i32 0, i32 13
  %call15.i.i = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %state.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i)
  %tobool16.not.i.i = icmp eq i32 %call15.i.i, 0
  br i1 %tobool16.not.i.i, label %if.end14.i.i.netdev_completed_queue.exit_crit_edge, label %if.then17.i.i

if.end14.i.i.netdev_completed_queue.exit_crit_edge: ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %netdev_completed_queue.exit

if.then17.i.i:                                    ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @netif_schedule_queue(ptr noundef %66) #14
  br label %netdev_completed_queue.exit

netdev_completed_queue.exit:                      ; preds = %if.then17.i.i, %if.end14.i.i.netdev_completed_queue.exit_crit_edge, %if.end.i.i.netdev_completed_queue.exit_crit_edge, %while.end.netdev_completed_queue.exit_crit_edge, %while.end.thread
  %dev118212 = phi ptr [ %dev118209, %while.end.thread ], [ %dev118, %while.end.netdev_completed_queue.exit_crit_edge ], [ %dev118, %if.end.i.i.netdev_completed_queue.exit_crit_edge ], [ %dev118, %if.end14.i.i.netdev_completed_queue.exit_crit_edge ], [ %dev118, %if.then17.i.i ]
  %71 = ptrtoint ptr %tx_tail2 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %tx_tail2, align 4
  %73 = ptrtoint ptr %tx_head1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %tx_head1, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %74)
  %cmp121.not = icmp ugt i32 %72, %74
  %add124 = add i32 %72, 63
  %sub = sub i32 %add124, %74
  %75 = xor i32 %74, -1
  %sub129 = add i32 %72, %75
  %cond = select i1 %cmp121.not, i32 %sub129, i32 %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %cond)
  %cmp130 = icmp ugt i32 %cond, 18
  br i1 %cmp130, label %if.then132, label %netdev_completed_queue.exit.if.end134_crit_edge

netdev_completed_queue.exit.if.end134_crit_edge:  ; preds = %netdev_completed_queue.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end134

if.then132:                                       ; preds = %netdev_completed_queue.exit
  call void @__sanitizer_cov_trace_pc() #16
  %76 = ptrtoint ptr %dev118212 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev118212, align 4
  %_tx.i.i188 = getelementptr inbounds %struct.net_device, ptr %77, i32 0, i32 103
  %78 = ptrtoint ptr %_tx.i.i188 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %_tx.i.i188, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %79) #14
  br label %if.end134

if.end134:                                        ; preds = %if.then132, %netdev_completed_queue.exit.if.end134_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_irq(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_completed(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_schedule_queue(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc nonnull ptr @netdev_reg_state(ptr noundef %dev) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %reg_state = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 121
  %0 = ptrtoint ptr %reg_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load45 = load i8, ptr %reg_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %bf.load45)
  %1 = icmp ult i8 %bf.load45, 6
  br i1 %1, label %switch.lookup, label %land.end

land.end:                                         ; preds = %entry
  %.b46 = load i1, ptr @netdev_reg_state.__already_done, align 1
  br i1 %.b46, label %land.end.return_crit_edge, label %if.then, !prof !172

land.end.return_crit_edge:                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then:                                          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @netdev_reg_state.__already_done, align 1
  %bf.cast21 = zext i8 %bf.load45 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.53, i32 noundef 4983, i32 noundef 9, ptr noundef nonnull @.str.54, ptr noundef %dev, i32 noundef %bf.cast21) #14
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %2 = sext i8 %bf.load45 to i32
  %switch.gep = getelementptr inbounds [6 x ptr], ptr @switch.table.netdev_reg_state, i32 0, i32 %2
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %if.then, %land.end.return_crit_edge
  %retval.0 = phi ptr [ @.str.55, %if.then ], [ @.str.55, %land.end.return_crit_edge ], [ %switch.load, %switch.lookup ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_mii_ioctl(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule_irqoff(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cp_rx_err_acct(ptr nocapture noundef readonly %cp, i32 noundef %rx_tail, i32 noundef %status, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr inbounds %struct.cp_private, ptr %cp, i32 0, i32 3
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  %and = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.body1

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cp_rx_err_acct.__UNIQUE_ID_ddebug485, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cp_rx_err_acct, %if.then5)) #14
          to label %do.end7 [label %if.then5], !srcloc !205

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.cp_private, ptr %cp, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @cp_rx_err_acct.__UNIQUE_ID_ddebug485, ptr noundef %3, ptr noundef nonnull @.str.63, i32 noundef %rx_tail, i32 noundef %status, i32 noundef %len) #14
  br label %do.end7

do.end7:                                          ; preds = %if.then5, %do.body1, %entry.do.end7_crit_edge
  %dev8 = getelementptr inbounds %struct.cp_private, ptr %cp, i32 0, i32 1
  %4 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev8, align 4
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 4
  %6 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_errors, align 8
  %inc = add i32 %7, 1
  store i32 %inc, ptr %rx_errors, align 8
  %and9 = and i32 %status, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %do.end7.if.end15_crit_edge, label %if.then11

do.end7.if.end15_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

if.then11:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev8, align 4
  %rx_frame_errors = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 36, i32 13
  %10 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_frame_errors, align 4
  %inc14 = add i32 %11, 1
  store i32 %inc14, ptr %rx_frame_errors, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %do.end7.if.end15_crit_edge
  %and16 = and i32 %status, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end15.if.end22_crit_edge, label %if.then18

if.end15.if.end22_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  %12 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev8, align 4
  %rx_crc_errors = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 36, i32 12
  %14 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_crc_errors, align 8
  %inc21 = add i32 %15, 1
  store i32 %inc21, ptr %rx_crc_errors, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %if.end15.if.end22_crit_edge
  %16 = and i32 %status, 2621440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %if.end22.if.end31_crit_edge, label %if.then27

if.end22.if.end31_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

if.then27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  %18 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev8, align 4
  %rx_length_errors = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 36, i32 10
  %20 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rx_length_errors, align 8
  %inc30 = add i32 %21, 1
  store i32 %inc30, ptr %rx_length_errors, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %if.end22.if.end31_crit_edge
  %and32 = and i32 %status, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 805306368, i32 %and32)
  %cmp.not = icmp eq i32 %and32, 805306368
  br i1 %cmp.not, label %if.end31.if.end38_crit_edge, label %if.then33

if.end31.if.end38_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  %22 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev8, align 4
  %rx_length_errors36 = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 36, i32 10
  %24 = ptrtoint ptr %rx_length_errors36 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx_length_errors36, align 8
  %inc37 = add i32 %25, 1
  store i32 %inc37, ptr %rx_length_errors36, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.then33, %if.end31.if.end38_crit_edge
  %and39 = and i32 %status, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.end38.if.end45_crit_edge, label %if.then41

if.end38.if.end45_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  %26 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev8, align 4
  %rx_fifo_errors = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 36, i32 14
  %28 = ptrtoint ptr %rx_fifo_errors to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rx_fifo_errors, align 8
  %inc44 = add i32 %29, 1
  store i32 %inc44, ptr %rx_fifo_errors, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.then41, %if.end38.if.end45_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__napi_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cp_get_drvinfo(ptr nocapture noundef readonly %dev, ptr noundef %info) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call1 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str.1, i32 noundef 32) #14
  %version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 2
  %call3 = tail call i32 @strlcpy(ptr noundef %version, ptr noundef nonnull @.str.2, i32 noundef 32) #14
  %pdev = getelementptr i8, ptr %dev, i32 2584
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
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
  %call6 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i.i, i32 noundef 32) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cp_get_regs_len(ptr nocapture noundef readnone %dev) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 256
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cp_get_regs(ptr noundef %dev, ptr nocapture noundef %regs, ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.ethtool_regs, ptr %regs, i32 0, i32 2
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %1)
  %cmp = icmp ult i32 %1, 256
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %version = getelementptr inbounds %struct.ethtool_regs, ptr %regs, i32 0, i32 1
  %2 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %version, align 4
  %lock = getelementptr i8, ptr %dev, i32 2312
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #14
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 128
  tail call void @mmiocpy(ptr noundef %p, ptr noundef %4, i32 noundef 256) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cp_get_wol(ptr noundef %dev, ptr nocapture noundef %wol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %lock = getelementptr i8, ptr %dev, i32 2312
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #14
  %wolopts.i = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %0 = ptrtoint ptr %wolopts.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %wolopts.i, align 4
  %supported.i = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 1
  %1 = ptrtoint ptr %supported.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 47, ptr %supported.i, align 4
  %wol_enabled.i = getelementptr i8, ptr %dev, i32 3600
  %2 = ptrtoint ptr %wol_enabled.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i = load i8, ptr %wol_enabled.i, align 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.netdev_get_wol.exit_crit_edge, label %if.end.i

entry.netdev_get_wol.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %netdev_get_wol.exit

if.end.i:                                         ; preds = %entry
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr.i9 = getelementptr i8, ptr %4, i32 89
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i9) #14, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !297
  %conv.i = zext i8 %5 to i32
  %and.i = and i32 %conv.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end5.i_crit_edge, label %if.then3.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %wolopts.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wolopts.i, align 4
  %or.i = or i32 %7, 1
  store i32 %or.i, ptr %wolopts.i, align 4
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %if.end.i.if.end5.i_crit_edge
  %and7.i = and i32 %conv.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.end5.i.if.end12.i_crit_edge, label %if.then9.i

if.end5.i.if.end12.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12.i

if.then9.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %wolopts.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wolopts.i, align 4
  %or11.i = or i32 %9, 32
  store i32 %or11.i, ptr %wolopts.i, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then9.i, %if.end5.i.if.end12.i_crit_edge
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr16.i = getelementptr i8, ptr %11, i32 216
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr16.i) #14, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !298
  %conv20.i = zext i8 %12 to i32
  %and21.i = and i32 %conv20.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %if.end12.i.if.end26.i_crit_edge, label %if.then23.i

if.end12.i.if.end26.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26.i

if.then23.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #16
  %13 = ptrtoint ptr %wolopts.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %wolopts.i, align 4
  %or25.i = or i32 %14, 2
  store i32 %or25.i, ptr %wolopts.i, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then23.i, %if.end12.i.if.end26.i_crit_edge
  %and28.i = and i32 %conv20.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  br i1 %tobool29.not.i, label %if.end26.i.if.end33.i_crit_edge, label %if.then30.i

if.end26.i.if.end33.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33.i

if.then30.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #16
  %15 = ptrtoint ptr %wolopts.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %wolopts.i, align 4
  %or32.i = or i32 %16, 8
  store i32 %or32.i, ptr %wolopts.i, align 4
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then30.i, %if.end26.i.if.end33.i_crit_edge
  %and35.i = and i32 %conv20.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp eq i32 %and35.i, 0
  br i1 %tobool36.not.i, label %if.end33.i.netdev_get_wol.exit_crit_edge, label %if.then37.i

if.end33.i.netdev_get_wol.exit_crit_edge:         ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %netdev_get_wol.exit

if.then37.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #16
  %17 = ptrtoint ptr %wolopts.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %wolopts.i, align 4
  %or39.i = or i32 %18, 4
  store i32 %or39.i, ptr %wolopts.i, align 4
  br label %netdev_get_wol.exit

netdev_get_wol.exit:                              ; preds = %if.then37.i, %if.end33.i.netdev_get_wol.exit_crit_edge, %entry.netdev_get_wol.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cp_set_wol(ptr noundef %dev, ptr nocapture noundef readonly %wol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %lock = getelementptr i8, ptr %dev, i32 2312
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #14
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr.i10 = getelementptr i8, ptr %1, i32 89
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i10) #14, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !299
  %3 = and i8 %2, -49
  %wolopts.i = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %4 = ptrtoint ptr %wolopts.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wolopts.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  %6 = trunc i32 %5 to i8
  %7 = shl i8 %6, 4
  %8 = and i8 %7, 16
  %9 = and i8 %6, 32
  %10 = or i8 %9, %3
  %11 = or i8 %10, %8
  %options.1.i = select i1 %tobool.not.i, i8 %3, i8 %11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !300
  tail call void @arm_heavy_mb() #14
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr19.i = getelementptr i8, ptr %13, i32 80
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr19.i, i8 -64) #14, !srcloc !176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !301
  tail call void @arm_heavy_mb() #14
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr24.i = getelementptr i8, ptr %15, i32 89
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr24.i, i8 %options.1.i) #14, !srcloc !176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !302
  tail call void @arm_heavy_mb() #14
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr29.i = getelementptr i8, ptr %17, i32 80
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr29.i, i8 0) #14, !srcloc !176
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr33.i = getelementptr i8, ptr %19, i32 216
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr33.i) #14, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !303
  %21 = and i8 %20, -113
  %22 = ptrtoint ptr %wolopts.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %wolopts.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool41.not.i = icmp eq i32 %23, 0
  br i1 %tobool41.not.i, label %entry.netdev_set_wol.exit_crit_edge, label %if.then42.i

entry.netdev_set_wol.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %netdev_set_wol.exit

if.then42.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %24 = trunc i32 %23 to i8
  %25 = shl i8 %24, 3
  %26 = and i8 %25, 16
  %27 = or i8 %26, %21
  %28 = and i8 %25, 64
  %29 = or i8 %27, %28
  %30 = and i8 %25, 32
  %31 = or i8 %29, %30
  br label %netdev_set_wol.exit

netdev_set_wol.exit:                              ; preds = %if.then42.i, %entry.netdev_set_wol.exit_crit_edge
  %options.4.i = phi i8 [ %21, %entry.netdev_set_wol.exit_crit_edge ], [ %31, %if.then42.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !304
  tail call void @arm_heavy_mb() #14
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr72.i = getelementptr i8, ptr %33, i32 216
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr72.i, i8 %options.4.i) #14, !srcloc !176
  %34 = ptrtoint ptr %wolopts.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %wolopts.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool74.not.not.i = icmp eq i32 %35, 0
  %wol_enabled.i = getelementptr i8, ptr %dev, i32 3600
  %36 = ptrtoint ptr %wol_enabled.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load.i = load i8, ptr %wol_enabled.i, align 16
  %bf.shl.i = select i1 %tobool74.not.not.i, i8 0, i8 -128
  %bf.clear.i = and i8 %bf.load.i, 127
  %bf.set.i = or i8 %bf.clear.i, %bf.shl.i
  store i8 %bf.set.i, ptr %wol_enabled.i, align 16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #14
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cp_get_msglevel(ptr nocapture noundef readonly %dev) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %dev, i32 2356
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @cp_set_msglevel(ptr nocapture noundef writeonly %dev, i32 noundef %value) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %dev, i32 2356
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %value, ptr %msg_enable, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cp_nway_reset(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mii_if = getelementptr i8, ptr %dev, i32 3608
  %call1 = tail call i32 @mii_nway_restart(ptr noundef %mii_if) #14
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cp_get_eeprom_len(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %lock = getelementptr i8, ptr %dev, i32 2312
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #14
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 128
  %call1 = tail call fastcc zeroext i16 @read_eeprom(ptr noundef %1, i32 noundef 0, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32471, i16 %call1)
  %cmp = icmp eq i16 %call1, -32471
  %cond = select i1 %cmp, i32 256, i32 128
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #14
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cp_get_eeprom(ptr noundef %dev, ptr nocapture noundef %eeprom, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %offset1 = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 2
  %0 = ptrtoint ptr %offset1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %offset1, align 4
  %shr = lshr i32 %1, 1
  %len2 = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 3
  %2 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len2, align 4
  %magic = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 1
  %4 = ptrtoint ptr %magic to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 33081, ptr %magic, align 4
  %lock = getelementptr i8, ptr %dev, i32 2312
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #14
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 128
  %call3 = tail call fastcc zeroext i16 @read_eeprom(ptr noundef %6, i32 noundef 0, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32471, i16 %call3)
  %cmp = icmp eq i16 %call3, -32471
  %cond = select i1 %cmp, i32 8, i32 6
  %7 = ptrtoint ptr %offset1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %offset1, align 4
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 128
  %call7 = tail call fastcc zeroext i16 @read_eeprom(ptr noundef %10, i32 noundef %shr, i32 noundef %cond)
  %11 = lshr i16 %call7, 8
  %conv10 = trunc i16 %11 to i8
  %12 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv10, ptr %data, align 1
  %inc11 = add nuw i32 %shr, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %offset.0 = phi i32 [ %inc11, %if.then ], [ %shr, %entry.if.end_crit_edge ]
  %i.0 = phi i32 [ 1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %sub = add i32 %3, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0, i32 %sub)
  %cmp1260 = icmp ult i32 %i.0, %sub
  br i1 %cmp1260, label %if.end.while.body_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end.while.body_crit_edge
  %i.162 = phi i32 [ %inc22, %while.body.while.body_crit_edge ], [ %i.0, %if.end.while.body_crit_edge ]
  %offset.161 = phi i32 [ %inc24, %while.body.while.body_crit_edge ], [ %offset.0, %if.end.while.body_crit_edge ]
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i, align 128
  %call15 = tail call fastcc zeroext i16 @read_eeprom(ptr noundef %14, i32 noundef %offset.161, i32 noundef %cond)
  %conv16 = trunc i16 %call15 to i8
  %inc17 = add nuw i32 %i.162, 1
  %arrayidx18 = getelementptr i8, ptr %data, i32 %i.162
  %15 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv16, ptr %arrayidx18, align 1
  %16 = lshr i16 %call15, 8
  %conv21 = trunc i16 %16 to i8
  %inc22 = add i32 %i.162, 2
  %arrayidx23 = getelementptr i8, ptr %data, i32 %inc17
  %17 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv21, ptr %arrayidx23, align 1
  %inc24 = add i32 %offset.161, 1
  %cmp12 = icmp ult i32 %inc22, %sub
  br i1 %cmp12, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end.while.end_crit_edge
  %offset.1.lcssa = phi i32 [ %offset.0, %if.end.while.end_crit_edge ], [ %inc24, %while.body.while.end_crit_edge ]
  %i.1.lcssa = phi i32 [ %i.0, %if.end.while.end_crit_edge ], [ %inc22, %while.body.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1.lcssa, i32 %3)
  %cmp25 = icmp ult i32 %i.1.lcssa, %3
  br i1 %cmp25, label %if.then27, label %while.end.if.end32_crit_edge

while.end.if.end32_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32

if.then27:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr.i, align 128
  %call29 = tail call fastcc zeroext i16 @read_eeprom(ptr noundef %19, i32 noundef %offset.1.lcssa, i32 noundef %cond)
  %conv30 = trunc i16 %call29 to i8
  %arrayidx31 = getelementptr i8, ptr %data, i32 %i.1.lcssa
  %20 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv30, ptr %arrayidx31, align 1
  br label %if.end32

if.end32:                                         ; preds = %if.then27, %while.end.if.end32_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cp_set_eeprom(ptr noundef %dev, ptr nocapture noundef readonly %eeprom, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %offset1 = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 2
  %0 = ptrtoint ptr %offset1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %offset1, align 4
  %shr = lshr i32 %1, 1
  %len2 = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 3
  %2 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len2, align 4
  %magic = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 1
  %4 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %magic, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33081, i32 %5)
  %cmp.not = icmp eq i32 %5, 33081
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr i8, ptr %dev, i32 2312
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #14
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 128
  %call3 = tail call fastcc zeroext i16 @read_eeprom(ptr noundef %7, i32 noundef 0, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32471, i16 %call3)
  %cmp4 = icmp eq i16 %call3, -32471
  %cond = select i1 %cmp4, i32 8, i32 6
  %8 = ptrtoint ptr %offset1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offset1, align 4
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end19_crit_edge, label %if.then7

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 128
  %call9 = tail call fastcc zeroext i16 @read_eeprom(ptr noundef %11, i32 noundef %shr, i32 noundef %cond)
  %12 = and i16 %call9, 255
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %data, align 1
  %conv14 = zext i8 %14 to i16
  %shl = shl nuw i16 %conv14, 8
  %or = or i16 %shl, %12
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr.i, align 128
  tail call fastcc void @write_eeprom(ptr noundef %16, i32 noundef %shr, i16 noundef zeroext %or, i32 noundef %cond)
  %inc18 = add nuw i32 %shr, 1
  br label %if.end19

if.end19:                                         ; preds = %if.then7, %if.end.if.end19_crit_edge
  %offset.0 = phi i32 [ %inc18, %if.then7 ], [ %shr, %if.end.if.end19_crit_edge ]
  %i.0 = phi i32 [ 1, %if.then7 ], [ 0, %if.end.if.end19_crit_edge ]
  %sub = add i32 %3, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0, i32 %sub)
  %cmp2091 = icmp ult i32 %i.0, %sub
  br i1 %cmp2091, label %if.end19.while.body_crit_edge, label %if.end19.while.end_crit_edge

if.end19.while.end_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.end19.while.body_crit_edge:                    ; preds = %if.end19
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end19.while.body_crit_edge
  %i.193 = phi i32 [ %inc25, %while.body.while.body_crit_edge ], [ %i.0, %if.end19.while.body_crit_edge ]
  %offset.192 = phi i32 [ %inc34, %while.body.while.body_crit_edge ], [ %offset.0, %if.end19.while.body_crit_edge ]
  %inc22 = add nuw i32 %i.193, 1
  %arrayidx23 = getelementptr i8, ptr %data, i32 %i.193
  %17 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx23, align 1
  %inc25 = add i32 %i.193, 2
  %arrayidx26 = getelementptr i8, ptr %data, i32 %inc22
  %19 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx26, align 1
  %conv28 = zext i8 %20 to i16
  %shl29 = shl nuw i16 %conv28, 8
  %conv30 = zext i8 %18 to i16
  %or31 = or i16 %shl29, %conv30
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr.i, align 128
  tail call fastcc void @write_eeprom(ptr noundef %22, i32 noundef %offset.192, i16 noundef zeroext %or31, i32 noundef %cond)
  %inc34 = add i32 %offset.192, 1
  %cmp20 = icmp ult i32 %inc25, %sub
  br i1 %cmp20, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end19.while.end_crit_edge
  %offset.1.lcssa = phi i32 [ %offset.0, %if.end19.while.end_crit_edge ], [ %inc34, %while.body.while.end_crit_edge ]
  %i.1.lcssa = phi i32 [ %i.0, %if.end19.while.end_crit_edge ], [ %inc25, %while.body.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1.lcssa, i32 %3)
  %cmp35 = icmp ult i32 %i.1.lcssa, %3
  br i1 %cmp35, label %if.then37, label %while.end.if.end50_crit_edge

while.end.if.end50_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end50

if.then37:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr.i, align 128
  %call39 = tail call fastcc zeroext i16 @read_eeprom(ptr noundef %24, i32 noundef %offset.1.lcssa, i32 noundef %cond)
  %25 = and i16 %call39, -256
  %arrayidx43 = getelementptr i8, ptr %data, i32 %i.1.lcssa
  %26 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx43, align 1
  %conv45 = zext i8 %27 to i16
  %or47 = or i16 %25, %conv45
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr.i, align 128
  tail call fastcc void @write_eeprom(ptr noundef %29, i32 noundef %offset.1.lcssa, i16 noundef zeroext %or47, i32 noundef %cond)
  br label %if.end50

if.end50:                                         ; preds = %if.then37, %while.end.if.end50_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end50 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @cp_get_ringparam(ptr nocapture noundef readnone %dev, ptr nocapture noundef writeonly %ring, ptr nocapture noundef readnone %kernel_ring, ptr nocapture noundef readnone %extack) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 1
  %0 = ptrtoint ptr %rx_max_pending to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 64, ptr %rx_max_pending, align 4
  %tx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 4
  %1 = ptrtoint ptr %tx_max_pending to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 64, ptr %tx_max_pending, align 4
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 5
  %2 = ptrtoint ptr %rx_pending to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 64, ptr %rx_pending, align 4
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 8
  %3 = ptrtoint ptr %tx_pending to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 64, ptr %tx_pending, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cp_get_strings(ptr nocapture noundef readnone %dev, i32 noundef %stringset, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %stringset)
  %cond = icmp eq i32 %stringset, 1
  br i1 %cond, label %sw.bb, label %do.body

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %0 = call ptr @memcpy(ptr %buf, ptr @ethtool_stats_keys, i32 448)
  ret void

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/realtek/8139cp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1533, 0\0A.popsection", ""() #14, !srcloc !305
  unreachable
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cp_get_ethtool_stats(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %estats, ptr nocapture noundef writeonly %tmp_stats) #2 align 64 {
entry:
  %dma = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma) #14
  %0 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dma, align 4, !annotation !171
  %pdev = getelementptr i8, ptr %dev, i32 2584
  %1 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev1, i32 noundef 64, ptr noundef nonnull %dma, i32 noundef 3264, i32 noundef 0) #14
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %entry
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !306
  call void @arm_heavy_mb() #14
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr = getelementptr i8, ptr %4, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #14, !srcloc !229
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !307
  call void @arm_heavy_mb() #14
  %5 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dma, align 4
  %7 = or i32 %6, 8
  %8 = call i32 @llvm.bswap.i32(i32 %7)
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr10 = getelementptr i8, ptr %10, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %8) #14, !srcloc !229
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr12 = getelementptr i8, ptr %12, i32 16
  %13 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #14, !srcloc !230
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !308
  br label %for.body

for.body:                                         ; preds = %if.end27.for.body_crit_edge, %do.body
  %i.0153 = phi i32 [ 0, %do.body ], [ %inc, %if.end27.for.body_crit_edge ]
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr19 = getelementptr i8, ptr %15, i32 16
  %16 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #14, !srcloc !230
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !309
  %17 = and i32 %16, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp24 = icmp eq i32 %17, 0
  br i1 %cmp24, label %for.body.do.body28_crit_edge, label %if.end27

for.body.do.body28_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body28

if.end27:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %18(i32 noundef 2147480) #14
  %inc = add nuw nsw i32 %i.0153, 1
  %exitcond.not = icmp eq i32 %inc, 1000
  br i1 %exitcond.not, label %if.end27.do.body28_crit_edge, label %if.end27.for.body_crit_edge

if.end27.for.body_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

if.end27.do.body28_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body28

do.body28:                                        ; preds = %if.end27.do.body28_crit_edge, %for.body.do.body28_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !310
  call void @arm_heavy_mb() #14
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr32 = getelementptr i8, ptr %20, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 0) #14, !srcloc !229
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !311
  call void @arm_heavy_mb() #14
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr37 = getelementptr i8, ptr %22, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 0) #14, !srcloc !229
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr41 = getelementptr i8, ptr %24, i32 16
  %25 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41) #14, !srcloc !230
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !312
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 8)
  %27 = load i64, ptr %call.i, align 1
  %28 = call i64 @llvm.bswap.i64(i64 %27)
  %29 = ptrtoint ptr %tmp_stats to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %tmp_stats, align 8
  %rx_ok = getelementptr inbounds %struct.cp_dma_stats, ptr %call.i, i32 0, i32 1
  %30 = ptrtoint ptr %rx_ok to i32
  call void @__asan_loadN_noabort(i32 %30, i32 8)
  %31 = load i64, ptr %rx_ok, align 1
  %32 = call i64 @llvm.bswap.i64(i64 %31)
  %arrayidx47 = getelementptr i64, ptr %tmp_stats, i32 1
  %33 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %arrayidx47, align 8
  %tx_err = getelementptr inbounds %struct.cp_dma_stats, ptr %call.i, i32 0, i32 2
  %34 = ptrtoint ptr %tx_err to i32
  call void @__asan_loadN_noabort(i32 %34, i32 8)
  %35 = load i64, ptr %tx_err, align 1
  %36 = call i64 @llvm.bswap.i64(i64 %35)
  %arrayidx49 = getelementptr i64, ptr %tmp_stats, i32 2
  %37 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %arrayidx49, align 8
  %rx_err = getelementptr inbounds %struct.cp_dma_stats, ptr %call.i, i32 0, i32 3
  %38 = ptrtoint ptr %rx_err to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %rx_err, align 1
  %40 = call i32 @llvm.bswap.i32(i32 %39)
  %conv50 = zext i32 %40 to i64
  %arrayidx52 = getelementptr i64, ptr %tmp_stats, i32 3
  %41 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %conv50, ptr %arrayidx52, align 8
  %rx_fifo = getelementptr inbounds %struct.cp_dma_stats, ptr %call.i, i32 0, i32 4
  %42 = ptrtoint ptr %rx_fifo to i32
  call void @__asan_loadN_noabort(i32 %42, i32 2)
  %43 = load i16, ptr %rx_fifo, align 1
  %44 = call i16 @llvm.bswap.i16(i16 %43)
  %conv53 = zext i16 %44 to i64
  %arrayidx55 = getelementptr i64, ptr %tmp_stats, i32 4
  %45 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %conv53, ptr %arrayidx55, align 8
  %frame_align = getelementptr inbounds %struct.cp_dma_stats, ptr %call.i, i32 0, i32 5
  %46 = ptrtoint ptr %frame_align to i32
  call void @__asan_loadN_noabort(i32 %46, i32 2)
  %47 = load i16, ptr %frame_align, align 1
  %48 = call i16 @llvm.bswap.i16(i16 %47)
  %conv56 = zext i16 %48 to i64
  %arrayidx58 = getelementptr i64, ptr %tmp_stats, i32 5
  %49 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %conv56, ptr %arrayidx58, align 8
  %tx_ok_1col = getelementptr inbounds %struct.cp_dma_stats, ptr %call.i, i32 0, i32 6
  %50 = ptrtoint ptr %tx_ok_1col to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %51 = load i32, ptr %tx_ok_1col, align 1
  %52 = call i32 @llvm.bswap.i32(i32 %51)
  %conv59 = zext i32 %52 to i64
  %arrayidx61 = getelementptr i64, ptr %tmp_stats, i32 6
  %53 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %conv59, ptr %arrayidx61, align 8
  %tx_ok_mcol = getelementptr inbounds %struct.cp_dma_stats, ptr %call.i, i32 0, i32 7
  %54 = ptrtoint ptr %tx_ok_mcol to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %tx_ok_mcol, align 1
  %56 = call i32 @llvm.bswap.i32(i32 %55)
  %conv62 = zext i32 %56 to i64
  %arrayidx64 = getelementptr i64, ptr %tmp_stats, i32 7
  %57 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %conv62, ptr %arrayidx64, align 8
  %rx_ok_phys = getelementptr inbounds %struct.cp_dma_stats, ptr %call.i, i32 0, i32 8
  %58 = ptrtoint ptr %rx_ok_phys to i32
  call void @__asan_loadN_noabort(i32 %58, i32 8)
  %59 = load i64, ptr %rx_ok_phys, align 1
  %60 = call i64 @llvm.bswap.i64(i64 %59)
  %arrayidx66 = getelementptr i64, ptr %tmp_stats, i32 8
  %61 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %60, ptr %arrayidx66, align 8
  %rx_ok_bcast = getelementptr inbounds %struct.cp_dma_stats, ptr %call.i, i32 0, i32 9
  %62 = ptrtoint ptr %rx_ok_bcast to i32
  call void @__asan_loadN_noabort(i32 %62, i32 8)
  %63 = load i64, ptr %rx_ok_bcast, align 1
  %64 = call i64 @llvm.bswap.i64(i64 %63)
  %arrayidx68 = getelementptr i64, ptr %tmp_stats, i32 9
  %65 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %64, ptr %arrayidx68, align 8
  %rx_ok_mcast = getelementptr inbounds %struct.cp_dma_stats, ptr %call.i, i32 0, i32 10
  %66 = ptrtoint ptr %rx_ok_mcast to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %67 = load i32, ptr %rx_ok_mcast, align 1
  %68 = call i32 @llvm.bswap.i32(i32 %67)
  %conv69 = zext i32 %68 to i64
  %arrayidx71 = getelementptr i64, ptr %tmp_stats, i32 10
  %69 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %conv69, ptr %arrayidx71, align 8
  %tx_abort = getelementptr inbounds %struct.cp_dma_stats, ptr %call.i, i32 0, i32 11
  %70 = ptrtoint ptr %tx_abort to i32
  call void @__asan_loadN_noabort(i32 %70, i32 2)
  %71 = load i16, ptr %tx_abort, align 1
  %72 = call i16 @llvm.bswap.i16(i16 %71)
  %conv72 = zext i16 %72 to i64
  %arrayidx74 = getelementptr i64, ptr %tmp_stats, i32 11
  %73 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %conv72, ptr %arrayidx74, align 8
  %tx_underrun = getelementptr inbounds %struct.cp_dma_stats, ptr %call.i, i32 0, i32 12
  %74 = ptrtoint ptr %tx_underrun to i32
  call void @__asan_loadN_noabort(i32 %74, i32 2)
  %75 = load i16, ptr %tx_underrun, align 1
  %76 = call i16 @llvm.bswap.i16(i16 %75)
  %conv75 = zext i16 %76 to i64
  %arrayidx77 = getelementptr i64, ptr %tmp_stats, i32 12
  %77 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %conv75, ptr %arrayidx77, align 8
  %cp_stats = getelementptr i8, ptr %dev, i32 2596
  %78 = ptrtoint ptr %cp_stats to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %cp_stats, align 4
  %conv78 = zext i32 %79 to i64
  %arrayidx80 = getelementptr i64, ptr %tmp_stats, i32 13
  %80 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %conv78, ptr %arrayidx80, align 8
  %81 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pdev, align 8
  %dev97 = getelementptr inbounds %struct.pci_dev, ptr %82, i32 0, i32 44
  %83 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %dma, align 4
  call void @dma_free_attrs(ptr noundef %dev97, i32 noundef 64, ptr noundef nonnull %call.i, i32 noundef %84, i32 noundef 0) #14
  br label %cleanup

cleanup:                                          ; preds = %do.body28, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cp_get_sset_count(ptr nocapture noundef readnone %dev, i32 noundef %sset) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %cond = icmp eq i32 %sset, 1
  %. = select i1 %cond, i32 14, i32 -95
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cp_get_link_ksettings(ptr noundef %dev, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %dev, i32 2312
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #14
  %mii_if = getelementptr i8, ptr %dev, i32 3608
  tail call void @mii_ethtool_get_link_ksettings(ptr noundef %mii_if, ptr noundef %cmd) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cp_set_link_ksettings(ptr noundef %dev, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %dev, i32 2312
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #14
  %mii_if = getelementptr i8, ptr %dev, i32 3608
  %call6 = tail call i32 @mii_ethtool_set_link_ksettings(ptr noundef %mii_if, ptr noundef %cmd) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #14
  ret i32 %call6
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_nway_restart(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @write_eeprom(ptr noundef %ioaddr, i32 noundef %location, i16 noundef zeroext %val, i32 noundef %addr_len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 80
  %shl = shl i32 5, %addr_len
  %or = or i32 %shl, %location
  %shl.i = shl i32 4, %addr_len
  %sub.i = add i32 %addr_len, -2
  %shl1.i = shl i32 3, %sub.i
  %or.i = or i32 %shl1.i, %shl.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !191
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 -128) #14, !srcloc !176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !192
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 -120) #14, !srcloc !176
  %0 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #14, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !194
  %add.i = add i32 %addr_len, 3
  tail call fastcc void @eeprom_cmd(ptr noundef %add.ptr, i32 noundef %or.i, i32 noundef %add.i) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !200
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 0) #14, !srcloc !176
  %1 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #14, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !191
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 -128) #14, !srcloc !176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !192
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 -120) #14, !srcloc !176
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #14, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !194
  tail call fastcc void @eeprom_cmd(ptr noundef %add.ptr, i32 noundef %or, i32 noundef %add.i)
  %conv = zext i16 %val to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.031.i = phi i32 [ %i.0.i, %for.body.i.for.body.i_crit_edge ], [ 15, %entry ]
  %shl.i16 = shl nuw i32 1, %i.031.i
  %and.i = and i32 %shl.i16, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !208
  tail call void @arm_heavy_mb() #14
  %conv.i = select i1 %tobool.not.i, i8 -120, i8 -118
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv.i) #14, !srcloc !176
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #14, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !210
  tail call void @arm_heavy_mb() #14
  %conv7.i = or i8 %conv.i, 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv7.i) #14, !srcloc !176
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #14, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !211
  %i.0.i = add nsw i32 %i.031.i, -1
  %cmp.i.not = icmp eq i32 %i.031.i, 0
  br i1 %cmp.i.not, label %eeprom_cmd.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

eeprom_cmd.exit:                                  ; preds = %for.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !212
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 -120) #14, !srcloc !176
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #14, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !200
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 0) #14, !srcloc !176
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #14, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !191
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 -128) #14, !srcloc !176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !192
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 -120) #14, !srcloc !176
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #14, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !194
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %eeprom_cmd.exit
  %i.020 = phi i32 [ 0, %eeprom_cmd.exit ], [ %inc, %for.body.for.body_crit_edge ]
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #14, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !313
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp ne i8 %9, 0
  %inc = add nuw nsw i32 %i.020, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000, i32 %inc)
  %exitcond.not = icmp eq i32 %inc, 20000
  %or.cond = select i1 %tobool.not, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !200
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 0) #14, !srcloc !176
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #14, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !191
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 -128) #14, !srcloc !176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !192
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 -120) #14, !srcloc !176
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #14, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !194
  tail call fastcc void @eeprom_cmd(ptr noundef %add.ptr, i32 noundef %shl.i, i32 noundef %add.i) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !200
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 0) #14, !srcloc !176
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #14, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !201
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mii_ethtool_get_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_ethtool_set_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_wake(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_set_power_state(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cp_suspend(ptr noundef %device) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  tail call void @netif_device_detach(ptr noundef %1) #14
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %4 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %5, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #14
  %lock = getelementptr i8, ptr %1, i32 2312
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !314
  tail call void @arm_heavy_mb() #14
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr = getelementptr i8, ptr %7, i32 60
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 0) #14, !srcloc !178
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !315
  tail call void @arm_heavy_mb() #14
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr15 = getelementptr i8, ptr %9, i32 55
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr15) #14, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !316
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr22 = getelementptr i8, ptr %12, i32 55
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr22, i8 %10) #14, !srcloc !176
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #14
  %wol_enabled = getelementptr i8, ptr %1, i32 3600
  %13 = ptrtoint ptr %wol_enabled to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %wol_enabled, align 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool = icmp slt i8 %bf.load, 0
  %call24 = tail call i32 @device_set_wakeup_enable(ptr noundef %device, i1 noundef zeroext %tobool) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cp_resume(ptr nocapture noundef readonly %device) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  tail call void @netif_device_attach(ptr noundef %1) #14
  %rx_tail.i = getelementptr i8, ptr %1, i32 2692
  %4 = ptrtoint ptr %rx_tail.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %rx_tail.i, align 4
  %tx_tail.i = getelementptr i8, ptr %1, i32 3076
  %5 = ptrtoint ptr %tx_tail.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %tx_tail.i, align 4
  %tx_head.i = getelementptr i8, ptr %1, i32 3072
  %6 = ptrtoint ptr %tx_head.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %tx_head.i, align 128
  tail call fastcc void @cp_init_hw(ptr noundef %add.ptr.i)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !214
  tail call void @arm_heavy_mb() #14
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr.i21 = getelementptr i8, ptr %8, i32 60
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i21, i16 -128) #14, !srcloc !178
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr3.i = getelementptr i8, ptr %10, i32 60
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr3.i) #14, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !215
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %12 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %13, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #14
  %lock = getelementptr i8, ptr %1, i32 2312
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #14
  %mii_if = getelementptr i8, ptr %1, i32 3608
  %msg_enable = getelementptr i8, ptr %1, i32 2356
  %14 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %msg_enable, align 4
  %and = and i32 %15, 4
  %call8 = tail call i32 @mii_check_media(ptr noundef %mii_if, i32 noundef %and, i32 noundef 0) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !15, !16, !18, !20, !21, !23, !25, !26, !27, !29, !30, !32, !34, !36, !38, !39, !40, !41, !42, !43, !45, !46, !47, !48, !49, !51, !52, !54, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !73, !75, !77, !79, !80, !81, !83, !84, !85, !87, !89, !90, !91, !93, !95, !96, !97, !99, !100, !102, !103, !104, !106, !108, !109, !111, !112, !114, !115, !116, !118, !119, !121, !123, !125, !127, !129, !131, !133, !135, !136, !137, !139, !141, !143, !144, !145, !147, !148, !150, !151, !152, !154, !155, !156, !158, !160}
!llvm.module.flags = !{!162, !163, !164, !165, !166, !167, !168, !169}
!llvm.ident = !{!170}

!0 = !{ptr @__UNIQUE_ID_author476, !1, !"__UNIQUE_ID_author476", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/realtek/8139cp.c", i32 85, i32 1}
!2 = !{ptr @__UNIQUE_ID_description477, !3, !"__UNIQUE_ID_description477", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/realtek/8139cp.c", i32 86, i32 1}
!4 = !{ptr @__UNIQUE_ID_version478, !5, !"__UNIQUE_ID_version478", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/realtek/8139cp.c", i32 87, i32 1}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @__modver_attr, !5, !"__modver_attr", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_file479, !11, !"__UNIQUE_ID_file479", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/realtek/8139cp.c", i32 88, i32 1}
!12 = !{ptr @__UNIQUE_ID_license480, !11, !"__UNIQUE_ID_license480", i1 false, i1 false}
!13 = !{ptr @__param_debug, !14, !"__param_debug", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/realtek/8139cp.c", i32 91, i32 1}
!15 = !{ptr @__UNIQUE_ID_debugtype481, !14, !"__UNIQUE_ID_debugtype481", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_debug482, !17, !"__UNIQUE_ID_debug482", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/realtek/8139cp.c", i32 92, i32 1}
!18 = !{ptr @__param_multicast_filter_limit, !19, !"__param_multicast_filter_limit", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/realtek/8139cp.c", i32 97, i32 1}
!20 = !{ptr @__UNIQUE_ID_multicast_filter_limittype483, !19, !"__UNIQUE_ID_multicast_filter_limittype483", i1 false, i1 false}
!21 = !{ptr @__UNIQUE_ID_multicast_filter_limit484, !22, !"__UNIQUE_ID_multicast_filter_limit484", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/realtek/8139cp.c", i32 98, i32 1}
!23 = !{ptr @__initcall__kmod_8139cp__496_2121_cp_driver_init6, !24, !"__initcall__kmod_8139cp__496_2121_cp_driver_init6", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/realtek/8139cp.c", i32 2121, i32 1}
!25 = !{ptr @__exitcall_cp_driver_exit, !24, !"__exitcall_cp_driver_exit", i1 false, i1 false}
!26 = !{ptr @__param_str_debug, !14, !"__param_str_debug", i1 false, i1 false}
!27 = !{ptr @debug, !28, !"debug", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/realtek/8139cp.c", i32 90, i32 12}
!29 = !{ptr @__param_str_multicast_filter_limit, !19, !"__param_str_multicast_filter_limit", i1 false, i1 false}
!30 = !{ptr @multicast_filter_limit, !31, !"multicast_filter_limit", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/realtek/8139cp.c", i32 96, i32 12}
!32 = !{ptr @cp_driver, !33, !"cp_driver", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/realtek/8139cp.c", i32 2113, i32 26}
!34 = !{ptr @cp_pci_tbl, !35, !"cp_pci_tbl", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/realtek/8139cp.c", i32 2104, i32 35}
!36 = distinct !{null, !37, !"__already_done", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/realtek/8139cp.c", i32 1896, i32 2}
!38 = !{ptr @.str.3, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.4, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.5, !37, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @cp_init_one._entry, !37, !"_entry", i1 false, i1 false}
!42 = !{ptr @cp_init_one._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.7, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/realtek/8139cp.c", i32 1900, i32 3}
!45 = !{ptr @.str.8, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.9, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @cp_init_one._entry.6, !44, !"_entry", i1 false, i1 false}
!48 = !{ptr @cp_init_one._entry_ptr.10, !44, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @cp_init_one.__key, !50, !"__key", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/realtek/8139cp.c", i32 1915, i32 2}
!51 = !{ptr @.str.11, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.13, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/realtek/8139cp.c", i32 1939, i32 3}
!54 = !{ptr @.str.14, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @cp_init_one._entry.12, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @cp_init_one._entry_ptr.15, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.17, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/realtek/8139cp.c", i32 1944, i32 3}
!59 = !{ptr @cp_init_one._entry.16, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @cp_init_one._entry_ptr.18, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.20, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/realtek/8139cp.c", i32 1958, i32 4}
!63 = !{ptr @cp_init_one._entry.19, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @cp_init_one._entry_ptr.21, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.23, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/realtek/8139cp.c", i32 1973, i32 3}
!67 = !{ptr @cp_init_one._entry.22, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @cp_init_one._entry_ptr.24, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.25, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/realtek/8139cp.c", i32 2012, i32 19}
!71 = !{ptr @version, !72, !"version", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/realtek/8139cp.c", i32 82, i32 13}
!73 = !{ptr @mii_2_8139_map, !74, !"mii_2_8139_map", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/realtek/8139cp.c", i32 1292, i32 19}
!75 = !{ptr @cp_netdev_ops, !76, !"cp_netdev_ops", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/realtek/8139cp.c", i32 1867, i32 36}
!77 = !{ptr @.str.26, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/realtek/8139cp.c", i32 1185, i32 2}
!79 = !{ptr @.str.27, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @cp_open.__UNIQUE_ID_ddebug492, !78, !"__UNIQUE_ID_ddebug492", i1 false, i1 false}
!81 = distinct !{null, !82, !"__already_done", i1 false, i1 false}
!82 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!83 = !{ptr @.str.28, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.29, !82, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.30, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/realtek/8139cp.c", i32 984, i32 22}
!87 = !{ptr @.str.31, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/realtek/8139cp.c", i32 592, i32 2}
!89 = !{ptr @.str.32, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @cp_interrupt.__UNIQUE_ID_ddebug487, !88, !"__UNIQUE_ID_ddebug487", i1 false, i1 false}
!91 = !{ptr @.str.33, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/realtek/8139cp.c", i32 620, i32 19}
!93 = !{ptr @.str.34, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/realtek/8139cp.c", i32 673, i32 5}
!95 = !{ptr @.str.35, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @cp_tx.__UNIQUE_ID_ddebug488, !94, !"__UNIQUE_ID_ddebug488", i1 false, i1 false}
!97 = !{ptr @.str.36, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/realtek/8139cp.c", i32 689, i32 5}
!99 = !{ptr @cp_tx.__UNIQUE_ID_ddebug489, !98, !"__UNIQUE_ID_ddebug489", i1 false, i1 false}
!100 = !{ptr @.str.37, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/realtek/8139cp.c", i32 1221, i32 2}
!102 = !{ptr @.str.38, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @cp_close.__UNIQUE_ID_ddebug493, !101, !"__UNIQUE_ID_ddebug493", i1 false, i1 false}
!104 = !{ptr @.str.39, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/realtek/8139cp.c", i32 747, i32 19}
!106 = distinct !{null, !107, !"__already_done", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/realtek/8139cp.c", i32 756, i32 3}
!108 = !{ptr @.str.40, !107, !"<string literal>", i1 false, i1 false}
!109 = distinct !{null, !110, !"__already_done", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/realtek/8139cp.c", i32 772, i32 4}
!111 = !{ptr @.str.42, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.43, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/realtek/8139cp.c", i32 799, i32 3}
!114 = !{ptr @.str.44, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @cp_start_xmit.__UNIQUE_ID_ddebug490, !113, !"__UNIQUE_ID_ddebug490", i1 false, i1 false}
!116 = !{ptr @.str.45, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/realtek/8139cp.c", i32 864, i32 3}
!118 = !{ptr @cp_start_xmit.__UNIQUE_ID_ddebug491, !117, !"__UNIQUE_ID_ddebug491", i1 false, i1 false}
!119 = !{ptr @.str.46, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../include/linux/netdevice.h", i32 4963, i32 10}
!121 = !{ptr @.str.47, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../include/linux/netdevice.h", i32 4975, i32 36}
!123 = !{ptr @.str.48, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../include/linux/netdevice.h", i32 4976, i32 33}
!125 = !{ptr @.str.49, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../include/linux/netdevice.h", i32 4977, i32 36}
!127 = !{ptr @.str.50, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../include/linux/netdevice.h", i32 4978, i32 35}
!129 = !{ptr @.str.51, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../include/linux/netdevice.h", i32 4979, i32 31}
!131 = !{ptr @.str.52, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../include/linux/netdevice.h", i32 4980, i32 28}
!133 = distinct !{null, !134, !"__already_done", i1 false, i1 false}
!134 = !{!"../include/linux/netdevice.h", i32 4983, i32 2}
!135 = !{ptr @.str.53, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @.str.54, !134, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @.str.55, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../include/linux/netdevice.h", i32 4984, i32 9}
!139 = !{ptr @.str.56, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/ethernet/realtek/8139cp.c", i32 1244, i32 19}
!141 = !{ptr @.str.57, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/ethernet/realtek/8139cp.c", i32 1250, i32 2}
!143 = !{ptr @.str.58, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @cp_tx_timeout.__UNIQUE_ID_ddebug494, !142, !"__UNIQUE_ID_ddebug494", i1 false, i1 false}
!145 = !{ptr @.str.59, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/ethernet/realtek/8139cp.c", i32 1253, i32 3}
!147 = !{ptr @cp_tx_timeout.__UNIQUE_ID_ddebug495, !146, !"__UNIQUE_ID_ddebug495", i1 false, i1 false}
!148 = !{ptr @.str.60, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/ethernet/realtek/8139cp.c", i32 507, i32 3}
!150 = !{ptr @.str.61, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @cp_rx_poll.__UNIQUE_ID_ddebug486, !149, !"__UNIQUE_ID_ddebug486", i1 false, i1 false}
!152 = !{ptr @.str.62, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/ethernet/realtek/8139cp.c", i32 437, i32 2}
!154 = !{ptr @.str.63, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @cp_rx_err_acct.__UNIQUE_ID_ddebug485, !153, !"__UNIQUE_ID_ddebug485", i1 false, i1 false}
!156 = !{ptr @cp_ethtool_ops, !157, !"cp_ethtool_ops", i1 false, i1 false}
!157 = !{!"../drivers/net/ethernet/realtek/8139cp.c", i32 1585, i32 33}
!158 = !{ptr @ethtool_stats_keys, !159, !"ethtool_stats_keys", i1 false, i1 false}
!159 = !{!"../drivers/net/ethernet/realtek/8139cp.c", i32 389, i32 3}
!160 = !{ptr @cp_pm_ops, !161, !"cp_pm_ops", i1 false, i1 false}
!161 = !{!"../drivers/net/ethernet/realtek/8139cp.c", i32 2111, i32 8}
!162 = !{i32 1, !"wchar_size", i32 2}
!163 = !{i32 1, !"min_enum_size", i32 4}
!164 = !{i32 8, !"branch-target-enforcement", i32 0}
!165 = !{i32 8, !"sign-return-address", i32 0}
!166 = !{i32 8, !"sign-return-address-all", i32 0}
!167 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!168 = !{i32 7, !"uwtable", i32 1}
!169 = !{i32 7, !"frame-pointer", i32 2}
!170 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!171 = !{!"auto-init"}
!172 = !{!"branch_weights", i32 2000, i32 1}
!173 = !{i64 6763955}
!174 = !{i64 2157764347}
!175 = !{i64 2157764636}
!176 = !{i64 6764178}
!177 = !{i64 2157764992}
!178 = !{i64 6763755}
!179 = !{i64 2157765481}
!180 = !{i64 2157765857}
!181 = !{i64 2157720856}
!182 = !{i64 2157721806}
!183 = !{i64 2157722151}
!184 = !{i64 2157722848}
!185 = !{i64 2157723103}
!186 = !{i64 2157723479}
!187 = !{i64 2157724161}
!188 = !{i64 2157725567}
!189 = !{i64 2157726517}
!190 = !{i64 2157727051}
!191 = !{i64 2157787554}
!192 = !{i64 2157787852}
!193 = !{i64 6764573}
!194 = !{i64 2157788133}
!195 = !{i64 2157790470}
!196 = !{i64 2157790758}
!197 = !{i64 2157790970}
!198 = !{i64 2157791210}
!199 = !{i64 2157791491}
!200 = !{i64 2157789947}
!201 = !{i64 2157790215}
!202 = !{i64 2157672832}
!203 = !{!"branch_weights", i32 1, i32 2000}
!204 = !{i64 2157673419, i64 2157673921, i64 2157673456, i64 2157673512, i64 2157673546, i64 2157673570, i64 2157673611, i64 2157673632, i64 2157673660, i64 2157673694}
!205 = !{i64 2149008463, i64 2149008468, i64 2149008481, i64 2149008525, i64 2149008559, i64 2149008580}
!206 = !{i64 2157678927}
!207 = !{i64 2157679657}
!208 = !{i64 2157788383}
!209 = !{i64 2157788674}
!210 = !{i64 2157788931}
!211 = !{i64 2157789229}
!212 = !{i64 2157789464}
!213 = !{i64 2157789745}
!214 = !{i64 2157735782}
!215 = !{i64 2157736512}
!216 = !{i64 2157698751}
!217 = !{i64 2157698998}
!218 = !{i64 2157702276}
!219 = !{i64 2157702521}
!220 = !{i64 2157702784}
!221 = !{i64 2157703029}
!222 = !{i64 2152233704, i64 2152234204, i64 2152233741, i64 2152233797, i64 2152233831, i64 2152233855, i64 2152233896, i64 2152233917, i64 2152233945, i64 2152233979}
!223 = !{i64 2152235048}
!224 = !{i64 2155811423}
!225 = !{i64 2157710376}
!226 = !{i64 2157782979}
!227 = !{i64 2157783294}
!228 = !{i64 2157783990}
!229 = !{i64 6764375}
!230 = !{i64 6764793}
!231 = !{i64 2157784969}
!232 = !{i64 2157785665}
!233 = !{i64 2157786644}
!234 = !{i64 2157786992}
!235 = !{i64 2157787305}
!236 = !{i64 2157753596}
!237 = !{i64 2157754124}
!238 = !{i64 2157754677}
!239 = !{i64 2157755220}
!240 = !{i64 2157758899}
!241 = !{i64 2157763044}
!242 = !{i64 2157763789}
!243 = !{i64 2157718714}
!244 = !{i64 2157718979}
!245 = !{i64 2157770562}
!246 = !{i64 2157771268}
!247 = !{i64 2157727320}
!248 = !{i64 2157727645}
!249 = !{i64 2157736864}
!250 = !{i64 2157737179}
!251 = !{i64 2157737875}
!252 = !{i64 2157738854}
!253 = !{i64 2157739550}
!254 = !{i64 2157740529}
!255 = !{i64 2157740800}
!256 = !{i64 2157741241}
!257 = !{i64 2157742007}
!258 = !{i64 2157742934}
!259 = !{i64 2157743115}
!260 = !{i64 2157743470}
!261 = !{i64 2157744438}
!262 = !{i64 2157744619}
!263 = !{i64 2157744946}
!264 = !{i64 2157745482}
!265 = !{i64 2157745795}
!266 = !{i64 2157680258}
!267 = !{i64 2157680811}
!268 = !{i64 2157683782}
!269 = !{i64 2157684310}
!270 = !{i64 2157684627}
!271 = !{i64 2157685200}
!272 = !{i64 2157685748}
!273 = !{i64 2157686493}
!274 = !{i64 2157728089}
!275 = !{i64 2157728638}
!276 = !{i64 2157729355}
!277 = !{i64 2157729708}
!278 = !{i64 2157730445}
!279 = !{i64 2157730820}
!280 = !{i64 2157731587}
!281 = !{i64 2157731976}
!282 = !{i64 2157732766}
!283 = !{i64 2157733144}
!284 = !{i64 2157733911}
!285 = !{i64 2157734300}
!286 = !{i64 2157735090}
!287 = !{i64 2157735365}
!288 = !{i64 2157714926}
!289 = !{i64 2157715659}
!290 = !{i64 2157716010}
!291 = !{i64 2157716740}
!292 = !{i64 2157717091}
!293 = !{i64 2157717821}
!294 = !{i64 2157686794}
!295 = !{i64 2157687287, i64 2157687789, i64 2157687324, i64 2157687380, i64 2157687414, i64 2157687438, i64 2157687479, i64 2157687500, i64 2157687528, i64 2157687562}
!296 = !{i64 2155812494}
!297 = !{i64 2157768384}
!298 = !{i64 2157768676}
!299 = !{i64 2157766346}
!300 = !{i64 2157766653}
!301 = !{i64 2157767001}
!302 = !{i64 2157767352}
!303 = !{i64 2157767697}
!304 = !{i64 2157767999}
!305 = !{i64 2157772665, i64 2157773168, i64 2157772702, i64 2157772758, i64 2157772792, i64 2157772816, i64 2157772857, i64 2157772878, i64 2157772906, i64 2157772940}
!306 = !{i64 2157774410}
!307 = !{i64 2157775094}
!308 = !{i64 2157776040}
!309 = !{i64 2157776588}
!310 = !{i64 2157777397}
!311 = !{i64 2157777860}
!312 = !{i64 2157778600}
!313 = !{i64 2157791711}
!314 = !{i64 2157808288}
!315 = !{i64 2157809358}
!316 = !{i64 2157809535}
