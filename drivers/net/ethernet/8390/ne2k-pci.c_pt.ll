; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/8390/ne2k-pci.c_pt.bc'
source_filename = "../drivers/net/ethernet/8390/ne2k-pci.c"
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
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
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
%struct.anon.122 = type { ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.123 = type { i8, i8 }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
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
%struct.e8390_pkt_hdr = type { i8, i8, i16 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }

@__UNIQUE_ID_author341 = internal constant [47 x i8] c"ne2k_pci.author=Donald Becker / Paul Gortmaker\00", section ".modinfo", align 1
@__UNIQUE_ID_description342 = internal constant [45 x i8] c"ne2k_pci.description=PCI NE2000 clone driver\00", section ".modinfo", align 1
@__UNIQUE_ID_version343 = internal constant [22 x i8] c"ne2k_pci.version=1.03\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ne2k_pci\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1.03\00", [27 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file344 = internal constant [49 x i8] c"ne2k_pci.file=drivers/net/ethernet/8390/ne2k-pci\00", section ".modinfo", align 1
@__UNIQUE_ID_license345 = internal constant [21 x i8] c"ne2k_pci.license=GPL\00", section ".modinfo", align 1
@__param_str_msg_enable = internal constant [20 x i8] c"ne2k_pci.msg_enable\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@ne2k_msg_enable = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_msg_enable = internal constant %struct.kernel_param { ptr @__param_str_msg_enable, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @ne2k_msg_enable } }, section "__param", align 4
@__UNIQUE_ID_msg_enabletype346 = internal constant [33 x i8] c"ne2k_pci.parmtype=msg_enable:int\00", section ".modinfo", align 1
@__param_str_options = internal constant [17 x i8] c"ne2k_pci.options\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_options = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_int, ptr @options }, align 4
@__param_options = internal constant %struct.kernel_param { ptr @__param_str_options, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @__param_arr_options } }, section "__param", align 4
@__UNIQUE_ID_optionstype347 = internal constant [39 x i8] c"ne2k_pci.parmtype=options:array of int\00", section ".modinfo", align 1
@__param_str_full_duplex = internal constant [21 x i8] c"ne2k_pci.full_duplex\00", align 1
@__param_arr_full_duplex = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_int, ptr @full_duplex }, align 4
@__param_full_duplex = internal constant %struct.kernel_param { ptr @__param_str_full_duplex, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @__param_arr_full_duplex } }, section "__param", align 4
@__UNIQUE_ID_full_duplextype348 = internal constant [43 x i8] c"ne2k_pci.parmtype=full_duplex:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_msg_enable349 = internal constant [80 x i8] c"ne2k_pci.parm=msg_enable:Debug message level (see linux/netdevice.h for bitmap)\00", section ".modinfo", align 1
@__UNIQUE_ID_options350 = internal constant [41 x i8] c"ne2k_pci.parm=options:Bit 5: full duplex\00", section ".modinfo", align 1
@__UNIQUE_ID_full_duplex351 = internal constant [53 x i8] c"ne2k_pci.parm=full_duplex:full duplex setting(s) (1)\00", section ".modinfo", align 1
@ne2k_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.3, ptr @ne2k_pci_tbl, ptr @ne2k_pci_init_one, ptr @ne2k_pci_remove_one, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ne2k_pci_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_ne2k_pci__353_746_ne2k_pci_init6 = internal global ptr @ne2k_pci_init, section ".initcall6.init", align 4
@__exitcall_ne2k_pci_cleanup = internal global ptr @ne2k_pci_cleanup, section ".exitcall.exit", align 4
@options = internal global { [8 x i32], [32 x i8] } zeroinitializer, align 32
@full_duplex = internal global { [8 x i32], [32 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ne2k-pci\00", [23 x i8] zeroinitializer }, align 32
@ne2k_pci_tbl = internal constant { [12 x %struct.pci_device_id], [96 x i8] } { [12 x %struct.pci_device_id] [%struct.pci_device_id { i32 4332, i32 32809, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4176, i32 2368, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4598, i32 5121, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 36398, i32 12288, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 18964, i32 20480, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 4358, i32 2342, i32 -1, i32 -1, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 4285, i32 3636, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 4176, i32 23130, i32 -1, i32 -1, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 4803, i32 88, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 4803, i32 21912, i32 -1, i32 -1, i32 0, i32 0, i32 9, i32 0 }, %struct.pci_device_id { i32 35914, i32 6528, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id zeroinitializer], [96 x i8] zeroinitializer }, align 32
@ne2k_pci_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ne2k_pci_suspend, ptr @ne2k_pci_resume, ptr @ne2k_pci_suspend, ptr @ne2k_pci_resume, ptr @ne2k_pci_suspend, ptr @ne2k_pci_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ne2k_pci_init_one.fnd_cnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@pci_clone_list = internal constant { [12 x %struct.anon.122], [32 x i8] } { [12 x %struct.anon.122] [%struct.anon.122 { ptr @.str.19, i32 64 }, %struct.anon.122 { ptr @.str.20, i32 0 }, %struct.anon.122 { ptr @.str.21, i32 0 }, %struct.anon.122 { ptr @.str.22, i32 0 }, %struct.anon.122 { ptr @.str.23, i32 0 }, %struct.anon.122 { ptr @.str.24, i32 8 }, %struct.anon.122 { ptr @.str.25, i32 0 }, %struct.anon.122 { ptr @.str.26, i32 0 }, %struct.anon.122 { ptr @.str.27, i32 136 }, %struct.anon.122 { ptr @.str.28, i32 388 }, %struct.anon.122 { ptr @.str.29, i32 0 }, %struct.anon.122 zeroinitializer], [32 x i8] zeroinitializer }, align 32
@ne2k_pci_init_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 248, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"no I/O resource at PCI BAR #0\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ne2k_pci_init_one\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/net/ethernet/8390/ne2k-pci.c\00", [59 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ne2k_pci_init_one._entry_ptr = internal global ptr @ne2k_pci_init_one._entry, section ".printk_index", align 4
@ioport_resource = external dso_local global %struct.resource, align 4
@ne2k_pci_init_one._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 254, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"I/O resource 0x%x @ 0x%lx busy\0A\00", [32 x i8] zeroinitializer }, align 32
@ne2k_pci_init_one._entry_ptr.11 = internal global ptr @ne2k_pci_init_one._entry.9, section ".printk_index", align 4
@ne2k_pci_init_one._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.6, i32 283, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"cannot allocate ethernet device\0A\00", [63 x i8] zeroinitializer }, align 32
@ne2k_pci_init_one._entry_ptr.14 = internal global ptr @ne2k_pci_init_one._entry.12, section ".printk_index", align 4
@ne2k_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @ne2k_pci_open, ptr @ne2k_pci_close, ptr @ei_start_xmit, ptr null, ptr null, ptr null, ptr @ei_set_multicast_list, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ei_tx_timeout, ptr null, ptr null, ptr null, ptr @ei_get_stats, ptr null, ptr null, ptr @ei_poll, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ne2k_pci_init_one._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.5, ptr @.str.6, i32 305, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Card failure (no reset ack).\0A\00", [34 x i8] zeroinitializer }, align 32
@ne2k_pci_init_one._entry_ptr.17 = internal global ptr @ne2k_pci_init_one._entry.15, section ".printk_index", align 4
@__const.ne2k_pci_init_one.program_seq = private unnamed_addr constant [13 x %struct.anon.123] [%struct.anon.123 { i8 33, i8 0 }, %struct.anon.123 { i8 73, i8 14 }, %struct.anon.123 { i8 0, i8 10 }, %struct.anon.123 { i8 0, i8 11 }, %struct.anon.123 { i8 0, i8 15 }, %struct.anon.123 { i8 -1, i8 7 }, %struct.anon.123 { i8 32, i8 12 }, %struct.anon.123 { i8 2, i8 13 }, %struct.anon.123 { i8 32, i8 10 }, %struct.anon.123 { i8 0, i8 11 }, %struct.anon.123 { i8 0, i8 8 }, %struct.anon.123 { i8 0, i8 9 }, %struct.anon.123 { i8 10, i8 0 }], align 1
@ne2k_pci_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @ne2k_pci_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr @ne2k_pci_get_msglevel, ptr @ne2k_pci_set_msglevel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s found at %#lx, IRQ %d, %pM.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"RealTek RTL-8029(AS)\00", [43 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Winbond 89C940\00", [17 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Compex RL2000\00", [18 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"KTI ET32P2\00", [21 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"NetVin NV5000SC\00", [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Via 86C926\00", [21 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SureCom NE34\00", [19 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Winbond W89C940F\00", [47 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Holtek HT80232\00", [17 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Holtek HT80229\00", [17 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Winbond W89C940(misprogrammed)\00", [33 x i8] zeroinitializer }, align 32
@ne2k_pci_reset_8390.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.30, ptr @.str.6, ptr @.str.31, i8 0, i8 119, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ne2k_pci_reset_8390\00", [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"resetting the 8390 t=%ld...\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s did not complete.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"DMAing conflict in %s [DMAstat:%d][irqlock:%d]\0A\00", [48 x i8] zeroinitializer }, align 32
@__func__.ne2k_pci_block_input = private unnamed_addr constant [21 x i8] c"ne2k_pci_block_input\00", align 1
@__func__.ne2k_pci_block_output = private unnamed_addr constant [22 x i8] c"ne2k_pci_block_output\00", align 1
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"timeout waiting for Tx RDC.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"DMAing conflict in %s [DMAstat:%d][irqlock:%d].\0A\00", [47 x i8] zeroinitializer }, align 32
@__func__.ne2k_pci_get_8390_hdr = private unnamed_addr constant [22 x i8] c"ne2k_pci_get_8390_hdr\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 77, i32 1 }
@___asan_gen_.45 = private unnamed_addr constant [16 x i8] c"ne2k_msg_enable\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 65, i32 12 }
@___asan_gen_.48 = private unnamed_addr constant [12 x i8] c"ne2k_driver\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 726, i32 26 }
@___asan_gen_.51 = private unnamed_addr constant [8 x i8] c"options\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 43, i32 12 }
@___asan_gen_.54 = private unnamed_addr constant [12 x i8] c"full_duplex\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 42, i32 12 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 727, i32 11 }
@___asan_gen_.60 = private unnamed_addr constant [13 x i8] c"ne2k_pci_tbl\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 144, i32 35 }
@___asan_gen_.63 = private unnamed_addr constant [16 x i8] c"ne2k_pci_pm_ops\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 724, i32 8 }
@___asan_gen_.66 = private unnamed_addr constant [8 x i8] c"fnd_cnt\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 233, i32 22 }
@___asan_gen_.69 = private unnamed_addr constant [15 x i8] c"pci_clone_list\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 128, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 248, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 253, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 283, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant [16 x i8] c"ne2k_netdev_ops\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 211, i32 36 }
@___asan_gen_.105 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 304, i32 5 }
@___asan_gen_.111 = private unnamed_addr constant [21 x i8] c"ne2k_pci_ethtool_ops\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 688, i32 33 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 399, i32 19 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 129, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 130, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 131, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 132, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 133, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 134, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 135, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 136, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 137, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 138, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 139, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 476, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 487, i32 20 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 549, i32 19 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 653, i32 21 }
@___asan_gen_.165 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.166 = private constant [40 x i8] c"../drivers/net/ethernet/8390/ne2k-pci.c\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 508, i32 19 }
@llvm.compiler.used = appending global [66 x ptr] [ptr @__UNIQUE_ID_author341, ptr @__UNIQUE_ID_description342, ptr @__UNIQUE_ID_file344, ptr @__UNIQUE_ID_full_duplex351, ptr @__UNIQUE_ID_full_duplextype348, ptr @__UNIQUE_ID_license345, ptr @__UNIQUE_ID_msg_enable349, ptr @__UNIQUE_ID_msg_enabletype346, ptr @__UNIQUE_ID_options350, ptr @__UNIQUE_ID_optionstype347, ptr @__UNIQUE_ID_version343, ptr @__exitcall_ne2k_pci_cleanup, ptr @__initcall__kmod_ne2k_pci__353_746_ne2k_pci_init6, ptr @__modver_attr, ptr @__param_full_duplex, ptr @__param_msg_enable, ptr @__param_options, ptr @ne2k_pci_cleanup, ptr @ne2k_pci_init_one._entry, ptr @ne2k_pci_init_one._entry.12, ptr @ne2k_pci_init_one._entry.15, ptr @ne2k_pci_init_one._entry.9, ptr @ne2k_pci_init_one._entry_ptr, ptr @ne2k_pci_init_one._entry_ptr.11, ptr @ne2k_pci_init_one._entry_ptr.14, ptr @ne2k_pci_init_one._entry_ptr.17, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @ne2k_msg_enable, ptr @ne2k_driver, ptr @options, ptr @full_duplex, ptr @.str.3, ptr @ne2k_pci_tbl, ptr @ne2k_pci_pm_ops, ptr @ne2k_pci_init_one.fnd_cnt, ptr @pci_clone_list, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @ne2k_netdev_ops, ptr @.str.16, ptr @ne2k_pci_ethtool_ops, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ne2k_msg_enable to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ne2k_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @options to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @full_duplex to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ne2k_pci_tbl to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ne2k_pci_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ne2k_pci_init_one.fnd_cnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_clone_list to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ne2k_pci_init_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ne2k_pci_init_one._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ne2k_pci_init_one._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ne2k_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ne2k_pci_init_one._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ne2k_pci_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ne2k_pci_cleanup() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pci_unregister_driver(ptr noundef nonnull @ne2k_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ne2k_pci_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @ne2k_driver, ptr noundef null, ptr noundef nonnull @.str.1) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ne2k_pci_init_one(ptr noundef %pdev, ptr nocapture noundef readonly %ent) #2 align 64 {
entry:
  %SA_prom = alloca [32 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %SA_prom) #8
  %0 = getelementptr inbounds [32 x i8], ptr %SA_prom, i32 0, i32 4
  %1 = getelementptr inbounds [32 x i8], ptr %SA_prom, i32 0, i32 8
  %2 = getelementptr inbounds [32 x i8], ptr %SA_prom, i32 0, i32 12
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 6
  %3 = call ptr @memset(ptr %SA_prom, i32 255, i32 32)
  %4 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_data, align 4
  %arrayidx = getelementptr [12 x %struct.anon.122], ptr @pci_clone_list, i32 0, i32 %5
  %flags1 = getelementptr [12 x %struct.anon.122], ptr @pci_clone_list, i32 0, i32 %5, i32 1
  %6 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags1, align 4
  %8 = load i32, ptr @ne2k_pci_init_one.fnd_cnt, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr @ne2k_pci_init_one.fnd_cnt, align 4
  %call = tail call i32 @pci_enable_device(ptr noundef %pdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup246_crit_edge

entry.cleanup246_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup246

if.end:                                           ; preds = %entry
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %9 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %resource, align 8
  %irq3 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %11 = ptrtoint ptr %irq3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool4.not = icmp eq i32 %10, 0
  br i1 %tobool4.not, label %if.end.do.end_crit_edge, label %lor.lhs.false

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end
  %flags7 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 3
  %13 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags7, align 4
  %and = and i32 %14, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %lor.lhs.false.do.end_crit_edge, label %if.end10

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end.do.end_crit_edge
  %dev9 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.4) #11
  br label %err_out

if.end10:                                         ; preds = %lor.lhs.false
  %call11 = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %10, i32 noundef 32, ptr noundef nonnull @.str.3, i32 noundef 0) #8
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %do.end16, label %if.end18

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %dev17 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17, ptr noundef nonnull @.str.10, i32 noundef 32, i32 noundef %10) #11
  br label %err_out

