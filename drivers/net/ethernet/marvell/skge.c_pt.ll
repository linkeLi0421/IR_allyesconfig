; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/marvell/skge.c_pt.bc'
source_filename = "../drivers/net/ethernet/marvell/skge.c"
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
%struct.notifier_block = type { ptr, ptr, i32 }
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
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.124 = type { i8, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.skge_stat = type { [32 x i8], i16, i16 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.120, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.skge_hw = type { ptr, ptr, %struct.spinlock, i32, [2 x ptr], i8, i8, i8, i8, i8, i32, i32, i16, %struct.spinlock, %struct.tasklet_struct, [0 x i8] }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.122, i32 }
%union.anon.122 = type { ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.121, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.121 = type { ptr }
%struct.skge_element = type { ptr, ptr, ptr, i32, i32 }
%struct.skge_tx_desc = type { i32, i32, i32, i32, i32, i32, i16, i16, i32 }
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
%struct.skge_port = type { ptr, ptr, %struct.napi_struct, i32, i32, %struct.skge_ring, %struct.skge_ring, i32, %struct.timer_list, i32, i32, i8, i8, i8, i8, i16, i32, ptr, i32, i32, ptr, [24 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.skge_ring = type { ptr, ptr, ptr, i32 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.96, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.96 = type { %struct.atomic_t }
%struct.skge_rx_desc = type { i32, i32, i32, i32, i32, i32, i16, i16, i16, i16 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.99, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.100, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.101, ptr, %struct.address_space, %struct.list_head, %union.anon.102, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.99 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.100 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.101 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.102 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.anon.53 = type { i16, i16 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.ifreq = type { %union.anon.104, %union.anon.105 }
%union.anon.104 = type { [16 x i8] }
%union.anon.105 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.mii_ioctl_data = type { i16, i16, i16, i16 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_regs = type { i32, i32, i32, [0 x i8] }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.ethtool_eeprom = type { i32, i32, i32, i32, [0 x i8] }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.119, i32 }
%struct.anon.119 = type { [3 x i32], [3 x i32], [3 x i32] }

@__UNIQUE_ID_description343 = internal constant [52 x i8] c"skge.description=SysKonnect Gigabit Ethernet driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author344 = internal constant [64 x i8] c"skge.author=Stephen Hemminger <shemminger@linux-foundation.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file345 = internal constant [44 x i8] c"skge.file=drivers/net/ethernet/marvell/skge\00", section ".modinfo", align 1
@__UNIQUE_ID_license346 = internal constant [17 x i8] c"skge.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version347 = internal constant [18 x i8] c"skge.version=1.14\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"skge\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1.14\00", [27 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__param_str_debug = internal constant [11 x i8] c"skge.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype348 = internal constant [24 x i8] c"skge.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug349 = internal constant [48 x i8] c"skge.parm=debug:Debug level (0=none,...,16=all)\00", section ".modinfo", align 1
@skge_debug = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@skge_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @skge_device_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@skge_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @skge_id_table, ptr @skge_probe, ptr @skge_remove, ptr null, ptr null, ptr @skge_shutdown, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @skge_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_skge__357_4195_skge_init_module6 = internal global ptr @skge_init_module, section ".initcall6.init", align 4
@__exitcall_skge_cleanup_module = internal global ptr @skge_cleanup_module, section ".exitcall.exit", align 4
@skge_debug_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @skge_debug_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"enabling interface\0A\00", [44 x i8] zeroinitializer }, align 32
@skge_up._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 2566, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"dma_alloc_coherent region crosses 4G boundary\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"skge_up\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/net/ethernet/marvell/skge.c\00", [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@skge_up._entry_ptr = internal global ptr @skge_up._entry, section ".printk_index", align 4
@.str.9 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Unable to allocate interrupt %d error: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@rxqaddr = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 0, i32 128], [24 x i8] zeroinitializer }, align 32
@txqaddr = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 640, i32 896], [24 x i8] zeroinitializer }, align 32
@portmask = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 673251456, i32 336076802], [24 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mac interrupt status 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Link is down\0A\00", [18 x i8] zeroinitializer }, align 32
@skge_error_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.6, i32 3292, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Ram read data parity error\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"skge_error_irq\00", [17 x i8] zeroinitializer }, align 32
@skge_error_irq._entry_ptr = internal global ptr @skge_error_irq._entry, section ".printk_index", align 4
@skge_error_irq._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.6, i32 3297, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Ram write data parity error\0A\00", [35 x i8] zeroinitializer }, align 32
@skge_error_irq._entry_ptr.19 = internal global ptr @skge_error_irq._entry.17, section ".printk_index", align 4
@skge_error_irq._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.16, ptr @.str.6, i32 3309, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: receive queue parity error\0A\00", [32 x i8] zeroinitializer }, align 32
@skge_error_irq._entry_ptr.22 = internal global ptr @skge_error_irq._entry.20, section ".printk_index", align 4
@skge_error_irq._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.16, ptr @.str.6, i32 3315, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@skge_error_irq._entry_ptr.24 = internal global ptr @skge_error_irq._entry.23, section ".printk_index", align 4
@skge_error_irq._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.16, ptr @.str.6, i32 3326, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"PCI error cmd=%#x status=%#x\0A\00", [34 x i8] zeroinitializer }, align 32
@skge_error_irq._entry_ptr.27 = internal global ptr @skge_error_irq._entry.25, section ".printk_index", align 4
@skge_error_irq._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.16, ptr @.str.6, i32 3339, ptr @.str.30, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"unable to clear error (so ignoring them)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@skge_error_irq._entry_ptr.31 = internal global ptr @skge_error_irq._entry.28, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"genesis reset failed\0A\00", [42 x i8] zeroinitializer }, align 32
@fiber_pause_map = internal constant { [5 x i16], [22 x i8] } { [5 x i16] [i16 0, i16 0, i16 256, i16 128, i16 384], [22 x i8] zeroinitializer }, align 32
@phy_pause_map = internal constant { [5 x i16], [22 x i8] } { [5 x i16] [i16 0, i16 0, i16 2048, i16 1024, i16 3072], [22 x i8] zeroinitializer }, align 32
@xm_phy_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.6, i32 1120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014skge: %s: phy read timed out\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"xm_phy_read\00", [20 x i8] zeroinitializer }, align 32
@xm_phy_read._entry_ptr = internal global ptr @xm_phy_read._entry, section ".printk_index", align 4
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"remote fault\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"duplex mismatch\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Link is up at %d Mbps, %s duplex, flow control %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"full\00", [27 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"half\00", [27 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rx only\00", [24 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tx_only\00", [24 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"both\00", [27 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"indeterminated\00", [17 x i8] zeroinitializer }, align 32
@gm_phy_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.6, i32 1944, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\014skge: %s: phy read timeout\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gm_phy_read\00", [20 x i8] zeroinitializer }, align 32
@gm_phy_read._entry_ptr = internal global ptr @gm_phy_read._entry, section ".printk_index", align 4
@gm_phy_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.6, i32 1916, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014skge: %s: phy write timeout\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gm_phy_write\00", [19 x i8] zeroinitializer }, align 32
@gm_phy_write._entry_ptr = internal global ptr @gm_phy_write._entry, section ".printk_index", align 4
@pause_mc_addr = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\01\80\C2\00\00\01", [26 x i8] zeroinitializer }, align 32
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@.str.49 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"IRQ src=%x mask=%x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Tx Ring: (%d)\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%#x dma=%#x%08x %#x csum=%#x/%x/%x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\0ARx Ring:\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%#x dma=%#x%08x %#x %#x csum=%#x/%x\0A\00", [59 x i8] zeroinitializer }, align 32
@skge_id_table = internal constant { [13 x %struct.pci_device_id], [96 x i8] } { [13 x %struct.pci_device_id] [%struct.pci_device_id { i32 4279, i32 5888, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4279, i32 33003, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4424, i32 17152, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4424, i32 17184, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4486, i32 19201, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4486, i32 19456, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4486, i32 17154, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4523, i32 17184, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4523, i32 20485, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4977, i32 17230, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5943, i32 4196, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5943, i32 4146, i32 -1, i32 21, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [96 x i8] zeroinitializer }, align 32
@skge_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @skge_suspend, ptr @skge_resume, ptr @skge_suspend, ptr @skge_resume, ptr @skge_suspend, ptr @skge_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@skge_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.6, i32 3893, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cannot enable PCI device\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"skge_probe\00", [21 x i8] zeroinitializer }, align 32
@skge_probe._entry_ptr = internal global ptr @skge_probe._entry, section ".printk_index", align 4
@skge_probe._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.6, i32 3899, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cannot obtain PCI resources\0A\00", [35 x i8] zeroinitializer }, align 32
@skge_probe._entry_ptr.58 = internal global ptr @skge_probe._entry.56, section ".printk_index", align 4
@skge_probe._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.55, ptr @.str.6, i32 3914, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"no usable DMA configuration\0A\00", [35 x i8] zeroinitializer }, align 32
@skge_probe._entry_ptr.61 = internal global ptr @skge_probe._entry.59, section ".printk_index", align 4
@.str.62 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"skge@pci:%s\00", [20 x i8] zeroinitializer }, align 32
@skge_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.63 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&hw->hw_lock\00", [19 x i8] zeroinitializer }, align 32
@skge_probe.__key.64 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.65 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&hw->phy_lock\00", [18 x i8] zeroinitializer }, align 32
@skge_probe._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.55, ptr @.str.6, i32 3945, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cannot map device registers\0A\00", [35 x i8] zeroinitializer }, align 32
@skge_probe._entry_ptr.68 = internal global ptr @skge_probe._entry.66, section ".printk_index", align 4
@skge_probe._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.55, ptr @.str.6, i32 3956, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016skge: %s addr 0x%llx irq %d chip %s rev %d\0A\00", [50 x i8] zeroinitializer }, align 32
@skge_probe._entry_ptr.71 = internal global ptr @skge_probe._entry.69, section ".printk_index", align 4
@skge_probe._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.55, ptr @.str.6, i32 3966, ptr @.str.30, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"bad (zero?) ethernet address in rom\0A\00", [59 x i8] zeroinitializer }, align 32
@skge_probe._entry_ptr.74 = internal global ptr @skge_probe._entry.72, section ".printk_index", align 4
@skge_probe._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.55, ptr @.str.6, i32 3970, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cannot register net device\0A\00", [36 x i8] zeroinitializer }, align 32
@skge_probe._entry_ptr.77 = internal global ptr @skge_probe._entry.75, section ".printk_index", align 4
@skge_probe._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.55, ptr @.str.6, i32 3985, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"cannot register second net device\0A\00", [61 x i8] zeroinitializer }, align 32
@skge_probe._entry_ptr.80 = internal global ptr @skge_probe._entry.78, section ".printk_index", align 4
@skge_probe._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.55, ptr @.str.6, i32 3993, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cannot assign irq %d\0A\00", [42 x i8] zeroinitializer }, align 32
@skge_probe._entry_ptr.83 = internal global ptr @skge_probe._entry.81, section ".printk_index", align 4
@.str.84 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"phy interrupt status 0x%x 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"remote fault\00", [19 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"master/slave fault\00", [45 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"speed/duplex\00", [19 x i8] zeroinitializer }, align 32
@yukon_phy_intr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.6, i32 2417, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013skge: %s: autonegotiation failed (%s)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"yukon_phy_intr\00", [17 x i8] zeroinitializer }, align 32
@yukon_phy_intr._entry_ptr = internal global ptr @yukon_phy_intr._entry, section ".printk_index", align 4
@.str.90 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"phy interrupt status 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@bcom_phy_intr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.6, i32 1884, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013skge: %s: uncorrectable pair swap error\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bcom_phy_intr\00", [18 x i8] zeroinitializer }, align 32
@bcom_phy_intr._entry_ptr = internal global ptr @bcom_phy_intr._entry, section ".printk_index", align 4
@skge_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.6, i32 3566, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unsupported phy type 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"skge_reset\00", [21 x i8] zeroinitializer }, align 32
@skge_reset._entry_ptr = internal global ptr @skge_reset._entry, section ".printk_index", align 4
@skge_reset._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.94, ptr @.str.6, i32 3586, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unsupported chip type 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@skge_reset._entry_ptr.97 = internal global ptr @skge_reset._entry.95, section ".printk_index", align 4
@skge_reset._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.94, ptr @.str.6, i32 3624, ptr @.str.30, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"stuck hardware sensor bit\0A\00", [37 x i8] zeroinitializer }, align 32
@skge_reset._entry_ptr.100 = internal global ptr @skge_reset._entry.98, section ".printk_index", align 4
@skge_board_name.buf = internal global { [16 x i8], [16 x i8] } zeroinitializer, align 32
@skge_chips = internal constant { [4 x %struct.anon.124], [32 x i8] } { [4 x %struct.anon.124] [%struct.anon.124 { i8 10, ptr @.str.102 }, %struct.anon.124 { i8 -80, ptr @.str.103 }, %struct.anon.124 { i8 -79, ptr @.str.104 }, %struct.anon.124 { i8 -78, ptr @.str.105 }], [32 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"chipid 0x%x\00", [20 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Genesis\00", [24 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Yukon\00", [26 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Yukon-Lite\00", [21 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Yukon-LP\00", [23 x i8] zeroinitializer }, align 32
@skge_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @skge_up, ptr @skge_down, ptr @skge_xmit_frame, ptr null, ptr null, ptr null, ptr @skge_set_multicast, ptr @skge_set_mac_address, ptr @eth_validate_addr, ptr null, ptr @skge_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @skge_change_mtu, ptr null, ptr @skge_tx_timeout, ptr null, ptr null, ptr null, ptr @skge_get_stats, ptr null, ptr null, ptr @skge_netpoll, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@skge_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 17, i32 0, ptr @skge_get_drvinfo, ptr @skge_get_regs_len, ptr @skge_get_regs, ptr @skge_get_wol, ptr @skge_set_wol, ptr @skge_get_msglevel, ptr @skge_set_msglevel, ptr @skge_nway_reset, ptr @ethtool_op_get_link, ptr null, ptr @skge_get_eeprom_len, ptr @skge_get_eeprom, ptr @skge_set_eeprom, ptr @skge_get_coalesce, ptr @skge_set_coalesce, ptr @skge_get_ring_param, ptr @skge_set_ring_param, ptr null, ptr @skge_get_pauseparam, ptr @skge_set_pauseparam, ptr null, ptr @skge_get_strings, ptr @skge_set_phys_id, ptr @skge_get_ethtool_stats, ptr null, ptr null, ptr null, ptr null, ptr @skge_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @skge_get_link_ksettings, ptr @skge_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@skge_devinit.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.106 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"(&skge->link_timer)\00", [44 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"disabling interface\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"tx queued, slot %td, len %d\0A\00", [35 x i8] zeroinitializer }, align 32
@skge_xmit_frame.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.109, ptr @.str.6, ptr @.str.110, i8 2, i8 -59, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.109 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"skge_xmit_frame\00", [16 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"transmit queue full\0A\00", [43 x i8] zeroinitializer }, align 32
@skge_xmit_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.109, ptr @.str.6, i32 2854, ptr @.str.30, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: tx mapping error\0A\00", [42 x i8] zeroinitializer }, align 32
@skge_xmit_frame._entry_ptr = internal global ptr @skge_xmit_frame._entry, section ".printk_index", align 4
@.str.112 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tx timeout\0A\00", [20 x i8] zeroinitializer }, align 32
@skge_stats = internal constant { [21 x %struct.skge_stat], [172 x i8] } { [21 x %struct.skge_stat] [%struct.skge_stat { [32 x i8] c"tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 644, i16 488 }, %struct.skge_stat { [32 x i8] c"rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 772, i16 312 }, %struct.skge_stat { [32 x i8] c"tx_broadcast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 652, i16 456 }, %struct.skge_stat { [32 x i8] c"rx_broadcast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 780, i16 264 }, %struct.skge_stat { [32 x i8] c"tx_multicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 656, i16 472 }, %struct.skge_stat { [32 x i8] c"rx_multicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 784, i16 280 }, %struct.skge_stat { [32 x i8] c"tx_unicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 660, i16 448 }, %struct.skge_stat { [32 x i8] c"rx_unicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 788, i16 256 }, %struct.skge_stat { [32 x i8] c"tx_mac_pause\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 672, i16 464 }, %struct.skge_stat { [32 x i8] c"rx_mac_pause\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 792, i16 272 }, %struct.skge_stat { [32 x i8] c"collisions\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 680, i16 592 }, %struct.skge_stat { [32 x i8] c"multi_collisions\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 684, i16 584 }, %struct.skge_stat { [32 x i8] c"aborted\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 688, i16 576 }, %struct.skge_stat { [32 x i8] c"late_collision\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 692, i16 568 }, %struct.skge_stat { [32 x i8] c"fifo_underrun\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 704, i16 600 }, %struct.skge_stat { [32 x i8] c"fifo_overflow\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 820, i16 432 }, %struct.skge_stat { [32 x i8] c"rx_toolong\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 848, i16 408 }, %struct.skge_stat { [32 x i8] c"rx_jabber\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 824, i16 416 }, %struct.skge_stat { [32 x i8] c"rx_runt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 844, i16 344 }, %struct.skge_stat { [32 x i8] c"rx_too_long\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 848, i16 408 }, %struct.skge_stat { [32 x i8] c"rx_fcs_error\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 852, i16 288 }], [172 x i8] zeroinitializer }, align 32
@rxirqmask = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 65536, i32 8192], [24 x i8] zeroinitializer }, align 32
@txirqmask = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 128, i32 2], [24 x i8] zeroinitializer }, align 32
@napimask = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 65664, i32 8194], [24 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tx done slot %td\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"rx slot %td status 0x%x len %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"rx err, slot %td control 0x%x status 0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"addr %pM\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"could not up: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@switch.table.bcom_check_link = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 3, i32 2, i32 4], [20 x i8] zeroinitializer }, align 32
@switch.table.skge_link_up = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 10, i64 11]
@__sancov_gen_cov_switch_values.121 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.122 = internal global [4 x i64] [i64 2, i64 8, i64 10, i64 176]
@__sancov_gen_cov_switch_values.123 = internal global [4 x i64] [i64 2, i64 8, i64 10, i64 176]
@__sancov_gen_cov_switch_values.124 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.125 = internal global [4 x i64] [i64 2, i64 16, i64 24641, i64 24644]
@__sancov_gen_cov_switch_values.126 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.127 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 128]
@__sancov_gen_cov_switch_values.128 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.129 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.130 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.131 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.132 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.133 = internal global [4 x i64] [i64 2, i64 32, i64 1536, i64 1792]
@__sancov_gen_cov_switch_values.134 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.135 = internal global [4 x i64] [i64 2, i64 16, i64 100, i64 1000]
@__sancov_gen_cov_switch_values.136 = internal global [6 x i64] [i64 4, i64 8, i64 10, i64 176, i64 177, i64 178]
@__sancov_gen_cov_switch_values.137 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 8, i64 12]
@__sancov_gen_cov_switch_values.138 = internal global [6 x i64] [i64 4, i64 8, i64 10, i64 176, i64 177, i64 178]
@__sancov_gen_cov_switch_values.139 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.140 = internal global [4 x i64] [i64 2, i64 8, i64 10, i64 176]
@__sancov_gen_cov_switch_values.141 = internal global [4 x i64] [i64 2, i64 32, i64 32, i64 64]
@__sancov_gen_cov_switch_values.142 = internal global [5 x i64] [i64 3, i64 32, i64 35143, i64 35144, i64 35145]
@__sancov_gen_cov_switch_values.143 = internal global [4 x i64] [i64 2, i64 8, i64 10, i64 176]
@__sancov_gen_cov_switch_values.144 = internal global [4 x i64] [i64 2, i64 8, i64 10, i64 176]
@__sancov_gen_cov_switch_values.145 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.146 = internal global [5 x i64] [i64 3, i64 32, i64 10, i64 100, i64 1000]
@__sancov_gen_cov_switch_values.147 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.148 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.149 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 63, i32 1 }
@___asan_gen_.159 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 69, i32 12 }
@___asan_gen_.162 = private unnamed_addr constant [11 x i8] c"skge_debug\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 3692, i32 23 }
@___asan_gen_.165 = private unnamed_addr constant [14 x i8] c"skge_notifier\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 3768, i32 30 }
@___asan_gen_.168 = private unnamed_addr constant [12 x i8] c"skge_driver\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 4147, i32 26 }
@___asan_gen_.171 = private unnamed_addr constant [16 x i8] c"skge_debug_fops\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 3729, i32 1 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 2547, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 2566, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 2588, i32 20 }
@___asan_gen_.198 = private unnamed_addr constant [8 x i8] c"rxqaddr\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 108, i32 18 }
@___asan_gen_.201 = private unnamed_addr constant [8 x i8] c"txqaddr\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 107, i32 18 }
@___asan_gen_.204 = private unnamed_addr constant [9 x i8] c"portmask\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 112, i32 18 }
@___asan_gen_.211 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 326, i32 6 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 1774, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 1079, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 3292, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 3297, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 3308, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 3314, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 3325, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 3339, i32 4 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 1551, i32 19 }
@___asan_gen_.264 = private unnamed_addr constant [16 x i8] c"fiber_pause_map\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 1209, i32 18 }
@___asan_gen_.267 = private unnamed_addr constant [14 x i8] c"phy_pause_map\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 1201, i32 18 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 1120, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 1241, i32 23 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 1256, i32 23 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 1066, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 1045, i32 10 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 1047, i32 10 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 1049, i32 10 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 1051, i32 10 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 1053, i32 10 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 1944, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 1916, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant [14 x i8] c"pause_mc_addr\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 2924, i32 17 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 3704, i32 18 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 3707, i32 18 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 3710, i32 19 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 3715, i32 16 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 3722, i32 19 }
@___asan_gen_.345 = private unnamed_addr constant [14 x i8] c"skge_id_table\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 73, i32 35 }
@___asan_gen_.348 = private unnamed_addr constant [12 x i8] c"skge_pm_ops\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 4119, i32 8 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 3893, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 3899, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 3914, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 3936, i32 24 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 3939, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 3940, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 3945, i32 3 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 3953, i32 2 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 3966, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 3970, i32 3 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 3985, i32 4 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 3992, i32 4 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 2356, i32 2 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 2362, i32 13 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 2367, i32 13 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 2372, i32 13 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 2417, i32 2 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 1879, i32 2 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 1883, i32 3 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 3565, i32 4 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 3585, i32 3 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 3624, i32 4 }
@___asan_gen_.477 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 3507, i32 14 }
@___asan_gen_.480 = private unnamed_addr constant [11 x i8] c"skge_chips\00", align 1
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 3497, i32 3 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 3513, i32 29 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 3498, i32 21 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 3499, i32 20 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 3500, i32 25 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 3501, i32 23 }
@___asan_gen_.498 = private unnamed_addr constant [16 x i8] c"skge_netdev_ops\00", align 1
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 3794, i32 36 }
@___asan_gen_.501 = private unnamed_addr constant [17 x i8] c"skge_ethtool_ops\00", align 1
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 886, i32 33 }
@___asan_gen_.504 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 3862, i32 3 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 2662, i32 2 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 2828, i32 2 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 2836, i32 3 }
@___asan_gen_.522 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 2854, i32 3 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 2897, i32 2 }
@___asan_gen_.531 = private unnamed_addr constant [11 x i8] c"skge_stats\00", align 1
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 408, i32 3 }
@___asan_gen_.534 = private unnamed_addr constant [10 x i8] c"rxirqmask\00", align 1
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 109, i32 18 }
@___asan_gen_.537 = private unnamed_addr constant [10 x i8] c"txirqmask\00", align 1
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 110, i32 18 }
@___asan_gen_.540 = private unnamed_addr constant [9 x i8] c"napimask\00", align 1
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 111, i32 18 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 3170, i32 4 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 3060, i32 2 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 3126, i32 2 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 3880, i32 2 }
@___asan_gen_.555 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.556 = private constant [39 x i8] c"../drivers/net/ethernet/marvell/skge.c\00", align 1
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 4109, i32 21 }
@___asan_gen_.558 = private unnamed_addr constant [29 x i8] c"switch.table.bcom_check_link\00", align 1
@___asan_gen_.559 = private unnamed_addr constant [26 x i8] c"switch.table.skge_link_up\00", align 1
@llvm.compiler.used = appending global [176 x ptr] [ptr @__UNIQUE_ID_author344, ptr @__UNIQUE_ID_debug349, ptr @__UNIQUE_ID_debugtype348, ptr @__UNIQUE_ID_description343, ptr @__UNIQUE_ID_file345, ptr @__UNIQUE_ID_license346, ptr @__UNIQUE_ID_version347, ptr @__exitcall_skge_cleanup_module, ptr @__initcall__kmod_skge__357_4195_skge_init_module6, ptr @__modver_attr, ptr @__param_debug, ptr @bcom_phy_intr._entry, ptr @bcom_phy_intr._entry_ptr, ptr @gm_phy_read._entry, ptr @gm_phy_read._entry_ptr, ptr @gm_phy_write._entry, ptr @gm_phy_write._entry_ptr, ptr @skge_cleanup_module, ptr @skge_debug_cleanup, ptr @skge_error_irq._entry, ptr @skge_error_irq._entry.17, ptr @skge_error_irq._entry.20, ptr @skge_error_irq._entry.23, ptr @skge_error_irq._entry.25, ptr @skge_error_irq._entry.28, ptr @skge_error_irq._entry_ptr, ptr @skge_error_irq._entry_ptr.19, ptr @skge_error_irq._entry_ptr.22, ptr @skge_error_irq._entry_ptr.24, ptr @skge_error_irq._entry_ptr.27, ptr @skge_error_irq._entry_ptr.31, ptr @skge_probe._entry, ptr @skge_probe._entry.56, ptr @skge_probe._entry.59, ptr @skge_probe._entry.66, ptr @skge_probe._entry.69, ptr @skge_probe._entry.72, ptr @skge_probe._entry.75, ptr @skge_probe._entry.78, ptr @skge_probe._entry.81, ptr @skge_probe._entry_ptr, ptr @skge_probe._entry_ptr.58, ptr @skge_probe._entry_ptr.61, ptr @skge_probe._entry_ptr.68, ptr @skge_probe._entry_ptr.71, ptr @skge_probe._entry_ptr.74, ptr @skge_probe._entry_ptr.77, ptr @skge_probe._entry_ptr.80, ptr @skge_probe._entry_ptr.83, ptr @skge_reset._entry, ptr @skge_reset._entry.95, ptr @skge_reset._entry.98, ptr @skge_reset._entry_ptr, ptr @skge_reset._entry_ptr.100, ptr @skge_reset._entry_ptr.97, ptr @skge_up._entry, ptr @skge_up._entry_ptr, ptr @skge_xmit_frame._entry, ptr @skge_xmit_frame._entry_ptr, ptr @xm_phy_read._entry, ptr @xm_phy_read._entry_ptr, ptr @yukon_phy_intr._entry, ptr @yukon_phy_intr._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @debug, ptr @skge_debug, ptr @skge_notifier, ptr @skge_driver, ptr @skge_debug_fops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @rxqaddr, ptr @txqaddr, ptr @portmask, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.26, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @fiber_pause_map, ptr @phy_pause_map, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @pause_mc_addr, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @skge_id_table, ptr @skge_pm_ops, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.60, ptr @.str.62, ptr @skge_probe.__key, ptr @.str.63, ptr @skge_probe.__key.64, ptr @.str.65, ptr @.str.67, ptr @.str.70, ptr @.str.73, ptr @.str.76, ptr @.str.79, ptr @.str.82, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.96, ptr @.str.99, ptr @skge_board_name.buf, ptr @skge_chips, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @skge_netdev_ops, ptr @skge_ethtool_ops, ptr @skge_devinit.__key, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @skge_stats, ptr @rxirqmask, ptr @txirqmask, ptr @napimask, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @switch.table.bcom_check_link, ptr @switch.table.skge_link_up], section "llvm.metadata"
@0 = internal global [138 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skge_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skge_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skge_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skge_debug_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skge_up._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxqaddr to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txqaddr to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @portmask to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skge_error_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skge_error_irq._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skge_error_irq._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skge_error_irq._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skge_error_irq._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skge_error_irq._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiber_pause_map to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_pause_map to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xm_phy_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm_phy_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm_phy_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pause_mc_addr to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skge_id_table to i32), i32 416, i32 512, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skge_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skge_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skge_probe._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skge_probe._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skge_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skge_probe.__key.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skge_probe._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skge_probe._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skge_probe._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skge_probe._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skge_probe._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skge_probe._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yukon_phy_intr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcom_phy_intr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skge_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skge_reset._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skge_reset._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skge_board_name.buf to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skge_chips to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skge_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skge_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skge_devinit.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skge_xmit_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skge_stats to i32), i32 756, i32 928, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxirqmask to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txirqmask to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @napimask to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.bcom_check_link to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.skge_link_up to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @skge_debug_cleanup() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  %0 = load ptr, ptr @skge_debug, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %call = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @skge_notifier) #20
  %1 = load ptr, ptr @skge_debug, align 4
  tail call void @debugfs_remove(ptr noundef %1) #20
  store ptr null, ptr @skge_debug, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @skge_cleanup_module() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @pci_unregister_driver(ptr noundef nonnull @skge_driver) #20
  tail call void @skge_debug_cleanup() #23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @skge_init_module() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @skge_debug_init() #23
  %call1 = tail call i32 @__pci_register_driver(ptr noundef nonnull @skge_driver, ptr noundef null, ptr noundef nonnull @.str.1) #20
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @skge_device_event(ptr nocapture noundef readnone %unused, i32 noundef %event, ptr nocapture noundef readonly %ptr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev_ops, align 8
  %ndo_open = getelementptr inbounds %struct.net_device_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ndo_open to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndo_open, align 4
  %cmp.not = icmp eq ptr %5, @skge_up
  br i1 %cmp.not, label %lor.lhs.false, label %entry.done_crit_edge

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %done

lor.lhs.false:                                    ; preds = %entry
  %6 = load ptr, ptr @skge_debug, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %lor.lhs.false.done_crit_edge, label %if.end

lor.lhs.false.done_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %done

if.end:                                           ; preds = %lor.lhs.false
  %7 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %if.end.done_crit_edge [
    i32 11, label %sw.bb
    i32 10, label %sw.bb8
    i32 1, label %sw.bb11
  ]

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %done

sw.bb:                                            ; preds = %if.end
  %debugfs = getelementptr i8, ptr %1, i32 2660
  %8 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %debugfs, align 4
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %sw.bb.done_crit_edge, label %if.then3

sw.bb.done_crit_edge:                             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #22
  br label %done

if.then3:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #22
  %call5 = tail call ptr @debugfs_rename(ptr noundef nonnull %6, ptr noundef nonnull %9, ptr noundef nonnull %6, ptr noundef %1) #20
  %10 = ptrtoint ptr %debugfs to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call5, ptr %debugfs, align 4
  br label %done

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %debugfs9 = getelementptr i8, ptr %1, i32 2660
  %11 = ptrtoint ptr %debugfs9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %debugfs9, align 4
  tail call void @debugfs_remove(ptr noundef %12) #20
  %13 = ptrtoint ptr %debugfs9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %debugfs9, align 4
  br label %done

sw.bb11:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %call14 = tail call ptr @debugfs_create_file(ptr noundef %1, i16 noundef zeroext 292, ptr noundef nonnull %6, ptr noundef %1, ptr noundef nonnull @skge_debug_fops) #20
  %debugfs15 = getelementptr i8, ptr %1, i32 2660
  %14 = ptrtoint ptr %debugfs15 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call14, ptr %debugfs15, align 4
  br label %done

done:                                             ; preds = %sw.bb11, %sw.bb8, %if.then3, %sw.bb.done_crit_edge, %if.end.done_crit_edge, %lor.lhs.false.done_crit_edge, %entry.done_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @skge_up(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 128
  %port2 = getelementptr i8, ptr %dev, i32 2536
  %2 = ptrtoint ptr %port2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port2, align 8
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %4 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_addr, align 64
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %8 = and i32 %7, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not.i = icmp eq i32 %8, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 4
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %10 to i32
  %or.i.i = or i32 %7, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %do.body

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

do.body:                                          ; preds = %is_valid_ether_addr.exit
  %msg_enable = getelementptr i8, ptr %dev, i32 2540
  %11 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %msg_enable, align 4
  %and = and i32 %12, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end_crit_edge, label %if.then4

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  %netdev = getelementptr i8, ptr %dev, i32 2308
  %13 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %14, ptr noundef nonnull @.str.3) #24
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body.do.end_crit_edge
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %15 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mtu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %16)
  %cmp = icmp ugt i32 %16, 1536
  %add = add i32 %16, 14
  %spec.select = select i1 %cmp, i32 %add, i32 1536
  %17 = getelementptr i8, ptr %dev, i32 2576
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %spec.select, ptr %17, align 16
  %rx_ring = getelementptr i8, ptr %dev, i32 2560
  %count = getelementptr i8, ptr %dev, i32 2572
  %19 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %count, align 4
  %mul = shl i32 %20, 5
  %tx_ring = getelementptr i8, ptr %dev, i32 2544
  %count10 = getelementptr i8, ptr %dev, i32 2556
  %21 = ptrtoint ptr %count10 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %count10, align 4
  %23 = add i32 %22, %20
  %add12 = shl i32 %23, 5
  %mem_size = getelementptr i8, ptr %dev, i32 2656
  %24 = ptrtoint ptr %mem_size to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add12, ptr %mem_size, align 32
  %pdev = getelementptr inbounds %struct.skge_hw, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdev, align 4
  %dev13 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  %dma = getelementptr i8, ptr %dev, i32 2652
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev13, i32 noundef %add12, ptr noundef %dma, i32 noundef 3264, i32 noundef 0) #20
  %mem = getelementptr i8, ptr %dev, i32 2648
  %27 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i, ptr %mem, align 8
  %tobool17.not = icmp eq ptr %call.i, null
  br i1 %tobool17.not, label %do.end.cleanup_crit_edge, label %do.body20

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

do.body20:                                        ; preds = %do.end
  %28 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dma, align 4
  %and22 = and i32 %29, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end50, label %do.body27, !prof !299

do.body27:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #22
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/marvell/skge.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2563, 0\0A.popsection", ""() #20, !srcloc !300
  unreachable

if.end50:                                         ; preds = %do.body20
  %30 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %count, align 4
  %32 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %31, i32 20) #20
  %33 = extractvalue { i32, i1 } %32, 1
  br i1 %33, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !301

kcalloc.exit.thread.i:                            ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #22
  %start37.i = getelementptr i8, ptr %dev, i32 2568
  %34 = ptrtoint ptr %start37.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %start37.i, align 4
  br label %free_pci_mem

if.end7.i.i.i:                                    ; preds = %if.end50
  %35 = extractvalue { i32, i1 } %32, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %35, i32 noundef 3520) #25
  %start.i = getelementptr i8, ptr %dev, i32 2568
  %36 = ptrtoint ptr %start.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call8.i.i.i, ptr %start.i, align 4
  %tobool.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i, label %if.end7.i.i.i.free_pci_mem_crit_edge, label %for.cond.preheader.i

if.end7.i.i.i.free_pci_mem_crit_edge:             ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %free_pci_mem

for.cond.preheader.i:                             ; preds = %if.end7.i.i.i
  %37 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp39.not.i = icmp eq i32 %38, 0
  br i1 %cmp39.not.i, label %for.cond.preheader.i.if.end57_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.if.end57_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end57

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %mul.i = add i32 %29, 32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.044.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %e.042.i = phi ptr [ %call8.i.i.i, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %d.040.i = phi ptr [ %call.i, %for.body.lr.ph.i ], [ %incdec.ptr12.i, %for.inc.i.for.body.i_crit_edge ]
  %desc.i = getelementptr inbounds %struct.skge_element, ptr %e.042.i, i32 0, i32 1
  %39 = ptrtoint ptr %desc.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %d.040.i, ptr %desc.i, align 4
  %40 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %count, align 4
  %sub.i = add i32 %41, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.044.i, i32 %sub.i)
  %cmp5.i = icmp eq i32 %i.044.i, %sub.i
  br i1 %cmp5.i, label %if.then6.i, label %if.else.i

if.then6.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  %42 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %start.i, align 4
  %44 = ptrtoint ptr %e.042.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %e.042.i, align 4
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr.i240 = getelementptr %struct.skge_element, ptr %e.042.i, i32 1
  %45 = ptrtoint ptr %e.042.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %add.ptr.i240, ptr %e.042.i, align 4
  %add.i = shl i32 %i.044.i, 5
  %add9.i = add i32 %mul.i, %add.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.then6.i
  %add9.sink.i = phi i32 [ %29, %if.then6.i ], [ %add9.i, %if.else.i ]
  %46 = getelementptr inbounds %struct.skge_tx_desc, ptr %d.040.i, i32 0, i32 1
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %add9.sink.i, ptr %46, align 4
  %inc.i = add nuw i32 %i.044.i, 1
  %incdec.ptr.i = getelementptr %struct.skge_element, ptr %e.042.i, i32 1
  %incdec.ptr12.i = getelementptr %struct.skge_tx_desc, ptr %d.040.i, i32 1
  %48 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %count, align 4
  %cmp.i = icmp ult i32 %inc.i, %49
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end57_crit_edge

for.inc.i.if.end57_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end57

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i

if.end57:                                         ; preds = %for.inc.i.if.end57_crit_edge, %for.cond.preheader.i.if.end57_crit_edge
  %50 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %start.i, align 4
  %52 = ptrtoint ptr %rx_ring to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %51, ptr %rx_ring, align 4
  %to_use.i = getelementptr i8, ptr %dev, i32 2564
  %53 = ptrtoint ptr %to_use.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %51, ptr %to_use.i, align 4
  %start.i242 = getelementptr i8, ptr %dev, i32 2568
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.end57
  %e.0.i = phi ptr [ %51, %if.end57 ], [ %63, %do.cond.i.do.body.i_crit_edge ]
  %54 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %17, align 16
  %add.i243 = add i32 %55, 2
  %call1.i = tail call ptr @__netdev_alloc_skb(ptr noundef %dev, i32 noundef %add.i243, i32 noundef 3264) #20
  %tobool.not.i244 = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i244, label %do.body.i.free_rx_ring_crit_edge, label %if.end.i

do.body.i.free_rx_ring_crit_edge:                 ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %free_rx_ring

if.end.i:                                         ; preds = %do.body.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1.i, i32 0, i32 19
  %56 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i24.i = getelementptr i8, ptr %57, i32 2
  store ptr %add.ptr.i24.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1.i, i32 0, i32 16
  %58 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %59, i32 2
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %60 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %17, align 16
  %call3.i = tail call fastcc i32 @skge_rx_setup(ptr noundef %add.ptr.i, ptr noundef %e.0.i, ptr noundef nonnull %call1.i, i32 noundef %61) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i245 = icmp slt i32 %call3.i, 0
  br i1 %cmp.i245, label %if.then4.i, label %do.cond.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @consume_skb(ptr noundef nonnull %call1.i) #20
  br label %free_rx_ring

do.cond.i:                                        ; preds = %if.end.i
  %62 = ptrtoint ptr %e.0.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %e.0.i, align 4
  %64 = ptrtoint ptr %start.i242 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %start.i242, align 4
  %cmp7.not.i = icmp eq ptr %63, %65
  br i1 %cmp7.not.i, label %if.end61, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body.i

if.end61:                                         ; preds = %do.cond.i
  %66 = ptrtoint ptr %rx_ring to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %63, ptr %rx_ring, align 4
  %67 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mem, align 8
  %add.ptr = getelementptr i8, ptr %68, i32 %mul
  %69 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %dma, align 4
  %add65 = add i32 %70, %mul
  %71 = ptrtoint ptr %count10 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %count10, align 4
  %73 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %72, i32 20) #20
  %74 = extractvalue { i32, i1 } %73, 1
  br i1 %74, label %kcalloc.exit.thread.i248, label %if.end7.i.i.i281, !prof !301

kcalloc.exit.thread.i248:                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #22
  %start37.i247 = getelementptr i8, ptr %dev, i32 2552
  %75 = ptrtoint ptr %start37.i247 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %start37.i247, align 4
  br label %free_rx_ring

if.end7.i.i.i281:                                 ; preds = %if.end61
  %76 = extractvalue { i32, i1 } %73, 0
  %call8.i.i.i280 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %76, i32 noundef 3520) #25
  %start.i283 = getelementptr i8, ptr %dev, i32 2552
  %77 = ptrtoint ptr %start.i283 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call8.i.i.i280, ptr %start.i283, align 4
  %tobool.not.i284 = icmp eq ptr %call8.i.i.i280, null
  br i1 %tobool.not.i284, label %if.end7.i.i.i281.free_rx_ring_crit_edge, label %for.cond.preheader.i289

if.end7.i.i.i281.free_rx_ring_crit_edge:          ; preds = %if.end7.i.i.i281
  call void @__sanitizer_cov_trace_pc() #22
  br label %free_rx_ring

for.cond.preheader.i289:                          ; preds = %if.end7.i.i.i281
  %78 = ptrtoint ptr %count10 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %count10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp39.not.i288 = icmp eq i32 %79, 0
  br i1 %cmp39.not.i288, label %for.cond.preheader.i289.if.end69_crit_edge, label %for.body.lr.ph.i291

for.cond.preheader.i289.if.end69_crit_edge:       ; preds = %for.cond.preheader.i289
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end69

for.body.lr.ph.i291:                              ; preds = %for.cond.preheader.i289
  %mul.i290 = add i32 %add65, 32
  br label %for.body.i298

for.body.i298:                                    ; preds = %for.inc.i309.for.body.i298_crit_edge, %for.body.lr.ph.i291
  %i.044.i292 = phi i32 [ 0, %for.body.lr.ph.i291 ], [ %inc.i305, %for.inc.i309.for.body.i298_crit_edge ]
  %e.042.i293 = phi ptr [ %call8.i.i.i280, %for.body.lr.ph.i291 ], [ %incdec.ptr.i306, %for.inc.i309.for.body.i298_crit_edge ]
  %d.040.i294 = phi ptr [ %add.ptr, %for.body.lr.ph.i291 ], [ %incdec.ptr12.i307, %for.inc.i309.for.body.i298_crit_edge ]
  %desc.i295 = getelementptr inbounds %struct.skge_element, ptr %e.042.i293, i32 0, i32 1
  %80 = ptrtoint ptr %desc.i295 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %d.040.i294, ptr %desc.i295, align 4
  %81 = ptrtoint ptr %count10 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %count10, align 4
  %sub.i296 = add i32 %82, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.044.i292, i32 %sub.i296)
  %cmp5.i297 = icmp eq i32 %i.044.i292, %sub.i296
  br i1 %cmp5.i297, label %if.then6.i299, label %if.else.i303

if.then6.i299:                                    ; preds = %for.body.i298
  call void @__sanitizer_cov_trace_pc() #22
  %83 = ptrtoint ptr %start.i283 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %start.i283, align 4
  %85 = ptrtoint ptr %e.042.i293 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %84, ptr %e.042.i293, align 4
  br label %for.inc.i309

if.else.i303:                                     ; preds = %for.body.i298
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr.i300 = getelementptr %struct.skge_element, ptr %e.042.i293, i32 1
  %86 = ptrtoint ptr %e.042.i293 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %add.ptr.i300, ptr %e.042.i293, align 4
  %add.i301 = shl i32 %i.044.i292, 5
  %add9.i302 = add i32 %mul.i290, %add.i301
  br label %for.inc.i309

for.inc.i309:                                     ; preds = %if.else.i303, %if.then6.i299
  %add9.sink.i304 = phi i32 [ %add65, %if.then6.i299 ], [ %add9.i302, %if.else.i303 ]
  %87 = getelementptr inbounds %struct.skge_tx_desc, ptr %d.040.i294, i32 0, i32 1
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %add9.sink.i304, ptr %87, align 4
  %inc.i305 = add nuw i32 %i.044.i292, 1
  %incdec.ptr.i306 = getelementptr %struct.skge_element, ptr %e.042.i293, i32 1
  %incdec.ptr12.i307 = getelementptr %struct.skge_tx_desc, ptr %d.040.i294, i32 1
  %89 = ptrtoint ptr %count10 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %count10, align 4
  %cmp.i308 = icmp ult i32 %inc.i305, %90
  br i1 %cmp.i308, label %for.inc.i309.for.body.i298_crit_edge, label %for.inc.i309.if.end69_crit_edge

for.inc.i309.if.end69_crit_edge:                  ; preds = %for.inc.i309
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end69

for.inc.i309.for.body.i298_crit_edge:             ; preds = %for.inc.i309
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i298

if.end69:                                         ; preds = %for.inc.i309.if.end69_crit_edge, %for.cond.preheader.i289.if.end69_crit_edge
  %91 = ptrtoint ptr %start.i283 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %start.i283, align 4
  %93 = ptrtoint ptr %tx_ring to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %92, ptr %tx_ring, align 4
  %to_use.i310 = getelementptr i8, ptr %dev, i32 2548
  %94 = ptrtoint ptr %to_use.i310 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %92, ptr %to_use.i310, align 4
  %ports = getelementptr inbounds %struct.skge_hw, ptr %1, i32 0, i32 8
  %95 = ptrtoint ptr %ports to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %ports, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %96)
  %cmp70 = icmp eq i8 %96, 1
  br i1 %cmp70, label %if.then72, label %if.end69.if.end80_crit_edge

if.end69.if.end80_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end80

if.then72:                                        ; preds = %if.end69
  %97 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %pdev, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %98, i32 0, i32 46
  %99 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %irq, align 4
  %call.i314 = tail call i32 @request_threaded_irq(i32 noundef %100, ptr noundef nonnull @skge_intr, ptr noundef null, i32 noundef 128, ptr noundef %dev, ptr noundef %1) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i314)
  %tobool75.not = icmp eq i32 %call.i314, 0
  br i1 %tobool75.not, label %if.then72.if.end80_crit_edge, label %if.then76

if.then72.if.end80_crit_edge:                     ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end80

if.then76:                                        ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #22
  %101 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %pdev, align 4
  %irq78 = getelementptr inbounds %struct.pci_dev, ptr %102, i32 0, i32 46
  %103 = ptrtoint ptr %irq78 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %irq78, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %104, i32 noundef %call.i314) #24
  %start = getelementptr i8, ptr %dev, i32 2552
  %105 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %start, align 8
  tail call void @kfree(ptr noundef %106) #20
  br label %free_rx_ring

if.end80:                                         ; preds = %if.then72.if.end80_crit_edge, %if.end69.if.end80_crit_edge
  tail call void @netif_carrier_off(ptr noundef %dev) #20
  %phy_lock = getelementptr inbounds %struct.skge_hw, ptr %1, i32 0, i32 13
  tail call void @_raw_spin_lock_bh(ptr noundef %phy_lock) #20
  %chip_id.i = getelementptr inbounds %struct.skge_hw, ptr %1, i32 0, i32 5
  %107 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %chip_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %108)
  %cmp.i315 = icmp eq i8 %108, 10
  br i1 %cmp.i315, label %if.then82, label %if.else83

if.then82:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #22
  tail call fastcc void @genesis_mac_init(ptr noundef %1, i32 noundef %3)
  br label %if.end84

if.else83:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #22
  tail call fastcc void @yukon_mac_init(ptr noundef %1, i32 noundef %3)
  br label %if.end84

if.end84:                                         ; preds = %if.else83, %if.then82
  tail call void @_raw_spin_unlock_bh(ptr noundef %phy_lock) #20
  %ram_size = getelementptr inbounds %struct.skge_hw, ptr %1, i32 0, i32 10
  %109 = ptrtoint ptr %ram_size to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %ram_size, align 4
  %ram_offset = getelementptr inbounds %struct.skge_hw, ptr %1, i32 0, i32 11
  %111 = ptrtoint ptr %ram_offset to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %ram_offset, align 4
  %sub = sub i32 %110, %112
  %113 = ptrtoint ptr %ports to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %ports, align 1
  %conv87 = zext i8 %114 to i32
  %mul88 = shl nuw nsw i32 %conv87, 1
  %div = udiv i32 %sub, %mul88
  %mul90 = shl i32 %3, 1
  %mul91 = mul i32 %mul90, %div
  %add92 = add i32 %mul91, %112
  %arrayidx = getelementptr [2 x i32], ptr @rxqaddr, i32 0, i32 %3
  %115 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %arrayidx, align 4
  %conv93 = trunc i32 %116 to i16
  tail call fastcc void @skge_ramset(ptr noundef %1, i16 noundef zeroext %conv93, i32 noundef %add92, i32 noundef %div)
  %117 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %rx_ring, align 128
  tail call fastcc void @skge_qset(ptr noundef %add.ptr.i, i16 noundef zeroext %conv93, ptr noundef %118)
  %119 = ptrtoint ptr %to_use.i310 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %to_use.i310, align 4
  %121 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %tx_ring, align 16
  %cmp101.not = icmp eq ptr %120, %122
  br i1 %cmp101.not, label %do.end118, label %do.body110, !prof !299

do.body110:                                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #22
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/marvell/skge.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2610, 0\0A.popsection", ""() #20, !srcloc !302
  unreachable

do.end118:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #22
  %arrayidx119 = getelementptr [2 x i32], ptr @txqaddr, i32 0, i32 %3
  %123 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx119, align 4
  %conv120 = trunc i32 %124 to i16
  %add121 = add i32 %add92, %div
  tail call fastcc void @skge_ramset(ptr noundef %1, i16 noundef zeroext %conv120, i32 noundef %add121, i32 noundef %div)
  %125 = ptrtoint ptr %to_use.i310 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %to_use.i310, align 4
  tail call fastcc void @skge_qset(ptr noundef %add.ptr.i, i16 noundef zeroext %conv120, ptr noundef %126)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !303
  tail call void @arm_heavy_mb() #20
  %add131 = add i32 %116, 1076
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  tail call void @arm_heavy_mb() #20
  %127 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %1, align 4
  %add.ptr.i316 = getelementptr i8, ptr %128, i32 %add131
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i316, i8 18) #20, !srcloc !305
  tail call fastcc void @skge_led(ptr noundef %add.ptr.i, i32 noundef 1)
  %hw_lock = getelementptr inbounds %struct.skge_hw, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %hw_lock) #20
  %arrayidx132 = getelementptr [2 x i32], ptr @portmask, i32 0, i32 %3
  %129 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %arrayidx132, align 4
  %intr_mask = getelementptr inbounds %struct.skge_hw, ptr %1, i32 0, i32 3
  %131 = ptrtoint ptr %intr_mask to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %intr_mask, align 4
  %or = or i32 %132, %130
  store i32 %or, ptr %intr_mask, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !306
  tail call void @arm_heavy_mb() #20
  %133 = tail call i32 @llvm.bswap.i32(i32 %or) #20
  %134 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %1, align 4
  %add.ptr.i317 = getelementptr i8, ptr %135, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i317, i32 %133) #20, !srcloc !307
  %136 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %1, align 4
  %add.ptr.i318 = getelementptr i8, ptr %137, i32 12
  %138 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i318) #20, !srcloc !308
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !309
  tail call void @_raw_spin_unlock_irq(ptr noundef %hw_lock) #20
  %napi = getelementptr i8, ptr %dev, i32 2312
  tail call void @napi_enable(ptr noundef %napi) #20
  tail call void @skge_set_multicast(ptr noundef %dev)
  br label %cleanup

free_rx_ring:                                     ; preds = %if.then76, %if.end7.i.i.i281.free_rx_ring_crit_edge, %kcalloc.exit.thread.i248, %if.then4.i, %do.body.i.free_rx_ring_crit_edge
  %err.0 = phi i32 [ %call.i314, %if.then76 ], [ -5, %if.then4.i ], [ -12, %if.end7.i.i.i281.free_rx_ring_crit_edge ], [ -12, %kcalloc.exit.thread.i248 ], [ -12, %do.body.i.free_rx_ring_crit_edge ]
  %139 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %add.ptr.i, align 128
  %141 = ptrtoint ptr %start.i242 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %start.i242, align 4
  %pdev.i = getelementptr inbounds %struct.skge_hw, ptr %140, i32 0, i32 1
  br label %do.body.i323

do.body.i323:                                     ; preds = %if.end.i324.do.body.i323_crit_edge, %free_rx_ring
  %e.0.i320 = phi ptr [ %142, %free_rx_ring ], [ %158, %if.end.i324.do.body.i323_crit_edge ]
  %desc.i321 = getelementptr inbounds %struct.skge_element, ptr %e.0.i320, i32 0, i32 1
  %143 = ptrtoint ptr %desc.i321 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %desc.i321, align 4
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 0, ptr %144, align 4
  %skb.i = getelementptr inbounds %struct.skge_element, ptr %e.0.i320, i32 0, i32 2
  %146 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %skb.i, align 4
  %tobool.not.i322 = icmp eq ptr %147, null
  br i1 %tobool.not.i322, label %do.body.i323.if.end.i324_crit_edge, label %if.then.i

do.body.i323.if.end.i324_crit_edge:               ; preds = %do.body.i323
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i324

if.then.i:                                        ; preds = %do.body.i323
  call void @__sanitizer_cov_trace_pc() #22
  %148 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %149, i32 0, i32 44
  %mapaddr.i = getelementptr inbounds %struct.skge_element, ptr %e.0.i320, i32 0, i32 3
  %150 = ptrtoint ptr %mapaddr.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %mapaddr.i, align 4
  %maplen.i = getelementptr inbounds %struct.skge_element, ptr %e.0.i320, i32 0, i32 4
  %152 = ptrtoint ptr %maplen.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %maplen.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %151, i32 noundef %153, i32 noundef 2, i32 noundef 0) #20
  %154 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %skb.i, align 4
  tail call void @consume_skb(ptr noundef %155) #20
  %156 = ptrtoint ptr %skb.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr null, ptr %skb.i, align 4
  br label %if.end.i324

if.end.i324:                                      ; preds = %if.then.i, %do.body.i323.if.end.i324_crit_edge
  %157 = ptrtoint ptr %e.0.i320 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %e.0.i320, align 4
  %159 = ptrtoint ptr %start.i242 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %start.i242, align 4
  %cmp.not.i = icmp eq ptr %158, %160
  br i1 %cmp.not.i, label %skge_rx_clean.exit, label %if.end.i324.do.body.i323_crit_edge

if.end.i324.do.body.i323_crit_edge:               ; preds = %if.end.i324
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body.i323

skge_rx_clean.exit:                               ; preds = %if.end.i324
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @kfree(ptr noundef %158) #20
  br label %free_pci_mem

free_pci_mem:                                     ; preds = %skge_rx_clean.exit, %if.end7.i.i.i.free_pci_mem_crit_edge, %kcalloc.exit.thread.i
  %err.1 = phi i32 [ %err.0, %skge_rx_clean.exit ], [ -12, %if.end7.i.i.i.free_pci_mem_crit_edge ], [ -12, %kcalloc.exit.thread.i ]
  %161 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %pdev, align 4
  %dev140 = getelementptr inbounds %struct.pci_dev, ptr %162, i32 0, i32 44
  %163 = ptrtoint ptr %mem_size to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %mem_size, align 32
  %165 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %mem, align 8
  %167 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev140, i32 noundef %164, ptr noundef %166, i32 noundef %168, i32 noundef 0) #20
  %169 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr null, ptr %mem, align 8
  br label %cleanup

cleanup:                                          ; preds = %free_pci_mem, %do.end118, %do.end.cleanup_crit_edge, %is_valid_ether_addr.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %free_pci_mem ], [ 0, %do.end118 ], [ -22, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ -12, %do.end.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_rename(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @skge_intr(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  %pci_status.i = alloca i16, align 2
  %pci_cmd.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_lock = getelementptr inbounds %struct.skge_hw, ptr %dev_id, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %hw_lock) #20
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 24
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #20, !srcloc !308
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !309
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.121)
  switch i32 %3, label %if.end [
    i32 0, label %entry.out_crit_edge
    i32 -1, label %entry.out_crit_edge118
  ]

entry.out_crit_edge118:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

if.end:                                           ; preds = %entry
  %intr_mask = getelementptr inbounds %struct.skge_hw, ptr %dev_id, i32 0, i32 3
  %5 = ptrtoint ptr %intr_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %intr_mask, align 4
  %and = and i32 %6, %3
  %and2 = and i32 %and, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end6

if.then3:                                         ; preds = %if.end
  %and5 = and i32 %6, -8388609
  %7 = ptrtoint ptr %intr_mask to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and5, ptr %intr_mask, align 4
  %state.i = getelementptr inbounds %struct.skge_hw, ptr %dev_id, i32 0, i32 14, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then3.if.end6_crit_edge

if.then3.if.end6_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end6

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #22
  %phy_task = getelementptr inbounds %struct.skge_hw, ptr %dev_id, i32 0, i32 14
  tail call void @__tasklet_schedule(ptr noundef %phy_task) #20
  br label %if.end6

if.end6:                                          ; preds = %if.then.i, %if.then3.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %and7 = and i32 %and, 65664
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end6.if.end13_crit_edge, label %if.then9

if.end6.if.end13_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end13

if.then9:                                         ; preds = %if.end6
  %dev = getelementptr inbounds %struct.skge_hw, ptr %dev_id, i32 0, i32 4
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %10 = ptrtoint ptr %intr_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %intr_mask, align 4
  %and12 = and i32 %11, -65665
  store i32 %and12, ptr %intr_mask, align 4
  %napi = getelementptr i8, ptr %9, i32 2312
  %call.i104 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #20
  br i1 %call.i104, label %if.then.i105, label %if.then9.if.end13_crit_edge

if.then9.if.end13_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end13

if.then.i105:                                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @__napi_schedule(ptr noundef %napi) #20
  br label %if.end13

if.end13:                                         ; preds = %if.then.i105, %if.then9.if.end13_crit_edge, %if.end6.if.end13_crit_edge
  %and14 = and i32 %and, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end13.if.end17_crit_edge, label %if.then16

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end17

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %12 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_id, align 4
  %add.ptr.i106 = getelementptr i8, ptr %13, i32 496
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i106, i16 16) #20, !srcloc !311
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end13.if.end17_crit_edge
  %and18 = and i32 %and, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end17.if.end23_crit_edge, label %if.then20

if.end17.if.end23_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end23

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #22
  %dev21 = getelementptr inbounds %struct.skge_hw, ptr %dev_id, i32 0, i32 4
  %14 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev21, align 4
  %rx_over_errors = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 36, i32 11
  %16 = ptrtoint ptr %rx_over_errors to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_over_errors, align 4
  %inc = add i32 %17, 1
  store i32 %inc, ptr %rx_over_errors, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %18 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_id, align 4
  %add.ptr.i107 = getelementptr i8, ptr %19, i32 496
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i107, i16 4) #20, !srcloc !311
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.end17.if.end23_crit_edge
  %and24 = and i32 %and, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end23.if.end27_crit_edge, label %if.then26

if.end23.if.end27_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end27

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #22
  tail call fastcc void @skge_mac_intr(ptr noundef %dev_id, i32 noundef 0)
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end23.if.end27_crit_edge
  %arrayidx29 = getelementptr %struct.skge_hw, ptr %dev_id, i32 0, i32 4, i32 1
  %20 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx29, align 4
  %tobool30.not = icmp eq ptr %21, null
  br i1 %tobool30.not, label %if.end27.if.end60_crit_edge, label %if.then31

if.end27.if.end60_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end60

if.then31:                                        ; preds = %if.end27
  %and36 = and i32 %and, 8194
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.then31.if.end42_crit_edge, label %if.then38

if.then31.if.end42_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end42

if.then38:                                        ; preds = %if.then31
  %22 = ptrtoint ptr %intr_mask to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %intr_mask, align 4
  %and40 = and i32 %23, -8195
  store i32 %and40, ptr %intr_mask, align 4
  %napi41 = getelementptr i8, ptr %21, i32 2312
  %call.i109 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi41) #20
  br i1 %call.i109, label %if.then.i110, label %if.then38.if.end42_crit_edge

if.then38.if.end42_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end42

if.then.i110:                                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @__napi_schedule(ptr noundef %napi41) #20
  br label %if.end42

if.end42:                                         ; preds = %if.then.i110, %if.then38.if.end42_crit_edge, %if.then31.if.end42_crit_edge
  %and43 = and i32 %and, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.end42.if.end51_crit_edge, label %if.then45

if.end42.if.end51_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end51

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #22
  %24 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx29, align 4
  %rx_over_errors49 = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 36, i32 11
  %26 = ptrtoint ptr %rx_over_errors49 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_over_errors49, align 4
  %inc50 = add i32 %27, 1
  store i32 %inc50, ptr %rx_over_errors49, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %28 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev_id, align 4
  %add.ptr.i112 = getelementptr i8, ptr %29, i32 496
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i112, i16 8) #20, !srcloc !311
  br label %if.end51

if.end51:                                         ; preds = %if.then45, %if.end42.if.end51_crit_edge
  %and52 = and i32 %and, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end51.if.end55_crit_edge, label %if.then54

if.end51.if.end55_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end55

if.then54:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %30 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev_id, align 4
  %add.ptr.i113 = getelementptr i8, ptr %31, i32 496
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i113, i16 32) #20, !srcloc !311
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %if.end51.if.end55_crit_edge
  %and56 = and i32 %and, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.end55.if.end60_crit_edge, label %if.then58

if.end55.if.end60_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end60

if.then58:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #22
  tail call fastcc void @skge_mac_intr(ptr noundef %dev_id, i32 noundef 1)
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %if.end55.if.end60_crit_edge, %if.end27.if.end60_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %and)
  %tobool62.not = icmp sgt i32 %and, -1
  br i1 %tobool62.not, label %if.end60.out_crit_edge, label %if.then63

if.end60.out_crit_edge:                           ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

if.then63:                                        ; preds = %if.end60
  %pdev1.i = getelementptr inbounds %struct.skge_hw, ptr %dev_id, i32 0, i32 1
  %32 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdev1.i, align 4
  %34 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev_id, align 4
  %add.ptr.i.i = getelementptr i8, ptr %35, i32 16
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #20, !srcloc !308
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !309
  %chip_id.i.i = getelementptr inbounds %struct.skge_hw, ptr %dev_id, i32 0, i32 5
  %38 = ptrtoint ptr %chip_id.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %chip_id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %39)
  %cmp.i.i = icmp eq i8 %39, 10
  br i1 %cmp.i.i, label %if.then.i115, label %if.else.i

if.then.i115:                                     ; preds = %if.then63
  %and.i = and i32 %37, 640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i114 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i114, label %if.then.i115.if.end.i_crit_edge, label %if.then3.i

if.then.i115.if.end.i_crit_edge:                  ; preds = %if.then.i115
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i

if.then3.i:                                       ; preds = %if.then.i115
  call void @__sanitizer_cov_trace_pc() #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %40 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev_id, align 4
  %add.ptr.i120.i = getelementptr i8, ptr %41, i32 3096
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i120.i, i16 256) #20, !srcloc !311
  br label %if.end.i

if.end.i:                                         ; preds = %if.then3.i, %if.then.i115.if.end.i_crit_edge
  %and4.i = and i32 %37, 320
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.end.i.if.end12.i_crit_edge, label %if.then6.i

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end12.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %42 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev_id, align 4
  %add.ptr.i121.i = getelementptr i8, ptr %43, i32 3100
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i121.i, i16 256) #20, !srcloc !311
  br label %if.end12.i

if.else.i:                                        ; preds = %if.then63
  %and8.i = and i32 %37, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %if.else.i.if.end12.i_crit_edge, label %if.then10.i

if.else.i.if.end12.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end12.i

if.then10.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  tail call void @arm_heavy_mb() #20
  %44 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev_id, align 4
  %add.ptr.i122.i = getelementptr i8, ptr %45, i32 3608
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i122.i, i8 1) #20, !srcloc !305
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then10.i, %if.else.i.if.end12.i_crit_edge, %if.then6.i, %if.end.i.if.end12.i_crit_edge
  %and13.i = and i32 %37, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %if.end12.i.if.end16.i_crit_edge, label %do.end.i

if.end12.i.if.end16.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end16.i

do.end.i:                                         ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #22
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.15) #24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %46 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev_id, align 4
  %add.ptr.i123.i = getelementptr i8, ptr %47, i32 416
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i123.i, i16 2) #20, !srcloc !311
  br label %if.end16.i

if.end16.i:                                       ; preds = %do.end.i, %if.end12.i.if.end16.i_crit_edge
  %and17.i = and i32 %37, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %if.end16.i.if.end24.i_crit_edge, label %do.end22.i

if.end16.i.if.end24.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end24.i

do.end22.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #22
  %dev23.i = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev23.i, ptr noundef nonnull @.str.18) #24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %48 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev_id, align 4
  %add.ptr.i124.i = getelementptr i8, ptr %49, i32 416
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i124.i, i16 1) #20, !srcloc !311
  br label %if.end24.i

if.end24.i:                                       ; preds = %do.end22.i, %if.end16.i.if.end24.i_crit_edge
  %and25.i = and i32 %37, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i, label %if.end24.i.if.end28.i_crit_edge, label %if.then27.i

if.end24.i.if.end28.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end28.i

if.then27.i:                                      ; preds = %if.end24.i
  %arrayidx.i.i = getelementptr %struct.skge_hw, ptr %dev_id, i32 0, i32 4, i32 0
  %50 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.i.i, align 4
  %tx_heartbeat_errors.i.i = getelementptr inbounds %struct.net_device, ptr %51, i32 0, i32 36, i32 19
  %52 = ptrtoint ptr %tx_heartbeat_errors.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tx_heartbeat_errors.i.i, align 4
  %inc.i.i = add i32 %53, 1
  store i32 %inc.i.i, ptr %tx_heartbeat_errors.i.i, align 4
  %54 = ptrtoint ptr %chip_id.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %chip_id.i.i, align 4
  %56 = zext i8 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.122)
  switch i8 %55, label %if.then27.i.land.end.i.i_crit_edge [
    i8 10, label %if.then.i.i
    i8 -80, label %land.rhs.i.i
  ]

if.then27.i.land.end.i.i_crit_edge:               ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %land.end.i.i

if.then.i.i:                                      ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %57 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev_id, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %58, i32 3352
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i, i16 128) #20, !srcloc !311
  br label %if.end28.i

land.rhs.i.i:                                     ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #22
  %chip_rev.i.i = getelementptr inbounds %struct.skge_hw, ptr %dev_id, i32 0, i32 6
  %59 = ptrtoint ptr %chip_rev.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %chip_rev.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %cmp6.i.i = icmp eq i8 %60, 0
  %phi.cast.i.i = select i1 %cmp6.i.i, i8 32, i8 16
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %land.rhs.i.i, %if.then27.i.land.end.i.i_crit_edge
  %61 = phi i8 [ %phi.cast.i.i, %land.rhs.i.i ], [ 16, %if.then27.i.land.end.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  tail call void @arm_heavy_mb() #20
  %62 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev_id, align 4
  %add.ptr.i16.i.i = getelementptr i8, ptr %63, i32 3400
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i16.i.i, i8 %61) #20, !srcloc !305
  br label %if.end28.i

if.end28.i:                                       ; preds = %land.end.i.i, %if.then.i.i, %if.end24.i.if.end28.i_crit_edge
  %and29.i = and i32 %37, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  br i1 %tobool30.not.i, label %if.end28.i.if.end32.i_crit_edge, label %if.then31.i

if.end28.i.if.end32.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end32.i

if.then31.i:                                      ; preds = %if.end28.i
  %64 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx29, align 4
  %tx_heartbeat_errors.i127.i = getelementptr inbounds %struct.net_device, ptr %65, i32 0, i32 36, i32 19
  %66 = ptrtoint ptr %tx_heartbeat_errors.i127.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %tx_heartbeat_errors.i127.i, align 4
  %inc.i128.i = add i32 %67, 1
  store i32 %inc.i128.i, ptr %tx_heartbeat_errors.i127.i, align 4
  %68 = ptrtoint ptr %chip_id.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %chip_id.i.i, align 4
  %70 = zext i8 %69 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.123)
  switch i8 %69, label %if.then31.i.land.end.i140.i_crit_edge [
    i8 10, label %if.then.i132.i
    i8 -80, label %land.rhs.i138.i
  ]

if.then31.i.land.end.i140.i_crit_edge:            ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %land.end.i140.i

if.then.i132.i:                                   ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %71 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev_id, align 4
  %add.ptr.i.i131.i = getelementptr i8, ptr %72, i32 3480
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i131.i, i16 128) #20, !srcloc !311
  br label %if.end32.i

land.rhs.i138.i:                                  ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #22
  %chip_rev.i135.i = getelementptr inbounds %struct.skge_hw, ptr %dev_id, i32 0, i32 6
  %73 = ptrtoint ptr %chip_rev.i135.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %chip_rev.i135.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %cmp6.i136.i = icmp eq i8 %74, 0
  %phi.cast.i137.i = select i1 %cmp6.i136.i, i8 32, i8 16
  br label %land.end.i140.i

land.end.i140.i:                                  ; preds = %land.rhs.i138.i, %if.then31.i.land.end.i140.i_crit_edge
  %75 = phi i8 [ %phi.cast.i137.i, %land.rhs.i138.i ], [ 16, %if.then31.i.land.end.i140.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  tail call void @arm_heavy_mb() #20
  %76 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev_id, align 4
  %add.ptr.i16.i139.i = getelementptr i8, ptr %77, i32 3528
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i16.i139.i, i8 %75) #20, !srcloc !305
  br label %if.end32.i

if.end32.i:                                       ; preds = %land.end.i140.i, %if.then.i132.i, %if.end28.i.if.end32.i_crit_edge
  %and33.i = and i32 %37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool34.not.i = icmp eq i32 %and33.i, 0
  br i1 %tobool34.not.i, label %if.end32.i.if.end41.i_crit_edge, label %do.end38.i

if.end32.i.if.end41.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end41.i

do.end38.i:                                       ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #22
  %dev39.i = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  %dev40.i = getelementptr inbounds %struct.skge_hw, ptr %dev_id, i32 0, i32 4
  %78 = ptrtoint ptr %dev40.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev40.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev39.i, ptr noundef nonnull @.str.21, ptr noundef %79) #24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !306
  tail call void @arm_heavy_mb() #20
  %80 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev_id, align 4
  %add.ptr.i142.i = getelementptr i8, ptr %81, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i142.i, i32 134217728) #20, !srcloc !307
  br label %if.end41.i

if.end41.i:                                       ; preds = %do.end38.i, %if.end32.i.if.end41.i_crit_edge
  %and42.i = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i)
  %tobool43.not.i = icmp eq i32 %and42.i, 0
  br i1 %tobool43.not.i, label %if.end41.i.if.end53.i_crit_edge, label %do.end47.i

if.end41.i.if.end53.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end53.i

do.end47.i:                                       ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #22
  %dev48.i = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  %82 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx29, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev48.i, ptr noundef nonnull @.str.21, ptr noundef %83) #24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !306
  tail call void @arm_heavy_mb() #20
  %84 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev_id, align 4
  %add.ptr.i143.i = getelementptr i8, ptr %85, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i143.i, i32 134217728) #20, !srcloc !307
  br label %if.end53.i

if.end53.i:                                       ; preds = %do.end47.i, %if.end41.i.if.end53.i_crit_edge
  %and54.i = and i32 %37, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54.i)
  %tobool55.not.i = icmp eq i32 %and54.i, 0
  br i1 %tobool55.not.i, label %if.end53.i.out_crit_edge, label %if.then56.i

if.end53.i.out_crit_edge:                         ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

if.then56.i:                                      ; preds = %if.end53.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pci_status.i) #20
  %86 = ptrtoint ptr %pci_status.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 -1, ptr %pci_status.i, align 2, !annotation !312
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pci_cmd.i) #20
  %87 = ptrtoint ptr %pci_cmd.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 -1, ptr %pci_cmd.i, align 2, !annotation !312
  %call57.i = call i32 @pci_read_config_word(ptr noundef %33, i32 noundef 4, ptr noundef nonnull %pci_cmd.i) #20
  %call58.i = call i32 @pci_read_config_word(ptr noundef %33, i32 noundef 6, ptr noundef nonnull %pci_status.i) #20
  %dev62.i = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  %88 = ptrtoint ptr %pci_cmd.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %pci_cmd.i, align 2
  %conv.i = zext i16 %89 to i32
  %90 = ptrtoint ptr %pci_status.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %pci_status.i, align 2
  %conv63.i = zext i16 %91 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev62.i, ptr noundef nonnull @.str.26, i32 noundef %conv.i, i32 noundef %conv63.i) #24
  %92 = ptrtoint ptr %pci_status.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %pci_status.i, align 2
  %94 = and i16 %93, -1792
  store i16 %94, ptr %pci_status.i, align 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  call void @arm_heavy_mb() #20
  %95 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev_id, align 4
  %add.ptr.i144.i = getelementptr i8, ptr %96, i32 344
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i144.i, i8 2) #20, !srcloc !305
  %97 = ptrtoint ptr %pci_cmd.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %pci_cmd.i, align 2
  %99 = or i16 %98, 320
  %call70.i = call i32 @pci_write_config_word(ptr noundef %33, i32 noundef 4, i16 noundef zeroext %99) #20
  %100 = ptrtoint ptr %pci_status.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %pci_status.i, align 2
  %call71.i = call i32 @pci_write_config_word(ptr noundef %33, i32 noundef 6, i16 noundef zeroext %101) #20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  call void @arm_heavy_mb() #20
  %102 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev_id, align 4
  %add.ptr.i145.i = getelementptr i8, ptr %103, i32 344
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i145.i, i8 1) #20, !srcloc !305
  %104 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev_id, align 4
  %add.ptr.i146.i = getelementptr i8, ptr %105, i32 16
  %106 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i146.i) #20, !srcloc !308
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !309
  %107 = and i32 %106, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool74.not.i = icmp eq i32 %107, 0
  br i1 %tobool74.not.i, label %if.then56.i.if.end82.i_crit_edge, label %do.end78.i

if.then56.i.if.end82.i_crit_edge:                 ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end82.i

do.end78.i:                                       ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #22
  %108 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %pdev1.i, align 4
  %dev80.i = getelementptr inbounds %struct.pci_dev, ptr %109, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev80.i, ptr noundef nonnull @.str.29) #24
  %110 = ptrtoint ptr %intr_mask to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %intr_mask, align 4
  %and81.i = and i32 %111, 2147483647
  store i32 %and81.i, ptr %intr_mask, align 4
  br label %if.end82.i

if.end82.i:                                       ; preds = %do.end78.i, %if.then56.i.if.end82.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pci_cmd.i) #20
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pci_status.i) #20
  br label %out

out:                                              ; preds = %if.end82.i, %if.end53.i.out_crit_edge, %if.end60.out_crit_edge, %entry.out_crit_edge, %entry.out_crit_edge118
  %tobool68.not = phi i32 [ 1, %if.end60.out_crit_edge ], [ 0, %entry.out_crit_edge ], [ 0, %entry.out_crit_edge118 ], [ 1, %if.end53.i.out_crit_edge ], [ 1, %if.end82.i ]
  %intr_mask65 = getelementptr inbounds %struct.skge_hw, ptr %dev_id, i32 0, i32 3
  %112 = ptrtoint ptr %intr_mask65 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %intr_mask65, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !306
  call void @arm_heavy_mb() #20
  %114 = call i32 @llvm.bswap.i32(i32 %113) #20
  %115 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dev_id, align 4
  %add.ptr.i116 = getelementptr i8, ptr %116, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i116, i32 %114) #20, !srcloc !307
  %117 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dev_id, align 4
  %add.ptr.i117 = getelementptr i8, ptr %118, i32 12
  %119 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i117) #20, !srcloc !308
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !309
  call void @_raw_spin_unlock(ptr noundef %hw_lock) #20
  ret i32 %tobool68.not
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @genesis_mac_init(ptr noundef readonly %hw, i32 noundef %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.skge_hw, ptr %hw, i32 0, i32 4, i32 %port
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %mtu = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mtu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500, i32 %3)
  %cmp = icmp ugt i32 %3, 1500
  %shl = shl i32 %port, 7
  %add = add i32 %shl, 3352
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %i.0244 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %add.ptr.i156 = getelementptr i8, ptr %5, i32 %add
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i156, i16 256) #20, !srcloc !311
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 4
  %add.ptr.i157 = getelementptr i8, ptr %7, i32 %add
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i157) #20, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %9 = and i16 %8, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not = icmp eq i16 %9, 0
  br i1 %tobool.not, label %if.end, label %for.body.reset_ok_crit_edge

for.body.reset_ok_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %reset_ok

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748) #20
  %inc = add nuw nsw i32 %i.0244, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %for.end, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.end:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %1, ptr noundef nonnull @.str.32) #24
  br label %reset_ok

reset_ok:                                         ; preds = %for.end, %for.body.reset_ok_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw, align 4
  %add.ptr.i158 = getelementptr i8, ptr %12, i32 %add
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i158, i16 512) #20, !srcloc !311
  %phy_type = getelementptr inbounds %struct.skge_hw, ptr %hw, i32 0, i32 9
  %13 = ptrtoint ptr %phy_type to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %phy_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp13.not = icmp eq i8 %14, 0
  br i1 %cmp13.not, label %reset_ok.sw.bb_crit_edge, label %if.end22

reset_ok.sw.bb_crit_edge:                         ; preds = %reset_ok
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb

if.end22:                                         ; preds = %reset_ok
  %15 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw, align 4
  %add.ptr.i159 = getelementptr i8, ptr %16, i32 348
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i159) #20, !srcloc !308
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !309
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %port)
  %cmp17 = icmp eq i32 %port, 0
  %r.0.v = select i1 %cmp17, i32 65537, i32 262148
  %r.0 = or i32 %18, %r.0.v
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !306
  tail call void @arm_heavy_mb() #20
  %19 = tail call i32 @llvm.bswap.i32(i32 %r.0) #20
  %20 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw, align 4
  %add.ptr.i160 = getelementptr i8, ptr %21, i32 348
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i160, i32 %19) #20, !srcloc !307
  %mul.i = shl i32 %port, 12
  %or.i = add i32 %mul.i, 8344
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %22 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw, align 4
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 %or.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 256) #20, !srcloc !311
  %24 = ptrtoint ptr %phy_type to i32
  call void @__asan_load1_noabort(i32 %24)
  %.pr = load i8, ptr %phy_type, align 4
  %25 = zext i8 %.pr to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.124)
  switch i8 %.pr, label %if.end22.sw.epilog_crit_edge [
    i8 0, label %if.end22.sw.bb_crit_edge
    i8 1, label %sw.bb25
  ]

if.end22.sw.bb_crit_edge:                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb

if.end22.sw.epilog_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end22.sw.bb_crit_edge, %reset_ok.sw.bb_crit_edge
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr.i, align 128
  %port2.i = getelementptr i8, ptr %1, i32 2536
  %28 = ptrtoint ptr %port2.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %port2.i, align 8
  %autoneg.i = getelementptr i8, ptr %1, i32 2638
  %30 = ptrtoint ptr %autoneg.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %autoneg.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %31)
  %cmp.i = icmp eq i8 %31, 1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #22
  %advertising.i = getelementptr i8, ptr %1, i32 2644
  %32 = ptrtoint ptr %advertising.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %advertising.i, align 4
  %34 = trunc i32 %33 to i16
  %35 = shl i16 %34, 2
  %36 = and i16 %35, 64
  %37 = and i16 %34, 32
  %flow_control.i = getelementptr i8, ptr %1, i32 2628
  %38 = ptrtoint ptr %flow_control.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flow_control.i, align 4
  %arrayidx.i = getelementptr [5 x i16], ptr @fiber_pause_map, i32 0, i32 %39
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %arrayidx.i, align 2
  %42 = or i16 %41, %37
  %or1744.i = or i16 %42, %36
  %call.i = tail call fastcc i32 @xm_phy_write(ptr noundef %27, i32 noundef %29, i16 noundef zeroext 4, i16 noundef zeroext %or1744.i) #20
  br label %xm_phy_init.exit

if.else.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #22
  %duplex.i = getelementptr i8, ptr %1, i32 2639
  %43 = ptrtoint ptr %duplex.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %duplex.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %44)
  %cmp20.i = icmp eq i8 %44, 1
  %spec.select45.i = select i1 %cmp20.i, i16 256, i16 0
  br label %xm_phy_init.exit

xm_phy_init.exit:                                 ; preds = %if.else.i, %if.then.i
  %ctrl.2.i = phi i16 [ 4608, %if.then.i ], [ %spec.select45.i, %if.else.i ]
  %call28.i = tail call fastcc i32 @xm_phy_write(ptr noundef %27, i32 noundef %29, i16 noundef zeroext 0, i16 noundef zeroext %ctrl.2.i) #20
  %link_timer.i = getelementptr i8, ptr %1, i32 2580
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %45 = load volatile i32, ptr @jiffies, align 128
  %add.i161 = add i32 %45, 100
  %call29.i = tail call i32 @mod_timer(ptr noundef %link_timer.i, i32 noundef %add.i161) #20
  %.pre = shl i32 %port, 12
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.end22
  %46 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %add.ptr.i, align 128
  %port2.i162 = getelementptr i8, ptr %1, i32 2536
  %48 = ptrtoint ptr %port2.i162 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %port2.i162, align 8
  %call.i163 = tail call fastcc zeroext i16 @xm_phy_read(ptr noundef %47, i32 noundef %49, i16 noundef zeroext 3) #20
  %mul.i.i = shl i32 %49, 12
  %add.i.i = add i32 %mul.i.i, 8192
  %50 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %47, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %51, i32 %add.i.i
  %52 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i) #20, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %53 = or i16 %52, 8192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %54 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %47, align 4
  %add.ptr.i.i128.i = getelementptr i8, ptr %55, i32 %add.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i128.i, i16 %53) #20, !srcloc !311
  %56 = zext i16 %call.i163 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.125)
  switch i16 %call.i163, label %sw.bb25.sw.epilog.i_crit_edge [
    i16 24644, label %for.body.preheader.i
    i16 24641, label %for.body13.preheader.i
  ]

sw.bb25.sw.epilog.i_crit_edge:                    ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog.i

for.body13.preheader.i:                           ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #22
  %call18.i = tail call fastcc i32 @xm_phy_write(ptr noundef %47, i32 noundef %49, i16 noundef zeroext 24, i16 noundef zeroext 3104) #20
  %call18.1.i = tail call fastcc i32 @xm_phy_write(ptr noundef %47, i32 noundef %49, i16 noundef zeroext 23, i16 noundef zeroext 18) #20
  %call18.2.i = tail call fastcc i32 @xm_phy_write(ptr noundef %47, i32 noundef %49, i16 noundef zeroext 21, i16 noundef zeroext 4356) #20
  %call18.3.i = tail call fastcc i32 @xm_phy_write(ptr noundef %47, i32 noundef %49, i16 noundef zeroext 23, i16 noundef zeroext 19) #20
  %call18.4.i = tail call fastcc i32 @xm_phy_write(ptr noundef %47, i32 noundef %49, i16 noundef zeroext 21, i16 noundef zeroext 1028) #20
  %call18.5.i = tail call fastcc i32 @xm_phy_write(ptr noundef %47, i32 noundef %49, i16 noundef zeroext 23, i16 noundef zeroext -32762) #20
  %call18.6.i = tail call fastcc i32 @xm_phy_write(ptr noundef %47, i32 noundef %49, i16 noundef zeroext 21, i16 noundef zeroext 306) #20
  br label %sw.epilog.sink.split.i

for.body.preheader.i:                             ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #22
  %call8.i = tail call fastcc i32 @xm_phy_write(ptr noundef %47, i32 noundef %49, i16 noundef zeroext 24, i16 noundef zeroext 3104) #20
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %for.body.preheader.i, %for.body13.preheader.i
  %.sink138.i = phi i16 [ -32762, %for.body13.preheader.i ], [ 18, %for.body.preheader.i ]
  %.sink137.i = phi i16 [ 562, %for.body13.preheader.i ], [ 4612, %for.body.preheader.i ]
  %.sink136.i = phi i16 [ -32755, %for.body13.preheader.i ], [ 19, %for.body.preheader.i ]
  %.sink.i = phi i16 [ 15, %for.body13.preheader.i ], [ 2564, %for.body.preheader.i ]
  %call18.7.i = tail call fastcc i32 @xm_phy_write(ptr noundef %47, i32 noundef %49, i16 noundef zeroext 23, i16 noundef zeroext %.sink138.i) #20
  %call18.8.i = tail call fastcc i32 @xm_phy_write(ptr noundef %47, i32 noundef %49, i16 noundef zeroext 21, i16 noundef zeroext %.sink137.i) #20
  %call18.9.i = tail call fastcc i32 @xm_phy_write(ptr noundef %47, i32 noundef %49, i16 noundef zeroext 23, i16 noundef zeroext %.sink136.i) #20
  %call18.10.i = tail call fastcc i32 @xm_phy_write(ptr noundef %47, i32 noundef %49, i16 noundef zeroext 21, i16 noundef zeroext %.sink.i) #20
  %call18.11.i = tail call fastcc i32 @xm_phy_write(ptr noundef %47, i32 noundef %49, i16 noundef zeroext 24, i16 noundef zeroext 1056) #20
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.sink.split.i, %sw.bb25.sw.epilog.i_crit_edge
  %call22.i = tail call fastcc zeroext i16 @xm_phy_read(ptr noundef %47, i32 noundef %49, i16 noundef zeroext 24) #20
  %57 = or i16 %call22.i, 32
  %call26.i = tail call fastcc i32 @xm_phy_write(ptr noundef %47, i32 noundef %49, i16 noundef zeroext 24, i16 noundef zeroext %57) #20
  %or.i.i = or i32 %add.i.i, 144
  %58 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %47, align 4
  %add.ptr.i.i131.i = getelementptr i8, ptr %59, i32 %or.i.i
  %60 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i131.i) #20, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %autoneg.i164 = getelementptr i8, ptr %1, i32 2638
  %61 = ptrtoint ptr %autoneg.i164 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %autoneg.i164, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %62)
  %cmp29.i = icmp eq i8 %62, 1
  br i1 %cmp29.i, label %if.then.i166, label %if.else.i168

if.then.i166:                                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #22
  %advertising.i165 = getelementptr i8, ptr %1, i32 2644
  %63 = ptrtoint ptr %advertising.i165 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %advertising.i165, align 4
  %and.i = and i32 %64, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool.not.i, i16 1024, i16 1280
  %65 = trunc i32 %64 to i16
  %66 = shl i16 %65, 4
  %67 = and i16 %66, 512
  %68 = or i16 %67, %spec.select.i
  br label %if.end56.i

if.else.i168:                                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #22
  %duplex.i167 = getelementptr i8, ptr %1, i32 2639
  %69 = ptrtoint ptr %duplex.i167 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %duplex.i167, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %70)
  %cmp48.i = icmp eq i8 %70, 1
  %spec.select125.i = select i1 %cmp48.i, i16 320, i16 64
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.else.i168, %if.then.i166
  %.sink139.i = phi i16 [ 4096, %if.else.i168 ], [ %68, %if.then.i166 ]
  %ctl.1.i = phi i16 [ %spec.select125.i, %if.else.i168 ], [ 4672, %if.then.i166 ]
  %call55.i = tail call fastcc i32 @xm_phy_write(ptr noundef %47, i32 noundef %49, i16 noundef zeroext 9, i16 noundef zeroext %.sink139.i) #20
  %flow_control.i169 = getelementptr i8, ptr %1, i32 2628
  %71 = ptrtoint ptr %flow_control.i169 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %flow_control.i169, align 4
  %arrayidx57.i = getelementptr [5 x i16], ptr @phy_pause_map, i32 0, i32 %72
  %73 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %arrayidx57.i, align 2
  %75 = or i16 %74, 1
  %call61.i = tail call fastcc i32 @xm_phy_write(ptr noundef %47, i32 noundef %49, i16 noundef zeroext 4, i16 noundef zeroext %75) #20
  %arrayidx62.i = getelementptr %struct.skge_hw, ptr %47, i32 0, i32 4, i32 %49
  %76 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx62.i, align 4
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %77, i32 0, i32 20
  %78 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %mtu.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500, i32 %79)
  %cmp63.i = icmp ugt i32 %79, 1500
  br i1 %cmp63.i, label %if.then65.i, label %if.end56.i.bcom_phy_init.exit_crit_edge

if.end56.i.bcom_phy_init.exit_crit_edge:          ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %bcom_phy_init.exit

if.then65.i:                                      ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #22
  %call66.i = tail call fastcc i32 @xm_phy_write(ptr noundef %47, i32 noundef %49, i16 noundef zeroext 24, i16 noundef zeroext 17408) #20
  br label %bcom_phy_init.exit

bcom_phy_init.exit:                               ; preds = %if.then65.i, %if.end56.i.bcom_phy_init.exit_crit_edge
  %ext.0.i = phi i16 [ 33, %if.then65.i ], [ 32, %if.end56.i.bcom_phy_init.exit_crit_edge ]
  %call71.i = tail call fastcc i32 @xm_phy_write(ptr noundef %47, i32 noundef %49, i16 noundef zeroext 16, i16 noundef zeroext %ext.0.i) #20
  %call72.i = tail call fastcc i32 @xm_phy_write(ptr noundef %47, i32 noundef %49, i16 noundef zeroext 0, i16 noundef zeroext %ctl.1.i) #20
  %call73.i = tail call fastcc i32 @xm_phy_write(ptr noundef %47, i32 noundef %49, i16 noundef zeroext 27, i16 noundef zeroext -17423) #20
  tail call fastcc void @bcom_check_link(ptr noundef %hw, i32 noundef %port)
  br label %sw.epilog

sw.epilog:                                        ; preds = %bcom_phy_init.exit, %xm_phy_init.exit, %if.end22.sw.epilog_crit_edge
  %mul.i.i171.pre-phi = phi i32 [ %mul.i, %bcom_phy_init.exit ], [ %mul.i, %if.end22.sw.epilog_crit_edge ], [ %.pre, %xm_phy_init.exit ]
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %80 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev_addr, align 64
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %81, align 1
  %conv1.i = zext i8 %83 to i16
  %arrayidx2.i = getelementptr i8, ptr %81, i32 1
  %84 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx2.i, align 1
  %conv4.i = zext i8 %85 to i16
  %shl.i = shl nuw i16 %conv4.i, 8
  %or.i170 = or i16 %shl.i, %conv1.i
  %add.i.i172 = add i32 %mul.i.i171.pre-phi, 8192
  %or.i.i173 = or i32 %add.i.i172, 528
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %86 = tail call i16 @llvm.bswap.i16(i16 %or.i170) #20
  %87 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %hw, align 4
  %add.ptr.i.i.i174 = getelementptr i8, ptr %88, i32 %or.i.i173
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i174, i16 %86) #20, !srcloc !311
  %arrayidx6.i = getelementptr i8, ptr %81, i32 2
  %89 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx6.i, align 1
  %conv8.i = zext i8 %90 to i16
  %arrayidx9.i = getelementptr i8, ptr %81, i32 3
  %91 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx9.i, align 1
  %conv11.i = zext i8 %92 to i16
  %shl12.i = shl nuw i16 %conv11.i, 8
  %or13.i = or i16 %shl12.i, %conv8.i
  %or.i39.i = or i32 %add.i.i172, 532
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %93 = tail call i16 @llvm.bswap.i16(i16 %or13.i) #20
  %94 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %hw, align 4
  %add.ptr.i.i40.i = getelementptr i8, ptr %95, i32 %or.i39.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i40.i, i16 %93) #20, !srcloc !311
  %arrayidx16.i = getelementptr i8, ptr %81, i32 4
  %96 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx16.i, align 1
  %conv18.i = zext i8 %97 to i16
  %arrayidx19.i = getelementptr i8, ptr %81, i32 5
  %98 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx19.i, align 1
  %conv21.i = zext i8 %99 to i16
  %shl22.i = shl nuw i16 %conv21.i, 8
  %or23.i = or i16 %shl22.i, %conv18.i
  %or.i44.i = or i32 %add.i.i172, 536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %100 = tail call i16 @llvm.bswap.i16(i16 %or23.i) #20
  %101 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %hw, align 4
  %add.ptr.i.i45.i = getelementptr i8, ptr %102, i32 %or.i44.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i45.i, i16 %100) #20, !srcloc !311
  br label %for.body29

for.body29:                                       ; preds = %for.body29.for.body29_crit_edge, %sw.epilog
  %i.1245 = phi i32 [ 1, %sw.epilog ], [ %inc33, %for.body29.for.body29_crit_edge ]
  %shl30 = shl i32 %i.1245, 4
  %shl.i.i = add nuw nsw i32 %shl30, 256
  %or.i.i177 = or i32 %shl.i.i, %add.i.i172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %103 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %hw, align 4
  %add.ptr.i.i.i178 = getelementptr i8, ptr %104, i32 %or.i.i177
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i178, i16 0) #20, !srcloc !311
  %shl.i38.i = add nuw nsw i32 %shl30, 260
  %or.i39.i179 = or i32 %shl.i38.i, %add.i.i172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %105 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %hw, align 4
  %add.ptr.i.i40.i180 = getelementptr i8, ptr %106, i32 %or.i39.i179
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i40.i180, i16 0) #20, !srcloc !311
  %shl.i43.i = add nuw nsw i32 %shl30, 264
  %or.i44.i181 = or i32 %shl.i43.i, %add.i.i172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %107 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %hw, align 4
  %add.ptr.i.i45.i182 = getelementptr i8, ptr %108, i32 %or.i44.i181
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i45.i182, i16 0) #20, !srcloc !311
  %inc33 = add nuw nsw i32 %i.1245, 1
  %exitcond246.not = icmp eq i32 %inc33, 16
  br i1 %exitcond246.not, label %for.end34, label %for.body29.for.body29_crit_edge

for.body29.for.body29_crit_edge:                  ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body29

for.end34:                                        ; preds = %for.body29
  %or.i185 = or i32 %add.i.i172, 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %109 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %hw, align 4
  %add.ptr.i.i186 = getelementptr i8, ptr %110, i32 %or.i185
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i186, i16 768) #20, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %111 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %hw, align 4
  %add.ptr.i.i190 = getelementptr i8, ptr %112, i32 %or.i185
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i190, i16 768) #20, !srcloc !311
  %or.i193 = or i32 %add.i.i172, 564
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %113 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %hw, align 4
  %add.ptr.i.i194 = getelementptr i8, ptr %114, i32 %or.i193
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i194, i16 -22011) #20, !srcloc !311
  %spec.select = select i1 %cmp, i16 400, i16 272
  %duplex = getelementptr i8, ptr %1, i32 2639
  %115 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %duplex, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %cmp40 = icmp eq i8 %116, 0
  %or43 = zext i1 %cmp40 to i16
  %r.2 = or i16 %spec.select, %or43
  %or.i197 = or i32 %add.i.i172, 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %117 = tail call i16 @llvm.bswap.i16(i16 %r.2) #20
  %118 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %hw, align 4
  %add.ptr.i.i198 = getelementptr i8, ptr %119, i32 %or.i197
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i198, i16 %117) #20, !srcloc !311
  %or.i201 = or i32 %add.i.i172, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %120 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %hw, align 4
  %add.ptr.i.i202 = getelementptr i8, ptr %121, i32 %or.i201
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i202, i16 256) #20, !srcloc !311
  %ports = getelementptr inbounds %struct.skge_hw, ptr %hw, i32 0, i32 8
  %122 = ptrtoint ptr %ports to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %ports, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %123)
  %cmp47 = icmp ult i8 %123, 2
  %cmp.not = xor i1 %cmp, true
  %brmerge = select i1 %cmp47, i1 true, i1 %cmp.not
  %or.i209 = or i32 %add.i.i172, 200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20
  tail call void @arm_heavy_mb() #20
  %124 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %hw, align 4
  %add.ptr.i.i210 = getelementptr i8, ptr %125, i32 %or.i209
  br i1 %brmerge, label %if.else51, label %if.then50

if.then50:                                        ; preds = %for.end34
  call void @__sanitizer_cov_trace_pc() #22
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i210, i16 -1021) #20, !srcloc !311
  br label %if.end52

if.else51:                                        ; preds = %for.end34
  call void @__sanitizer_cov_trace_pc() #22
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i210, i16 2) #20, !srcloc !311
  br label %if.end52

if.end52:                                         ; preds = %if.else51, %if.then50
  %or.i213 = or i32 %add.i.i172, 584
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %126 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %hw, align 4
  %add.ptr.i.i214 = getelementptr i8, ptr %127, i32 %or.i213
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i214, i16 -32689) #20, !srcloc !311
  %or5.i = or i32 %add.i.i172, 588
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %128 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %hw, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %129, i32 %or5.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i11.i, i16 0) #20, !srcloc !311
  %or.i217 = or i32 %add.i.i172, 1048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %130 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %hw, align 4
  %add.ptr.i.i218 = getelementptr i8, ptr %131, i32 %or.i217
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i218, i16 1536) #20, !srcloc !311
  %or5.i219 = or i32 %add.i.i172, 1052
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %132 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %hw, align 4
  %add.ptr.i11.i220 = getelementptr i8, ptr %133, i32 %or5.i219
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i11.i220, i16 0) #20, !srcloc !311
  %or.i223 = or i32 %add.i.i172, 1056
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %134 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %hw, align 4
  %add.ptr.i.i224 = getelementptr i8, ptr %135, i32 %or.i223
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i224, i16 1536) #20, !srcloc !311
  %or5.i225 = or i32 %add.i.i172, 1060
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %136 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %hw, align 4
  %add.ptr.i11.i226 = getelementptr i8, ptr %137, i32 %or5.i225
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i11.i226, i16 0) #20, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %138 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %hw, align 4
  %add.ptr.i227 = getelementptr i8, ptr %139, i32 440
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i227, i16 512) #20, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  tail call void @arm_heavy_mb() #20
  %140 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %hw, align 4
  %add.ptr.i228 = getelementptr i8, ptr %141, i32 432
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i228, i8 72) #20, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  tail call void @arm_heavy_mb() #20
  %142 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %hw, align 4
  %add.ptr.i229 = getelementptr i8, ptr %143, i32 433
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i229, i8 72) #20, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  tail call void @arm_heavy_mb() #20
  %144 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %hw, align 4
  %add.ptr.i230 = getelementptr i8, ptr %145, i32 434
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i230, i8 72) #20, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  tail call void @arm_heavy_mb() #20
  %146 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %hw, align 4
  %add.ptr.i231 = getelementptr i8, ptr %147, i32 435
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i231, i8 72) #20, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  tail call void @arm_heavy_mb() #20
  %148 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %hw, align 4
  %add.ptr.i232 = getelementptr i8, ptr %149, i32 448
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i232, i8 0) #20, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  tail call void @arm_heavy_mb() #20
  %150 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %hw, align 4
  %add.ptr.i233 = getelementptr i8, ptr %151, i32 449
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i233, i8 0) #20, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  tail call void @arm_heavy_mb() #20
  %152 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %hw, align 4
  %add.ptr.i234 = getelementptr i8, ptr %153, i32 450
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i234, i8 0) #20, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  tail call void @arm_heavy_mb() #20
  %154 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %hw, align 4
  %add.ptr.i235 = getelementptr i8, ptr %155, i32 451
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i235, i8 0) #20, !srcloc !305
  %add54 = add i32 %shl, 3100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  tail call void @arm_heavy_mb() #20
  %156 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %hw, align 4
  %add.ptr.i236 = getelementptr i8, ptr %157, i32 %add54
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i236, i8 2) #20, !srcloc !305
  %add56 = add i32 %shl, 3096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %158 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %hw, align 4
  %add.ptr.i237 = getelementptr i8, ptr %159, i32 %add56
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i237, i16 8) #20, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  tail call void @arm_heavy_mb() #20
  %160 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %hw, align 4
  %add.ptr.i238 = getelementptr i8, ptr %161, i32 %add54
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i238, i8 8) #20, !srcloc !305
  %add60 = add i32 %shl, 3356
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  tail call void @arm_heavy_mb() #20
  %162 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %hw, align 4
  %add.ptr.i239 = getelementptr i8, ptr %163, i32 %add60
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i239, i8 2) #20, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %164 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %hw, align 4
  %add.ptr.i240 = getelementptr i8, ptr %165, i32 %add
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i240, i16 8232) #20, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  tail call void @arm_heavy_mb() #20
  %166 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %hw, align 4
  %add.ptr.i241 = getelementptr i8, ptr %167, i32 %add60
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i241, i8 8) #20, !srcloc !305
  br i1 %cmp, label %if.then66, label %if.else69

if.then66:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %168 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %hw, align 4
  %add.ptr.i242 = getelementptr i8, ptr %169, i32 %add56
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i242, i16 8192) #20, !srcloc !311
  br label %if.end73

if.else69:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %port)
  %cmp70 = icmp eq i32 %port, 0
  %conv72 = select i1 %cmp70, i16 128, i16 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %170 = tail call i16 @llvm.bswap.i16(i16 %conv72) #20
  %171 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %hw, align 4
  %add.ptr.i243 = getelementptr i8, ptr %172, i32 496
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i243, i16 %170) #20, !srcloc !311
  br label %if.end73

if.end73:                                         ; preds = %if.else69, %if.then66
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @yukon_mac_init(ptr noundef readonly %hw, i32 noundef %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.skge_hw, ptr %hw, i32 0, i32 4, i32 %port
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %2 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_addr, align 64
  %chip_id = getelementptr inbounds %struct.skge_hw, ptr %hw, i32 0, i32 5
  %4 = ptrtoint ptr %chip_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -79, i8 %5)
  %cmp = icmp eq i8 %5, -79
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %chip_rev = getelementptr inbounds %struct.skge_hw, ptr %hw, i32 0, i32 6
  %6 = ptrtoint ptr %chip_rev to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %chip_rev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %7)
  %cmp5 = icmp ugt i8 %7, 6
  br i1 %cmp5, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw, align 4
  %add.ptr.i211 = getelementptr i8, ptr %9, i32 348
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i211) #20, !srcloc !308
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !309
  %11 = or i32 %10, 131074
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !306
  tail call void @arm_heavy_mb() #20
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw, align 4
  %add.ptr.i212 = getelementptr i8, ptr %13, i32 348
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i212, i32 %11) #20, !srcloc !307
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %shl = shl i32 %port, 7
  %add = add i32 %shl, 3844
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !306
  tail call void @arm_heavy_mb() #20
  %14 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw, align 4
  %add.ptr.i213 = getelementptr i8, ptr %15, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i213, i32 16777216) #20, !srcloc !307
  %add9 = add i32 %shl, 3840
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !306
  tail call void @arm_heavy_mb() #20
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw, align 4
  %add.ptr.i214 = getelementptr i8, ptr %17, i32 %add9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i214, i32 16777216) #20, !srcloc !307
  %18 = ptrtoint ptr %chip_id to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -79, i8 %19)
  %cmp12 = icmp eq i8 %19, -79
  br i1 %cmp12, label %land.lhs.true14, label %if.end.if.end22_crit_edge

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end22

land.lhs.true14:                                  ; preds = %if.end
  %chip_rev15 = getelementptr inbounds %struct.skge_hw, ptr %hw, i32 0, i32 6
  %20 = ptrtoint ptr %chip_rev15 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %chip_rev15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %21)
  %cmp17 = icmp ugt i8 %21, 6
  br i1 %cmp17, label %if.then19, label %land.lhs.true14.if.end22_crit_edge

land.lhs.true14.if.end22_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end22

if.then19:                                        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #22
  %22 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw, align 4
  %add.ptr.i215 = getelementptr i8, ptr %23, i32 348
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i215) #20, !srcloc !308
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !309
  %25 = and i32 %24, -131075
  %26 = or i32 %25, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !306
  tail call void @arm_heavy_mb() #20
  %27 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw, align 4
  %add.ptr.i216 = getelementptr i8, ptr %28, i32 348
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i216, i32 %26) #20, !srcloc !307
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %land.lhs.true14.if.end22_crit_edge, %if.end.if.end22_crit_edge
  %copper = getelementptr inbounds %struct.skge_hw, ptr %hw, i32 0, i32 7
  %29 = ptrtoint ptr %copper to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %copper, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not = icmp eq i8 %30, 0
  %or24 = select i1 %tobool.not, i32 192798720, i32 201187328
  %or27 = or i32 %or24, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !306
  tail call void @arm_heavy_mb() #20
  %31 = tail call i32 @llvm.bswap.i32(i32 %or27) #20
  %32 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw, align 4
  %add.ptr.i217 = getelementptr i8, ptr %33, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i217, i32 %31) #20, !srcloc !307
  %or30 = or i32 %or24, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !306
  tail call void @arm_heavy_mb() #20
  %34 = tail call i32 @llvm.bswap.i32(i32 %or30) #20
  %35 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw, align 4
  %add.ptr.i218 = getelementptr i8, ptr %36, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i218, i32 %34) #20, !srcloc !307
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !306
  tail call void @arm_heavy_mb() #20
  %37 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hw, align 4
  %add.ptr.i219 = getelementptr i8, ptr %38, i32 %add9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i219, i32 167772160) #20, !srcloc !307
  %autoneg = getelementptr i8, ptr %1, i32 2638
  %39 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %autoneg, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %cmp34 = icmp eq i8 %40, 0
  br i1 %cmp34, label %if.then36, label %if.end22.if.end55_crit_edge

if.end22.if.end55_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end55

if.then36:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #22
  %mul.i = shl i32 %port, 12
  %add1.i = add i32 %mul.i, 10244
  %41 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hw, align 4
  %add.ptr.i.i = getelementptr i8, ptr %42, i32 %add1.i
  %43 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #20, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %44 = or i16 %43, 1792
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %45 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hw, align 4
  %add.ptr.i.i223 = getelementptr i8, ptr %46, i32 %add1.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i223, i16 %44) #20, !srcloc !311
  %speed = getelementptr i8, ptr %1, i32 2640
  %47 = ptrtoint ptr %speed to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %speed, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 100, i16 %48)
  %switch.selectcmp = icmp eq i16 %48, 100
  %switch.select = select i1 %switch.selectcmp, i32 15, i32 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 1000, i16 %48)
  %switch.selectcmp209 = icmp eq i16 %48, 1000
  %switch.select210 = select i1 %switch.selectcmp209, i32 143, i32 %switch.select
  %duplex = getelementptr i8, ptr %1, i32 2639
  %49 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %duplex, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %50)
  %cmp50 = icmp eq i8 %50, 1
  %or53 = or i32 %switch.select210, 32
  %spec.select = select i1 %cmp50, i32 %or53, i32 %switch.select210
  br label %if.end55

if.end55:                                         ; preds = %if.then36, %if.end22.if.end55_crit_edge
  %reg.1 = phi i32 [ %spec.select, %if.then36 ], [ 168, %if.end22.if.end55_crit_edge ]
  %flow_control = getelementptr i8, ptr %1, i32 2628
  %51 = ptrtoint ptr %flow_control to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flow_control, align 4
  %53 = zext i32 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.126)
  switch i32 %52, label %if.end55.sw.epilog63_crit_edge [
    i32 1, label %sw.bb56
    i32 2, label %sw.bb60
  ]

if.end55.sw.epilog63_crit_edge:                   ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog63

sw.bb56:                                          ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !306
  tail call void @arm_heavy_mb() #20
  %54 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hw, align 4
  %add.ptr.i224 = getelementptr i8, ptr %55, i32 %add9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i224, i32 67108864) #20, !srcloc !307
  %or59 = or i32 %reg.1, 8210
  br label %sw.epilog63

sw.bb60:                                          ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #22
  %or61 = or i32 %reg.1, 18
  br label %sw.epilog63

sw.epilog63:                                      ; preds = %sw.bb60, %sw.bb56, %if.end55.sw.epilog63_crit_edge
  %reg.2 = phi i32 [ %reg.1, %if.end55.sw.epilog63_crit_edge ], [ %or61, %sw.bb60 ], [ %or59, %sw.bb56 ]
  %conv64 = trunc i32 %reg.2 to i16
  %mul.i225 = shl i32 %port, 12
  %add1.i227 = add i32 %mul.i225, 10244
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %56 = tail call i16 @llvm.bswap.i16(i16 %conv64) #20
  %57 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %hw, align 4
  %add.ptr.i.i228 = getelementptr i8, ptr %58, i32 %add1.i227
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i228, i16 %56) #20, !srcloc !311
  %add66 = add i32 %shl, 3848
  %59 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %hw, align 4
  %add.ptr.i229 = getelementptr i8, ptr %60, i32 %add66
  %61 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i229) #20, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  tail call fastcc void @yukon_init(ptr noundef %hw, i32 noundef %port)
  %add1.i232 = add i32 %mul.i225, 10376
  %62 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %hw, align 4
  %add.ptr.i.i233 = getelementptr i8, ptr %63, i32 %add1.i232
  %64 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i233) #20, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %65 = or i16 %64, 8192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %66 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %hw, align 4
  %add.ptr.i.i237 = getelementptr i8, ptr %67, i32 %add1.i232
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i237, i16 %65) #20, !srcloc !311
  %add74 = add i32 %mul.i225, 10496
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %sw.epilog63
  %i.0312 = phi i32 [ 0, %sw.epilog63 ], [ %inc, %for.body.for.body_crit_edge ]
  %mul = shl i32 %i.0312, 3
  %add1.i240 = add nuw nsw i32 %add74, %mul
  %68 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %hw, align 4
  %add.ptr.i.i241 = getelementptr i8, ptr %69, i32 %add1.i240
  %70 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i241) #20, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %inc = add nuw nsw i32 %i.0312, 1
  %exitcond.not = icmp eq i32 %inc, 44
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.end:                                          ; preds = %for.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %71 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %hw, align 4
  %add.ptr.i.i245 = getelementptr i8, ptr %72, i32 %add1.i232
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i245, i16 %64) #20, !srcloc !311
  %add1.i248 = add i32 %mul.i225, 10248
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %73 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %hw, align 4
  %add.ptr.i.i249 = getelementptr i8, ptr %74, i32 %add1.i248
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i249, i16 16) #20, !srcloc !311
  %add1.i252 = add i32 %mul.i225, 10252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %75 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %hw, align 4
  %add.ptr.i.i253 = getelementptr i8, ptr %76, i32 %add1.i252
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i253, i16 224) #20, !srcloc !311
  %add1.i256 = add i32 %mul.i225, 10256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %77 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %hw, align 4
  %add.ptr.i.i257 = getelementptr i8, ptr %78, i32 %add1.i256
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i257, i16 -1) #20, !srcloc !311
  %add1.i260 = add i32 %mul.i225, 10260
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %79 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %hw, align 4
  %add.ptr.i.i261 = getelementptr i8, ptr %80, i32 %add1.i260
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i261, i16 -16169) #20, !srcloc !311
  %81 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx, align 4
  %mtu = getelementptr inbounds %struct.net_device, ptr %82, i32 0, i32 20
  %83 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %mtu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500, i32 %84)
  %cmp79 = icmp ugt i32 %84, 1500
  %spec.select208 = select i1 %cmp79, i16 8990, i16 8734
  %add1.i264 = add i32 %mul.i225, 10264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %85 = tail call i16 @llvm.bswap.i16(i16 %spec.select208) #20
  %86 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %hw, align 4
  %add.ptr.i.i265 = getelementptr i8, ptr %87, i32 %add1.i264
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i265, i16 %85) #20, !srcloc !311
  %88 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %3, align 1
  %conv1.i = zext i8 %89 to i16
  %arrayidx2.i = getelementptr i8, ptr %3, i32 1
  %90 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx2.i, align 1
  %conv4.i = zext i8 %91 to i16
  %shl.i = shl nuw i16 %conv4.i, 8
  %or.i = or i16 %shl.i, %conv1.i
  %add1.i.i = add i32 %mul.i225, 10268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %92 = tail call i16 @llvm.bswap.i16(i16 %or.i) #20
  %93 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %hw, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %94, i32 %add1.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i, i16 %92) #20, !srcloc !311
  %arrayidx6.i = getelementptr i8, ptr %3, i32 2
  %95 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx6.i, align 1
  %conv8.i = zext i8 %96 to i16
  %arrayidx9.i = getelementptr i8, ptr %3, i32 3
  %97 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx9.i, align 1
  %conv11.i = zext i8 %98 to i16
  %shl12.i = shl nuw i16 %conv11.i, 8
  %or13.i = or i16 %shl12.i, %conv8.i
  %add1.i38.i = add i32 %mul.i225, 10272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %99 = tail call i16 @llvm.bswap.i16(i16 %or13.i) #20
  %100 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %hw, align 4
  %add.ptr.i.i39.i = getelementptr i8, ptr %101, i32 %add1.i38.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i39.i, i16 %99) #20, !srcloc !311
  %arrayidx16.i = getelementptr i8, ptr %3, i32 4
  %102 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx16.i, align 1
  %conv18.i = zext i8 %103 to i16
  %arrayidx19.i = getelementptr i8, ptr %3, i32 5
  %104 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx19.i, align 1
  %conv21.i = zext i8 %105 to i16
  %shl22.i = shl nuw i16 %conv21.i, 8
  %or23.i = or i16 %shl22.i, %conv18.i
  %add1.i42.i = add i32 %mul.i225, 10276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %106 = tail call i16 @llvm.bswap.i16(i16 %or23.i) #20
  %107 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %hw, align 4
  %add.ptr.i.i43.i = getelementptr i8, ptr %108, i32 %add1.i42.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i43.i, i16 %106) #20, !srcloc !311
  %109 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %3, align 1
  %conv1.i266 = zext i8 %110 to i16
  %111 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx2.i, align 1
  %conv4.i268 = zext i8 %112 to i16
  %shl.i269 = shl nuw i16 %conv4.i268, 8
  %or.i270 = or i16 %shl.i269, %conv1.i266
  %add1.i.i273 = add i32 %mul.i225, 10280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %113 = tail call i16 @llvm.bswap.i16(i16 %or.i270) #20
  %114 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %hw, align 4
  %add.ptr.i.i.i274 = getelementptr i8, ptr %115, i32 %add1.i.i273
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i274, i16 %113) #20, !srcloc !311
  %116 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx6.i, align 1
  %conv8.i276 = zext i8 %117 to i16
  %118 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx9.i, align 1
  %conv11.i278 = zext i8 %119 to i16
  %shl12.i279 = shl nuw i16 %conv11.i278, 8
  %or13.i280 = or i16 %shl12.i279, %conv8.i276
  %add1.i38.i281 = add i32 %mul.i225, 10284
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %120 = tail call i16 @llvm.bswap.i16(i16 %or13.i280) #20
  %121 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %hw, align 4
  %add.ptr.i.i39.i282 = getelementptr i8, ptr %122, i32 %add1.i38.i281
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i39.i282, i16 %120) #20, !srcloc !311
  %123 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx16.i, align 1
  %conv18.i284 = zext i8 %124 to i16
  %125 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %arrayidx19.i, align 1
  %conv21.i286 = zext i8 %126 to i16
  %shl22.i287 = shl nuw i16 %conv21.i286, 8
  %or23.i288 = or i16 %shl22.i287, %conv18.i284
  %add1.i42.i289 = add i32 %mul.i225, 10288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %127 = tail call i16 @llvm.bswap.i16(i16 %or23.i288) #20
  %128 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %hw, align 4
  %add.ptr.i.i43.i290 = getelementptr i8, ptr %129, i32 %add1.i42.i289
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i43.i290, i16 %127) #20, !srcloc !311
  %add1.i293 = add i32 %mul.i225, 10320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %130 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %hw, align 4
  %add.ptr.i.i294 = getelementptr i8, ptr %131, i32 %add1.i293
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i294, i16 0) #20, !srcloc !311
  %add1.i297 = add i32 %mul.i225, 10324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %132 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %hw, align 4
  %add.ptr.i.i298 = getelementptr i8, ptr %133, i32 %add1.i297
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i298, i16 0) #20, !srcloc !311
  %add1.i301 = add i32 %mul.i225, 10328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %134 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %hw, align 4
  %add.ptr.i.i302 = getelementptr i8, ptr %135, i32 %add1.i301
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i302, i16 0) #20, !srcloc !311
  %add86 = add i32 %shl, 3148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %136 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %hw, align 4
  %add.ptr.i303 = getelementptr i8, ptr %137, i32 %add86
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i303, i16 25368) #20, !srcloc !311
  %138 = ptrtoint ptr %chip_id to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -80, i8 %139)
  %cmp.not.i = icmp eq i8 %139, -80
  br i1 %cmp.not.i, label %is_yukon_lite_a0.exit, label %for.end.is_yukon_lite_a0.exit.thread_crit_edge

for.end.is_yukon_lite_a0.exit.thread_crit_edge:   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %is_yukon_lite_a0.exit.thread

is_yukon_lite_a0.exit:                            ; preds = %for.end
  %140 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %hw, align 4
  %add.ptr.i.i304 = getelementptr i8, ptr %141, i32 288
  %142 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i304) #20, !srcloc !308
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !309
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  tail call void @arm_heavy_mb() #20
  %143 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %hw, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %144, i32 291
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i11.i, i8 -1) #20, !srcloc !305
  %145 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %hw, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %146, i32 291
  %147 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i12.i) #20, !srcloc !315
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !316
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %147)
  %cmp4.i.not = icmp eq i8 %147, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !306
  tail call void @arm_heavy_mb() #20
  %148 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %hw, align 4
  %add.ptr.i13.i = getelementptr i8, ptr %149, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i, i32 %142) #20, !srcloc !307
  br i1 %cmp4.i.not, label %is_yukon_lite_a0.exit.is_yukon_lite_a0.exit.thread_crit_edge, label %is_yukon_lite_a0.exit._crit_edge

is_yukon_lite_a0.exit._crit_edge:                 ; preds = %is_yukon_lite_a0.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %150

is_yukon_lite_a0.exit.is_yukon_lite_a0.exit.thread_crit_edge: ; preds = %is_yukon_lite_a0.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %is_yukon_lite_a0.exit.thread

is_yukon_lite_a0.exit.thread:                     ; preds = %is_yukon_lite_a0.exit.is_yukon_lite_a0.exit.thread_crit_edge, %for.end.is_yukon_lite_a0.exit.thread_crit_edge
  br label %150

150:                                              ; preds = %is_yukon_lite_a0.exit.thread, %is_yukon_lite_a0.exit._crit_edge
  %151 = phi i16 [ -30720, %is_yukon_lite_a0.exit.thread ], [ 2048, %is_yukon_lite_a0.exit._crit_edge ]
  %add93 = add i32 %shl, 3144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  tail call void @arm_heavy_mb() #20
  %152 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %hw, align 4
  %add.ptr.i305 = getelementptr i8, ptr %153, i32 %add93
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i305, i8 2) #20, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %154 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %hw, align 4
  %add.ptr.i306 = getelementptr i8, ptr %155, i32 %add93
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i306, i16 %151) #20, !srcloc !311
  %add98 = add i32 %shl, 3152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %156 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %hw, align 4
  %add.ptr.i307 = getelementptr i8, ptr %157, i32 %add98
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i307, i16 2816) #20, !srcloc !311
  %add100 = add i32 %shl, 3400
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  tail call void @arm_heavy_mb() #20
  %158 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %hw, align 4
  %add.ptr.i308 = getelementptr i8, ptr %159, i32 %add100
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i308, i8 2) #20, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %160 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %hw, align 4
  %add.ptr.i309 = getelementptr i8, ptr %161, i32 %add100
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i309, i16 2048) #20, !srcloc !311
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @skge_ramset(ptr nocapture noundef readonly %hw, i16 noundef zeroext %q, i32 noundef %start, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %div55 = lshr i32 %start, 3
  %div156 = lshr i32 %len, 3
  %add = add nsw i32 %div55, -1
  %sub = add nsw i32 %add, %div156
  %conv = zext i16 %q to i32
  %add2 = add nuw nsw i32 %conv, 2088
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  tail call void @arm_heavy_mb() #20
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %add2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 2) #20, !srcloc !305
  %add4 = add nuw nsw i32 %conv, 2048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !306
  tail call void @arm_heavy_mb() #20
  %2 = tail call i32 @llvm.bswap.i32(i32 %div55) #20
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 4
  %add.ptr.i57 = getelementptr i8, ptr %4, i32 %add4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57, i32 %2) #20, !srcloc !307
  %add6 = add nuw nsw i32 %conv, 2056
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !306
  tail call void @arm_heavy_mb() #20
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 4
  %add.ptr.i58 = getelementptr i8, ptr %6, i32 %add6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i58, i32 %2) #20, !srcloc !307
  %add8 = add nuw nsw i32 %conv, 2060
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !306
  tail call void @arm_heavy_mb() #20
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 4
  %add.ptr.i59 = getelementptr i8, ptr %8, i32 %add8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59, i32 %2) #20, !srcloc !307
  %add10 = add nuw nsw i32 %conv, 2052
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !306
  tail call void @arm_heavy_mb() #20
  %9 = tail call i32 @llvm.bswap.i32(i32 %sub) #20
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 4
  %add.ptr.i60 = getelementptr i8, ptr %11, i32 %add10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60, i32 %9) #20, !srcloc !307
  %12 = zext i16 %q to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.127)
  switch i16 %q, label %if.else [
    i16 0, label %entry.if.then_crit_edge
    i16 128, label %entry.if.then_crit_edge65
  ]

entry.if.then_crit_edge65:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge65
  %add17 = add nuw nsw i32 %conv, 2064
  %mul = shl nuw nsw i32 %div156, 1
  %div18 = udiv i32 %mul, 3
  %add19 = add nuw nsw i32 %div18, %div55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !306
  tail call void @arm_heavy_mb() #20
  %13 = tail call i32 @llvm.bswap.i32(i32 %add19) #20
  %14 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw, align 4
  %add.ptr.i61 = getelementptr i8, ptr %15, i32 %add17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61, i32 %13) #20, !srcloc !307
  %add21 = add nuw nsw i32 %conv, 2068
  %div22 = udiv i32 %len, 24
  %add23 = add nuw nsw i32 %div22, %div55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !306
  tail call void @arm_heavy_mb() #20
  %16 = tail call i32 @llvm.bswap.i32(i32 %add23) #20
  %17 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw, align 4
  %add.ptr.i62 = getelementptr i8, ptr %18, i32 %add21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62, i32 %16) #20, !srcloc !307
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  tail call void @arm_heavy_mb() #20
  %19 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw, align 4
  %add.ptr.i63 = getelementptr i8, ptr %20, i32 %add2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i63, i8 32) #20, !srcloc !305
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  tail call void @arm_heavy_mb() #20
  %21 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw, align 4
  %add.ptr.i64 = getelementptr i8, ptr %22, i32 %add2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i64, i8 8) #20, !srcloc !305
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @skge_qset(ptr nocapture noundef readonly %skge, i16 noundef zeroext %q, ptr nocapture noundef readonly %e) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %skge to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skge, align 128
  %dma = getelementptr inbounds %struct.skge_port, ptr %skge, i32 0, i32 18
  %2 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma, align 4
  %desc = getelementptr inbounds %struct.skge_element, ptr %e, i32 0, i32 1
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc, align 4
  %mem = getelementptr inbounds %struct.skge_port, ptr %skge, i32 0, i32 17
  %6 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mem, align 8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 4
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #20, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %11 = and i16 %10, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp = icmp eq i16 %11, 0
  %spec.select = select i1 %cmp, i32 196608, i32 393216
  %sub.ptr.lhs.cast = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %7 to i32
  %sub.ptr.sub = add i32 %3, %sub.ptr.lhs.cast
  %add = sub i32 %sub.ptr.sub, %sub.ptr.rhs.cast
  %conv4 = zext i16 %q to i32
  %add6 = add nuw nsw i32 %conv4, 1076
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !306
  tail call void @arm_heavy_mb() #20
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %add.ptr.i29 = getelementptr i8, ptr %13, i32 %add6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29, i32 11151872) #20, !srcloc !307
  %add9 = add nuw nsw i32 %conv4, 1080
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !306
  tail call void @arm_heavy_mb() #20
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %add.ptr.i30 = getelementptr i8, ptr %15, i32 %add9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 %spec.select) #20, !srcloc !307
  %add12 = add nuw nsw i32 %conv4, 1060
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !306
  tail call void @arm_heavy_mb() #20
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %add.ptr.i31 = getelementptr i8, ptr %17, i32 %add12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31, i32 0) #20, !srcloc !307
  %add16 = add nuw nsw i32 %conv4, 1056
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !306
  tail call void @arm_heavy_mb() #20
  %18 = tail call i32 @llvm.bswap.i32(i32 %add) #20
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %add.ptr.i32 = getelementptr i8, ptr %20, i32 %add16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32, i32 %18) #20, !srcloc !307
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @skge_led(ptr nocapture noundef readonly %skge, i32 noundef %mode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %skge to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skge, align 128
  %port2 = getelementptr inbounds %struct.skge_port, ptr %skge, i32 0, i32 3
  %2 = ptrtoint ptr %port2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port2, align 8
  %phy_lock = getelementptr inbounds %struct.skge_hw, ptr %1, i32 0, i32 13
  tail call void @_raw_spin_lock_bh(ptr noundef %phy_lock) #20
  %chip_id.i = getelementptr inbounds %struct.skge_hw, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %chip_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %5)
  %cmp.i = icmp eq i8 %5, 10
  br i1 %cmp.i, label %if.then, label %if.else44

if.then:                                          ; preds = %entry
  %6 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.128)
  switch i32 %mode, label %if.then.if.end59_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb14
    i32 2, label %sw.bb23
  ]

if.then.if.end59_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end59

sw.bb:                                            ; preds = %if.then
  %phy_type = getelementptr inbounds %struct.skge_hw, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %phy_type to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %phy_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp = icmp eq i8 %8, 1
  br i1 %cmp, label %if.then4, label %if.else

if.then4:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #22
  %call5 = tail call fastcc i32 @xm_phy_write(ptr noundef %1, i32 noundef %3, i16 noundef zeroext 16, i16 noundef zeroext 8)
  %.pre = shl i32 %3, 7
  br label %if.end

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #22
  %shl = shl i32 %3, 7
  %add = add i32 %shl, 3364
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !306
  tail call void @arm_heavy_mb() #20
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #20, !srcloc !307
  %add7 = add i32 %shl, 3368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  tail call void @arm_heavy_mb() #20
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %add.ptr.i113 = getelementptr i8, ptr %12, i32 %add7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i113, i8 2) #20, !srcloc !305
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then4
  %shl8.pre-phi = phi i32 [ %shl, %if.else ], [ %.pre, %if.then4 ]
  %add9 = add i32 %shl8.pre-phi, 3132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  tail call void @arm_heavy_mb() #20
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %add.ptr.i114 = getelementptr i8, ptr %14, i32 %add9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i114, i8 1) #20, !srcloc !305
  %add11 = add i32 %shl8.pre-phi, 3108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !306
  tail call void @arm_heavy_mb() #20
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %add.ptr.i115 = getelementptr i8, ptr %16, i32 %add11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i115, i32 0) #20, !srcloc !307
  %add13 = add i32 %shl8.pre-phi, 3112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  tail call void @arm_heavy_mb() #20
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %add.ptr.i116 = getelementptr i8, ptr %18, i32 %add13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i116, i8 2) #20, !srcloc !305
  br label %if.end59

sw.bb14:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  %shl15 = shl i32 %3, 7
  %add16 = add i32 %shl15, 3132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  tail call void @arm_heavy_mb() #20
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %add.ptr.i117 = getelementptr i8, ptr %20, i32 %add16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i117, i8 2) #20, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  tail call void @arm_heavy_mb() #20
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %add.ptr.i118 = getelementptr i8, ptr %22, i32 %add16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i118, i8 8) #20, !srcloc !305
  %add20 = add i32 %shl15, 3112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  tail call void @arm_heavy_mb() #20
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %add.ptr.i119 = getelementptr i8, ptr %24, i32 %add20
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i119, i8 4) #20, !srcloc !305
  %add22 = add i32 %shl15, 3368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  tail call void @arm_heavy_mb() #20
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %add.ptr.i120 = getelementptr i8, ptr %26, i32 %add22
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i120, i8 4) #20, !srcloc !305
  br label %if.end59

sw.bb23:                                          ; preds = %if.then
  %shl24 = shl i32 %3, 7
  %add25 = add i32 %shl24, 3113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  tail call void @arm_heavy_mb() #20
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %add.ptr.i121 = getelementptr i8, ptr %28, i32 %add25
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i121, i8 4) #20, !srcloc !305
  %add27 = add i32 %shl24, 3108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !306
  tail call void @arm_heavy_mb() #20
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %add.ptr.i122 = getelementptr i8, ptr %30, i32 %add27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i122, i32 1677721600) #20, !srcloc !307
  %add29 = add i32 %shl24, 3112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  tail call void @arm_heavy_mb() #20
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %add.ptr.i123 = getelementptr i8, ptr %32, i32 %add29
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i123, i8 4) #20, !srcloc !305
  %phy_type30 = getelementptr inbounds %struct.skge_hw, ptr %1, i32 0, i32 9
  %33 = ptrtoint ptr %phy_type30 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %phy_type30, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %34)
  %cmp32 = icmp eq i8 %34, 1
  br i1 %cmp32, label %if.then34, label %if.else36

if.then34:                                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #22
  %call35 = tail call fastcc i32 @xm_phy_write(ptr noundef %1, i32 noundef %3, i16 noundef zeroext 16, i16 noundef zeroext 16)
  br label %if.end59

if.else36:                                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #22
  %add38 = add i32 %shl24, 3369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  tail call void @arm_heavy_mb() #20
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %add.ptr.i124 = getelementptr i8, ptr %36, i32 %add38
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i124, i8 4) #20, !srcloc !305
  %add40 = add i32 %shl24, 3364
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !306
  tail call void @arm_heavy_mb() #20
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  %add.ptr.i125 = getelementptr i8, ptr %38, i32 %add40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i125, i32 1677721600) #20, !srcloc !307
  %add42 = add i32 %shl24, 3368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  tail call void @arm_heavy_mb() #20
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 4
  %add.ptr.i126 = getelementptr i8, ptr %40, i32 %add42
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i126, i8 4) #20, !srcloc !305
  br label %if.end59

if.else44:                                        ; preds = %entry
  %41 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.129)
  switch i32 %mode, label %if.else44.if.end59_crit_edge [
    i32 0, label %sw.bb45
    i32 1, label %sw.bb48
    i32 2, label %sw.bb55
  ]

if.else44.if.end59_crit_edge:                     ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end59

sw.bb45:                                          ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #22
  %call46 = tail call fastcc i32 @gm_phy_write(ptr noundef %1, i32 noundef %3, i16 noundef zeroext 24, i16 noundef zeroext 0)
  %call47 = tail call fastcc i32 @gm_phy_write(ptr noundef %1, i32 noundef %3, i16 noundef zeroext 25, i16 noundef zeroext 2728)
  br label %if.end59

sw.bb48:                                          ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #22
  %call49 = tail call fastcc i32 @gm_phy_write(ptr noundef %1, i32 noundef %3, i16 noundef zeroext 24, i16 noundef zeroext 16645)
  %speed = getelementptr inbounds %struct.skge_port, ptr %skge, i32 0, i32 15
  %42 = ptrtoint ptr %speed to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %speed, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 100, i16 %43)
  %cmp51 = icmp eq i16 %43, 100
  %conv53 = select i1 %cmp51, i16 200, i16 8
  %call54 = tail call fastcc i32 @gm_phy_write(ptr noundef %1, i32 noundef %3, i16 noundef zeroext 25, i16 noundef zeroext %conv53)
  br label %if.end59

sw.bb55:                                          ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #22
  %call56 = tail call fastcc i32 @gm_phy_write(ptr noundef %1, i32 noundef %3, i16 noundef zeroext 24, i16 noundef zeroext 0)
  %call57 = tail call fastcc i32 @gm_phy_write(ptr noundef %1, i32 noundef %3, i16 noundef zeroext 25, i16 noundef zeroext 4092)
  br label %if.end59

if.end59:                                         ; preds = %sw.bb55, %sw.bb48, %sw.bb45, %if.else44.if.end59_crit_edge, %if.else36, %if.then34, %sw.bb14, %if.end, %if.then.if.end59_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %phy_lock) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @skge_set_multicast(ptr noundef readonly %dev) #2 align 64 {
entry:
  %filter.i4 = alloca [8 x i8], align 8
  %filter.i = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 128
  %chip_id.i = getelementptr inbounds %struct.skge_hw, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %chip_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %3)
  %cmp.i = icmp eq i8 %3, 10
  %port2.i = getelementptr i8, ptr %dev, i32 2536
  %4 = ptrtoint ptr %port2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port2.i, align 8
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %filter.i) #20
  %mul.i.i = shl i32 %5, 12
  %add.i.i = add i32 %mul.i.i, 8192
  %or.i.i = or i32 %add.i.i, 584
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 %or.i.i
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i) #20, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %or5.i.i = or i32 %add.i.i, 588
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %add.ptr.i14.i.i = getelementptr i8, ptr %10, i32 %or5.i.i
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i14.i.i) #20, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %flags.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i, align 8
  %and7.i = and i32 %13, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.else10.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  %14 = ptrtoint ptr %filter.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 -1, ptr %filter.i, align 8
  br label %genesis_set_multicast.exit

if.else10.i:                                      ; preds = %if.then
  %15 = ptrtoint ptr %filter.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 0, ptr %filter.i, align 8
  %flow_status.i = getelementptr i8, ptr %dev, i32 2632
  %16 = ptrtoint ptr %flow_status.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flow_status.i, align 8
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.130)
  switch i32 %17, label %if.else10.i.if.end16.i_crit_edge [
    i32 2, label %if.else10.i.if.then14.i_crit_edge
    i32 4, label %if.else10.i.if.then14.i_crit_edge20
  ]

if.else10.i.if.then14.i_crit_edge20:              ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then14.i

if.else10.i.if.then14.i_crit_edge:                ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then14.i

if.else10.i.if.end16.i_crit_edge:                 ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end16.i

if.then14.i:                                      ; preds = %if.else10.i.if.then14.i_crit_edge, %if.else10.i.if.then14.i_crit_edge20
  %call.i.i = tail call i32 @crc32_le(i32 noundef -1, ptr noundef nonnull @pause_mc_addr, i32 noundef 6) #26
  %neg.i.i = and i32 %call.i.i, 63
  %and.i.i = xor i32 %neg.i.i, 63
  %rem.i.i = and i32 %and.i.i, 7
  %shl.i.i = shl nuw nsw i32 1, %rem.i.i
  %div3.i.i = lshr i32 %and.i.i, 3
  %arrayidx.i.i = getelementptr i8, ptr %filter.i, i32 %div3.i.i
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i.i, align 1
  %21 = trunc i32 %shl.i.i to i8
  %conv1.i.i = or i8 %20, %21
  store i8 %conv1.i.i, ptr %arrayidx.i.i, align 1
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then14.i, %if.else10.i.if.end16.i_crit_edge
  %mc.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66
  %22 = ptrtoint ptr %mc.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %ha.062.i = load ptr, ptr %mc.i, align 4
  %cmp20.not63.i = icmp eq ptr %ha.062.i, %mc.i
  br i1 %cmp20.not63.i, label %if.end16.i.genesis_set_multicast.exit_crit_edge, label %if.end16.i.for.body.i_crit_edge

if.end16.i.for.body.i_crit_edge:                  ; preds = %if.end16.i
  br label %for.body.i

if.end16.i.genesis_set_multicast.exit_crit_edge:  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %genesis_set_multicast.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end16.i.for.body.i_crit_edge
  %ha.064.i = phi ptr [ %ha.0.i, %for.body.i.for.body.i_crit_edge ], [ %ha.062.i, %if.end16.i.for.body.i_crit_edge ]
  %addr.i = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.064.i, i32 0, i32 2
  %call.i46.i = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr.i, i32 noundef 6) #26
  %neg.i47.i = and i32 %call.i46.i, 63
  %and.i48.i = xor i32 %neg.i47.i, 63
  %rem.i49.i = and i32 %and.i48.i, 7
  %shl.i50.i = shl nuw nsw i32 1, %rem.i49.i
  %div3.i51.i = lshr i32 %and.i48.i, 3
  %arrayidx.i52.i = getelementptr i8, ptr %filter.i, i32 %div3.i51.i
  %23 = ptrtoint ptr %arrayidx.i52.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.i52.i, align 1
  %25 = trunc i32 %shl.i50.i to i8
  %conv1.i53.i = or i8 %24, %25
  store i8 %conv1.i53.i, ptr %arrayidx.i52.i, align 1
  %26 = ptrtoint ptr %ha.064.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %ha.0.i = load ptr, ptr %ha.064.i, align 4
  %cmp20.not.i = icmp eq ptr %ha.0.i, %mc.i
  br i1 %cmp20.not.i, label %for.body.i.genesis_set_multicast.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i

for.body.i.genesis_set_multicast.exit_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %genesis_set_multicast.exit

genesis_set_multicast.exit:                       ; preds = %for.body.i.genesis_set_multicast.exit_crit_edge, %if.end16.i.genesis_set_multicast.exit_crit_edge, %if.then9.i
  %27 = getelementptr inbounds [8 x i8], ptr %filter.i, i32 0, i32 7
  %28 = getelementptr inbounds [8 x i8], ptr %filter.i, i32 0, i32 6
  %29 = getelementptr inbounds [8 x i8], ptr %filter.i, i32 0, i32 5
  %30 = getelementptr inbounds [8 x i8], ptr %filter.i, i32 0, i32 4
  %31 = getelementptr inbounds [8 x i8], ptr %filter.i, i32 0, i32 3
  %32 = getelementptr inbounds [8 x i8], ptr %filter.i, i32 0, i32 2
  %33 = getelementptr inbounds [8 x i8], ptr %filter.i, i32 0, i32 1
  %and.i = and i32 %13, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %34 = zext i16 %8 to i32
  %35 = shl nuw i32 %34, 16
  %36 = zext i16 %11 to i32
  %37 = or i32 %35, %36
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #20
  %or.i = and i32 %38, -32777
  %and5.i = or i32 %or.i, 32768
  %or4.i = or i32 %38, 32776
  %mode.0.i = select i1 %tobool.not.i, i32 %and5.i, i32 %or4.i
  %conv.i.i = trunc i32 %mode.0.i to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %39 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i) #20
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 4
  %add.ptr.i.i57.i = getelementptr i8, ptr %41, i32 %or.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i57.i, i16 %39) #20, !srcloc !311
  %shr.i.i = lshr i32 %mode.0.i, 16
  %conv6.i.i = trunc i32 %shr.i.i to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %42 = tail call i16 @llvm.bswap.i16(i16 %conv6.i.i) #20
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  %add.ptr.i11.i.i = getelementptr i8, ptr %44, i32 %or5.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i11.i.i, i16 %42) #20, !srcloc !311
  %45 = ptrtoint ptr %filter.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %filter.i, align 8
  %conv1.i59.i = zext i8 %46 to i16
  %47 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %33, align 1
  %conv4.i.i = zext i8 %48 to i16
  %shl.i60.i = shl nuw i16 %conv4.i.i, 8
  %or.i61.i = or i16 %shl.i60.i, %conv1.i59.i
  %or.i.i.i = or i32 %add.i.i, 544
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %49 = tail call i16 @llvm.bswap.i16(i16 %or.i61.i) #20
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %51, i32 %or.i.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i.i, i16 %49) #20, !srcloc !311
  %52 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %32, align 2
  %conv8.i.i = zext i8 %53 to i16
  %54 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %31, align 1
  %conv11.i.i = zext i8 %55 to i16
  %shl12.i.i = shl nuw i16 %conv11.i.i, 8
  %or13.i.i = or i16 %shl12.i.i, %conv8.i.i
  %or.i3.i.i = or i32 %add.i.i, 548
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %56 = tail call i16 @llvm.bswap.i16(i16 %or13.i.i) #20
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %1, align 4
  %add.ptr.i.i4.i.i = getelementptr i8, ptr %58, i32 %or.i3.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i4.i.i, i16 %56) #20, !srcloc !311
  %59 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %30, align 4
  %conv18.i.i = zext i8 %60 to i16
  %61 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %29, align 1
  %conv21.i.i = zext i8 %62 to i16
  %shl22.i.i = shl nuw i16 %conv21.i.i, 8
  %or23.i.i = or i16 %shl22.i.i, %conv18.i.i
  %or.i7.i.i = or i32 %add.i.i, 552
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %63 = tail call i16 @llvm.bswap.i16(i16 %or23.i.i) #20
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %1, align 4
  %add.ptr.i.i8.i.i = getelementptr i8, ptr %65, i32 %or.i7.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i8.i.i, i16 %63) #20, !srcloc !311
  %66 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %28, align 2
  %conv28.i.i = zext i8 %67 to i16
  %68 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %27, align 1
  %conv31.i.i = zext i8 %69 to i16
  %shl32.i.i = shl nuw i16 %conv31.i.i, 8
  %or33.i.i = or i16 %shl32.i.i, %conv28.i.i
  %or.i11.i.i = or i32 %add.i.i, 556
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %70 = tail call i16 @llvm.bswap.i16(i16 %or33.i.i) #20
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %1, align 4
  %add.ptr.i.i12.i.i = getelementptr i8, ptr %72, i32 %or.i11.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i12.i.i, i16 %70) #20, !srcloc !311
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %filter.i) #20
  br label %if.end

if.else:                                          ; preds = %entry
  %flow_status.i7 = getelementptr i8, ptr %dev, i32 2632
  %73 = ptrtoint ptr %flow_status.i7 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %flow_status.i7, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %filter.i4) #20
  %75 = ptrtoint ptr %filter.i4 to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 0, ptr %filter.i4, align 8
  %mul.i.i8 = shl i32 %5, 12
  %add1.i.i = add i32 %mul.i.i8, 10252
  %76 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %1, align 4
  %add.ptr.i.i.i9 = getelementptr i8, ptr %77, i32 %add1.i.i
  %78 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i9) #20, !srcloc !313
  %79 = tail call i16 @llvm.bswap.i16(i16 %78) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %80 = or i16 %79, -32768
  %flags.i10 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %81 = ptrtoint ptr %flags.i10 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %flags.i10, align 8
  %and.i11 = and i32 %82, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i11)
  %tobool.not.i12 = icmp eq i32 %and.i11, 0
  br i1 %tobool.not.i12, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  %83 = and i16 %79, 16383
  br label %yukon_set_multicast.exit

if.else.i:                                        ; preds = %if.else
  %and11.i = and i32 %82, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %if.else15.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #22
  %84 = ptrtoint ptr %filter.i4 to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 -1, ptr %filter.i4, align 8
  br label %yukon_set_multicast.exit

if.else15.i:                                      ; preds = %if.else.i
  %mc.i13 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66
  %count.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66, i32 1
  %85 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp16.i = icmp eq i32 %86, 0
  br i1 %cmp16.i, label %land.lhs.true.i, label %if.else15.i.if.else23.i_crit_edge

if.else15.i.if.else23.i_crit_edge:                ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else23.i

land.lhs.true.i:                                  ; preds = %if.else15.i
  %87 = zext i32 %74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.131)
  switch i32 %74, label %if.then19.i [
    i32 4, label %land.lhs.true.i.if.else23.i_crit_edge
    i32 2, label %land.lhs.true.i.if.else23.i_crit_edge21
  ]

land.lhs.true.i.if.else23.i_crit_edge21:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else23.i

land.lhs.true.i.if.else23.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else23.i

if.then19.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  %88 = and i16 %80, -16385
  br label %yukon_set_multicast.exit

if.else23.i:                                      ; preds = %land.lhs.true.i.if.else23.i_crit_edge, %land.lhs.true.i.if.else23.i_crit_edge21, %if.else15.i.if.else23.i_crit_edge
  %89 = or i16 %79, -16384
  %90 = zext i32 %74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %90, ptr @__sancov_gen_cov_switch_values.132)
  switch i32 %74, label %if.else23.i.if.end.i_crit_edge [
    i32 4, label %if.else23.i.yukon_add_filter.exit.i_crit_edge
    i32 2, label %if.else23.i.yukon_add_filter.exit.i_crit_edge22
  ]

if.else23.i.yukon_add_filter.exit.i_crit_edge22:  ; preds = %if.else23.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %yukon_add_filter.exit.i

if.else23.i.yukon_add_filter.exit.i_crit_edge:    ; preds = %if.else23.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %yukon_add_filter.exit.i

if.else23.i.if.end.i_crit_edge:                   ; preds = %if.else23.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i

yukon_add_filter.exit.i:                          ; preds = %if.else23.i.yukon_add_filter.exit.i_crit_edge, %if.else23.i.yukon_add_filter.exit.i_crit_edge22
  %call.i.i14 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef nonnull @pause_mc_addr, i32 noundef 6) #26
  %sum.shift.i.i.i = lshr i32 %call.i.i14, 24
  %arrayidx.i10.i11.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %sum.shift.i.i.i
  %91 = ptrtoint ptr %arrayidx.i10.i11.i.i.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx.i10.i11.i.i.i, align 1
  %rem.i.i15 = and i8 %92, 7
  %shl23.i.i = shl i8 1, %rem.i.i15
  %93 = lshr i8 %92, 3
  %94 = and i8 %93, 7
  %div39.i.i = zext i8 %94 to i32
  %arrayidx.i.i16 = getelementptr i8, ptr %filter.i4, i32 %div39.i.i
  %95 = ptrtoint ptr %arrayidx.i.i16 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx.i.i16, align 1
  %conv25.i.i = or i8 %96, %shl23.i.i
  store i8 %conv25.i.i, ptr %arrayidx.i.i16, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %yukon_add_filter.exit.i, %if.else23.i.if.end.i_crit_edge
  %97 = ptrtoint ptr %mc.i13 to i32
  call void @__asan_load4_noabort(i32 %97)
  %ha.0140.i = load ptr, ptr %mc.i13, align 4
  %cmp34.not141.i = icmp eq ptr %ha.0140.i, %mc.i13
  br i1 %cmp34.not141.i, label %if.end.i.yukon_set_multicast.exit_crit_edge, label %if.end.i.yukon_add_filter.exit119.i_crit_edge

if.end.i.yukon_add_filter.exit119.i_crit_edge:    ; preds = %if.end.i
  br label %yukon_add_filter.exit119.i

if.end.i.yukon_set_multicast.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %yukon_set_multicast.exit

yukon_add_filter.exit119.i:                       ; preds = %yukon_add_filter.exit119.i.yukon_add_filter.exit119.i_crit_edge, %if.end.i.yukon_add_filter.exit119.i_crit_edge
  %ha.0142.i = phi ptr [ %ha.0.i19, %yukon_add_filter.exit119.i.yukon_add_filter.exit119.i_crit_edge ], [ %ha.0140.i, %if.end.i.yukon_add_filter.exit119.i_crit_edge ]
  %addr.i17 = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0142.i, i32 0, i32 2
  %call.i105.i = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr.i17, i32 noundef 6) #26
  %sum.shift.i.i108.i = lshr i32 %call.i105.i, 24
  %arrayidx.i10.i11.i.i109.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %sum.shift.i.i108.i
  %98 = ptrtoint ptr %arrayidx.i10.i11.i.i109.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx.i10.i11.i.i109.i, align 1
  %rem.i113.i = and i8 %99, 7
  %shl23.i114.i = shl i8 1, %rem.i113.i
  %100 = lshr i8 %99, 3
  %101 = and i8 %100, 7
  %div39.i116.i = zext i8 %101 to i32
  %arrayidx.i117.i = getelementptr i8, ptr %filter.i4, i32 %div39.i116.i
  %102 = ptrtoint ptr %arrayidx.i117.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx.i117.i, align 1
  %conv25.i118.i = or i8 %103, %shl23.i114.i
  store i8 %conv25.i118.i, ptr %arrayidx.i117.i, align 1
  %104 = ptrtoint ptr %ha.0142.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %ha.0.i19 = load ptr, ptr %ha.0142.i, align 4
  %cmp34.not.i = icmp eq ptr %ha.0.i19, %mc.i13
  br i1 %cmp34.not.i, label %yukon_add_filter.exit119.i.yukon_set_multicast.exit_crit_edge, label %yukon_add_filter.exit119.i.yukon_add_filter.exit119.i_crit_edge

yukon_add_filter.exit119.i.yukon_add_filter.exit119.i_crit_edge: ; preds = %yukon_add_filter.exit119.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %yukon_add_filter.exit119.i

yukon_add_filter.exit119.i.yukon_set_multicast.exit_crit_edge: ; preds = %yukon_add_filter.exit119.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %yukon_set_multicast.exit

yukon_set_multicast.exit:                         ; preds = %yukon_add_filter.exit119.i.yukon_set_multicast.exit_crit_edge, %if.end.i.yukon_set_multicast.exit_crit_edge, %if.then19.i, %if.then13.i, %if.then.i
  %reg.0.i = phi i16 [ %83, %if.then.i ], [ %80, %if.then13.i ], [ %88, %if.then19.i ], [ %89, %if.end.i.yukon_set_multicast.exit_crit_edge ], [ %89, %yukon_add_filter.exit119.i.yukon_set_multicast.exit_crit_edge ]
  %105 = getelementptr inbounds [8 x i8], ptr %filter.i4, i32 0, i32 7
  %106 = getelementptr inbounds [8 x i8], ptr %filter.i4, i32 0, i32 6
  %107 = getelementptr inbounds [8 x i8], ptr %filter.i4, i32 0, i32 5
  %108 = getelementptr inbounds [8 x i8], ptr %filter.i4, i32 0, i32 4
  %109 = getelementptr inbounds [8 x i8], ptr %filter.i4, i32 0, i32 3
  %110 = getelementptr inbounds [8 x i8], ptr %filter.i4, i32 0, i32 2
  %111 = getelementptr inbounds [8 x i8], ptr %filter.i4, i32 0, i32 1
  %112 = ptrtoint ptr %filter.i4 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %filter.i4, align 8
  %conv47.i = zext i8 %113 to i16
  %114 = ptrtoint ptr %111 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %111, align 1
  %conv50.i = zext i8 %115 to i16
  %shl.i = shl nuw i16 %conv50.i, 8
  %or51.i = or i16 %shl.i, %conv47.i
  %add1.i122.i = add i32 %mul.i.i8, 10292
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %116 = tail call i16 @llvm.bswap.i16(i16 %or51.i) #20
  %117 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %1, align 4
  %add.ptr.i.i123.i = getelementptr i8, ptr %118, i32 %add1.i122.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i123.i, i16 %116) #20, !srcloc !311
  %119 = ptrtoint ptr %110 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %110, align 2
  %conv55.i = zext i8 %120 to i16
  %121 = ptrtoint ptr %109 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %109, align 1
  %conv58.i = zext i8 %122 to i16
  %shl59.i = shl nuw i16 %conv58.i, 8
  %or60.i = or i16 %shl59.i, %conv55.i
  %add1.i126.i = add i32 %mul.i.i8, 10296
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %123 = tail call i16 @llvm.bswap.i16(i16 %or60.i) #20
  %124 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %1, align 4
  %add.ptr.i.i127.i = getelementptr i8, ptr %125, i32 %add1.i126.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i127.i, i16 %123) #20, !srcloc !311
  %126 = ptrtoint ptr %108 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %108, align 4
  %conv64.i = zext i8 %127 to i16
  %128 = ptrtoint ptr %107 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %107, align 1
  %conv67.i = zext i8 %129 to i16
  %shl68.i = shl nuw i16 %conv67.i, 8
  %or69.i = or i16 %shl68.i, %conv64.i
  %add1.i130.i = add i32 %mul.i.i8, 10300
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %130 = tail call i16 @llvm.bswap.i16(i16 %or69.i) #20
  %131 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %1, align 4
  %add.ptr.i.i131.i = getelementptr i8, ptr %132, i32 %add1.i130.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i131.i, i16 %130) #20, !srcloc !311
  %133 = ptrtoint ptr %106 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %106, align 2
  %conv73.i = zext i8 %134 to i16
  %135 = ptrtoint ptr %105 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %105, align 1
  %conv76.i = zext i8 %136 to i16
  %shl77.i = shl nuw i16 %conv76.i, 8
  %or78.i = or i16 %shl77.i, %conv73.i
  %add1.i134.i = add i32 %mul.i.i8, 10304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %137 = tail call i16 @llvm.bswap.i16(i16 %or78.i) #20
  %138 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %1, align 4
  %add.ptr.i.i135.i = getelementptr i8, ptr %139, i32 %add1.i134.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i135.i, i16 %137) #20, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %140 = tail call i16 @llvm.bswap.i16(i16 %reg.0.i) #20
  %141 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %1, align 4
  %add.ptr.i.i139.i = getelementptr i8, ptr %142, i32 %add1.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i139.i, i16 %140) #20, !srcloc !311
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %filter.i4) #20
  br label %if.end

if.end:                                           ; preds = %yukon_set_multicast.exit, %genesis_set_multicast.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @skge_rx_setup(ptr nocapture noundef readonly %skge, ptr nocapture noundef %e, ptr noundef %skb, i32 noundef %bufsize) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %desc = getelementptr inbounds %struct.skge_element, ptr %e, i32 0, i32 1
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %2 = ptrtoint ptr %skge to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skge, align 128
  %pdev = getelementptr inbounds %struct.skge_hw, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %7) #20
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %entry
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !299

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev) #20
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44, i32 3
  %8 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #22
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %11, %if.end.i.i ], [ %9, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.11, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #20
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef %7, i32 noundef %bufsize) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %12 = load ptr, ptr @mem_map, align 4
  %13 = ptrtoint ptr %7 to i32
  %sub.i = add i32 %13, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %12, i32 %shr.i
  %and.i = and i32 %13, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %bufsize, i32 noundef 2, i32 noundef 0) #20
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %14 = ptrtoint ptr %skge to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %skge, align 128
  %pdev2 = getelementptr inbounds %struct.skge_hw, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev2, align 4
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev3, i32 noundef %retval.0.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %retval.0.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.cleanup_crit_edge, label %if.end

dma_map_single_attrs.exit.cleanup_crit_edge:      ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #22
  %dma_lo = getelementptr inbounds %struct.skge_rx_desc, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %dma_lo to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %retval.0.i, ptr %dma_lo, align 4
  %dma_hi = getelementptr inbounds %struct.skge_rx_desc, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %dma_hi to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %dma_hi, align 4
  %skb6 = getelementptr inbounds %struct.skge_element, ptr %e, i32 0, i32 2
  %20 = ptrtoint ptr %skb6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %skb, ptr %skb6, align 4
  %csum1_start = getelementptr inbounds %struct.skge_rx_desc, ptr %1, i32 0, i32 9
  %21 = ptrtoint ptr %csum1_start to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 14, ptr %csum1_start, align 2
  %csum2_start = getelementptr inbounds %struct.skge_rx_desc, ptr %1, i32 0, i32 8
  %22 = ptrtoint ptr %csum2_start to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 14, ptr %csum2_start, align 4
  %csum1 = getelementptr inbounds %struct.skge_rx_desc, ptr %1, i32 0, i32 7
  %23 = ptrtoint ptr %csum1 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 0, ptr %csum1, align 2
  %csum2 = getelementptr inbounds %struct.skge_rx_desc, ptr %1, i32 0, i32 6
  %24 = ptrtoint ptr %csum2 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %csum2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !317
  tail call void @arm_heavy_mb() #20
  %or = or i32 %bufsize, -933888000
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or, ptr %1, align 4
  %mapaddr = getelementptr inbounds %struct.skge_element, ptr %e, i32 0, i32 3
  %26 = ptrtoint ptr %mapaddr to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %retval.0.i, ptr %mapaddr, align 4
  %maplen = getelementptr inbounds %struct.skge_element, ptr %e, i32 0, i32 4
  %27 = ptrtoint ptr %maplen to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %bufsize, ptr %maplen, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %dma_map_single_attrs.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %dma_map_single_attrs.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #0

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
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @skge_mac_intr(ptr nocapture noundef readonly %hw, i32 noundef %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_id.i = getelementptr inbounds %struct.skge_hw, ptr %hw, i32 0, i32 5
  %0 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %chip_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %1)
  %cmp.i = icmp eq i8 %1, 10
  %arrayidx.i = getelementptr %struct.skge_hw, ptr %hw, i32 0, i32 4, i32 %port
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %mul.i.i = shl i32 %port, 12
  %add.i.i = add i32 %mul.i.i, 8192
  %or.i.i = or i32 %add.i.i, 144
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 %or.i.i
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i) #20, !srcloc !313
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %msg_enable.i = getelementptr i8, ptr %3, i32 2540
  %8 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %9, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.do.end.i_crit_edge, label %if.then.i

if.then.do.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  %netdev.i = getelementptr i8, ptr %3, i32 2308
  %10 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %netdev.i, align 4
  %conv.i = zext i16 %7 to i32
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.12, ptr noundef %11, ptr noundef nonnull @.str.13, i32 noundef %conv.i) #24
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then.do.end.i_crit_edge
  %phy_type.i = getelementptr inbounds %struct.skge_hw, ptr %hw, i32 0, i32 9
  %12 = ptrtoint ptr %phy_type.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %phy_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp.i4 = icmp ne i8 %13, 0
  %14 = and i16 %7, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool7.not.i = icmp eq i16 %14, 0
  %or.cond.i = select i1 %cmp.i4, i1 true, i1 %tobool7.not.i
  br i1 %or.cond.i, label %do.end.i.if.end10.i_crit_edge, label %if.then8.i

do.end.i.if.end10.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end10.i

if.then8.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call fastcc void @xm_link_down(ptr noundef %hw, i32 noundef %port) #20
  %link_timer.i = getelementptr i8, ptr %3, i32 2580
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %15, 1
  %call9.i = tail call i32 @mod_timer(ptr noundef %link_timer.i, i32 noundef %add.i) #20
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then8.i, %do.end.i.if.end10.i_crit_edge
  %16 = and i16 %7, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool13.not.i = icmp eq i16 %16, 0
  br i1 %tobool13.not.i, label %if.end10.i.if.end_crit_edge, label %if.then14.i

if.end10.i.if.end_crit_edge:                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then14.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #22
  %or.i30.i = or i32 %add.i.i, 584
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %17 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw, align 4
  %add.ptr.i.i31.i = getelementptr i8, ptr %18, i32 %or.i30.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i31.i, i16 512) #20, !srcloc !311
  %or5.i.i = or i32 %add.i.i, 588
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %19 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw, align 4
  %add.ptr.i11.i.i = getelementptr i8, ptr %20, i32 %or5.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i11.i.i, i16 0) #20, !srcloc !311
  %tx_fifo_errors.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36, i32 18
  %21 = ptrtoint ptr %tx_fifo_errors.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tx_fifo_errors.i, align 8
  %inc.i = add i32 %22, 1
  store i32 %inc.i, ptr %tx_fifo_errors.i, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %shl.i = shl i32 %port, 7
  %add.i6 = add i32 %shl.i, 3848
  %23 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw, align 4
  %add.ptr.i30.i = getelementptr i8, ptr %24, i32 %add.i6
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i30.i) #20, !srcloc !315
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !316
  %msg_enable.i7 = getelementptr i8, ptr %3, i32 2540
  %26 = ptrtoint ptr %msg_enable.i7 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %msg_enable.i7, align 4
  %and.i8 = and i32 %27, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8)
  %tobool.not.i9 = icmp eq i32 %and.i8, 0
  br i1 %tobool.not.i9, label %entry.do.end_crit_edge.i, label %if.then.i12

entry.do.end_crit_edge.i:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  %.pre.i = zext i8 %25 to i32
  br label %do.end.i13

if.then.i12:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  %netdev.i10 = getelementptr i8, ptr %3, i32 2308
  %28 = ptrtoint ptr %netdev.i10 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %netdev.i10, align 4
  %conv.i11 = zext i8 %25 to i32
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.12, ptr noundef %29, ptr noundef nonnull @.str.13, i32 noundef %conv.i11) #24
  br label %do.end.i13

do.end.i13:                                       ; preds = %if.then.i12, %entry.do.end_crit_edge.i
  %conv3.pre-phi.i = phi i32 [ %.pre.i, %entry.do.end_crit_edge.i ], [ %conv.i11, %if.then.i12 ]
  %and4.i = and i32 %conv3.pre-phi.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %do.end.i13.if.end9.i_crit_edge, label %if.then6.i

do.end.i13.if.end9.i_crit_edge:                   ; preds = %do.end.i13
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end9.i

if.then6.i:                                       ; preds = %do.end.i13
  call void @__sanitizer_cov_trace_pc() #22
  %rx_fifo_errors.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36, i32 14
  %30 = ptrtoint ptr %rx_fifo_errors.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rx_fifo_errors.i, align 8
  %inc.i14 = add i32 %31, 1
  store i32 %inc.i14, ptr %rx_fifo_errors.i, align 8
  %add8.i = add i32 %shl.i, 3144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  tail call void @arm_heavy_mb() #20
  %32 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw, align 4
  %add.ptr.i31.i = getelementptr i8, ptr %33, i32 %add8.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i31.i, i8 32) #20, !srcloc !305
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then6.i, %do.end.i13.if.end9.i_crit_edge
  %and11.i = and i32 %conv3.pre-phi.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %if.end9.i.if.end_crit_edge, label %if.then13.i

if.end9.i.if.end_crit_edge:                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then13.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #22
  %tx_fifo_errors.i15 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36, i32 18
  %34 = ptrtoint ptr %tx_fifo_errors.i15 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tx_fifo_errors.i15, align 8
  %inc15.i = add i32 %35, 1
  store i32 %inc15.i, ptr %tx_fifo_errors.i15, align 8
  %add17.i = add i32 %shl.i, 3400
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  tail call void @arm_heavy_mb() #20
  %36 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hw, align 4
  %add.ptr.i32.i = getelementptr i8, ptr %37, i32 %add17.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i32.i, i8 64) #20, !srcloc !305
  br label %if.end

if.end:                                           ; preds = %if.then13.i, %if.end9.i.if.end_crit_edge, %if.then14.i, %if.end10.i.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xm_link_down(ptr nocapture noundef readonly %hw, i32 noundef %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.skge_hw, ptr %hw, i32 0, i32 4, i32 %port
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %mul.i = shl i32 %port, 12
  %or.i = add i32 %mul.i, 8328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %or.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 -1) #20, !srcloc !311
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i, align 128
  %port.i = getelementptr i8, ptr %1, i32 2536
  %9 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port.i, align 8
  %shl.i = shl i32 %10, 7
  %add.i6 = add i32 %shl.i, 3132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  tail call void @arm_heavy_mb() #20
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %8, align 4
  %add.ptr.i.i7 = getelementptr i8, ptr %12, i32 %add.i6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i7, i8 1) #20, !srcloc !305
  %netdev.i = getelementptr i8, ptr %1, i32 2308
  %13 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %netdev.i, align 4
  tail call void @netif_carrier_off(ptr noundef %14) #20
  %15 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %netdev.i, align 4
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 103
  %17 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %18, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.i) #20
  %msg_enable.i = getelementptr i8, ptr %1, i32 2540
  %19 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i8 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i8, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  %21 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %netdev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %22, ptr noundef nonnull @.str.14) #24
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcom_check_link(ptr nocapture noundef readonly %hw, i32 noundef %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.skge_hw, ptr %hw, i32 0, i32 4, i32 %port
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %call2 = tail call fastcc zeroext i16 @xm_phy_read(ptr noundef %hw, i32 noundef %port, i16 noundef zeroext 1)
  %call3 = tail call fastcc zeroext i16 @xm_phy_read(ptr noundef %hw, i32 noundef %port, i16 noundef zeroext 1)
  %conv = zext i16 %call3 to i32
  %and = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  tail call fastcc void @xm_link_down(ptr noundef %hw, i32 noundef %port)
  br label %cleanup39

if.end:                                           ; preds = %entry
  %autoneg = getelementptr i8, ptr %1, i32 2638
  %2 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %autoneg, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp6 = icmp eq i8 %3, 1
  br i1 %cmp6, label %if.then8, label %if.end.if.end35_crit_edge

if.end.if.end35_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end35

if.then8:                                         ; preds = %if.end
  %and10 = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool.not = icmp eq i32 %and10, 0
  br i1 %tobool.not, label %if.then8.cleanup39_crit_edge, label %if.end12

if.then8.cleanup39_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup39

if.end12:                                         ; preds = %if.then8
  %call13 = tail call fastcc zeroext i16 @xm_phy_read(ptr noundef %hw, i32 noundef %port, i16 noundef zeroext 5)
  %4 = and i16 %call13, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool16.not = icmp eq i16 %4, 0
  br i1 %tobool16.not, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #22
  tail call void (ptr, ptr, ...) @netdev_notice(ptr noundef %1, ptr noundef nonnull @.str.35) #24
  br label %cleanup39

if.end18:                                         ; preds = %if.end12
  %call19 = tail call fastcc zeroext i16 @xm_phy_read(ptr noundef %hw, i32 noundef %port, i16 noundef zeroext 25)
  %conv20 = zext i16 %call19 to i32
  %and21 = and i32 %conv20, 1792
  %5 = zext i32 %and21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.133)
  switch i32 %and21, label %sw.default [
    i32 1792, label %if.end18.sw.epilog_crit_edge
    i32 1536, label %sw.bb22
  ]

if.end18.sw.epilog_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

sw.default:                                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #22
  tail call void (ptr, ptr, ...) @netdev_notice(ptr noundef %1, ptr noundef nonnull @.str.36) #24
  br label %cleanup39

sw.epilog:                                        ; preds = %sw.bb22, %if.end18.sw.epilog_crit_edge
  %.sink = phi i8 [ 0, %sw.bb22 ], [ 1, %if.end18.sw.epilog_crit_edge ]
  %duplex23 = getelementptr i8, ptr %1, i32 2639
  %6 = ptrtoint ptr %duplex23 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %.sink, ptr %duplex23, align 1
  %and25 = and i32 %conv20, 3
  %switch.tableidx = add nsw i32 %and25, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %7 = icmp ult i32 %switch.tableidx, 3
  br i1 %7, label %switch.lookup, label %sw.epilog.sw.epilog33_crit_edge

sw.epilog.sw.epilog33_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog33

switch.lookup:                                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #22
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.bcom_check_link, i32 0, i32 %switch.tableidx
  %8 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog33

sw.epilog33:                                      ; preds = %switch.lookup, %sw.epilog.sw.epilog33_crit_edge
  %.sink67 = phi i32 [ %switch.load, %switch.lookup ], [ 1, %sw.epilog.sw.epilog33_crit_edge ]
  %flow_status32 = getelementptr i8, ptr %1, i32 2632
  %9 = ptrtoint ptr %flow_status32 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %.sink67, ptr %flow_status32, align 8
  %speed = getelementptr i8, ptr %1, i32 2640
  %10 = ptrtoint ptr %speed to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1000, ptr %speed, align 16
  br label %if.end35

if.end35:                                         ; preds = %sw.epilog33, %if.end.if.end35_crit_edge
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %state.i, align 4
  %13 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %if.end35.cleanup39_crit_edge, label %if.then37

if.end35.cleanup39_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup39

if.then37:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #22
  tail call fastcc void @genesis_link_up(ptr noundef %add.ptr.i)
  br label %cleanup39

cleanup39:                                        ; preds = %if.then37, %if.end35.cleanup39_crit_edge, %sw.default, %if.then17, %if.then8.cleanup39_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xm_phy_write(ptr nocapture noundef readonly %hw, i32 noundef %port, i16 noundef zeroext %reg, i16 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_addr = getelementptr inbounds %struct.skge_hw, ptr %hw, i32 0, i32 12
  %0 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %phy_addr, align 4
  %or28 = or i16 %1, %reg
  %mul.i = shl i32 %port, 12
  %add.i = add i32 %mul.i, 8192
  %or.i = or i32 %add.i, 104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %2 = tail call i16 @llvm.bswap.i16(i16 %or28) #20
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 %or.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 %2) #20, !srcloc !311
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %i.040 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 4
  %add.ptr.i.i31 = getelementptr i8, ptr %6, i32 %add.i
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i31) #20, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %8 = and i16 %7, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not = icmp eq i16 %8, 0
  br i1 %tobool.not, label %ready, label %if.end

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748) #20
  %inc = add nuw nsw i32 %i.040, 1
  %exitcond.not = icmp eq i32 %inc, 1000
  br i1 %exitcond.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

ready:                                            ; preds = %for.body
  %or.i34 = or i32 %add.i, 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %10 = tail call i16 @llvm.bswap.i16(i16 %val) #20
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw, align 4
  %add.ptr.i.i35 = getelementptr i8, ptr %12, i32 %or.i34
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i35, i16 %10) #20, !srcloc !311
  br label %for.body8

for.body8:                                        ; preds = %if.end14.for.body8_crit_edge, %ready
  %i.141 = phi i32 [ 0, %ready ], [ %inc16, %if.end14.for.body8_crit_edge ]
  %13 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw, align 4
  %add.ptr.i.i38 = getelementptr i8, ptr %14, i32 %add.i
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i38) #20, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %16 = and i16 %15, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool12.not = icmp eq i16 %16, 0
  br i1 %tobool12.not, label %for.body8.cleanup_crit_edge, label %if.end14

for.body8.cleanup_crit_edge:                      ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end14:                                         ; preds = %for.body8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748) #20
  %inc16 = add nuw nsw i32 %i.141, 1
  %exitcond43.not = icmp eq i32 %inc16, 1000
  br i1 %exitcond43.not, label %if.end14.cleanup_crit_edge, label %if.end14.for.body8_crit_edge

if.end14.for.body8_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body8

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

cleanup:                                          ; preds = %if.end14.cleanup_crit_edge, %for.body8.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %if.end14.cleanup_crit_edge ], [ 0, %for.body8.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @xm_phy_read(ptr nocapture noundef readonly %hw, i32 noundef %port, i16 noundef zeroext %reg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_addr.i = getelementptr inbounds %struct.skge_hw, ptr %hw, i32 0, i32 12
  %0 = ptrtoint ptr %phy_addr.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %phy_addr.i, align 4
  %or22.i = or i16 %1, %reg
  %mul.i.i = shl i32 %port, 12
  %add.i.i = add i32 %mul.i.i, 8192
  %or.i.i = or i32 %add.i.i, 104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %2 = tail call i16 @llvm.bswap.i16(i16 %or22.i) #20
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %4, i32 %or.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i, i16 %2) #20, !srcloc !311
  %or.i25.i = or i32 %add.i.i, 112
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 4
  %add.ptr.i.i26.i = getelementptr i8, ptr %6, i32 %or.i25.i
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i26.i) #20, !srcloc !313
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %phy_type.i = getelementptr inbounds %struct.skge_hw, ptr %hw, i32 0, i32 9
  %9 = ptrtoint ptr %phy_type.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %phy_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp.i = icmp eq i8 %10, 0
  br i1 %cmp.i, label %entry.__xm_phy_read.exit.thread_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.__xm_phy_read.exit.thread_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %__xm_phy_read.exit.thread

for.body.i:                                       ; preds = %if.end10.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.034.i = phi i32 [ %inc.i, %if.end10.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw, align 4
  %add.ptr.i.i29.i = getelementptr i8, ptr %12, i32 %add.i.i
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i29.i) #20, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %14 = and i16 %13, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool.not.i = icmp eq i16 %14, 0
  br i1 %tobool.not.i, label %if.end10.i, label %for.body.i.__xm_phy_read.exit.thread_crit_edge

for.body.i.__xm_phy_read.exit.thread_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %__xm_phy_read.exit.thread

if.end10.i:                                       ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748) #20
  %inc.i = add nuw nsw i32 %i.034.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1000
  br i1 %exitcond.not.i, label %do.end, label %if.end10.i.for.body.i_crit_edge

if.end10.i.for.body.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i

__xm_phy_read.exit.thread:                        ; preds = %for.body.i.__xm_phy_read.exit.thread_crit_edge, %entry.__xm_phy_read.exit.thread_crit_edge
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw, align 4
  %add.ptr.i.i33.i = getelementptr i8, ptr %17, i32 %or.i25.i
  %18 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i33.i) #20, !srcloc !313
  %19 = tail call i16 @llvm.bswap.i16(i16 %18) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  br label %if.end

do.end:                                           ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #22
  %arrayidx = getelementptr %struct.skge_hw, ptr %hw, i32 0, i32 4, i32 %port
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %21) #24
  br label %if.end

if.end:                                           ; preds = %do.end, %__xm_phy_read.exit.thread
  %v.07 = phi i16 [ %19, %__xm_phy_read.exit.thread ], [ %8, %do.end ]
  ret i16 %v.07
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @genesis_link_up(ptr nocapture noundef readonly %skge) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %skge to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skge, align 128
  %port2 = getelementptr inbounds %struct.skge_port, ptr %skge, i32 0, i32 3
  %2 = ptrtoint ptr %port2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port2, align 8
  %mul.i = shl i32 %3, 12
  %add.i = add i32 %mul.i, 8192
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %add.i
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #20, !srcloc !313
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %flow_status = getelementptr inbounds %struct.skge_port, ptr %skge, i32 0, i32 10
  %8 = ptrtoint ptr %flow_status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flow_status, align 8
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.134)
  switch i32 %9, label %if.else [
    i32 1, label %entry.if.then_crit_edge
    i32 3, label %entry.if.then_crit_edge138
  ]

entry.if.then_crit_edge138:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge138
  %11 = or i16 %7, 1024
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %12 = and i16 %7, -1025
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %cmd.0 = phi i16 [ %11, %if.then ], [ %12, %if.else ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %13 = tail call i16 @llvm.bswap.i16(i16 %cmd.0) #20
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %add.ptr.i.i103 = getelementptr i8, ptr %15, i32 %add.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i103, i16 %13) #20, !srcloc !311
  %or.i = or i32 %add.i, 584
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %add.ptr.i.i106 = getelementptr i8, ptr %17, i32 %or.i
  %18 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i106) #20, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %or5.i = or i32 %add.i, 588
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %20, i32 %or5.i
  %21 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i14.i) #20, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %22 = zext i16 %21 to i32
  %23 = zext i16 %18 to i32
  %24 = shl nuw i32 %23, 16
  %25 = or i32 %24, %22
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #20
  %27 = ptrtoint ptr %flow_status to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flow_status, align 8
  %.off = add i32 %28, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then16, label %if.else18

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %or.i109 = or i32 %add.i, 236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %add.ptr.i.i110 = getelementptr i8, ptr %30, i32 %or.i109
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i110, i16 -1) #20, !srcloc !311
  %or17 = or i32 %26, 33947648
  %shl = shl i32 %3, 7
  %add = add i32 %shl, 3096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %32, i32 %add
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 -32768) #20, !srcloc !311
  br label %if.end22

if.else18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %and19 = and i32 %26, -33947649
  %shl20 = shl i32 %3, 7
  %add21 = add i32 %shl20, 3096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  %add.ptr.i111 = getelementptr i8, ptr %34, i32 %add21
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i111, i16 16384) #20, !srcloc !311
  br label %if.end22

if.end22:                                         ; preds = %if.else18, %if.then16
  %mode.0 = phi i32 [ %or17, %if.then16 ], [ %and19, %if.else18 ]
  %conv.i = trunc i32 %mode.0 to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %35 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #20
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  %add.ptr.i.i115 = getelementptr i8, ptr %37, i32 %or.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i115, i16 %35) #20, !srcloc !311
  %shr.i = lshr i32 %mode.0, 16
  %conv6.i = trunc i32 %shr.i to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %38 = tail call i16 @llvm.bswap.i16(i16 %conv6.i) #20
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %40, i32 %or5.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i11.i, i16 %38) #20, !srcloc !311
  %or.i119 = or i32 %add.i, 136
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  %add.ptr.i.i120 = getelementptr i8, ptr %42, i32 %or.i119
  %43 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i120) #20, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %44 = and i16 %43, -1025
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 4
  %add.ptr.i.i124 = getelementptr i8, ptr %46, i32 %or.i119
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i124, i16 %44) #20, !srcloc !311
  %or.i127 = or i32 %add.i, 144
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 4
  %add.ptr.i.i128 = getelementptr i8, ptr %48, i32 %or.i127
  %49 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i128) #20, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 4
  %add.ptr.i.i131 = getelementptr i8, ptr %51, i32 %add.i
  %52 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i131) #20, !srcloc !313
  %53 = tail call i16 @llvm.bswap.i16(i16 %52) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %phy_type = getelementptr inbounds %struct.skge_hw, ptr %1, i32 0, i32 9
  %54 = ptrtoint ptr %phy_type to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %phy_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %cmp30.not = icmp eq i8 %55, 0
  br i1 %cmp30.not, label %if.end22.if.end51_crit_edge, label %if.end39

if.end22.if.end51_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end51

if.end39:                                         ; preds = %if.end22
  %duplex = getelementptr inbounds %struct.skge_port, ptr %skge, i32 0, i32 14
  %56 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %duplex, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %57)
  %cmp33 = icmp eq i8 %57, 1
  %58 = or i16 %53, 16
  %spec.select = select i1 %cmp33, i16 %58, i16 %53
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %55)
  %cmp42 = icmp eq i8 %55, 1
  br i1 %cmp42, label %if.then44, label %if.end39.if.end51_crit_edge

if.end39.if.end51_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end51

if.then44:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #22
  %call45 = tail call fastcc zeroext i16 @xm_phy_read(ptr noundef %1, i32 noundef %3, i16 noundef zeroext 24)
  %59 = and i16 %call45, -33
  %call49 = tail call fastcc i32 @xm_phy_write(ptr noundef %1, i32 noundef %3, i16 noundef zeroext 24, i16 noundef zeroext %59)
  %call50 = tail call fastcc i32 @xm_phy_write(ptr noundef %1, i32 noundef %3, i16 noundef zeroext 27, i16 noundef zeroext -17423)
  br label %if.end51

if.end51:                                         ; preds = %if.then44, %if.end39.if.end51_crit_edge, %if.end22.if.end51_crit_edge
  %cmd.1137 = phi i16 [ %spec.select, %if.then44 ], [ %spec.select, %if.end39.if.end51_crit_edge ], [ %53, %if.end22.if.end51_crit_edge ]
  %60 = or i16 %cmd.1137, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %61 = tail call i16 @llvm.bswap.i16(i16 %60) #20
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %1, align 4
  %add.ptr.i.i134 = getelementptr i8, ptr %63, i32 %add.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i134, i16 %61) #20, !srcloc !311
  tail call fastcc void @skge_link_up(ptr noundef %skge)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @skge_link_up(ptr nocapture noundef readonly %skge) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %skge to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skge, align 128
  %port = getelementptr inbounds %struct.skge_port, ptr %skge, i32 0, i32 3
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port, align 8
  %shl = shl i32 %3, 7
  %add = add i32 %shl, 3132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  tail call void @arm_heavy_mb() #20
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %add
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 22) #20, !srcloc !305
  %netdev = getelementptr inbounds %struct.skge_port, ptr %skge, i32 0, i32 1
  %6 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %netdev, align 4
  tail call void @netif_carrier_on(ptr noundef %7) #20
  %8 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %netdev, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 103
  %10 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %11) #20
  %msg_enable = getelementptr inbounds %struct.skge_port, ptr %skge, i32 0, i32 4
  %12 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %msg_enable, align 4
  %and = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end

if.then:                                          ; preds = %entry
  %14 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %netdev, align 4
  %speed = getelementptr inbounds %struct.skge_port, ptr %skge, i32 0, i32 15
  %16 = ptrtoint ptr %speed to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %speed, align 16
  %conv = zext i16 %17 to i32
  %duplex = getelementptr inbounds %struct.skge_port, ptr %skge, i32 0, i32 14
  %18 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %duplex, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %19)
  %cmp = icmp eq i8 %19, 1
  %cond = select i1 %cmp, ptr @.str.38, ptr @.str.39
  %flow_status = getelementptr inbounds %struct.skge_port, ptr %skge, i32 0, i32 10
  %20 = ptrtoint ptr %flow_status to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flow_status, align 8
  %switch.tableidx = add i32 %21, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %22 = icmp ult i32 %switch.tableidx, 4
  br i1 %22, label %switch.lookup, label %if.then.skge_pause.exit_crit_edge

if.then.skge_pause.exit_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %skge_pause.exit

switch.lookup:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.skge_link_up, i32 0, i32 %switch.tableidx
  %23 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %23)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %skge_pause.exit

skge_pause.exit:                                  ; preds = %switch.lookup, %if.then.skge_pause.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.44, %if.then.skge_pause.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %15, ptr noundef nonnull @.str.37, i32 noundef %conv, ptr noundef nonnull %cond, ptr noundef nonnull %retval.0.i) #24
  br label %do.end

do.end:                                           ; preds = %skge_pause.exit, %entry.do.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @yukon_init(ptr nocapture noundef readonly %hw, i32 noundef %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.skge_hw, ptr %hw, i32 0, i32 4, i32 %port
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %autoneg = getelementptr i8, ptr %1, i32 2638
  %2 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %autoneg, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp = icmp eq i8 %3, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %.pre = shl i32 %port, 12
  %.pre223 = add i32 %.pre, 10368
  br label %if.end

if.then:                                          ; preds = %entry
  %phy_addr.i.i = getelementptr inbounds %struct.skge_hw, ptr %hw, i32 0, i32 12
  %4 = ptrtoint ptr %phy_addr.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %phy_addr.i.i, align 4
  %shl.i.i = shl i16 %5, 11
  %or4.i.i = or i16 %shl.i.i, 1312
  %mul.i.i.i = shl i32 %port, 12
  %add1.i.i.i = add i32 %mul.i.i.i, 10368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %6 = tail call i16 @llvm.bswap.i16(i16 %or4.i.i) #20
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %8, i32 %add1.i.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i.i, i16 %6) #20, !srcloc !311
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.024.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 1000
  br i1 %exitcond.not.i.i, label %do.end.i, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %if.then
  %i.024.i.i = phi i32 [ 0, %if.then ], [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748) #20
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 4
  %add.ptr.i.i19.i.i = getelementptr i8, ptr %11, i32 %add1.i.i.i
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i19.i.i) #20, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %13 = and i16 %12, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.not.i.i = icmp eq i16 %13, 0
  br i1 %tobool.not.i.i, label %for.cond.i.i, label %__gm_phy_read.exit.thread.i

__gm_phy_read.exit.thread.i:                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %add1.i22.i.i = add i32 %mul.i.i.i, 10372
  %14 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw, align 4
  %add.ptr.i.i23.i.i = getelementptr i8, ptr %15, i32 %add1.i22.i.i
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i23.i.i) #20, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %17 = and i16 %16, -28688
  %18 = or i16 %17, 28673
  %19 = tail call i16 @llvm.bswap.i16(i16 %18)
  br label %gm_phy_read.exit

do.end.i:                                         ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %21) #24
  br label %gm_phy_read.exit

gm_phy_read.exit:                                 ; preds = %do.end.i, %__gm_phy_read.exit.thread.i
  %v.07.i = phi i16 [ %19, %__gm_phy_read.exit.thread.i ], [ 368, %do.end.i ]
  %call10 = tail call fastcc i32 @gm_phy_write(ptr noundef %hw, i32 noundef %port, i16 noundef zeroext 20, i16 noundef zeroext %v.07.i)
  br label %if.end

if.end:                                           ; preds = %gm_phy_read.exit, %entry.if.end_crit_edge
  %add1.i.i.i206.pre-phi = phi i32 [ %.pre223, %entry.if.end_crit_edge ], [ %add1.i.i.i, %gm_phy_read.exit ]
  %mul.i.i.i205.pre-phi = phi i32 [ %.pre, %entry.if.end_crit_edge ], [ %mul.i.i.i, %gm_phy_read.exit ]
  %phy_addr.i.i202 = getelementptr inbounds %struct.skge_hw, ptr %hw, i32 0, i32 12
  %22 = ptrtoint ptr %phy_addr.i.i202 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %phy_addr.i.i202, align 4
  %shl.i.i203 = shl i16 %23, 11
  %or4.i.i204 = or i16 %shl.i.i203, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %24 = tail call i16 @llvm.bswap.i16(i16 %or4.i.i204) #20
  %25 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw, align 4
  %add.ptr.i.i.i.i207 = getelementptr i8, ptr %26, i32 %add1.i.i.i206.pre-phi
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i.i207, i16 %24) #20, !srcloc !311
  br label %for.body.i.i214

for.cond.i.i210:                                  ; preds = %for.body.i.i214
  %inc.i.i208 = add nuw nsw i32 %i.024.i.i211, 1
  %exitcond.not.i.i209 = icmp eq i32 %inc.i.i208, 1000
  br i1 %exitcond.not.i.i209, label %do.end.i220, label %for.cond.i.i210.for.body.i.i214_crit_edge

for.cond.i.i210.for.body.i.i214_crit_edge:        ; preds = %for.cond.i.i210
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i.i214

for.body.i.i214:                                  ; preds = %for.cond.i.i210.for.body.i.i214_crit_edge, %if.end
  %i.024.i.i211 = phi i32 [ 0, %if.end ], [ %inc.i.i208, %for.cond.i.i210.for.body.i.i214_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748) #20
  %28 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw, align 4
  %add.ptr.i.i19.i.i212 = getelementptr i8, ptr %29, i32 %add1.i.i.i206.pre-phi
  %30 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i19.i.i212) #20, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %31 = and i16 %30, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool.not.i.i213 = icmp eq i16 %31, 0
  br i1 %tobool.not.i.i213, label %for.cond.i.i210, label %__gm_phy_read.exit.thread.i217

__gm_phy_read.exit.thread.i217:                   ; preds = %for.body.i.i214
  call void @__sanitizer_cov_trace_pc() #22
  %add1.i22.i.i215 = add i32 %mul.i.i.i205.pre-phi, 10372
  %32 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw, align 4
  %add.ptr.i.i23.i.i216 = getelementptr i8, ptr %33, i32 %add1.i22.i.i215
  %34 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i23.i.i216) #20, !srcloc !313
  %35 = tail call i16 @llvm.bswap.i16(i16 %34) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  br label %gm_phy_read.exit222

do.end.i220:                                      ; preds = %for.cond.i.i210
  call void @__sanitizer_cov_trace_pc() #22
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx, align 4
  %call1.i219 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %37) #24
  br label %gm_phy_read.exit222

gm_phy_read.exit222:                              ; preds = %do.end.i220, %__gm_phy_read.exit.thread.i217
  %v.07.i221 = phi i16 [ %35, %__gm_phy_read.exit.thread.i217 ], [ 0, %do.end.i220 ]
  %38 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %autoneg, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %cmp14 = icmp eq i8 %39, 0
  %40 = and i16 %v.07.i221, 28671
  %spec.select = select i1 %cmp14, i16 %40, i16 %v.07.i221
  %41 = or i16 %spec.select, -32768
  %call24 = tail call fastcc i32 @gm_phy_write(ptr noundef %hw, i32 noundef %port, i16 noundef zeroext 0, i16 noundef zeroext %41)
  %42 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %autoneg, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %43)
  %cmp27 = icmp eq i8 %43, 1
  br i1 %cmp27, label %if.then29, label %if.else109

if.then29:                                        ; preds = %gm_phy_read.exit222
  %copper = getelementptr inbounds %struct.skge_hw, ptr %hw, i32 0, i32 7
  %44 = ptrtoint ptr %copper to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %copper, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not = icmp eq i8 %45, 0
  %advertising83 = getelementptr i8, ptr %1, i32 2644
  %46 = ptrtoint ptr %advertising83 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %advertising83, align 4
  br i1 %tobool.not, label %if.else, label %if.then30

if.then30:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #22
  %48 = trunc i32 %47 to i16
  %49 = shl i16 %48, 4
  %50 = and i16 %49, 768
  %and47 = and i32 %47, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  %adv.0 = select i1 %tobool48.not, i16 1, i16 257
  %51 = shl i16 %48, 5
  %52 = and i16 %51, 128
  %53 = and i16 %51, 64
  %54 = and i16 %51, 32
  %flow_control = getelementptr i8, ptr %1, i32 2628
  %55 = ptrtoint ptr %flow_control to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %flow_control, align 4
  %arrayidx78 = getelementptr [5 x i16], ptr @phy_pause_map, i32 0, i32 %56
  %57 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %arrayidx78, align 2
  %59 = or i16 %adv.0, %58
  %60 = or i16 %59, %52
  %61 = or i16 %60, %53
  %or81198 = or i16 %61, %54
  br label %if.end129

if.else:                                          ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #22
  %and84 = and i32 %47, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  %spec.select200 = select i1 %tobool85.not, i16 1, i16 33
  %62 = trunc i32 %47 to i16
  %63 = shl i16 %62, 2
  %64 = and i16 %63, 64
  %flow_control99 = getelementptr i8, ptr %1, i32 2628
  %65 = ptrtoint ptr %flow_control99 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %flow_control99, align 4
  %arrayidx100 = getelementptr [5 x i16], ptr @fiber_pause_map, i32 0, i32 %66
  %67 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %arrayidx100, align 2
  %69 = or i16 %spec.select200, %68
  %or103197 = or i16 %69, %64
  br label %if.end129

if.else109:                                       ; preds = %gm_phy_read.exit222
  %duplex = getelementptr i8, ptr %1, i32 2639
  %70 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %duplex, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %71)
  %cmp111 = icmp eq i8 %71, 1
  %spec.select201 = select i1 %cmp111, i16 256, i16 0
  %speed = getelementptr i8, ptr %1, i32 2640
  %72 = ptrtoint ptr %speed to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %speed, align 16
  %74 = zext i16 %73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.135)
  switch i16 %73, label %if.else109.sw.epilog_crit_edge [
    i16 1000, label %sw.bb
    i16 100, label %sw.bb122
  ]

if.else109.sw.epilog_crit_edge:                   ; preds = %if.else109
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

sw.bb:                                            ; preds = %if.else109
  call void @__sanitizer_cov_trace_pc() #22
  %75 = or i16 %spec.select201, 64
  br label %sw.epilog

sw.bb122:                                         ; preds = %if.else109
  call void @__sanitizer_cov_trace_pc() #22
  %76 = or i16 %spec.select201, 8192
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb122, %sw.bb, %if.else109.sw.epilog_crit_edge
  %ctrl.2 = phi i16 [ %spec.select201, %if.else109.sw.epilog_crit_edge ], [ %76, %sw.bb122 ], [ %75, %sw.bb ]
  %77 = or i16 %ctrl.2, -32768
  br label %if.end129

if.end129:                                        ; preds = %sw.epilog, %if.else, %if.then30
  %ctrl.3 = phi i16 [ %77, %sw.epilog ], [ 4608, %if.else ], [ 4608, %if.then30 ]
  %ct1000.3 = phi i16 [ 4096, %sw.epilog ], [ 0, %if.else ], [ %50, %if.then30 ]
  %adv.7 = phi i16 [ 1, %sw.epilog ], [ %or103197, %if.else ], [ %or81198, %if.then30 ]
  %call130 = tail call fastcc i32 @gm_phy_write(ptr noundef %hw, i32 noundef %port, i16 noundef zeroext 9, i16 noundef zeroext %ct1000.3)
  %call131 = tail call fastcc i32 @gm_phy_write(ptr noundef %hw, i32 noundef %port, i16 noundef zeroext 4, i16 noundef zeroext %adv.7)
  %call132 = tail call fastcc i32 @gm_phy_write(ptr noundef %hw, i32 noundef %port, i16 noundef zeroext 0, i16 noundef zeroext %ctrl.3)
  %78 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %autoneg, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %79)
  %cmp135 = icmp eq i8 %79, 1
  %. = select i1 %cmp135, i16 -30720, i16 -15232
  %call140 = tail call fastcc i32 @gm_phy_write(ptr noundef %hw, i32 noundef %port, i16 noundef zeroext 18, i16 noundef zeroext %.)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gm_phy_write(ptr nocapture noundef readonly %hw, i32 noundef %port, i16 noundef zeroext %reg, i16 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %mul.i = shl i32 %port, 12
  %add1.i = add i32 %mul.i, 10372
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %0 = tail call i16 @llvm.bswap.i16(i16 %val) #20
  %1 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw, align 4
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 %add1.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 %0) #20, !srcloc !311
  %phy_addr = getelementptr inbounds %struct.skge_hw, ptr %hw, i32 0, i32 12
  %3 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %phy_addr, align 4
  %shl = shl i16 %4, 11
  %shl2 = shl i16 %reg, 6
  %and3 = and i16 %shl2, 1984
  %or = or i16 %shl, %and3
  %add1.i19 = add i32 %mul.i, 10368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %5 = tail call i16 @llvm.bswap.i16(i16 %or) #20
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 4
  %add.ptr.i.i20 = getelementptr i8, ptr %7, i32 %add1.i19
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i20, i16 %5) #20, !srcloc !311
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.025, 1
  %exitcond.not = icmp eq i32 %inc, 1000
  br i1 %exitcond.not, label %do.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry
  %i.025 = phi i32 [ 0, %entry ], [ %inc, %for.cond.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #20
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw, align 4
  %add.ptr.i.i24 = getelementptr i8, ptr %10, i32 %add1.i19
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i24) #20, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %12 = and i16 %11, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.not = icmp eq i16 %12, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

do.end:                                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #22
  %arrayidx = getelementptr %struct.skge_hw, ptr %hw, i32 0, i32 4, i32 %port
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %14) #24
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @skge_debug_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @skge_debug_show, ptr noundef %1) #20
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @skge_debug_show(ptr noundef %seq, ptr nocapture noundef readnone %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 128
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup24_crit_edge, label %if.end

entry.cleanup24_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup24

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %add.ptr.i56 = getelementptr i8, ptr %7, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i56) #20, !srcloc !308
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !309
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %add.ptr.i57 = getelementptr i8, ptr %11, i32 12
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i57) #20, !srcloc !308
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !309
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.49, i32 noundef %9, i32 noundef %13) #20
  %tx_ring = getelementptr i8, ptr %1, i32 2544
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !318
  %14 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tx_ring, align 4
  %to_use.i = getelementptr i8, ptr %1, i32 2548
  %16 = ptrtoint ptr %to_use.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %to_use.i, align 4
  %cmp.i = icmp ugt ptr %15, %17
  br i1 %cmp.i, label %if.end.skge_avail.exit_crit_edge, label %cond.false.i

if.end.skge_avail.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %skge_avail.exit

cond.false.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %count.i = getelementptr i8, ptr %1, i32 2556
  %18 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %count.i, align 4
  br label %skge_avail.exit

skge_avail.exit:                                  ; preds = %cond.false.i, %if.end.skge_avail.exit_crit_edge
  %cond.i = phi i32 [ %19, %cond.false.i ], [ 0, %if.end.skge_avail.exit_crit_edge ]
  %sub.ptr.lhs.cast.i = ptrtoint ptr %15 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %17 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 20
  %add.i = add nsw i32 %sub.ptr.div.i, -1
  %sub.i = add i32 %add.i, %cond.i
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.50, i32 noundef %sub.i) #20
  %20 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %20)
  %e.060 = load ptr, ptr %tx_ring, align 4
  %21 = ptrtoint ptr %to_use.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %to_use.i, align 4
  %cmp.not61 = icmp eq ptr %e.060, %22
  br i1 %cmp.not61, label %skge_avail.exit.for.end_crit_edge, label %skge_avail.exit.for.body_crit_edge

skge_avail.exit.for.body_crit_edge:               ; preds = %skge_avail.exit
  br label %for.body

skge_avail.exit.for.end_crit_edge:                ; preds = %skge_avail.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %skge_avail.exit.for.body_crit_edge
  %e.062 = phi ptr [ %e.0, %for.body.for.body_crit_edge ], [ %e.060, %skge_avail.exit.for.body_crit_edge ]
  %desc = getelementptr inbounds %struct.skge_element, ptr %e.062, i32 0, i32 1
  %23 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %desc, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %dma_hi = getelementptr inbounds %struct.skge_tx_desc, ptr %24, i32 0, i32 3
  %27 = ptrtoint ptr %dma_hi to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dma_hi, align 4
  %dma_lo = getelementptr inbounds %struct.skge_tx_desc, ptr %24, i32 0, i32 2
  %29 = ptrtoint ptr %dma_lo to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dma_lo, align 4
  %status = getelementptr inbounds %struct.skge_tx_desc, ptr %24, i32 0, i32 4
  %31 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %status, align 4
  %csum_offs = getelementptr inbounds %struct.skge_tx_desc, ptr %24, i32 0, i32 5
  %33 = ptrtoint ptr %csum_offs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %csum_offs, align 4
  %csum_write = getelementptr inbounds %struct.skge_tx_desc, ptr %24, i32 0, i32 6
  %35 = ptrtoint ptr %csum_write to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %csum_write, align 4
  %conv = zext i16 %36 to i32
  %csum_start = getelementptr inbounds %struct.skge_tx_desc, ptr %24, i32 0, i32 7
  %37 = ptrtoint ptr %csum_start to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %csum_start, align 2
  %conv8 = zext i16 %38 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.51, i32 noundef %26, i32 noundef %28, i32 noundef %30, i32 noundef %32, i32 noundef %34, i32 noundef %conv, i32 noundef %conv8) #20
  %39 = ptrtoint ptr %e.062 to i32
  call void @__asan_load4_noabort(i32 %39)
  %e.0 = load ptr, ptr %e.062, align 4
  %40 = ptrtoint ptr %to_use.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %to_use.i, align 4
  %cmp.not = icmp eq ptr %e.0, %41
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %skge_avail.exit.for.end_crit_edge
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.52) #20
  %rx_ring = getelementptr i8, ptr %1, i32 2560
  %42 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %42)
  %e.163 = load ptr, ptr %rx_ring, align 4
  %desc1164 = getelementptr inbounds %struct.skge_element, ptr %e.163, i32 0, i32 1
  %43 = ptrtoint ptr %desc1164 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %desc1164, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %46)
  %tobool.not65 = icmp sgt i32 %46, -1
  br i1 %tobool.not65, label %for.end.cleanup_crit_edge, label %for.end.cleanup24_crit_edge

for.end.cleanup24_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup24

for.end.cleanup_crit_edge:                        ; preds = %for.end
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %47 = phi i32 [ %65, %cleanup.cleanup_crit_edge ], [ %46, %for.end.cleanup_crit_edge ]
  %48 = phi ptr [ %63, %cleanup.cleanup_crit_edge ], [ %44, %for.end.cleanup_crit_edge ]
  %e.166 = phi ptr [ %e.1, %cleanup.cleanup_crit_edge ], [ %e.163, %for.end.cleanup_crit_edge ]
  %dma_hi16 = getelementptr inbounds %struct.skge_rx_desc, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %dma_hi16 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %dma_hi16, align 4
  %dma_lo17 = getelementptr inbounds %struct.skge_rx_desc, ptr %48, i32 0, i32 2
  %51 = ptrtoint ptr %dma_lo17 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %dma_lo17, align 4
  %status18 = getelementptr inbounds %struct.skge_rx_desc, ptr %48, i32 0, i32 4
  %53 = ptrtoint ptr %status18 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %status18, align 4
  %timestamp = getelementptr inbounds %struct.skge_rx_desc, ptr %48, i32 0, i32 5
  %55 = ptrtoint ptr %timestamp to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %timestamp, align 4
  %csum1 = getelementptr inbounds %struct.skge_rx_desc, ptr %48, i32 0, i32 7
  %57 = ptrtoint ptr %csum1 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %csum1, align 2
  %conv19 = zext i16 %58 to i32
  %csum1_start = getelementptr inbounds %struct.skge_rx_desc, ptr %48, i32 0, i32 9
  %59 = ptrtoint ptr %csum1_start to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %csum1_start, align 2
  %conv20 = zext i16 %60 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.53, i32 noundef %47, i32 noundef %50, i32 noundef %52, i32 noundef %54, i32 noundef %56, i32 noundef %conv19, i32 noundef %conv20) #20
  %61 = ptrtoint ptr %e.166 to i32
  call void @__asan_load4_noabort(i32 %61)
  %e.1 = load ptr, ptr %e.166, align 4
  %desc11 = getelementptr inbounds %struct.skge_element, ptr %e.1, i32 0, i32 1
  %62 = ptrtoint ptr %desc11 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %desc11, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %63, align 4
  %tobool.not = icmp sgt i32 %65, -1
  br i1 %tobool.not, label %cleanup.cleanup_crit_edge, label %cleanup.cleanup24_crit_edge

cleanup.cleanup24_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup24

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

cleanup24:                                        ; preds = %cleanup.cleanup24_crit_edge, %for.end.cleanup24_crit_edge, %entry.cleanup24_crit_edge
  %retval.0 = phi i32 [ -100, %entry.cleanup24_crit_edge ], [ 0, %for.end.cleanup24_crit_edge ], [ 0, %cleanup.cleanup24_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @skge_probe(ptr noundef %pdev, ptr nocapture noundef readnone %ent) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pci_enable_device(ptr noundef %pdev) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.54) #24
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str.1) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end10, label %do.end8

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %dev9 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.57) #24
  br label %err_out_disable_pdev

if.end10:                                         ; preds = %if.end
  tail call void @pci_set_master(ptr noundef %pdev) #20
  %dev12 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call13 = tail call i32 @dma_set_mask(ptr noundef %dev12, i64 noundef -1) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end10.if.end25_crit_edge, label %if.else

if.end10.if.end25_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end25

if.else:                                          ; preds = %if.end10
  %call19 = tail call i32 @dma_set_mask(ptr noundef %dev12, i64 noundef 4294967295) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.else.if.end25_crit_edge, label %if.else.do.end30_crit_edge

if.else.do.end30_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end30

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end25

if.end25:                                         ; preds = %if.else.if.end25_crit_edge, %if.end10.if.end25_crit_edge
  %.sink = phi i64 [ -1, %if.end10.if.end25_crit_edge ], [ 4294967295, %if.else.if.end25_crit_edge ]
  %using_dac.0 = phi i32 [ 1, %if.end10.if.end25_crit_edge ], [ 0, %if.else.if.end25_crit_edge ]
  %call23 = tail call i32 @dma_set_coherent_mask(ptr noundef %dev12, i64 noundef %.sink) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool26.not = icmp eq i32 %call23, 0
  br i1 %tobool26.not, label %if.end32, label %if.end25.do.end30_crit_edge

if.end25.do.end30_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end30

do.end30:                                         ; preds = %if.end25.do.end30_crit_edge, %if.else.do.end30_crit_edge
  %err.0210 = phi i32 [ %call23, %if.end25.do.end30_crit_edge ], [ %call19, %if.else.do.end30_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef nonnull @.str.60) #24
  br label %err_out_free_regions

if.end32:                                         ; preds = %if.end25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #20
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !312
  %call33 = call i32 @pci_read_config_dword(ptr noundef %pdev, i32 noundef 68, ptr noundef nonnull %reg) #20
  %1 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %reg, align 4
  %or = or i32 %2, 4
  store i32 %or, ptr %reg, align 4
  %call34 = call i32 @pci_write_config_dword(ptr noundef %pdev, i32 noundef 68, i32 noundef %or) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #20
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %3 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end32.if.end8.i.i_crit_edge

if.end32.if.end8.i.i_crit_edge:                   ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end8.i.i

if.end.i.i:                                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #22
  %5 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev12, align 4
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.end.i.i, %if.end32.if.end8.i.i_crit_edge
  %retval.0.i.i = phi ptr [ %6, %if.end.i.i ], [ %4, %if.end32.if.end8.i.i_crit_edge ]
  %call36 = call i32 @strlen(ptr noundef %retval.0.i.i) #27
  %add37 = add i32 %call36, 162
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add37, i32 noundef 3520) #25
  %tobool39.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool39.not, label %if.end8.i.i.err_out_free_regions_crit_edge, label %if.end41

if.end8.i.i.err_out_free_regions_crit_edge:       ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %err_out_free_regions

if.end41:                                         ; preds = %if.end8.i.i
  %irq_name = getelementptr inbounds %struct.skge_hw, ptr %call9.i.i, i32 0, i32 15
  %7 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i192 = icmp eq ptr %8, null
  br i1 %tobool.not.i.i192, label %if.end.i.i194, label %if.end41.pci_name.exit196_crit_edge

if.end41.pci_name.exit196_crit_edge:              ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #22
  br label %pci_name.exit196

if.end.i.i194:                                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #22
  %9 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev12, align 4
  br label %pci_name.exit196

pci_name.exit196:                                 ; preds = %if.end.i.i194, %if.end41.pci_name.exit196_crit_edge
  %retval.0.i.i195 = phi ptr [ %10, %if.end.i.i194 ], [ %8, %if.end41.pci_name.exit196_crit_edge ]
  %call43 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %irq_name, ptr noundef nonnull @.str.62, ptr noundef %retval.0.i.i195)
  %pdev44 = getelementptr inbounds %struct.skge_hw, ptr %call9.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %pdev44 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %pdev, ptr %pdev44, align 4
  %hw_lock = getelementptr inbounds %struct.skge_hw, ptr %call9.i.i, i32 0, i32 2
  call void @__raw_spin_lock_init(ptr noundef %hw_lock, ptr noundef nonnull @.str.63, ptr noundef nonnull @skge_probe.__key, i16 noundef signext 3) #20
  %phy_lock = getelementptr inbounds %struct.skge_hw, ptr %call9.i.i, i32 0, i32 13
  call void @__raw_spin_lock_init(ptr noundef %phy_lock, ptr noundef nonnull @.str.65, ptr noundef nonnull @skge_probe.__key.64, i16 noundef signext 3) #20
  %phy_task = getelementptr inbounds %struct.skge_hw, ptr %call9.i.i, i32 0, i32 14
  call void @tasklet_setup(ptr noundef %phy_task, ptr noundef nonnull @skge_extirq) #20
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %12 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %resource, align 8
  %call53 = call ptr @ioremap(i32 noundef %13, i32 noundef 16384) #20
  %14 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call53, ptr %call9.i.i, align 128
  %tobool55.not = icmp eq ptr %call53, null
  br i1 %tobool55.not, label %do.end59, label %if.end61

do.end59:                                         ; preds = %pci_name.exit196
  call void @__sanitizer_cov_trace_pc() #22
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef nonnull @.str.67) #24
  br label %err_out_free_hw

if.end61:                                         ; preds = %pci_name.exit196
  %call62 = call fastcc i32 @skge_reset(ptr noundef nonnull %call9.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %do.end68, label %if.end61.err_out_iounmap_crit_edge

if.end61.err_out_iounmap_crit_edge:               ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #22
  br label %err_out_iounmap

do.end68:                                         ; preds = %if.end61
  %15 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %resource, align 8
  %conv = zext i32 %16 to i64
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %17 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq, align 4
  %chip_id.i = getelementptr inbounds %struct.skge_hw, ptr %call9.i.i, i32 0, i32 5
  %19 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %chip_id.i, align 64
  %21 = zext i8 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.136)
  switch i8 %20, label %for.inc.3.i [
    i8 10, label %do.end68.if.then.i_crit_edge
    i8 -80, label %if.then.fold.split.i
    i8 -79, label %if.then.fold.split14.i
    i8 -78, label %if.then.fold.split15.i
  ]

do.end68.if.then.i_crit_edge:                     ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then.i

if.then.fold.split.i:                             ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then.i

if.then.fold.split14.i:                           ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then.i

if.then.fold.split15.i:                           ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then.i

if.then.i:                                        ; preds = %if.then.fold.split15.i, %if.then.fold.split14.i, %if.then.fold.split.i, %do.end68.if.then.i_crit_edge
  %i.012.lcssa.i = phi i32 [ 0, %do.end68.if.then.i_crit_edge ], [ 1, %if.then.fold.split.i ], [ 2, %if.then.fold.split14.i ], [ 3, %if.then.fold.split15.i ]
  %name.i = getelementptr [4 x %struct.anon.124], ptr @skge_chips, i32 0, i32 %i.012.lcssa.i, i32 1
  %22 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %name.i, align 4
  br label %skge_board_name.exit

for.inc.3.i:                                      ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #22
  %conv6.i = zext i8 %20 to i32
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull @skge_board_name.buf, i32 noundef 16, ptr noundef nonnull @.str.101, i32 noundef %conv6.i) #20
  br label %skge_board_name.exit

skge_board_name.exit:                             ; preds = %for.inc.3.i, %if.then.i
  %retval.0.i = phi ptr [ %23, %if.then.i ], [ @skge_board_name.buf, %for.inc.3.i ]
  %chip_rev = getelementptr inbounds %struct.skge_hw, ptr %call9.i.i, i32 0, i32 6
  %24 = ptrtoint ptr %chip_rev to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %chip_rev, align 1
  %conv73 = zext i8 %25 to i32
  %call74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.2, i64 noundef %conv, i32 noundef %18, ptr noundef %retval.0.i, i32 noundef %conv73) #24
  %call75 = call fastcc ptr @skge_devinit(ptr noundef nonnull %call9.i.i, i32 noundef 0, i32 noundef %using_dac.0)
  %tobool76.not = icmp eq ptr %call75, null
  br i1 %tobool76.not, label %skge_board_name.exit.err_out_led_off_crit_edge, label %if.end78

skge_board_name.exit.err_out_led_off_crit_edge:   ; preds = %skge_board_name.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %err_out_led_off

if.end78:                                         ; preds = %skge_board_name.exit
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %call75, i32 0, i32 86
  %26 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev_addr, align 64
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %30 = and i32 %29, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.i.not.i = icmp eq i32 %30, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end78.do.end83_crit_edge

if.end78.do.end83_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end83

is_valid_ether_addr.exit:                         ; preds = %if.end78
  %add.ptr.i.i = getelementptr i8, ptr %27, i32 4
  %31 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %32 to i32
  %or.i.i = or i32 %29, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i197.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i197.not, label %is_valid_ether_addr.exit.do.end83_crit_edge, label %is_valid_ether_addr.exit.if.end85_crit_edge

is_valid_ether_addr.exit.if.end85_crit_edge:      ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end85

is_valid_ether_addr.exit.do.end83_crit_edge:      ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end83

do.end83:                                         ; preds = %is_valid_ether_addr.exit.do.end83_crit_edge, %if.end78.do.end83_crit_edge
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev12, ptr noundef nonnull @.str.73) #24
  br label %if.end85

if.end85:                                         ; preds = %do.end83, %is_valid_ether_addr.exit.if.end85_crit_edge
  %call86 = call i32 @register_netdev(ptr noundef nonnull %call75) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end93, label %do.end91

do.end91:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #22
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef nonnull @.str.76) #24
  br label %err_out_free_netdev

if.end93:                                         ; preds = %if.end85
  %msg_enable.i = getelementptr i8, ptr %call75, i32 2540
  %33 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %34, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end93.skge_show_addr.exit_crit_edge, label %if.then.i198

if.end93.skge_show_addr.exit_crit_edge:           ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #22
  br label %skge_show_addr.exit

if.then.i198:                                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #22
  %netdev.i = getelementptr i8, ptr %call75, i32 2308
  %35 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %netdev.i, align 4
  %37 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev_addr, align 64
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %36, ptr noundef nonnull @.str.116, ptr noundef %38) #24
  br label %skge_show_addr.exit

skge_show_addr.exit:                              ; preds = %if.then.i198, %if.end93.skge_show_addr.exit_crit_edge
  %ports = getelementptr inbounds %struct.skge_hw, ptr %call9.i.i, i32 0, i32 8
  %39 = ptrtoint ptr %ports to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %ports, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %40)
  %cmp = icmp ugt i8 %40, 1
  br i1 %cmp, label %if.then96, label %skge_show_addr.exit.if.end121_crit_edge

skge_show_addr.exit.if.end121_crit_edge:          ; preds = %skge_show_addr.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end121

if.then96:                                        ; preds = %skge_show_addr.exit
  %call97 = call fastcc ptr @skge_devinit(ptr noundef nonnull %call9.i.i, i32 noundef 1, i32 noundef %using_dac.0)
  %tobool98.not = icmp eq ptr %call97, null
  br i1 %tobool98.not, label %if.then96.err_out_unregister_crit_edge, label %if.end100

if.then96.err_out_unregister_crit_edge:           ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #22
  br label %err_out_unregister

if.end100:                                        ; preds = %if.then96
  %call101 = call i32 @register_netdev(ptr noundef nonnull %call97) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.end108, label %do.end106

do.end106:                                        ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #22
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef nonnull @.str.79) #24
  br label %err_out_free_dev1

if.end108:                                        ; preds = %if.end100
  %41 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %irq, align 4
  %call.i199 = call i32 @request_threaded_irq(i32 noundef %42, ptr noundef nonnull @skge_intr, ptr noundef null, i32 noundef 128, ptr noundef %irq_name, ptr noundef nonnull %call9.i.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i199)
  %tobool113.not = icmp eq i32 %call.i199, 0
  br i1 %tobool113.not, label %if.end120, label %do.end117

do.end117:                                        ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #22
  %43 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef nonnull @.str.82, i32 noundef %44) #24
  call void @unregister_netdev(ptr noundef nonnull %call97) #20
  br label %err_out_free_dev1

if.end120:                                        ; preds = %if.end108
  %msg_enable.i200 = getelementptr i8, ptr %call97, i32 2540
  %45 = ptrtoint ptr %msg_enable.i200 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %msg_enable.i200, align 4
  %and.i201 = and i32 %46, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i201)
  %tobool.not.i202 = icmp eq i32 %and.i201, 0
  br i1 %tobool.not.i202, label %if.end120.if.end121_crit_edge, label %if.then.i205

if.end120.if.end121_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end121

if.then.i205:                                     ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #22
  %netdev.i203 = getelementptr i8, ptr %call97, i32 2308
  %47 = ptrtoint ptr %netdev.i203 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %netdev.i203, align 4
  %dev_addr.i204 = getelementptr inbounds %struct.net_device, ptr %call97, i32 0, i32 86
  %49 = ptrtoint ptr %dev_addr.i204 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev_addr.i204, align 64
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %48, ptr noundef nonnull @.str.116, ptr noundef %50) #24
  br label %if.end121

if.end121:                                        ; preds = %if.then.i205, %if.end120.if.end121_crit_edge, %skge_show_addr.exit.if.end121_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %51 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call9.i.i, ptr %driver_data.i.i, align 4
  br label %cleanup

err_out_free_dev1:                                ; preds = %do.end117, %do.end106
  %err.1 = phi i32 [ %call101, %do.end106 ], [ %call.i199, %do.end117 ]
  call void @free_netdev(ptr noundef nonnull %call97) #20
  br label %err_out_unregister

err_out_unregister:                               ; preds = %err_out_free_dev1, %if.then96.err_out_unregister_crit_edge
  %err.2 = phi i32 [ %err.1, %err_out_free_dev1 ], [ -12, %if.then96.err_out_unregister_crit_edge ]
  call void @unregister_netdev(ptr noundef nonnull %call75) #20
  br label %err_out_free_netdev

err_out_free_netdev:                              ; preds = %err_out_unregister, %do.end91
  %err.3 = phi i32 [ %call86, %do.end91 ], [ %err.2, %err_out_unregister ]
  call void @free_netdev(ptr noundef nonnull %call75) #20
  br label %err_out_led_off

err_out_led_off:                                  ; preds = %err_out_free_netdev, %skge_board_name.exit.err_out_led_off_crit_edge
  %err.4 = phi i32 [ %err.3, %err_out_free_netdev ], [ -12, %skge_board_name.exit.err_out_led_off_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  call void @arm_heavy_mb() #20
  %52 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %call9.i.i, align 128
  %add.ptr.i = getelementptr i8, ptr %53, i32 6
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 256) #20, !srcloc !311
  br label %err_out_iounmap

err_out_iounmap:                                  ; preds = %err_out_led_off, %if.end61.err_out_iounmap_crit_edge
  %err.5 = phi i32 [ %call62, %if.end61.err_out_iounmap_crit_edge ], [ %err.4, %err_out_led_off ]
  %54 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %call9.i.i, align 128
  call void @iounmap(ptr noundef %55) #20
  br label %err_out_free_hw

err_out_free_hw:                                  ; preds = %err_out_iounmap, %do.end59
  %err.6 = phi i32 [ %err.5, %err_out_iounmap ], [ -12, %do.end59 ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #20
  br label %err_out_free_regions

err_out_free_regions:                             ; preds = %err_out_free_hw, %if.end8.i.i.err_out_free_regions_crit_edge, %do.end30
  %err.7 = phi i32 [ %err.0210, %do.end30 ], [ %err.6, %err_out_free_hw ], [ -12, %if.end8.i.i.err_out_free_regions_crit_edge ]
  call void @pci_release_regions(ptr noundef %pdev) #20
  br label %err_out_disable_pdev

err_out_disable_pdev:                             ; preds = %err_out_free_regions, %do.end8
  %err.8 = phi i32 [ %call3, %do.end8 ], [ %err.7, %err_out_free_regions ]
  call void @pci_disable_device(ptr noundef %pdev) #20
  br label %cleanup

cleanup:                                          ; preds = %err_out_disable_pdev, %if.end121, %do.end
  %retval.0 = phi i32 [ 0, %if.end121 ], [ %call, %do.end ], [ %err.8, %err_out_disable_pdev ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @skge_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.skge_hw, ptr %1, i32 0, i32 4
  %arrayidx = getelementptr %struct.skge_hw, ptr %1, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @unregister_netdev(ptr noundef nonnull %3) #20
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void @unregister_netdev(ptr noundef %5) #20
  %phy_task = getelementptr inbounds %struct.skge_hw, ptr %1, i32 0, i32 14
  tail call void @tasklet_kill(ptr noundef %phy_task) #20
  %hw_lock = getelementptr inbounds %struct.skge_hw, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %hw_lock) #20
  %intr_mask = getelementptr inbounds %struct.skge_hw, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %intr_mask to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %intr_mask, align 4
  %ports = getelementptr inbounds %struct.skge_hw, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %ports to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ports, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp = icmp ugt i8 %8, 1
  br i1 %cmp, label %if.then7, label %if.end3.if.end9_crit_edge

if.end3.if.end9_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end9

if.then7:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !306
  tail call void @arm_heavy_mb() #20
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #20, !srcloc !307
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %add.ptr.i45 = getelementptr i8, ptr %12, i32 12
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i45) #20, !srcloc !308
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !309
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end3.if.end9_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %hw_lock) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %add.ptr.i46 = getelementptr i8, ptr %15, i32 6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i46, i16 256) #20, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  tail call void @arm_heavy_mb() #20
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %add.ptr.i47 = getelementptr i8, ptr %17, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i47, i8 1) #20, !srcloc !305
  %18 = ptrtoint ptr %ports to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ports, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %19)
  %cmp13 = icmp ugt i8 %19, 1
  br i1 %cmp13, label %if.then15, label %if.end9.if.end17_crit_edge

if.end9.if.end17_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end17

if.then15:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #22
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %20 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irq, align 4
  %call16 = tail call ptr @free_irq(i32 noundef %21, ptr noundef nonnull %1) #20
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end9.if.end17_crit_edge
  tail call void @pci_release_regions(ptr noundef %pdev) #20
  tail call void @pci_disable_device(ptr noundef %pdev) #20
  br i1 %tobool1.not, label %if.end17.if.end20_crit_edge, label %if.then19

if.end17.if.end20_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end20

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @free_netdev(ptr noundef nonnull %3) #20
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end17.if.end20_crit_edge
  tail call void @free_netdev(ptr noundef %5) #20
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  tail call void @iounmap(ptr noundef %23) #20
  tail call void @kfree(ptr noundef nonnull %1) #20
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @skge_shutdown(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %ports = getelementptr inbounds %struct.skge_hw, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ports to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ports, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp21.not = icmp eq i8 %3, 0
  br i1 %cmp21.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.body:                                         ; preds = %if.end6.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.022 = phi i32 [ %inc, %if.end6.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.skge_hw, ptr %1, i32 0, i32 4, i32 %i.022
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %wol = getelementptr i8, ptr %5, i32 2637
  %6 = ptrtoint ptr %wol to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %wol, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  br i1 %tobool4.not, label %for.body.if.end6_crit_edge, label %if.then5

for.body.if.end6_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end6

if.then5:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr.i = getelementptr i8, ptr %5, i32 2304
  tail call fastcc void @skge_wol_init(ptr noundef %add.ptr.i)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %for.body.if.end6_crit_edge
  %inc = add nuw nsw i32 %i.022, 1
  %8 = ptrtoint ptr %ports to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ports, align 1
  %conv = zext i8 %9 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %if.end6.for.body_crit_edge, label %if.end6.for.end_crit_edge

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.end:                                          ; preds = %if.end6.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %can_wakeup.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 12, i32 1
  %10 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %for.end.device_may_wakeup.exit_crit_edge, label %land.rhs.i

for.end.device_may_wakeup.exit_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %device_may_wakeup.exit

land.rhs.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #22
  %wakeup.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 12, i32 6
  %11 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i = icmp ne ptr %12, null
  br label %device_may_wakeup.exit

device_may_wakeup.exit:                           ; preds = %land.rhs.i, %for.end.device_may_wakeup.exit_crit_edge
  %13 = phi i1 [ false, %for.end.device_may_wakeup.exit_crit_edge ], [ %tobool2.i, %land.rhs.i ]
  %call9 = tail call i32 @pci_wake_from_d3(ptr noundef %pdev, i1 noundef zeroext %13) #20
  %call10 = tail call i32 @pci_set_power_state(ptr noundef %pdev, i32 noundef 3) #20
  br label %cleanup

cleanup:                                          ; preds = %device_may_wakeup.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @skge_extirq(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %ports = getelementptr i8, ptr %t, i32 -61
  %0 = ptrtoint ptr %ports to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ports, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp47.not = icmp eq i8 %1, 0
  br i1 %cmp47.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dev2 = getelementptr i8, ptr %t, i32 -72
  %phy_lock = getelementptr i8, ptr %t, i32 -44
  %chip_id.i = getelementptr i8, ptr %t, i32 -64
  %phy_type = getelementptr i8, ptr %t, i32 -60
  br label %for.body

for.body:                                         ; preds = %if.end12.for.body_crit_edge, %for.body.lr.ph
  %port.048 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end12.for.body_crit_edge ]
  %arrayidx = getelementptr [2 x ptr], ptr %dev2, i32 0, i32 %port.048
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %for.body.if.end12_crit_edge, label %if.then

for.body.if.end12_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end12

if.then:                                          ; preds = %for.body
  %add.ptr.i = getelementptr i8, ptr %3, i32 2304
  tail call void @_raw_spin_lock(ptr noundef %phy_lock) #20
  %6 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %chip_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %7)
  %cmp.i = icmp eq i8 %7, 10
  br i1 %cmp.i, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.then
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 128
  %port2.i = getelementptr i8, ptr %3, i32 2536
  %10 = ptrtoint ptr %port2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port2.i, align 8
  %phy_addr.i.i.i = getelementptr inbounds %struct.skge_hw, ptr %9, i32 0, i32 12
  %12 = ptrtoint ptr %phy_addr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %phy_addr.i.i.i, align 4
  %shl.i.i.i = shl i16 %13, 11
  %or4.i.i.i = or i16 %shl.i.i.i, 1248
  %mul.i.i.i.i = shl i32 %11, 12
  %add1.i.i.i.i = add i32 %mul.i.i.i.i, 10368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %14 = tail call i16 @llvm.bswap.i16(i16 %or4.i.i.i) #20
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %9, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %16, i32 %add1.i.i.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i.i.i, i16 %14) #20, !srcloc !311
  br label %for.body.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw nsw i32 %i.024.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 1000
  br i1 %exitcond.not.i.i.i, label %do.end.i.i, label %for.cond.i.i.i.for.body.i.i.i_crit_edge

for.cond.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i.for.body.i.i.i_crit_edge, %if.then5
  %i.024.i.i.i = phi i32 [ 0, %if.then5 ], [ %inc.i.i.i, %for.cond.i.i.i.for.body.i.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748) #20
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %9, align 4
  %add.ptr.i.i19.i.i.i = getelementptr i8, ptr %19, i32 %add1.i.i.i.i
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i19.i.i.i) #20, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %21 = and i16 %20, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool.not.i.i.i = icmp eq i16 %21, 0
  br i1 %tobool.not.i.i.i, label %for.cond.i.i.i, label %__gm_phy_read.exit.thread.i.i

__gm_phy_read.exit.thread.i.i:                    ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %add1.i22.i.i.i = add i32 %mul.i.i.i.i, 10372
  %22 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %9, align 4
  %add.ptr.i.i23.i.i.i = getelementptr i8, ptr %23, i32 %add1.i22.i.i.i
  %24 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i23.i.i.i) #20, !srcloc !313
  %25 = tail call i16 @llvm.bswap.i16(i16 %24) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  br label %gm_phy_read.exit.i

do.end.i.i:                                       ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %arrayidx.i.i = getelementptr %struct.skge_hw, ptr %9, i32 0, i32 4, i32 %11
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i.i, align 4
  %call1.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %27) #24
  br label %gm_phy_read.exit.i

gm_phy_read.exit.i:                               ; preds = %do.end.i.i, %__gm_phy_read.exit.thread.i.i
  %v.07.i.i = phi i16 [ %25, %__gm_phy_read.exit.thread.i.i ], [ 0, %do.end.i.i ]
  %28 = ptrtoint ptr %phy_addr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %phy_addr.i.i.i, align 4
  %shl.i.i133.i = shl i16 %29, 11
  %or4.i.i135.i = or i16 %shl.i.i133.i, 1120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %30 = tail call i16 @llvm.bswap.i16(i16 %or4.i.i135.i) #20
  %31 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %9, align 4
  %add.ptr.i.i.i.i138.i = getelementptr i8, ptr %32, i32 %add1.i.i.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i.i138.i, i16 %30) #20, !srcloc !311
  br label %for.body.i.i145.i

for.cond.i.i141.i:                                ; preds = %for.body.i.i145.i
  %inc.i.i139.i = add nuw nsw i32 %i.024.i.i142.i, 1
  %exitcond.not.i.i140.i = icmp eq i32 %inc.i.i139.i, 1000
  br i1 %exitcond.not.i.i140.i, label %do.end.i151.i, label %for.cond.i.i141.i.for.body.i.i145.i_crit_edge

for.cond.i.i141.i.for.body.i.i145.i_crit_edge:    ; preds = %for.cond.i.i141.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i.i145.i

for.body.i.i145.i:                                ; preds = %for.cond.i.i141.i.for.body.i.i145.i_crit_edge, %gm_phy_read.exit.i
  %i.024.i.i142.i = phi i32 [ 0, %gm_phy_read.exit.i ], [ %inc.i.i139.i, %for.cond.i.i141.i.for.body.i.i145.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748) #20
  %34 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %9, align 4
  %add.ptr.i.i19.i.i143.i = getelementptr i8, ptr %35, i32 %add1.i.i.i.i
  %36 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i19.i.i143.i) #20, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %37 = and i16 %36, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool.not.i.i144.i = icmp eq i16 %37, 0
  br i1 %tobool.not.i.i144.i, label %for.cond.i.i141.i, label %__gm_phy_read.exit.thread.i148.i

__gm_phy_read.exit.thread.i148.i:                 ; preds = %for.body.i.i145.i
  call void @__sanitizer_cov_trace_pc() #22
  %add1.i22.i.i146.i = add i32 %mul.i.i.i.i, 10372
  %38 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %9, align 4
  %add.ptr.i.i23.i.i147.i = getelementptr i8, ptr %39, i32 %add1.i22.i.i146.i
  %40 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i23.i.i147.i) #20, !srcloc !313
  %41 = tail call i16 @llvm.bswap.i16(i16 %40) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  br label %gm_phy_read.exit153.i

do.end.i151.i:                                    ; preds = %for.cond.i.i141.i
  call void @__sanitizer_cov_trace_pc() #22
  %arrayidx.i149.i = getelementptr %struct.skge_hw, ptr %9, i32 0, i32 4, i32 %11
  %42 = ptrtoint ptr %arrayidx.i149.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i149.i, align 4
  %call1.i150.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %43) #24
  br label %gm_phy_read.exit153.i

gm_phy_read.exit153.i:                            ; preds = %do.end.i151.i, %__gm_phy_read.exit.thread.i148.i
  %v.07.i152.i = phi i16 [ %41, %__gm_phy_read.exit.thread.i148.i ], [ 0, %do.end.i151.i ]
  %msg_enable.i = getelementptr i8, ptr %3, i32 2540
  %44 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %45, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %gm_phy_read.exit153.do.end_crit_edge.i, label %if.then.i

gm_phy_read.exit153.do.end_crit_edge.i:           ; preds = %gm_phy_read.exit153.i
  call void @__sanitizer_cov_trace_pc() #22
  %.pre.i = zext i16 %v.07.i.i to i32
  br label %do.end.i

if.then.i:                                        ; preds = %gm_phy_read.exit153.i
  call void @__sanitizer_cov_trace_pc() #22
  %netdev.i = getelementptr i8, ptr %3, i32 2308
  %46 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %netdev.i, align 4
  %conv.i = zext i16 %v.07.i.i to i32
  %conv4.i = zext i16 %v.07.i152.i to i32
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.12, ptr noundef %47, ptr noundef nonnull @.str.84, i32 noundef %conv.i, i32 noundef %conv4.i) #24
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %gm_phy_read.exit153.do.end_crit_edge.i
  %conv5.pre-phi.i = phi i32 [ %.pre.i, %gm_phy_read.exit153.do.end_crit_edge.i ], [ %conv.i, %if.then.i ]
  %and6.i = and i32 %conv5.pre-phi.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.end52.i, label %if.then8.i

if.then8.i:                                       ; preds = %do.end.i
  %48 = ptrtoint ptr %phy_addr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %phy_addr.i.i.i, align 4
  %shl.i.i155.i = shl i16 %49, 11
  %or4.i.i157.i = or i16 %shl.i.i155.i, 352
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %50 = tail call i16 @llvm.bswap.i16(i16 %or4.i.i157.i) #20
  %51 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %9, align 4
  %add.ptr.i.i.i.i160.i = getelementptr i8, ptr %52, i32 %add1.i.i.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i.i160.i, i16 %50) #20, !srcloc !311
  br label %for.body.i.i167.i

for.cond.i.i163.i:                                ; preds = %for.body.i.i167.i
  %inc.i.i161.i = add nuw nsw i32 %i.024.i.i164.i, 1
  %exitcond.not.i.i162.i = icmp eq i32 %inc.i.i161.i, 1000
  br i1 %exitcond.not.i.i162.i, label %gm_phy_read.exit175.thread.i, label %for.cond.i.i163.i.for.body.i.i167.i_crit_edge

for.cond.i.i163.i.for.body.i.i167.i_crit_edge:    ; preds = %for.cond.i.i163.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i.i167.i

for.body.i.i167.i:                                ; preds = %for.cond.i.i163.i.for.body.i.i167.i_crit_edge, %if.then8.i
  %i.024.i.i164.i = phi i32 [ 0, %if.then8.i ], [ %inc.i.i161.i, %for.cond.i.i163.i.for.body.i.i167.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 214748) #20
  %54 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %9, align 4
  %add.ptr.i.i19.i.i165.i = getelementptr i8, ptr %55, i32 %add1.i.i.i.i
  %56 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i19.i.i165.i) #20, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %57 = and i16 %56, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %tobool.not.i.i166.i = icmp eq i16 %57, 0
  br i1 %tobool.not.i.i166.i, label %for.cond.i.i163.i, label %gm_phy_read.exit175.i

gm_phy_read.exit175.thread.i:                     ; preds = %for.cond.i.i163.i
  call void @__sanitizer_cov_trace_pc() #22
  %arrayidx.i171.i = getelementptr %struct.skge_hw, ptr %9, i32 0, i32 4, i32 %11
  %58 = ptrtoint ptr %arrayidx.i171.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx.i171.i, align 4
  %call1.i172.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %59) #24
  br label %if.end14.i

gm_phy_read.exit175.i:                            ; preds = %for.body.i.i167.i
  %add1.i22.i.i168.i = add i32 %mul.i.i.i.i, 10372
  %60 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %9, align 4
  %add.ptr.i.i23.i.i169.i = getelementptr i8, ptr %61, i32 %add1.i22.i.i168.i
  %62 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i23.i.i169.i) #20, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %63 = and i16 %62, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %tobool12.not.i = icmp eq i16 %63, 0
  br i1 %tobool12.not.i, label %gm_phy_read.exit175.i.if.end14.i_crit_edge, label %gm_phy_read.exit175.i.do.end84.i_crit_edge

gm_phy_read.exit175.i.do.end84.i_crit_edge:       ; preds = %gm_phy_read.exit175.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end84.i

gm_phy_read.exit175.i.if.end14.i_crit_edge:       ; preds = %gm_phy_read.exit175.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end14.i

if.end14.i:                                       ; preds = %gm_phy_read.exit175.i.if.end14.i_crit_edge, %gm_phy_read.exit175.thread.i
  %64 = ptrtoint ptr %phy_addr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %phy_addr.i.i.i, align 4
  %shl.i.i177.i = shl i16 %65, 11
  %or4.i.i179.i = or i16 %shl.i.i177.i, 672
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %66 = tail call i16 @llvm.bswap.i16(i16 %or4.i.i179.i) #20
  %67 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %9, align 4
  %add.ptr.i.i.i.i182.i = getelementptr i8, ptr %68, i32 %add1.i.i.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i.i182.i, i16 %66) #20, !srcloc !311
  br label %for.body.i.i189.i

for.cond.i.i185.i:                                ; preds = %for.body.i.i189.i
  %inc.i.i183.i = add nuw nsw i32 %i.024.i.i186.i, 1
  %exitcond.not.i.i184.i = icmp eq i32 %inc.i.i183.i, 1000
  br i1 %exitcond.not.i.i184.i, label %gm_phy_read.exit197.thread.i, label %for.cond.i.i185.i.for.body.i.i189.i_crit_edge

for.cond.i.i185.i.for.body.i.i189.i_crit_edge:    ; preds = %for.cond.i.i185.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i.i189.i

for.body.i.i189.i:                                ; preds = %for.cond.i.i185.i.for.body.i.i189.i_crit_edge, %if.end14.i
  %i.024.i.i186.i = phi i32 [ 0, %if.end14.i ], [ %inc.i.i183.i, %for.cond.i.i185.i.for.body.i.i189.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %69 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %69(i32 noundef 214748) #20
  %70 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %9, align 4
  %add.ptr.i.i19.i.i187.i = getelementptr i8, ptr %71, i32 %add1.i.i.i.i
  %72 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i19.i.i187.i) #20, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %73 = and i16 %72, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %73)
  %tobool.not.i.i188.i = icmp eq i16 %73, 0
  br i1 %tobool.not.i.i188.i, label %for.cond.i.i185.i, label %gm_phy_read.exit197.i

gm_phy_read.exit197.thread.i:                     ; preds = %for.cond.i.i185.i
  call void @__sanitizer_cov_trace_pc() #22
  %arrayidx.i193.i = getelementptr %struct.skge_hw, ptr %9, i32 0, i32 4, i32 %11
  %74 = ptrtoint ptr %arrayidx.i193.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx.i193.i, align 4
  %call1.i194.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %75) #24
  br label %if.end20.i

gm_phy_read.exit197.i:                            ; preds = %for.body.i.i189.i
  %add1.i22.i.i190.i = add i32 %mul.i.i.i.i, 10372
  %76 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %9, align 4
  %add.ptr.i.i23.i.i191.i = getelementptr i8, ptr %77, i32 %add1.i22.i.i190.i
  %78 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i23.i.i191.i) #20, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %.mask.i = and i16 %78, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask.i)
  %tobool18.not.i = icmp eq i16 %.mask.i, 0
  br i1 %tobool18.not.i, label %gm_phy_read.exit197.i.if.end20.i_crit_edge, label %gm_phy_read.exit197.i.do.end84.i_crit_edge

gm_phy_read.exit197.i.do.end84.i_crit_edge:       ; preds = %gm_phy_read.exit197.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end84.i

gm_phy_read.exit197.i.if.end20.i_crit_edge:       ; preds = %gm_phy_read.exit197.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end20.i

if.end20.i:                                       ; preds = %gm_phy_read.exit197.i.if.end20.i_crit_edge, %gm_phy_read.exit197.thread.i
  %conv21.i = zext i16 %v.07.i152.i to i32
  %and22.i = and i32 %conv21.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %if.end20.i.do.end84.i_crit_edge, label %if.end25.i

if.end20.i.do.end84.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end84.i

if.end25.i:                                       ; preds = %if.end20.i
  %and27.i = lshr i16 %v.07.i152.i, 13
  %79 = trunc i16 %and27.i to i8
  %80 = and i8 %79, 1
  %duplex.i = getelementptr i8, ptr %3, i32 2639
  %81 = ptrtoint ptr %duplex.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %duplex.i, align 1
  %82 = and i16 %v.07.i152.i, -16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %82)
  %switch.selectcmp.i.i = icmp eq i16 %82, 16384
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i16 100, i16 10
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %82)
  %switch.selectcmp1.i.i = icmp eq i16 %82, -32768
  %switch.select2.i.i = select i1 %switch.selectcmp1.i.i, i16 1000, i16 %switch.select.i.i
  %speed.i = getelementptr i8, ptr %3, i32 2640
  %83 = ptrtoint ptr %speed.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %switch.select2.i.i, ptr %speed.i, align 16
  %and32.i = and i32 %conv21.i, 12
  %84 = zext i32 %and32.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values.137)
  switch i32 %and32.i, label %sw.epilog.i [
    i32 12, label %if.end25.i.lor.lhs.false.i_crit_edge
    i32 4, label %sw.bb33.i
    i32 8, label %sw.bb35.i
  ]

if.end25.i.lor.lhs.false.i_crit_edge:             ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %lor.lhs.false.i

sw.bb33.i:                                        ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %lor.lhs.false.i

sw.bb35.i:                                        ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %lor.lhs.false.i

sw.epilog.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #22
  %flow_status37.i = getelementptr i8, ptr %3, i32 2632
  %85 = ptrtoint ptr %flow_status37.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 1, ptr %flow_status37.i, align 8
  br label %if.then48.i

lor.lhs.false.i:                                  ; preds = %sw.bb35.i, %sw.bb33.i, %if.end25.i.lor.lhs.false.i_crit_edge
  %.sink.i.ph = phi i32 [ 2, %sw.bb33.i ], [ 3, %sw.bb35.i ], [ 4, %if.end25.i.lor.lhs.false.i_crit_edge ]
  %flow_status37.i45 = getelementptr i8, ptr %3, i32 2632
  %86 = ptrtoint ptr %flow_status37.i45 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %.sink.i.ph, ptr %flow_status37.i45, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 1000, i16 %switch.select2.i.i)
  %cmp42.i = icmp ult i16 %switch.select2.i.i, 1000
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %cmp46.i = icmp eq i8 %80, 0
  %or.cond.i = select i1 %cmp42.i, i1 %cmp46.i, i1 false
  br i1 %or.cond.i, label %lor.lhs.false.i.if.then48.i_crit_edge, label %if.else.i

lor.lhs.false.i.if.then48.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then48.i

if.then48.i:                                      ; preds = %lor.lhs.false.i.if.then48.i_crit_edge, %sw.epilog.i
  %shl.i = shl i32 %11, 7
  %add.i = add i32 %shl.i, 3840
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  tail call void @arm_heavy_mb() #20
  %87 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %9, align 4
  %add.ptr.i.i = getelementptr i8, ptr %88, i32 %add.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 4) #20, !srcloc !305
  br label %if.end51.i

if.else.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #22
  %shl49.i = shl i32 %11, 7
  %add50.i = add i32 %shl49.i, 3840
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  tail call void @arm_heavy_mb() #20
  %89 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %9, align 4
  %add.ptr.i198.i = getelementptr i8, ptr %90, i32 %add50.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i198.i, i8 8) #20, !srcloc !305
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.else.i, %if.then48.i
  tail call fastcc void @yukon_link_up(ptr noundef %add.ptr.i) #20
  br label %if.end10

if.end52.i:                                       ; preds = %do.end.i
  %and54.i = and i32 %conv5.pre-phi.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54.i)
  %tobool55.not.i = icmp eq i32 %and54.i, 0
  br i1 %tobool55.not.i, label %if.end52.i.if.end59.i_crit_edge, label %if.then56.i

if.end52.i.if.end59.i_crit_edge:                  ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end59.i

if.then56.i:                                      ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #22
  %91 = and i16 %v.07.i152.i, -16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %91)
  %switch.selectcmp.i199.i = icmp eq i16 %91, 16384
  %switch.select.i200.i = select i1 %switch.selectcmp.i199.i, i16 100, i16 10
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %91)
  %switch.selectcmp1.i201.i = icmp eq i16 %91, -32768
  %switch.select2.i202.i = select i1 %switch.selectcmp1.i201.i, i16 1000, i16 %switch.select.i200.i
  %speed58.i = getelementptr i8, ptr %3, i32 2640
  %92 = ptrtoint ptr %speed58.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %switch.select2.i202.i, ptr %speed58.i, align 16
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.then56.i, %if.end52.i.if.end59.i_crit_edge
  %and61.i = and i32 %conv5.pre-phi.i, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61.i)
  %tobool62.not.i = icmp eq i32 %and61.i, 0
  br i1 %tobool62.not.i, label %if.end59.i.if.end70.i_crit_edge, label %if.then63.i

if.end59.i.if.end70.i_crit_edge:                  ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end70.i

if.then63.i:                                      ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #22
  %93 = lshr i16 %v.07.i152.i, 13
  %94 = trunc i16 %93 to i8
  %95 = and i8 %94, 1
  %duplex69.i = getelementptr i8, ptr %3, i32 2639
  %96 = ptrtoint ptr %duplex69.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %95, ptr %duplex69.i, align 1
  br label %if.end70.i

if.end70.i:                                       ; preds = %if.then63.i, %if.end59.i.if.end70.i_crit_edge
  %and72.i = and i32 %conv5.pre-phi.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72.i)
  %tobool73.not.i = icmp eq i32 %and72.i, 0
  br i1 %tobool73.not.i, label %if.end70.i.if.end10_crit_edge, label %if.then74.i

if.end70.i.if.end10_crit_edge:                    ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end10

if.then74.i:                                      ; preds = %if.end70.i
  %97 = and i16 %v.07.i152.i, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %97)
  %tobool77.not.i = icmp eq i16 %97, 0
  br i1 %tobool77.not.i, label %if.else79.i, label %if.then78.i

if.then78.i:                                      ; preds = %if.then74.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call fastcc void @yukon_link_up(ptr noundef %add.ptr.i) #20
  br label %if.end10

if.else79.i:                                      ; preds = %if.then74.i
  %98 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %add.ptr.i, align 128
  %100 = ptrtoint ptr %port2.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %port2.i, align 8
  %mul.i.i.i = shl i32 %101, 12
  %add1.i.i.i = add i32 %mul.i.i.i, 10244
  %102 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %99, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %103, i32 %add1.i.i.i
  %104 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i) #20, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %105 = and i16 %104, -25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %106 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %99, align 4
  %add.ptr.i.i26.i.i = getelementptr i8, ptr %107, i32 %add1.i.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i26.i.i, i16 %105) #20, !srcloc !311
  %flow_status.i.i = getelementptr i8, ptr %3, i32 2632
  %108 = ptrtoint ptr %flow_status.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %flow_status.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %109)
  %cmp.i.i = icmp eq i32 %109, 2
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else79.i.if.end.i.i_crit_edge

if.else79.i.if.end.i.i_crit_edge:                 ; preds = %if.else79.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.else79.i
  %phy_addr.i.i.i.i = getelementptr inbounds %struct.skge_hw, ptr %99, i32 0, i32 12
  %110 = ptrtoint ptr %phy_addr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %phy_addr.i.i.i.i, align 4
  %shl.i.i.i.i = shl i16 %111, 11
  %or4.i.i.i.i = or i16 %shl.i.i.i.i, 288
  %add1.i.i.i.i.i = add i32 %mul.i.i.i, 10368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %112 = tail call i16 @llvm.bswap.i16(i16 %or4.i.i.i.i) #20
  %113 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %99, align 4
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %114, i32 %add1.i.i.i.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i.i.i.i, i16 %112) #20, !srcloc !311
  br label %for.body.i.i.i.i

for.cond.i.i.i.i:                                 ; preds = %for.body.i.i.i.i
  %inc.i.i.i.i = add nuw nsw i32 %i.024.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %inc.i.i.i.i, 1000
  br i1 %exitcond.not.i.i.i.i, label %do.end.i.i.i, label %for.cond.i.i.i.i.for.body.i.i.i.i_crit_edge

for.cond.i.i.i.i.for.body.i.i.i.i_crit_edge:      ; preds = %for.cond.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.cond.i.i.i.i.for.body.i.i.i.i_crit_edge, %if.then.i.i
  %i.024.i.i.i.i = phi i32 [ 0, %if.then.i.i ], [ %inc.i.i.i.i, %for.cond.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %115 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %115(i32 noundef 214748) #20
  %116 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %99, align 4
  %add.ptr.i.i19.i.i.i.i = getelementptr i8, ptr %117, i32 %add1.i.i.i.i.i
  %118 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i19.i.i.i.i) #20, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %119 = and i16 %118, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %119)
  %tobool.not.i.i.i.i = icmp eq i16 %119, 0
  br i1 %tobool.not.i.i.i.i, label %for.cond.i.i.i.i, label %__gm_phy_read.exit.thread.i.i.i

__gm_phy_read.exit.thread.i.i.i:                  ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %add1.i22.i.i.i.i = add i32 %mul.i.i.i, 10372
  %120 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %99, align 4
  %add.ptr.i.i23.i.i.i.i = getelementptr i8, ptr %121, i32 %add1.i22.i.i.i.i
  %122 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i23.i.i.i.i) #20, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %123 = or i16 %122, 8
  %124 = tail call i16 @llvm.bswap.i16(i16 %123) #20
  br label %gm_phy_read.exit.i.i

do.end.i.i.i:                                     ; preds = %for.cond.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %arrayidx.i.i.i = getelementptr %struct.skge_hw, ptr %99, i32 0, i32 4, i32 %101
  %125 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %arrayidx.i.i.i, align 4
  %call1.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %126) #24
  br label %gm_phy_read.exit.i.i

gm_phy_read.exit.i.i:                             ; preds = %do.end.i.i.i, %__gm_phy_read.exit.thread.i.i.i
  %v.07.i.i.i = phi i16 [ %124, %__gm_phy_read.exit.thread.i.i.i ], [ 2048, %do.end.i.i.i ]
  %call8.i.i = tail call fastcc i32 @gm_phy_write(ptr noundef %99, i32 noundef %101, i16 noundef zeroext 4, i16 noundef zeroext %v.07.i.i.i) #20
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %gm_phy_read.exit.i.i, %if.else79.i.if.end.i.i_crit_edge
  %127 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %add.ptr.i, align 128
  %129 = ptrtoint ptr %port2.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %port2.i, align 8
  %shl.i.i203.i = shl i32 %130, 7
  %add.i27.i.i = add i32 %shl.i.i203.i, 3132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  tail call void @arm_heavy_mb() #20
  %131 = ptrtoint ptr %128 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %128, align 4
  %add.ptr.i.i28.i.i = getelementptr i8, ptr %132, i32 %add.i27.i.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i28.i.i, i8 1) #20, !srcloc !305
  %netdev.i.i.i = getelementptr i8, ptr %3, i32 2308
  %133 = ptrtoint ptr %netdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %netdev.i.i.i, align 4
  tail call void @netif_carrier_off(ptr noundef %134) #20
  %135 = ptrtoint ptr %netdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %netdev.i.i.i, align 4
  %_tx.i.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %136, i32 0, i32 103
  %137 = ptrtoint ptr %_tx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %_tx.i.i.i.i.i, align 128
  %state.i.i.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %138, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.i.i.i) #20
  %139 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %msg_enable.i, align 4
  %and.i.i.i = and i32 %140, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i204.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i204.i, label %if.end.i.i.yukon_link_down.exit.i_crit_edge, label %if.then.i.i.i

if.end.i.i.yukon_link_down.exit.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %yukon_link_down.exit.i

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %141 = ptrtoint ptr %netdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %netdev.i.i.i, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %142, ptr noundef nonnull @.str.14) #24
  br label %yukon_link_down.exit.i

yukon_link_down.exit.i:                           ; preds = %if.then.i.i.i, %if.end.i.i.yukon_link_down.exit.i_crit_edge
  tail call fastcc void @yukon_init(ptr noundef %99, i32 noundef %101) #20
  br label %if.end10

do.end84.i:                                       ; preds = %if.end20.i.do.end84.i_crit_edge, %gm_phy_read.exit197.i.do.end84.i_crit_edge, %gm_phy_read.exit175.i.do.end84.i_crit_edge
  %reason.0.i = phi ptr [ @.str.85, %gm_phy_read.exit175.i.do.end84.i_crit_edge ], [ @.str.86, %gm_phy_read.exit197.i.do.end84.i_crit_edge ], [ @.str.87, %if.end20.i.do.end84.i_crit_edge ]
  %netdev85.i = getelementptr i8, ptr %3, i32 2308
  %143 = ptrtoint ptr %netdev85.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %netdev85.i, align 4
  %call86.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef %144, ptr noundef nonnull %reason.0.i) #24
  br label %if.end10

if.else:                                          ; preds = %if.then
  %145 = ptrtoint ptr %phy_type to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %phy_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %146)
  %cmp7 = icmp eq i8 %146, 1
  br i1 %cmp7, label %if.then9, label %if.else.if.end10_crit_edge

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end10

if.then9:                                         ; preds = %if.else
  %147 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %add.ptr.i, align 128
  %port2.i32 = getelementptr i8, ptr %3, i32 2536
  %149 = ptrtoint ptr %port2.i32 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %port2.i32, align 8
  %call.i = tail call fastcc zeroext i16 @xm_phy_read(ptr noundef %148, i32 noundef %150, i16 noundef zeroext 26) #20
  %msg_enable.i33 = getelementptr i8, ptr %3, i32 2540
  %151 = ptrtoint ptr %msg_enable.i33 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %msg_enable.i33, align 4
  %and.i34 = and i32 %152, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i34)
  %tobool.not.i35 = icmp eq i32 %and.i34, 0
  br i1 %tobool.not.i35, label %entry.do.end_crit_edge.i, label %if.then.i39

entry.do.end_crit_edge.i:                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #22
  %.pre.i36 = zext i16 %call.i to i32
  br label %do.end.i40

if.then.i39:                                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #22
  %netdev.i37 = getelementptr i8, ptr %3, i32 2308
  %153 = ptrtoint ptr %netdev.i37 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %netdev.i37, align 4
  %conv.i38 = zext i16 %call.i to i32
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.12, ptr noundef %154, ptr noundef nonnull @.str.90, i32 noundef %conv.i38) #24
  br label %do.end.i40

do.end.i40:                                       ; preds = %if.then.i39, %entry.do.end_crit_edge.i
  %conv3.pre-phi.i = phi i32 [ %.pre.i36, %entry.do.end_crit_edge.i ], [ %conv.i38, %if.then.i39 ]
  %and4.i = and i32 %conv3.pre-phi.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %do.end.i40.if.end11.i_crit_edge, label %do.end9.i

do.end.i40.if.end11.i_crit_edge:                  ; preds = %do.end.i40
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end11.i

do.end9.i:                                        ; preds = %do.end.i40
  call void @__sanitizer_cov_trace_pc() #22
  %arrayidx.i = getelementptr %struct.skge_hw, ptr %148, i32 0, i32 4, i32 %150
  %155 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %arrayidx.i, align 4
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, ptr noundef %156) #24
  br label %if.end11.i

if.end11.i:                                       ; preds = %do.end9.i, %do.end.i40.if.end11.i_crit_edge
  %and13.i = and i32 %conv3.pre-phi.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %if.end11.i.if.end24.i_crit_edge, label %if.then15.i

if.end11.i.if.end24.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end24.i

if.then15.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #22
  %call16.i = tail call fastcc zeroext i16 @xm_phy_read(ptr noundef %148, i32 noundef %150, i16 noundef zeroext 0) #20
  %or.i = or i16 %call16.i, 16384
  %call19.i = tail call fastcc i32 @xm_phy_write(ptr noundef %148, i32 noundef %150, i16 noundef zeroext 0, i16 noundef zeroext %or.i) #20
  %157 = and i16 %call16.i, -16385
  %call23.i = tail call fastcc i32 @xm_phy_write(ptr noundef %148, i32 noundef %150, i16 noundef zeroext 0, i16 noundef zeroext %157) #20
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then15.i, %if.end11.i.if.end24.i_crit_edge
  %and26.i = and i32 %conv3.pre-phi.i, 1026
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %if.end24.i.if.end10_crit_edge, label %if.then28.i

if.end24.i.if.end10_crit_edge:                    ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end10

if.then28.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call fastcc void @bcom_check_link(ptr noundef %148, i32 noundef %150) #20
  br label %if.end10

if.end10:                                         ; preds = %if.then28.i, %if.end24.i.if.end10_crit_edge, %if.else.if.end10_crit_edge, %do.end84.i, %yukon_link_down.exit.i, %if.then78.i, %if.end70.i.if.end10_crit_edge, %if.end51.i
  tail call void @_raw_spin_unlock(ptr noundef %phy_lock) #20
  br label %if.end12

if.end12:                                         ; preds = %if.end10, %for.body.if.end12_crit_edge
  %inc = add nuw nsw i32 %port.048, 1
  %158 = ptrtoint ptr %ports to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %ports, align 1
  %conv = zext i8 %159 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %if.end12.for.body_crit_edge, label %if.end12.for.end_crit_edge

if.end12.for.end_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

if.end12.for.body_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.end:                                          ; preds = %if.end12.for.end_crit_edge, %entry.for.end_crit_edge
  %add.ptr = getelementptr i8, ptr %t, i32 -128
  %hw_lock = getelementptr i8, ptr %t, i32 -120
  tail call void @_raw_spin_lock_irq(ptr noundef %hw_lock) #20
  %intr_mask = getelementptr i8, ptr %t, i32 -76
  %160 = ptrtoint ptr %intr_mask to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %intr_mask, align 4
  %or = or i32 %161, 8388608
  store i32 %or, ptr %intr_mask, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !306
  tail call void @arm_heavy_mb() #20
  %162 = tail call i32 @llvm.bswap.i32(i32 %or) #20
  %163 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i41 = getelementptr i8, ptr %164, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i41, i32 %162) #20, !srcloc !307
  %165 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i42 = getelementptr i8, ptr %166, i32 12
  %167 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i42) #20, !srcloc !308
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !309
  tail call void @_raw_spin_unlock_irq(ptr noundef %hw_lock) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @skge_reset(ptr noundef %hw) unnamed_addr #2 align 64 {
entry:
  %reg = alloca i32, align 4
  %pci_status = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #20
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !312
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pci_status) #20
  %1 = ptrtoint ptr %pci_status to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %pci_status, align 2, !annotation !312
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #20, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  tail call void @arm_heavy_mb() #20
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 4
  %add.ptr.i248 = getelementptr i8, ptr %6, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i248, i8 1) #20, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  tail call void @arm_heavy_mb() #20
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 4
  %add.ptr.i249 = getelementptr i8, ptr %8, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i249, i8 2) #20, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  tail call void @arm_heavy_mb() #20
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw, align 4
  %add.ptr.i250 = getelementptr i8, ptr %10, i32 344
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i250, i8 2) #20, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  tail call void @arm_heavy_mb() #20
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw, align 4
  %add.ptr.i251 = getelementptr i8, ptr %12, i32 345
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i251, i8 0) #20, !srcloc !305
  %pdev = getelementptr inbounds %struct.skge_hw, ptr %hw, i32 0, i32 1
  %13 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev, align 4
  %call1 = call i32 @pci_read_config_word(ptr noundef %14, i32 noundef 6, ptr noundef nonnull %pci_status) #20
  %15 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev, align 4
  %17 = ptrtoint ptr %pci_status to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %pci_status, align 2
  %19 = or i16 %18, -1792
  %call4 = call i32 @pci_write_config_word(ptr noundef %16, i32 noundef 6, i16 noundef zeroext %19) #20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  call void @arm_heavy_mb() #20
  %20 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw, align 4
  %add.ptr.i252 = getelementptr i8, ptr %21, i32 344
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i252, i8 1) #20, !srcloc !305
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  call void @arm_heavy_mb() #20
  %22 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw, align 4
  %add.ptr.i253 = getelementptr i8, ptr %23, i32 4
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i253, i8 8) #20, !srcloc !305
  %24 = and i16 %4, 56
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  call void @arm_heavy_mb() #20
  %25 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw, align 4
  %add.ptr.i254 = getelementptr i8, ptr %26, i32 4
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i254, i16 %24) #20, !srcloc !311
  %27 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw, align 4
  %add.ptr.i255 = getelementptr i8, ptr %28, i32 283
  %29 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i255) #20, !srcloc !315
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !316
  %chip_id = getelementptr inbounds %struct.skge_hw, ptr %hw, i32 0, i32 5
  %30 = ptrtoint ptr %chip_id to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %chip_id, align 4
  %31 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hw, align 4
  %add.ptr.i256 = getelementptr i8, ptr %32, i32 285
  %33 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i256) #20, !srcloc !315
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !316
  %34 = and i8 %33, 15
  %phy_type = getelementptr inbounds %struct.skge_hw, ptr %hw, i32 0, i32 9
  %35 = ptrtoint ptr %phy_type to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %phy_type, align 4
  %36 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hw, align 4
  %add.ptr.i257 = getelementptr i8, ptr %37, i32 281
  %38 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i257) #20, !srcloc !315
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !316
  call void @__sanitizer_cov_trace_const_cmp1(i8 84, i8 %38)
  %cmp = icmp eq i8 %38, 84
  call void @__sanitizer_cov_trace_const_cmp1(i8 49, i8 %38)
  %cmp16 = icmp eq i8 %38, 49
  %spec.select = or i1 %cmp, %cmp16
  %conv18 = zext i1 %spec.select to i8
  %copper = getelementptr inbounds %struct.skge_hw, ptr %hw, i32 0, i32 7
  %39 = ptrtoint ptr %copper to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv18, ptr %copper, align 2
  %40 = ptrtoint ptr %chip_id to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %chip_id, align 4
  %42 = zext i8 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.138)
  switch i8 %41, label %entry.cleanup.sink.split_crit_edge [
    i8 10, label %sw.bb
    i8 -80, label %entry.sw.bb29_crit_edge
    i8 -79, label %entry.sw.bb29_crit_edge314
    i8 -78, label %entry.sw.bb29_crit_edge315
  ]

entry.sw.bb29_crit_edge315:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb29

entry.sw.bb29_crit_edge314:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb29

entry.sw.bb29_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb29

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.sink.split

sw.bb:                                            ; preds = %entry
  %43 = ptrtoint ptr %phy_type to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %phy_type, align 4
  %45 = zext i8 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.139)
  switch i8 %44, label %sw.bb.cleanup.sink.split_crit_edge [
    i8 0, label %sw.bb.sw.epilog47_crit_edge
    i8 1, label %sw.bb24
  ]

sw.bb.sw.epilog47_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog47

sw.bb.cleanup.sink.split_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.sink.split

sw.bb24:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog47

sw.bb29:                                          ; preds = %entry.sw.bb29_crit_edge, %entry.sw.bb29_crit_edge314, %entry.sw.bb29_crit_edge315
  %46 = ptrtoint ptr %phy_type to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %phy_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %47)
  %cmp32 = icmp ugt i8 %47, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 83, i8 %38)
  %cmp35.not = icmp eq i8 %38, 83
  %or.cond = select i1 %cmp32, i1 true, i1 %cmp35.not
  br i1 %or.cond, label %sw.bb29.sw.epilog47_crit_edge, label %if.then

sw.bb29.sw.epilog47_crit_edge:                    ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog47

if.then:                                          ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #22
  %48 = ptrtoint ptr %copper to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %copper, align 2
  br label %sw.epilog47

sw.epilog47:                                      ; preds = %if.then, %sw.bb29.sw.epilog47_crit_edge, %sw.bb24, %sw.bb.sw.epilog47_crit_edge
  %.sink = phi i16 [ 256, %sw.bb24 ], [ 0, %sw.bb.sw.epilog47_crit_edge ], [ 0, %if.then ], [ 0, %sw.bb29.sw.epilog47_crit_edge ]
  %phy_addr = getelementptr inbounds %struct.skge_hw, ptr %hw, i32 0, i32 12
  %49 = ptrtoint ptr %phy_addr to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %.sink, ptr %phy_addr, align 4
  %50 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hw, align 4
  %add.ptr.i258 = getelementptr i8, ptr %51, i32 282
  %52 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i258) #20, !srcloc !315
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !316
  %53 = and i8 %52, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool.not = icmp eq i8 %53, 0
  %conv51 = select i1 %tobool.not, i8 2, i8 1
  %ports = getelementptr inbounds %struct.skge_hw, ptr %hw, i32 0, i32 8
  %54 = ptrtoint ptr %ports to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv51, ptr %ports, align 1
  %55 = lshr i8 %52, 4
  %chip_rev = getelementptr inbounds %struct.skge_hw, ptr %hw, i32 0, i32 6
  %56 = ptrtoint ptr %chip_rev to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %chip_rev, align 1
  %57 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %hw, align 4
  %add.ptr.i259 = getelementptr i8, ptr %58, i32 284
  %59 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i259) #20, !srcloc !315
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !316
  %60 = ptrtoint ptr %chip_id to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %61)
  %cmp.i = icmp eq i8 %61, 10
  br i1 %cmp.i, label %if.then57, label %if.else65

if.then57:                                        ; preds = %sw.epilog47
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %59)
  %cmp59 = icmp eq i8 %59, 3
  br i1 %cmp59, label %if.then61, label %if.else

if.then61:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #22
  %ram_offset = getelementptr inbounds %struct.skge_hw, ptr %hw, i32 0, i32 11
  %62 = ptrtoint ptr %ram_offset to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 524288, ptr %ram_offset, align 4
  br label %land.lhs.true79

if.else:                                          ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #22
  %conv58 = zext i8 %59 to i32
  %mul = shl nuw nsw i32 %conv58, 9
  br label %land.lhs.true79

if.else65:                                        ; preds = %sw.epilog47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %cmp67 = icmp eq i8 %59, 0
  %conv66 = zext i8 %59 to i32
  %mul73 = shl nuw nsw i32 %conv66, 12
  %mul73.sink = select i1 %cmp67, i32 131072, i32 %mul73
  %63 = getelementptr inbounds %struct.skge_hw, ptr %hw, i32 0, i32 10
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %mul73.sink, ptr %63, align 4
  %intr_mask = getelementptr inbounds %struct.skge_hw, ptr %hw, i32 0, i32 3
  %65 = ptrtoint ptr %intr_mask to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 -2139095040, ptr %intr_mask, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  call void @arm_heavy_mb() #20
  %66 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %hw, align 4
  %add.ptr.i264 = getelementptr i8, ptr %67, i32 7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i264, i8 -90) #20, !srcloc !305
  %68 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %hw, align 4
  %add.ptr.i265 = getelementptr i8, ptr %69, i32 8
  %70 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i265) #20, !srcloc !308
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !309
  %.mask = and i32 %70, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool93.not = icmp eq i32 %.mask, 0
  br i1 %tobool93.not, label %if.else65.if.end106_crit_edge, label %land.lhs.true94

if.else65.if.end106_crit_edge:                    ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end106

land.lhs.true79:                                  ; preds = %if.else, %if.then61
  %mul.sink = phi i32 [ 1048576, %if.then61 ], [ %mul, %if.else ]
  %71 = getelementptr inbounds %struct.skge_hw, ptr %hw, i32 0, i32 10
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %mul.sink, ptr %71, align 4
  %intr_mask295 = getelementptr inbounds %struct.skge_hw, ptr %hw, i32 0, i32 3
  %73 = ptrtoint ptr %phy_type to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %phy_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %cmp82 = icmp eq i8 %74, 0
  %spec.store.select = select i1 %cmp82, i32 -2147483648, i32 -2139095040
  %75 = ptrtoint ptr %intr_mask295 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %spec.store.select, ptr %intr_mask295, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !306
  call void @arm_heavy_mb() #20
  %76 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %hw, align 4
  %add.ptr.i.i = getelementptr i8, ptr %77, i32 368
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -1001417471) #20, !srcloc !307
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  call void @arm_heavy_mb() #20
  %78 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %hw, align 4
  %add.ptr.i16.i = getelementptr i8, ptr %79, i32 376
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i16.i, i8 2) #20, !srcloc !305
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  call void @arm_heavy_mb() #20
  %80 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %hw, align 4
  %add.ptr.i17.i = getelementptr i8, ptr %81, i32 440
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i17.i, i16 512) #20, !srcloc !311
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  call void @arm_heavy_mb() #20
  %82 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %hw, align 4
  %add.ptr.i18.i = getelementptr i8, ptr %83, i32 432
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i18.i, i8 72) #20, !srcloc !305
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  call void @arm_heavy_mb() #20
  %84 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %hw, align 4
  %add.ptr.i19.i = getelementptr i8, ptr %85, i32 433
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i19.i, i8 72) #20, !srcloc !305
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  call void @arm_heavy_mb() #20
  %86 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %hw, align 4
  %add.ptr.i20.i = getelementptr i8, ptr %87, i32 434
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i20.i, i8 72) #20, !srcloc !305
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  call void @arm_heavy_mb() #20
  %88 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %hw, align 4
  %add.ptr.i21.i = getelementptr i8, ptr %89, i32 435
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i21.i, i8 72) #20, !srcloc !305
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  call void @arm_heavy_mb() #20
  %90 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %hw, align 4
  %add.ptr.i22.i = getelementptr i8, ptr %91, i32 448
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i22.i, i8 0) #20, !srcloc !305
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  call void @arm_heavy_mb() #20
  %92 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %hw, align 4
  %add.ptr.i23.i = getelementptr i8, ptr %93, i32 449
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i23.i, i8 0) #20, !srcloc !305
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  call void @arm_heavy_mb() #20
  %94 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %hw, align 4
  %add.ptr.i24.i = getelementptr i8, ptr %95, i32 450
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i24.i, i8 0) #20, !srcloc !305
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  call void @arm_heavy_mb() #20
  %96 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %hw, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %97, i32 451
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i25.i, i8 0) #20, !srcloc !305
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  call void @arm_heavy_mb() #20
  %98 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %hw, align 4
  %add.ptr.i26.i = getelementptr i8, ptr %99, i32 496
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i26.i, i16 512) #20, !srcloc !311
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  call void @arm_heavy_mb() #20
  %100 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %hw, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %101, i32 464
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i27.i, i16 -1) #20, !srcloc !311
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  call void @arm_heavy_mb() #20
  %102 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %hw, align 4
  %add.ptr.i28.i = getelementptr i8, ptr %103, i32 472
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i28.i, i16 -1) #20, !srcloc !311
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  call void @arm_heavy_mb() #20
  %104 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %hw, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %105, i32 468
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i29.i, i16 -1) #20, !srcloc !311
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  call void @arm_heavy_mb() #20
  %106 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %hw, align 4
  %add.ptr.i30.i = getelementptr i8, ptr %107, i32 476
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i30.i, i16 -1) #20, !srcloc !311
  br label %if.end118

land.lhs.true94:                                  ; preds = %if.else65
  %108 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %hw, align 4
  %add.ptr.i266 = getelementptr i8, ptr %109, i32 16
  %110 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i266) #20, !srcloc !308
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !309
  %111 = and i32 %110, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool97.not = icmp eq i32 %111, 0
  br i1 %tobool97.not, label %land.lhs.true94.if.end106_crit_edge, label %do.end101

land.lhs.true94.if.end106_crit_edge:              ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end106

do.end101:                                        ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #22
  %112 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %pdev, align 4
  %dev103 = getelementptr inbounds %struct.pci_dev, ptr %113, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev103, ptr noundef nonnull @.str.99) #24
  %114 = ptrtoint ptr %intr_mask to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %intr_mask, align 4
  %and105 = and i32 %115, 2147483647
  store i32 %and105, ptr %intr_mask, align 4
  br label %if.end106

if.end106:                                        ; preds = %do.end101, %land.lhs.true94.if.end106_crit_edge, %if.else65.if.end106_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  call void @arm_heavy_mb() #20
  %116 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %hw, align 4
  %add.ptr.i267 = getelementptr i8, ptr %117, i32 344
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i267, i8 2) #20, !srcloc !305
  %118 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %pdev, align 4
  %call108 = call i32 @pci_read_config_dword(ptr noundef %119, i32 noundef 64, ptr noundef nonnull %reg) #20
  %120 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %reg, align 4
  %and109 = and i32 %121, -134217729
  store i32 %and109, ptr %reg, align 4
  %122 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %pdev, align 4
  %call111 = call i32 @pci_write_config_dword(ptr noundef %123, i32 noundef 64, i32 noundef %and109) #20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  call void @arm_heavy_mb() #20
  %124 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %hw, align 4
  %add.ptr.i268 = getelementptr i8, ptr %125, i32 344
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i268, i8 1) #20, !srcloc !305
  %126 = ptrtoint ptr %ports to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %ports, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %cmp114303.not = icmp eq i8 %127, 0
  br i1 %cmp114303.not, label %if.end106.if.end118_crit_edge, label %if.end106.for.body_crit_edge

if.end106.for.body_crit_edge:                     ; preds = %if.end106
  br label %for.body

if.end106.if.end118_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end118

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end106.for.body_crit_edge
  %i.0304 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end106.for.body_crit_edge ]
  %shl = shl i32 %i.0304, 7
  %add = add nuw nsw i32 %shl, 3856
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  call void @arm_heavy_mb() #20
  %128 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %hw, align 4
  %add.ptr.i269 = getelementptr i8, ptr %129, i32 %add
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i269, i16 256) #20, !srcloc !311
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  call void @arm_heavy_mb() #20
  %130 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %hw, align 4
  %add.ptr.i270 = getelementptr i8, ptr %131, i32 %add
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i270, i16 512) #20, !srcloc !311
  %inc = add nuw nsw i32 %i.0304, 1
  %132 = ptrtoint ptr %ports to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %ports, align 1
  %conv113 = zext i8 %133 to i32
  %cmp114 = icmp ult i32 %inc, %conv113
  br i1 %cmp114, label %for.body.for.body_crit_edge, label %for.body.if.end118_crit_edge

for.body.if.end118_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end118

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

if.end118:                                        ; preds = %for.body.if.end118_crit_edge, %if.end106.if.end118_crit_edge, %land.lhs.true79
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  call void @arm_heavy_mb() #20
  %134 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %hw, align 4
  %add.ptr.i271 = getelementptr i8, ptr %135, i32 312
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i271, i8 2) #20, !srcloc !305
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  call void @arm_heavy_mb() #20
  %136 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %hw, align 4
  %add.ptr.i272 = getelementptr i8, ptr %137, i32 312
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i272, i8 1) #20, !srcloc !305
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  call void @arm_heavy_mb() #20
  %138 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %hw, align 4
  %add.ptr.i273 = getelementptr i8, ptr %139, i32 6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i273, i8 2) #20, !srcloc !305
  %140 = ptrtoint ptr %ports to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %ports, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %cmp122306.not = icmp eq i8 %141, 0
  br i1 %cmp122306.not, label %if.end118.for.end129_crit_edge, label %if.end118.for.body124_crit_edge

if.end118.for.body124_crit_edge:                  ; preds = %if.end118
  br label %for.body124

if.end118.for.end129_crit_edge:                   ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end129

for.body124:                                      ; preds = %for.body124.for.body124_crit_edge, %if.end118.for.body124_crit_edge
  %i.1307 = phi i32 [ %inc128, %for.body124.for.body124_crit_edge ], [ 0, %if.end118.for.body124_crit_edge ]
  %shl125 = shl i32 %i.1307, 7
  %add126 = add nuw nsw i32 %shl125, 528
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  call void @arm_heavy_mb() #20
  %142 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %hw, align 4
  %add.ptr.i274 = getelementptr i8, ptr %143, i32 %add126
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i274, i8 2) #20, !srcloc !305
  %inc128 = add nuw nsw i32 %i.1307, 1
  %144 = ptrtoint ptr %ports to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %ports, align 1
  %conv121 = zext i8 %145 to i32
  %cmp122 = icmp ult i32 %inc128, %conv121
  br i1 %cmp122, label %for.body124.for.body124_crit_edge, label %for.body124.for.end129_crit_edge

for.body124.for.end129_crit_edge:                 ; preds = %for.body124
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end129

for.body124.for.body124_crit_edge:                ; preds = %for.body124
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body124

for.end129:                                       ; preds = %for.body124.for.end129_crit_edge, %if.end118.for.end129_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  call void @arm_heavy_mb() #20
  %146 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %hw, align 4
  %add.ptr.i275 = getelementptr i8, ptr %147, i32 416
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i275, i16 512) #20, !srcloc !311
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  call void @arm_heavy_mb() #20
  %148 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %hw, align 4
  %add.ptr.i276 = getelementptr i8, ptr %149, i32 400
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i276, i8 36) #20, !srcloc !305
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  call void @arm_heavy_mb() #20
  %150 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %hw, align 4
  %add.ptr.i277 = getelementptr i8, ptr %151, i32 401
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i277, i8 36) #20, !srcloc !305
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  call void @arm_heavy_mb() #20
  %152 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %hw, align 4
  %add.ptr.i278 = getelementptr i8, ptr %153, i32 402
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i278, i8 36) #20, !srcloc !305
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  call void @arm_heavy_mb() #20
  %154 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %hw, align 4
  %add.ptr.i279 = getelementptr i8, ptr %155, i32 403
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i279, i8 36) #20, !srcloc !305
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  call void @arm_heavy_mb() #20
  %156 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %hw, align 4
  %add.ptr.i280 = getelementptr i8, ptr %157, i32 404
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i280, i8 36) #20, !srcloc !305
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  call void @arm_heavy_mb() #20
  %158 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %hw, align 4
  %add.ptr.i281 = getelementptr i8, ptr %159, i32 405
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i281, i8 36) #20, !srcloc !305
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  call void @arm_heavy_mb() #20
  %160 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %hw, align 4
  %add.ptr.i282 = getelementptr i8, ptr %161, i32 406
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i282, i8 36) #20, !srcloc !305
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  call void @arm_heavy_mb() #20
  %162 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %hw, align 4
  %add.ptr.i283 = getelementptr i8, ptr %163, i32 407
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i283, i8 36) #20, !srcloc !305
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  call void @arm_heavy_mb() #20
  %164 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %hw, align 4
  %add.ptr.i284 = getelementptr i8, ptr %165, i32 408
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i284, i8 36) #20, !srcloc !305
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  call void @arm_heavy_mb() #20
  %166 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %hw, align 4
  %add.ptr.i285 = getelementptr i8, ptr %167, i32 409
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i285, i8 36) #20, !srcloc !305
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  call void @arm_heavy_mb() #20
  %168 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %hw, align 4
  %add.ptr.i286 = getelementptr i8, ptr %169, i32 410
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i286, i8 36) #20, !srcloc !305
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  call void @arm_heavy_mb() #20
  %170 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %hw, align 4
  %add.ptr.i287 = getelementptr i8, ptr %171, i32 411
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i287, i8 36) #20, !srcloc !305
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !306
  call void @arm_heavy_mb() #20
  %172 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %hw, align 4
  %add.ptr.i288 = getelementptr i8, ptr %173, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i288, i32 1057751040) #20, !srcloc !307
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !306
  call void @arm_heavy_mb() #20
  %174 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %hw, align 4
  %add.ptr.i289 = getelementptr i8, ptr %175, i32 332
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i289, i32 -2113929216) #20, !srcloc !307
  %176 = ptrtoint ptr %chip_id to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %177)
  %cmp.i.i.i = icmp eq i8 %177, 10
  %div.i = select i1 %cmp.i.i.i, i32 5312, i32 7812
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !306
  call void @arm_heavy_mb() #20
  %178 = call i32 @llvm.bswap.i32(i32 %div.i) #20
  %179 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %hw, align 4
  %add.ptr.i290 = getelementptr i8, ptr %180, i32 320
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i290, i32 %178) #20, !srcloc !307
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !306
  call void @arm_heavy_mb() #20
  %181 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %hw, align 4
  %add.ptr.i291 = getelementptr i8, ptr %182, i32 328
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i291, i32 67108864) #20, !srcloc !307
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !306
  call void @arm_heavy_mb() #20
  %183 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %hw, align 4
  %add.ptr.i292 = getelementptr i8, ptr %184, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i292, i32 0) #20, !srcloc !307
  %185 = ptrtoint ptr %ports to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %ports, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %186)
  %cmp134309.not = icmp eq i8 %186, 0
  br i1 %cmp134309.not, label %for.end129.cleanup_crit_edge, label %for.end129.for.body136_crit_edge

for.end129.for.body136_crit_edge:                 ; preds = %for.end129
  br label %for.body136

for.end129.cleanup_crit_edge:                     ; preds = %for.end129
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

for.body136:                                      ; preds = %for.inc141.for.body136_crit_edge, %for.end129.for.body136_crit_edge
  %i.2310 = phi i32 [ %inc142, %for.inc141.for.body136_crit_edge ], [ 0, %for.end129.for.body136_crit_edge ]
  %187 = ptrtoint ptr %chip_id to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %188)
  %cmp.i294 = icmp eq i8 %188, 10
  br i1 %cmp.i294, label %if.then138, label %if.else139

if.then138:                                       ; preds = %for.body136
  call void @__sanitizer_cov_trace_pc() #22
  call fastcc void @genesis_reset(ptr noundef %hw, i32 noundef %i.2310)
  br label %for.inc141

if.else139:                                       ; preds = %for.body136
  call void @__sanitizer_cov_trace_pc() #22
  call fastcc void @yukon_reset(ptr noundef %hw, i32 noundef %i.2310)
  br label %for.inc141

for.inc141:                                       ; preds = %if.else139, %if.then138
  %inc142 = add nuw nsw i32 %i.2310, 1
  %189 = ptrtoint ptr %ports to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %ports, align 1
  %conv133 = zext i8 %190 to i32
  %cmp134 = icmp ult i32 %inc142, %conv133
  br i1 %cmp134, label %for.inc141.for.body136_crit_edge, label %for.inc141.cleanup_crit_edge

for.inc141.cleanup_crit_edge:                     ; preds = %for.inc141
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

for.inc141.for.body136_crit_edge:                 ; preds = %for.inc141
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body136

cleanup.sink.split:                               ; preds = %sw.bb.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.sink313 = phi i8 [ %44, %sw.bb.cleanup.sink.split_crit_edge ], [ %41, %entry.cleanup.sink.split_crit_edge ]
  %.str.96.sink = phi ptr [ @.str.93, %sw.bb.cleanup.sink.split_crit_edge ], [ @.str.96, %entry.cleanup.sink.split_crit_edge ]
  %conv20 = zext i8 %.sink313 to i32
  %191 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %pdev, align 4
  %dev44 = getelementptr inbounds %struct.pci_dev, ptr %192, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev44, ptr noundef nonnull %.str.96.sink, i32 noundef %conv20) #24
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc141.cleanup_crit_edge, %for.end129.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end129.cleanup_crit_edge ], [ -95, %cleanup.sink.split ], [ 0, %for.inc141.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pci_status) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #20
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @skge_devinit(ptr noundef %hw, i32 noundef %port, i32 noundef %highmem) unnamed_addr #2 align 64 {
entry:
  %addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @alloc_etherdev_mqs(i32 noundef 384, i32 noundef 1, i32 noundef 1) #20
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #20
  %tobool.not = icmp eq ptr %call, null
  %0 = call ptr @memset(ptr %addr, i32 255, i32 6)
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdev = getelementptr inbounds %struct.skge_hw, ptr %hw, i32 0, i32 1
  %1 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  %parent = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 133, i32 1
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev1, ptr %parent, align 8
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 16
  %4 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @skge_netdev_ops, ptr %netdev_ops, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 44
  %5 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @skge_ethtool_ops, ptr %ethtool_ops, align 16
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 115
  %6 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 500, ptr %watchdog_timeo, align 4
  %7 = load ptr, ptr %pdev, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 46
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  %irq4 = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 64
  %10 = ptrtoint ptr %irq4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %irq4, align 4
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 30
  %11 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 60, ptr %min_mtu, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 31
  %12 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 9000, ptr %max_mtu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %highmem)
  %tobool5.not = icmp eq i32 %highmem, 0
  br i1 %tobool5.not, label %if.end.if.end7_crit_edge, label %if.then6

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %features = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 23
  %13 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %features, align 16
  %or = or i64 %14, 32
  store i64 %or, ptr %features, align 16
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  %add.ptr.i = getelementptr i8, ptr %call, i32 2304
  %napi = getelementptr i8, ptr %call, i32 2312
  tail call void @netif_napi_add(ptr noundef nonnull %call, ptr noundef %napi, ptr noundef nonnull @skge_poll, i32 noundef 64) #20
  %netdev = getelementptr i8, ptr %call, i32 2308
  %15 = ptrtoint ptr %netdev to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call, ptr %netdev, align 4
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %hw, ptr %add.ptr.i, align 128
  %17 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %17)
  %cmp1.i = icmp ugt i32 %17, 31
  br i1 %cmp1.i, label %if.end7.netif_msg_init.exit_crit_edge, label %if.end.i

if.end7.netif_msg_init.exit_crit_edge:            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #22
  br label %netif_msg_init.exit

if.end.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp2.i = icmp eq i32 %17, 0
  br i1 %cmp2.i, label %if.end.i.netif_msg_init.exit_crit_edge, label %if.end4.i

if.end.i.netif_msg_init.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %netif_msg_init.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  %notmask.i = shl nsw i32 -1, %17
  %sub.i = xor i32 %notmask.i, -1
  br label %netif_msg_init.exit

netif_msg_init.exit:                              ; preds = %if.end4.i, %if.end.i.netif_msg_init.exit_crit_edge, %if.end7.netif_msg_init.exit_crit_edge
  %retval.0.i = phi i32 [ %sub.i, %if.end4.i ], [ 55, %if.end7.netif_msg_init.exit_crit_edge ], [ 0, %if.end.i.netif_msg_init.exit_crit_edge ]
  %msg_enable = getelementptr i8, ptr %call, i32 2540
  %18 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %retval.0.i, ptr %msg_enable, align 4
  %count = getelementptr i8, ptr %call, i32 2556
  %19 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 128, ptr %count, align 4
  %count11 = getelementptr i8, ptr %call, i32 2572
  %20 = ptrtoint ptr %count11 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 512, ptr %count11, align 4
  %autoneg = getelementptr i8, ptr %call, i32 2638
  %21 = ptrtoint ptr %autoneg to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %autoneg, align 2
  %flow_control = getelementptr i8, ptr %call, i32 2628
  %22 = ptrtoint ptr %flow_control to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 4, ptr %flow_control, align 4
  %duplex = getelementptr i8, ptr %call, i32 2639
  %23 = ptrtoint ptr %duplex to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -1, ptr %duplex, align 1
  %speed = getelementptr i8, ptr %call, i32 2640
  %24 = ptrtoint ptr %speed to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 -1, ptr %speed, align 16
  %copper.i = getelementptr inbounds %struct.skge_hw, ptr %hw, i32 0, i32 7
  %25 = ptrtoint ptr %copper.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %copper.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i = icmp eq i8 %26, 0
  br i1 %tobool.not.i, label %netif_msg_init.exit.skge_supported_modes.exit_crit_edge, label %if.then.i

netif_msg_init.exit.skge_supported_modes.exit_crit_edge: ; preds = %netif_msg_init.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %skge_supported_modes.exit

if.then.i:                                        ; preds = %netif_msg_init.exit
  %chip_id.i.i = getelementptr inbounds %struct.skge_hw, ptr %hw, i32 0, i32 5
  %27 = ptrtoint ptr %chip_id.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %chip_id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %28)
  %cmp.i.i = icmp eq i8 %28, 10
  br i1 %cmp.i.i, label %if.then.i.skge_supported_modes.exit_crit_edge, label %if.else.i

if.then.i.skge_supported_modes.exit_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %skge_supported_modes.exit

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #22
  call void @__sanitizer_cov_trace_const_cmp1(i8 -80, i8 %28)
  %cmp.i = icmp eq i8 %28, -80
  %spec.select.i = select i1 %cmp.i, i32 239, i32 255
  br label %skge_supported_modes.exit

skge_supported_modes.exit:                        ; preds = %if.else.i, %if.then.i.skge_supported_modes.exit_crit_edge, %netif_msg_init.exit.skge_supported_modes.exit_crit_edge
  %supported.0.i = phi i32 [ 240, %if.then.i.skge_supported_modes.exit_crit_edge ], [ %spec.select.i, %if.else.i ], [ 1136, %netif_msg_init.exit.skge_supported_modes.exit_crit_edge ]
  %advertising = getelementptr i8, ptr %call, i32 2644
  %29 = ptrtoint ptr %advertising to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %supported.0.i, ptr %advertising, align 4
  %30 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev, align 4
  %can_wakeup.i = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44, i32 12, i32 1
  %32 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %if.then16, label %skge_supported_modes.exit.if.end23_crit_edge

skge_supported_modes.exit.if.end23_crit_edge:     ; preds = %skge_supported_modes.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end23

if.then16:                                        ; preds = %skge_supported_modes.exit
  %chip_id.i.i78 = getelementptr inbounds %struct.skge_hw, ptr %hw, i32 0, i32 5
  %33 = ptrtoint ptr %chip_id.i.i78 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %chip_id.i.i78, align 4
  %35 = zext i8 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.140)
  switch i8 %34, label %if.then16.if.end6.i_crit_edge [
    i8 10, label %if.then16.wol_supported.exit_crit_edge
    i8 -80, label %land.lhs.true.i
  ]

if.then16.wol_supported.exit_crit_edge:           ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #22
  br label %wol_supported.exit

if.then16.if.end6.i_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end6.i

land.lhs.true.i:                                  ; preds = %if.then16
  %chip_rev.i = getelementptr inbounds %struct.skge_hw, ptr %hw, i32 0, i32 6
  %36 = ptrtoint ptr %chip_rev.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %chip_rev.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp3.i = icmp eq i8 %37, 0
  br i1 %cmp3.i, label %land.lhs.true.i.wol_supported.exit_crit_edge, label %land.lhs.true.i.if.end6.i_crit_edge

land.lhs.true.i.if.end6.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end6.i

land.lhs.true.i.wol_supported.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %wol_supported.exit

if.end6.i:                                        ; preds = %land.lhs.true.i.if.end6.i_crit_edge, %if.then16.if.end6.i_crit_edge
  br label %wol_supported.exit

wol_supported.exit:                               ; preds = %if.end6.i, %land.lhs.true.i.wol_supported.exit_crit_edge, %if.then16.wol_supported.exit_crit_edge
  %tobool21 = phi i1 [ false, %if.then16.wol_supported.exit_crit_edge ], [ false, %land.lhs.true.i.wol_supported.exit_crit_edge ], [ true, %if.end6.i ]
  %retval.0.i79 = phi i8 [ 0, %if.then16.wol_supported.exit_crit_edge ], [ 0, %land.lhs.true.i.wol_supported.exit_crit_edge ], [ 32, %if.end6.i ]
  %wol = getelementptr i8, ptr %call, i32 2637
  %38 = ptrtoint ptr %wol to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %retval.0.i79, ptr %wol, align 1
  %39 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pdev, align 4
  %dev19 = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 44
  %call22 = tail call i32 @device_set_wakeup_enable(ptr noundef %dev19, i1 noundef zeroext %tobool21) #20
  br label %if.end23

if.end23:                                         ; preds = %wol_supported.exit, %skge_supported_modes.exit.if.end23_crit_edge
  %arrayidx = getelementptr %struct.skge_hw, ptr %hw, i32 0, i32 4, i32 %port
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call, ptr %arrayidx, align 4
  %port25 = getelementptr i8, ptr %call, i32 2536
  %42 = ptrtoint ptr %port25 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %port, ptr %port25, align 8
  %chip_id.i = getelementptr inbounds %struct.skge_hw, ptr %hw, i32 0, i32 5
  %43 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %chip_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %44)
  %cmp.i80 = icmp eq i8 %44, 10
  br i1 %cmp.i80, label %do.body, label %if.else

do.body:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #22
  %link_timer = getelementptr i8, ptr %call, i32 2580
  tail call void @init_timer_key(ptr noundef %link_timer, ptr noundef nonnull @xm_link_timer, i32 noundef 0, ptr noundef nonnull @.str.106, ptr noundef nonnull @skge_devinit.__key) #20
  br label %if.end31

if.else:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #22
  %hw_features = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 24
  %45 = ptrtoint ptr %hw_features to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 1099511627779, ptr %hw_features, align 8
  %features29 = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 23
  %46 = ptrtoint ptr %features29 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %features29, align 16
  %or30 = or i64 %47, 1099511627779
  store i64 %or30, ptr %features29, align 16
  br label %if.end31

if.end31:                                         ; preds = %if.else, %do.body
  %48 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hw, align 4
  %add.ptr = getelementptr i8, ptr %49, i32 256
  %mul = shl i32 %port, 3
  %add.ptr32 = getelementptr i8, ptr %add.ptr, i32 %mul
  call void @mmiocpy(ptr noundef nonnull %addr, ptr noundef %add.ptr32, i32 noundef 6) #20
  call void @dev_addr_mod(ptr noundef nonnull %call, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #20
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #20
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @yukon_link_up(ptr nocapture noundef readonly %skge) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %skge to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skge, align 128
  %port2 = getelementptr inbounds %struct.skge_port, ptr %skge, i32 0, i32 3
  %2 = ptrtoint ptr %port2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port2, align 8
  %shl = shl i32 %3, 7
  %add = add i32 %shl, 3852
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  tail call void @arm_heavy_mb() #20
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %add
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 10) #20, !srcloc !305
  %mul.i = shl i32 %3, 12
  %add1.i = add i32 %mul.i, 10244
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %add1.i
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #20, !srcloc !313
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %duplex = getelementptr inbounds %struct.skge_port, ptr %skge, i32 0, i32 14
  %10 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %duplex, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp = icmp eq i8 %11, 1
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %autoneg = getelementptr inbounds %struct.skge_port, ptr %skge, i32 0, i32 13
  %12 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %autoneg, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp5 = icmp eq i8 %13, 1
  br i1 %cmp5, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %14 = or i16 %9, 32
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %reg.0 = phi i16 [ %14, %if.then ], [ %9, %lor.lhs.false.if.end_crit_edge ]
  %15 = or i16 %reg.0, 6144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %16 = tail call i16 @llvm.bswap.i16(i16 %15) #20
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %add.ptr.i.i28 = getelementptr i8, ptr %18, i32 %add1.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i28, i16 %16) #20, !srcloc !311
  %call12 = tail call fastcc i32 @gm_phy_write(ptr noundef %1, i32 noundef %3, i16 noundef zeroext 18, i16 noundef zeroext -15232)
  tail call fastcc void @skge_link_up(ptr noundef %skge)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @genesis_reset(ptr nocapture noundef readonly %hw, i32 noundef %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %port, 7
  %add = add i32 %shl, 3852
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  tail call void @arm_heavy_mb() #20
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %add
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 0) #20, !srcloc !305
  %mul.i = shl i32 %port, 12
  %add.i = add i32 %mul.i, 8192
  %or.i = or i32 %add.i, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %or.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 1024) #20, !srcloc !311
  %or5.i = or i32 %add.i, 132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %5, i32 %or5.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i11.i, i16 0) #20, !srcloc !311
  %or.i27 = or i32 %add.i, 136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 4
  %add.ptr.i.i28 = getelementptr i8, ptr %7, i32 %or.i27
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i28, i16 -1) #20, !srcloc !311
  %or.i31 = or i32 %add.i, 584
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw, align 4
  %add.ptr.i.i32 = getelementptr i8, ptr %9, i32 %or.i31
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i32, i16 0) #20, !srcloc !311
  %or5.i33 = or i32 %add.i, 588
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 4
  %add.ptr.i11.i34 = getelementptr i8, ptr %11, i32 %or5.i33
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i11.i34, i16 0) #20, !srcloc !311
  %or.i37 = or i32 %add.i, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw, align 4
  %add.ptr.i.i38 = getelementptr i8, ptr %13, i32 %or.i37
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i38, i16 0) #20, !srcloc !311
  %or.i41 = or i32 %add.i, 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %14 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw, align 4
  %add.ptr.i.i42 = getelementptr i8, ptr %15, i32 %or.i41
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i42, i16 0) #20, !srcloc !311
  %phy_type = getelementptr inbounds %struct.skge_hw, ptr %hw, i32 0, i32 9
  %16 = ptrtoint ptr %phy_type to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %phy_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %17)
  %cmp = icmp eq i8 %17, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %or.i45 = or i32 %add.i, 54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %18 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw, align 4
  %add.ptr.i.i46 = getelementptr i8, ptr %19, i32 %or.i45
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i46, i16 -1) #20, !srcloc !311
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %or.i.i = or i32 %add.i, 544
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %20 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %21, i32 %or.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i, i16 0) #20, !srcloc !311
  %or.i3.i = or i32 %add.i, 548
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %22 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw, align 4
  %add.ptr.i.i4.i = getelementptr i8, ptr %23, i32 %or.i3.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i4.i, i16 0) #20, !srcloc !311
  %or.i7.i = or i32 %add.i, 552
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %24 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw, align 4
  %add.ptr.i.i8.i = getelementptr i8, ptr %25, i32 %or.i7.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i8.i, i16 0) #20, !srcloc !311
  %or.i11.i = or i32 %add.i, 556
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %26 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw, align 4
  %add.ptr.i.i12.i = getelementptr i8, ptr %27, i32 %or.i11.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i12.i, i16 0) #20, !srcloc !311
  %28 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw, align 4
  %add.ptr.i.i50 = getelementptr i8, ptr %29, i32 %or.i31
  %30 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i50) #20, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %31 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hw, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %32, i32 %or5.i33
  %33 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i14.i) #20, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %34 = zext i16 %33 to i32
  %35 = zext i16 %30 to i32
  %36 = shl nuw i32 %35, 16
  %37 = or i32 %36, %34
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #20
  %39 = trunc i32 %38 to i16
  %conv.i = or i16 %39, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %40 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #20
  %41 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hw, align 4
  %add.ptr.i.i55 = getelementptr i8, ptr %42, i32 %or.i31
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i55, i16 %40) #20, !srcloc !311
  %shr.i = lshr i32 %38, 16
  %conv6.i = trunc i32 %shr.i to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %43 = tail call i16 @llvm.bswap.i16(i16 %conv6.i) #20
  %44 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hw, align 4
  %add.ptr.i11.i57 = getelementptr i8, ptr %45, i32 %or5.i33
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i11.i57, i16 %43) #20, !srcloc !311
  %conv.i61 = or i16 %39, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %46 = tail call i16 @llvm.bswap.i16(i16 %conv.i61) #20
  %47 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hw, align 4
  %add.ptr.i.i62 = getelementptr i8, ptr %48, i32 %or.i31
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i62, i16 %46) #20, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %49 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hw, align 4
  %add.ptr.i11.i66 = getelementptr i8, ptr %50, i32 %or5.i33
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i11.i66, i16 %43) #20, !srcloc !311
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @yukon_reset(ptr nocapture noundef readonly %hw, i32 noundef %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @gm_phy_write(ptr noundef %hw, i32 noundef %port, i16 noundef zeroext 18, i16 noundef zeroext 0)
  %mul.i = shl i32 %port, 12
  %add1.i = add i32 %mul.i, 10292
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %add1.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 0) #20, !srcloc !311
  %add1.i18 = add i32 %mul.i, 10296
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %add.ptr.i.i19 = getelementptr i8, ptr %3, i32 %add1.i18
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i19, i16 0) #20, !srcloc !311
  %add1.i22 = add i32 %mul.i, 10300
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %add.ptr.i.i23 = getelementptr i8, ptr %5, i32 %add1.i22
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i23, i16 0) #20, !srcloc !311
  %add1.i26 = add i32 %mul.i, 10304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 4
  %add.ptr.i.i27 = getelementptr i8, ptr %7, i32 %add1.i26
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i27, i16 0) #20, !srcloc !311
  %add1.i30 = add i32 %mul.i, 10252
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw, align 4
  %add.ptr.i.i31 = getelementptr i8, ptr %9, i32 %add1.i30
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i31) #20, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %11 = or i16 %10, 192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw, align 4
  %add.ptr.i.i35 = getelementptr i8, ptr %13, i32 %add1.i30
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i35, i16 %11) #20, !srcloc !311
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @skge_poll(ptr noundef %napi, i32 noundef %budget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -8
  %netdev = getelementptr i8, ptr %napi, i32 -4
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 128
  %rx_ring = getelementptr i8, ptr %napi, i32 248
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 2304
  %tx_ring.i = getelementptr i8, ptr %1, i32 2544
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i.i, align 128
  %port.i = getelementptr i8, ptr %1, i32 2536
  %6 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port.i, align 8
  %arrayidx.i = getelementptr [2 x i32], ptr @txqaddr, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %add1.i = add i32 %9, 1076
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  tail call void @arm_heavy_mb() #20
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  %add.ptr.i72.i = getelementptr i8, ptr %11, i32 %add1.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i72.i, i8 2) #20, !srcloc !305
  %to_use.i = getelementptr i8, ptr %1, i32 2548
  %12 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %e.096.i = load ptr, ptr %tx_ring.i, align 4
  %13 = ptrtoint ptr %to_use.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %to_use.i, align 4
  %cmp.not97.i = icmp eq ptr %e.096.i, %14
  br i1 %cmp.not97.i, label %for.end.thread.i, label %for.body.lr.ph.i

for.end.thread.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %_tx.i.i106.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  br label %netdev_completed_queue.exit.i

for.body.lr.ph.i:                                 ; preds = %entry
  %msg_enable.i = getelementptr i8, ptr %1, i32 2540
  %netdev.i = getelementptr i8, ptr %1, i32 2308
  %start.i = getelementptr i8, ptr %1, i32 2552
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %e.0100.i = phi ptr [ %e.096.i, %for.body.lr.ph.i ], [ %e.0.i, %cleanup.i.for.body.i_crit_edge ]
  %bytes_compl.098.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %bytes_compl.2.i, %cleanup.i.for.body.i_crit_edge ]
  %desc.i = getelementptr inbounds %struct.skge_element, ptr %e.0100.i, i32 0, i32 1
  %15 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %desc.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %tobool.not.i = icmp sgt i32 %18, -1
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end.i

if.end.i:                                         ; preds = %for.body.i
  %19 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i.i, align 128
  %pdev.i = getelementptr inbounds %struct.skge_hw, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev.i, align 4
  %dev1.i.i = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %mapaddr2.i.i = getelementptr inbounds %struct.skge_element, ptr %e.0100.i, i32 0, i32 3
  %23 = ptrtoint ptr %mapaddr2.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mapaddr2.i.i, align 4
  %maplen3.i.i = getelementptr inbounds %struct.skge_element, ptr %e.0100.i, i32 0, i32 4
  %25 = ptrtoint ptr %maplen3.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %maplen3.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev1.i.i, i32 noundef %24, i32 noundef %26, i32 noundef 1, i32 noundef 0) #20
  %and4.i = and i32 %18, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.end.i.cleanup.i_crit_edge, label %do.body.i

if.end.i.cleanup.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.i

do.body.i:                                        ; preds = %if.end.i
  %27 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %msg_enable.i, align 4
  %and7.i = and i32 %28, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %do.body.i.do.end.i_crit_edge, label %if.then9.i

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end.i

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #22
  %29 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %netdev.i, align 4
  %31 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %start.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %e.0100.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %32 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 20
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.12, ptr noundef %30, ptr noundef nonnull @.str.113, i32 noundef %sub.ptr.div.i) #24
  br label %do.end.i

do.end.i:                                         ; preds = %if.then9.i, %do.body.i.do.end.i_crit_edge
  %skb.i = getelementptr inbounds %struct.skge_element, ptr %e.0100.i, i32 0, i32 2
  %33 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %skb.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %34, i32 0, i32 6
  %35 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len.i, align 4
  %add12.i = add i32 %36, %bytes_compl.098.i
  tail call void @__dev_kfree_skb_any(ptr noundef %34, i32 noundef 0) #20
  br label %cleanup.i

cleanup.i:                                        ; preds = %do.end.i, %if.end.i.cleanup.i_crit_edge
  %bytes_compl.2.i = phi i32 [ %add12.i, %do.end.i ], [ %bytes_compl.098.i, %if.end.i.cleanup.i_crit_edge ]
  %37 = ptrtoint ptr %e.0100.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %e.0.i = load ptr, ptr %e.0100.i, align 4
  %38 = ptrtoint ptr %to_use.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %to_use.i, align 4
  %cmp.not.i = icmp eq ptr %e.0.i, %39
  br i1 %cmp.not.i, label %cleanup.i.for.end.i_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %bytes_compl.0.lcssa.i = phi i32 [ %bytes_compl.2.i, %cleanup.i.for.end.i_crit_edge ], [ %bytes_compl.098.i, %for.body.i.for.end.i_crit_edge ]
  %e.0.lcssa.i = phi ptr [ %e.0.i, %cleanup.i.for.end.i_crit_edge ], [ %e.0100.i, %for.body.i.for.end.i_crit_edge ]
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %40 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %_tx.i.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes_compl.0.lcssa.i)
  %tobool.not.i.i.i = icmp eq i32 %bytes_compl.0.lcssa.i, 0
  br i1 %tobool.not.i.i.i, label %for.end.i.netdev_completed_queue.exit.i_crit_edge, label %if.end.i.i.i, !prof !301

for.end.i.netdev_completed_queue.exit.i_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %netdev_completed_queue.exit.i

if.end.i.i.i:                                     ; preds = %for.end.i
  %dql.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %41, i32 0, i32 15
  tail call void @dql_completed(ptr noundef %dql.i.i.i, i32 noundef %bytes_compl.0.lcssa.i) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !319
  %adj_limit.i.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %41, i32 0, i32 15, i32 1
  %42 = ptrtoint ptr %adj_limit.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %adj_limit.i.i.i.i, align 4
  %44 = ptrtoint ptr %dql.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %dql.i.i.i, align 128
  %sub.i.i.i.i = sub i32 %43, %45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i.i)
  %cmp.i.i.i = icmp slt i32 %sub.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end.i.i.i.netdev_completed_queue.exit.i_crit_edge, label %if.end14.i.i.i, !prof !301

if.end.i.i.i.netdev_completed_queue.exit.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %netdev_completed_queue.exit.i

if.end14.i.i.i:                                   ; preds = %if.end.i.i.i
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %41, i32 0, i32 13
  %call15.i.i.i = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %state.i.i.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i.i)
  %tobool16.not.i.i.i = icmp eq i32 %call15.i.i.i, 0
  br i1 %tobool16.not.i.i.i, label %if.end14.i.i.i.netdev_completed_queue.exit.i_crit_edge, label %if.then17.i.i.i

if.end14.i.i.i.netdev_completed_queue.exit.i_crit_edge: ; preds = %if.end14.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %netdev_completed_queue.exit.i

if.then17.i.i.i:                                  ; preds = %if.end14.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @netif_schedule_queue(ptr noundef %41) #20
  br label %netdev_completed_queue.exit.i

netdev_completed_queue.exit.i:                    ; preds = %if.then17.i.i.i, %if.end14.i.i.i.netdev_completed_queue.exit.i_crit_edge, %if.end.i.i.i.netdev_completed_queue.exit.i_crit_edge, %for.end.i.netdev_completed_queue.exit.i_crit_edge, %for.end.thread.i
  %_tx.i.i109.i = phi ptr [ %_tx.i.i106.i, %for.end.thread.i ], [ %_tx.i.i.i, %for.end.i.netdev_completed_queue.exit.i_crit_edge ], [ %_tx.i.i.i, %if.end.i.i.i.netdev_completed_queue.exit.i_crit_edge ], [ %_tx.i.i.i, %if.end14.i.i.i.netdev_completed_queue.exit.i_crit_edge ], [ %_tx.i.i.i, %if.then17.i.i.i ]
  %e.0.lcssa108.i = phi ptr [ %e.096.i, %for.end.thread.i ], [ %e.0.lcssa.i, %for.end.i.netdev_completed_queue.exit.i_crit_edge ], [ %e.0.lcssa.i, %if.end.i.i.i.netdev_completed_queue.exit.i_crit_edge ], [ %e.0.lcssa.i, %if.end14.i.i.i.netdev_completed_queue.exit.i_crit_edge ], [ %e.0.lcssa.i, %if.then17.i.i.i ]
  %46 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %e.0.lcssa108.i, ptr %tx_ring.i, align 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !320
  %47 = ptrtoint ptr %_tx.i.i109.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %_tx.i.i109.i, align 128
  %state.i.i74.i = getelementptr inbounds %struct.netdev_queue, ptr %48, i32 0, i32 13
  %49 = ptrtoint ptr %state.i.i74.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %state.i.i74.i, align 4
  %and1.i.i.i.i = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.i.not.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.i.i.not.i, label %netdev_completed_queue.exit.i.skge_tx_done.exit_crit_edge, label %land.rhs.i

netdev_completed_queue.exit.i.skge_tx_done.exit_crit_edge: ; preds = %netdev_completed_queue.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %skge_tx_done.exit

land.rhs.i:                                       ; preds = %netdev_completed_queue.exit.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !318
  %51 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tx_ring.i, align 4
  %53 = ptrtoint ptr %to_use.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %to_use.i, align 4
  %cmp.i.i = icmp ugt ptr %52, %54
  br i1 %cmp.i.i, label %land.rhs.i.skge_avail.exit.i_crit_edge, label %cond.false.i.i

land.rhs.i.skge_avail.exit.i_crit_edge:           ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %skge_avail.exit.i

cond.false.i.i:                                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #22
  %count.i.i = getelementptr i8, ptr %1, i32 2556
  %55 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %count.i.i, align 4
  br label %skge_avail.exit.i

skge_avail.exit.i:                                ; preds = %cond.false.i.i, %land.rhs.i.skge_avail.exit.i_crit_edge
  %cond.i.i = phi i32 [ %56, %cond.false.i.i ], [ 0, %land.rhs.i.skge_avail.exit.i_crit_edge ]
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %52 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %54 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = sdiv exact i32 %sub.ptr.sub.i.i, 20
  %add.i.i = add nsw i32 %sub.ptr.div.i.i, -1
  %sub.i.i = add i32 %add.i.i, %cond.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %sub.i.i)
  %cmp26.i = icmp ugt i32 %sub.i.i, 18
  br i1 %cmp26.i, label %if.then29.i, label %skge_avail.exit.i.skge_tx_done.exit_crit_edge, !prof !301

skge_avail.exit.i.skge_tx_done.exit_crit_edge:    ; preds = %skge_avail.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %skge_tx_done.exit

if.then29.i:                                      ; preds = %skge_avail.exit.i
  tail call void @netif_tx_lock(ptr noundef %1) #20
  %57 = ptrtoint ptr %_tx.i.i109.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %_tx.i.i109.i, align 128
  %state.i.i76.i = getelementptr inbounds %struct.netdev_queue, ptr %58, i32 0, i32 13
  %59 = ptrtoint ptr %state.i.i76.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %state.i.i76.i, align 4
  %and1.i.i.i77.i = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i77.i)
  %tobool.i.i78.not.i = icmp eq i32 %and1.i.i.i77.i, 0
  br i1 %tobool.i.i78.not.i, label %if.then29.i.if.end43.i_crit_edge, label %land.rhs31.i

if.then29.i.if.end43.i_crit_edge:                 ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end43.i

land.rhs31.i:                                     ; preds = %if.then29.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !318
  %61 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %tx_ring.i, align 4
  %63 = ptrtoint ptr %to_use.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %to_use.i, align 4
  %cmp.i80.i = icmp ugt ptr %62, %64
  br i1 %cmp.i80.i, label %land.rhs31.i.skge_avail.exit90.i_crit_edge, label %cond.false.i82.i

land.rhs31.i.skge_avail.exit90.i_crit_edge:       ; preds = %land.rhs31.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %skge_avail.exit90.i

cond.false.i82.i:                                 ; preds = %land.rhs31.i
  call void @__sanitizer_cov_trace_pc() #22
  %count.i81.i = getelementptr i8, ptr %1, i32 2556
  %65 = ptrtoint ptr %count.i81.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %count.i81.i, align 4
  br label %skge_avail.exit90.i

skge_avail.exit90.i:                              ; preds = %cond.false.i82.i, %land.rhs31.i.skge_avail.exit90.i_crit_edge
  %cond.i83.i = phi i32 [ %66, %cond.false.i82.i ], [ 0, %land.rhs31.i.skge_avail.exit90.i_crit_edge ]
  %sub.ptr.lhs.cast.i84.i = ptrtoint ptr %62 to i32
  %sub.ptr.rhs.cast.i85.i = ptrtoint ptr %64 to i32
  %sub.ptr.sub.i86.i = sub i32 %sub.ptr.lhs.cast.i84.i, %sub.ptr.rhs.cast.i85.i
  %sub.ptr.div.i87.i = sdiv exact i32 %sub.ptr.sub.i86.i, 20
  %add.i88.i = add nsw i32 %sub.ptr.div.i87.i, -1
  %sub.i89.i = add i32 %add.i88.i, %cond.i83.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %sub.i89.i)
  %cmp34.i = icmp ugt i32 %sub.i89.i, 18
  br i1 %cmp34.i, label %if.then42.i, label %skge_avail.exit90.i.if.end43.i_crit_edge, !prof !301

skge_avail.exit90.i.if.end43.i_crit_edge:         ; preds = %skge_avail.exit90.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end43.i

if.then42.i:                                      ; preds = %skge_avail.exit90.i
  call void @__sanitizer_cov_trace_pc() #22
  %67 = ptrtoint ptr %_tx.i.i109.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %_tx.i.i109.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %68) #20
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then42.i, %skge_avail.exit90.i.if.end43.i_crit_edge, %if.then29.i.if.end43.i_crit_edge
  tail call void @netif_tx_unlock(ptr noundef %1) #20
  br label %skge_tx_done.exit

skge_tx_done.exit:                                ; preds = %if.end43.i, %skge_avail.exit.i.skge_tx_done.exit_crit_edge, %netdev_completed_queue.exit.i.skge_tx_done.exit_crit_edge
  %port = getelementptr i8, ptr %napi, i32 224
  %69 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %port, align 8
  %arrayidx = getelementptr [2 x i32], ptr @rxqaddr, i32 0, i32 %70
  %71 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx, align 4
  %add2 = add i32 %72, 1076
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  tail call void @arm_heavy_mb() #20
  %73 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %74, i32 %add2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 2) #20, !srcloc !305
  %75 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %75)
  %e.096 = load ptr, ptr %rx_ring, align 4
  %76 = ptrtoint ptr %e.096 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %e.096, align 4
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %77) #20, !srcloc !321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %cmp97 = icmp sgt i32 %budget, 0
  br i1 %cmp97, label %for.body.lr.ph, label %skge_tx_done.exit.for.end_crit_edge

skge_tx_done.exit.for.end_crit_edge:              ; preds = %skge_tx_done.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.body.lr.ph:                                   ; preds = %skge_tx_done.exit
  %msg_enable.i73 = getelementptr i8, ptr %1, i32 2540
  %netdev.i75 = getelementptr i8, ptr %1, i32 2308
  %start.i76 = getelementptr i8, ptr %1, i32 2568
  %rx_buf_size.i = getelementptr i8, ptr %1, i32 2576
  %rx_length_errors110.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 10
  %rx_frame_errors117.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 13
  %rx_crc_errors124.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 12
  %features.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 23
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %e.0100 = phi ptr [ %e.096, %for.body.lr.ph ], [ %e.0, %cleanup.for.body_crit_edge ]
  %work_done.098 = phi i32 [ 0, %for.body.lr.ph ], [ %work_done.2, %cleanup.for.body_crit_edge ]
  %desc = getelementptr inbounds %struct.skge_element, ptr %e.0100, i32 0, i32 1
  %78 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %desc, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !322
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %79, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %81)
  %tobool.not = icmp sgt i32 %81, -1
  br i1 %tobool.not, label %if.end, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

if.end:                                           ; preds = %for.body
  %status = getelementptr inbounds %struct.skge_rx_desc, ptr %79, i32 0, i32 4
  %82 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %status, align 4
  %csum2 = getelementptr inbounds %struct.skge_rx_desc, ptr %79, i32 0, i32 6
  %84 = ptrtoint ptr %csum2 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %csum2, align 4
  %86 = ptrtoint ptr %msg_enable.i73 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %msg_enable.i73, align 4
  %and1.i = and i32 %87, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i74 = icmp eq i32 %and1.i, 0
  br i1 %tobool.not.i74, label %entry.do.end_crit_edge.i, label %if.then.i

entry.do.end_crit_edge.i:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %.pre.i = and i32 %81, 65535
  br label %do.end.i82

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %88 = ptrtoint ptr %netdev.i75 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %netdev.i75, align 4
  %90 = ptrtoint ptr %start.i76 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %start.i76, align 8
  %sub.ptr.lhs.cast.i77 = ptrtoint ptr %e.0100 to i32
  %sub.ptr.rhs.cast.i78 = ptrtoint ptr %91 to i32
  %sub.ptr.sub.i79 = sub i32 %sub.ptr.lhs.cast.i77, %sub.ptr.rhs.cast.i78
  %sub.ptr.div.i80 = sdiv exact i32 %sub.ptr.sub.i79, 20
  %conv2.i = and i32 %81, 65535
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.12, ptr noundef %89, ptr noundef nonnull @.str.114, i32 noundef %sub.ptr.div.i80, i32 noundef %83, i32 noundef %conv2.i) #24
  br label %do.end.i82

do.end.i82:                                       ; preds = %if.then.i, %entry.do.end_crit_edge.i
  %conv3.pre-phi.i = phi i32 [ %.pre.i, %entry.do.end_crit_edge.i ], [ %conv2.i, %if.then.i ]
  %92 = ptrtoint ptr %rx_buf_size.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %rx_buf_size.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3.pre-phi.i, i32 %93)
  %cmp.i = icmp ule i32 %conv3.pre-phi.i, %93
  %and7.i81 = and i32 %81, 1610612736
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %and7.i81)
  %cmp8.not.i = icmp eq i32 %and7.i81, 1610612736
  %or.cond.i = and i1 %cmp8.not.i, %cmp.i
  br i1 %or.cond.i, label %if.end11.i, label %do.end.i82.do.body71.i_crit_edge

do.end.i82.do.body71.i_crit_edge:                 ; preds = %do.end.i82
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body71.i

if.end11.i:                                       ; preds = %do.end.i82
  %94 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %add.ptr.i.i, align 128
  %chip_id.i.i.i = getelementptr inbounds %struct.skge_hw, ptr %95, i32 0, i32 5
  %96 = ptrtoint ptr %chip_id.i.i.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %chip_id.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %97)
  %cmp.i.i.i83 = icmp eq i8 %97, 10
  br i1 %cmp.i.i.i83, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #22
  %and.i.i = and i32 %83, 131074
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.i84 = icmp ne i32 %and.i.i, 0
  %conv.i.i = zext i1 %cmp.i.i84 to i32
  br label %bad_phy_status.exit.i

if.else.i.i:                                      ; preds = %if.end11.i
  %and1.i.i = and i32 %83, 4338
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i, 0
  %and2.i.i = lshr i32 %83, 8
  %and2.lobit.i.i = and i32 %and2.i.i, 1
  %98 = xor i32 %and2.lobit.i.i, 1
  br i1 %tobool.not.i.i, label %if.else.i.i.bad_phy_status.exit.i_crit_edge, label %if.else.i.i.do.body71.i_crit_edge

if.else.i.i.do.body71.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body71.i

if.else.i.i.bad_phy_status.exit.i_crit_edge:      ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %bad_phy_status.exit.i

bad_phy_status.exit.i:                            ; preds = %if.else.i.i.bad_phy_status.exit.i_crit_edge, %if.then.i.i
  %retval.0.i.i = phi i32 [ %conv.i.i, %if.then.i.i ], [ %98, %if.else.i.i.bad_phy_status.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool13.not.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %bad_phy_status.exit.i.do.body71.i_crit_edge

bad_phy_status.exit.i.do.body71.i_crit_edge:      ; preds = %bad_phy_status.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body71.i

if.end15.i:                                       ; preds = %bad_phy_status.exit.i
  %retval.0.in.v.i.i = select i1 %cmp.i.i.i83, i32 18, i32 16
  %retval.0.in.i.i = lshr i32 %83, %retval.0.in.v.i.i
  %retval.0.i198.i = trunc i32 %retval.0.in.i.i to i16
  %99 = trunc i32 %81 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %retval.0.i198.i, i16 %99)
  %cmp20.not.i = icmp eq i16 %retval.0.i198.i, %99
  br i1 %cmp20.not.i, label %if.end23.i, label %if.end15.i.do.body71.i_crit_edge

if.end15.i.do.body71.i_crit_edge:                 ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body71.i

if.end23.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %conv3.pre-phi.i)
  %cmp25.i = icmp ult i32 %conv3.pre-phi.i, 128
  br i1 %cmp25.i, label %if.then27.i, label %if.else.i

if.then27.i:                                      ; preds = %if.end23.i
  %add.i.i.i = add nuw nsw i32 %conv3.pre-phi.i, 2
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %1, i32 noundef %add.i.i.i, i32 noundef 2592) #20
  %tobool.not.i.i.i85 = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i85, label %if.then27.i.skge_rx_get.exit.thread_crit_edge, label %if.end32.i

if.then27.i.skge_rx_get.exit.thread_crit_edge:    ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %skge_rx_get.exit.thread

if.end32.i:                                       ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #22
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %100 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %101, i32 2
  store ptr %add.ptr.i.i.i.i, ptr %data.i.i.i.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %102 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %103, i32 2
  store ptr %add.ptr1.i.i.i.i, ptr %tail.i.i.i.i, align 8
  %104 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %add.ptr.i.i, align 128
  %pdev.i86 = getelementptr inbounds %struct.skge_hw, ptr %105, i32 0, i32 1
  %106 = ptrtoint ptr %pdev.i86 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %pdev.i86, align 4
  %dev34.i = getelementptr inbounds %struct.pci_dev, ptr %107, i32 0, i32 44
  %mapaddr.i = getelementptr inbounds %struct.skge_element, ptr %e.0100, i32 0, i32 3
  %108 = ptrtoint ptr %mapaddr.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %mapaddr.i, align 4
  %maplen.i = getelementptr inbounds %struct.skge_element, ptr %e.0100, i32 0, i32 4
  %110 = ptrtoint ptr %maplen.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %maplen.i, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %dev34.i, i32 noundef %109, i32 noundef %111, i32 noundef 2) #20
  %skb35.i = getelementptr inbounds %struct.skge_element, ptr %e.0100, i32 0, i32 2
  %112 = ptrtoint ptr %skb35.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %skb35.i, align 4
  %114 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %data.i.i.i.i, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %113, i32 0, i32 19
  %116 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %data.i.i, align 4
  %118 = call ptr @memcpy(ptr %115, ptr %117, i32 %conv3.pre-phi.i)
  %119 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %add.ptr.i.i, align 128
  %pdev38.i = getelementptr inbounds %struct.skge_hw, ptr %120, i32 0, i32 1
  %121 = ptrtoint ptr %pdev38.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %pdev38.i, align 4
  %dev39.i = getelementptr inbounds %struct.pci_dev, ptr %122, i32 0, i32 44
  %123 = ptrtoint ptr %mapaddr.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %mapaddr.i, align 4
  %125 = ptrtoint ptr %maplen.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %maplen.i, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %dev39.i, i32 noundef %124, i32 noundef %126, i32 noundef 2) #20
  %127 = ptrtoint ptr %rx_buf_size.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %rx_buf_size.i, align 16
  %129 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %desc, align 4
  %csum2.i.i = getelementptr inbounds %struct.skge_rx_desc, ptr %130, i32 0, i32 6
  %131 = ptrtoint ptr %csum2.i.i to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 0, ptr %csum2.i.i, align 4
  %csum2_start.i.i = getelementptr inbounds %struct.skge_rx_desc, ptr %130, i32 0, i32 8
  %132 = ptrtoint ptr %csum2_start.i.i to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 14, ptr %csum2_start.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !323
  tail call void @arm_heavy_mb() #20
  %or.i.i = or i32 %128, -933888000
  %133 = ptrtoint ptr %130 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %or.i.i, ptr %130, align 4
  br label %if.end62.i

if.else.i:                                        ; preds = %if.end23.i
  %add.i.i199.i = add i32 %93, 2
  %call.i.i200.i = tail call ptr @__netdev_alloc_skb(ptr noundef %1, i32 noundef %add.i.i199.i, i32 noundef 2592) #20
  %tobool.not.i.i201.i = icmp eq ptr %call.i.i200.i, null
  br i1 %tobool.not.i.i201.i, label %if.else.i.skge_rx_get.exit.thread_crit_edge, label %if.end47.i

if.else.i.skge_rx_get.exit.thread_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %skge_rx_get.exit.thread

if.end47.i:                                       ; preds = %if.else.i
  %data.i.i.i202.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i200.i, i32 0, i32 19
  %134 = ptrtoint ptr %data.i.i.i202.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %data.i.i.i202.i, align 4
  %add.ptr.i.i.i203.i = getelementptr i8, ptr %135, i32 2
  store ptr %add.ptr.i.i.i203.i, ptr %data.i.i.i202.i, align 4
  %tail.i.i.i204.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i200.i, i32 0, i32 16
  %136 = ptrtoint ptr %tail.i.i.i204.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %tail.i.i.i204.i, align 8
  %add.ptr1.i.i.i205.i = getelementptr i8, ptr %137, i32 2
  store ptr %add.ptr1.i.i.i205.i, ptr %tail.i.i.i204.i, align 8
  %ee.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %e.0100, i32 8
  %138 = ptrtoint ptr %ee.sroa.5.0..sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %ee.sroa.5.0.copyload.i = load ptr, ptr %ee.sroa.5.0..sroa_idx.i, align 4
  %ee.sroa.7.0..sroa_idx.i = getelementptr inbounds i8, ptr %e.0100, i32 12
  %139 = ptrtoint ptr %ee.sroa.7.0..sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %ee.sroa.7.0.copyload.i = load i32, ptr %ee.sroa.7.0..sroa_idx.i, align 4
  %ee.sroa.9.0..sroa_idx.i = getelementptr inbounds i8, ptr %e.0100, i32 16
  %140 = ptrtoint ptr %ee.sroa.9.0..sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %ee.sroa.9.0.copyload.i = load i32, ptr %ee.sroa.9.0..sroa_idx.i, align 4
  %data49.i = getelementptr inbounds %struct.sk_buff, ptr %ee.sroa.5.0.copyload.i, i32 0, i32 19
  %141 = ptrtoint ptr %data49.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %data49.i, align 4
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %142) #20, !srcloc !321
  %143 = ptrtoint ptr %rx_buf_size.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %rx_buf_size.i, align 16
  %call51.i = tail call fastcc i32 @skge_rx_setup(ptr noundef %add.ptr.i.i, ptr noundef %e.0100, ptr noundef nonnull %call.i.i200.i, i32 noundef %144) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i)
  %cmp52.i = icmp slt i32 %call51.i, 0
  br i1 %cmp52.i, label %if.then54.i, label %cleanup.i87

if.then54.i:                                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @consume_skb(ptr noundef nonnull %call.i.i200.i) #20
  br label %skge_rx_get.exit.thread

cleanup.i87:                                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #22
  %145 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %add.ptr.i.i, align 128
  %pdev57.i = getelementptr inbounds %struct.skge_hw, ptr %146, i32 0, i32 1
  %147 = ptrtoint ptr %pdev57.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %pdev57.i, align 4
  %dev58.i = getelementptr inbounds %struct.pci_dev, ptr %148, i32 0, i32 44
  tail call void @dma_unmap_page_attrs(ptr noundef %dev58.i, i32 noundef %ee.sroa.7.0.copyload.i, i32 noundef %ee.sroa.9.0.copyload.i, i32 noundef 2, i32 noundef 0) #20
  br label %if.end62.i

if.end62.i:                                       ; preds = %cleanup.i87, %if.end32.i
  %skb.1.i = phi ptr [ %call.i.i.i, %if.end32.i ], [ %ee.sroa.5.0.copyload.i, %cleanup.i87 ]
  %call64.i = tail call ptr @skb_put(ptr noundef %skb.1.i, i32 noundef %conv3.pre-phi.i) #20
  %149 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %149)
  %150 = load i64, ptr %features.i, align 16
  %and65.i = and i64 %150, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and65.i)
  %tobool66.not.i = icmp eq i64 %and65.i, 0
  br i1 %tobool66.not.i, label %if.end62.i.skge_rx_get.exit_crit_edge, label %if.then67.i

if.end62.i.skge_rx_get.exit_crit_edge:            ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %skge_rx_get.exit

if.then67.i:                                      ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #22
  %151 = tail call i16 @llvm.bswap.i16(i16 %85) #20
  %conv68.i = zext i16 %151 to i32
  %152 = getelementptr inbounds %struct.sk_buff, ptr %skb.1.i, i32 0, i32 15, i32 0, i32 5
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %conv68.i, ptr %152, align 8
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1.i, i32 0, i32 15
  %154 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %154)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %bf.clear.i = and i16 %bf.load.i, -1537
  %bf.set.i = or i16 %bf.clear.i, 1024
  store i16 %bf.set.i, ptr %ip_summed.i, align 8
  br label %skge_rx_get.exit

do.body71.i:                                      ; preds = %if.end15.i.do.body71.i_crit_edge, %bad_phy_status.exit.i.do.body71.i_crit_edge, %if.else.i.i.do.body71.i_crit_edge, %do.end.i82.do.body71.i_crit_edge
  %155 = ptrtoint ptr %msg_enable.i73 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %msg_enable.i73, align 4
  %and73.i = and i32 %156, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73.i)
  %tobool74.not.i = icmp eq i32 %and73.i, 0
  br i1 %tobool74.not.i, label %do.body71.i.do.end85.i_crit_edge, label %if.then75.i

do.body71.i.do.end85.i_crit_edge:                 ; preds = %do.body71.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end85.i

if.then75.i:                                      ; preds = %do.body71.i
  call void @__sanitizer_cov_trace_pc() #22
  %157 = ptrtoint ptr %netdev.i75 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %netdev.i75, align 4
  %159 = ptrtoint ptr %start.i76 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %start.i76, align 8
  %sub.ptr.lhs.cast79.i = ptrtoint ptr %e.0100 to i32
  %sub.ptr.rhs.cast80.i = ptrtoint ptr %160 to i32
  %sub.ptr.sub81.i = sub i32 %sub.ptr.lhs.cast79.i, %sub.ptr.rhs.cast80.i
  %sub.ptr.div82.i = sdiv exact i32 %sub.ptr.sub81.i, 20
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.12, ptr noundef %158, ptr noundef nonnull @.str.115, i32 noundef %sub.ptr.div82.i, i32 noundef %81, i32 noundef %83) #24
  br label %do.end85.i

do.end85.i:                                       ; preds = %if.then75.i, %do.body71.i.do.end85.i_crit_edge
  %161 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %add.ptr.i.i, align 128
  %chip_id.i.i = getelementptr inbounds %struct.skge_hw, ptr %162, i32 0, i32 5
  %163 = ptrtoint ptr %chip_id.i.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %chip_id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %164)
  %cmp.i208.i = icmp eq i8 %164, 10
  br i1 %cmp.i208.i, label %if.then88.i, label %if.else105.i

if.then88.i:                                      ; preds = %do.end85.i
  %and89.i = and i32 %83, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89.i)
  %tobool90.not.i = icmp eq i32 %and89.i, 0
  br i1 %tobool90.not.i, label %if.then88.i.if.end92.i_crit_edge, label %if.then91.i

if.then88.i.if.end92.i_crit_edge:                 ; preds = %if.then88.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end92.i

if.then91.i:                                      ; preds = %if.then88.i
  call void @__sanitizer_cov_trace_pc() #22
  %165 = ptrtoint ptr %rx_length_errors110.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %rx_length_errors110.i, align 8
  %inc.i = add i32 %166, 1
  store i32 %inc.i, ptr %rx_length_errors110.i, align 8
  br label %if.end92.i

if.end92.i:                                       ; preds = %if.then91.i, %if.then88.i.if.end92.i_crit_edge
  %and93.i = and i32 %83, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93.i)
  %tobool94.not.i = icmp eq i32 %and93.i, 0
  br i1 %tobool94.not.i, label %if.end92.i.if.end98.i_crit_edge, label %if.then95.i

if.end92.i.if.end98.i_crit_edge:                  ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end98.i

if.then95.i:                                      ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #22
  %167 = ptrtoint ptr %rx_frame_errors117.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %rx_frame_errors117.i, align 4
  %inc97.i = add i32 %168, 1
  store i32 %inc97.i, ptr %rx_frame_errors117.i, align 4
  br label %if.end98.i

if.end98.i:                                       ; preds = %if.then95.i, %if.end92.i.if.end98.i_crit_edge
  %and99.i = and i32 %83, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99.i)
  %tobool100.not.i = icmp eq i32 %and99.i, 0
  br i1 %tobool100.not.i, label %if.end98.i.skge_rx_get.exit.thread_crit_edge, label %if.then101.i

if.end98.i.skge_rx_get.exit.thread_crit_edge:     ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %skge_rx_get.exit.thread

if.then101.i:                                     ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #22
  %169 = ptrtoint ptr %rx_crc_errors124.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %rx_crc_errors124.i, align 8
  %inc103.i = add i32 %170, 1
  store i32 %inc103.i, ptr %rx_crc_errors124.i, align 8
  br label %skge_rx_get.exit.thread

if.else105.i:                                     ; preds = %do.end85.i
  %and106.i = and i32 %83, 2064
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106.i)
  %tobool107.not.i = icmp eq i32 %and106.i, 0
  br i1 %tobool107.not.i, label %if.else105.i.if.end112.i_crit_edge, label %if.then108.i

if.else105.i.if.end112.i_crit_edge:               ; preds = %if.else105.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end112.i

if.then108.i:                                     ; preds = %if.else105.i
  call void @__sanitizer_cov_trace_pc() #22
  %171 = ptrtoint ptr %rx_length_errors110.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %rx_length_errors110.i, align 8
  %inc111.i = add i32 %172, 1
  store i32 %inc111.i, ptr %rx_length_errors110.i, align 8
  br label %if.end112.i

if.end112.i:                                      ; preds = %if.then108.i, %if.else105.i.if.end112.i_crit_edge
  %and113.i = and i32 %83, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113.i)
  %tobool114.not.i = icmp eq i32 %and113.i, 0
  br i1 %tobool114.not.i, label %if.end112.i.if.end119.i_crit_edge, label %if.then115.i

if.end112.i.if.end119.i_crit_edge:                ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end119.i

if.then115.i:                                     ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #22
  %173 = ptrtoint ptr %rx_frame_errors117.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %rx_frame_errors117.i, align 4
  %inc118.i = add i32 %174, 1
  store i32 %inc118.i, ptr %rx_frame_errors117.i, align 4
  br label %if.end119.i

if.end119.i:                                      ; preds = %if.then115.i, %if.end112.i.if.end119.i_crit_edge
  %and120.i = and i32 %83, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120.i)
  %tobool121.not.i = icmp eq i32 %and120.i, 0
  br i1 %tobool121.not.i, label %if.end119.i.skge_rx_get.exit.thread_crit_edge, label %if.then122.i

if.end119.i.skge_rx_get.exit.thread_crit_edge:    ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %skge_rx_get.exit.thread

if.then122.i:                                     ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #22
  %175 = ptrtoint ptr %rx_crc_errors124.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %rx_crc_errors124.i, align 8
  %inc125.i = add i32 %176, 1
  store i32 %inc125.i, ptr %rx_crc_errors124.i, align 8
  br label %skge_rx_get.exit.thread

skge_rx_get.exit.thread:                          ; preds = %if.then122.i, %if.end119.i.skge_rx_get.exit.thread_crit_edge, %if.then101.i, %if.end98.i.skge_rx_get.exit.thread_crit_edge, %if.then54.i, %if.else.i.skge_rx_get.exit.thread_crit_edge, %if.then27.i.skge_rx_get.exit.thread_crit_edge
  %177 = ptrtoint ptr %rx_buf_size.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %rx_buf_size.i, align 16
  %179 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %desc, align 4
  %csum2.i210.i = getelementptr inbounds %struct.skge_rx_desc, ptr %180, i32 0, i32 6
  %181 = ptrtoint ptr %csum2.i210.i to i32
  call void @__asan_store2_noabort(i32 %181)
  store i16 0, ptr %csum2.i210.i, align 4
  %csum2_start.i211.i = getelementptr inbounds %struct.skge_rx_desc, ptr %180, i32 0, i32 8
  %182 = ptrtoint ptr %csum2_start.i211.i to i32
  call void @__asan_store2_noabort(i32 %182)
  store i16 14, ptr %csum2_start.i211.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !323
  tail call void @arm_heavy_mb() #20
  %or.i212.i = or i32 %178, -933888000
  %183 = ptrtoint ptr %180 to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %or.i212.i, ptr %180, align 4
  br label %cleanup

skge_rx_get.exit:                                 ; preds = %if.then67.i, %if.end62.i.skge_rx_get.exit_crit_edge
  %call70.i = tail call zeroext i16 @eth_type_trans(ptr noundef %skb.1.i, ptr noundef %1) #20
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1.i, i32 0, i32 15, i32 0, i32 18
  %184 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %184)
  store i16 %call70.i, ptr %protocol.i, align 8
  %tobool4.not = icmp eq ptr %skb.1.i, null
  br i1 %tobool4.not, label %skge_rx_get.exit.cleanup_crit_edge, label %if.then7, !prof !301

skge_rx_get.exit.cleanup_crit_edge:               ; preds = %skge_rx_get.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then7:                                         ; preds = %skge_rx_get.exit
  call void @__sanitizer_cov_trace_pc() #22
  %call8 = tail call i32 @napi_gro_receive(ptr noundef %napi, ptr noundef nonnull %skb.1.i) #20
  %inc = add nsw i32 %work_done.098, 1
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %skge_rx_get.exit.cleanup_crit_edge, %skge_rx_get.exit.thread
  %work_done.2 = phi i32 [ %inc, %if.then7 ], [ %work_done.098, %skge_rx_get.exit.cleanup_crit_edge ], [ %work_done.098, %skge_rx_get.exit.thread ]
  %185 = ptrtoint ptr %e.0100 to i32
  call void @__asan_load4_noabort(i32 %185)
  %e.0 = load ptr, ptr %e.0100, align 4
  %186 = ptrtoint ptr %e.0 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %e.0, align 4
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %187) #20, !srcloc !321
  %cmp = icmp slt i32 %work_done.2, %budget
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %for.body.for.end_crit_edge, %skge_tx_done.exit.for.end_crit_edge
  %work_done.0.lcssa = phi i32 [ 0, %skge_tx_done.exit.for.end_crit_edge ], [ %work_done.098, %for.body.for.end_crit_edge ], [ %work_done.2, %cleanup.for.end_crit_edge ]
  %e.0.lcssa = phi ptr [ %e.096, %skge_tx_done.exit.for.end_crit_edge ], [ %e.0100, %for.body.for.end_crit_edge ], [ %e.0, %cleanup.for.end_crit_edge ]
  %188 = ptrtoint ptr %rx_ring to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %e.0.lcssa, ptr %rx_ring, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !324
  tail call void @arm_heavy_mb() #20
  %189 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %port, align 8
  %arrayidx15 = getelementptr [2 x i32], ptr @rxqaddr, i32 0, i32 %190
  %191 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %arrayidx15, align 4
  %add17 = add i32 %192, 1076
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  tail call void @arm_heavy_mb() #20
  %193 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %3, align 4
  %add.ptr.i88 = getelementptr i8, ptr %194, i32 %add17
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i88, i8 16) #20, !srcloc !305
  call void @__sanitizer_cov_trace_cmp4(i32 %work_done.0.lcssa, i32 %budget)
  %cmp18 = icmp slt i32 %work_done.0.lcssa, %budget
  br i1 %cmp18, label %land.lhs.true, label %for.end.if.end36_crit_edge

for.end.if.end36_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end36

land.lhs.true:                                    ; preds = %for.end
  %call19 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %work_done.0.lcssa) #20
  br i1 %call19, label %if.then20, label %land.lhs.true.if.end36_crit_edge

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end36

if.then20:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  %hw_lock = getelementptr inbounds %struct.skge_hw, ptr %3, i32 0, i32 2
  %call26 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hw_lock) #20
  %195 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %port, align 8
  %arrayidx32 = getelementptr [2 x i32], ptr @napimask, i32 0, i32 %196
  %197 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %arrayidx32, align 4
  %intr_mask = getelementptr inbounds %struct.skge_hw, ptr %3, i32 0, i32 3
  %199 = ptrtoint ptr %intr_mask to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %intr_mask, align 4
  %or = or i32 %200, %198
  store i32 %or, ptr %intr_mask, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !306
  tail call void @arm_heavy_mb() #20
  %201 = tail call i32 @llvm.bswap.i32(i32 %or) #20
  %202 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %3, align 4
  %add.ptr.i89 = getelementptr i8, ptr %203, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i89, i32 %201) #20, !srcloc !307
  %204 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %3, align 4
  %add.ptr.i90 = getelementptr i8, ptr %205, i32 12
  %206 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i90) #20, !srcloc !308
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !309
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hw_lock, i32 noundef %call26) #20
  br label %if.end36

if.end36:                                         ; preds = %if.then20, %land.lhs.true.if.end36_crit_edge, %for.end.if.end36_crit_edge
  ret i32 %work_done.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xm_link_timer(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -276
  %netdev = getelementptr i8, ptr %t, i32 -272
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 128
  %port2 = getelementptr i8, ptr %t, i32 -44
  %4 = ptrtoint ptr %port2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port2, align 8
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %do.body3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

do.body3:                                         ; preds = %entry
  %phy_lock = getelementptr inbounds %struct.skge_hw, ptr %3, i32 0, i32 13
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %phy_lock) #20
  %mul.i = shl i32 %5, 12
  %or.i = add i32 %mul.i, 8320
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 %or.i
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #20, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %11 = and i16 %10, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.not = icmp eq i16 %11, 0
  br i1 %tobool.not, label %for.cond, label %do.body3.link_down_crit_edge

do.body3.link_down_crit_edge:                     ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #22
  br label %link_down

for.cond:                                         ; preds = %do.body3
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %add.ptr.i.i.1 = getelementptr i8, ptr %13, i32 %or.i
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.1) #20, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %15 = and i16 %14, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool.not.1 = icmp eq i16 %15, 0
  br i1 %tobool.not.1, label %for.cond.1, label %for.cond.link_down_crit_edge

for.cond.link_down_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #22
  br label %link_down

for.cond.1:                                       ; preds = %for.cond
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 4
  %add.ptr.i.i.2 = getelementptr i8, ptr %17, i32 %or.i
  %18 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.2) #20, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %19 = and i16 %18, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool.not.2 = icmp eq i16 %19, 0
  br i1 %tobool.not.2, label %for.cond.2, label %for.cond.1.link_down_crit_edge

for.cond.1.link_down_crit_edge:                   ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #22
  br label %link_down

for.cond.2:                                       ; preds = %for.cond.1
  %add.ptr.i.i46 = getelementptr i8, ptr %1, i32 2304
  %20 = ptrtoint ptr %add.ptr.i.i46 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i.i46, align 128
  %port2.i = getelementptr i8, ptr %1, i32 2536
  %22 = ptrtoint ptr %port2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %port2.i, align 8
  %call3.i = tail call fastcc zeroext i16 @xm_phy_read(ptr noundef %21, i32 noundef %23, i16 noundef zeroext 1) #20
  %call4.i = tail call fastcc zeroext i16 @xm_phy_read(ptr noundef %21, i32 noundef %23, i16 noundef zeroext 1) #20
  %conv.i = zext i16 %call4.i to i32
  %and.i = and i32 %conv.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #22
  tail call fastcc void @xm_link_down(ptr noundef %21, i32 noundef %23) #20
  br label %link_down

if.end.i:                                         ; preds = %for.cond.2
  %autoneg.i = getelementptr i8, ptr %1, i32 2638
  %24 = ptrtoint ptr %autoneg.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %autoneg.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %25)
  %cmp7.i = icmp eq i8 %25, 1
  br i1 %cmp7.i, label %if.then9.i, label %if.end.i.if.end61.i_crit_edge

if.end.i.if.end61.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end61.i

if.then9.i:                                       ; preds = %if.end.i
  %and11.i = and i32 %conv.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool.not.i, label %if.then9.i.link_down_crit_edge, label %if.end13.i

if.then9.i.link_down_crit_edge:                   ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %link_down

if.end13.i:                                       ; preds = %if.then9.i
  %call14.i = tail call fastcc zeroext i16 @xm_phy_read(ptr noundef %21, i32 noundef %23, i16 noundef zeroext 5) #20
  %conv15.i = zext i16 %call14.i to i32
  %and16.i = and i32 %conv15.i, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %if.end19.i, label %if.then18.i

if.then18.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void (ptr, ptr, ...) @netdev_notice(ptr noundef %1, ptr noundef nonnull @.str.35) #24
  br label %link_down

if.end19.i:                                       ; preds = %if.end13.i
  %call20.i = tail call fastcc zeroext i16 @xm_phy_read(ptr noundef %21, i32 noundef %23, i16 noundef zeroext 16) #20
  %26 = and i16 %call20.i, 96
  %and22.i = zext i16 %26 to i32
  %27 = zext i32 %and22.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.141)
  switch i32 %and22.i, label %sw.default.i [
    i32 32, label %if.end19.i.sw.epilog.i_crit_edge
    i32 64, label %sw.bb23.i
  ]

if.end19.i.sw.epilog.i_crit_edge:                 ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog.i

sw.bb23.i:                                        ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void (ptr, ptr, ...) @netdev_notice(ptr noundef %1, ptr noundef nonnull @.str.36) #24
  br label %link_down

sw.epilog.i:                                      ; preds = %sw.bb23.i, %if.end19.i.sw.epilog.i_crit_edge
  %.sink.i = phi i8 [ 0, %sw.bb23.i ], [ 1, %if.end19.i.sw.epilog.i_crit_edge ]
  %duplex24.i = getelementptr i8, ptr %1, i32 2639
  %28 = ptrtoint ptr %duplex24.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %.sink.i, ptr %duplex24.i, align 1
  %flow_control.i = getelementptr i8, ptr %1, i32 2628
  %29 = ptrtoint ptr %flow_control.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flow_control.i, align 4
  %31 = add i32 %30, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %31)
  %switch.i = icmp ult i32 %31, -2
  %and31.i = and i32 %conv15.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool32.not.i = icmp eq i32 %and31.i, 0
  %or.cond99.i = select i1 %switch.i, i1 true, i1 %tobool32.not.i
  br i1 %or.cond99.i, label %if.else.i, label %if.then33.i

if.then33.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #22
  %flow_status.i = getelementptr i8, ptr %1, i32 2632
  %32 = ptrtoint ptr %flow_status.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 4, ptr %flow_status.i, align 8
  br label %if.end59.i

if.else.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %30)
  %cmp35.i = icmp eq i32 %30, 4
  %and39.i = and i32 %conv15.i, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %and39.i)
  %cmp40.i = icmp eq i32 %and39.i, 256
  %or.cond.i = select i1 %cmp35.i, i1 %cmp40.i, i1 false
  br i1 %or.cond.i, label %if.then42.i, label %if.else44.i

if.then42.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #22
  %flow_status43.i = getelementptr i8, ptr %1, i32 2632
  %33 = ptrtoint ptr %flow_status43.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 2, ptr %flow_status43.i, align 8
  br label %if.end59.i

if.else44.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %30)
  %cmp46.i = icmp eq i32 %30, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 384, i32 %and39.i)
  %cmp51.i = icmp eq i32 %and39.i, 384
  %or.cond98.i = select i1 %cmp46.i, i1 %cmp51.i, i1 false
  %flow_status54.i = getelementptr i8, ptr %1, i32 2632
  br i1 %or.cond98.i, label %if.then53.i, label %if.else55.i

if.then53.i:                                      ; preds = %if.else44.i
  call void @__sanitizer_cov_trace_pc() #22
  %34 = ptrtoint ptr %flow_status54.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 3, ptr %flow_status54.i, align 8
  br label %if.end59.i

if.else55.i:                                      ; preds = %if.else44.i
  call void @__sanitizer_cov_trace_pc() #22
  %35 = ptrtoint ptr %flow_status54.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %flow_status54.i, align 8
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.else55.i, %if.then53.i, %if.then42.i, %if.then33.i
  %speed.i = getelementptr i8, ptr %1, i32 2640
  %36 = ptrtoint ptr %speed.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 1000, ptr %speed.i, align 16
  br label %if.end61.i

if.end61.i:                                       ; preds = %if.end59.i, %if.end.i.if.end61.i_crit_edge
  %37 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %state.i, align 4
  %39 = and i32 %38, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i.i = icmp eq i32 %39, 0
  br i1 %tobool.not.i.i, label %if.end61.i.if.then17_crit_edge, label %if.then63.i

if.end61.i.if.then17_crit_edge:                   ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then17

if.then63.i:                                      ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call fastcc void @genesis_link_up(ptr noundef %add.ptr.i.i46) #20
  br label %if.then17

if.then17:                                        ; preds = %if.then63.i, %if.end61.i.if.then17_crit_edge
  %add.i48 = add i32 %mul.i, 8192
  %or.i49 = or i32 %add.i48, 136
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %3, align 4
  %add.ptr.i.i50 = getelementptr i8, ptr %41, i32 %or.i49
  %42 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i50) #20, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %43 = and i16 %42, -9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %44 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %3, align 4
  %add.ptr.i.i54 = getelementptr i8, ptr %45, i32 %or.i49
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i54, i16 %43) #20, !srcloc !311
  %or.i57 = or i32 %add.i48, 144
  %46 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %3, align 4
  %add.ptr.i.i58 = getelementptr i8, ptr %47, i32 %or.i57
  %48 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i58) #20, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  br label %if.end25

link_down:                                        ; preds = %sw.default.i, %if.then18.i, %if.then9.i.link_down_crit_edge, %if.then.i, %for.cond.1.link_down_crit_edge, %for.cond.link_down_crit_edge, %do.body3.link_down_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %49 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %49, 100
  %call23 = tail call i32 @round_jiffies(i32 noundef %add) #20
  %call24 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %call23) #20
  br label %if.end25

if.end25:                                         ; preds = %link_down, %if.then17
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %phy_lock, i32 noundef %call6) #20
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @skge_down(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 128
  %port2 = getelementptr i8, ptr %dev, i32 2536
  %2 = ptrtoint ptr %port2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port2, align 8
  %mem = getelementptr i8, ptr %dev, i32 2648
  %4 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mem, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

do.body:                                          ; preds = %entry
  %msg_enable = getelementptr i8, ptr %dev, i32 2540
  %6 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msg_enable, align 4
  %and = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %do.body.do.end_crit_edge, label %if.then4

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  %netdev = getelementptr i8, ptr %dev, i32 2308
  %8 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %9, ptr noundef nonnull @.str.107) #24
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body.do.end_crit_edge
  tail call fastcc void @local_bh_disable() #20
  %10 = tail call i32 @llvm.read_register.i32(metadata !289) #20
  %and.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i to ptr
  %cpu1.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu1.i, align 4
  %tx_global_lock.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 108
  tail call void @_raw_spin_lock(ptr noundef %tx_global_lock.i) #20
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 104
  %14 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp13.not.i = icmp eq i32 %15, 0
  br i1 %cmp13.not.i, label %do.end.netif_tx_disable.exit_crit_edge, label %for.body.lr.ph.i

do.end.netif_tx_disable.exit_crit_edge:           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %netif_tx_disable.exit

for.body.lr.ph.i:                                 ; preds = %do.end
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %16 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %_tx.i.i, align 128
  %_xmit_lock.i.i = getelementptr %struct.netdev_queue, ptr %17, i32 %i.014.i, i32 10
  tail call void @_raw_spin_lock(ptr noundef %_xmit_lock.i.i) #20
  %xmit_lock_owner.i.i = getelementptr %struct.netdev_queue, ptr %17, i32 %i.014.i, i32 11
  %18 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 %13, ptr %xmit_lock_owner.i.i, align 4
  %state.i.i = getelementptr %struct.netdev_queue, ptr %17, i32 %i.014.i, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #20
  %19 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 -1, ptr %xmit_lock_owner.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %_xmit_lock.i.i) #20
  %inc.i = add nuw i32 %i.014.i, 1
  %20 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %21
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.netif_tx_disable.exit_crit_edge

for.body.i.netif_tx_disable.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %netif_tx_disable.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i

netif_tx_disable.exit:                            ; preds = %for.body.i.netif_tx_disable.exit_crit_edge, %do.end.netif_tx_disable.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %tx_global_lock.i) #20
  tail call fastcc void @local_bh_enable() #20
  %chip_id.i = getelementptr inbounds %struct.skge_hw, ptr %1, i32 0, i32 5
  %22 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %chip_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %23)
  %cmp.i132 = icmp eq i8 %23, 10
  br i1 %cmp.i132, label %land.lhs.true, label %netif_tx_disable.exit.if.end10_crit_edge

netif_tx_disable.exit.if.end10_crit_edge:         ; preds = %netif_tx_disable.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end10

land.lhs.true:                                    ; preds = %netif_tx_disable.exit
  %phy_type = getelementptr inbounds %struct.skge_hw, ptr %1, i32 0, i32 9
  %24 = ptrtoint ptr %phy_type to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %phy_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp = icmp eq i8 %25, 0
  br i1 %cmp, label %if.then8, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end10

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  %link_timer = getelementptr i8, ptr %dev, i32 2580
  %call9 = tail call i32 @del_timer_sync(ptr noundef %link_timer) #20
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %land.lhs.true.if.end10_crit_edge, %netif_tx_disable.exit.if.end10_crit_edge
  %napi = getelementptr i8, ptr %dev, i32 2312
  tail call void @napi_disable(ptr noundef %napi) #20
  tail call void @netif_carrier_off(ptr noundef %dev) #20
  %hw_lock = getelementptr inbounds %struct.skge_hw, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %hw_lock) #20
  %arrayidx = getelementptr [2 x i32], ptr @portmask, i32 0, i32 %3
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx, align 4
  %neg = xor i32 %27, -1
  %intr_mask = getelementptr inbounds %struct.skge_hw, ptr %1, i32 0, i32 3
  %28 = ptrtoint ptr %intr_mask to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %intr_mask, align 4
  %and11 = and i32 %29, %neg
  store i32 %and11, ptr %intr_mask, align 4
  %ports = getelementptr inbounds %struct.skge_hw, ptr %1, i32 0, i32 8
  %30 = ptrtoint ptr %ports to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %ports, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %31)
  %cmp13 = icmp eq i8 %31, 1
  %spec.select = select i1 %cmp13, i32 0, i32 %and11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !306
  tail call void @arm_heavy_mb() #20
  %32 = tail call i32 @llvm.bswap.i32(i32 %spec.select) #20
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  %add.ptr.i133 = getelementptr i8, ptr %34, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i133, i32 %32) #20, !srcloc !307
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %add.ptr.i134 = getelementptr i8, ptr %36, i32 12
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i134) #20, !srcloc !308
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !309
  tail call void @_raw_spin_unlock_irq(ptr noundef %hw_lock) #20
  %38 = ptrtoint ptr %ports to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %ports, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %39)
  %cmp20 = icmp eq i8 %39, 1
  br i1 %cmp20, label %if.then22, label %if.end10.if.end24_crit_edge

if.end10.if.end24_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end24

if.then22:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #22
  %pdev = getelementptr inbounds %struct.skge_hw, ptr %1, i32 0, i32 1
  %40 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pdev, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 46
  %42 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %irq, align 4
  %call23 = tail call ptr @free_irq(i32 noundef %43, ptr noundef %1) #20
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end10.if.end24_crit_edge
  %44 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %add.ptr.i, align 128
  %46 = ptrtoint ptr %port2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %port2, align 8
  %shl = shl i32 %47, 7
  %add = add i32 %shl, 3132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  tail call void @arm_heavy_mb() #20
  %48 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %45, align 4
  %add.ptr.i135 = getelementptr i8, ptr %49, i32 %add
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i135, i8 1) #20, !srcloc !305
  %50 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %chip_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %51)
  %cmp.i137 = icmp eq i8 %51, 10
  %52 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %add.ptr.i, align 128
  %54 = ptrtoint ptr %port2 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %port2, align 8
  br i1 %cmp.i137, label %if.then28, label %if.else

if.then28:                                        ; preds = %if.end24
  %mul.i.i = shl i32 %55, 12
  %add.i.i = add i32 %mul.i.i, 8192
  %56 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %53, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %57, i32 %add.i.i
  %58 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i) #20, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %59 = and i16 %58, -769
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %60 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %53, align 4
  %add.ptr.i.i65.i = getelementptr i8, ptr %61, i32 %add.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i65.i, i16 %59) #20, !srcloc !311
  tail call fastcc void @genesis_reset(ptr noundef %53, i32 noundef %55) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp.i138 = icmp eq i32 %55, 0
  %conv5.i = select i1 %cmp.i138, i16 16, i16 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %62 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %53, align 4
  %add.ptr.i.i = getelementptr i8, ptr %63, i32 496
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 %conv5.i) #20, !srcloc !311
  %shl.i = shl i32 %55, 7
  %add.i = add i32 %shl.i, 3352
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %64 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %53, align 4
  %add.ptr.i66.i = getelementptr i8, ptr %65, i32 %add.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i66.i, i16 512) #20, !srcloc !311
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.then28
  %retries.0.i = phi i32 [ 1000, %if.then28 ], [ %dec.i, %do.body.i.do.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %66 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %53, align 4
  %add.ptr.i67.i = getelementptr i8, ptr %67, i32 %add.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i67.i, i16 256) #20, !srcloc !311
  %68 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %53, align 4
  %add.ptr.i68.i = getelementptr i8, ptr %69, i32 %add.i
  %70 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i68.i) #20, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %71 = and i16 %70, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %71)
  %tobool.not.i = icmp eq i16 %71, 0
  %dec.i = add nsw i32 %retries.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp13.not.i139 = icmp eq i32 %dec.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %cmp13.not.i139
  br i1 %or.cond.i, label %do.end.i, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body.i

do.end.i:                                         ; preds = %do.body.i
  %phy_type.i = getelementptr inbounds %struct.skge_hw, ptr %53, i32 0, i32 9
  %72 = ptrtoint ptr %phy_type.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %phy_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %cmp16.not.i = icmp eq i8 %73, 0
  br i1 %cmp16.not.i, label %do.end.i.genesis_stop.exit_crit_edge, label %if.then18.i

do.end.i.genesis_stop.exit_crit_edge:             ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %genesis_stop.exit

if.then18.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #22
  %74 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %53, align 4
  %add.ptr.i69.i = getelementptr i8, ptr %75, i32 348
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i69.i) #20, !srcloc !308
  %77 = tail call i32 @llvm.bswap.i32(i32 %76) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !309
  %or.i = and i32 %77, -65538
  %and23.i = or i32 %or.i, 65536
  %or24.i = and i32 %77, -262149
  %and25.i = or i32 %or24.i, 262144
  %reg.0.i = select i1 %cmp.i138, i32 %and23.i, i32 %and25.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !306
  tail call void @arm_heavy_mb() #20
  %78 = tail call i32 @llvm.bswap.i32(i32 %reg.0.i) #20
  %79 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %53, align 4
  %add.ptr.i70.i = getelementptr i8, ptr %80, i32 348
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i70.i, i32 %78) #20, !srcloc !307
  %81 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %53, align 4
  %add.ptr.i71.i = getelementptr i8, ptr %82, i32 348
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i71.i) #20, !srcloc !308
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !309
  br label %genesis_stop.exit

genesis_stop.exit:                                ; preds = %if.then18.i, %do.end.i.genesis_stop.exit_crit_edge
  %84 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %53, align 4
  %add.ptr.i.i74.i = getelementptr i8, ptr %85, i32 %add.i.i
  %86 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i74.i) #20, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %87 = and i16 %86, -769
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %88 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %53, align 4
  %add.ptr.i.i77.i = getelementptr i8, ptr %89, i32 %add.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i77.i, i16 %87) #20, !srcloc !311
  %90 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %53, align 4
  %add.ptr.i.i80.i = getelementptr i8, ptr %91, i32 %add.i.i
  %92 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i80.i) #20, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  br label %if.end29

if.else:                                          ; preds = %if.end24
  %shl.i141 = shl i32 %55, 7
  %add.i142 = add i32 %shl.i141, 3852
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  tail call void @arm_heavy_mb() #20
  %93 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %53, align 4
  %add.ptr.i.i143 = getelementptr i8, ptr %94, i32 %add.i142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i143, i8 0) #20, !srcloc !305
  tail call fastcc void @yukon_reset(ptr noundef %53, i32 noundef %55) #20
  %mul.i.i144 = shl i32 %55, 12
  %add1.i.i = add i32 %mul.i.i144, 10244
  %95 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %53, align 4
  %add.ptr.i.i.i145 = getelementptr i8, ptr %96, i32 %add1.i.i
  %97 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i145) #20, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %98 = and i16 %97, -25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %99 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %53, align 4
  %add.ptr.i.i27.i = getelementptr i8, ptr %100, i32 %add1.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i27.i, i16 %98) #20, !srcloc !311
  %101 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %53, align 4
  %add.ptr.i.i31.i = getelementptr i8, ptr %102, i32 %add1.i.i
  %103 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i31.i) #20, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %phy_addr.i.i.i.i = getelementptr inbounds %struct.skge_hw, ptr %53, i32 0, i32 12
  %104 = ptrtoint ptr %phy_addr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %phy_addr.i.i.i.i, align 4
  %shl.i.i.i.i = shl i16 %105, 11
  %or4.i.i.i.i = or i16 %shl.i.i.i.i, 1056
  %add1.i.i.i.i.i = add i32 %mul.i.i144, 10368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %106 = tail call i16 @llvm.bswap.i16(i16 %or4.i.i.i.i) #20
  %107 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %53, align 4
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %108, i32 %add1.i.i.i.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i.i.i.i, i16 %106) #20, !srcloc !311
  br label %for.body.i.i.i.i

for.cond.i.i.i.i:                                 ; preds = %for.body.i.i.i.i
  %inc.i.i.i.i = add nuw nsw i32 %i.024.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %inc.i.i.i.i, 1000
  br i1 %exitcond.not.i.i.i.i, label %do.end.i.i.i, label %for.cond.i.i.i.i.for.body.i.i.i.i_crit_edge

for.cond.i.i.i.i.for.body.i.i.i.i_crit_edge:      ; preds = %for.cond.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.cond.i.i.i.i.for.body.i.i.i.i_crit_edge, %if.else
  %i.024.i.i.i.i = phi i32 [ 0, %if.else ], [ %inc.i.i.i.i, %for.cond.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %109 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %109(i32 noundef 214748) #20
  %110 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %53, align 4
  %add.ptr.i.i19.i.i.i.i = getelementptr i8, ptr %111, i32 %add1.i.i.i.i.i
  %112 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i19.i.i.i.i) #20, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %113 = and i16 %112, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %113)
  %tobool.not.i.i.i.i = icmp eq i16 %113, 0
  br i1 %tobool.not.i.i.i.i, label %for.cond.i.i.i.i, label %__gm_phy_read.exit.thread.i.i.i

__gm_phy_read.exit.thread.i.i.i:                  ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %add1.i22.i.i.i.i = add i32 %mul.i.i144, 10372
  %114 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %53, align 4
  %add.ptr.i.i23.i.i.i.i = getelementptr i8, ptr %115, i32 %add1.i22.i.i.i.i
  %116 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i23.i.i.i.i) #20, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %117 = or i16 %116, 512
  %118 = tail call i16 @llvm.bswap.i16(i16 %117) #20
  br label %gm_phy_read.exit.i.i

do.end.i.i.i:                                     ; preds = %for.cond.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %arrayidx.i.i.i = getelementptr %struct.skge_hw, ptr %53, i32 0, i32 4, i32 %55
  %119 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %arrayidx.i.i.i, align 4
  %call1.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %120) #24
  br label %gm_phy_read.exit.i.i

gm_phy_read.exit.i.i:                             ; preds = %do.end.i.i.i, %__gm_phy_read.exit.thread.i.i.i
  %v.07.i.i.i = phi i16 [ %118, %__gm_phy_read.exit.thread.i.i.i ], [ 2, %do.end.i.i.i ]
  %call2.i.i = tail call fastcc i32 @gm_phy_write(ptr noundef %53, i32 noundef %55, i16 noundef zeroext 16, i16 noundef zeroext %v.07.i.i.i) #20
  %121 = ptrtoint ptr %phy_addr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %phy_addr.i.i.i.i, align 4
  %shl.i.i29.i.i = shl i16 %122, 11
  %or4.i.i30.i.i = or i16 %shl.i.i29.i.i, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %123 = tail call i16 @llvm.bswap.i16(i16 %or4.i.i30.i.i) #20
  %124 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %53, align 4
  %add.ptr.i.i.i.i33.i.i = getelementptr i8, ptr %125, i32 %add1.i.i.i.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i.i33.i.i, i16 %123) #20, !srcloc !311
  br label %for.body.i.i40.i.i

for.cond.i.i36.i.i:                               ; preds = %for.body.i.i40.i.i
  %inc.i.i34.i.i = add nuw nsw i32 %i.024.i.i37.i.i, 1
  %exitcond.not.i.i35.i.i = icmp eq i32 %inc.i.i34.i.i, 1000
  br i1 %exitcond.not.i.i35.i.i, label %do.end.i46.i.i, label %for.cond.i.i36.i.i.for.body.i.i40.i.i_crit_edge

for.cond.i.i36.i.i.for.body.i.i40.i.i_crit_edge:  ; preds = %for.cond.i.i36.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i.i40.i.i

for.body.i.i40.i.i:                               ; preds = %for.cond.i.i36.i.i.for.body.i.i40.i.i_crit_edge, %gm_phy_read.exit.i.i
  %i.024.i.i37.i.i = phi i32 [ 0, %gm_phy_read.exit.i.i ], [ %inc.i.i34.i.i, %for.cond.i.i36.i.i.for.body.i.i40.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %126 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %126(i32 noundef 214748) #20
  %127 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %53, align 4
  %add.ptr.i.i19.i.i38.i.i = getelementptr i8, ptr %128, i32 %add1.i.i.i.i.i
  %129 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i19.i.i38.i.i) #20, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %130 = and i16 %129, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %130)
  %tobool.not.i.i39.i.i = icmp eq i16 %130, 0
  br i1 %tobool.not.i.i39.i.i, label %for.cond.i.i36.i.i, label %__gm_phy_read.exit.thread.i43.i.i

__gm_phy_read.exit.thread.i43.i.i:                ; preds = %for.body.i.i40.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %add1.i22.i.i41.i.i = add i32 %mul.i.i144, 10372
  %131 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %53, align 4
  %add.ptr.i.i23.i.i42.i.i = getelementptr i8, ptr %132, i32 %add1.i22.i.i41.i.i
  %133 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i23.i.i42.i.i) #20, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %134 = or i16 %133, 128
  %135 = tail call i16 @llvm.bswap.i16(i16 %134) #20
  br label %gm_phy_read.exit48.i.i

do.end.i46.i.i:                                   ; preds = %for.cond.i.i36.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %arrayidx.i44.i.i = getelementptr %struct.skge_hw, ptr %53, i32 0, i32 4, i32 %55
  %136 = ptrtoint ptr %arrayidx.i44.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %arrayidx.i44.i.i, align 4
  %call1.i45.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %137) #24
  br label %gm_phy_read.exit48.i.i

gm_phy_read.exit48.i.i:                           ; preds = %do.end.i46.i.i, %__gm_phy_read.exit.thread.i43.i.i
  %v.07.i47.i.i = phi i16 [ %135, %__gm_phy_read.exit.thread.i43.i.i ], [ -32768, %do.end.i46.i.i ]
  %call7.i.i = tail call fastcc i32 @gm_phy_write(ptr noundef %53, i32 noundef %55, i16 noundef zeroext 0, i16 noundef zeroext %v.07.i47.i.i) #20
  %138 = ptrtoint ptr %phy_addr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %phy_addr.i.i.i.i, align 4
  %shl.i.i50.i.i = shl i16 %139, 11
  %or4.i.i51.i.i = or i16 %shl.i.i50.i.i, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %140 = tail call i16 @llvm.bswap.i16(i16 %or4.i.i51.i.i) #20
  %141 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %53, align 4
  %add.ptr.i.i.i.i54.i.i = getelementptr i8, ptr %142, i32 %add1.i.i.i.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i.i54.i.i, i16 %140) #20, !srcloc !311
  br label %for.body.i.i61.i.i

for.cond.i.i57.i.i:                               ; preds = %for.body.i.i61.i.i
  %inc.i.i55.i.i = add nuw nsw i32 %i.024.i.i58.i.i, 1
  %exitcond.not.i.i56.i.i = icmp eq i32 %inc.i.i55.i.i, 1000
  br i1 %exitcond.not.i.i56.i.i, label %do.end.i67.i.i, label %for.cond.i.i57.i.i.for.body.i.i61.i.i_crit_edge

for.cond.i.i57.i.i.for.body.i.i61.i.i_crit_edge:  ; preds = %for.cond.i.i57.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i.i61.i.i

for.body.i.i61.i.i:                               ; preds = %for.cond.i.i57.i.i.for.body.i.i61.i.i_crit_edge, %gm_phy_read.exit48.i.i
  %i.024.i.i58.i.i = phi i32 [ 0, %gm_phy_read.exit48.i.i ], [ %inc.i.i55.i.i, %for.cond.i.i57.i.i.for.body.i.i61.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %143 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %143(i32 noundef 214748) #20
  %144 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %53, align 4
  %add.ptr.i.i19.i.i59.i.i = getelementptr i8, ptr %145, i32 %add1.i.i.i.i.i
  %146 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i19.i.i59.i.i) #20, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %147 = and i16 %146, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %147)
  %tobool.not.i.i60.i.i = icmp eq i16 %147, 0
  br i1 %tobool.not.i.i60.i.i, label %for.cond.i.i57.i.i, label %__gm_phy_read.exit.thread.i64.i.i

__gm_phy_read.exit.thread.i64.i.i:                ; preds = %for.body.i.i61.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %add1.i22.i.i62.i.i = add i32 %mul.i.i144, 10372
  %148 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %53, align 4
  %add.ptr.i.i23.i.i63.i.i = getelementptr i8, ptr %149, i32 %add1.i22.i.i62.i.i
  %150 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i23.i.i63.i.i) #20, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %151 = or i16 %150, 8
  %152 = tail call i16 @llvm.bswap.i16(i16 %151) #20
  br label %yukon_stop.exit

do.end.i67.i.i:                                   ; preds = %for.cond.i.i57.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %arrayidx.i65.i.i = getelementptr %struct.skge_hw, ptr %53, i32 0, i32 4, i32 %55
  %153 = ptrtoint ptr %arrayidx.i65.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %arrayidx.i65.i.i, align 4
  %call1.i66.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %154) #24
  br label %yukon_stop.exit

yukon_stop.exit:                                  ; preds = %do.end.i67.i.i, %__gm_phy_read.exit.thread.i64.i.i
  %v.07.i68.i.i = phi i16 [ %152, %__gm_phy_read.exit.thread.i64.i.i ], [ 2048, %do.end.i67.i.i ]
  %call12.i.i = tail call fastcc i32 @gm_phy_write(ptr noundef %53, i32 noundef %55, i16 noundef zeroext 0, i16 noundef zeroext %v.07.i68.i.i) #20
  %add6.i = add i32 %shl.i141, 3844
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  tail call void @arm_heavy_mb() #20
  %155 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %53, align 4
  %add.ptr.i32.i = getelementptr i8, ptr %156, i32 %add6.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i32.i, i8 1) #20, !srcloc !305
  %add8.i = add i32 %shl.i141, 3840
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  tail call void @arm_heavy_mb() #20
  %157 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %53, align 4
  %add.ptr.i33.i = getelementptr i8, ptr %158, i32 %add8.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i33.i, i8 1) #20, !srcloc !305
  br label %if.end29

if.end29:                                         ; preds = %yukon_stop.exit, %genesis_stop.exit
  %arrayidx30 = getelementptr [2 x i32], ptr @txqaddr, i32 0, i32 %3
  %159 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %arrayidx30, align 4
  %add32 = add i32 %160, 1076
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  tail call void @arm_heavy_mb() #20
  %161 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %1, align 4
  %add.ptr.i146 = getelementptr i8, ptr %162, i32 %add32
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i146, i8 32) #20, !srcloc !305
  %add34 = add i32 %160, 2088
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !306
  tail call void @arm_heavy_mb() #20
  %163 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %1, align 4
  %add.ptr.i147 = getelementptr i8, ptr %164, i32 %add34
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i147, i32 83886080) #20, !srcloc !307
  %shl35 = shl i32 %3, 7
  %add36 = add i32 %shl35, 528
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  tail call void @arm_heavy_mb() #20
  %165 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %1, align 4
  %add.ptr.i148 = getelementptr i8, ptr %166, i32 %add36
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i148, i8 84) #20, !srcloc !305
  %add38 = add i32 %shl35, 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !306
  tail call void @arm_heavy_mb() #20
  %167 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %1, align 4
  %add.ptr.i149 = getelementptr i8, ptr %168, i32 %add38
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i149, i32 0) #20, !srcloc !307
  %add40 = add i32 %shl35, 520
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !306
  tail call void @arm_heavy_mb() #20
  %169 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %1, align 4
  %add.ptr.i150 = getelementptr i8, ptr %170, i32 %add40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i150, i32 0) #20, !srcloc !307
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !306
  tail call void @arm_heavy_mb() #20
  %171 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %1, align 4
  %add.ptr.i151 = getelementptr i8, ptr %172, i32 %add32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i151, i32 5575936) #20, !srcloc !307
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !306
  tail call void @arm_heavy_mb() #20
  %173 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %1, align 4
  %add.ptr.i152 = getelementptr i8, ptr %174, i32 %add34
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i152, i32 16777216) #20, !srcloc !307
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp46 = icmp eq i32 %3, 0
  %add49 = select i1 %cmp46, i32 2728, i32 2984
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  tail call void @arm_heavy_mb() #20
  %175 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %1, align 4
  %add.ptr.i153 = getelementptr i8, ptr %176, i32 %add49
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i153, i8 1) #20, !srcloc !305
  %arrayidx.i = getelementptr [2 x i32], ptr @rxqaddr, i32 0, i32 %3
  %177 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %arrayidx.i, align 4
  %add1.i = add i32 %178, 1076
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  tail call void @arm_heavy_mb() #20
  %179 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %1, align 4
  %add.ptr.i.i154 = getelementptr i8, ptr %180, i32 %add1.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i154, i8 32) #20, !srcloc !305
  %add2.i = select i1 %cmp46, i32 2088, i32 2216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !306
  tail call void @arm_heavy_mb() #20
  %181 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %1, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %182, i32 %add2.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 83886080) #20, !srcloc !307
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !306
  tail call void @arm_heavy_mb() #20
  %183 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %1, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %184, i32 %add1.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 5575936) #20, !srcloc !307
  %185 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %chip_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %186)
  %cmp.i157 = icmp eq i8 %186, 10
  br i1 %cmp.i157, label %if.then51, label %if.else56

if.then51:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #22
  %add53 = add i32 %shl35, 3356
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  tail call void @arm_heavy_mb() #20
  %187 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %1, align 4
  %add.ptr.i158 = getelementptr i8, ptr %188, i32 %add53
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i158, i8 1) #20, !srcloc !305
  %add55 = add i32 %shl35, 3100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  tail call void @arm_heavy_mb() #20
  %189 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %1, align 4
  %add.ptr.i159 = getelementptr i8, ptr %190, i32 %add55
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i159, i8 1) #20, !srcloc !305
  br label %if.end61

if.else56:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #22
  %add58 = add i32 %shl35, 3144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  tail call void @arm_heavy_mb() #20
  %191 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %1, align 4
  %add.ptr.i160 = getelementptr i8, ptr %192, i32 %add58
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i160, i8 1) #20, !srcloc !305
  %add60 = add i32 %shl35, 3400
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  tail call void @arm_heavy_mb() #20
  %193 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %1, align 4
  %add.ptr.i161 = getelementptr i8, ptr %194, i32 %add60
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i161, i8 1) #20, !srcloc !305
  br label %if.end61

if.end61:                                         ; preds = %if.else56, %if.then51
  tail call fastcc void @skge_led(ptr noundef %add.ptr.i, i32 noundef 0)
  tail call fastcc void @local_bh_disable() #20
  tail call void @netif_tx_lock(ptr noundef %dev) #20
  tail call fastcc void @skge_tx_clean(ptr noundef %dev)
  tail call void @netif_tx_unlock(ptr noundef %dev) #20
  tail call fastcc void @local_bh_enable() #20
  %195 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %add.ptr.i, align 128
  %start.i = getelementptr i8, ptr %dev, i32 2568
  %197 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %start.i, align 4
  %pdev.i = getelementptr inbounds %struct.skge_hw, ptr %196, i32 0, i32 1
  br label %do.body.i163

do.body.i163:                                     ; preds = %if.end.i.do.body.i163_crit_edge, %if.end61
  %e.0.i = phi ptr [ %198, %if.end61 ], [ %214, %if.end.i.do.body.i163_crit_edge ]
  %desc.i = getelementptr inbounds %struct.skge_element, ptr %e.0.i, i32 0, i32 1
  %199 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %desc.i, align 4
  %201 = ptrtoint ptr %200 to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 0, ptr %200, align 4
  %skb.i = getelementptr inbounds %struct.skge_element, ptr %e.0.i, i32 0, i32 2
  %202 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %skb.i, align 4
  %tobool.not.i162 = icmp eq ptr %203, null
  br i1 %tobool.not.i162, label %do.body.i163.if.end.i_crit_edge, label %if.then.i

do.body.i163.if.end.i_crit_edge:                  ; preds = %do.body.i163
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i

if.then.i:                                        ; preds = %do.body.i163
  call void @__sanitizer_cov_trace_pc() #22
  %204 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %205, i32 0, i32 44
  %mapaddr.i = getelementptr inbounds %struct.skge_element, ptr %e.0.i, i32 0, i32 3
  %206 = ptrtoint ptr %mapaddr.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %mapaddr.i, align 4
  %maplen.i = getelementptr inbounds %struct.skge_element, ptr %e.0.i, i32 0, i32 4
  %208 = ptrtoint ptr %maplen.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %maplen.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %207, i32 noundef %209, i32 noundef 2, i32 noundef 0) #20
  %210 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %skb.i, align 4
  tail call void @consume_skb(ptr noundef %211) #20
  %212 = ptrtoint ptr %skb.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store ptr null, ptr %skb.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %do.body.i163.if.end.i_crit_edge
  %213 = ptrtoint ptr %e.0.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %e.0.i, align 4
  %215 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %start.i, align 4
  %cmp.not.i = icmp eq ptr %214, %216
  br i1 %cmp.not.i, label %skge_rx_clean.exit, label %if.end.i.do.body.i163_crit_edge

if.end.i.do.body.i163_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body.i163

skge_rx_clean.exit:                               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @kfree(ptr noundef %214) #20
  %start62 = getelementptr i8, ptr %dev, i32 2552
  %217 = ptrtoint ptr %start62 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %start62, align 8
  tail call void @kfree(ptr noundef %218) #20
  %pdev63 = getelementptr inbounds %struct.skge_hw, ptr %1, i32 0, i32 1
  %219 = ptrtoint ptr %pdev63 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %pdev63, align 4
  %dev64 = getelementptr inbounds %struct.pci_dev, ptr %220, i32 0, i32 44
  %mem_size = getelementptr i8, ptr %dev, i32 2656
  %221 = ptrtoint ptr %mem_size to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %mem_size, align 32
  %223 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %mem, align 8
  %dma = getelementptr i8, ptr %dev, i32 2652
  %225 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev64, i32 noundef %222, ptr noundef %224, i32 noundef %226, i32 noundef 0) #20
  %227 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %227)
  store ptr null, ptr %mem, align 8
  br label %cleanup

cleanup:                                          ; preds = %skge_rx_clean.exit, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @skge_xmit_frame(ptr noundef %skb, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 128
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 59, i32 %3)
  %cmp.i = icmp ugt i32 %3, 59
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %skb_padto.exit, !prof !299

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

skb_padto.exit:                                   ; preds = %entry
  %sub.i = sub nuw nsw i32 60, %3
  %call.i.i = tail call i32 @__skb_pad(ptr noundef %skb, i32 noundef %sub.i, i1 noundef zeroext true) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %skb_padto.exit.if.end_crit_edge, label %skb_padto.exit.cleanup200_crit_edge

skb_padto.exit.cleanup200_crit_edge:              ; preds = %skb_padto.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup200

skb_padto.exit.if.end_crit_edge:                  ; preds = %skb_padto.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.end:                                           ; preds = %skb_padto.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %tx_ring = getelementptr i8, ptr %dev, i32 2544
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !318
  %4 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_ring, align 4
  %to_use.i = getelementptr i8, ptr %dev, i32 2548
  %6 = ptrtoint ptr %to_use.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %to_use.i, align 4
  %cmp.i292 = icmp ugt ptr %5, %7
  br i1 %cmp.i292, label %if.end.skge_avail.exit_crit_edge, label %cond.false.i

if.end.skge_avail.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %skge_avail.exit

cond.false.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %count.i = getelementptr i8, ptr %dev, i32 2556
  %8 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count.i, align 4
  br label %skge_avail.exit

skge_avail.exit:                                  ; preds = %cond.false.i, %if.end.skge_avail.exit_crit_edge
  %cond.i = phi i32 [ %9, %cond.false.i ], [ 0, %if.end.skge_avail.exit_crit_edge ]
  %sub.ptr.lhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 20
  %add.i = add nsw i32 %sub.ptr.div.i, -1
  %sub.i293 = add i32 %add.i, %cond.i
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %10 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %nr_frags, align 2
  %conv = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i293, i32 %conv)
  %cmp.not = icmp sgt i32 %sub.i293, %conv
  br i1 %cmp.not, label %if.end9, label %skge_avail.exit.cleanup200_crit_edge, !prof !299

skge_avail.exit.cleanup200_crit_edge:             ; preds = %skge_avail.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup200

if.end9:                                          ; preds = %skge_avail.exit
  %14 = ptrtoint ptr %to_use.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %to_use.i, align 4
  %desc = getelementptr inbounds %struct.skge_element, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %desc, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %tobool12.not = icmp sgt i32 %19, -1
  br i1 %tobool12.not, label %do.end26, label %do.body20, !prof !299

do.body20:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #22
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/marvell/skge.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2760, 0\0A.popsection", ""() #20, !srcloc !325
  unreachable

do.end26:                                         ; preds = %if.end9
  %skb27 = getelementptr inbounds %struct.skge_element, ptr %15, i32 0, i32 2
  %20 = ptrtoint ptr %skb27 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %skb, ptr %skb27, align 4
  %21 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len1.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %23 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %data_len.i, align 8
  %sub.i294 = sub i32 %22, %24
  %pdev = getelementptr inbounds %struct.skge_hw, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdev, align 4
  %dev29 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %27 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %28) #20
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %do.end26
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !299

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev29) #20
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44, i32 3
  %29 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #22
  %31 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev29, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %32, %if.end.i.i ], [ %30, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.11, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #20
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @debug_dma_map_single(ptr noundef %dev29, ptr noundef %28, i32 noundef %sub.i294) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %33 = load ptr, ptr @mem_map, align 4
  %34 = ptrtoint ptr %28 to i32
  %sub.i295 = add i32 %34, 1073741824
  %shr.i = lshr i32 %sub.i295, 12
  %add.ptr.i296 = getelementptr %struct.page, ptr %33, i32 %shr.i
  %and.i = and i32 %34, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev29, ptr noundef %add.ptr.i296, i32 noundef %and.i, i32 noundef %sub.i294, i32 noundef 1, i32 noundef 0) #20
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i297 = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %35 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdev, align 4
  %dev32 = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev32, i32 noundef %retval.0.i297) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i297)
  %cmp.i298 = icmp eq i32 %retval.0.i297, -1
  br i1 %cmp.i298, label %dma_map_single_attrs.exit.mapping_error_crit_edge, label %if.end36

dma_map_single_attrs.exit.mapping_error_crit_edge: ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %mapping_error

if.end36:                                         ; preds = %dma_map_single_attrs.exit
  %mapaddr = getelementptr inbounds %struct.skge_element, ptr %15, i32 0, i32 3
  %37 = ptrtoint ptr %mapaddr to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %retval.0.i297, ptr %mapaddr, align 4
  %maplen = getelementptr inbounds %struct.skge_element, ptr %15, i32 0, i32 4
  %38 = ptrtoint ptr %maplen to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %sub.i294, ptr %maplen, align 4
  %dma_lo = getelementptr inbounds %struct.skge_tx_desc, ptr %17, i32 0, i32 2
  %39 = ptrtoint ptr %dma_lo to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %retval.0.i297, ptr %dma_lo, align 4
  %dma_hi = getelementptr inbounds %struct.skge_tx_desc, ptr %17, i32 0, i32 3
  %40 = ptrtoint ptr %dma_hi to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %dma_hi, align 4
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %41 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %41)
  %bf.load = load i16, ptr %ip_summed, align 8
  %42 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %42)
  %cmp40 = icmp eq i16 %42, 1536
  br i1 %cmp40, label %if.then42, label %if.end36.if.end62_crit_edge

if.end36.if.end62_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end62

if.then42:                                        ; preds = %if.end36
  %43 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %43, align 8
  %conv.i = zext i16 %45 to i32
  %46 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %48 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %47 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %49 to i32
  %sub.ptr.sub.i.neg.i = sub i32 %conv.i, %sub.ptr.lhs.cast.i.i
  %sub.i299 = add i32 %sub.ptr.sub.i.neg.i, %sub.ptr.rhs.cast.i.i
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %50 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %51 to i32
  %add.ptr.i.i = getelementptr i8, ptr %49, i32 %conv.i.i
  %protocol = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 6
  %52 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %protocol, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %53)
  %cmp46 = icmp eq i8 %53, 17
  br i1 %cmp46, label %land.lhs.true, label %if.then42.if.else_crit_edge

if.then42.if.else_crit_edge:                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else

land.lhs.true:                                    ; preds = %if.then42
  %chip_rev = getelementptr inbounds %struct.skge_hw, ptr %1, i32 0, i32 6
  %54 = ptrtoint ptr %chip_rev to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %chip_rev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %cmp49 = icmp eq i8 %55, 0
  br i1 %cmp49, label %land.lhs.true51, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else

land.lhs.true51:                                  ; preds = %land.lhs.true
  %chip_id = getelementptr inbounds %struct.skge_hw, ptr %1, i32 0, i32 5
  %56 = ptrtoint ptr %chip_id to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -80, i8 %57)
  %cmp53 = icmp eq i8 %57, -80
  br i1 %cmp53, label %land.lhs.true51.if.end56_crit_edge, label %land.lhs.true51.if.else_crit_edge

land.lhs.true51.if.else_crit_edge:                ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else

land.lhs.true51.if.end56_crit_edge:               ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end56

if.else:                                          ; preds = %land.lhs.true51.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %if.then42.if.else_crit_edge
  br label %if.end56

if.end56:                                         ; preds = %if.else, %land.lhs.true51.if.end56_crit_edge
  %control.0 = phi i32 [ 5701632, %if.else ], [ 5636096, %land.lhs.true51.if.end56_crit_edge ]
  %csum_offs = getelementptr inbounds %struct.skge_tx_desc, ptr %17, i32 0, i32 5
  %58 = ptrtoint ptr %csum_offs to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %csum_offs, align 4
  %conv57 = trunc i32 %sub.i299 to i16
  %csum_start = getelementptr inbounds %struct.skge_tx_desc, ptr %17, i32 0, i32 7
  %59 = ptrtoint ptr %csum_start to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %conv57, ptr %csum_start, align 2
  %csum_offset = getelementptr inbounds %struct.anon.53, ptr %43, i32 0, i32 1
  %60 = ptrtoint ptr %csum_offset to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %csum_offset, align 2
  %conv60 = add i16 %61, %conv57
  %csum_write = getelementptr inbounds %struct.skge_tx_desc, ptr %17, i32 0, i32 6
  %62 = ptrtoint ptr %csum_write to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv60, ptr %csum_write, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.end56, %if.end36.if.end62_crit_edge
  %control.1 = phi i32 [ %control.0, %if.end56 ], [ 5570560, %if.end36.if.end62_crit_edge ]
  %63 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %end.i, align 4
  %nr_frags64 = getelementptr inbounds %struct.skb_shared_info, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %nr_frags64 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %nr_frags64, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool65.not = icmp eq i8 %66, 0
  br i1 %tobool65.not, label %if.then66, label %if.else67

if.then66:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #22
  %or = or i32 %control.1, 671088640
  br label %do.body125

if.else67:                                        ; preds = %if.end62
  %or68 = or i32 %control.1, 67108864
  %67 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %end.i, align 4
  %nr_frags70341 = getelementptr inbounds %struct.skb_shared_info, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %nr_frags70341 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %nr_frags70341, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %cmp72343.not = icmp eq i8 %70, 0
  br i1 %cmp72343.not, label %if.else67.cleanup121.thread_crit_edge, label %if.else67.for.body_crit_edge

if.else67.for.body_crit_edge:                     ; preds = %if.else67
  br label %for.body

if.else67.cleanup121.thread_crit_edge:            ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup121.thread

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.else67.for.body_crit_edge
  %71 = phi ptr [ %98, %for.inc.for.body_crit_edge ], [ %68, %if.else67.for.body_crit_edge ]
  %i.0345 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.else67.for.body_crit_edge ]
  %e.0344 = phi ptr [ %83, %for.inc.for.body_crit_edge ], [ %15, %if.else67.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.skb_shared_info, ptr %71, i32 0, i32 12, i32 %i.0345
  %72 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pdev, align 4
  %dev76 = getelementptr inbounds %struct.pci_dev, ptr %73, i32 0, i32 44
  %bv_len.i = getelementptr %struct.skb_shared_info, ptr %71, i32 0, i32 12, i32 %i.0345, i32 1
  %74 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %bv_len.i, align 4
  %76 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx, align 4
  %bv_offset.i.i = getelementptr %struct.skb_shared_info, ptr %71, i32 0, i32 12, i32 %i.0345, i32 2
  %78 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %bv_offset.i.i, align 4
  %call2.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev76, ptr noundef %77, i32 noundef %79, i32 noundef %75, i32 noundef 1, i32 noundef 0) #20
  %80 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pdev, align 4
  %dev80 = getelementptr inbounds %struct.pci_dev, ptr %81, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev80, i32 noundef %call2.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i)
  %cmp.i304.not = icmp eq i32 %call2.i, -1
  br i1 %cmp.i304.not, label %mapping_unwind, label %if.end84

if.end84:                                         ; preds = %for.body
  %82 = ptrtoint ptr %e.0344 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %e.0344, align 4
  %skb85 = getelementptr inbounds %struct.skge_element, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %skb85 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %skb, ptr %skb85, align 4
  %desc86 = getelementptr inbounds %struct.skge_element, ptr %83, i32 0, i32 1
  %85 = ptrtoint ptr %desc86 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %desc86, align 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %86, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %88)
  %tobool90.not = icmp sgt i32 %88, -1
  br i1 %tobool90.not, label %for.inc, label %do.body98, !prof !299

do.body98:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #22
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/marvell/skge.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2808, 0\0A.popsection", ""() #20, !srcloc !326
  unreachable

for.inc:                                          ; preds = %if.end84
  %dma_lo108 = getelementptr inbounds %struct.skge_tx_desc, ptr %86, i32 0, i32 2
  %89 = ptrtoint ptr %dma_lo108 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %call2.i, ptr %dma_lo108, align 4
  %dma_hi111 = getelementptr inbounds %struct.skge_tx_desc, ptr %86, i32 0, i32 3
  %90 = ptrtoint ptr %dma_hi111 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %dma_hi111, align 4
  %mapaddr112 = getelementptr inbounds %struct.skge_element, ptr %83, i32 0, i32 3
  %91 = ptrtoint ptr %mapaddr112 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %call2.i, ptr %mapaddr112, align 4
  %92 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %bv_len.i, align 4
  %maplen114 = getelementptr inbounds %struct.skge_element, ptr %83, i32 0, i32 4
  %94 = ptrtoint ptr %maplen114 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %maplen114, align 4
  %95 = load i32, ptr %bv_len.i, align 4
  %or115 = or i32 %control.1, %95
  %or117 = or i32 %or115, -2063597568
  %96 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %or117, ptr %86, align 4
  %inc = add nuw nsw i32 %i.0345, 1
  %97 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %end.i, align 4
  %nr_frags70 = getelementptr inbounds %struct.skb_shared_info, ptr %98, i32 0, i32 2
  %99 = ptrtoint ptr %nr_frags70 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %nr_frags70, align 2
  %conv71 = zext i8 %100 to i32
  %cmp72 = icmp ult i32 %inc, %conv71
  br i1 %cmp72, label %for.inc.for.body_crit_edge, label %for.inc.cleanup121.thread_crit_edge

for.inc.cleanup121.thread_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup121.thread

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

cleanup121.thread:                                ; preds = %for.inc.cleanup121.thread_crit_edge, %if.else67.cleanup121.thread_crit_edge
  %e.0.lcssa = phi ptr [ %15, %if.else67.cleanup121.thread_crit_edge ], [ %83, %for.inc.cleanup121.thread_crit_edge ]
  %tf.0.lcssa = phi ptr [ %17, %if.else67.cleanup121.thread_crit_edge ], [ %86, %for.inc.cleanup121.thread_crit_edge ]
  %101 = ptrtoint ptr %tf.0.lcssa to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %tf.0.lcssa, align 4
  %or120 = or i32 %102, 671088640
  store i32 %or120, ptr %tf.0.lcssa, align 4
  br label %do.body125

do.body125:                                       ; preds = %cleanup121.thread, %if.then66
  %e.3 = phi ptr [ %15, %if.then66 ], [ %e.0.lcssa, %cleanup121.thread ]
  %control.2 = phi i32 [ %or, %if.then66 ], [ %or68, %cleanup121.thread ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !327
  tail call void @arm_heavy_mb() #20
  %or128 = or i32 %sub.i294, %control.2
  %or129 = or i32 %or128, -1056964608
  %103 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %or129, ptr %17, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !328
  tail call void @arm_heavy_mb() #20
  %104 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %len1.i, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %106 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %_tx.i.i, align 128
  %dql.i.i = getelementptr inbounds %struct.netdev_queue, ptr %107, i32 0, i32 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %105)
  %cmp.i.i.i = icmp ugt i32 %105, 268435455
  br i1 %cmp.i.i.i, label %do.body2.i.i.i, label %dql_queued.exit.i.i, !prof !301

do.body2.i.i.i:                                   ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #22
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/dynamic_queue_limits.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #20, !srcloc !329
  unreachable

dql_queued.exit.i.i:                              ; preds = %do.body125
  %last_obj_cnt.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %107, i32 0, i32 15, i32 2
  %108 = ptrtoint ptr %last_obj_cnt.i.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %105, ptr %last_obj_cnt.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !330
  %109 = ptrtoint ptr %dql.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %dql.i.i, align 128
  %add.i.i.i = add i32 %110, %105
  store i32 %add.i.i.i, ptr %dql.i.i, align 128
  %adj_limit.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %107, i32 0, i32 15, i32 1
  %111 = ptrtoint ptr %adj_limit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load volatile i32, ptr %adj_limit.i.i.i, align 4
  %113 = load volatile i32, ptr %dql.i.i, align 128
  %sub.i.i.i = sub i32 %112, %113
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i.i)
  %cmp.i.i = icmp sgt i32 %sub.i.i.i, -1
  br i1 %cmp.i.i, label %dql_queued.exit.i.i.netdev_sent_queue.exit_crit_edge, label %if.end.i.i308, !prof !299

dql_queued.exit.i.i.netdev_sent_queue.exit_crit_edge: ; preds = %dql_queued.exit.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %netdev_sent_queue.exit

if.end.i.i308:                                    ; preds = %dql_queued.exit.i.i
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %107, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 1, ptr noundef %state.i.i) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !331
  %114 = ptrtoint ptr %adj_limit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile i32, ptr %adj_limit.i.i.i, align 4
  %116 = ptrtoint ptr %dql.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile i32, ptr %dql.i.i, align 128
  %sub.i22.i.i = sub i32 %115, %117
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i22.i.i)
  %cmp7.i.i = icmp sgt i32 %sub.i22.i.i, -1
  br i1 %cmp7.i.i, label %if.then14.i.i, label %if.end.i.i308.netdev_sent_queue.exit_crit_edge, !prof !301

if.end.i.i308.netdev_sent_queue.exit_crit_edge:   ; preds = %if.end.i.i308
  call void @__sanitizer_cov_trace_pc() #22
  br label %netdev_sent_queue.exit

if.then14.i.i:                                    ; preds = %if.end.i.i308
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state.i.i) #20
  br label %netdev_sent_queue.exit

netdev_sent_queue.exit:                           ; preds = %if.then14.i.i, %if.end.i.i308.netdev_sent_queue.exit_crit_edge, %dql_queued.exit.i.i.netdev_sent_queue.exit_crit_edge
  %port = getelementptr i8, ptr %dev, i32 2536
  %118 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %port, align 8
  %arrayidx135 = getelementptr [2 x i32], ptr @txqaddr, i32 0, i32 %119
  %120 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx135, align 4
  %add137 = add i32 %121, 1076
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  tail call void @arm_heavy_mb() #20
  %122 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %1, align 4
  %add.ptr.i309 = getelementptr i8, ptr %123, i32 %add137
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i309, i8 16) #20, !srcloc !305
  %msg_enable = getelementptr i8, ptr %dev, i32 2540
  %124 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %msg_enable, align 4
  %and139 = and i32 %125, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and139)
  %tobool140.not = icmp eq i32 %and139, 0
  br i1 %tobool140.not, label %netdev_sent_queue.exit.do.end146_crit_edge, label %if.then141

netdev_sent_queue.exit.do.end146_crit_edge:       ; preds = %netdev_sent_queue.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end146

if.then141:                                       ; preds = %netdev_sent_queue.exit
  call void @__sanitizer_cov_trace_pc() #22
  %netdev = getelementptr i8, ptr %dev, i32 2308
  %126 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %netdev, align 4
  %start = getelementptr i8, ptr %dev, i32 2552
  %128 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %start, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %e.3 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %129 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 20
  %130 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %len1.i, align 4
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.12, ptr noundef %127, ptr noundef nonnull @.str.108, i32 noundef %sub.ptr.div, i32 noundef %131) #24
  br label %do.end146

do.end146:                                        ; preds = %if.then141, %netdev_sent_queue.exit.do.end146_crit_edge
  %132 = ptrtoint ptr %e.3 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %e.3, align 4
  %134 = ptrtoint ptr %to_use.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %133, ptr %to_use.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !318
  %135 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %tx_ring, align 4
  %137 = ptrtoint ptr %to_use.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %to_use.i, align 4
  %cmp.i311 = icmp ugt ptr %136, %138
  br i1 %cmp.i311, label %do.end146.skge_avail.exit321_crit_edge, label %cond.false.i313

do.end146.skge_avail.exit321_crit_edge:           ; preds = %do.end146
  call void @__sanitizer_cov_trace_pc() #22
  br label %skge_avail.exit321

cond.false.i313:                                  ; preds = %do.end146
  call void @__sanitizer_cov_trace_pc() #22
  %count.i312 = getelementptr i8, ptr %dev, i32 2556
  %139 = ptrtoint ptr %count.i312 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %count.i312, align 4
  br label %skge_avail.exit321

skge_avail.exit321:                               ; preds = %cond.false.i313, %do.end146.skge_avail.exit321_crit_edge
  %cond.i314 = phi i32 [ %140, %cond.false.i313 ], [ 0, %do.end146.skge_avail.exit321_crit_edge ]
  %sub.ptr.lhs.cast.i315 = ptrtoint ptr %136 to i32
  %sub.ptr.rhs.cast.i316 = ptrtoint ptr %138 to i32
  %sub.ptr.sub.i317 = sub i32 %sub.ptr.lhs.cast.i315, %sub.ptr.rhs.cast.i316
  %sub.ptr.div.i318 = sdiv exact i32 %sub.ptr.sub.i317, 20
  %add.i319 = add nsw i32 %sub.ptr.div.i318, -1
  %sub.i320 = add i32 %add.i319, %cond.i314
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %sub.i320)
  %cmp158 = icmp ult i32 %sub.i320, 19
  br i1 %cmp158, label %do.body162, label %skge_avail.exit321.cleanup200_crit_edge

skge_avail.exit321.cleanup200_crit_edge:          ; preds = %skge_avail.exit321
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup200

do.body162:                                       ; preds = %skge_avail.exit321
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @skge_xmit_frame.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@skge_xmit_frame, %if.then171)) #20
          to label %do.end176 [label %if.then171], !srcloc !333

if.then171:                                       ; preds = %do.body162
  call void @__sanitizer_cov_trace_pc() #22
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @skge_xmit_frame.__UNIQUE_ID_ddebug356, ptr noundef %dev, ptr noundef nonnull @.str.110) #20
  br label %do.end176

do.end176:                                        ; preds = %if.then171, %do.body162
  %141 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i323 = getelementptr inbounds %struct.netdev_queue, ptr %142, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i323) #20
  br label %cleanup200

mapping_unwind:                                   ; preds = %for.body
  %143 = ptrtoint ptr %to_use.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %to_use.i, align 4
  %145 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %pdev, align 4
  %dev181 = getelementptr inbounds %struct.pci_dev, ptr %146, i32 0, i32 44
  %mapaddr182 = getelementptr inbounds %struct.skge_element, ptr %144, i32 0, i32 3
  %147 = ptrtoint ptr %mapaddr182 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %mapaddr182, align 4
  %maplen183 = getelementptr inbounds %struct.skge_element, ptr %144, i32 0, i32 4
  %149 = ptrtoint ptr %maplen183 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %maplen183, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev181, i32 noundef %148, i32 noundef %150, i32 noundef 1, i32 noundef 0) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0345)
  %cmp184347.not = icmp eq i32 %i.0345, 0
  br i1 %cmp184347.not, label %mapping_unwind.mapping_error_crit_edge, label %mapping_unwind.while.body_crit_edge

mapping_unwind.while.body_crit_edge:              ; preds = %mapping_unwind
  br label %while.body

mapping_unwind.mapping_error_crit_edge:           ; preds = %mapping_unwind
  call void @__sanitizer_cov_trace_pc() #22
  br label %mapping_error

while.body:                                       ; preds = %while.body.while.body_crit_edge, %mapping_unwind.while.body_crit_edge
  %i.1349 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %i.0345, %mapping_unwind.while.body_crit_edge ]
  %e.4348 = phi ptr [ %152, %while.body.while.body_crit_edge ], [ %144, %mapping_unwind.while.body_crit_edge ]
  %dec = add nsw i32 %i.1349, -1
  %151 = ptrtoint ptr %e.4348 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %e.4348, align 4
  %153 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %pdev, align 4
  %dev188 = getelementptr inbounds %struct.pci_dev, ptr %154, i32 0, i32 44
  %mapaddr189 = getelementptr inbounds %struct.skge_element, ptr %152, i32 0, i32 3
  %155 = ptrtoint ptr %mapaddr189 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %mapaddr189, align 4
  %maplen190 = getelementptr inbounds %struct.skge_element, ptr %152, i32 0, i32 4
  %157 = ptrtoint ptr %maplen190 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %maplen190, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev188, i32 noundef %156, i32 noundef %158, i32 noundef 1, i32 noundef 0) #20
  %cmp184 = icmp sgt i32 %i.1349, 1
  br i1 %cmp184, label %while.body.while.body_crit_edge, label %while.body.mapping_error_crit_edge

while.body.mapping_error_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %mapping_error

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body

mapping_error:                                    ; preds = %while.body.mapping_error_crit_edge, %mapping_unwind.mapping_error_crit_edge, %dma_map_single_attrs.exit.mapping_error_crit_edge
  %call191 = tail call i32 @net_ratelimit() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call191)
  %tobool192.not = icmp eq i32 %call191, 0
  br i1 %tobool192.not, label %mapping_error.if.end199_crit_edge, label %do.end196

mapping_error.if.end199_crit_edge:                ; preds = %mapping_error
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end199

do.end196:                                        ; preds = %mapping_error
  call void @__sanitizer_cov_trace_pc() #22
  %159 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %pdev, align 4
  %dev198 = getelementptr inbounds %struct.pci_dev, ptr %160, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev198, ptr noundef nonnull @.str.111, ptr noundef %dev) #24
  br label %if.end199

if.end199:                                        ; preds = %do.end196, %mapping_error.if.end199_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #20
  br label %cleanup200

cleanup200:                                       ; preds = %if.end199, %do.end176, %skge_avail.exit321.cleanup200_crit_edge, %skge_avail.exit.cleanup200_crit_edge, %skb_padto.exit.cleanup200_crit_edge
  %retval.0 = phi i32 [ 0, %if.end199 ], [ 0, %skb_padto.exit.cleanup200_crit_edge ], [ 16, %skge_avail.exit.cleanup200_crit_edge ], [ 0, %do.end176 ], [ 0, %skge_avail.exit321.cleanup200_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @skge_set_mac_address(ptr noundef %dev, ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 128
  %port2 = getelementptr i8, ptr %dev, i32 2536
  %2 = ptrtoint ptr %port2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port2, align 8
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %p, i32 0, i32 1
  %4 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sa_data, align 4
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not.i = icmp eq i32 %6, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %entry
  %add.ptr.i.i = getelementptr %struct.sockaddr, ptr %p, i32 0, i32 1, i32 4
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %8 to i32
  %or.i.i = or i32 %5, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %if.end

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %is_valid_ether_addr.exit
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #20
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %9 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 256
  %mul = shl i32 %3, 3
  %add.ptr8 = getelementptr i8, ptr %add.ptr, i32 %mul
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %13 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_addr, align 64
  tail call void @mmiocpy(ptr noundef %add.ptr8, ptr noundef %14, i32 noundef 6) #20
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %add.ptr10 = getelementptr i8, ptr %16, i32 264
  %add.ptr12 = getelementptr i8, ptr %add.ptr10, i32 %mul
  %17 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev_addr, align 64
  tail call void @mmiocpy(ptr noundef %add.ptr12, ptr noundef %18, i32 noundef 6) #20
  br label %cleanup

if.else:                                          ; preds = %if.end
  %phy_lock = getelementptr inbounds %struct.skge_hw, ptr %1, i32 0, i32 13
  tail call void @_raw_spin_lock_bh(ptr noundef %phy_lock) #20
  %mul.i = shl i32 %3, 12
  %add1.i = add i32 %mul.i, 10244
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %add.ptr.i.i72 = getelementptr i8, ptr %20, i32 %add1.i
  %21 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i72) #20, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %22 = and i16 %21, -9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %add.ptr.i.i76 = getelementptr i8, ptr %24, i32 %add1.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i76, i16 %22) #20, !srcloc !311
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %add.ptr17 = getelementptr i8, ptr %26, i32 256
  %mul18 = shl i32 %3, 3
  %add.ptr19 = getelementptr i8, ptr %add.ptr17, i32 %mul18
  %dev_addr20 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %27 = ptrtoint ptr %dev_addr20 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev_addr20, align 64
  tail call void @mmiocpy(ptr noundef %add.ptr19, ptr noundef %28, i32 noundef 6) #20
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %add.ptr22 = getelementptr i8, ptr %30, i32 264
  %add.ptr24 = getelementptr i8, ptr %add.ptr22, i32 %mul18
  %31 = ptrtoint ptr %dev_addr20 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev_addr20, align 64
  tail call void @mmiocpy(ptr noundef %add.ptr24, ptr noundef %32, i32 noundef 6) #20
  %chip_id.i = getelementptr inbounds %struct.skge_hw, ptr %1, i32 0, i32 5
  %33 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %chip_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %34)
  %cmp.i = icmp eq i8 %34, 10
  %35 = ptrtoint ptr %dev_addr20 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev_addr20, align 64
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %36, align 1
  %conv1.i = zext i8 %38 to i16
  %arrayidx2.i = getelementptr i8, ptr %36, i32 1
  %39 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx2.i, align 1
  %conv4.i = zext i8 %40 to i16
  %shl.i = shl nuw i16 %conv4.i, 8
  %or.i = or i16 %shl.i, %conv1.i
  br i1 %cmp.i, label %if.then27, label %if.else29

if.then27:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  %add.i.i = add i32 %mul.i, 8192
  %or.i.i77 = or i32 %add.i.i, 528
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %41 = tail call i16 @llvm.bswap.i16(i16 %or.i) #20
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %43, i32 %or.i.i77
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i, i16 %41) #20, !srcloc !311
  %arrayidx6.i = getelementptr i8, ptr %36, i32 2
  %44 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx6.i, align 1
  %conv8.i = zext i8 %45 to i16
  %arrayidx9.i = getelementptr i8, ptr %36, i32 3
  %46 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx9.i, align 1
  %conv11.i = zext i8 %47 to i16
  %shl12.i = shl nuw i16 %conv11.i, 8
  %or13.i = or i16 %shl12.i, %conv8.i
  %or.i39.i = or i32 %add.i.i, 532
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %48 = tail call i16 @llvm.bswap.i16(i16 %or13.i) #20
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %1, align 4
  %add.ptr.i.i40.i = getelementptr i8, ptr %50, i32 %or.i39.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i40.i, i16 %48) #20, !srcloc !311
  %arrayidx16.i = getelementptr i8, ptr %36, i32 4
  %51 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx16.i, align 1
  %conv18.i = zext i8 %52 to i16
  %arrayidx19.i = getelementptr i8, ptr %36, i32 5
  %53 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx19.i, align 1
  %conv21.i = zext i8 %54 to i16
  %shl22.i = shl nuw i16 %conv21.i, 8
  %or23.i = or i16 %shl22.i, %conv18.i
  %or.i44.i = or i32 %add.i.i, 536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %55 = tail call i16 @llvm.bswap.i16(i16 %or23.i) #20
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %1, align 4
  %add.ptr.i.i45.i = getelementptr i8, ptr %57, i32 %or.i44.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i45.i, i16 %55) #20, !srcloc !311
  br label %if.end32

if.else29:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  %add1.i.i = add i32 %mul.i, 10268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %58 = tail call i16 @llvm.bswap.i16(i16 %or.i) #20
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %1, align 4
  %add.ptr.i.i.i85 = getelementptr i8, ptr %60, i32 %add1.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i85, i16 %58) #20, !srcloc !311
  %arrayidx6.i86 = getelementptr i8, ptr %36, i32 2
  %61 = ptrtoint ptr %arrayidx6.i86 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx6.i86, align 1
  %conv8.i87 = zext i8 %62 to i16
  %arrayidx9.i88 = getelementptr i8, ptr %36, i32 3
  %63 = ptrtoint ptr %arrayidx9.i88 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx9.i88, align 1
  %conv11.i89 = zext i8 %64 to i16
  %shl12.i90 = shl nuw i16 %conv11.i89, 8
  %or13.i91 = or i16 %shl12.i90, %conv8.i87
  %add1.i38.i = add i32 %mul.i, 10272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %65 = tail call i16 @llvm.bswap.i16(i16 %or13.i91) #20
  %66 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %1, align 4
  %add.ptr.i.i39.i = getelementptr i8, ptr %67, i32 %add1.i38.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i39.i, i16 %65) #20, !srcloc !311
  %arrayidx16.i92 = getelementptr i8, ptr %36, i32 4
  %68 = ptrtoint ptr %arrayidx16.i92 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx16.i92, align 1
  %conv18.i93 = zext i8 %69 to i16
  %arrayidx19.i94 = getelementptr i8, ptr %36, i32 5
  %70 = ptrtoint ptr %arrayidx19.i94 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx19.i94, align 1
  %conv21.i95 = zext i8 %71 to i16
  %shl22.i96 = shl nuw i16 %conv21.i95, 8
  %or23.i97 = or i16 %shl22.i96, %conv18.i93
  %add1.i42.i = add i32 %mul.i, 10276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %72 = tail call i16 @llvm.bswap.i16(i16 %or23.i97) #20
  %73 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %1, align 4
  %add.ptr.i.i43.i = getelementptr i8, ptr %74, i32 %add1.i42.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i43.i, i16 %72) #20, !srcloc !311
  %75 = ptrtoint ptr %dev_addr20 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev_addr20, align 64
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %76, align 1
  %conv1.i98 = zext i8 %78 to i16
  %arrayidx2.i99 = getelementptr i8, ptr %76, i32 1
  %79 = ptrtoint ptr %arrayidx2.i99 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx2.i99, align 1
  %conv4.i100 = zext i8 %80 to i16
  %shl.i101 = shl nuw i16 %conv4.i100, 8
  %or.i102 = or i16 %shl.i101, %conv1.i98
  %add1.i.i105 = add i32 %mul.i, 10280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %81 = tail call i16 @llvm.bswap.i16(i16 %or.i102) #20
  %82 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %1, align 4
  %add.ptr.i.i.i106 = getelementptr i8, ptr %83, i32 %add1.i.i105
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i106, i16 %81) #20, !srcloc !311
  %arrayidx6.i107 = getelementptr i8, ptr %76, i32 2
  %84 = ptrtoint ptr %arrayidx6.i107 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx6.i107, align 1
  %conv8.i108 = zext i8 %85 to i16
  %arrayidx9.i109 = getelementptr i8, ptr %76, i32 3
  %86 = ptrtoint ptr %arrayidx9.i109 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx9.i109, align 1
  %conv11.i110 = zext i8 %87 to i16
  %shl12.i111 = shl nuw i16 %conv11.i110, 8
  %or13.i112 = or i16 %shl12.i111, %conv8.i108
  %add1.i38.i113 = add i32 %mul.i, 10284
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %88 = tail call i16 @llvm.bswap.i16(i16 %or13.i112) #20
  %89 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %1, align 4
  %add.ptr.i.i39.i114 = getelementptr i8, ptr %90, i32 %add1.i38.i113
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i39.i114, i16 %88) #20, !srcloc !311
  %arrayidx16.i115 = getelementptr i8, ptr %76, i32 4
  %91 = ptrtoint ptr %arrayidx16.i115 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx16.i115, align 1
  %conv18.i116 = zext i8 %92 to i16
  %arrayidx19.i117 = getelementptr i8, ptr %76, i32 5
  %93 = ptrtoint ptr %arrayidx19.i117 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx19.i117, align 1
  %conv21.i118 = zext i8 %94 to i16
  %shl22.i119 = shl nuw i16 %conv21.i118, 8
  %or23.i120 = or i16 %shl22.i119, %conv18.i116
  %add1.i42.i121 = add i32 %mul.i, 10288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %95 = tail call i16 @llvm.bswap.i16(i16 %or23.i120) #20
  %96 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %1, align 4
  %add.ptr.i.i43.i122 = getelementptr i8, ptr %97, i32 %add1.i42.i121
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i43.i122, i16 %95) #20, !srcloc !311
  br label %if.end32

if.end32:                                         ; preds = %if.else29, %if.then27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %98 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %1, align 4
  %add.ptr.i.i126 = getelementptr i8, ptr %99, i32 %add1.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i126, i16 %21) #20, !srcloc !311
  tail call void @_raw_spin_unlock_bh(ptr noundef %phy_lock) #20
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.then7, %is_valid_ether_addr.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -99, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ 0, %if.end32 ], [ 0, %if.then7 ], [ -99, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @skge_ioctl(ptr noundef %dev, ptr nocapture noundef %ifr, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %ifr_ifru.i = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 128
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.142)
  switch i32 %cmd, label %if.end.cleanup_crit_edge [
    i32 35143, label %sw.bb
    i32 35144, label %if.end.sw.bb4_crit_edge
    i32 35145, label %sw.bb17
  ]

if.end.sw.bb4_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %phy_addr = getelementptr inbounds %struct.skge_hw, ptr %1, i32 0, i32 12
  %5 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %phy_addr, align 4
  %7 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %ifr_ifru.i, align 2
  br label %sw.bb4

sw.bb4:                                           ; preds = %sw.bb, %if.end.sw.bb4_crit_edge
  %phy_lock = getelementptr inbounds %struct.skge_hw, ptr %1, i32 0, i32 13
  tail call void @_raw_spin_lock_bh(ptr noundef %phy_lock) #20
  %chip_id.i = getelementptr inbounds %struct.skge_hw, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %chip_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %9)
  %cmp.i = icmp eq i8 %9, 10
  %port = getelementptr i8, ptr %dev, i32 2536
  %10 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port, align 8
  %reg_num = getelementptr inbounds %struct.mii_ioctl_data, ptr %ifr_ifru.i, i32 0, i32 1
  %12 = ptrtoint ptr %reg_num to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %reg_num, align 2
  br i1 %cmp.i, label %if.then6, label %if.else

if.then6:                                         ; preds = %sw.bb4
  %14 = and i16 %13, 31
  %phy_addr.i = getelementptr inbounds %struct.skge_hw, ptr %1, i32 0, i32 12
  %15 = ptrtoint ptr %phy_addr.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %phy_addr.i, align 4
  %or22.i = or i16 %16, %14
  %mul.i.i = shl i32 %11, 12
  %add.i.i = add i32 %mul.i.i, 8192
  %or.i.i = or i32 %add.i.i, 104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %17 = tail call i16 @llvm.bswap.i16(i16 %or22.i) #20
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %19, i32 %or.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i, i16 %17) #20, !srcloc !311
  %or.i25.i = or i32 %add.i.i, 112
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %add.ptr.i.i26.i = getelementptr i8, ptr %21, i32 %or.i25.i
  %22 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i26.i) #20, !srcloc !313
  %23 = tail call i16 @llvm.bswap.i16(i16 %22) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %phy_type.i = getelementptr inbounds %struct.skge_hw, ptr %1, i32 0, i32 9
  %24 = ptrtoint ptr %phy_type.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %phy_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp.i62 = icmp eq i8 %25, 0
  br i1 %cmp.i62, label %if.then6.ready.i_crit_edge, label %if.then6.for.body.i_crit_edge

if.then6.for.body.i_crit_edge:                    ; preds = %if.then6
  br label %for.body.i

if.then6.ready.i_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #22
  br label %ready.i

for.body.i:                                       ; preds = %if.end10.i.for.body.i_crit_edge, %if.then6.for.body.i_crit_edge
  %i.034.i = phi i32 [ %inc.i, %if.end10.i.for.body.i_crit_edge ], [ 0, %if.then6.for.body.i_crit_edge ]
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %add.ptr.i.i29.i = getelementptr i8, ptr %27, i32 %add.i.i
  %28 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i29.i) #20, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %29 = and i16 %28, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool.not.i = icmp eq i16 %29, 0
  br i1 %tobool.not.i, label %if.end10.i, label %for.body.i.ready.i_crit_edge

for.body.i.ready.i_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ready.i

if.end10.i:                                       ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748) #20
  %inc.i = add nuw nsw i32 %i.034.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1000
  br i1 %exitcond.not.i, label %if.end10.i.if.end15_crit_edge, label %if.end10.i.for.body.i_crit_edge

if.end10.i.for.body.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i

if.end10.i.if.end15_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end15

ready.i:                                          ; preds = %for.body.i.ready.i_crit_edge, %if.then6.ready.i_crit_edge
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %add.ptr.i.i33.i = getelementptr i8, ptr %32, i32 %or.i25.i
  %33 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i33.i) #20, !srcloc !313
  %34 = tail call i16 @llvm.bswap.i16(i16 %33) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  br label %if.end15

if.else:                                          ; preds = %sw.bb4
  %phy_addr.i63 = getelementptr inbounds %struct.skge_hw, ptr %1, i32 0, i32 12
  %35 = ptrtoint ptr %phy_addr.i63 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %phy_addr.i63, align 4
  %shl.i = shl i16 %36, 11
  %37 = shl i16 %13, 6
  %shl2.i = and i16 %37, 1984
  %or.i = or i16 %shl.i, %shl2.i
  %or4.i = or i16 %or.i, 32
  %mul.i.i64 = shl i32 %11, 12
  %add1.i.i = add i32 %mul.i.i64, 10368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %38 = tail call i16 @llvm.bswap.i16(i16 %or4.i) #20
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 4
  %add.ptr.i.i.i65 = getelementptr i8, ptr %40, i32 %add1.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i65, i16 %38) #20, !srcloc !311
  br label %for.body.i69

for.cond.i:                                       ; preds = %for.body.i69
  %inc.i66 = add nuw nsw i32 %i.024.i, 1
  %exitcond.not.i67 = icmp eq i32 %inc.i66, 1000
  br i1 %exitcond.not.i67, label %for.cond.i.if.end15_crit_edge, label %for.cond.i.for.body.i69_crit_edge

for.cond.i.for.body.i69_crit_edge:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i69

for.cond.i.if.end15_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end15

for.body.i69:                                     ; preds = %for.cond.i.for.body.i69_crit_edge, %if.else
  %i.024.i = phi i32 [ 0, %if.else ], [ %inc.i66, %for.cond.i.for.body.i69_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 214748) #20
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  %add.ptr.i.i19.i = getelementptr i8, ptr %43, i32 %add1.i.i
  %44 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i19.i) #20, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %45 = and i16 %44, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %tobool.not.i68 = icmp eq i16 %45, 0
  br i1 %tobool.not.i68, label %for.cond.i, label %ready.i70

ready.i70:                                        ; preds = %for.body.i69
  call void @__sanitizer_cov_trace_pc() #22
  %add1.i22.i = add i32 %mul.i.i64, 10372
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 4
  %add.ptr.i.i23.i = getelementptr i8, ptr %47, i32 %add1.i22.i
  %48 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i23.i) #20, !srcloc !313
  %49 = tail call i16 @llvm.bswap.i16(i16 %48) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  br label %if.end15

if.end15:                                         ; preds = %ready.i70, %for.cond.i.if.end15_crit_edge, %ready.i, %if.end10.i.if.end15_crit_edge
  %val.2 = phi i16 [ %34, %ready.i ], [ %49, %ready.i70 ], [ %23, %if.end10.i.if.end15_crit_edge ], [ 0, %for.cond.i.if.end15_crit_edge ]
  %err.0 = phi i32 [ 0, %ready.i ], [ 0, %ready.i70 ], [ -110, %if.end10.i.if.end15_crit_edge ], [ -110, %for.cond.i.if.end15_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %phy_lock) #20
  %val_out = getelementptr inbounds %struct.mii_ioctl_data, ptr %ifr_ifru.i, i32 0, i32 3
  %50 = ptrtoint ptr %val_out to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %val.2, ptr %val_out, align 2
  br label %cleanup

sw.bb17:                                          ; preds = %if.end
  %phy_lock18 = getelementptr inbounds %struct.skge_hw, ptr %1, i32 0, i32 13
  tail call void @_raw_spin_lock_bh(ptr noundef %phy_lock18) #20
  %chip_id.i72 = getelementptr inbounds %struct.skge_hw, ptr %1, i32 0, i32 5
  %51 = ptrtoint ptr %chip_id.i72 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %chip_id.i72, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %52)
  %cmp.i73 = icmp eq i8 %52, 10
  %port21 = getelementptr i8, ptr %dev, i32 2536
  %53 = ptrtoint ptr %port21 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %port21, align 8
  %reg_num22 = getelementptr inbounds %struct.mii_ioctl_data, ptr %ifr_ifru.i, i32 0, i32 1
  %55 = ptrtoint ptr %reg_num22 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %reg_num22, align 2
  %57 = and i16 %56, 31
  %val_in = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1, i32 0, i32 1
  %58 = ptrtoint ptr %val_in to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %val_in, align 2
  br i1 %cmp.i73, label %if.then20, label %if.else27

if.then20:                                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #22
  %call26 = tail call fastcc i32 @xm_phy_write(ptr noundef %1, i32 noundef %54, i16 noundef zeroext %57, i16 noundef zeroext %59)
  br label %if.end35

if.else27:                                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #22
  %call34 = tail call fastcc i32 @gm_phy_write(ptr noundef %1, i32 noundef %54, i16 noundef zeroext %57, i16 noundef zeroext %59)
  br label %if.end35

if.end35:                                         ; preds = %if.else27, %if.then20
  %err.1 = phi i32 [ %call26, %if.then20 ], [ %call34, %if.else27 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %phy_lock18) #20
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.end15, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ %err.1, %if.end35 ], [ %err.0, %if.end15 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @skge_change_mtu(ptr noundef %dev, i32 noundef %new_mtu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
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
  call void @__sanitizer_cov_trace_pc() #22
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %2 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %new_mtu, ptr %mtu, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @skge_down(ptr noundef %dev)
  %mtu2 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %3 = ptrtoint ptr %mtu2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %new_mtu, ptr %mtu2, align 4
  %call3 = tail call i32 @skge_up(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @dev_close(ptr noundef %dev) #20
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call3, %if.then4 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @skge_tx_timeout(ptr nocapture noundef %dev, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %dev, i32 2540
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %netdev = getelementptr i8, ptr %dev, i32 2308
  %2 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.12, ptr noundef %3, ptr noundef nonnull @.str.112) #24
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 128
  %port = getelementptr i8, ptr %dev, i32 2536
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port, align 8
  %arrayidx = getelementptr [2 x i32], ptr @txqaddr, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add1 = add i32 %9, 1076
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  tail call void @arm_heavy_mb() #20
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  %add.ptr.i7 = getelementptr i8, ptr %11, i32 %add1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i7, i8 32) #20, !srcloc !305
  tail call fastcc void @skge_tx_clean(ptr noundef %dev)
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %12 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %13) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @skge_get_stats(ptr noundef %dev) #2 align 64 {
entry:
  %data = alloca [21 x i64], align 8
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %data) #20
  %0 = call ptr @memset(ptr %data, i32 255, i32 168)
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr.i, align 128
  %chip_id.i = getelementptr inbounds %struct.skge_hw, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %chip_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %4)
  %cmp.i = icmp eq i8 %4, 10
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  call fastcc void @genesis_get_stats(ptr noundef %add.ptr.i, ptr noundef nonnull %data)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  call fastcc void @yukon_get_stats(ptr noundef %add.ptr.i, ptr noundef nonnull %data)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %data, align 8
  %conv = trunc i64 %6 to i32
  %stats = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 3
  %7 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %tx_bytes, align 4
  %arrayidx3 = getelementptr inbounds [21 x i64], ptr %data, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx3, align 8
  %conv4 = trunc i64 %9 to i32
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 2
  %10 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv4, ptr %rx_bytes, align 8
  %arrayidx6 = getelementptr inbounds [21 x i64], ptr %data, i32 0, i32 2
  %11 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %arrayidx6, align 8
  %arrayidx7 = getelementptr inbounds [21 x i64], ptr %data, i32 0, i32 4
  %13 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %arrayidx7, align 8
  %add = add i64 %14, %12
  %arrayidx8 = getelementptr inbounds [21 x i64], ptr %data, i32 0, i32 6
  %15 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %arrayidx8, align 8
  %add9 = add i64 %add, %16
  %conv10 = trunc i64 %add9 to i32
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 1
  %17 = ptrtoint ptr %tx_packets to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv10, ptr %tx_packets, align 4
  %arrayidx12 = getelementptr inbounds [21 x i64], ptr %data, i32 0, i32 3
  %18 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx12, align 8
  %arrayidx13 = getelementptr inbounds [21 x i64], ptr %data, i32 0, i32 5
  %20 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %arrayidx13, align 8
  %add14 = add i64 %21, %19
  %arrayidx15 = getelementptr inbounds [21 x i64], ptr %data, i32 0, i32 7
  %22 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %arrayidx15, align 8
  %add16 = add i64 %add14, %23
  %conv17 = trunc i64 %add16 to i32
  %24 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv17, ptr %stats, align 8
  %conv22 = trunc i64 %add14 to i32
  %multicast = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 8
  %25 = ptrtoint ptr %multicast to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv22, ptr %multicast, align 8
  %arrayidx24 = getelementptr inbounds [21 x i64], ptr %data, i32 0, i32 10
  %26 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %arrayidx24, align 8
  %conv25 = trunc i64 %27 to i32
  %collisions = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 9
  %28 = ptrtoint ptr %collisions to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv25, ptr %collisions, align 4
  %arrayidx27 = getelementptr inbounds [21 x i64], ptr %data, i32 0, i32 12
  %29 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %arrayidx27, align 8
  %conv28 = trunc i64 %30 to i32
  %tx_aborted_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 16
  %31 = ptrtoint ptr %tx_aborted_errors to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv28, ptr %tx_aborted_errors, align 8
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %data) #20
  ret ptr %stats
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @skge_netpoll(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %1) #20
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 128
  %call2 = tail call i32 @skge_intr(i32 noundef %3, ptr noundef %5)
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %7) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @skge_tx_clean(ptr nocapture noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %tx_ring = getelementptr i8, ptr %dev, i32 2544
  %to_use = getelementptr i8, ptr %dev, i32 2548
  %0 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %e.017 = load ptr, ptr %tx_ring, align 4
  %1 = ptrtoint ptr %to_use to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %to_use, align 4
  %cmp.not18 = icmp eq ptr %e.017, %2
  br i1 %cmp.not18, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %e.019 = phi ptr [ %e.0, %if.end.for.body_crit_edge ], [ %e.017, %entry.for.body_crit_edge ]
  %desc = getelementptr inbounds %struct.skge_element, ptr %e.019, i32 0, i32 1
  %3 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %desc, align 4
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 128
  %pdev = getelementptr inbounds %struct.skge_hw, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev, align 4
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %mapaddr2.i = getelementptr inbounds %struct.skge_element, ptr %e.019, i32 0, i32 3
  %9 = ptrtoint ptr %mapaddr2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mapaddr2.i, align 4
  %maplen3.i = getelementptr inbounds %struct.skge_element, ptr %e.019, i32 0, i32 4
  %11 = ptrtoint ptr %maplen3.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %maplen3.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev1.i, i32 noundef %10, i32 noundef %12, i32 noundef 1, i32 noundef 0) #20
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %4, align 4
  %and = and i32 %14, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  %skb = getelementptr inbounds %struct.skge_element, ptr %e.019, i32 0, i32 2
  %15 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %skb, align 4
  tail call void @consume_skb(ptr noundef %16) #20
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %4, align 4
  %18 = ptrtoint ptr %e.019 to i32
  call void @__asan_load4_noabort(i32 %18)
  %e.0 = load ptr, ptr %e.019, align 4
  %19 = ptrtoint ptr %to_use to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %to_use, align 4
  %cmp.not = icmp eq ptr %e.0, %20
  br i1 %cmp.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %e.0.lcssa = phi ptr [ %e.017, %entry.for.end_crit_edge ], [ %e.0, %if.end.for.end_crit_edge ]
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %21 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %22, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state.i.i) #20
  %dql.i.i = getelementptr inbounds %struct.netdev_queue, ptr %22, i32 0, i32 15
  tail call void @dql_reset(ptr noundef %dql.i.i) #20
  %23 = ptrtoint ptr %tx_ring to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %e.0.lcssa, ptr %tx_ring, align 16
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #20
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_lock(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_reset(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__skb_pad(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_close(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @genesis_get_stats(ptr nocapture noundef readonly %skge, ptr nocapture noundef writeonly %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %skge to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skge, align 128
  %port2 = getelementptr inbounds %struct.skge_port, ptr %skge, i32 0, i32 3
  %2 = ptrtoint ptr %port2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port2, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %4, 100
  %mul.i = shl i32 %3, 12
  %add.i = add i32 %mul.i, 8192
  %or.i = or i32 %add.i, 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 %or.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 12288) #20, !srcloc !311
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %add.ptr.i.i4372 = getelementptr i8, ptr %8, i32 %or.i
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i4372) #20, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %10 = and i16 %9, 12288
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not73 = icmp eq i16 %10, 0
  br i1 %tobool.not73, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.end

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %while.body.while.end_crit_edge, label %if.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.end

if.end:                                           ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 2147480) #20
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %add.ptr.i.i43 = getelementptr i8, ptr %14, i32 %or.i
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i43) #20, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %16 = and i16 %15, 12288
  %tobool.not = icmp eq i16 %16, 0
  br i1 %tobool.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %or.i46 = or i32 %add.i, 1288
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %add.ptr.i.i47 = getelementptr i8, ptr %18, i32 %or.i46
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i47) #20, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %or5.i = or i32 %add.i, 1292
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %21, i32 %or5.i
  %22 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i14.i) #20, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %23 = zext i16 %22 to i32
  %24 = zext i16 %19 to i32
  %25 = shl nuw i32 %24, 16
  %26 = or i32 %25, %23
  %or.i50 = or i32 %add.i, 1296
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %add.ptr.i.i51 = getelementptr i8, ptr %28, i32 %or.i50
  %29 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i51) #20, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %or5.i52 = or i32 %add.i, 1300
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %add.ptr.i14.i53 = getelementptr i8, ptr %31, i32 %or5.i52
  %32 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i14.i53) #20, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %33 = zext i16 %32 to i32
  %34 = zext i16 %29 to i32
  %35 = shl nuw i32 %34, 16
  %36 = or i32 %35, %33
  %37 = zext i32 %26 to i64
  %38 = zext i32 %36 to i64
  %39 = shl nuw i64 %38, 32
  %40 = or i64 %39, %37
  %41 = tail call i64 @llvm.bswap.i64(i64 %40)
  %42 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %data, align 8
  %or.i56 = or i32 %add.i, 1544
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  %add.ptr.i.i57 = getelementptr i8, ptr %44, i32 %or.i56
  %45 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i57) #20, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %or5.i58 = or i32 %add.i, 1548
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 4
  %add.ptr.i14.i59 = getelementptr i8, ptr %47, i32 %or5.i58
  %48 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i14.i59) #20, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %49 = zext i16 %48 to i32
  %50 = zext i16 %45 to i32
  %51 = shl nuw i32 %50, 16
  %52 = or i32 %51, %49
  %or.i62 = or i32 %add.i, 1552
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %1, align 4
  %add.ptr.i.i63 = getelementptr i8, ptr %54, i32 %or.i62
  %55 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i63) #20, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %or5.i64 = or i32 %add.i, 1556
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %1, align 4
  %add.ptr.i14.i65 = getelementptr i8, ptr %57, i32 %or5.i64
  %58 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i14.i65) #20, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %59 = zext i16 %58 to i32
  %60 = zext i16 %55 to i32
  %61 = shl nuw i32 %60, 16
  %62 = or i32 %61, %59
  %63 = zext i32 %52 to i64
  %64 = zext i32 %62 to i64
  %65 = shl nuw i64 %64, 32
  %66 = or i64 %65, %63
  %67 = tail call i64 @llvm.bswap.i64(i64 %66)
  %arrayidx14 = getelementptr i64, ptr %data, i32 1
  %68 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %67, ptr %arrayidx14, align 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %while.end
  %i.074 = phi i32 [ 2, %while.end ], [ %inc, %for.body.for.body_crit_edge ]
  %xmac_offset = getelementptr [21 x %struct.skge_stat], ptr @skge_stats, i32 0, i32 %i.074, i32 1
  %69 = ptrtoint ptr %xmac_offset to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %xmac_offset, align 2
  %conv18 = zext i16 %70 to i32
  %shl.i = shl nuw nsw i32 %conv18, 1
  %or.i68 = or i32 %shl.i, %add.i
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %1, align 4
  %add.ptr.i.i69 = getelementptr i8, ptr %72, i32 %or.i68
  %73 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i69) #20, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %shl4.i = add nuw nsw i32 %shl.i, 4
  %or5.i70 = or i32 %shl4.i, %add.i
  %74 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %1, align 4
  %add.ptr.i14.i71 = getelementptr i8, ptr %75, i32 %or5.i70
  %76 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i14.i71) #20, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %77 = zext i16 %76 to i32
  %78 = zext i16 %73 to i32
  %79 = shl nuw i32 %78, 16
  %80 = or i32 %79, %77
  %81 = tail call i32 @llvm.bswap.i32(i32 %80) #20
  %conv20 = zext i32 %81 to i64
  %arrayidx21 = getelementptr i64, ptr %data, i32 %i.074
  %82 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 %conv20, ptr %arrayidx21, align 8
  %inc = add nuw nsw i32 %i.074, 1
  %exitcond.not = icmp eq i32 %inc, 21
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @yukon_get_stats(ptr nocapture noundef readonly %skge, ptr nocapture noundef writeonly %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %skge to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skge, align 128
  %port2 = getelementptr inbounds %struct.skge_port, ptr %skge, i32 0, i32 3
  %2 = ptrtoint ptr %port2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port2, align 8
  %mul.i = shl i32 %3, 12
  %add.i = add i32 %mul.i, 10240
  %add1.i = add i32 %mul.i, 10728
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %add1.i
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #20, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %add5.i = add i32 %mul.i, 10732
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %8, i32 %add5.i
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i11.i) #20, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %10 = zext i16 %9 to i32
  %11 = zext i16 %6 to i32
  %12 = shl nuw i32 %11, 16
  %13 = or i32 %12, %10
  %add1.i34 = add i32 %mul.i, 10720
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %add.ptr.i.i35 = getelementptr i8, ptr %15, i32 %add1.i34
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i35) #20, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %add5.i36 = add i32 %mul.i, 10724
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %add.ptr.i11.i37 = getelementptr i8, ptr %18, i32 %add5.i36
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i11.i37) #20, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %20 = zext i16 %19 to i32
  %21 = zext i16 %16 to i32
  %22 = shl nuw i32 %21, 16
  %23 = or i32 %22, %20
  %24 = zext i32 %13 to i64
  %25 = zext i32 %23 to i64
  %26 = shl nuw i64 %25, 32
  %27 = or i64 %26, %24
  %28 = tail call i64 @llvm.bswap.i64(i64 %27)
  %29 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %data, align 8
  %add1.i40 = add i32 %mul.i, 10552
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %add.ptr.i.i41 = getelementptr i8, ptr %31, i32 %add1.i40
  %32 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i41) #20, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %add5.i42 = add i32 %mul.i, 10556
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  %add.ptr.i11.i43 = getelementptr i8, ptr %34, i32 %add5.i42
  %35 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i11.i43) #20, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %36 = zext i16 %35 to i32
  %37 = zext i16 %32 to i32
  %38 = shl nuw i32 %37, 16
  %39 = or i32 %38, %36
  %add1.i46 = add i32 %mul.i, 10544
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 4
  %add.ptr.i.i47 = getelementptr i8, ptr %41, i32 %add1.i46
  %42 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i47) #20, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %add5.i48 = add i32 %mul.i, 10548
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  %add.ptr.i11.i49 = getelementptr i8, ptr %44, i32 %add5.i48
  %45 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i11.i49) #20, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %46 = zext i16 %45 to i32
  %47 = zext i16 %42 to i32
  %48 = shl nuw i32 %47, 16
  %49 = or i32 %48, %46
  %50 = zext i32 %39 to i64
  %51 = zext i32 %49 to i64
  %52 = shl nuw i64 %51, 32
  %53 = or i64 %52, %50
  %54 = tail call i64 @llvm.bswap.i64(i64 %53)
  %arrayidx11 = getelementptr i64, ptr %data, i32 1
  %55 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %54, ptr %arrayidx11, align 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.056 = phi i32 [ 2, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %gma_offset = getelementptr [21 x %struct.skge_stat], ptr @skge_stats, i32 0, i32 %i.056, i32 2
  %56 = ptrtoint ptr %gma_offset to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %gma_offset, align 2
  %conv14 = zext i16 %57 to i32
  %add1.i52 = add i32 %add.i, %conv14
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %1, align 4
  %add.ptr.i.i53 = getelementptr i8, ptr %59, i32 %add1.i52
  %60 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i53) #20, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %add5.i54 = add i32 %add1.i52, 4
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %1, align 4
  %add.ptr.i11.i55 = getelementptr i8, ptr %62, i32 %add5.i54
  %63 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i11.i55) #20, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %64 = zext i16 %63 to i32
  %65 = zext i16 %60 to i32
  %66 = shl nuw i32 %65, 16
  %67 = or i32 %66, %64
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #20
  %conv16 = zext i32 %68 to i64
  %arrayidx17 = getelementptr i64, ptr %data, i32 %i.056
  %69 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %conv16, ptr %arrayidx17, align 8
  %inc = add nuw nsw i32 %i.056, 1
  %exitcond.not = icmp eq i32 %inc, 21
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @skge_get_drvinfo(ptr nocapture noundef readonly %dev, ptr noundef %info) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call1 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str.1, i32 noundef 32) #20
  %version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 2
  %call3 = tail call i32 @strlcpy(ptr noundef %version, ptr noundef nonnull @.str.2, i32 noundef 32) #20
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 128
  %pdev = getelementptr inbounds %struct.skge_hw, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44, i32 3
  %4 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.pci_name.exit_crit_edge

entry.pci_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %7, %if.end.i.i ], [ %5, %entry.pci_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %call6 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i.i, i32 noundef 32) #20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @skge_get_regs_len(ptr nocapture noundef readnone %dev) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 16384
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @skge_get_regs(ptr nocapture noundef readonly %dev, ptr nocapture noundef %regs, ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 128
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %version = getelementptr inbounds %struct.ethtool_regs, ptr %regs, i32 0, i32 1
  %4 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %version, align 4
  %len = getelementptr inbounds %struct.ethtool_regs, ptr %regs, i32 0, i32 2
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  %7 = call ptr @memset(ptr %p, i32 0, i32 %6)
  tail call void @mmiocpy(ptr noundef %p, ptr noundef %3, i32 noundef 384) #20
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 400, i32 %9)
  %cmp = icmp ugt i32 %9, 400
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr = getelementptr i8, ptr %p, i32 400
  %add.ptr3 = getelementptr i8, ptr %3, i32 400
  %sub = add i32 %9, -400
  tail call void @mmiocpy(ptr noundef %add.ptr, ptr noundef %add.ptr3, i32 noundef %sub) #20
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @skge_get_wol(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %wol) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 128
  %chip_id.i.i = getelementptr inbounds %struct.skge_hw, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %chip_id.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %chip_id.i.i, align 4
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.143)
  switch i8 %3, label %entry.if.end6.i_crit_edge [
    i8 10, label %entry.wol_supported.exit_crit_edge
    i8 -80, label %land.lhs.true.i
  ]

entry.wol_supported.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %wol_supported.exit

entry.if.end6.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end6.i

land.lhs.true.i:                                  ; preds = %entry
  %chip_rev.i = getelementptr inbounds %struct.skge_hw, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %chip_rev.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %chip_rev.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp3.i = icmp eq i8 %6, 0
  br i1 %cmp3.i, label %land.lhs.true.i.wol_supported.exit_crit_edge, label %land.lhs.true.i.if.end6.i_crit_edge

land.lhs.true.i.if.end6.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end6.i

land.lhs.true.i.wol_supported.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %wol_supported.exit

if.end6.i:                                        ; preds = %land.lhs.true.i.if.end6.i_crit_edge, %entry.if.end6.i_crit_edge
  br label %wol_supported.exit

wol_supported.exit:                               ; preds = %if.end6.i, %land.lhs.true.i.wol_supported.exit_crit_edge, %entry.wol_supported.exit_crit_edge
  %retval.0.i = phi i32 [ 33, %if.end6.i ], [ 0, %entry.wol_supported.exit_crit_edge ], [ 0, %land.lhs.true.i.wol_supported.exit_crit_edge ]
  %supported = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 1
  %7 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %retval.0.i, ptr %supported, align 4
  %wol2 = getelementptr i8, ptr %dev, i32 2637
  %8 = ptrtoint ptr %wol2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %wol2, align 1
  %conv = zext i8 %9 to i32
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %10 = ptrtoint ptr %wolopts to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %wolopts, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @skge_set_wol(ptr nocapture noundef %dev, ptr nocapture noundef readonly %wol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 128
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %2 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wolopts, align 4
  %chip_id.i.i = getelementptr inbounds %struct.skge_hw, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %chip_id.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %chip_id.i.i, align 4
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.144)
  switch i8 %5, label %entry.if.end6.i_crit_edge [
    i8 10, label %entry.wol_supported.exit_crit_edge
    i8 -80, label %land.lhs.true.i
  ]

entry.wol_supported.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %wol_supported.exit

entry.if.end6.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end6.i

land.lhs.true.i:                                  ; preds = %entry
  %chip_rev.i = getelementptr inbounds %struct.skge_hw, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %chip_rev.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %chip_rev.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp3.i = icmp eq i8 %8, 0
  br i1 %cmp3.i, label %land.lhs.true.i.wol_supported.exit_crit_edge, label %land.lhs.true.i.if.end6.i_crit_edge

land.lhs.true.i.if.end6.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end6.i

land.lhs.true.i.wol_supported.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %wol_supported.exit

if.end6.i:                                        ; preds = %land.lhs.true.i.if.end6.i_crit_edge, %entry.if.end6.i_crit_edge
  br label %wol_supported.exit

wol_supported.exit:                               ; preds = %if.end6.i, %land.lhs.true.i.wol_supported.exit_crit_edge, %entry.wol_supported.exit_crit_edge
  %retval.0.i = phi i32 [ -34, %if.end6.i ], [ -1, %entry.wol_supported.exit_crit_edge ], [ -1, %land.lhs.true.i.wol_supported.exit_crit_edge ]
  %and = and i32 %retval.0.i, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %wol_supported.exit.cleanup_crit_edge

wol_supported.exit.cleanup_crit_edge:             ; preds = %wol_supported.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

lor.lhs.false:                                    ; preds = %wol_supported.exit
  %pdev = getelementptr inbounds %struct.skge_hw, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev, align 4
  %can_wakeup.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44, i32 12, i32 1
  %11 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  %conv = trunc i32 %3 to i8
  %wol6 = getelementptr i8, ptr %dev, i32 2637
  %12 = ptrtoint ptr %wol6 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %wol6, align 1
  %13 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev, align 4
  %dev8 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %tobool10 = icmp ne i8 %conv, 0
  %call11 = tail call i32 @device_set_wakeup_enable(ptr noundef %dev8, i1 noundef zeroext %tobool10) #20
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %wol_supported.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %wol_supported.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @skge_get_msglevel(ptr nocapture noundef readonly %netdev) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %netdev, i32 2540
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @skge_set_msglevel(ptr nocapture noundef writeonly %netdev, i32 noundef %value) #16 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %netdev, i32 2540
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %value, ptr %msg_enable, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @skge_nway_reset(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %autoneg = getelementptr i8, ptr %dev, i32 2638
  %0 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %autoneg, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp.not = icmp eq i8 %1, 1
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 128
  %port2.i = getelementptr i8, ptr %dev, i32 2536
  %6 = ptrtoint ptr %port2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port2.i, align 8
  %arrayidx.i = getelementptr %struct.skge_hw, ptr %5, i32 0, i32 4, i32 %7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %netdev.i = getelementptr i8, ptr %dev, i32 2308
  %10 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %netdev.i, align 4
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 103
  %12 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %13, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.i) #20
  %14 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %netdev.i, align 4
  tail call void @netif_carrier_off(ptr noundef %15) #20
  %phy_lock.i = getelementptr inbounds %struct.skge_hw, ptr %5, i32 0, i32 13
  tail call void @_raw_spin_lock_bh(ptr noundef %phy_lock.i) #20
  %chip_id.i.i = getelementptr inbounds %struct.skge_hw, ptr %5, i32 0, i32 5
  %16 = ptrtoint ptr %chip_id.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %chip_id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %17)
  %cmp.i.i = icmp eq i8 %17, 10
  br i1 %cmp.i.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  tail call fastcc void @genesis_reset(ptr noundef %5, i32 noundef %7) #20
  tail call fastcc void @genesis_mac_init(ptr noundef %5, i32 noundef %7) #20
  br label %skge_phy_reset.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  tail call fastcc void @yukon_reset(ptr noundef %5, i32 noundef %7) #20
  tail call fastcc void @yukon_init(ptr noundef %5, i32 noundef %7) #20
  br label %skge_phy_reset.exit

skge_phy_reset.exit:                              ; preds = %if.else.i, %if.then.i
  tail call void @_raw_spin_unlock_bh(ptr noundef %phy_lock.i) #20
  tail call void @skge_set_multicast(ptr noundef %9) #20
  br label %cleanup

cleanup:                                          ; preds = %skge_phy_reset.exit, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %skge_phy_reset.exit ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @skge_get_eeprom_len(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %reg2 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg2) #20
  %0 = ptrtoint ptr %reg2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg2, align 4, !annotation !312
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr.i, align 128
  %pdev = getelementptr inbounds %struct.skge_hw, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 4
  %call1 = call i32 @pci_read_config_dword(ptr noundef %4, i32 noundef 68, ptr noundef nonnull %reg2) #20
  %5 = ptrtoint ptr %reg2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg2, align 4
  %and = lshr i32 %6, 14
  %shr = and i32 %and, 7
  %add = or i32 %shr, 8
  %shl = shl nuw i32 1, %add
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg2) #20
  ret i32 %shl
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @skge_get_eeprom(ptr nocapture noundef readonly %dev, ptr nocapture noundef %eeprom, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  %offset.addr.i = alloca i16, align 2
  %val.i = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 128
  %pdev1 = getelementptr inbounds %struct.skge_hw, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev1, align 4
  %call2 = tail call zeroext i8 @pci_find_capability(ptr noundef %3, i32 noundef 3) #20
  %conv = zext i8 %call2 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call2)
  %tobool.not = icmp eq i8 %call2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %offset3 = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 2
  %4 = ptrtoint ptr %offset3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset3, align 4
  %len = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 3
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %magic = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 1
  %8 = ptrtoint ptr %magic to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1724667205, ptr %magic, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp28 = icmp sgt i32 %7, 0
  br i1 %cmp28, label %while.body.lr.ph, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

while.body.lr.ph:                                 ; preds = %if.end
  %add.i = add nuw nsw i32 %conv, 2
  %add3.i = add nuw nsw i32 %conv, 4
  br label %while.body

while.body:                                       ; preds = %skge_vpd_read.exit.while.body_crit_edge, %while.body.lr.ph
  %offset.0.in31 = phi i32 [ %5, %while.body.lr.ph ], [ %add, %skge_vpd_read.exit.while.body_crit_edge ]
  %length.030 = phi i32 [ %7, %while.body.lr.ph ], [ %sub, %skge_vpd_read.exit.while.body_crit_edge ]
  %data.addr.029 = phi ptr [ %data, %while.body.lr.ph ], [ %add.ptr, %skge_vpd_read.exit.while.body_crit_edge ]
  %offset.0 = trunc i32 %offset.0.in31 to i16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %offset.addr.i)
  %9 = ptrtoint ptr %offset.addr.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %offset.0, ptr %offset.addr.i, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #20
  %10 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %val.i, align 4, !annotation !312
  %call.i = call i32 @pci_write_config_word(ptr noundef %3, i32 noundef %add.i, i16 noundef zeroext %offset.0) #20
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %while.body
  %call2.i = call i32 @pci_read_config_word(ptr noundef %3, i32 noundef %add.i, ptr noundef nonnull %offset.addr.i) #20
  %11 = ptrtoint ptr %offset.addr.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %offset.addr.i, align 2
  %tobool.not.i = icmp sgt i16 %12, -1
  br i1 %tobool.not.i, label %do.body.i.do.body.i_crit_edge, label %skge_vpd_read.exit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body.i

skge_vpd_read.exit:                               ; preds = %do.body.i
  %call4.i = call i32 @pci_read_config_dword(ptr noundef %3, i32 noundef %add3.i, ptr noundef nonnull %val.i) #20
  %13 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #20
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %offset.addr.i)
  %15 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %val, align 4
  %16 = call i32 @llvm.smin.i32(i32 %length.030, i32 4)
  %17 = call ptr @memcpy(ptr %data.addr.029, ptr %val, i32 %16)
  %sub = sub i32 %length.030, %16
  %add.ptr = getelementptr i8, ptr %data.addr.029, i32 %16
  %conv9 = and i32 %offset.0.in31, 65535
  %add = add nsw i32 %conv9, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val)
  %cmp = icmp sgt i32 %sub, 0
  br i1 %cmp, label %skge_vpd_read.exit.while.body_crit_edge, label %skge_vpd_read.exit.cleanup_crit_edge

skge_vpd_read.exit.cleanup_crit_edge:             ; preds = %skge_vpd_read.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

skge_vpd_read.exit.while.body_crit_edge:          ; preds = %skge_vpd_read.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body

cleanup:                                          ; preds = %skge_vpd_read.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %skge_vpd_read.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @skge_set_eeprom(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %eeprom, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  %offset.addr.i40 = alloca i16, align 2
  %offset.addr.i = alloca i16, align 2
  %val.i = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 128
  %pdev1 = getelementptr inbounds %struct.skge_hw, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev1, align 4
  %call2 = tail call zeroext i8 @pci_find_capability(ptr noundef %3, i32 noundef 3) #20
  %conv = zext i8 %call2 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call2)
  %tobool.not = icmp eq i8 %call2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %offset3 = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 2
  %4 = ptrtoint ptr %offset3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset3, align 4
  %len = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 3
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %magic = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 1
  %8 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %magic, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1724667205, i32 %9)
  %cmp.not = icmp eq i32 %9, -1724667205
  br i1 %cmp.not, label %while.cond.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

while.cond.preheader:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp846 = icmp sgt i32 %7, 0
  br i1 %cmp846, label %while.body.lr.ph, label %while.cond.preheader.cleanup_crit_edge

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %add.i = add nuw nsw i32 %conv, 2
  %add3.i = add nuw nsw i32 %conv, 4
  br label %while.body

while.body:                                       ; preds = %skge_vpd_write.exit.while.body_crit_edge, %while.body.lr.ph
  %offset.0.in49 = phi i32 [ %5, %while.body.lr.ph ], [ %add, %skge_vpd_write.exit.while.body_crit_edge ]
  %length.048 = phi i32 [ %7, %while.body.lr.ph ], [ %sub, %skge_vpd_write.exit.while.body_crit_edge ]
  %data.addr.047 = phi ptr [ %data, %while.body.lr.ph ], [ %add.ptr, %skge_vpd_write.exit.while.body_crit_edge ]
  %offset.050 = trunc i32 %offset.0.in49 to i16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val)
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %val, align 4
  %11 = call i32 @llvm.umin.i32(i32 %length.048, i32 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %length.048)
  %cmp12 = icmp ult i32 %length.048, 4
  br i1 %cmp12, label %if.then14, label %while.body.if.end16_crit_edge

while.body.if.end16_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end16

if.then14:                                        ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %offset.addr.i)
  %12 = ptrtoint ptr %offset.addr.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %offset.050, ptr %offset.addr.i, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #20
  %13 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %val.i, align 4, !annotation !312
  %call.i = call i32 @pci_write_config_word(ptr noundef %3, i32 noundef %add.i, i16 noundef zeroext %offset.050) #20
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.then14
  %call2.i = call i32 @pci_read_config_word(ptr noundef %3, i32 noundef %add.i, ptr noundef nonnull %offset.addr.i) #20
  %14 = ptrtoint ptr %offset.addr.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %offset.addr.i, align 2
  %tobool.not.i = icmp sgt i16 %15, -1
  br i1 %tobool.not.i, label %do.body.i.do.body.i_crit_edge, label %skge_vpd_read.exit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body.i

skge_vpd_read.exit:                               ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #22
  %call4.i = call i32 @pci_read_config_dword(ptr noundef %3, i32 noundef %add3.i, ptr noundef nonnull %val.i) #20
  %16 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #20
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %offset.addr.i)
  %18 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %val, align 4
  br label %if.end16

if.end16:                                         ; preds = %skge_vpd_read.exit, %while.body.if.end16_crit_edge
  %19 = call ptr @memcpy(ptr %val, ptr %data.addr.047, i32 %11)
  %20 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %20)
  %val.0.val.0.val.0. = load i32, ptr %val, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %offset.addr.i40)
  %21 = ptrtoint ptr %offset.addr.i40 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %offset.050, ptr %offset.addr.i40, align 2
  %call.i42 = call i32 @pci_write_config_dword(ptr noundef %3, i32 noundef %add3.i, i32 noundef %val.0.val.0.val.0.) #20
  %22 = or i16 %offset.050, -32768
  %call3.i = call i32 @pci_write_config_word(ptr noundef %3, i32 noundef %add.i, i16 noundef zeroext %22) #20
  br label %do.body.i44

do.body.i44:                                      ; preds = %do.body.i44.do.body.i44_crit_edge, %if.end16
  %call5.i = call i32 @pci_read_config_word(ptr noundef %3, i32 noundef %add.i, ptr noundef nonnull %offset.addr.i40) #20
  %23 = ptrtoint ptr %offset.addr.i40 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %offset.addr.i40, align 2
  %tobool.not.i43 = icmp sgt i16 %24, -1
  br i1 %tobool.not.i43, label %skge_vpd_write.exit, label %do.body.i44.do.body.i44_crit_edge

do.body.i44.do.body.i44_crit_edge:                ; preds = %do.body.i44
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body.i44

skge_vpd_write.exit:                              ; preds = %do.body.i44
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %offset.addr.i40)
  %sub = sub i32 %length.048, %11
  %add.ptr = getelementptr i8, ptr %data.addr.047, i32 %11
  %conv17 = and i32 %offset.0.in49, 65535
  %add = add nuw nsw i32 %conv17, %11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val)
  %cmp8 = icmp sgt i32 %sub, 0
  br i1 %cmp8, label %skge_vpd_write.exit.while.body_crit_edge, label %skge_vpd_write.exit.cleanup_crit_edge

skge_vpd_write.exit.cleanup_crit_edge:            ; preds = %skge_vpd_write.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

skge_vpd_write.exit.while.body_crit_edge:         ; preds = %skge_vpd_write.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body

cleanup:                                          ; preds = %skge_vpd_write.exit.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %while.cond.preheader.cleanup_crit_edge ], [ 0, %skge_vpd_write.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @skge_get_coalesce(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %ecmd, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 128
  %port2 = getelementptr i8, ptr %dev, i32 2536
  %2 = ptrtoint ptr %port2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port2, align 8
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ecmd, i32 0, i32 1
  %4 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %rx_coalesce_usecs, align 4
  %tx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ecmd, i32 0, i32 5
  %5 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %tx_coalesce_usecs, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %add.ptr.i28 = getelementptr i8, ptr %7, i32 328
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28) #20, !srcloc !308
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !309
  %9 = and i32 %8, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %entry.if.end17_crit_edge, label %if.then

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end17

if.then:                                          ; preds = %entry
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %add.ptr.i29 = getelementptr i8, ptr %11, i32 320
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29) #20, !srcloc !308
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !309
  %mul.i = mul i32 %13, 1000
  %chip_id.i.i.i = getelementptr inbounds %struct.skge_hw, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %chip_id.i.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %chip_id.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %15)
  %cmp.i.i.i = icmp eq i8 %15, 10
  %cond.i.i = select i1 %cmp.i.i.i, i32 53125, i32 78125
  %div.i = udiv i32 %mul.i, %cond.i.i
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %add.ptr.i30 = getelementptr i8, ptr %17, i32 332
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i30) #20, !srcloc !308
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !309
  %arrayidx = getelementptr [2 x i32], ptr @rxirqmask, i32 0, i32 %3
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  %and7 = and i32 %21, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.then.if.end_crit_edge, label %if.then9

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  %22 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %div.i, ptr %rx_coalesce_usecs, align 4
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.then.if.end_crit_edge
  %arrayidx11 = getelementptr [2 x i32], ptr @txirqmask, i32 0, i32 %3
  %23 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx11, align 4
  %and12 = and i32 %24, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end.if.end17_crit_edge, label %if.then14

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end17

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %25 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %div.i, ptr %tx_coalesce_usecs, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end.if.end17_crit_edge, %entry.if.end17_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @skge_set_coalesce(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %ecmd, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 128
  %port2 = getelementptr i8, ptr %dev, i32 2536
  %2 = ptrtoint ptr %port2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port2, align 8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %add.ptr.i68 = getelementptr i8, ptr %5, i32 332
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i68) #20, !srcloc !308
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !309
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ecmd, i32 0, i32 1
  %8 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_coalesce_usecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %arrayidx = getelementptr [2 x i32], ptr @rxirqmask, i32 0, i32 %3
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %neg = xor i32 %11, -1
  %and = and i32 %7, %neg
  br label %if.end12

if.else:                                          ; preds = %entry
  %12 = add i32 %9, -33334
  call void @__sanitizer_cov_trace_const_cmp4(i32 -33309, i32 %12)
  %13 = icmp ult i32 %12, -33309
  br i1 %13, label %if.else.cleanup_crit_edge, label %if.else9

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.else9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  %arrayidx10 = getelementptr [2 x i32], ptr @rxirqmask, i32 0, i32 %3
  %14 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx10, align 4
  %or = or i32 %15, %7
  br label %if.end12

if.end12:                                         ; preds = %if.else9, %if.then
  %msk.0 = phi i32 [ %and, %if.then ], [ %or, %if.else9 ]
  %delay.0 = phi i32 [ 25, %if.then ], [ %9, %if.else9 ]
  %tx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ecmd, i32 0, i32 5
  %16 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_coalesce_usecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp13 = icmp eq i32 %17, 0
  br i1 %cmp13, label %if.then14, label %if.else18

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #22
  %arrayidx15 = getelementptr [2 x i32], ptr @txirqmask, i32 0, i32 %3
  %18 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx15, align 4
  %neg16 = xor i32 %19, -1
  %and17 = and i32 %msk.0, %neg16
  br label %if.end31

if.else18:                                        ; preds = %if.end12
  %20 = add i32 %17, -33334
  call void @__sanitizer_cov_trace_const_cmp4(i32 -33309, i32 %20)
  %21 = icmp ult i32 %20, -33309
  br i1 %21, label %if.else18.cleanup_crit_edge, label %if.else25

if.else18.cleanup_crit_edge:                      ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.else25:                                        ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #22
  %arrayidx26 = getelementptr [2 x i32], ptr @txirqmask, i32 0, i32 %3
  %22 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx26, align 4
  %or27 = or i32 %23, %msk.0
  %24 = tail call i32 @llvm.umin.i32(i32 %delay.0, i32 %9)
  br label %if.end31

if.end31:                                         ; preds = %if.else25, %if.then14
  %msk.1 = phi i32 [ %and17, %if.then14 ], [ %or27, %if.else25 ]
  %delay.1 = phi i32 [ %delay.0, %if.then14 ], [ %24, %if.else25 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !306
  tail call void @arm_heavy_mb() #20
  %25 = tail call i32 @llvm.bswap.i32(i32 %msk.1) #20
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %add.ptr.i69 = getelementptr i8, ptr %27, i32 332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69, i32 %25) #20, !srcloc !307
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %msk.1)
  %cmp32 = icmp eq i32 %msk.1, 0
  br i1 %cmp32, label %if.then33, label %if.else34

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !306
  tail call void @arm_heavy_mb() #20
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %add.ptr.i70 = getelementptr i8, ptr %29, i32 328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i70, i32 33554432) #20, !srcloc !307
  br label %cleanup

if.else34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #22
  %chip_id.i.i.i = getelementptr inbounds %struct.skge_hw, ptr %1, i32 0, i32 5
  %30 = ptrtoint ptr %chip_id.i.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %chip_id.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %31)
  %cmp.i.i.i = icmp eq i8 %31, 10
  %cond.i.i = select i1 %cmp.i.i.i, i32 53125, i32 78125
  %mul.i = mul nuw i32 %cond.i.i, %delay.1
  %div.i = udiv i32 %mul.i, 1000
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !306
  tail call void @arm_heavy_mb() #20
  %32 = tail call i32 @llvm.bswap.i32(i32 %div.i) #20
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  %add.ptr.i71 = getelementptr i8, ptr %34, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i71, i32 %32) #20, !srcloc !307
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !306
  tail call void @arm_heavy_mb() #20
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %add.ptr.i72 = getelementptr i8, ptr %36, i32 328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i72, i32 67108864) #20, !srcloc !307
  br label %cleanup

cleanup:                                          ; preds = %if.else34, %if.then33, %if.else18.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.else.cleanup_crit_edge ], [ -22, %if.else18.cleanup_crit_edge ], [ 0, %if.else34 ], [ 0, %if.then33 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @skge_get_ring_param(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %p, ptr nocapture noundef readnone %kernel_p, ptr nocapture noundef readnone %extack) #17 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %rx_max_pending to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 4096, ptr %rx_max_pending, align 4
  %tx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %p, i32 0, i32 4
  %1 = ptrtoint ptr %tx_max_pending to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1024, ptr %tx_max_pending, align 4
  %count = getelementptr i8, ptr %dev, i32 2572
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 4
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %p, i32 0, i32 5
  %4 = ptrtoint ptr %rx_pending to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %rx_pending, align 4
  %count1 = getelementptr i8, ptr %dev, i32 2556
  %5 = ptrtoint ptr %count1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count1, align 4
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %p, i32 0, i32 8
  %7 = ptrtoint ptr %tx_pending to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %tx_pending, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @skge_set_ring_param(ptr noundef %dev, ptr nocapture noundef readonly %p, ptr nocapture noundef readnone %kernel_p, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %p, i32 0, i32 5
  %0 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_pending, align 4
  %2 = add i32 %1, -4097
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4096, i32 %2)
  %3 = icmp ult i32 %2, -4096
  br i1 %3, label %entry.cleanup_crit_edge, label %lor.lhs.false3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

lor.lhs.false3:                                   ; preds = %entry
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %p, i32 0, i32 8
  %4 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_pending, align 4
  %6 = add i32 %5, -1025
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1007, i32 %6)
  %7 = icmp ult i32 %6, -1007
  br i1 %7, label %lor.lhs.false3.cleanup_crit_edge, label %if.end

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  %count = getelementptr i8, ptr %dev, i32 2572
  %8 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %1, ptr %count, align 4
  %9 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_pending, align 4
  %count10 = getelementptr i8, ptr %dev, i32 2556
  %11 = ptrtoint ptr %count10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %count10, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %12 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end.cleanup_crit_edge, label %if.then12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then12:                                        ; preds = %if.end
  %call13 = tail call i32 @skge_down(ptr noundef %dev)
  %call14 = tail call i32 @skge_up(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %if.then12.cleanup_crit_edge, label %if.then15

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then15:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @dev_close(ptr noundef %dev) #20
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.then12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false3.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call14, %if.then15 ], [ 0, %if.then12.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @skge_get_pauseparam(ptr nocapture noundef readonly %dev, ptr nocapture noundef %ecmd) #17 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %flow_control = getelementptr i8, ptr %dev, i32 2628
  %0 = ptrtoint ptr %flow_control to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flow_control, align 4
  %2 = add i32 %1, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %3 = icmp ult i32 %2, 2
  %lor.ext = zext i1 %3 to i32
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %ecmd, i32 0, i32 2
  %4 = ptrtoint ptr %rx_pause to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %lor.ext, ptr %rx_pause, align 4
  br i1 %3, label %entry.lor.end7_crit_edge, label %lor.rhs4

entry.lor.end7_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %lor.end7

lor.rhs4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %5 = ptrtoint ptr %flow_control to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flow_control, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp6 = icmp eq i32 %6, 2
  %phi.cast = zext i1 %cmp6 to i32
  br label %lor.end7

lor.end7:                                         ; preds = %lor.rhs4, %entry.lor.end7_crit_edge
  %spec.select23 = phi i32 [ 1, %entry.lor.end7_crit_edge ], [ %phi.cast, %lor.rhs4 ]
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %ecmd, i32 0, i32 3
  %7 = ptrtoint ptr %tx_pause to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %spec.select23, ptr %tx_pause, align 4
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %ecmd, i32 0, i32 1
  %8 = ptrtoint ptr %autoneg to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %spec.select23, ptr %autoneg, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @skge_set_pauseparam(ptr noundef %dev, ptr nocapture noundef readonly %ecmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %flow_control.i = getelementptr i8, ptr %dev, i32 2628
  %0 = ptrtoint ptr %flow_control.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flow_control.i, align 4
  %2 = add i32 %1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %2)
  %3 = icmp ult i32 %2, 3
  %spec.select23.i = zext i1 %3 to i32
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %ecmd, i32 0, i32 1
  %4 = ptrtoint ptr %autoneg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %autoneg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %spec.select23.i)
  %cmp.not = icmp eq i32 %5, %spec.select23.i
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %cond = select i1 %tobool.not, i32 3, i32 1
  br label %if.end27

if.else:                                          ; preds = %entry
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %ecmd, i32 0, i32 2
  %6 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  %tx_pause19 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %ecmd, i32 0, i32 3
  %8 = ptrtoint ptr %tx_pause19 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_pause19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool20.not = icmp eq i32 %9, 0
  br i1 %tobool3.not, label %land.lhs.true18, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  br i1 %tobool20.not, label %land.lhs.true10, label %land.lhs.true.if.end27_crit_edge

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end27

land.lhs.true10:                                  ; preds = %land.lhs.true
  %10 = ptrtoint ptr %tx_pause19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_pause19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool12.not = icmp eq i32 %11, 0
  br i1 %tobool12.not, label %land.lhs.true10.if.end27_crit_edge, label %land.lhs.true10.if.else23_crit_edge

land.lhs.true10.if.else23_crit_edge:              ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else23

land.lhs.true10.if.end27_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end27

land.lhs.true18:                                  ; preds = %if.else
  br i1 %tobool20.not, label %land.lhs.true18.if.else23_crit_edge, label %land.lhs.true18.if.end27_crit_edge

land.lhs.true18.if.end27_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end27

land.lhs.true18.if.else23_crit_edge:              ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else23

if.else23:                                        ; preds = %land.lhs.true18.if.else23_crit_edge, %land.lhs.true10.if.else23_crit_edge
  br label %if.end27

if.end27:                                         ; preds = %if.else23, %land.lhs.true18.if.end27_crit_edge, %land.lhs.true10.if.end27_crit_edge, %land.lhs.true.if.end27_crit_edge, %if.then
  %.sink = phi i32 [ 1, %if.else23 ], [ %cond, %if.then ], [ 3, %land.lhs.true.if.end27_crit_edge ], [ 4, %land.lhs.true10.if.end27_crit_edge ], [ 2, %land.lhs.true18.if.end27_crit_edge ]
  %12 = ptrtoint ptr %flow_control.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %.sink, ptr %flow_control.i, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %13 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end27.cleanup_crit_edge, label %if.then29

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then29:                                        ; preds = %if.end27
  %call30 = tail call i32 @skge_down(ptr noundef %dev)
  %call31 = tail call i32 @skge_up(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then29.cleanup_crit_edge, label %if.then33

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then33:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @dev_close(ptr noundef %dev) #20
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %if.then29.cleanup_crit_edge, %if.end27.cleanup_crit_edge
  %retval.0 = phi i32 [ %call31, %if.then33 ], [ 0, %if.then29.cleanup_crit_edge ], [ 0, %if.end27.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @skge_get_strings(ptr nocapture noundef readnone %dev, i32 noundef %stringset, ptr nocapture noundef writeonly %data) #18 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %stringset)
  %cond = icmp eq i32 %stringset, 1
  br i1 %cond, label %for.body.preheader, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %0 = call ptr @memcpy(ptr %data, ptr @skge_stats, i32 32)
  %add.ptr.1 = getelementptr i8, ptr %data, i32 32
  %1 = call ptr @memcpy(ptr %add.ptr.1, ptr getelementptr inbounds ([21 x %struct.skge_stat], ptr @skge_stats, i32 0, i32 1), i32 32)
  %add.ptr.2 = getelementptr i8, ptr %data, i32 64
  %2 = call ptr @memcpy(ptr %add.ptr.2, ptr getelementptr inbounds ([21 x %struct.skge_stat], ptr @skge_stats, i32 0, i32 2), i32 32)
  %add.ptr.3 = getelementptr i8, ptr %data, i32 96
  %3 = call ptr @memcpy(ptr %add.ptr.3, ptr getelementptr inbounds ([21 x %struct.skge_stat], ptr @skge_stats, i32 0, i32 3), i32 32)
  %add.ptr.4 = getelementptr i8, ptr %data, i32 128
  %4 = call ptr @memcpy(ptr %add.ptr.4, ptr getelementptr inbounds ([21 x %struct.skge_stat], ptr @skge_stats, i32 0, i32 4), i32 32)
  %add.ptr.5 = getelementptr i8, ptr %data, i32 160
  %5 = call ptr @memcpy(ptr %add.ptr.5, ptr getelementptr inbounds ([21 x %struct.skge_stat], ptr @skge_stats, i32 0, i32 5), i32 32)
  %add.ptr.6 = getelementptr i8, ptr %data, i32 192
  %6 = call ptr @memcpy(ptr %add.ptr.6, ptr getelementptr inbounds ([21 x %struct.skge_stat], ptr @skge_stats, i32 0, i32 6), i32 32)
  %add.ptr.7 = getelementptr i8, ptr %data, i32 224
  %7 = call ptr @memcpy(ptr %add.ptr.7, ptr getelementptr inbounds ([21 x %struct.skge_stat], ptr @skge_stats, i32 0, i32 7), i32 32)
  %add.ptr.8 = getelementptr i8, ptr %data, i32 256
  %8 = call ptr @memcpy(ptr %add.ptr.8, ptr getelementptr inbounds ([21 x %struct.skge_stat], ptr @skge_stats, i32 0, i32 8), i32 32)
  %add.ptr.9 = getelementptr i8, ptr %data, i32 288
  %9 = call ptr @memcpy(ptr %add.ptr.9, ptr getelementptr inbounds ([21 x %struct.skge_stat], ptr @skge_stats, i32 0, i32 9), i32 32)
  %add.ptr.10 = getelementptr i8, ptr %data, i32 320
  %10 = call ptr @memcpy(ptr %add.ptr.10, ptr getelementptr inbounds ([21 x %struct.skge_stat], ptr @skge_stats, i32 0, i32 10), i32 32)
  %add.ptr.11 = getelementptr i8, ptr %data, i32 352
  %11 = call ptr @memcpy(ptr %add.ptr.11, ptr getelementptr inbounds ([21 x %struct.skge_stat], ptr @skge_stats, i32 0, i32 11), i32 32)
  %add.ptr.12 = getelementptr i8, ptr %data, i32 384
  %12 = call ptr @memcpy(ptr %add.ptr.12, ptr getelementptr inbounds ([21 x %struct.skge_stat], ptr @skge_stats, i32 0, i32 12), i32 32)
  %add.ptr.13 = getelementptr i8, ptr %data, i32 416
  %13 = call ptr @memcpy(ptr %add.ptr.13, ptr getelementptr inbounds ([21 x %struct.skge_stat], ptr @skge_stats, i32 0, i32 13), i32 32)
  %add.ptr.14 = getelementptr i8, ptr %data, i32 448
  %14 = call ptr @memcpy(ptr %add.ptr.14, ptr getelementptr inbounds ([21 x %struct.skge_stat], ptr @skge_stats, i32 0, i32 14), i32 32)
  %add.ptr.15 = getelementptr i8, ptr %data, i32 480
  %15 = call ptr @memcpy(ptr %add.ptr.15, ptr getelementptr inbounds ([21 x %struct.skge_stat], ptr @skge_stats, i32 0, i32 15), i32 32)
  %add.ptr.16 = getelementptr i8, ptr %data, i32 512
  %16 = call ptr @memcpy(ptr %add.ptr.16, ptr getelementptr inbounds ([21 x %struct.skge_stat], ptr @skge_stats, i32 0, i32 16), i32 32)
  %add.ptr.17 = getelementptr i8, ptr %data, i32 544
  %17 = call ptr @memcpy(ptr %add.ptr.17, ptr getelementptr inbounds ([21 x %struct.skge_stat], ptr @skge_stats, i32 0, i32 17), i32 32)
  %add.ptr.18 = getelementptr i8, ptr %data, i32 576
  %18 = call ptr @memcpy(ptr %add.ptr.18, ptr getelementptr inbounds ([21 x %struct.skge_stat], ptr @skge_stats, i32 0, i32 18), i32 32)
  %add.ptr.19 = getelementptr i8, ptr %data, i32 608
  %19 = call ptr @memcpy(ptr %add.ptr.19, ptr getelementptr inbounds ([21 x %struct.skge_stat], ptr @skge_stats, i32 0, i32 19), i32 32)
  %add.ptr.20 = getelementptr i8, ptr %data, i32 640
  %20 = call ptr @memcpy(ptr %add.ptr.20, ptr getelementptr inbounds ([21 x %struct.skge_stat], ptr @skge_stats, i32 0, i32 20), i32 32)
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body.preheader, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @skge_set_phys_id(ptr noundef %dev, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.145)
  switch i32 %state, label %entry.sw.epilog_crit_edge [
    i32 1, label %entry.cleanup_crit_edge
    i32 2, label %entry.sw.epilog.sink.split_crit_edge
    i32 3, label %sw.bb2
    i32 0, label %sw.bb3
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog.sink.split

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %1 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %2, 1
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb3, %sw.bb2, %entry.sw.epilog.sink.split_crit_edge
  %and1.i.i.sink = phi i32 [ %and1.i.i, %sw.bb3 ], [ 0, %sw.bb2 ], [ %state, %entry.sw.epilog.sink.split_crit_edge ]
  tail call fastcc void @skge_led(ptr noundef %add.ptr.i, i32 noundef %and1.i.i.sink)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ 2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @skge_get_ethtool_stats(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %stats, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 128
  %chip_id.i = getelementptr inbounds %struct.skge_hw, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %chip_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %3)
  %cmp.i = icmp eq i8 %3, 10
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  tail call fastcc void @genesis_get_stats(ptr noundef %add.ptr.i, ptr noundef %data)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  tail call fastcc void @yukon_get_stats(ptr noundef %add.ptr.i, ptr noundef %data)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @skge_get_sset_count(ptr nocapture noundef readnone %dev, i32 noundef %sset) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %cond = icmp eq i32 %sset, 1
  %. = select i1 %cond, i32 21, i32 -95
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @skge_get_link_ksettings(ptr nocapture noundef readonly %dev, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 128
  %copper.i = getelementptr inbounds %struct.skge_hw, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %copper.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %copper.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.else, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %chip_id.i.i = getelementptr inbounds %struct.skge_hw, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %chip_id.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %chip_id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %5)
  %cmp.i.i = icmp eq i8 %5, 10
  call void @__sanitizer_cov_trace_const_cmp1(i8 -80, i8 %5)
  %cmp.i = icmp eq i8 %5, -80
  %spec.select.i = select i1 %cmp.i, i32 239, i32 255
  %supported.0.i.ph = select i1 %cmp.i.i, i32 240, i32 %spec.select.i
  %port = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %6 = ptrtoint ptr %port to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %port, align 1
  %phy_addr = getelementptr inbounds %struct.skge_hw, ptr %1, i32 0, i32 12
  %7 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %phy_addr, align 4
  %conv = trunc i16 %8 to i8
  %phy_address = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 4
  %9 = ptrtoint ptr %phy_address to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %phy_address, align 2
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %port5 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %10 = ptrtoint ptr %port5 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 3, ptr %port5, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.i
  %supported.0.i32 = phi i32 [ 1136, %if.else ], [ %supported.0.i.ph, %if.then.i ]
  %advertising6 = getelementptr i8, ptr %dev, i32 2644
  %11 = ptrtoint ptr %advertising6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %advertising6, align 4
  %autoneg = getelementptr i8, ptr %dev, i32 2638
  %13 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %autoneg, align 2
  %autoneg8 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %15 = ptrtoint ptr %autoneg8 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %autoneg8, align 1
  %speed = getelementptr i8, ptr %dev, i32 2640
  %16 = ptrtoint ptr %speed to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %speed, align 16
  %conv9 = zext i16 %17 to i32
  %speed11 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %18 = ptrtoint ptr %speed11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv9, ptr %speed11, align 4
  %duplex = getelementptr i8, ptr %dev, i32 2639
  %19 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %duplex, align 1
  %duplex13 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %21 = ptrtoint ptr %duplex13 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %duplex13, align 4
  %link_modes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %link_modes, i32 noundef %supported.0.i32) #20
  %advertising16 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %advertising16, i32 noundef %12) #20
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @skge_set_link_ksettings(ptr noundef %dev, ptr noundef %cmd) #2 align 64 {
entry:
  %advertising = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 128
  %copper.i = getelementptr inbounds %struct.skge_hw, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %copper.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %copper.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.skge_supported_modes.exit_crit_edge, label %if.then.i

entry.skge_supported_modes.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %skge_supported_modes.exit

if.then.i:                                        ; preds = %entry
  %chip_id.i.i = getelementptr inbounds %struct.skge_hw, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %chip_id.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %chip_id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %5)
  %cmp.i.i = icmp eq i8 %5, 10
  br i1 %cmp.i.i, label %if.then.i.skge_supported_modes.exit_crit_edge, label %if.else.i

if.then.i.skge_supported_modes.exit_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %skge_supported_modes.exit

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #22
  call void @__sanitizer_cov_trace_const_cmp1(i8 -80, i8 %5)
  %cmp.i = icmp eq i8 %5, -80
  %spec.select.i = select i1 %cmp.i, i32 239, i32 255
  br label %skge_supported_modes.exit

skge_supported_modes.exit:                        ; preds = %if.else.i, %if.then.i.skge_supported_modes.exit_crit_edge, %entry.skge_supported_modes.exit_crit_edge
  %supported.0.i = phi i32 [ 240, %if.then.i.skge_supported_modes.exit_crit_edge ], [ %spec.select.i, %if.else.i ], [ 1136, %entry.skge_supported_modes.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %advertising) #20
  %6 = ptrtoint ptr %advertising to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %advertising, align 4, !annotation !312
  %advertising3 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1
  %call4 = call zeroext i1 @ethtool_convert_link_mode_to_legacy_u32(ptr noundef nonnull %advertising, ptr noundef %advertising3) #20
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %7 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %autoneg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp = icmp eq i8 %8, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %skge_supported_modes.exit
  call void @__sanitizer_cov_trace_pc() #22
  %9 = ptrtoint ptr %advertising to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %supported.0.i, ptr %advertising, align 4
  %duplex = getelementptr i8, ptr %dev, i32 2639
  %10 = ptrtoint ptr %duplex to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %duplex, align 1
  %speed = getelementptr i8, ptr %dev, i32 2640
  %11 = ptrtoint ptr %speed to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 -1, ptr %speed, align 16
  br label %if.end68

if.else:                                          ; preds = %skge_supported_modes.exit
  %speed8 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %12 = ptrtoint ptr %speed8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %speed8, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.146)
  switch i32 %13, label %if.else.cleanup80_crit_edge [
    i32 1000, label %sw.bb
    i32 100, label %sw.bb24
    i32 10, label %sw.bb41
  ]

if.else.cleanup80_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup80

sw.bb:                                            ; preds = %if.else
  %duplex10 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %15 = ptrtoint ptr %duplex10 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %duplex10, align 4
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.147)
  switch i8 %16, label %sw.bb.cleanup80_crit_edge [
    i8 1, label %sw.bb.sw.epilog_crit_edge
    i8 0, label %if.then21
  ]

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

sw.bb.cleanup80_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup80

if.then21:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.else
  %duplex26 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %18 = ptrtoint ptr %duplex26 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %duplex26, align 4
  %20 = zext i8 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.148)
  switch i8 %19, label %sw.bb24.cleanup80_crit_edge [
    i8 1, label %sw.bb24.sw.epilog_crit_edge
    i8 0, label %if.then37
  ]

sw.bb24.sw.epilog_crit_edge:                      ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

sw.bb24.cleanup80_crit_edge:                      ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup80

if.then37:                                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

sw.bb41:                                          ; preds = %if.else
  %duplex43 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %21 = ptrtoint ptr %duplex43 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %duplex43, align 4
  %23 = zext i8 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.149)
  switch i8 %22, label %sw.bb41.cleanup80_crit_edge [
    i8 1, label %sw.bb41.sw.epilog_crit_edge
    i8 0, label %if.then54
  ]

sw.bb41.sw.epilog_crit_edge:                      ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

sw.bb41.cleanup80_crit_edge:                      ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup80

if.then54:                                        ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then54, %sw.bb41.sw.epilog_crit_edge, %if.then37, %sw.bb24.sw.epilog_crit_edge, %if.then21, %sw.bb.sw.epilog_crit_edge
  %setting.0 = phi i32 [ 1, %if.then54 ], [ 4, %if.then37 ], [ 16, %if.then21 ], [ 32, %sw.bb.sw.epilog_crit_edge ], [ 8, %sw.bb24.sw.epilog_crit_edge ], [ 2, %sw.bb41.sw.epilog_crit_edge ]
  %and = and i32 %setting.0, %supported.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp58 = icmp eq i32 %and, 0
  br i1 %cmp58, label %sw.epilog.cleanup80_crit_edge, label %if.end61

sw.epilog.cleanup80_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup80

if.end61:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #22
  %conv62 = trunc i32 %13 to i16
  %speed63 = getelementptr i8, ptr %dev, i32 2640
  %24 = ptrtoint ptr %speed63 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv62, ptr %speed63, align 16
  %duplex65 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %25 = ptrtoint ptr %duplex65 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %duplex65, align 4
  %duplex66 = getelementptr i8, ptr %dev, i32 2639
  %27 = ptrtoint ptr %duplex66 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %duplex66, align 1
  br label %if.end68

if.end68:                                         ; preds = %if.end61, %if.then
  %28 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %autoneg, align 1
  %autoneg71 = getelementptr i8, ptr %dev, i32 2638
  %30 = ptrtoint ptr %autoneg71 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %autoneg71, align 2
  %31 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %advertising, align 4
  %advertising72 = getelementptr i8, ptr %dev, i32 2644
  %33 = ptrtoint ptr %advertising72 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %advertising72, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %34 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end68.cleanup80_crit_edge, label %if.then74

if.end68.cleanup80_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup80

if.then74:                                        ; preds = %if.end68
  %call75 = call i32 @skge_down(ptr noundef %dev)
  %call76 = call i32 @skge_up(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool.not = icmp eq i32 %call76, 0
  br i1 %tobool.not, label %if.then74.cleanup80_crit_edge, label %if.then77

if.then74.cleanup80_crit_edge:                    ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup80

if.then77:                                        ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #22
  call void @dev_close(ptr noundef %dev) #20
  br label %cleanup80

cleanup80:                                        ; preds = %if.then77, %if.then74.cleanup80_crit_edge, %if.end68.cleanup80_crit_edge, %sw.epilog.cleanup80_crit_edge, %sw.bb41.cleanup80_crit_edge, %sw.bb24.cleanup80_crit_edge, %sw.bb.cleanup80_crit_edge, %if.else.cleanup80_crit_edge
  %retval.1 = phi i32 [ %call76, %if.then77 ], [ -22, %sw.epilog.cleanup80_crit_edge ], [ -22, %if.else.cleanup80_crit_edge ], [ -22, %sw.bb41.cleanup80_crit_edge ], [ -22, %sw.bb24.cleanup80_crit_edge ], [ -22, %sw.bb.cleanup80_crit_edge ], [ 0, %if.then74.cleanup80_crit_edge ], [ 0, %if.end68.cleanup80_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %advertising) #20
  ret i32 %retval.1
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #19

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @pci_find_capability(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ethtool_convert_link_mode_to_legacy_u32(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_completed(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_schedule_queue(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @skge_wol_init(ptr nocapture noundef readonly %skge) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %skge to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skge, align 128
  %port2 = getelementptr inbounds %struct.skge_port, ptr %skge, i32 0, i32 3
  %2 = ptrtoint ptr %port2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port2, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 512) #20, !srcloc !311
  %shl = shl i32 %3, 7
  %add = add i32 %shl, 3856
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %add.ptr.i88 = getelementptr i8, ptr %7, i32 %add
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i88, i16 512) #20, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  tail call void @arm_heavy_mb() #20
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %add.ptr.i89 = getelementptr i8, ptr %9, i32 7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i89, i8 -87) #20, !srcloc !305
  %chip_id = getelementptr inbounds %struct.skge_hw, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %chip_id to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -79, i8 %11)
  %cmp = icmp eq i8 %11, -79
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %chip_rev = getelementptr inbounds %struct.skge_hw, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %chip_rev to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %chip_rev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %13)
  %cmp5 = icmp ugt i8 %13, 6
  br i1 %cmp5, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %add.ptr.i90 = getelementptr i8, ptr %15, i32 348
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i90) #20, !srcloc !308
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !309
  %17 = and i32 %16, -131075
  %18 = or i32 %17, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !306
  tail call void @arm_heavy_mb() #20
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %add.ptr.i91 = getelementptr i8, ptr %20, i32 348
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i91, i32 %18) #20, !srcloc !307
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %add8 = add i32 %shl, 3844
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !306
  tail call void @arm_heavy_mb() #20
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %add.ptr.i92 = getelementptr i8, ptr %22, i32 %add8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i92, i32 21032961) #20, !srcloc !307
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !306
  tail call void @arm_heavy_mb() #20
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %add.ptr.i93 = getelementptr i8, ptr %24, i32 %add8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i93, i32 37810177) #20, !srcloc !307
  %add12 = add i32 %shl, 3840
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !306
  tail call void @arm_heavy_mb() #20
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %add.ptr.i94 = getelementptr i8, ptr %26, i32 %add12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i94, i32 33554432) #20, !srcloc !307
  %call13 = tail call fastcc i32 @gm_phy_write(ptr noundef %1, i32 noundef %3, i16 noundef zeroext 4, i16 noundef zeroext 481)
  %call14 = tail call fastcc i32 @gm_phy_write(ptr noundef %1, i32 noundef %3, i16 noundef zeroext 9, i16 noundef zeroext 0)
  %mul.i.i = shl i32 %3, 12
  %add1.i.i = add i32 %mul.i.i, 10372
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %28, i32 %add1.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i, i16 179) #20, !srcloc !311
  %phy_addr.i = getelementptr inbounds %struct.skge_hw, ptr %1, i32 0, i32 12
  %29 = ptrtoint ptr %phy_addr.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %phy_addr.i, align 4
  %add1.i19.i = add i32 %mul.i.i, 10368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %31 = shl i16 %30, 3
  %32 = and i16 %31, 248
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  %add.ptr.i.i20.i = getelementptr i8, ptr %34, i32 %add1.i19.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i20.i, i16 %32) #20, !srcloc !311
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.025.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1000
  br i1 %exitcond.not.i, label %do.end.i, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end
  %i.025.i = phi i32 [ 0, %if.end ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748) #20
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  %add.ptr.i.i24.i = getelementptr i8, ptr %37, i32 %add1.i19.i
  %38 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i24.i) #20, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !314
  %39 = and i16 %38, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool.not.i = icmp eq i16 %39, 0
  br i1 %tobool.not.i, label %for.body.i.gm_phy_write.exit_crit_edge, label %for.cond.i

for.body.i.gm_phy_write.exit_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %gm_phy_write.exit

do.end.i:                                         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #22
  %arrayidx.i = getelementptr %struct.skge_hw, ptr %1, i32 0, i32 4, i32 %3
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i, align 4
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %41) #24
  br label %gm_phy_write.exit

gm_phy_write.exit:                                ; preds = %do.end.i, %for.body.i.gm_phy_write.exit_crit_edge
  %add1.i = add i32 %mul.i.i, 10244
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  %add.ptr.i.i = getelementptr i8, ptr %43, i32 %add1.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 12856) #20, !srcloc !311
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  %add16 = add i32 %shl, 3876
  %add.ptr = getelementptr i8, ptr %45, i32 %add16
  %netdev = getelementptr inbounds %struct.skge_port, ptr %skge, i32 0, i32 1
  %46 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %netdev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %47, i32 0, i32 86
  %48 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev_addr, align 64
  tail call void @mmiocpy(ptr noundef %add.ptr, ptr noundef %49, i32 noundef 6) #20
  %add18 = add i32 %shl, 3872
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 4
  %add.ptr.i95 = getelementptr i8, ptr %51, i32 %add18
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i95, i16 16) #20, !srcloc !311
  %wol = getelementptr inbounds %struct.skge_port, ptr %skge, i32 0, i32 12
  %52 = ptrtoint ptr %wol to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %wol, align 1
  %54 = and i8 %53, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool.not = icmp eq i8 %54, 0
  %. = select i1 %tobool.not, i16 1040, i16 2080
  %55 = and i8 %53, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool32.not = icmp eq i8 %55, 0
  %ctrl.1 = select i1 %tobool32.not, i16 325, i16 585
  %conv44 = or i16 %ctrl.1, %.
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !310
  tail call void @arm_heavy_mb() #20
  %56 = tail call i16 @llvm.bswap.i16(i16 %conv44) #20
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %1, align 4
  %add.ptr.i96 = getelementptr i8, ptr %58, i32 %add18
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i96, i16 %56) #20, !srcloc !311
  %add48 = add i32 %shl, 3144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !304
  tail call void @arm_heavy_mb() #20
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %1, align 4
  %add.ptr.i97 = getelementptr i8, ptr %60, i32 %add48
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i97, i8 1) #20, !srcloc !305
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_wake_from_d3(ptr noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_set_power_state(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @skge_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %ports = getelementptr inbounds %struct.skge_hw, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ports to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ports, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp23.not = icmp eq i8 %3, 0
  br i1 %cmp23.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.body:                                         ; preds = %if.end11.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.024 = phi i32 [ %inc, %if.end11.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.skge_hw, ptr %1, i32 0, i32 4, i32 %i.024
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 2304
  %state.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %for.body.if.end8_crit_edge, label %if.then6

for.body.if.end8_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end8

if.then6:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  %call7 = tail call i32 @skge_down(ptr noundef %5)
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %for.body.if.end8_crit_edge
  %wol = getelementptr i8, ptr %5, i32 2637
  %8 = ptrtoint ptr %wol to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %wol, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool9.not = icmp eq i8 %9, 0
  br i1 %tobool9.not, label %if.end8.if.end11_crit_edge, label %if.then10

if.end8.if.end11_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end11

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #22
  tail call fastcc void @skge_wol_init(ptr noundef %add.ptr.i)
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end8.if.end11_crit_edge
  %inc = add nuw nsw i32 %i.024, 1
  %10 = ptrtoint ptr %ports to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ports, align 1
  %conv = zext i8 %11 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %if.end11.for.body_crit_edge, label %if.end11.for.end_crit_edge

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

if.end11.for.body_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.end:                                          ; preds = %if.end11.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !306
  tail call void @arm_heavy_mb() #20
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %add.ptr.i21 = getelementptr i8, ptr %13, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21, i32 0) #20, !srcloc !307
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @skge_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup15_crit_edge, label %if.end

entry.cleanup15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup15

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @skge_reset(ptr noundef nonnull %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %for.cond.preheader, label %if.end.cleanup15_crit_edge

if.end.cleanup15_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup15

for.cond.preheader:                               ; preds = %if.end
  %ports = getelementptr inbounds %struct.skge_hw, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ports to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ports, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp35.not = icmp eq i8 %3, 0
  br i1 %cmp35.not, label %for.cond.preheader.cleanup15_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup15_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup15

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.036 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.skge_hw, ptr %1, i32 0, i32 4, i32 %i.036
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %for.body.for.inc_crit_edge, label %if.then9

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

if.then9:                                         ; preds = %for.body
  %call10 = tail call i32 @skge_up(ptr noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then9.for.inc_crit_edge, label %cleanup

if.then9.for.inc_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

cleanup:                                          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #22
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %5, ptr noundef nonnull @.str.117, i32 noundef %call10) #24
  tail call void @dev_close(ptr noundef %5) #20
  br label %cleanup15

for.inc:                                          ; preds = %if.then9.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.036, 1
  %8 = ptrtoint ptr %ports to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ports, align 1
  %conv = zext i8 %9 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup15_crit_edge

for.inc.cleanup15_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup15

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

cleanup15:                                        ; preds = %for.inc.cleanup15_crit_edge, %cleanup, %for.cond.preheader.cleanup15_crit_edge, %if.end.cleanup15_crit_edge, %entry.cleanup15_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup15_crit_edge ], [ %call1, %if.end.cleanup15_crit_edge ], [ %call10, %cleanup ], [ 0, %for.cond.preheader.cleanup15_crit_edge ], [ 0, %for.inc.cleanup15_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @skge_debug_init() unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.1, ptr noundef null) #20
  store ptr %call, ptr @skge_debug, align 4
  %call1 = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @skge_notifier) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #20

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #21 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 138)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #21 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 138)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind readonly }
attributes #12 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #18 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #19 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #20 = { nounwind }
attributes #21 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #22 = { nomerge }
attributes #23 = { cold }
attributes #24 = { cold nounwind }
attributes #25 = { nounwind allocsize(0) }
attributes #26 = { nounwind readonly willreturn }
attributes #27 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12, !13, !15, !16, !18, !20, !22, !24, !25, !27, !29, !31, !33, !34, !35, !36, !37, !38, !39, !41, !43, !44, !45, !47, !48, !50, !52, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !68, !69, !70, !72, !73, !74, !75, !77, !79, !81, !83, !85, !87, !88, !89, !90, !92, !94, !96, !98, !99, !100, !102, !104, !106, !108, !110, !112, !113, !114, !115, !117, !118, !119, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !147, !148, !149, !151, !152, !153, !155, !156, !157, !159, !161, !162, !164, !165, !167, !168, !169, !171, !172, !173, !175, !176, !177, !179, !180, !181, !183, !184, !185, !187, !188, !189, !191, !193, !195, !197, !199, !201, !202, !203, !204, !206, !208, !209, !210, !211, !213, !214, !215, !216, !218, !219, !220, !222, !223, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !243, !245, !247, !249, !251, !252, !253, !255, !256, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287}
!llvm.named.register.sp = !{!289}
!llvm.module.flags = !{!290, !291, !292, !293, !294, !295, !296, !297}
!llvm.ident = !{!298}

!0 = !{ptr @__UNIQUE_ID_description343, !1, !"__UNIQUE_ID_description343", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 60, i32 1}
!2 = !{ptr @__UNIQUE_ID_author344, !3, !"__UNIQUE_ID_author344", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 61, i32 1}
!4 = !{ptr @__UNIQUE_ID_file345, !5, !"__UNIQUE_ID_file345", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 62, i32 1}
!6 = !{ptr @__UNIQUE_ID_license346, !5, !"__UNIQUE_ID_license346", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_version347, !8, !"__UNIQUE_ID_version347", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 63, i32 1}
!9 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__modver_attr, !8, !"__modver_attr", i1 false, i1 false}
!13 = !{ptr @__param_debug, !14, !"__param_debug", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 70, i32 1}
!15 = !{ptr @__UNIQUE_ID_debugtype348, !14, !"__UNIQUE_ID_debugtype348", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_debug349, !17, !"__UNIQUE_ID_debug349", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 71, i32 1}
!18 = !{ptr @__initcall__kmod_skge__357_4195_skge_init_module6, !19, !"__initcall__kmod_skge__357_4195_skge_init_module6", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 4195, i32 1}
!20 = !{ptr @__exitcall_skge_cleanup_module, !21, !"__exitcall_skge_cleanup_module", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 4196, i32 1}
!22 = !{ptr @skge_debug, !23, !"skge_debug", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 3692, i32 23}
!24 = !{ptr @__param_str_debug, !14, !"__param_str_debug", i1 false, i1 false}
!25 = !{ptr @debug, !26, !"debug", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 69, i32 12}
!27 = !{ptr @skge_notifier, !28, !"skge_notifier", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 3768, i32 30}
!29 = !{ptr @.str.3, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 2547, i32 2}
!31 = !{ptr @.str.4, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 2566, i32 3}
!33 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @skge_up._entry, !32, !"_entry", i1 false, i1 false}
!38 = !{ptr @skge_up._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.9, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 2588, i32 20}
!41 = distinct !{null, !42, !"__already_done", i1 false, i1 false}
!42 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!43 = !{ptr @.str.10, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 1774, i32 2}
!47 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 1079, i32 2}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 3292, i32 3}
!52 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @skge_error_irq._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @skge_error_irq._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 3297, i32 3}
!57 = !{ptr @skge_error_irq._entry.17, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @skge_error_irq._entry_ptr.19, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 3308, i32 3}
!61 = !{ptr @skge_error_irq._entry.20, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @skge_error_irq._entry_ptr.22, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @skge_error_irq._entry.23, !64, !"_entry", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 3314, i32 3}
!65 = !{ptr @skge_error_irq._entry_ptr.24, !64, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 3325, i32 3}
!68 = !{ptr @skge_error_irq._entry.25, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @skge_error_irq._entry_ptr.27, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 3339, i32 4}
!72 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @skge_error_irq._entry.28, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @skge_error_irq._entry_ptr.31, !71, !"_entry_ptr", i1 false, i1 false}
!75 = distinct !{null, !76, !"zero", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 1541, i32 18}
!77 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 1551, i32 19}
!79 = !{ptr @fiber_pause_map, !80, !"fiber_pause_map", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 1209, i32 18}
!81 = distinct !{null, !82, !"A1hack", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 1295, i32 4}
!83 = distinct !{null, !84, !"C0hack", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 1300, i32 5}
!85 = !{ptr @.str.33, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 1120, i32 3}
!87 = !{ptr @.str.34, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @xm_phy_read._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @xm_phy_read._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @phy_pause_map, !91, !"phy_pause_map", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 1201, i32 18}
!92 = !{ptr @.str.35, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 1241, i32 23}
!94 = !{ptr @.str.36, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 1256, i32 23}
!96 = !{ptr @.str.37, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 1066, i32 2}
!98 = !{ptr @.str.38, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.39, !97, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.40, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 1045, i32 10}
!102 = !{ptr @.str.41, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 1047, i32 10}
!104 = !{ptr @.str.42, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 1049, i32 10}
!106 = !{ptr @.str.43, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 1051, i32 10}
!108 = !{ptr @.str.44, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 1053, i32 10}
!110 = !{ptr @.str.45, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 1944, i32 3}
!112 = !{ptr @.str.46, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @gm_phy_read._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @gm_phy_read._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.47, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 1916, i32 2}
!117 = !{ptr @.str.48, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @gm_phy_write._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @gm_phy_write._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @rxqaddr, !121, !"rxqaddr", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 108, i32 18}
!122 = !{ptr @txqaddr, !123, !"txqaddr", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 107, i32 18}
!124 = !{ptr @portmask, !125, !"portmask", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 112, i32 18}
!126 = !{ptr @pause_mc_addr, !127, !"pause_mc_addr", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 2924, i32 17}
!128 = !{ptr @skge_debug_fops, !129, !"skge_debug_fops", i1 false, i1 false}
!129 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 3729, i32 1}
!130 = !{ptr @.str.49, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 3704, i32 18}
!132 = !{ptr @.str.50, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 3707, i32 18}
!134 = !{ptr @.str.51, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 3710, i32 19}
!136 = !{ptr @.str.52, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 3715, i32 16}
!138 = !{ptr @.str.53, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 3722, i32 19}
!140 = !{ptr @skge_driver, !141, !"skge_driver", i1 false, i1 false}
!141 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 4147, i32 26}
!142 = !{ptr @skge_id_table, !143, !"skge_id_table", i1 false, i1 false}
!143 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 73, i32 35}
!144 = !{ptr @.str.54, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 3893, i32 3}
!146 = !{ptr @.str.55, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @skge_probe._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @skge_probe._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.57, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 3899, i32 3}
!151 = !{ptr @skge_probe._entry.56, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @skge_probe._entry_ptr.58, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.60, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 3914, i32 3}
!155 = !{ptr @skge_probe._entry.59, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @skge_probe._entry_ptr.61, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.62, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 3936, i32 24}
!159 = !{ptr @skge_probe.__key, !160, !"__key", i1 false, i1 false}
!160 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 3939, i32 2}
!161 = !{ptr @.str.63, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @skge_probe.__key.64, !163, !"__key", i1 false, i1 false}
!163 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 3940, i32 2}
!164 = !{ptr @.str.65, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @.str.67, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 3945, i32 3}
!167 = !{ptr @skge_probe._entry.66, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @skge_probe._entry_ptr.68, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.70, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 3953, i32 2}
!171 = !{ptr @skge_probe._entry.69, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @skge_probe._entry_ptr.71, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.73, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 3966, i32 3}
!175 = !{ptr @skge_probe._entry.72, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @skge_probe._entry_ptr.74, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.76, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 3970, i32 3}
!179 = !{ptr @skge_probe._entry.75, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @skge_probe._entry_ptr.77, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.79, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 3985, i32 4}
!183 = !{ptr @skge_probe._entry.78, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @skge_probe._entry_ptr.80, !182, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.82, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 3992, i32 4}
!187 = !{ptr @skge_probe._entry.81, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @skge_probe._entry_ptr.83, !186, !"_entry_ptr", i1 false, i1 false}
!189 = distinct !{null, !190, !"only_32bit_dma", i1 false, i1 false}
!190 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 3883, i32 12}
!191 = !{ptr @.str.84, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 2356, i32 2}
!193 = !{ptr @.str.85, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 2362, i32 13}
!195 = !{ptr @.str.86, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 2367, i32 13}
!197 = !{ptr @.str.87, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 2372, i32 13}
!199 = !{ptr @.str.88, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 2417, i32 2}
!201 = !{ptr @.str.89, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @yukon_phy_intr._entry, !200, !"_entry", i1 false, i1 false}
!203 = !{ptr @yukon_phy_intr._entry_ptr, !200, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.90, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 1879, i32 2}
!206 = !{ptr @.str.91, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 1883, i32 3}
!208 = !{ptr @.str.92, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @bcom_phy_intr._entry, !207, !"_entry", i1 false, i1 false}
!210 = !{ptr @bcom_phy_intr._entry_ptr, !207, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.93, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 3565, i32 4}
!213 = !{ptr @.str.94, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @skge_reset._entry, !212, !"_entry", i1 false, i1 false}
!215 = !{ptr @skge_reset._entry_ptr, !212, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.96, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 3585, i32 3}
!218 = !{ptr @skge_reset._entry.95, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @skge_reset._entry_ptr.97, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.99, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 3624, i32 4}
!222 = !{ptr @skge_reset._entry.98, !221, !"_entry", i1 false, i1 false}
!223 = !{ptr @skge_reset._entry_ptr.100, !221, !"_entry_ptr", i1 false, i1 false}
!224 = distinct !{null, !225, !"zero", i1 false, i1 false}
!225 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 1176, i32 18}
!226 = !{ptr @skge_board_name.buf, !227, !"buf", i1 false, i1 false}
!227 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 3507, i32 14}
!228 = !{ptr @.str.101, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 3513, i32 29}
!230 = !{ptr @.str.102, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 3498, i32 21}
!232 = !{ptr @.str.103, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 3499, i32 20}
!234 = !{ptr @.str.104, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 3500, i32 25}
!236 = !{ptr @.str.105, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 3501, i32 23}
!238 = !{ptr @skge_chips, !239, !"skge_chips", i1 false, i1 false}
!239 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 3497, i32 3}
!240 = !{ptr @skge_devinit.__key, !241, !"__key", i1 false, i1 false}
!241 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 3862, i32 3}
!242 = !{ptr @.str.106, !241, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @skge_netdev_ops, !244, !"skge_netdev_ops", i1 false, i1 false}
!244 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 3794, i32 36}
!245 = !{ptr @.str.107, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 2662, i32 2}
!247 = !{ptr @.str.108, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 2828, i32 2}
!249 = !{ptr @.str.109, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 2836, i32 3}
!251 = !{ptr @.str.110, !250, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @skge_xmit_frame.__UNIQUE_ID_ddebug356, !250, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!253 = !{ptr @.str.111, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 2854, i32 3}
!255 = !{ptr @skge_xmit_frame._entry, !254, !"_entry", i1 false, i1 false}
!256 = !{ptr @skge_xmit_frame._entry_ptr, !254, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.112, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 2897, i32 2}
!259 = !{ptr @skge_stats, !260, !"skge_stats", i1 false, i1 false}
!260 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 408, i32 3}
!261 = !{ptr @skge_ethtool_ops, !262, !"skge_ethtool_ops", i1 false, i1 false}
!262 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 886, i32 33}
!263 = !{ptr @rxirqmask, !264, !"rxirqmask", i1 false, i1 false}
!264 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 109, i32 18}
!265 = !{ptr @txirqmask, !266, !"txirqmask", i1 false, i1 false}
!266 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 110, i32 18}
!267 = !{ptr @.str.113, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 3170, i32 4}
!269 = !{ptr @.str.114, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 3060, i32 2}
!271 = !{ptr @.str.115, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 3126, i32 2}
!273 = !{ptr @napimask, !274, !"napimask", i1 false, i1 false}
!274 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 111, i32 18}
!275 = !{ptr @.str.116, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 3880, i32 2}
!277 = !{ptr @skge_pm_ops, !278, !"skge_pm_ops", i1 false, i1 false}
!278 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 4119, i32 8}
!279 = !{ptr @.str.117, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 4109, i32 21}
!281 = distinct !{null, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 4158, i32 12}
!283 = distinct !{null, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 4165, i32 12}
!285 = distinct !{null, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 4172, i32 12}
!287 = distinct !{null, !288, !"skge_32bit_dma_boards", i1 false, i1 false}
!288 = !{!"../drivers/net/ethernet/marvell/skge.c", i32 4156, i32 35}
!289 = !{!"sp"}
!290 = !{i32 1, !"wchar_size", i32 2}
!291 = !{i32 1, !"min_enum_size", i32 4}
!292 = !{i32 8, !"branch-target-enforcement", i32 0}
!293 = !{i32 8, !"sign-return-address", i32 0}
!294 = !{i32 8, !"sign-return-address-all", i32 0}
!295 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!296 = !{i32 7, !"uwtable", i32 1}
!297 = !{i32 7, !"frame-pointer", i32 2}
!298 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!299 = !{!"branch_weights", i32 2000, i32 1}
!300 = !{i64 2156853765, i64 2156854266, i64 2156853802, i64 2156853858, i64 2156853892, i64 2156853916, i64 2156853957, i64 2156853978, i64 2156854006, i64 2156854040}
!301 = !{!"branch_weights", i32 1, i32 2000}
!302 = !{i64 2156857388, i64 2156857889, i64 2156857425, i64 2156857481, i64 2156857515, i64 2156857539, i64 2156857580, i64 2156857601, i64 2156857629, i64 2156857663}
!303 = !{i64 2156858797}
!304 = !{i64 2156798248}
!305 = !{i64 6815848}
!306 = !{i64 2156797144}
!307 = !{i64 6816045}
!308 = !{i64 6816463}
!309 = !{i64 2156795726}
!310 = !{i64 2156797696}
!311 = !{i64 6815425}
!312 = !{!"auto-init"}
!313 = !{i64 6815625}
!314 = !{i64 2156796369}
!315 = !{i64 6816243}
!316 = !{i64 2156796764}
!317 = !{i64 2156827237}
!318 = !{i64 2156860695}
!319 = !{i64 2155864150}
!320 = !{i64 2156885005}
!321 = !{i64 872634}
!322 = !{i64 2156886762}
!323 = !{i64 2156827645}
!324 = !{i64 2156886941}
!325 = !{i64 2156861265, i64 2156861766, i64 2156861302, i64 2156861358, i64 2156861392, i64 2156861416, i64 2156861457, i64 2156861478, i64 2156861506, i64 2156861540}
!326 = !{i64 2156867378, i64 2156867879, i64 2156867415, i64 2156867471, i64 2156867505, i64 2156867529, i64 2156867570, i64 2156867591, i64 2156867619, i64 2156867653}
!327 = !{i64 2156868948}
!328 = !{i64 2156869096}
!329 = !{i64 2152355652, i64 2152356152, i64 2152355689, i64 2152355745, i64 2152355779, i64 2152355803, i64 2152355844, i64 2152355865, i64 2152355893, i64 2152355927}
!330 = !{i64 2152356996}
!331 = !{i64 2155863079}
!332 = !{i64 2156869750}
!333 = !{i64 2148856958, i64 2148856963, i64 2148856976, i64 2148857020, i64 2148857054, i64 2148857075}