if.end18:                                         ; preds = %if.end10
  %and19 = and i32 %10, 1048575
  %add = or i32 %and19, -18874368
  %15 = inttoptr i32 %add to ptr
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %15) #8, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %16)
  %cmp22 = icmp eq i8 %16, -1
  br i1 %cmp22, label %if.end18.err_out_free_res_crit_edge, label %if.end25

if.end18.err_out_free_res_crit_edge:              ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out_free_res

if.end25:                                         ; preds = %if.end18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !132
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 97) #8, !srcloc !133
  %add34 = add i32 %10, 13
  %and35 = and i32 %add34, 1048575
  %add36 = or i32 %and35, -18874368
  %17 = inttoptr i32 %add36 to ptr
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %17) #8, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 -1) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !136
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 32) #8, !srcloc !133
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %17) #8, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %17) #8, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp70.not = icmp eq i8 %20, 0
  br i1 %cmp70.not, label %cleanup.cont, label %cleanup

cleanup:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !139
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 %16) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !140
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %18) #8, !srcloc !133
  br label %err_out_free_res

cleanup.cont:                                     ; preds = %if.end25
  %call.i = tail call ptr @__alloc_ei_netdev(i32 noundef 0) #8
  %tobool90.not = icmp eq ptr %call.i, null
  br i1 %tobool90.not, label %do.end94, label %if.end96

do.end94:                                         ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #10
  %dev95 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev95, ptr noundef nonnull @.str.13) #11
  br label %err_out_free_res

if.end96:                                         ; preds = %cleanup.cont
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 16
  %21 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @ne2k_netdev_ops, ptr %netdev_ops, align 8
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 2304
  %22 = load i32, ptr @ne2k_msg_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %22)
  %cmp1.i = icmp ugt i32 %22, 31
  br i1 %cmp1.i, label %if.end96.netif_msg_init.exit_crit_edge, label %if.end.i

if.end96.netif_msg_init.exit_crit_edge:           ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #10
  br label %netif_msg_init.exit

if.end.i:                                         ; preds = %if.end96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp2.i = icmp eq i32 %22, 0
  br i1 %cmp2.i, label %if.end.i.netif_msg_init.exit_crit_edge, label %if.end4.i

if.end.i.netif_msg_init.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %netif_msg_init.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %notmask.i = shl nsw i32 -1, %22
  %sub.i = xor i32 %notmask.i, -1
  br label %netif_msg_init.exit

netif_msg_init.exit:                              ; preds = %if.end4.i, %if.end.i.netif_msg_init.exit_crit_edge, %if.end96.netif_msg_init.exit_crit_edge
  %retval.0.i = phi i32 [ %sub.i, %if.end4.i ], [ 195, %if.end96.netif_msg_init.exit_crit_edge ], [ 0, %if.end.i.netif_msg_init.exit_crit_edge ]
  %msg_enable = getelementptr i8, ptr %call.i, i32 2416
  %23 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %retval.0.i, ptr %msg_enable, align 4
  %dev99 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %parent = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 133, i32 1
  %24 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %dev99, ptr %parent, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %25 = load volatile i32, ptr @jiffies, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !141
  tail call void @arm_heavy_mb() #8
  %add105 = add i32 %10, 31
  %and106 = and i32 %add105, 1048575
  %add107 = or i32 %and106, -18874368
  %26 = inttoptr i32 %add107 to ptr
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %26) #8, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 %27) #8, !srcloc !133
  %add116 = add i32 %10, 7
  %and117 = and i32 %add116, 1048575
  %add118 = or i32 %and117, -18874368
  %28 = inttoptr i32 %add118 to ptr
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %netif_msg_init.exit
  %29 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %28) #8, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !143
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %29)
  %cmp124 = icmp sgt i8 %29, -1
  br i1 %cmp124, label %while.body, label %cleanup141

while.body:                                       ; preds = %while.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %30 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %30, %25
  %cmp126 = icmp ugt i32 %sub, 2
  br i1 %cmp126, label %cleanup141.thread, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

cleanup141.thread:                                ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev99, ptr noundef nonnull @.str.16) #11
  br label %err_out_free_netdev

cleanup141:                                       ; preds = %while.cond
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 -1) #8, !srcloc !133
  br label %do.body146

do.body146:                                       ; preds = %do.body146.do.body146_crit_edge, %cleanup141
  %i.0352 = phi i32 [ 0, %cleanup141 ], [ %inc156, %do.body146.do.body146_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  tail call void @arm_heavy_mb() #8
  %arrayidx149 = getelementptr [13 x %struct.anon.123], ptr @__const.ne2k_pci_init_one.program_seq, i32 0, i32 %i.0352
  %31 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx149, align 1
  %offset = getelementptr [13 x %struct.anon.123], ptr @__const.ne2k_pci_init_one.program_seq, i32 0, i32 %i.0352, i32 1
  %33 = ptrtoint ptr %offset to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %offset, align 1
  %conv151 = zext i8 %34 to i32
  %add152 = add i32 %10, %conv151
  %and153 = and i32 %add152, 1048575
  %add154 = or i32 %and153, -18874368
  %35 = inttoptr i32 %add154 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %35, i8 %32) #8, !srcloc !133
  %inc156 = add nuw nsw i32 %i.0352, 1
  %exitcond.not = icmp eq i32 %inc156, 13
  br i1 %exitcond.not, label %for.end, label %do.body146.do.body146_crit_edge

do.body146.do.body146_crit_edge:                  ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body146

for.end:                                          ; preds = %do.body146
  %36 = and i32 %5, 536870911
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %36)
  %tobool158.not.not = icmp eq i32 %36, 9
  %add165 = add i32 %10, 16
  %and166 = and i32 %add165, 1048575
  %add167 = or i32 %and166, -18874368
  %37 = inttoptr i32 %add167 to ptr
  br i1 %tobool158.not.not, label %for.cond160.preheader, label %for.end.for.body178_crit_edge

for.end.for.body178_crit_edge:                    ; preds = %for.end
  br label %for.body178

for.cond160.preheader:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %37) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !147
  %39 = ptrtoint ptr %SA_prom to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %SA_prom, align 4
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %37) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !147
  %41 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %0, align 4
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %37) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !147
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %1, align 4
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %37) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !147
  %45 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %2, align 4
  br label %do.body191

for.body178:                                      ; preds = %for.body178.for.body178_crit_edge, %for.end.for.body178_crit_edge
  %i.2353 = phi i32 [ %inc188, %for.body178.for.body178_crit_edge ], [ 0, %for.end.for.body178_crit_edge ]
  %46 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %37) #8, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !148
  %arrayidx186 = getelementptr [32 x i8], ptr %SA_prom, i32 0, i32 %i.2353
  %47 = ptrtoint ptr %arrayidx186 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %arrayidx186, align 1
  %inc188 = add nuw nsw i32 %i.2353, 1
  %exitcond356.not = icmp eq i32 %inc188, 32
  br i1 %exitcond356.not, label %for.body178.do.body191_crit_edge, label %for.body178.for.body178_crit_edge

for.body178.for.body178_crit_edge:                ; preds = %for.body178
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body178

for.body178.do.body191_crit_edge:                 ; preds = %for.body178
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body191

do.body191:                                       ; preds = %for.body178.do.body191_crit_edge, %for.cond160.preheader
  %conv206 = phi i8 [ 96, %for.cond160.preheader ], [ -128, %for.body178.do.body191_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  tail call void @arm_heavy_mb() #8
  %add194 = add i32 %10, 14
  %and195 = and i32 %add194, 1048575
  %add196 = or i32 %and195, -18874368
  %48 = inttoptr i32 %add196 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %48, i8 73) #8, !srcloc !133
  %irq200 = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 64
  %49 = ptrtoint ptr %irq200 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %12, ptr %irq200, align 4
  %base_addr = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 5
  %50 = ptrtoint ptr %base_addr to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %10, ptr %base_addr, align 32
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %51 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %52 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx, align 4
  %54 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %53, ptr %add.ptr.i, align 4
  %tx_start_page = getelementptr i8, ptr %call.i, i32 2345
  %55 = ptrtoint ptr %tx_start_page to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 64, ptr %tx_start_page, align 1
  %stop_page208 = getelementptr i8, ptr %call.i, i32 2347
  %56 = ptrtoint ptr %stop_page208 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv206, ptr %stop_page208, align 1
  %word16 = getelementptr i8, ptr %call.i, i32 2344
  %57 = ptrtoint ptr %word16 to i32
  call void @__asan_load1_noabort(i32 %57)
  %bf.load = load i8, ptr %word16, align 4
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %word16, align 4
  %conv210 = trunc i32 %7 to i8
  %reg0212 = getelementptr i8, ptr %call.i, i32 2358
  %58 = ptrtoint ptr %reg0212 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv210, ptr %reg0212, align 2
  %59 = load i32, ptr @ne2k_pci_init_one.fnd_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %59)
  %cmp213 = icmp ult i32 %59, 8
  br i1 %cmp213, label %if.then215, label %do.body191.if.end229_crit_edge

do.body191.if.end229_crit_edge:                   ; preds = %do.body191
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end229

if.then215:                                       ; preds = %do.body191
  %arrayidx216 = getelementptr [8 x i32], ptr @full_duplex, i32 0, i32 %59
  %60 = ptrtoint ptr %arrayidx216 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx216, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp217 = icmp sgt i32 %61, 0
  br i1 %cmp217, label %if.then215.if.then223_crit_edge, label %lor.lhs.false219

if.then215.if.then223_crit_edge:                  ; preds = %if.then215
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then223

lor.lhs.false219:                                 ; preds = %if.then215
  %arrayidx220 = getelementptr [8 x i32], ptr @options, i32 0, i32 %59
  %62 = ptrtoint ptr %arrayidx220 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx220, align 4
  %and221 = and i32 %63, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and221)
  %tobool222.not = icmp eq i32 %and221, 0
  br i1 %tobool222.not, label %lor.lhs.false219.if.end229_crit_edge, label %lor.lhs.false219.if.then223_crit_edge

lor.lhs.false219.if.then223_crit_edge:            ; preds = %lor.lhs.false219
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then223

lor.lhs.false219.if.end229_crit_edge:             ; preds = %lor.lhs.false219
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end229

if.then223:                                       ; preds = %lor.lhs.false219.if.then223_crit_edge, %if.then215.if.then223_crit_edge
  %64 = or i8 %conv210, 32
  %65 = ptrtoint ptr %reg0212 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %reg0212, align 2
  br label %if.end229

if.end229:                                        ; preds = %if.then223, %lor.lhs.false219.if.end229_crit_edge, %do.body191.if.end229_crit_edge
  %rx_start_page = getelementptr i8, ptr %call.i, i32 2346
  %66 = ptrtoint ptr %rx_start_page to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 76, ptr %rx_start_page, align 2
  %reset_8390 = getelementptr i8, ptr %call.i, i32 2308
  %67 = ptrtoint ptr %reset_8390 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @ne2k_pci_reset_8390, ptr %reset_8390, align 4
  %block_input = getelementptr i8, ptr %call.i, i32 2320
  %68 = ptrtoint ptr %block_input to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @ne2k_pci_block_input, ptr %block_input, align 4
  %block_output = getelementptr i8, ptr %call.i, i32 2316
  %69 = ptrtoint ptr %block_output to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @ne2k_pci_block_output, ptr %block_output, align 4
  %get_8390_hdr = getelementptr i8, ptr %call.i, i32 2312
  %70 = ptrtoint ptr %get_8390_hdr to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @ne2k_pci_get_8390_hdr, ptr %get_8390_hdr, align 4
  %71 = ptrtoint ptr %pdev to i32
  %priv = getelementptr i8, ptr %call.i, i32 2412
  %72 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %priv, align 4
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 44
  %73 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @ne2k_pci_ethtool_ops, ptr %ethtool_ops, align 16
  tail call void @NS8390_init(ptr noundef nonnull %call.i, i32 noundef 0) #8
  call void @dev_addr_mod(ptr noundef nonnull %call.i, i32 noundef 0, ptr noundef nonnull %SA_prom, i32 noundef 6) #8
  %call239 = call i32 @register_netdev(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call239)
  %tobool240.not = icmp eq i32 %call239, 0
  br i1 %tobool240.not, label %if.end242, label %if.end229.err_out_free_netdev_crit_edge

if.end229.err_out_free_netdev_crit_edge:          ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out_free_netdev

if.end242:                                        ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #10
  %74 = ptrtoint ptr %irq200 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %irq200, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 86
  %76 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev_addr, align 64
  call void (ptr, ptr, ...) @netdev_info(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.18, ptr noundef %53, i32 noundef %10, i32 noundef %75, ptr noundef %77) #11
  br label %cleanup246

err_out_free_netdev:                              ; preds = %if.end229.err_out_free_netdev_crit_edge, %cleanup141.thread
  call void @free_netdev(ptr noundef nonnull %call.i) #8
  br label %err_out_free_res

err_out_free_res:                                 ; preds = %err_out_free_netdev, %do.end94, %cleanup, %if.end18.err_out_free_res_crit_edge
  call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %10, i32 noundef 32) #8
  br label %err_out

err_out:                                          ; preds = %err_out_free_res, %do.end16, %do.end
  call void @pci_disable_device(ptr noundef %pdev) #8
  br label %cleanup246

cleanup246:                                       ; preds = %err_out, %if.end242, %entry.cleanup246_crit_edge
  %retval.0 = phi i32 [ -19, %err_out ], [ 0, %if.end242 ], [ %call, %entry.cleanup246_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %SA_prom) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ne2k_pci_remove_one(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !150

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/8390/ne2k-pci.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #8, !srcloc !151
  unreachable

do.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @unregister_netdev(ptr noundef nonnull %1) #8
  %base_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base_addr, align 32
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %3, i32 noundef 32) #8
  tail call void @free_netdev(ptr noundef nonnull %1) #8
  tail call void @pci_disable_device(ptr noundef %pdev) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ne2k_pci_reset_8390(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %msg_enable = getelementptr i8, ptr %dev, i32 2416
  %1 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %msg_enable, align 4
  %and = and i32 %2, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body10_crit_edge, label %do.body1

entry.do.body10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body10

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ne2k_pci_reset_8390.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ne2k_pci_reset_8390, %if.then6)) #8
          to label %do.body10 [label %if.then6], !srcloc !152

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ne2k_pci_reset_8390.__UNIQUE_ID_ddebug352, ptr noundef %dev, ptr noundef nonnull @.str.31, i32 noundef %3) #8
  br label %do.body10

do.body10:                                        ; preds = %if.then6, %do.body1, %entry.do.body10_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  tail call void @arm_heavy_mb() #8
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %4 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base_addr, align 32
  %add = add i32 %5, 31
  %and13 = and i32 %add, 1048575
  %add14 = or i32 %and13, -18874368
  %6 = inttoptr i32 %add14 to ptr
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #8, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  %8 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base_addr, align 32
  %add19 = add i32 %9, 31
  %and20 = and i32 %add19, 1048575
  %add21 = or i32 %and20, -18874368
  %10 = inttoptr i32 %add21 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 %7) #8, !srcloc !133
  %txing = getelementptr i8, ptr %dev, i32 2344
  %11 = ptrtoint ptr %txing to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %txing, align 4
  %bf.clear26 = and i8 %bf.load, -21
  store i8 %bf.clear26, ptr %txing, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %do.body10
  %12 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %base_addr, align 32
  %add30 = add i32 %13, 7
  %and31 = and i32 %add30, 1048575
  %add32 = or i32 %and31, -18874368
  %14 = inttoptr i32 %add32 to ptr
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %14) #8, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %15)
  %cmp = icmp sgt i8 %15, -1
  br i1 %cmp, label %while.body, label %while.cond.do.body42_crit_edge

while.cond.do.body42_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body42

while.body:                                       ; preds = %while.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %16, %0
  %cmp38 = icmp ugt i32 %sub, 2
  br i1 %cmp38, label %if.then40, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

if.then40:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.30) #11
  br label %do.body42

do.body42:                                        ; preds = %if.then40, %while.cond.do.body42_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !156
  tail call void @arm_heavy_mb() #8
  %17 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %base_addr, align 32
  %add46 = add i32 %18, 7
  %and47 = and i32 %add46, 1048575
  %add48 = or i32 %and47, -18874368
  %19 = inttoptr i32 %add48 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 -128) #8, !srcloc !133
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ne2k_pci_block_input(ptr noundef %dev, i32 noundef %count, ptr nocapture noundef readonly %skb, i32 noundef %ring_offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %dmaing = getelementptr i8, ptr %dev, i32 2344
  %4 = ptrtoint ptr %dmaing to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %dmaing, align 4
  %5 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %bf.lshr4 = lshr i8 %bf.load, 2
  %bf.clear5 = and i8 %bf.lshr4, 1
  %bf.cast6 = zext i8 %bf.clear5 to i32
  %bf.lshr9 = lshr i8 %bf.load, 3
  %bf.clear10 = and i8 %bf.lshr9, 1
  %bf.cast11 = zext i8 %bf.clear10 to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.ne2k_pci_block_input, i32 noundef %bf.cast6, i32 noundef %bf.cast11) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %bf.set = or i8 %bf.load, 4
  %6 = ptrtoint ptr %dmaing to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %bf.set, ptr %dmaing, align 4
  %reg0 = getelementptr i8, ptr %dev, i32 2358
  %7 = ptrtoint ptr %reg0 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %reg0, align 2
  %9 = and i8 %8, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool21.not = icmp eq i8 %9, 0
  %add = add i32 %count, 3
  %and23 = and i32 %add, 65532
  %count.addr.0 = select i1 %tobool21.not, i32 %count, i32 %and23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %and26 = and i32 %1, 1048575
  %add27 = or i32 %and26, -18874368
  %10 = inttoptr i32 %add27 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 34) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !158
  tail call void @arm_heavy_mb() #8
  %conv33 = trunc i32 %count.addr.0 to i8
  %add34 = add i32 %1, 10
  %and35 = and i32 %add34, 1048575
  %add36 = or i32 %and35, -18874368
  %11 = inttoptr i32 %add36 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 %conv33) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !159
  tail call void @arm_heavy_mb() #8
  %12 = lshr i32 %count.addr.0, 8
  %conv41 = trunc i32 %12 to i8
  %add42 = add i32 %1, 11
  %and43 = and i32 %add42, 1048575
  %add44 = or i32 %and43, -18874368
  %13 = inttoptr i32 %add44 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 %conv41) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  tail call void @arm_heavy_mb() #8
  %conv50 = trunc i32 %ring_offset to i8
  %add51 = add i32 %1, 8
  %and52 = and i32 %add51, 1048575
  %add53 = or i32 %and52, -18874368
  %14 = inttoptr i32 %add53 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %conv50) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !161
  tail call void @arm_heavy_mb() #8
  %15 = lshr i32 %ring_offset, 8
  %conv59 = trunc i32 %15 to i8
  %add60 = add i32 %1, 9
  %and61 = and i32 %add60, 1048575
  %add62 = or i32 %and61, -18874368
  %16 = inttoptr i32 %add62 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 %conv59) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !162
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 10) #8, !srcloc !133
  %17 = ptrtoint ptr %reg0 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %reg0, align 2
  %19 = and i8 %18, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool75.not = icmp eq i8 %19, 0
  %20 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %base_addr, align 32
  %add94 = add i32 %21, 16
  %and95 = and i32 %add94, 1048575
  %add96 = or i32 %and95, -18874368
  %22 = inttoptr i32 %add96 to ptr
  br i1 %tobool75.not, label %if.else, label %if.then76

if.then76:                                        ; preds = %if.end
  %shr82 = ashr i32 %count.addr.0, 1
  tail call void @__raw_readsw(ptr noundef nonnull %22, ptr noundef %3, i32 noundef %shr82) #8
  %and83 = and i32 %count.addr.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %if.then76.do.body129_crit_edge, label %if.then85

if.then76.do.body129_crit_edge:                   ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body129

if.then85:                                        ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %base_addr, align 32
  %add87 = add i32 %24, 16
  %and88 = and i32 %add87, 1048575
  %add89 = or i32 %and88, -18874368
  %25 = inttoptr i32 %add89 to ptr
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %25) #8, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !163
  %sub = add i32 %count.addr.0, -1
  %arrayidx = getelementptr i8, ptr %3, i32 %sub
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %arrayidx, align 1
  br label %do.body129

if.else:                                          ; preds = %if.end
  %shr98 = ashr i32 %count.addr.0, 2
  tail call void @__raw_readsl(ptr noundef nonnull %22, ptr noundef %3, i32 noundef %shr98) #8
  %and99 = and i32 %count.addr.0, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  br i1 %tobool100.not, label %if.else.do.body129_crit_edge, label %if.then101

if.else.do.body129_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body129

if.then101:                                       ; preds = %if.else
  %and102 = and i32 %count.addr.0, -4
  %add.ptr = getelementptr i8, ptr %3, i32 %and102
  %and103 = and i32 %count.addr.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  br i1 %tobool104.not, label %if.then101.if.end114_crit_edge, label %if.then105

if.then101.if.end114_crit_edge:                   ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end114

if.then105:                                       ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %base_addr, align 32
  %add108 = add i32 %29, 16
  %and109 = and i32 %add108, 1048575
  %add110 = or i32 %and109, -18874368
  %30 = inttoptr i32 %add110 to ptr
  %31 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %30) #8, !srcloc !164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  %incdec.ptr = getelementptr i16, ptr %add.ptr, i32 1
  %32 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %add.ptr, align 2
  br label %if.end114

if.end114:                                        ; preds = %if.then105, %if.then101.if.end114_crit_edge
  %buf.0 = phi ptr [ %incdec.ptr, %if.then105 ], [ %add.ptr, %if.then101.if.end114_crit_edge ]
  %and115 = and i32 %count.addr.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115)
  %tobool116.not = icmp eq i32 %and115, 0
  br i1 %tobool116.not, label %if.end114.do.body129_crit_edge, label %if.then117

if.end114.do.body129_crit_edge:                   ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body129

if.then117:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %base_addr, align 32
  %add120 = add i32 %34, 16
  %and121 = and i32 %add120, 1048575
  %add122 = or i32 %and121, -18874368
  %35 = inttoptr i32 %add122 to ptr
  %36 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %35) #8, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !166
  %37 = ptrtoint ptr %buf.0 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %buf.0, align 1
  br label %do.body129

do.body129:                                       ; preds = %if.then117, %if.end114.do.body129_crit_edge, %if.else.do.body129_crit_edge, %if.then85, %if.then76.do.body129_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !167
  tail call void @arm_heavy_mb() #8
  %add132 = add i32 %1, 7
  %and133 = and i32 %add132, 1048575
  %add134 = or i32 %and133, -18874368
  %38 = inttoptr i32 %add134 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %38, i8 64) #8, !srcloc !133
  %39 = ptrtoint ptr %dmaing to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load138 = load i8, ptr %dmaing, align 4
  %bf.clear146 = and i8 %bf.load138, -5
  store i8 %bf.clear146, ptr %dmaing, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body129, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ne2k_pci_block_output(ptr noundef %dev, i32 noundef %count, ptr noundef %buf, i32 noundef %start_page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %reg0 = getelementptr i8, ptr %dev, i32 2358
  %0 = ptrtoint ptr %reg0 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %reg0, align 2
  %2 = and i8 %1, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  %add = add i32 %count, 3
  %and1 = and i32 %add, 65532
  %and2 = and i32 %count, 1
  %spec.select = add i32 %and2, %count
  %count.addr.0 = select i1 %tobool.not, i32 %spec.select, i32 %and1
  %dmaing = getelementptr i8, ptr %dev, i32 2344
  %3 = ptrtoint ptr %dmaing to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %dmaing, align 4
  %4 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool7.not = icmp eq i8 %4, 0
  br i1 %tobool7.not, label %if.end20, label %if.then8

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %bf.lshr12 = lshr i8 %bf.load, 2
  %bf.clear13 = and i8 %bf.lshr12, 1
  %bf.cast14 = zext i8 %bf.clear13 to i32
  %bf.lshr17 = lshr i8 %bf.load, 3
  %bf.clear18 = and i8 %bf.lshr17, 1
  %bf.cast19 = zext i8 %bf.clear18 to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.ne2k_pci_block_output, i32 noundef %bf.cast14, i32 noundef %bf.cast19) #11
  br label %cleanup

if.end20:                                         ; preds = %entry
  %5 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %base_addr, align 32
  %bf.set = or i8 %bf.load, 4
  %7 = ptrtoint ptr %dmaing to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %bf.set, ptr %dmaing, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !168
  tail call void @arm_heavy_mb() #8
  %and30 = and i32 %6, 1048575
  %add31 = or i32 %and30, -18874368
  %8 = inttoptr i32 %add31 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 34) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  %add36 = add i32 %6, 7
  %and37 = and i32 %add36, 1048575
  %add38 = or i32 %and37, -18874368
  %9 = inttoptr i32 %add38 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 64) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !170
  tail call void @arm_heavy_mb() #8
  %conv44 = trunc i32 %count.addr.0 to i8
  %add45 = add i32 %6, 10
  %and46 = and i32 %add45, 1048575
  %add47 = or i32 %and46, -18874368
  %10 = inttoptr i32 %add47 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 %conv44) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !171
  tail call void @arm_heavy_mb() #8
  %11 = lshr i32 %count.addr.0, 8
  %conv52 = trunc i32 %11 to i8
  %add53 = add i32 %6, 11
  %and54 = and i32 %add53, 1048575
  %add55 = or i32 %and54, -18874368
  %12 = inttoptr i32 %add55 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 %conv52) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  tail call void @arm_heavy_mb() #8
  %add60 = add i32 %6, 8
  %and61 = and i32 %add60, 1048575
  %add62 = or i32 %and61, -18874368
  %13 = inttoptr i32 %add62 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 0) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !173
  tail call void @arm_heavy_mb() #8
  %conv67 = trunc i32 %start_page to i8
  %add68 = add i32 %6, 9
  %and69 = and i32 %add68, 1048575
  %add70 = or i32 %and69, -18874368
  %14 = inttoptr i32 %add70 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %conv67) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !174
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 18) #8, !srcloc !133
  %15 = ptrtoint ptr %reg0 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %reg0, align 2
  %17 = and i8 %16, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool83.not = icmp eq i8 %17, 0
  %18 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %base_addr, align 32
  %add93 = add i32 %19, 16
  %and94 = and i32 %add93, 1048575
  %add95 = or i32 %and94, -18874368
  %20 = inttoptr i32 %add95 to ptr
  br i1 %tobool83.not, label %if.else91, label %if.then84

if.then84:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %shr90 = ashr i32 %count.addr.0, 1
  tail call void @__raw_writesw(ptr noundef nonnull %20, ptr noundef %buf, i32 noundef %shr90) #8
  br label %if.end115

if.else91:                                        ; preds = %if.end20
  %shr97 = ashr i32 %count.addr.0, 2
  tail call void @__raw_writesl(ptr noundef nonnull %20, ptr noundef %buf, i32 noundef %shr97) #8
  %and102 = and i32 %count.addr.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %tobool103.not = icmp eq i32 %and102, 0
  br i1 %tobool103.not, label %if.else91.if.end115_crit_edge, label %if.then104

if.else91.if.end115_crit_edge:                    ; preds = %if.else91
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end115

if.then104:                                       ; preds = %if.else91
  call void @__sanitizer_cov_trace_pc() #10
  %and101 = and i32 %count.addr.0, -4
  %add.ptr = getelementptr i8, ptr %buf, i32 %and101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !175
  tail call void @arm_heavy_mb() #8
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %add.ptr, align 2
  %23 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %base_addr, align 32
  %add109 = add i32 %24, 16
  %and110 = and i32 %add109, 1048575
  %add111 = or i32 %and110, -18874368
  %25 = inttoptr i32 %add111 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %25, i16 %22) #8, !srcloc !176
  br label %if.end115

if.end115:                                        ; preds = %if.then104, %if.else91.if.end115_crit_edge, %if.then84
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %26 = load volatile i32, ptr @jiffies, align 128
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %if.end115
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %9) #8, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !177
  %28 = and i8 %27, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp = icmp eq i8 %28, 0
  br i1 %cmp, label %while.body, label %while.cond.do.body128_crit_edge

while.cond.do.body128_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body128

while.body:                                       ; preds = %while.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %29 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %29, %26
  %cmp124 = icmp ugt i32 %sub, 2
  br i1 %cmp124, label %if.then126, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

if.then126:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.34) #11
  tail call void @ne2k_pci_reset_8390(ptr noundef %dev)
  tail call void @NS8390_init(ptr noundef %dev, i32 noundef 1) #8
  br label %do.body128

do.body128:                                       ; preds = %if.then126, %while.cond.do.body128_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 64) #8, !srcloc !133
  %30 = ptrtoint ptr %dmaing to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load137 = load i8, ptr %dmaing, align 4
  %bf.clear145 = and i8 %bf.load137, -5
  store i8 %bf.clear145, ptr %dmaing, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body128, %if.then8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ne2k_pci_get_8390_hdr(ptr noundef %dev, ptr noundef %hdr, i32 noundef %ring_page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %dmaing = getelementptr i8, ptr %dev, i32 2344
  %2 = ptrtoint ptr %dmaing to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %dmaing, align 4
  %3 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %bf.lshr4 = lshr i8 %bf.load, 2
  %bf.clear5 = and i8 %bf.lshr4, 1
  %bf.cast6 = zext i8 %bf.clear5 to i32
  %bf.lshr9 = lshr i8 %bf.load, 3
  %bf.clear10 = and i8 %bf.lshr9, 1
  %bf.cast11 = zext i8 %bf.clear10 to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.35, ptr noundef nonnull @__func__.ne2k_pci_get_8390_hdr, i32 noundef %bf.cast6, i32 noundef %bf.cast11) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %bf.set = or i8 %bf.load, 4
  %4 = ptrtoint ptr %dmaing to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %bf.set, ptr %dmaing, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  tail call void @arm_heavy_mb() #8
  %and = and i32 %1, 1048575
  %add20 = or i32 %and, -18874368
  %5 = inttoptr i32 %add20 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 34) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  tail call void @arm_heavy_mb() #8
  %add25 = add i32 %1, 10
  %and26 = and i32 %add25, 1048575
  %add27 = or i32 %and26, -18874368
  %6 = inttoptr i32 %add27 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 4) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !181
  tail call void @arm_heavy_mb() #8
  %add32 = add i32 %1, 11
  %and33 = and i32 %add32, 1048575
  %add34 = or i32 %and33, -18874368
  %7 = inttoptr i32 %add34 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 0) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !182
  tail call void @arm_heavy_mb() #8
  %add39 = add i32 %1, 8
  %and40 = and i32 %add39, 1048575
  %add41 = or i32 %and40, -18874368
  %8 = inttoptr i32 %add41 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 0) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !183
  tail call void @arm_heavy_mb() #8
  %conv = trunc i32 %ring_page to i8
  %add46 = add i32 %1, 9
  %and47 = and i32 %add46, 1048575
  %add48 = or i32 %and47, -18874368
  %9 = inttoptr i32 %add48 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 %conv) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !184
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 10) #8, !srcloc !133
  %reg0 = getelementptr i8, ptr %dev, i32 2358
  %10 = ptrtoint ptr %reg0 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %reg0, align 2
  %12 = and i8 %11, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool60.not = icmp eq i8 %12, 0
  %13 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %base_addr, align 32
  %add68 = add i32 %14, 16
  %and69 = and i32 %add68, 1048575
  %add70 = or i32 %and69, -18874368
  %15 = inttoptr i32 %add70 to ptr
  br i1 %tobool60.not, label %if.else, label %if.then61

if.then61:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__raw_readsw(ptr noundef nonnull %15, ptr noundef %hdr, i32 noundef 2) #8
  br label %do.body74

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %15) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  %17 = ptrtoint ptr %hdr to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %hdr, align 4
  %count = getelementptr inbounds %struct.e8390_pkt_hdr, ptr %hdr, i32 0, i32 2
  %18 = trunc i32 %16 to i16
  %19 = tail call i16 @llvm.bswap.i16(i16 %18) #8
  %20 = ptrtoint ptr %count to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %count, align 2
  br label %do.body74

do.body74:                                        ; preds = %if.else, %if.then61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !186
  tail call void @arm_heavy_mb() #8
  %add77 = add i32 %1, 7
  %and78 = and i32 %add77, 1048575
  %add79 = or i32 %and78, -18874368
  %21 = inttoptr i32 %add79 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 64) #8, !srcloc !133
  %22 = ptrtoint ptr %dmaing to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load83 = load i8, ptr %dmaing, align 4
  %bf.clear91 = and i8 %bf.load83, -5
  store i8 %bf.clear91, ptr %dmaing, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body74, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @NS8390_init(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_ei_netdev(i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ne2k_pci_open(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %1, ptr noundef nonnull @ei_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %dev, ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %reg0 = getelementptr i8, ptr %dev, i32 2358
  %2 = ptrtoint ptr %reg0 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %reg0, align 2
  %4 = and i8 %3, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then3:                                         ; preds = %if.end
  %5 = ptrtoint ptr %reg0 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %reg0, align 2
  %7 = and i8 %6, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %base_addr.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %8 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base_addr.i.i, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !187
  tail call void @arm_heavy_mb() #8
  %and.i.i = and i32 %9, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %10 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 -32) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @arm_heavy_mb() #8
  %add5.i.i = add i32 %9, 1
  %and6.i.i = and i32 %add5.i.i, 1048575
  %add7.i.i = or i32 %and6.i.i, -18874368
  %11 = inttoptr i32 %add7.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 -64) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !189
  tail call void @arm_heavy_mb() #8
  %add12.i.i = add i32 %9, 6
  %and13.i.i = and i32 %add12.i.i, 1048575
  %add14.i.i = or i32 %and13.i.i, -18874368
  %12 = inttoptr i32 %add14.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 64) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !190
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 0) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !191
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 32) #8, !srcloc !133
  br label %if.end5

if.else.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %6)
  %tobool6.not.i = icmp sgt i8 %6, -1
  br i1 %tobool6.not.i, label %if.else.i.if.end5_crit_edge, label %if.then7.i

if.else.i.if.end5_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then7.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %base_addr.i2.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %13 = ptrtoint ptr %base_addr.i2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %base_addr.i2.i, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !192
  tail call void @arm_heavy_mb() #8
  %add.i.i = add i32 %14, 32
  %and.i3.i = and i32 %add.i.i, 1048575
  %add1.i4.i = or i32 %and.i3.i, -18874368
  %15 = inttoptr i32 %add1.i4.i to ptr
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %15) #8, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !193
  %17 = or i8 %16, -128
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 %17) #8, !srcloc !133
  br label %if.end5

if.end5:                                          ; preds = %if.then7.i, %if.else.i.if.end5_crit_edge, %if.then.i, %if.end.if.end5_crit_edge
  %call6 = tail call i32 @ei_open(ptr noundef %dev) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ne2k_pci_close(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ei_close(ptr noundef %dev) #8
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %1, ptr noundef %dev) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ei_start_xmit(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ei_set_multicast_list(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ei_tx_timeout(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ei_get_stats(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ei_poll(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ei_interrupt(i32 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ei_open(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ei_close(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ne2k_pci_get_drvinfo(ptr nocapture noundef readonly %dev, ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr i8, ptr %dev, i32 2412
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %priv, align 4
  %2 = inttoptr i32 %1 to ptr
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call1 = tail call i32 @strscpy(ptr noundef %driver, ptr noundef nonnull @.str.3, i32 noundef 32) #8
  %version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 2
  %call3 = tail call i32 @strscpy(ptr noundef %version, ptr noundef nonnull @.str.2, i32 noundef 32) #8
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44, i32 3
  %3 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.pci_name.exit_crit_edge

entry.pci_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %6, %if.end.i.i ], [ %4, %entry.pci_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %call6 = tail call i32 @strscpy(ptr noundef %bus_info, ptr noundef %retval.0.i.i, i32 noundef 32) #8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ne2k_pci_get_msglevel(ptr nocapture noundef readonly %dev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %dev, i32 2416
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @ne2k_pci_set_msglevel(ptr nocapture noundef writeonly %dev, i32 noundef %v) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %dev, i32 2416
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %v, ptr %msg_enable, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ne2k_pci_suspend(ptr nocapture noundef readonly %dev_d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev_d, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @netif_device_detach(ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ne2k_pci_resume(ptr nocapture noundef readonly %dev_d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev_d, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @NS8390_init(ptr noundef %1, i32 noundef 1) #8
  tail call void @netif_device_attach(ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !15, !16, !18, !19, !21, !22, !24, !26, !28, !30, !32, !34, !35, !36, !37, !39, !40, !41, !43, !45, !47, !49, !51, !53, !54, !55, !56, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !102, !103, !105, !107, !109, !111, !113, !115, !117, !119}
!llvm.module.flags = !{!121, !122, !123, !124, !125, !126, !127, !128}
!llvm.ident = !{!129}

!0 = !{ptr @__UNIQUE_ID_author341, !1, !"__UNIQUE_ID_author341", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/8390/ne2k-pci.c", i32 75, i32 1}
!2 = !{ptr @__UNIQUE_ID_description342, !3, !"__UNIQUE_ID_description342", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/8390/ne2k-pci.c", i32 76, i32 1}
!4 = !{ptr @__UNIQUE_ID_version343, !5, !"__UNIQUE_ID_version343", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/8390/ne2k-pci.c", i32 77, i32 1}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @__modver_attr, !5, !"__modver_attr", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_file344, !11, !"__UNIQUE_ID_file344", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/8390/ne2k-pci.c", i32 78, i32 1}
!12 = !{ptr @__UNIQUE_ID_license345, !11, !"__UNIQUE_ID_license345", i1 false, i1 false}
!13 = !{ptr @__param_msg_enable, !14, !"__param_msg_enable", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/8390/ne2k-pci.c", i32 80, i32 1}
!15 = !{ptr @__UNIQUE_ID_msg_enabletype346, !14, !"__UNIQUE_ID_msg_enabletype346", i1 false, i1 false}
!16 = !{ptr @__param_options, !17, !"__param_options", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/8390/ne2k-pci.c", i32 81, i32 1}
!18 = !{ptr @__UNIQUE_ID_optionstype347, !17, !"__UNIQUE_ID_optionstype347", i1 false, i1 false}
!19 = !{ptr @__param_full_duplex, !20, !"__param_full_duplex", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/8390/ne2k-pci.c", i32 82, i32 1}
!21 = !{ptr @__UNIQUE_ID_full_duplextype348, !20, !"__UNIQUE_ID_full_duplextype348", i1 false, i1 false}
!22 = !{ptr @__UNIQUE_ID_msg_enable349, !23, !"__UNIQUE_ID_msg_enable349", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/8390/ne2k-pci.c", i32 83, i32 1}
!24 = !{ptr @__UNIQUE_ID_options350, !25, !"__UNIQUE_ID_options350", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/8390/ne2k-pci.c", i32 84, i32 1}
!26 = !{ptr @__UNIQUE_ID_full_duplex351, !27, !"__UNIQUE_ID_full_duplex351", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/8390/ne2k-pci.c", i32 85, i32 1}
!28 = !{ptr @__initcall__kmod_ne2k_pci__353_746_ne2k_pci_init6, !29, !"__initcall__kmod_ne2k_pci__353_746_ne2k_pci_init6", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/8390/ne2k-pci.c", i32 746, i32 1}
!30 = !{ptr @__exitcall_ne2k_pci_cleanup, !31, !"__exitcall_ne2k_pci_cleanup", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/8390/ne2k-pci.c", i32 747, i32 1}
!32 = !{ptr @ne2k_msg_enable, !33, !"ne2k_msg_enable", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/8390/ne2k-pci.c", i32 65, i32 12}
!34 = !{ptr @__param_str_msg_enable, !14, !"__param_str_msg_enable", i1 false, i1 false}
!35 = !{ptr @__param_str_options, !17, !"__param_str_options", i1 false, i1 false}
!36 = !{ptr @__param_arr_options, !17, !"__param_arr_options", i1 false, i1 false}
!37 = !{ptr @options, !38, !"options", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/8390/ne2k-pci.c", i32 43, i32 12}
!39 = !{ptr @__param_str_full_duplex, !20, !"__param_str_full_duplex", i1 false, i1 false}
!40 = !{ptr @__param_arr_full_duplex, !20, !"__param_arr_full_duplex", i1 false, i1 false}
!41 = !{ptr @full_duplex, !42, !"full_duplex", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/8390/ne2k-pci.c", i32 42, i32 12}
!43 = !{ptr @.str.3, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/8390/ne2k-pci.c", i32 727, i32 11}
!45 = !{ptr @ne2k_driver, !46, !"ne2k_driver", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/8390/ne2k-pci.c", i32 726, i32 26}
!47 = !{ptr @ne2k_pci_tbl, !48, !"ne2k_pci_tbl", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/8390/ne2k-pci.c", i32 144, i32 35}
!49 = !{ptr @ne2k_pci_init_one.fnd_cnt, !50, !"fnd_cnt", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/8390/ne2k-pci.c", i32 233, i32 22}
!51 = !{ptr @.str.4, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/8390/ne2k-pci.c", i32 248, i32 3}
!53 = !{ptr @.str.5, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.6, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.7, !52, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.8, !52, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @ne2k_pci_init_one._entry, !52, !"_entry", i1 false, i1 false}
!58 = !{ptr @ne2k_pci_init_one._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.10, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/8390/ne2k-pci.c", i32 253, i32 3}
!61 = !{ptr @ne2k_pci_init_one._entry.9, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @ne2k_pci_init_one._entry_ptr.11, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.13, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/8390/ne2k-pci.c", i32 283, i32 3}
!65 = !{ptr @ne2k_pci_init_one._entry.12, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @ne2k_pci_init_one._entry_ptr.14, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.16, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/8390/ne2k-pci.c", i32 304, i32 5}
!69 = !{ptr @ne2k_pci_init_one._entry.15, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @ne2k_pci_init_one._entry_ptr.17, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.18, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/8390/ne2k-pci.c", i32 399, i32 19}
!73 = !{ptr @.str.19, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/8390/ne2k-pci.c", i32 129, i32 3}
!75 = !{ptr @.str.20, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/8390/ne2k-pci.c", i32 130, i32 3}
!77 = !{ptr @.str.21, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/8390/ne2k-pci.c", i32 131, i32 3}
!79 = !{ptr @.str.22, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/8390/ne2k-pci.c", i32 132, i32 3}
!81 = !{ptr @.str.23, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/8390/ne2k-pci.c", i32 133, i32 3}
!83 = !{ptr @.str.24, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/8390/ne2k-pci.c", i32 134, i32 3}
!85 = !{ptr @.str.25, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/8390/ne2k-pci.c", i32 135, i32 3}
!87 = !{ptr @.str.26, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/8390/ne2k-pci.c", i32 136, i32 3}
!89 = !{ptr @.str.27, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/8390/ne2k-pci.c", i32 137, i32 3}
!91 = !{ptr @.str.28, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/8390/ne2k-pci.c", i32 138, i32 3}
!93 = !{ptr @.str.29, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/8390/ne2k-pci.c", i32 139, i32 3}
!95 = !{ptr @pci_clone_list, !96, !"pci_clone_list", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/8390/ne2k-pci.c", i32 128, i32 3}
!97 = !{ptr @ne2k_netdev_ops, !98, !"ne2k_netdev_ops", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/8390/ne2k-pci.c", i32 211, i32 36}
!99 = !{ptr @.str.30, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/8390/ne2k-pci.c", i32 476, i32 2}
!101 = !{ptr @.str.31, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @ne2k_pci_reset_8390.__UNIQUE_ID_ddebug352, !100, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!103 = !{ptr @.str.32, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/8390/ne2k-pci.c", i32 487, i32 20}
!105 = !{ptr @.str.33, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/8390/ne2k-pci.c", i32 549, i32 19}
!107 = !{ptr @__func__.ne2k_pci_block_input, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/8390/ne2k-pci.c", i32 550, i32 7}
!109 = !{ptr @__func__.ne2k_pci_block_output, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/8390/ne2k-pci.c", i32 606, i32 7}
!111 = !{ptr @.str.34, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/8390/ne2k-pci.c", i32 653, i32 21}
!113 = !{ptr @.str.35, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/8390/ne2k-pci.c", i32 508, i32 19}
!115 = !{ptr @__func__.ne2k_pci_get_8390_hdr, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/8390/ne2k-pci.c", i32 509, i32 7}
!117 = !{ptr @ne2k_pci_ethtool_ops, !118, !"ne2k_pci_ethtool_ops", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/8390/ne2k-pci.c", i32 688, i32 33}
!119 = !{ptr @ne2k_pci_pm_ops, !120, !"ne2k_pci_pm_ops", i1 false, i1 false}
!120 = !{!"../drivers/net/ethernet/8390/ne2k-pci.c", i32 724, i32 8}
!121 = !{i32 1, !"wchar_size", i32 2}
!122 = !{i32 1, !"min_enum_size", i32 4}
!123 = !{i32 8, !"branch-target-enforcement", i32 0}
!124 = !{i32 8, !"sign-return-address", i32 0}
!125 = !{i32 8, !"sign-return-address-all", i32 0}
!126 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!127 = !{i32 7, !"uwtable", i32 1}
!128 = !{i32 7, !"frame-pointer", i32 2}
!129 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!130 = !{i64 4999324}
!131 = !{i64 2156504815}
!132 = !{i64 2156505087}
!133 = !{i64 4998929}
!134 = !{i64 2156505500}
!135 = !{i64 2156505715}
!136 = !{i64 2156506097}
!137 = !{i64 2156506542}
!138 = !{i64 2156506861}
!139 = !{i64 2156507069}
!140 = !{i64 2156507399}
!141 = !{i64 2156509962}
!142 = !{i64 2156509779}
!143 = !{i64 2156510403}
!144 = !{i64 2156512309}
!145 = !{i64 2156513407}
!146 = !{i64 4999544}
!147 = !{i64 2156514892}
!148 = !{i64 2156515196}
!149 = !{i64 2156515439}
!150 = !{!"branch_weights", i32 1, i32 2000}
!151 = !{i64 2156538736, i64 2156539237, i64 2156538773, i64 2156538829, i64 2156538863, i64 2156538887, i64 2156538928, i64 2156538949, i64 2156538977, i64 2156539011}
!152 = !{i64 2148972569, i64 2148972574, i64 2148972587, i64 2148972631, i64 2148972665, i64 2148972686}
!153 = !{i64 2156522499}
!154 = !{i64 2156522289}
!155 = !{i64 2156523067}
!156 = !{i64 2156523347}
!157 = !{i64 2156528521}
!158 = !{i64 2156528898}
!159 = !{i64 2156529277}
!160 = !{i64 2156529664}
!161 = !{i64 2156530049}
!162 = !{i64 2156530416}
!163 = !{i64 2156531120}
!164 = !{i64 4998706}
!165 = !{i64 2156532721}
!166 = !{i64 2156533062}
!167 = !{i64 2156533312}
!168 = !{i64 2156533953}
!169 = !{i64 2156534327}
!170 = !{i64 2156534708}
!171 = !{i64 2156535087}
!172 = !{i64 2156535460}
!173 = !{i64 2156535839}
!174 = !{i64 2156536206}
!175 = !{i64 2156537261}
!176 = !{i64 4998506}
!177 = !{i64 2156537941}
!178 = !{i64 2156538196}
!179 = !{i64 2156523894}
!180 = !{i64 2156524287}
!181 = !{i64 2156524657}
!182 = !{i64 2156525027}
!183 = !{i64 2156525405}
!184 = !{i64 2156525772}
!185 = !{i64 2156527593}
!186 = !{i64 2156527897}
!187 = !{i64 2156516540}
!188 = !{i64 2156516877}
!189 = !{i64 2156517214}
!190 = !{i64 2156517551}
!191 = !{i64 2156517910}
!192 = !{i64 2156518910}
!193 = !{i64 2156518725}
